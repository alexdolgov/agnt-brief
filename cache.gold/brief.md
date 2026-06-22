# Agentic Audit Brief: CACHE.Gold

## Project Overview

- Project: CACHE.Gold (`cache.gold`)
- Website: [https://cache.gold/](https://cache.gold/)
- Lifecycle: active (Tier 0, 88.1% below peak)
- Generated: 2026-06-21T14:31:43.239Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: ethereum
- Contract surface: 1 unique implementations (1 raw deployments)
- DeFi Llama TVL: $525,930.43
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 1 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 11; live-surface contracts included: 1 (1 live, 0 unknown).
- Excluded by liveness: 10 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 1/1 (100.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1
- Raw deployments: 1
- Audits discovered: 2
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-07 (stale)
- Staleness: 0 fresh, 0 aging, 2 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 100.0% | 2019-09 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CacheGold | unknown | ethereum | n/a | [`0xf52384...c2eaa0`](./contracts/ethereum-1/0xf5238462e7235c7b62811567e63dd17d12c2eaa0/) | ✅ Audited |

### ⚠️ Verified + Unaudited (0)

- None

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [CACHE_Gold_Audit_Zerotrust.pdf](https://github.com/cache-token/docs/blob/master/CACHE_Gold_Audit_Zerotrust.pdf) | unknown | Audit | 2019-09 | stale | Direct | contract_name | 1 | high |
| [CACHE_Gold_CGT_Audit_Polygon_CertiK.pdf](https://github.com/cache-token/docs/blob/master/CACHE_Gold_CGT_Audit_Polygon_CertiK.pdf) | CertiK | Audit | 2022-07 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=1

Zero-match audit list:

- [12879] CACHE_Gold_CGT_Audit_Polygon_CertiK.pdf

Fork inheritance lineage and inherited audits are included when available.
