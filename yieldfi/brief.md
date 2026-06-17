# Agentic Audit Brief: YieldFi

## Project Overview

- Project: YieldFi (`yieldfi`)
- Website: [https://yield.fi/](https://yield.fi/)
- Lifecycle: active (Tier 1, declining)
- Generated: 2026-06-17T07:00:35.637Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, avalanche, base, bsc, ethereum, linea, optimism, plasma, sonic
- Contract surface: 37 unique implementations (50 raw deployments)
- DeFi Llama TVL: $10,770,028.77
- On-chain TVL (included contracts): $30,885,188.95
- TVL by chain: Ethereum $30,380,761.67 | Arbitrum $233,937.74 | Base $206,153.62 | Bsc $24,879.92 | Avalanche $23,461.23 | Optimism $13,619.76 | Sonic $2,357.90 | Linea $17.11

## Project Description

YieldFi is an active Yield Aggregator and capital-markets / asset-management platform focused on tokenized yield-vault issuance and distribution. Its current V3 positioning includes curated yield products, institutionally managed vaults, proof-of-reserves and exposure reporting, transparency metrics, and migration support for legacy vault products.

### Architecture

V1 and V2 families share governance infrastructure through Manager contracts and rely on bridges for cross-chain asset movement. The YieldFi vaults likely interact with yield-bearing tokens from both versions to aggregate user deposits.

## Contract Surface Quality

- Indexed contracts: 112; live-surface contracts included: 50 (50 live, 0 unknown).
- Excluded by liveness: 15 inactive, 47 singleton, 0 uninitialized.
- Deployment units: 37/60 live.
- Detected codebases: none
- Dependencies extracted: 2; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 21/32 (65.6%)
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 3
- Unverified implementations: 5
- Unique implementations: 37
- Raw deployments: 50
- Audits discovered: 6
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): $3,409,791.47
- Latest audit: 2026-01 (fresh)
- Staleness: 1 fresh, 3 aging, 1 stale, 1 unknown
- Tier 1 coverage: 65.6% (Cyfrin, Sherlock)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Cyfrin | Tier 1 | 20 | 62.5% | 2025-06 |
| Sherlock | Tier 1 | 7 | 21.9% | 2026-01 |

## Contract Surface

