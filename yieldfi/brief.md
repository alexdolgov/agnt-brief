# Agentic Audit Brief: YieldFi

## Project Overview

- Project: YieldFi (`yieldfi`)
- Website: [https://yield.fi/](https://yield.fi/)
- Lifecycle: active (Tier 1, declining)
- Generated: 2026-06-18T20:25:38.132Z
- Pipeline run: v2-pipeline-2026-06-18-32b207-4ae8
- Chains: arbitrum, avalanche, base, bsc, ethereum, linea, optimism, plasma, sonic
- Contract surface: 51 unique implementations (65 raw deployments)
- DeFi Llama TVL: $10,770,028.77
- On-chain TVL (included contracts): $30,887,231.59
- TVL by chain: Ethereum $30,380,785.25 | Arbitrum $233,937.74 | Base $206,153.62 | Bsc $26,898.97 | Avalanche $23,461.23 | Optimism $13,619.76 | Sonic $2,357.90 | Linea $17.11

## Project Description

YieldFi is an active Yield Aggregator and capital-markets / asset-management platform focused on tokenized yield-vault issuance and distribution. Its current V3 positioning includes curated yield products, institutionally managed vaults, proof-of-reserves and exposure reporting, transparency metrics, and migration support for legacy vault products.

### Architecture

V1 and V2 families share governance infrastructure through Manager contracts and rely on bridges for cross-chain asset movement. The YieldFi vaults likely interact with yield-bearing tokens from both versions to aggregate user deposits.

## Contract Surface Quality

- Indexed contracts: 127; live-surface contracts included: 65 (64 live, 1 unknown).
- Excluded by liveness: 15 inactive, 47 singleton, 0 uninitialized.
- Deployment units: 50/74 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 21/46 (45.7%)
- Verified + Unaudited implementations: 24
- Verified by bytecode match: 3
- Unverified implementations: 5
- Unique implementations: 51
- Raw deployments: 65
- Audits discovered: 7
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): $3,411,834.10
- Latest audit: 2026-01 (fresh)
- Staleness: 1 fresh, 3 aging, 1 stale, 2 unknown
- Tier 1 coverage: 45.7% (Cyfrin, Sherlock)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Cyfrin | Tier 1 | 20 | 43.5% | 2025-06 |
| Sherlock | Tier 1 | 7 | 15.2% | 2026-01 |

## Contract Surface

