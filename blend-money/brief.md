# Agentic Audit Brief: Blend Money

⚠️ Lifecycle status: DECLINING - TVL dropped 81.6% over 90 days

## Project Overview

- Project: Blend Money (`blend-money`)
- Website: [https://blend.money/](https://blend.money/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-19T21:55:12.249Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: arbitrum, base, ethereum, hyperliquid, polygon, scroll
- Contract surface: 16 unique implementations (71 raw deployments)
- DeFi Llama TVL: $8,554.13
- On-chain TVL (included contracts): $256,625.02
- TVL by chain: Arbitrum $256,625.02

## Project Description

Blend Money is an onchain capital allocator that aggregates user deposits into yield-generating vaults. It leverages Morpho Blue lending markets and automated vault controllers to optimize returns across multiple chains.

### Architecture

Vaults (VaultV2, MetaMorphoV1_1) deposit user funds into MorphoVaultController instances, which then allocate capital to Morpho Blue markets. Controllers rely on SwapAdapters for reward conversion and RolesGuards/Receivers for cross-chain governance and access control.

## Contract Surface Quality

- Indexed contracts: 71; live-surface contracts included: 71 (71 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 4; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 8/12 (66.7%)
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 16
- Raw deployments: 71
- Audits discovered: 12
- Scoreable audits (matched contracts): 11
- ASD (verified + unaudited TVL): $256,625.02
- Latest audit: 2026-06 (fresh)
- Staleness: 12 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: 58.3% (Sherlock, Spearbit)
- Note: This protocol is classified as [declining]. ASD of $256,625.02 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Spearbit | Tier 1 | 5 | 41.7% | 2025-10 |
| Sherlock | Tier 1 | 3 | 25.0% | 2026-06 |
| unknown | Tier 2 | 3 | 25.0% | 2026-06 |
| Zellic | Tier 2 | 2 | 16.7% | 2025-10 |

## Contract Surface

### ✅ Verified + Audited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MorphoVaultController | core_logic | polygon | n/a | 10 deployments: ethereum `0xad7188...9c3449`; polygon [`0x05824d...269b24`](./contracts/polygon-137/0x05824db4609ec96c77e99bc61c8fe0acf3269b24/); polygon `0x107b98...a98fed`; hyperliquid `0x44c6dc...d3b437`; hyperliquid `0x9f4fb6...f96037`; base `0x20baf0...4229c3`; base `0x26c1f8...b4677c`; arbitrum `0xad7188...9c3449`; arbitrum `0xfe07c5...b45304`; scroll `0xab8436...45ed50` | ✅ Audited |
| RolesBroadcaster | unknown | base | n/a | [`0x6f94ac...061263`](./contracts/base-8453/0x6f94ac2c4129a7f1435532f39913dfd23d061263/) | ✅ Audited |
| RolesGuard | governance | base | n/a | 7 deployments: ethereum `0xbb4021...c6156c`; polygon `0xad7188...9c3449`; hyperliquid `0x920029...3dd7bf`; hyperliquid `0xab6a8f...debc49`; base [`0x0a55aa...75f718`](./contracts/base-8453/0x0a55aa9881b64bf370738f088154f997b975f718/); arbitrum `0x7d55a2...0acddf`; scroll `0xad7188...9c3449` | ✅ Audited |
| RolesReceiver | unknown | ethereum | n/a | 12 deployments: ethereum [`0x05824d...269b24`](./contracts/ethereum-1/0x05824db4609ec96c77e99bc61c8fe0acf3269b24/); ethereum `0x7d55a2...0acddf`; polygon `0x920029...3dd7bf`; polygon `0xfe07c5...b45304`; hyperliquid `0xab8436...45ed50`; hyperliquid `0xfe07c5...b45304`; base `0x994455...7c5d6e`; base `0xe4e0f5...431360`; arbitrum `0x107b98...a98fed`; arbitrum `0xa03f41...4a82e8`; scroll `0x2af296...92a4c9`; scroll `0x6f94ac...061263` | ✅ Audited |
| SwapAdapter | adapter | base | n/a | 13 deployments: ethereum `0x30c743...b5e135`; ethereum `0x8ccedc...db3406`; ethereum `0x9095bf...f12f53`; ethereum `0x920029...3dd7bf`; polygon `0x9f4fb6...f96037`; polygon `0xa12e4f...c0354e`; hyperliquid `0x3d39b3...b7f5ae`; hyperliquid `0x9e622e...f3ab6b`; hyperliquid `0xad7188...9c3449`; base [`0x220718...925754`](./contracts/base-8453/0x2207189bab0f177df87d77b7575102f2df925754/); base `0xbf76d8...72def4`; arbitrum `0x6f94ac...061263`; arbitrum `0x920029...3dd7bf` | ✅ Audited |
| UserWithdrawController | operational_periphery | polygon | n/a | 5 deployments: ethereum `0x509ce0...260303`; ethereum `0xb50d1f...b74089`; ethereum `0xfd5ce7...b32a50`; polygon [`0x086d13...0ce76a`](./contracts/polygon-137/0x086d13402360efa4c4189695eced9805240ce76a/); hyperliquid `0xbb62cb...c46cce` | ✅ Audited |
| WhitelistedSwapAdapter | adapter | scroll | n/a | [`0x44c6dc...d3b437`](./contracts/scroll-534352/0x44c6dcba90dae9238f5c8842abbf8506c3d3b437/) | ✅ Audited |
| XChainVaultAction | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x220718...925754`](./contracts/ethereum-1/0x2207189bab0f177df87d77b7575102f2df925754/); ethereum `0x34f8b7...f44d12`; ethereum `0x79635a...27ca9a` | ✅ Audited |

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| VaultV2 | core_logic | arbitrum | n/a | 5 deployments: arbitrum [`0x567c1b...3b4e87`](./contracts/arbitrum-42161/0x567c1b5c2e58c66f84b80dff4c97b084b23b4e87/); arbitrum `0x75e9d4...7acb4f`; arbitrum `0x9ce8a7...128f45`; arbitrum `0xa47c52...7f4df9`; arbitrum `0xe3637c...9ece6e` | ⚠️ Unaudited |
| GeneralAdapter1 | adapter | hyperliquid | n/a | [`0x7eae59...48fb8b`](./contracts/hyperliquid-999/0x7eae59d64fb62723bf8a7d38bf027cd86c48fb8b/) | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | scroll | n/a | 3 deployments: scroll [`0x8a23d8...e3a0a7`](./contracts/scroll-534352/0x8a23d825467860edb4aca0909f29d0a6a8e3a0a7/); scroll `0xd39df2...e8a8ad`; scroll `0xec5906...995d59` | ⚠️ Unaudited |
| TimelockController | governance | hyperliquid | n/a | 6 deployments: ethereum `0x107b98...a98fed`; polygon `0x6f94ac...061263`; hyperliquid [`0x086d13...0ce76a`](./contracts/hyperliquid-999/0x086d13402360efa4c4189695eced9805240ce76a/); hyperliquid `0x30c743...b5e135`; hyperliquid `0x6f94ac...061263`; hyperliquid `0xfeb458...0e3031` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0xfeb458...0e3031` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x3f4196...b96a86` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0x107b98...a98fed` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0x9f4fb6...f96037` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Audit Reports](https://github.com/blendmoney/audits) | unknown | Audit | 2026-06 | fresh | Direct | contract_name | 21 | high |
| [blend-25-08-10-0-cantinacode.pdf (also discovered via alternate URL)](https://github.com/blendmoney/audits/blob/main/blend-25-08-10-0-cantinacode.pdf) | Spearbit | Audit | 2025-08 | fresh | Direct | contract_name | 30 | high |
| [blend-25-09-29-0-cantinacode.pdf (also discovered via alternate URL)](https://github.com/blendmoney/audits/blob/main/blend-25-09-29-0-cantinacode.pdf) | Spearbit | Audit | 2025-09 | fresh | Direct | contract_name | 10 | high |
| [blend-25-09-29-1-cantinacode.pdf (also discovered via alternate URL)](https://github.com/blendmoney/audits/blob/main/blend-25-09-29-1-cantinacode.pdf) | Spearbit | Audit | 2025-09 | fresh | Direct | contract_name | 13 | high |
| [blend-25-10-02-0-zellic.pdf (also discovered via alternate URL)](https://github.com/blendmoney/audits/blob/main/blend-25-10-02-0-zellic.pdf) | Zellic | Audit | 2025-10 | fresh | Direct | contract_name | 14 | high |
| [blend-25-10-05-0-cantinacode.pdf (also discovered via alternate URL)](https://github.com/blendmoney/audits/blob/main/blend-25-10-05-0-cantinacode.pdf) | Spearbit | Audit | 2025-10 | fresh | Direct | contract_name | 13 | high |
| [blend-25-10-10-0-cantinacode.pdf (also discovered via alternate URL)](https://github.com/blendmoney/audits/blob/main/blend-25-10-10-0-cantinacode.pdf) | Spearbit | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [blend-25-12-05-0-sherlock.pdf (also discovered via alternate URL)](https://github.com/blendmoney/audits/blob/main/blend-25-12-05-0-sherlock.pdf) | Sherlock | Contest | 2025-11 | fresh | Direct | contract_name | 13 | high |
| [blend-26-01-22-0-sherlock.pdf (also discovered via alternate URL)](https://github.com/blendmoney/audits/blob/main/blend-26-01-22-0-sherlock.pdf) | Sherlock | Contest | 2026-01 | fresh | Direct | contract_name | 13 | high |
| [blend-26-03-10-0.sherlock.pdf (also discovered via alternate URL)](https://github.com/blendmoney/audits/blob/main/blend-26-03-10-0.sherlock.pdf) | Sherlock | Contest | 2026-03 | fresh | Direct | contract_name | 3 | high |
| [blend-26-05-04-0.sherlock.pdf (also discovered via alternate URL)](https://github.com/blendmoney/audits/blob/main/blend-26-05-04-0.sherlock.pdf) | Sherlock | Contest | 2026-05 | fresh | Direct | contract_name | 5 | high |
| [[View audit report]() (also discovered via alternate URL)](https://github.com/BlendMoney/audits/blob/main/blend-26-06-12-0.sherlock.pdf) | Sherlock | Contest | 2026-06 | fresh | Direct | contract_name | 8 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x567c1b...3b4e87`](./contracts/arbitrum-42161/0x567c1b5c2e58c66f84b80dff4c97b084b23b4e87/) | VaultV2 | core_logic | $256,625.02 | Verified native implementation with $256,625.02 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x7eae59...48fb8b`](./contracts/hyperliquid-999/0x7eae59d64fb62723bf8a7d38bf027cd86c48fb8b/) | GeneralAdapter1 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 10 |
| upstream | 1 |
| standard_library | 1 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=11
- Match method counts: extraction_exact=334

Zero-match audit list:

- [12806] blend-25-10-10-0-cantinacode.pdf

Fork inheritance lineage and inherited audits are included when available.