### ✅ Verified + Audited (19)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| YToken | token | ethereum | unit-21403 | [`0x1ce7d9...845a97`](./contracts/ethereum-1/0x1ce7d9942ff78c328a4181b9f3826fee6d845a97/) | ✅ Audited |
| YToken | token | ethereum | unit-21402 | [`0x19ebd1...7f35cb`](./contracts/ethereum-1/0x19ebd191f7a24ece672ba13a302212b5ef7f35cb/) | ✅ Audited |
| YToken | token | ethereum | unit-21410 | [`0x8464f6...ec123a`](./contracts/ethereum-1/0x8464f6ecae1ea58ec816c13f964030eab8ec123a/) | ✅ Audited |
| YToken | token | ethereum | unit-21413 | [`0xa01200...fc6c43`](./contracts/ethereum-1/0xa01200b2e74de6489cf56864e3d76bbc06fc6c43/) | ✅ Audited |
| Vault | core_logic | ethereum | unit-21400 (4 proxies) | 4 deployments: ethereum [`0x06c2c7...1c4f27`](./contracts/ethereum-1/0x06c2c73f30135c831d010ec7b82d0f32321c4f27/); ethereum `0x386e09...468e9c`; ethereum `0xd04ae7...b08ff0`; ethereum `0xdd5eff...318894` | ✅ Audited |
| YTokenL2 | token | avalanche | unit-21454 | [`0x4772d2...5c8121`](./contracts/avalanche-43114/0x4772d2e014f9fc3a820c444e3313968e9a5c8121/) | ✅ Audited |
| YTokenL2 | token | arbitrum | unit-21446 | [`0x4772d2...5c8121`](./contracts/arbitrum-42161/0x4772d2e014f9fc3a820c444e3313968e9a5c8121/) | ✅ Audited |
| YTokenL2 | token | optimism | unit-21418 | [`0x4772d2...5c8121`](./contracts/optimism-10/0x4772d2e014f9fc3a820c444e3313968e9a5c8121/) | ✅ Audited |
| YTokenL2 | token | bsc | unit-21425 | [`0x4772d2...5c8121`](./contracts/bsc-56/0x4772d2e014f9fc3a820c444e3313968e9a5c8121/) | ✅ Audited |
| YTokenL2 | token | sonic | unit-21428 | [`0x4772d2...5c8121`](./contracts/sonic-146/0x4772d2e014f9fc3a820c444e3313968e9a5c8121/) | ✅ Audited |
| YTokenL2 | token | arbitrum | unit-21443 | [`0x1f52ed...671fe8`](./contracts/arbitrum-42161/0x1f52edf2815bfa625890b61d6bf43ddc24671fe8/) | ✅ Audited |
| YTokenL2 | token | base | unit-21430 | [`0x1f52ed...671fe8`](./contracts/base-8453/0x1f52edf2815bfa625890b61d6bf43ddc24671fe8/) | ✅ Audited |
| BridgeCCIP | operational_periphery | sonic | n/a | 7 deployments: ethereum `0x6be164...12b1ee`; optimism `0xa358f0...770604`; bsc `0x383d63...6924ce`; sonic [`0x321520...2189d9`](./contracts/sonic-146/0x321520f89076836a0e306e4a41bccd1bfd2189d9/); base `0xb3138a...385c30`; arbitrum `0x8a264a...48f066`; avalanche `0xf6aebd...a9f9df` | ✅ Audited |
| LockBox | unknown | ethereum | unit-21409 | [`0x659b5b...0e2231`](./contracts/ethereum-1/0x659b5bc7f2f888db3d5901b78cdb34df270e2231/) | ✅ Audited |
| Manager | governance | optimism | unit-21416 | [`0x03acc3...08c8dc`](./contracts/optimism-10/0x03acc35286baae6d73d99a9f14ef13752208c8dc/) | ✅ Audited |
| Manager | governance | bsc | unit-21424 | [`0x03acc3...08c8dc`](./contracts/bsc-56/0x03acc35286baae6d73d99a9f14ef13752208c8dc/) | ✅ Audited |
| Manager | governance | sonic | unit-21427 | [`0x03acc3...08c8dc`](./contracts/sonic-146/0x03acc35286baae6d73d99a9f14ef13752208c8dc/) | ✅ Audited |
| Manager | governance | base | unit-21429 | [`0x03acc3...08c8dc`](./contracts/base-8453/0x03acc35286baae6d73d99a9f14ef13752208c8dc/) | ✅ Audited |
| Manager | governance | arbitrum | unit-21442 | [`0x03acc3...08c8dc`](./contracts/arbitrum-42161/0x03acc35286baae6d73d99a9f14ef13752208c8dc/) | ✅ Audited |