### ✅ Verified + Audited (19)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| YToken | token | ethereum | unit-38883 | [`0x1ce7d9...845a97`](./contracts/ethereum-1/0x1ce7d9942ff78c328a4181b9f3826fee6d845a97/) | ✅ Audited |
| YToken | token | ethereum | unit-38882 | [`0x19ebd1...7f35cb`](./contracts/ethereum-1/0x19ebd191f7a24ece672ba13a302212b5ef7f35cb/) | ✅ Audited |
| YToken | token | ethereum | unit-38894 | [`0x8464f6...ec123a`](./contracts/ethereum-1/0x8464f6ecae1ea58ec816c13f964030eab8ec123a/) | ✅ Audited |
| YToken | token | ethereum | unit-38899 | [`0xa01200...fc6c43`](./contracts/ethereum-1/0xa01200b2e74de6489cf56864e3d76bbc06fc6c43/) | ✅ Audited |
| Vault | core_logic | ethereum | unit-38878 (4 proxies) | 4 deployments: ethereum [`0x06c2c7...1c4f27`](./contracts/ethereum-1/0x06c2c73f30135c831d010ec7b82d0f32321c4f27/); ethereum `0x386e09...468e9c`; ethereum `0xd04ae7...b08ff0`; ethereum `0xdd5eff...318894` | ✅ Audited |
| YTokenL2 | token | avalanche | unit-38946 | [`0x4772d2...5c8121`](./contracts/avalanche-43114/0x4772d2e014f9fc3a820c444e3313968e9a5c8121/) | ✅ Audited |
| YTokenL2 | token | arbitrum | unit-38938 | [`0x4772d2...5c8121`](./contracts/arbitrum-42161/0x4772d2e014f9fc3a820c444e3313968e9a5c8121/) | ✅ Audited |
| YTokenL2 | token | optimism | unit-38907 | [`0x4772d2...5c8121`](./contracts/optimism-10/0x4772d2e014f9fc3a820c444e3313968e9a5c8121/) | ✅ Audited |
| YTokenL2 | token | bsc | unit-38915 | [`0x4772d2...5c8121`](./contracts/bsc-56/0x4772d2e014f9fc3a820c444e3313968e9a5c8121/) | ✅ Audited |
| YTokenL2 | token | sonic | unit-38920 | [`0x4772d2...5c8121`](./contracts/sonic-146/0x4772d2e014f9fc3a820c444e3313968e9a5c8121/) | ✅ Audited |
| YTokenL2 | token | arbitrum | unit-38935 | [`0x1f52ed...671fe8`](./contracts/arbitrum-42161/0x1f52edf2815bfa625890b61d6bf43ddc24671fe8/) | ✅ Audited |
| YTokenL2 | token | base | unit-38922 | [`0x1f52ed...671fe8`](./contracts/base-8453/0x1f52edf2815bfa625890b61d6bf43ddc24671fe8/) | ✅ Audited |
| BridgeCCIP | operational_periphery | sonic | n/a | 7 deployments: ethereum `0x6be164...12b1ee`; optimism `0xa358f0...770604`; bsc `0x383d63...6924ce`; sonic [`0x321520...2189d9`](./contracts/sonic-146/0x321520f89076836a0e306e4a41bccd1bfd2189d9/); base `0xb3138a...385c30`; arbitrum `0x8a264a...48f066`; avalanche `0xf6aebd...a9f9df` | ✅ Audited |
| LockBox | unknown | ethereum | unit-38891 | [`0x659b5b...0e2231`](./contracts/ethereum-1/0x659b5bc7f2f888db3d5901b78cdb34df270e2231/) | ✅ Audited |
| Manager | governance | optimism | unit-38905 | [`0x03acc3...08c8dc`](./contracts/optimism-10/0x03acc35286baae6d73d99a9f14ef13752208c8dc/) | ✅ Audited |
| Manager | governance | bsc | unit-38913 | [`0x03acc3...08c8dc`](./contracts/bsc-56/0x03acc35286baae6d73d99a9f14ef13752208c8dc/) | ✅ Audited |
| Manager | governance | sonic | unit-38919 | [`0x03acc3...08c8dc`](./contracts/sonic-146/0x03acc35286baae6d73d99a9f14ef13752208c8dc/) | ✅ Audited |
| Manager | governance | base | unit-38921 | [`0x03acc3...08c8dc`](./contracts/base-8453/0x03acc35286baae6d73d99a9f14ef13752208c8dc/) | ✅ Audited |
| Manager | governance | arbitrum | unit-38934 | [`0x03acc3...08c8dc`](./contracts/arbitrum-42161/0x03acc35286baae6d73d99a9f14ef13752208c8dc/) | ✅ Audited |

