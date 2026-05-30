# Agentic Audit Brief: XSY

## Project Overview

- Project: XSY (`xsy`)
- Website: [https://xsy.fi](https://xsy.fi)
- Lifecycle: active (Tier 0, 44.8% below peak)
- Generated: 2026-05-30T19:21:45.136Z
- Pipeline run: v2-pipeline-2026-05-30-c7d699-40af
- Chains: avalanche
- Contract surface: 16 unique implementations (23 raw deployments)
- DeFi Llama TVL: $20,973,051.72
- On-chain TVL (included contracts): $3,598,575.01
- TVL by chain: Avalanche $3,598,575.01

## Project Description

XSY is a basis trading protocol on Avalanche that enables users to execute delta-neutral strategies by capturing the spread between spot and futures markets. It provides automated vaults and liquidity pools to facilitate these trades.

### Architecture

The XSY vaults rely on the Use family's liquidity pools (ClPool) and stablecoin (FiatTokenV2_2) to execute basis trades and manage settlements. Both families share proxy-based upgradeability patterns and are deployed on Avalanche.

## Audit Coverage Summary

- Verified implementations audited: 1/5 (20.0%)
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 11
- Unique implementations: 16
- Raw deployments: 23
- Audits discovered: 1
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $3,598,575.01
- Latest audit: 2025-03 (aging)
- Staleness: 0 fresh, 1 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Quantstamp | Tier 2 | 1 | 20.0% | 2025-03 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Unity | unknown | avalanche | [`0x639c72...2587c4`](./contracts/avalanche-43114/0x639c72eea35e50f5e2911891389fc4e8422587c4/) | ✅ Audited |

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ClPool | core_logic | avalanche | [`0xca7bd8...ee07cf`](./contracts/avalanche-43114/0xca7bd86983a2474f3c7cb45207bc16760cee07cf/) | ⚠️ Unaudited |
| BeaconProxy | registry | avalanche | 2 deployments: avalanche [`0x76de25...167e40`](./contracts/avalanche-43114/0x76de251bee4a3b902857f6a0fce8a320c4167e40/); avalanche `0x902714...3ecc0a` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | avalanche | 7 deployments: avalanche [`0x318323...063b73`](./contracts/avalanche-43114/0x3183236cdce208888c1857c2f718e3628c063b73/); avalanche `0x580d5e...f2ab01`; avalanche `0x65a83c...d33b6e`; avalanche `0x9b9cf4...d4c77a`; avalanche `0x9cf467...ef51f8`; avalanche `0xdbc519...f02b4a`; avalanche `0xf8adf3...a401a9` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | avalanche | [`0xb97ef9...c48a6e`](./contracts/avalanche-43114/0xb97ef9ef8734c71904d8002f8b6bc66dd9c48a6e/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (11)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | avalanche | `0x0a006e...cd359e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x1fe74c...6d20e3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x2d2fbf...1ffecf` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x3d3f8f...66c6bc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x495b23...0a4179` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x5c1b14...7df411` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x617777...4e0a23` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x7f2239...cd51c2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x8b0645...a18924` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xe67348...344310` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xecc6ad...ae08d3` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Rendered PDF capture](https://1728001657-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fy666pAtApydsTORD7kHB%2Fuploads%2FRdDHIS3o9qNSygkgXgcM%2FXSY%20x%20Quantstamp%20-%20Audit.pdf) | Quantstamp | Audit | 2025-03 | aging | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | [`0xca7bd8...ee07cf`](./contracts/avalanche-43114/0xca7bd86983a2474f3c7cb45207bc16760cee07cf/) | ClPool | core_logic | $3,598,575.01 | Verified native implementation with $3,598,575.01 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 13 |
| upstream | 1 |
| standard_library | 2 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=1

Fork inheritance lineage and inherited audits are included when available.
