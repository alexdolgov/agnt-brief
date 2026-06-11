# Agentic Audit Brief: YieldFi

## Project Overview

- Project: YieldFi (`yieldfi`)
- Website: [https://yield.fi/](https://yield.fi/)
- Lifecycle: active (Tier 1, declining)
- Generated: 2026-06-11T04:15:54.788Z
- Pipeline run: v2-pipeline-2026-06-11-5b3b54-026d
- Chains: arbitrum, avalanche, base, bsc, ethereum, linea, optimism, plasma, sonic
- Contract surface: 22 unique implementations (112 raw deployments)
- DeFi Llama TVL: $12,046,272.43
- On-chain TVL (included contracts): $43,740,151.44
- TVL by chain: Ethereum $43,234,618.81 | Arbitrum $234,615.62 | Base $206,581.08 | Bsc $24,879.92 | Avalanche $23,461.23 | Optimism $13,619.76 | Sonic $2,357.90 | Linea $17.11

## Project Description

YieldFi is an active Yield Aggregator and capital-markets / asset-management platform focused on tokenized yield-vault issuance and distribution. Its current V3 positioning includes curated yield products, institutionally managed vaults, proof-of-reserves and exposure reporting, transparency metrics, and migration support for legacy vault products.

### Architecture

V1 and V2 families share governance infrastructure through Manager contracts and rely on bridges for cross-chain asset movement. The YieldFi vaults likely interact with yield-bearing tokens from both versions to aggregate user deposits.

## Audit Coverage Summary

- Verified implementations audited: 12/17 (70.6%)
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 3
- Unverified implementations: 5
- Unique implementations: 22
- Raw deployments: 112
- Audits discovered: 6
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): $16,264,753.96
- Latest audit: 2026-01 (fresh)
- Staleness: 1 fresh, 3 aging, 1 stale, 1 unknown
- Tier 1 coverage: 70.6% (Cyfrin, Sherlock)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Cyfrin | Tier 1 | 11 | 64.7% | 2025-06 |
| Sherlock | Tier 1 | 3 | 17.6% | 2026-01 |

## Contract Surface

