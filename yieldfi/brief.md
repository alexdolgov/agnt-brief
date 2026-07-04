# Agentic Audit Brief: YieldFi

## Project Overview

- Project: YieldFi (`yieldfi`)
- Website: [https://yield.fi/](https://yield.fi/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:14.695Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-4c3e
- Chains: arbitrum, avalanche, base, bsc, ethereum, linea, optimism, plasma, sonic
- Contract surface: 62 unique implementations (80 raw deployments)
- DeFi Llama TVL: $10,325,276.74
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield Aggregator. Structurally: 26 project-authored contract(s) across 4 chain(s); 1 ERC20 token; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 7 functional families. Its contracts share 6 common project-authored base contract(s) (proxy, access, bridge). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 87; live-surface contracts included: 74 (65 live, 9 unknown).
- Excluded by liveness: 13 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 21/52 (40.4%)
- Deployed-live implementations: 54 of 62 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 21/53
- Verified + Unaudited implementations: 32
- Verified by bytecode match: 0
- Unverified implementations: 9
- Unique implementations: 62
- Raw deployments: 80
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-01 (fresh)
- Audit staleness (calendar age): 1 fresh, 3 aging, 1 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 22 match-unverified
- Tier 1 coverage: 40.4% (Cyfrin, Sherlock)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Cyfrin | Tier 1 | 20 | 37.7% | 2025-06 |
| Sherlock | Tier 1 | 7 | 13.2% | 2026-01 |

## Contract Surface

### ✅ Verified + Audited (21)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BridgeCCIP | operational_periphery | sonic | n/a | 7 deployments: ethereum `0x6be164...12b1ee`; optimism `0xa358f0...770604`; bsc `0x383d63...6924ce`; sonic [`0x321520...2189d9`](./contracts/sonic-146/0x321520f89076836a0e306e4a41bccd1bfd2189d9/); base `0xb3138a...385c30`; arbitrum `0x8a264a...48f066`; avalanche `0xf6aebd...a9f9df` | ✅ Audited |
| LockBox | unknown | ethereum | n/a | [`0x659b5b...0e2231`](./contracts/ethereum-1/0x659b5bc7f2f888db3d5901b78cdb34df270e2231/) | ✅ Audited |
| Manager | governance | ethereum | n/a | [`0x03acc3...08c8dc`](./contracts/ethereum-1/0x03acc35286baae6d73d99a9f14ef13752208c8dc/) | ✅ Audited |
| Manager | governance | optimism | n/a | [`0x03acc3...08c8dc`](./contracts/optimism-10/0x03acc35286baae6d73d99a9f14ef13752208c8dc/) | ✅ Audited |
| Manager | governance | bsc | n/a | [`0x03acc3...08c8dc`](./contracts/bsc-56/0x03acc35286baae6d73d99a9f14ef13752208c8dc/) | ✅ Audited |
| Manager | governance | sonic | n/a | [`0x03acc3...08c8dc`](./contracts/sonic-146/0x03acc35286baae6d73d99a9f14ef13752208c8dc/) | ✅ Audited |
| Manager | governance | base | n/a | [`0x03acc3...08c8dc`](./contracts/base-8453/0x03acc35286baae6d73d99a9f14ef13752208c8dc/) | ✅ Audited |
| Manager | governance | arbitrum | n/a | [`0x03acc3...08c8dc`](./contracts/arbitrum-42161/0x03acc35286baae6d73d99a9f14ef13752208c8dc/) | ✅ Audited |
| Vault | core_logic | ethereum | n/a | 4 deployments: ethereum [`0x06c2c7...1c4f27`](./contracts/ethereum-1/0x06c2c73f30135c831d010ec7b82d0f32321c4f27/); ethereum `0x386e09...468e9c`; ethereum `0xd04ae7...b08ff0`; ethereum `0xdd5eff...318894` | ✅ Audited |
| YToken | token | ethereum | n/a | [`0x19ebd1...7f35cb`](./contracts/ethereum-1/0x19ebd191f7a24ece672ba13a302212b5ef7f35cb/) | ✅ Audited |
| YToken | token | ethereum | n/a | [`0x1ce7d9...845a97`](./contracts/ethereum-1/0x1ce7d9942ff78c328a4181b9f3826fee6d845a97/) | ✅ Audited |
| YToken | token | ethereum | n/a | [`0x8464f6...ec123a`](./contracts/ethereum-1/0x8464f6ecae1ea58ec816c13f964030eab8ec123a/) | ✅ Audited |
| YToken | token | ethereum | n/a | [`0xa01200...fc6c43`](./contracts/ethereum-1/0xa01200b2e74de6489cf56864e3d76bbc06fc6c43/) | ✅ Audited |
| YTokenL2 | token | optimism | n/a | [`0x4772d2...5c8121`](./contracts/optimism-10/0x4772d2e014f9fc3a820c444e3313968e9a5c8121/) | ✅ Audited |
| YTokenL2 | token | bsc | n/a | [`0x4772d2...5c8121`](./contracts/bsc-56/0x4772d2e014f9fc3a820c444e3313968e9a5c8121/) | ✅ Audited |
| YTokenL2 | token | sonic | n/a | [`0x4772d2...5c8121`](./contracts/sonic-146/0x4772d2e014f9fc3a820c444e3313968e9a5c8121/) | ✅ Audited |
| YTokenL2 | token | base | n/a | [`0x1f52ed...671fe8`](./contracts/base-8453/0x1f52edf2815bfa625890b61d6bf43ddc24671fe8/) | ✅ Audited |
| YTokenL2 | token | base | n/a | [`0x4772d2...5c8121`](./contracts/base-8453/0x4772d2e014f9fc3a820c444e3313968e9a5c8121/) | ✅ Audited |
| YTokenL2 | token | arbitrum | n/a | [`0x1f52ed...671fe8`](./contracts/arbitrum-42161/0x1f52edf2815bfa625890b61d6bf43ddc24671fe8/) | ✅ Audited |
| YTokenL2 | token | arbitrum | n/a | [`0x4772d2...5c8121`](./contracts/arbitrum-42161/0x4772d2e014f9fc3a820c444e3313968e9a5c8121/) | ✅ Audited |
| YTokenL2 | token | avalanche | n/a | [`0x4772d2...5c8121`](./contracts/avalanche-43114/0x4772d2e014f9fc3a820c444e3313968e9a5c8121/) | ✅ Audited |

### ⚠️ Verified + Unaudited (32)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Administrator | unknown | ethereum | n/a | [`0x803438...b3fce1`](./contracts/ethereum-1/0x803438689b101aede853c9604d32aa80f0b3fce1/) | ⚠️ Unaudited |
| Administrator | unknown | ethereum | n/a | 2 deployments: ethereum [`0x9305a0...29bdff`](./contracts/ethereum-1/0x9305a0cc13293b69dee0b9d281d21144b029bdff/); ethereum `0xf2de80...51aa26` | ⚠️ Unaudited |
| ChainlinkOracleAdapter | operational_periphery | ethereum | n/a | [`0xf6cdcf...abdba4`](./contracts/ethereum-1/0xf6cdcf759e39c29eb843cbfd549a7d9b82abdba4/) | ⚠️ Unaudited |
| FeatureRegistry | registry | ethereum | n/a | [`0xc9ec62...849961`](./contracts/ethereum-1/0xc9ec62d1e2ada282c3544178664d98cf62849961/) | ⚠️ Unaudited |
| GreenlistFeature | unknown | ethereum | n/a | [`0x13a9f3...929ff0`](./contracts/ethereum-1/0x13a9f3f09588c4e5c6cddb1164398630bf929ff0/) | ⚠️ Unaudited |
| LimitsFeature | unknown | ethereum | n/a | [`0xbbb6ed...963aa6`](./contracts/ethereum-1/0xbbb6edf1811fda36f591c617b51d2d43e4963aa6/) | ⚠️ Unaudited |
| LockBox | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0407d3...5f4d6d`](./contracts/ethereum-1/0x0407d37e3a8cc7e8bcbc69ab31b8da4be25f4d6d/); ethereum `0xbc5c54...12d1c9` | ⚠️ Unaudited |
| Manager | governance | ethereum | n/a | [`0x08fb98...c5f05c`](./contracts/ethereum-1/0x08fb9833a5a84d5bcecdf5a4a635d33260c5f05c/) | ⚠️ Unaudited |
| Manager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x88538b...993935`](./contracts/ethereum-1/0x88538b8199238efe82f53862b1eaf5e705993935/); ethereum `0xa356be...744dd2` | ⚠️ Unaudited |
| Manager | governance | bsc | n/a | [`0x08fb98...c5f05c`](./contracts/bsc-56/0x08fb9833a5a84d5bcecdf5a4a635d33260c5f05c/) | ⚠️ Unaudited |
| NAV | unknown | ethereum | n/a | [`0x95178e...6832fa`](./contracts/ethereum-1/0x95178e55fe7edd0792b9819b7654c9ee076832fa/) | ⚠️ Unaudited |
| PriceOracle | operational_periphery | ethereum | n/a | [`0x67dba3...241df5`](./contracts/ethereum-1/0x67dba3444a99b9788e78932015312b2550241df5/) | ⚠️ Unaudited |
| Receipt | unknown | ethereum | n/a | 2 deployments: ethereum [`0x154e5d...b8deed`](./contracts/ethereum-1/0x154e5dd6d7a0efbb343a3f2146a31590eeb8deed/); ethereum `0xce1f3d...5f68f1` | ⚠️ Unaudited |
| Registry | registry | ethereum | n/a | [`0x9a7664...0f7505`](./contracts/ethereum-1/0x9a766451b18df401e39109f8a9f06355be0f7505/) | ⚠️ Unaudited |
| Registry | registry | bsc | n/a | [`0x9a7664...0f7505`](./contracts/bsc-56/0x9a766451b18df401e39109f8a9f06355be0f7505/) | ⚠️ Unaudited |
| SToken | unknown | ethereum | n/a | 2 deployments: ethereum [`0x20b8f4...f4dc0d`](./contracts/ethereum-1/0x20b8f4a172e3a0bdb96c89d49629e83f73f4dc0d/); ethereum `0x4f8e14...cb95f2` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 3 deployments: ethereum [`0x24bc41...cb6e01`](./contracts/ethereum-1/0x24bc4128942786f7cff18af3f71041d003cb6e01/); ethereum `0xaec8c1...337026`; ethereum `0xdfbd30...70db53` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | bsc | n/a | 2 deployments: bsc [`0x5c46ed...ba3878`](./contracts/bsc-56/0x5c46ed83fc4446282a75d30375d993357aba3878/); sonic `0xf4f447...ee55de` | ⚠️ Unaudited |
| Vault | core_logic | ethereum | n/a | [`0x3edae9...4ee668`](./contracts/ethereum-1/0x3edae9c342ba1c0ece710db1f0c7bccec24ee668/) | ⚠️ Unaudited |
| Vault | core_logic | bsc | n/a | [`0xdd5eff...318894`](./contracts/bsc-56/0xdd5eff0756db08bad0ff16b66f88f506e7318894/) | ⚠️ Unaudited |
| VaultFactory | registry | ethereum | n/a | [`0x5c46ed...ba3878`](./contracts/ethereum-1/0x5c46ed83fc4446282a75d30375d993357aba3878/) | ⚠️ Unaudited |
| vyToken | token | ethereum | n/a | [`0x1e2a56...749e1b`](./contracts/ethereum-1/0x1e2a5622178f93efd4349e2eb3dbdf2761749e1b/) | ⚠️ Unaudited |
| vyToken | token | ethereum | n/a | [`0x2e3c5e...0d92fc`](./contracts/ethereum-1/0x2e3c5e514eef46727de1fe44618027a9b70d92fc/) | ⚠️ Unaudited |
| vyToken | token | ethereum | n/a | [`0x307311...a5c9f9`](./contracts/ethereum-1/0x3073112c2c4800b89764973d5790ccc7fba5c9f9/) | ⚠️ Unaudited |
| vyTokenL2 | token | optimism | n/a | [`0xf4f447...ee55de`](./contracts/optimism-10/0xf4f447e6afa04c9d11ef0e2fc0d7f19c24ee55de/) | ⚠️ Unaudited |
| vyTokenL2 | token | bsc | n/a | [`0xf4f447...ee55de`](./contracts/bsc-56/0xf4f447e6afa04c9d11ef0e2fc0d7f19c24ee55de/) | ⚠️ Unaudited |
| vyTokenL2 | token | base | n/a | [`0x8c93a6...6a7f90`](./contracts/base-8453/0x8c93a6752bfe29fda26eba8df4390c642e6a7f90/) | ⚠️ Unaudited |
| vyTokenL2 | token | base | n/a | [`0xf4f447...ee55de`](./contracts/base-8453/0xf4f447e6afa04c9d11ef0e2fc0d7f19c24ee55de/) | ⚠️ Unaudited |
| vyTokenL2 | token | arbitrum | n/a | [`0x8c93a6...6a7f90`](./contracts/arbitrum-42161/0x8c93a6752bfe29fda26eba8df4390c642e6a7f90/) | ⚠️ Unaudited |
| vyTokenL2 | token | arbitrum | n/a | [`0xf4f447...ee55de`](./contracts/arbitrum-42161/0xf4f447e6afa04c9d11ef0e2fc0d7f19c24ee55de/) | ⚠️ Unaudited |
| vyTokenL2 | token | avalanche | n/a | [`0xf4f447...ee55de`](./contracts/avalanche-43114/0xf4f447e6afa04c9d11ef0e2fc0d7f19c24ee55de/) | ⚠️ Unaudited |
| Yield | unknown | ethereum | n/a | 2 deployments: ethereum [`0xa52bc2...5df01a`](./contracts/ethereum-1/0xa52bc229c750b35c10d54f23ad3cb6e8155df01a/); ethereum `0xf4ef3b...78427b` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (9)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Manager | governance | avalanche | n/a | `0x03acc3...08c8dc` | ❓ Unverified |
| Proxy (impl: 0x0ca01ee564363e115c1990fac21314ddfa210f4a) | proxy | linea | n/a | `0xde3fdb...6383d6` | ❓ Unverified |
| Proxy (impl: 0x4ed3166fab585d9da1126955c9b1f0f61c971801) | proxy | plasma | n/a | `0xf4f447...ee55de` | ❓ Unverified |
| Proxy (impl: 0x52cb1a9a9154f0e0a3c7ce08f95caee6062dbca9) | proxy | plasma | n/a | `0x4772d2...5c8121` | ❓ Unverified |
| Proxy (impl: 0x6c6e88a438092fda33ad2304c54180b41c35fa64) | proxy | linea | n/a | `0x168bc4...7569e7` | ❓ Unverified |
| Proxy (impl: 0x7b7e9dc2ff8e48e311d727786ed6aa7b1ce6bfa8) | proxy | plasma | n/a | `0x03acc3...08c8dc` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0xe58226...d9ef2e` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xda2d9e...9c225f` | ❓ Unverified |
| YTokenL2 | token | linea | n/a | `0x4e559d...4c2e28` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [2026.02.03 - Final - YieldFi Collaborative Audit Report 1770139561.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2026.02.03%20-%20Final%20-%20YieldFi%20Collaborative%20Audit%20Report%201770139561.pdf) | Sherlock | Contest | 2026-01 | fresh | Direct | contract_name | 7 | n/a |
| [2025-06-17-cyfrin-yieldfi-pr19-vytoken-v2.2.pdf](https://github.com/Cyfrin/cyfrin-audit-reports/blob/main/reports/2025-06-17-cyfrin-yieldfi-pr19-vytoken-v2.2.pdf) | Cyfrin | Audit | 2025-06 | aging | Direct | contract_name | 21 | n/a |
| [2025-04-24-cyfrin-yieldfi-v2.0.pdf](https://github.com/Cyfrin/cyfrin-audit-reports/blob/main/reports/2025-04-24-cyfrin-yieldfi-v2.0.pdf) | Cyfrin | Audit | 2025-04 | aging | Direct | contract_name | 21 | n/a |
| [www.halborn.com/audits/yieldfi](https://www.halborn.com/audits/yieldfi) | Halborn | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [cantina.xyz/portfolio/d13d31e4-72c7-404c-b281-f6ccdd3c534f](https://cantina.xyz/portfolio/d13d31e4-72c7-404c-b281-f6ccdd3c534f) | Spearbit | Audit | 2024-11 | aging | Direct | n/a | 0 | n/a |
| [2023-03-07-linkpool_liquid_sd_index_pool.pdf](https://github.com/Cyfrin/cyfrin-audit-reports/blob/main/reports/2023-03-07-linkpool_liquid_sd_index_pool.pdf) | Cyfrin | Audit | 2023-03 | stale | Direct | n/a | 0 | n/a |
| [.gitkeep](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/.gitkeep) | Sherlock | Contest | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x803438...b3fce1`](./contracts/ethereum-1/0x803438689b101aede853c9604d32aa80f0b3fce1/) | Administrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9305a0...29bdff`](./contracts/ethereum-1/0x9305a0cc13293b69dee0b9d281d21144b029bdff/) | Administrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf6cdcf...abdba4`](./contracts/ethereum-1/0xf6cdcf759e39c29eb843cbfd549a7d9b82abdba4/) | ChainlinkOracleAdapter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc9ec62...849961`](./contracts/ethereum-1/0xc9ec62d1e2ada282c3544178664d98cf62849961/) | FeatureRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x13a9f3...929ff0`](./contracts/ethereum-1/0x13a9f3f09588c4e5c6cddb1164398630bf929ff0/) | GreenlistFeature | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbbb6ed...963aa6`](./contracts/ethereum-1/0xbbb6edf1811fda36f591c617b51d2d43e4963aa6/) | LimitsFeature | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0407d3...5f4d6d`](./contracts/ethereum-1/0x0407d37e3a8cc7e8bcbc69ab31b8da4be25f4d6d/) | LockBox | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x08fb98...c5f05c`](./contracts/ethereum-1/0x08fb9833a5a84d5bcecdf5a4a635d33260c5f05c/) | Manager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x88538b...993935`](./contracts/ethereum-1/0x88538b8199238efe82f53862b1eaf5e705993935/) | Manager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x08fb98...c5f05c`](./contracts/bsc-56/0x08fb9833a5a84d5bcecdf5a4a635d33260c5f05c/) | Manager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x95178e...6832fa`](./contracts/ethereum-1/0x95178e55fe7edd0792b9819b7654c9ee076832fa/) | NAV | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x67dba3...241df5`](./contracts/ethereum-1/0x67dba3444a99b9788e78932015312b2550241df5/) | PriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x154e5d...b8deed`](./contracts/ethereum-1/0x154e5dd6d7a0efbb343a3f2146a31590eeb8deed/) | Receipt | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9a7664...0f7505`](./contracts/ethereum-1/0x9a766451b18df401e39109f8a9f06355be0f7505/) | Registry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x9a7664...0f7505`](./contracts/bsc-56/0x9a766451b18df401e39109f8a9f06355be0f7505/) | Registry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x20b8f4...f4dc0d`](./contracts/ethereum-1/0x20b8f4a172e3a0bdb96c89d49629e83f73f4dc0d/) | SToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3edae9...4ee668`](./contracts/ethereum-1/0x3edae9c342ba1c0ece710db1f0c7bccec24ee668/) | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xdd5eff...318894`](./contracts/bsc-56/0xdd5eff0756db08bad0ff16b66f88f506e7318894/) | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5c46ed...ba3878`](./contracts/ethereum-1/0x5c46ed83fc4446282a75d30375d993357aba3878/) | VaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1e2a56...749e1b`](./contracts/ethereum-1/0x1e2a5622178f93efd4349e2eb3dbdf2761749e1b/) | vyToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2e3c5e...0d92fc`](./contracts/ethereum-1/0x2e3c5e514eef46727de1fe44618027a9b70d92fc/) | vyToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x307311...a5c9f9`](./contracts/ethereum-1/0x3073112c2c4800b89764973d5790ccc7fba5c9f9/) | vyToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xf4f447...ee55de`](./contracts/optimism-10/0xf4f447e6afa04c9d11ef0e2fc0d7f19c24ee55de/) | vyTokenL2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xf4f447...ee55de`](./contracts/bsc-56/0xf4f447e6afa04c9d11ef0e2fc0d7f19c24ee55de/) | vyTokenL2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x8c93a6...6a7f90`](./contracts/base-8453/0x8c93a6752bfe29fda26eba8df4390c642e6a7f90/) | vyTokenL2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xf4f447...ee55de`](./contracts/base-8453/0xf4f447e6afa04c9d11ef0e2fc0d7f19c24ee55de/) | vyTokenL2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8c93a6...6a7f90`](./contracts/arbitrum-42161/0x8c93a6752bfe29fda26eba8df4390c642e6a7f90/) | vyTokenL2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xf4f447...ee55de`](./contracts/arbitrum-42161/0xf4f447e6afa04c9d11ef0e2fc0d7f19c24ee55de/) | vyTokenL2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xf4f447...ee55de`](./contracts/avalanche-43114/0xf4f447e6afa04c9d11ef0e2fc0d7f19c24ee55de/) | vyTokenL2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa52bc2...5df01a`](./contracts/ethereum-1/0xa52bc229c750b35c10d54f23ad3cb6e8155df01a/) | Yield | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 51 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 9 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=49

Zero-match audit list:

- [2036] www.halborn.com/audits/yieldfi
- [2037] cantina.xyz/portfolio/d13d31e4-72c7-404c-b281-f6ccdd3c534f
- [2039] 2023-03-07-linkpool_liquid_sd_index_pool.pdf
- [15584] .gitkeep

Fork inheritance lineage and inherited audits are included when available.