### ⚠️ Verified + Unaudited (24)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| vyToken | token | ethereum | unit-38886 | [`0x2e3c5e...0d92fc`](./contracts/ethereum-1/0x2e3c5e514eef46727de1fe44618027a9b70d92fc/) | ⚠️ Unaudited |
| vyToken | token | ethereum | unit-38887 | [`0x307311...a5c9f9`](./contracts/ethereum-1/0x3073112c2c4800b89764973d5790ccc7fba5c9f9/) | ⚠️ Unaudited |
| vyTokenL2 | token | base | unit-38930 | [`0xf4f447...ee55de`](./contracts/base-8453/0xf4f447e6afa04c9d11ef0e2fc0d7f19c24ee55de/) | ⚠️ Unaudited |
| vyTokenL2 | token | arbitrum | unit-38942 | [`0x8c93a6...6a7f90`](./contracts/arbitrum-42161/0x8c93a6752bfe29fda26eba8df4390c642e6a7f90/) | ⚠️ Unaudited |
| vyToken | token | ethereum | unit-38884 | [`0x1e2a56...749e1b`](./contracts/ethereum-1/0x1e2a5622178f93efd4349e2eb3dbdf2761749e1b/) | ⚠️ Unaudited |
| vyTokenL2 | token | bsc | unit-38918 | [`0xf4f447...ee55de`](./contracts/bsc-56/0xf4f447e6afa04c9d11ef0e2fc0d7f19c24ee55de/) | ⚠️ Unaudited |
| vyTokenL2 | token | optimism | unit-38912 | [`0xf4f447...ee55de`](./contracts/optimism-10/0xf4f447e6afa04c9d11ef0e2fc0d7f19c24ee55de/) | ⚠️ Unaudited |
| Vault | core_logic | bsc | unit-38917 | [`0xdd5eff...318894`](./contracts/bsc-56/0xdd5eff0756db08bad0ff16b66f88f506e7318894/) | ⚠️ Unaudited |
| vyTokenL2 | token | avalanche | unit-38947 | [`0xf4f447...ee55de`](./contracts/avalanche-43114/0xf4f447e6afa04c9d11ef0e2fc0d7f19c24ee55de/) | ⚠️ Unaudited |
| vyTokenL2 | token | base | unit-38928 | [`0x8c93a6...6a7f90`](./contracts/base-8453/0x8c93a6752bfe29fda26eba8df4390c642e6a7f90/) | ⚠️ Unaudited |
| Vault | core_logic | ethereum | unit-38888 | [`0x3edae9...4ee668`](./contracts/ethereum-1/0x3edae9c342ba1c0ece710db1f0c7bccec24ee668/) | ⚠️ Unaudited |
| Administrator | unknown | ethereum | unit-38893 | [`0x803438...b3fce1`](./contracts/ethereum-1/0x803438689b101aede853c9604d32aa80f0b3fce1/) | ⚠️ Unaudited |
| ChainlinkOracleAdapter | unknown | ethereum | unit-38904 | [`0xf6cdcf...abdba4`](./contracts/ethereum-1/0xf6cdcf759e39c29eb843cbfd549a7d9b82abdba4/) | ⚠️ Unaudited |
| FeatureRegistry | registry | ethereum | unit-38902 | [`0xc9ec62...849961`](./contracts/ethereum-1/0xc9ec62d1e2ada282c3544178664d98cf62849961/) | ⚠️ Unaudited |
| GreenlistFeature | unknown | ethereum | unit-38880 | [`0x13a9f3...929ff0`](./contracts/ethereum-1/0x13a9f3f09588c4e5c6cddb1164398630bf929ff0/) | ⚠️ Unaudited |
| LimitsFeature | unknown | ethereum | unit-38900 | [`0xbbb6ed...963aa6`](./contracts/ethereum-1/0xbbb6edf1811fda36f591c617b51d2d43e4963aa6/) | ⚠️ Unaudited |
| Manager | unknown | ethereum | unit-38879 | [`0x08fb98...c5f05c`](./contracts/ethereum-1/0x08fb9833a5a84d5bcecdf5a4a635d33260c5f05c/) | ⚠️ Unaudited |
| Manager | unknown | bsc | unit-38914 | [`0x08fb98...c5f05c`](./contracts/bsc-56/0x08fb9833a5a84d5bcecdf5a4a635d33260c5f05c/) | ⚠️ Unaudited |
| NAV | unknown | ethereum | unit-38897 | [`0x95178e...6832fa`](./contracts/ethereum-1/0x95178e55fe7edd0792b9819b7654c9ee076832fa/) | ⚠️ Unaudited |
| PriceOracle | unknown | ethereum | unit-38892 | [`0x67dba3...241df5`](./contracts/ethereum-1/0x67dba3444a99b9788e78932015312b2550241df5/) | ⚠️ Unaudited |
| Registry | registry | ethereum | unit-38898 | [`0x9a7664...0f7505`](./contracts/ethereum-1/0x9a766451b18df401e39109f8a9f06355be0f7505/) | ⚠️ Unaudited |
| Registry | registry | bsc | unit-38916 | [`0x9a7664...0f7505`](./contracts/bsc-56/0x9a766451b18df401e39109f8a9f06355be0f7505/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | bsc | n/a | 2 deployments: bsc [`0x5c46ed...ba3878`](./contracts/bsc-56/0x5c46ed83fc4446282a75d30375d993357aba3878/); sonic `0xf4f447...ee55de` | ⚠️ Unaudited |
| VaultFactory | registry | ethereum | unit-38890 | [`0x5c46ed...ba3878`](./contracts/ethereum-1/0x5c46ed83fc4446282a75d30375d993357aba3878/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (2)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| YTokenL2 | token | base | unit-38924 | 2 deployments: base [`0x4772d2...5c8121`](./contracts/base-8453/0x4772d2e014f9fc3a820c444e3313968e9a5c8121/); plasma [`0x4772d2...5c8121`](./contracts/plasma-9745/0x4772d2e014f9fc3a820c444e3313968e9a5c8121/) | ✅ Audited (bytecode match) |
| Manager | governance | ethereum | unit-38877 | 3 deployments: ethereum [`0x03acc3...08c8dc`](./contracts/ethereum-1/0x03acc35286baae6d73d99a9f14ef13752208c8dc/); plasma [`0x03acc3...08c8dc`](./contracts/plasma-9745/0x03acc35286baae6d73d99a9f14ef13752208c8dc/); avalanche [`0x03acc3...08c8dc`](./contracts/avalanche-43114/0x03acc35286baae6d73d99a9f14ef13752208c8dc/) | ✅ Audited (bytecode match) |

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| vyTokenL2 | proxy | plasma | unit-38933 | 2 deployments: plasma [`0xf4f447...ee55de`](./contracts/plasma-9745/0xf4f447e6afa04c9d11ef0e2fc0d7f19c24ee55de/); arbitrum [`0xf4f447...ee55de`](./contracts/arbitrum-42161/0xf4f447e6afa04c9d11ef0e2fc0d7f19c24ee55de/) | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (5)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| YTokenL2 | token | linea | unit-38949 | `0x4e559d...4c2e28` | ❓ Unverified |
| Proxy (impl: 0x0ca01ee564363e115c1990fac21314ddfa210f4a) | proxy | linea | unit-38950 | `0xde3fdb...6383d6` | ❓ Unverified |
| Proxy (impl: 0x6c6e88a438092fda33ad2304c54180b41c35fa64) | proxy | linea | unit-38948 | `0x168bc4...7569e7` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0xe58226...d9ef2e` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xda2d9e...9c225f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [**Sherlock Audit Report**](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2026.02.03%20-%20Final%20-%20YieldFi%20Collaborative%20Audit%20Report%201770139561.pdf) | Sherlock | Contest | 2026-01 | fresh | Direct | contract_name | 11 | high |
| [**Cyfrin Audit Report**](https://github.com/Cyfrin/cyfrin-audit-reports/blob/main/reports/2025-06-17-cyfrin-yieldfi-pr19-vytoken-v2.2.pdf) | Cyfrin | Audit | 2025-06 | aging | Direct | contract_name | 28 | high |
| [**Cyfrin Audit Report**](https://github.com/Cyfrin/cyfrin-audit-reports/blob/main/reports/2025-04-24-cyfrin-yieldfi-v2.0.pdf) | Cyfrin | Audit | 2025-04 | aging | Direct | contract_name | 28 | high |
| [**Halborn Audit Report**](https://www.halborn.com/audits/yieldfi) | Halborn | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [**Cantina Solo Audit Report**](https://cantina.xyz/portfolio/d13d31e4-72c7-404c-b281-f6ccdd3c534f) | Spearbit | Audit | 2024-11 | aging | Direct | n/a | 0 | n/a |
| [2023-03-07-linkpool_liquid_sd_index_pool.pdf](https://github.com/Cyfrin/cyfrin-audit-reports/blob/main/reports/2023-03-07-linkpool_liquid_sd_index_pool.pdf) | Cyfrin | Audit | 2023-03 | stale | Direct | n/a | 0 | n/a |
| [.gitkeep](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/.gitkeep) | Sherlock | Contest | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| plasma | [`0xf4f447...ee55de`](./contracts/plasma-9745/0xf4f447e6afa04c9d11ef0e2fc0d7f19c24ee55de/) | vyTokenL2 | proxy | $165,879.37 | Verified native implementation with $165,879.37 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xf4f447...ee55de`](./contracts/base-8453/0xf4f447e6afa04c9d11ef0e2fc0d7f19c24ee55de/) | vyTokenL2 | token | $91,128.85 | Verified native implementation with $91,128.85 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8c93a6...6a7f90`](./contracts/arbitrum-42161/0x8c93a6752bfe29fda26eba8df4390c642e6a7f90/) | vyTokenL2 | token | $55,664.43 | Verified native implementation with $55,664.43 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xf4f447...ee55de`](./contracts/bsc-56/0xf4f447e6afa04c9d11ef0e2fc0d7f19c24ee55de/) | vyTokenL2 | token | $19,157.52 | Verified native implementation with $19,157.52 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xf4f447...ee55de`](./contracts/optimism-10/0xf4f447e6afa04c9d11ef0e2fc0d7f19c24ee55de/) | vyTokenL2 | token | $3,561.39 | Verified native implementation with $3,561.39 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xdd5eff...318894`](./contracts/bsc-56/0xdd5eff0756db08bad0ff16b66f88f506e7318894/) | Vault | core_logic | $2,019.05 | Verified native implementation with $2,019.05 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xf4f447...ee55de`](./contracts/avalanche-43114/0xf4f447e6afa04c9d11ef0e2fc0d7f19c24ee55de/) | vyTokenL2 | token | $1,287.07 | Verified native implementation with $1,287.07 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x8c93a6...6a7f90`](./contracts/base-8453/0x8c93a6752bfe29fda26eba8df4390c642e6a7f90/) | vyTokenL2 | token | $23.88 | Verified native implementation with $23.88 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf6cdcf...abdba4`](./contracts/ethereum-1/0xf6cdcf759e39c29eb843cbfd549a7d9b82abdba4/) | ChainlinkOracleAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc9ec62...849961`](./contracts/ethereum-1/0xc9ec62d1e2ada282c3544178664d98cf62849961/) | FeatureRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbbb6ed...963aa6`](./contracts/ethereum-1/0xbbb6edf1811fda36f591c617b51d2d43e4963aa6/) | LimitsFeature | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x08fb98...c5f05c`](./contracts/bsc-56/0x08fb9833a5a84d5bcecdf5a4a635d33260c5f05c/) | Manager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9a7664...0f7505`](./contracts/ethereum-1/0x9a766451b18df401e39109f8a9f06355be0f7505/) | Registry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x9a7664...0f7505`](./contracts/bsc-56/0x9a766451b18df401e39109f8a9f06355be0f7505/) | Registry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5c46ed...ba3878`](./contracts/bsc-56/0x5c46ed83fc4446282a75d30375d993357aba3878/) | TransparentUpgradeableProxy | proxy | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 34 |
| upstream | 1 |
| standard_library | 16 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: extraction_exact=159

Zero-match audit list:

- [2036] **Halborn Audit Report**
- [2037] **Cantina Solo Audit Report**
- [2039] 2023-03-07-linkpool_liquid_sd_index_pool.pdf
- [15584] .gitkeep

Fork inheritance lineage and inherited audits are included when available.