### ⚠️ Verified + Unaudited (10)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| vyToken | token | ethereum | unit-21406 | [`0x2e3c5e...0d92fc`](./contracts/ethereum-1/0x2e3c5e514eef46727de1fe44618027a9b70d92fc/) | ⚠️ Unaudited |
| vyToken | token | ethereum | unit-21407 | [`0x307311...a5c9f9`](./contracts/ethereum-1/0x3073112c2c4800b89764973d5790ccc7fba5c9f9/) | ⚠️ Unaudited |
| vyTokenL2 | token | base | unit-21438 | [`0xf4f447...ee55de`](./contracts/base-8453/0xf4f447e6afa04c9d11ef0e2fc0d7f19c24ee55de/) | ⚠️ Unaudited |
| vyTokenL2 | token | arbitrum | unit-21450 | [`0x8c93a6...6a7f90`](./contracts/arbitrum-42161/0x8c93a6752bfe29fda26eba8df4390c642e6a7f90/) | ⚠️ Unaudited |
| vyToken | token | ethereum | unit-21404 | [`0x1e2a56...749e1b`](./contracts/ethereum-1/0x1e2a5622178f93efd4349e2eb3dbdf2761749e1b/) | ⚠️ Unaudited |
| vyTokenL2 | token | bsc | unit-21426 | [`0xf4f447...ee55de`](./contracts/bsc-56/0xf4f447e6afa04c9d11ef0e2fc0d7f19c24ee55de/) | ⚠️ Unaudited |
| vyTokenL2 | token | optimism | unit-21423 | [`0xf4f447...ee55de`](./contracts/optimism-10/0xf4f447e6afa04c9d11ef0e2fc0d7f19c24ee55de/) | ⚠️ Unaudited |
| vyTokenL2 | token | avalanche | unit-21455 | [`0xf4f447...ee55de`](./contracts/avalanche-43114/0xf4f447e6afa04c9d11ef0e2fc0d7f19c24ee55de/) | ⚠️ Unaudited |
| vyTokenL2 | token | base | unit-21436 | [`0x8c93a6...6a7f90`](./contracts/base-8453/0x8c93a6752bfe29fda26eba8df4390c642e6a7f90/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | sonic | n/a | [`0xf4f447...ee55de`](./contracts/sonic-146/0xf4f447e6afa04c9d11ef0e2fc0d7f19c24ee55de/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (2)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| YTokenL2 | token | base | unit-21432 | 2 deployments: base [`0x4772d2...5c8121`](./contracts/base-8453/0x4772d2e014f9fc3a820c444e3313968e9a5c8121/); plasma [`0x4772d2...5c8121`](./contracts/plasma-9745/0x4772d2e014f9fc3a820c444e3313968e9a5c8121/) | ✅ Audited (bytecode match) |
| Manager | governance | ethereum | unit-21399 | 3 deployments: ethereum [`0x03acc3...08c8dc`](./contracts/ethereum-1/0x03acc35286baae6d73d99a9f14ef13752208c8dc/); plasma [`0x03acc3...08c8dc`](./contracts/plasma-9745/0x03acc35286baae6d73d99a9f14ef13752208c8dc/); avalanche [`0x03acc3...08c8dc`](./contracts/avalanche-43114/0x03acc35286baae6d73d99a9f14ef13752208c8dc/) | ✅ Audited (bytecode match) |

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| vyTokenL2 | proxy | plasma | unit-21441 | 2 deployments: plasma [`0xf4f447...ee55de`](./contracts/plasma-9745/0xf4f447e6afa04c9d11ef0e2fc0d7f19c24ee55de/); arbitrum [`0xf4f447...ee55de`](./contracts/arbitrum-42161/0xf4f447e6afa04c9d11ef0e2fc0d7f19c24ee55de/) | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (5)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| YTokenL2 | token | linea | unit-21457 | `0x4e559d...4c2e28` | ❓ Unverified |
| Proxy (impl: 0x0ca01ee564363e115c1990fac21314ddfa210f4a) | proxy | linea | unit-21458 | `0xde3fdb...6383d6` | ❓ Unverified |
| Proxy (impl: 0x6c6e88a438092fda33ad2304c54180b41c35fa64) | proxy | linea | unit-21456 | `0x168bc4...7569e7` | ❓ Unverified |
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

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x2e3c5e...0d92fc`](./contracts/ethereum-1/0x2e3c5e514eef46727de1fe44618027a9b70d92fc/) | vyToken | token | $2,779,051.55 | Verified native implementation with $2,779,051.55 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x307311...a5c9f9`](./contracts/ethereum-1/0x3073112c2c4800b89764973d5790ccc7fba5c9f9/) | vyToken | token | $272,963.10 | Verified native implementation with $272,963.10 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| plasma | [`0xf4f447...ee55de`](./contracts/plasma-9745/0xf4f447e6afa04c9d11ef0e2fc0d7f19c24ee55de/) | vyTokenL2 | proxy | $165,879.37 | Verified native implementation with $165,879.37 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xf4f447...ee55de`](./contracts/base-8453/0xf4f447e6afa04c9d11ef0e2fc0d7f19c24ee55de/) | vyTokenL2 | token | $91,128.85 | Verified native implementation with $91,128.85 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8c93a6...6a7f90`](./contracts/arbitrum-42161/0x8c93a6752bfe29fda26eba8df4390c642e6a7f90/) | vyTokenL2 | token | $55,664.43 | Verified native implementation with $55,664.43 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1e2a56...749e1b`](./contracts/ethereum-1/0x1e2a5622178f93efd4349e2eb3dbdf2761749e1b/) | vyToken | token | $21,074.30 | Verified native implementation with $21,074.30 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x8c93a6...6a7f90`](./contracts/base-8453/0x8c93a6752bfe29fda26eba8df4390c642e6a7f90/) | vyTokenL2 | token | $23.88 | Verified native implementation with $23.88 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 24 |
| upstream | 1 |
| standard_library | 9 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: extraction_exact=159

Zero-match audit list:

- [2036] **Halborn Audit Report**
- [2037] **Cantina Solo Audit Report**
- [2039] 2023-03-07-linkpool_liquid_sd_index_pool.pdf

Fork inheritance lineage and inherited audits are included when available.