### ✅ Verified + Audited (10)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| YToken | token | ethereum | 6 deployments: ethereum [`0x19ebd1...7f35cb`](./contracts/ethereum-1/0x19ebd191f7a24ece672ba13a302212b5ef7f35cb/); ethereum `0x1ce7d9...845a97`; ethereum `0x79e243...f82c8d`; ethereum `0x8464f6...ec123a`; ethereum `0x8ae736...3fdd69`; ethereum `0xa01200...fc6c43` | ✅ Audited |
| Vault | core_logic | ethereum | 4 deployments: ethereum [`0x06c2c7...1c4f27`](./contracts/ethereum-1/0x06c2c73f30135c831d010ec7b82d0f32321c4f27/); ethereum `0x386e09...468e9c`; ethereum `0xd04ae7...b08ff0`; ethereum `0xdd5eff...318894` | ✅ Audited |
| Administrator | unknown | optimism | 8 deployments: ethereum `0x9305a0...29bdff`; ethereum `0xf2de80...51aa26`; optimism [`0x1fee68...76e734`](./contracts/optimism-10/0x1fee685b2d36d030b042ebfbf26c12875776e734/); optimism `0x301978...eace4b`; base [`0x1fee68...76e734`](./contracts/base-8453/0x1fee685b2d36d030b042ebfbf26c12875776e734/); base `0x301978...eace4b`; arbitrum [`0x1fee68...76e734`](./contracts/arbitrum-42161/0x1fee685b2d36d030b042ebfbf26c12875776e734/); arbitrum `0x301978...eace4b` | ✅ Audited |
| BridgeCCIP | operational_periphery | sonic | 7 deployments: ethereum `0x6be164...12b1ee`; optimism `0xa358f0...770604`; bsc `0x383d63...6924ce`; sonic [`0x321520...2189d9`](./contracts/sonic-146/0x321520f89076836a0e306e4a41bccd1bfd2189d9/); base `0xb3138a...385c30`; arbitrum `0x8a264a...48f066`; avalanche `0xf6aebd...a9f9df` | ✅ Audited |
| BridgeLR | operational_periphery | ethereum | 2 deployments: ethereum [`0x8484e4...942bdc`](./contracts/ethereum-1/0x8484e4440e22683573e94b4eb040802307942bdc/); optimism `0x87e829...6f3dec` | ✅ Audited |
| BridgeMB | operational_periphery | ethereum | 5 deployments: ethereum [`0x0b7e6c...b19f60`](./contracts/ethereum-1/0x0b7e6c528d13ade83c85cefbb72158c7e1b19f60/); optimism `0x1ce7d9...845a97`; optimism `0x909441...10c849`; base `0x9f4a9e...2cedcc`; arbitrum `0x9f4a9e...2cedcc` | ✅ Audited |
| LockBox | unknown | ethereum | 4 deployments: ethereum [`0x0407d3...5f4d6d`](./contracts/ethereum-1/0x0407d37e3a8cc7e8bcbc69ab31b8da4be25f4d6d/); ethereum `0x659b5b...0e2231`; ethereum `0xaf60c7...d4355d`; ethereum `0xbc5c54...12d1c9` | ✅ Audited |
| Receipt | unknown | ethereum | 9 deployments: ethereum [`0x154e5d...b8deed`](./contracts/ethereum-1/0x154e5dd6d7a0efbb343a3f2146a31590eeb8deed/); ethereum `0x441e2e...27a693`; ethereum `0xce1f3d...5f68f1`; optimism `0x184544...6e4643`; optimism `0xd62311...319939`; base `0x87e829...6f3dec`; base `0x909441...10c849`; arbitrum `0x87e829...6f3dec`; arbitrum `0x909441...10c849` | ✅ Audited |
| SwapHelper | periphery | arbitrum | 3 deployments: arbitrum [`0x20fa2a...affad3`](./contracts/arbitrum-42161/0x20fa2ad95de41777260fba4909a67f46c3affad3/); arbitrum `0xd62311...319939`; arbitrum `0xf41e58...c8cb27` | ✅ Audited |
| Yield | unknown | ethereum | 2 deployments: ethereum [`0xa52bc2...5df01a`](./contracts/ethereum-1/0xa52bc229c750b35c10d54f23ad3cb6e8155df01a/); ethereum `0xf4ef3b...78427b` | ✅ Audited |

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| SToken | token | ethereum | 9 deployments: ethereum [`0x20b8f4...f4dc0d`](./contracts/ethereum-1/0x20b8f4a172e3a0bdb96c89d49629e83f73f4dc0d/); ethereum `0x4f8e14...cb95f2`; ethereum `0x9f4a9e...2cedcc`; optimism `0x4ca1da...92c87b`; optimism `0xc35eaf...67dfed`; base `0x4ca1da...92c87b`; base `0x8f88d7...083e2b`; arbitrum `0x4ca1da...92c87b`; arbitrum `0x8f88d7...083e2b` | ⚠️ Unaudited |
| vyToken | token | ethereum | 3 deployments: ethereum [`0x1e2a56...749e1b`](./contracts/ethereum-1/0x1e2a5622178f93efd4349e2eb3dbdf2761749e1b/); ethereum `0x2e3c5e...0d92fc`; ethereum `0x307311...a5c9f9` | ⚠️ Unaudited |
| STokenL2 | token | optimism | [`0x8f88d7...083e2b`](./contracts/optimism-10/0x8f88d71b25d385a388704cf32058e194b4083e2b/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | ethereum | 3 deployments: ethereum [`0x24bc41...cb6e01`](./contracts/ethereum-1/0x24bc4128942786f7cff18af3f71041d003cb6e01/); ethereum `0xaec8c1...337026`; sonic `0xf4f447...ee55de` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (2)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| YTokenL2 | token | base | 17 deployments: optimism `0x3111e0...e926b5`; optimism `0x4772d2...5c8121`; optimism `0x895e15...3b1579`; optimism `0xedd968...d5c8df`; bsc `0x4772d2...5c8121`; sonic `0x4772d2...5c8121`; base [`0x1f52ed...671fe8`](./contracts/base-8453/0x1f52edf2815bfa625890b61d6bf43ddc24671fe8/); base `0x3111e0...e926b5`; base `0x4772d2...5c8121`; base `0x895e15...3b1579`; plasma `0x4772d2...5c8121`; arbitrum [`0x1f52ed...671fe8`](./contracts/arbitrum-42161/0x1f52edf2815bfa625890b61d6bf43ddc24671fe8/); arbitrum `0x3111e0...e926b5`; arbitrum `0x4772d2...5c8121`; arbitrum `0x895e15...3b1579`; avalanche `0x4772d2...5c8121`; linea `0x4e559d...4c2e28` | ✅ Audited (bytecode match) |
| Manager | governance | ethereum | 16 deployments: ethereum [`0x03acc3...08c8dc`](./contracts/ethereum-1/0x03acc35286baae6d73d99a9f14ef13752208c8dc/); ethereum `0x88538b...993935`; ethereum `0xa356be...744dd2`; optimism [`0x03acc3...08c8dc`](./contracts/optimism-10/0x03acc35286baae6d73d99a9f14ef13752208c8dc/); optimism `0xabd5e0...9413ef`; optimism `0xca40c0...f405b1`; bsc [`0x03acc3...08c8dc`](./contracts/bsc-56/0x03acc35286baae6d73d99a9f14ef13752208c8dc/); sonic [`0x03acc3...08c8dc`](./contracts/sonic-146/0x03acc35286baae6d73d99a9f14ef13752208c8dc/); base [`0x03acc3...08c8dc`](./contracts/base-8453/0x03acc35286baae6d73d99a9f14ef13752208c8dc/); base `0x9305a0...29bdff`; base `0xf2de80...51aa26`; plasma [`0x03acc3...08c8dc`](./contracts/plasma-9745/0x03acc35286baae6d73d99a9f14ef13752208c8dc/); arbitrum [`0x03acc3...08c8dc`](./contracts/arbitrum-42161/0x03acc35286baae6d73d99a9f14ef13752208c8dc/); arbitrum `0x9305a0...29bdff`; arbitrum `0xf2de80...51aa26`; avalanche [`0x03acc3...08c8dc`](./contracts/avalanche-43114/0x03acc35286baae6d73d99a9f14ef13752208c8dc/) | ✅ Audited (bytecode match) |

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| vyTokenL2 | token | base | 8 deployments: optimism `0xf4f447...ee55de`; bsc `0xf4f447...ee55de`; base [`0x8c93a6...6a7f90`](./contracts/base-8453/0x8c93a6752bfe29fda26eba8df4390c642e6a7f90/); base `0xf4f447...ee55de`; plasma `0xf4f447...ee55de`; arbitrum [`0x8c93a6...6a7f90`](./contracts/arbitrum-42161/0x8c93a6752bfe29fda26eba8df4390c642e6a7f90/); arbitrum `0xf4f447...ee55de`; avalanche `0xf4f447...ee55de` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (5)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Proxy (impl: 0x0ca01ee564363e115c1990fac21314ddfa210f4a) | proxy | linea | `0xde3fdb...6383d6` | ❓ Unverified |
| Proxy (impl: 0x6c6e88a438092fda33ad2304c54180b41c35fa64) | proxy | linea | `0x168bc4...7569e7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xdfbd30...70db53` | ❓ Unverified |
| UnnamedContract | unknown | plasma | `0xe58226...d9ef2e` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xda2d9e...9c225f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [**Sherlock Audit Report**](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2026.02.03%20-%20Final%20-%20YieldFi%20Collaborative%20Audit%20Report%201770139561.pdf) | Sherlock | Contest | 2026-01 | fresh | Direct | contract_name | 27 | high |
| [**Cyfrin Audit Report**](https://github.com/Cyfrin/cyfrin-audit-reports/blob/main/reports/2025-06-17-cyfrin-yieldfi-pr19-vytoken-v2.2.pdf) | Cyfrin | Audit | 2025-06 | aging | Direct | contract_name | 55 | high |
| [**Cyfrin Audit Report**](https://github.com/Cyfrin/cyfrin-audit-reports/blob/main/reports/2025-04-24-cyfrin-yieldfi-v2.0.pdf) | Cyfrin | Audit | 2025-04 | aging | Direct | contract_name | 77 | high |
| [**Halborn Audit Report**](https://www.halborn.com/audits/yieldfi) | Halborn | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [**Cantina Solo Audit Report**](https://cantina.xyz/portfolio/d13d31e4-72c7-404c-b281-f6ccdd3c534f) | Spearbit | Audit | 2024-11 | aging | Direct | n/a | 0 | n/a |
| [2023-03-07-linkpool_liquid_sd_index_pool.pdf](https://github.com/Cyfrin/cyfrin-audit-reports/blob/main/reports/2023-03-07-linkpool_liquid_sd_index_pool.pdf) | Cyfrin | Audit | 2023-03 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x20b8f4...f4dc0d`](./contracts/ethereum-1/0x20b8f4a172e3a0bdb96c89d49629e83f73f4dc0d/) | SToken | token | $12,854,962.49 | Verified native implementation with $12,854,962.49 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1e2a56...749e1b`](./contracts/ethereum-1/0x1e2a5622178f93efd4349e2eb3dbdf2761749e1b/) | vyToken | token | $3,073,088.96 | Verified native implementation with $3,073,088.96 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x8c93a6...6a7f90`](./contracts/base-8453/0x8c93a6752bfe29fda26eba8df4390c642e6a7f90/) | vyTokenL2 | token | $336,702.51 | Verified native implementation with $336,702.51 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x8f88d7...083e2b`](./contracts/optimism-10/0x8f88d71b25d385a388704cf32058e194b4083e2b/) | STokenL2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x24bc41...cb6e01`](./contracts/ethereum-1/0x24bc4128942786f7cff18af3f71041d003cb6e01/) | TransparentUpgradeableProxy | proxy | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 13 |
| upstream | 1 |
| standard_library | 2 |
| needs_review | 6 |

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
