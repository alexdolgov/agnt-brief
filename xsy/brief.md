# Agentic Audit Brief: XSY

## Project Overview

- Project: XSY (`xsy`)
- Website: [https://xsy.fi](https://xsy.fi)
- Lifecycle: active (Tier 0, 44.8% below peak)
- Generated: 2026-06-19T06:14:53.726Z
- Pipeline run: v2-pipeline-2026-06-19-32b207-c216
- Chains: avalanche, base
- Contract surface: 12 unique implementations (13 raw deployments)
- DeFi Llama TVL: $20,970,676.88
- On-chain TVL (included contracts): $3,599,223.33
- TVL by chain: Avalanche $3,598,884.07 | Base $339.26

## Project Description

YieldPoint/XSY is a multi-product crypto yield platform centered on Unity/UTY, a dollar-pegged synthetic dollar, and yUTY yield participation. The protocol provides synthetic-dollar yield exposure, with market-neutral or basis-trading strategy exposure as part of the underlying yield approach. The currently tracked surface should be described as the DefiLlama-tracked Avalanche deployment unless additional Base or other chain contracts are verified.

### Architecture

The XSY vaults rely on the Use family's liquidity pools (ClPool) and stablecoin (FiatTokenV2_2) to execute basis trades and manage settlements. Both families share proxy-based upgradeability patterns and are deployed on Avalanche.

## Contract Surface Quality

- Indexed contracts: 28; live-surface contracts included: 13 (12 live, 1 unknown).
- Excluded by liveness: 6 inactive, 9 singleton, 0 uninitialized.
- Deployment units: 6/12 live.
- Detected codebases: none
- Dependencies extracted: 1; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/9 (0.0%)
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 12
- Raw deployments: 13
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $3,599,223.33
- Latest audit: 2025-03 (aging)
- Staleness: 0 fresh, 1 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ClPool | core_logic | avalanche | unit-33622 | [`0xca7bd8...ee07cf`](./contracts/avalanche-43114/0xca7bd86983a2474f3c7cb45207bc16760cee07cf/) | ⚠️ Unaudited |
| UTYVaultComposer | core_logic | base | n/a | [`0x2ef787...b09832`](./contracts/base-8453/0x2ef787561f3a79371ee1165b7bee6dc6ffb09832/) | ⚠️ Unaudited |
| UTYVaultInterface | core_logic | avalanche | unit-33617 | [`0x110d9c...41a7fc`](./contracts/avalanche-43114/0x110d9c781d30a99f61154b5d696772acc941a7fc/) | ⚠️ Unaudited |
| BeaconProxy | registry | avalanche | n/a | 2 deployments: avalanche [`0x76de25...167e40`](./contracts/avalanche-43114/0x76de251bee4a3b902857f6a0fce8a320c4167e40/); avalanche `0x902714...3ecc0a` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | avalanche | unit-33619 | [`0x580d5e...f2ab01`](./contracts/avalanche-43114/0x580d5e1399157fd0d58218b7a514b60974f2ab01/) | ⚠️ Unaudited |
| ShareOFTAdapter | adapter | base | unit-33615 | [`0xc6fe7c...b4d3f1`](./contracts/base-8453/0xc6fe7c5010621ab3ca5f4c018fad632f78b4d3f1/) | ⚠️ Unaudited |
| ShareOFTAdapter | adapter | base | unit-33616 | [`0xcfd564...7162d4`](./contracts/base-8453/0xcfd564bbf4e50a248835ace8ca889f73217162d4/) | ⚠️ Unaudited |
| UTY | unknown | base | unit-33613 | [`0xba5153...c127eb`](./contracts/base-8453/0xba515304d8153c4b162dc79f867e152df9c127eb/) | ⚠️ Unaudited |
| yUTY | unknown | base | unit-33614 | [`0xba515e...ed5319`](./contracts/base-8453/0xba515eed0119acb7cfe8fab3acd6b362f3ed5319/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (3)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | avalanche | n/a | `0x0a006e...cd359e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x617777...4e0a23` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe67348...344310` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Rendered PDF capture](https://1728001657-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fy666pAtApydsTORD7kHB%2Fuploads%2FRdDHIS3o9qNSygkgXgcM%2FXSY%20x%20Quantstamp%20-%20Audit.pdf) | Quantstamp | Audit | 2025-03 | aging | Direct | contract_name | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | [`0xca7bd8...ee07cf`](./contracts/avalanche-43114/0xca7bd86983a2474f3c7cb45207bc16760cee07cf/) | ClPool | core_logic | $3,598,575.01 | Verified native implementation with $3,598,575.01 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2ef787...b09832`](./contracts/base-8453/0x2ef787561f3a79371ee1165b7bee6dc6ffb09832/) | UTYVaultComposer | core_logic | $339.26 | Verified native implementation with $339.26 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 7 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: extraction_exact=1

Zero-match audit list:

- [11490] Rendered PDF capture

Fork inheritance lineage and inherited audits are included when available.
