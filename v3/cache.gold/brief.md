# Agentic Audit Brief: CACHE.Gold

## Project Overview

- Project: CACHE.Gold (`cache.gold`)
- Website: [https://cache.gold/](https://cache.gold/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:38.397Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-66d5
- Chains: ethereum
- Contract surface: 8 unique implementations (8 raw deployments)
- DeFi Llama TVL: $515,628.99
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

RWA. Structurally: 4 project-authored contract(s) across 1 chain(s); 2 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol forms a single structural family (Core Logic) of 4 contract(s).

## Contract Surface Quality

- Indexed contracts: 14; live-surface contracts included: 8 (1 live, 7 unknown).
- Excluded by liveness: 6 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/1 (100.0%)
- Deployed-live implementations: 1 of 8 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/1
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 7
- Unique implementations: 8
- Raw deployments: 8
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
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

### ❓ Unverified (7)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x101e22...3acc20` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1158e6...3f549b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3d7956...aed20c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4a2b32...1723da` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4b73d8...977466` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8b9be8...11842b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa6d6f1...a5d77f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [CACHE_Gold_Audit_Zerotrust.pdf](https://github.com/cache-token/docs/blob/master/CACHE_Gold_Audit_Zerotrust.pdf) | unknown | Audit | 2019-09 | stale | Direct | contract_name | 1 | n/a |
| [CACHE_Gold_CGT_Audit_Polygon_CertiK.pdf](https://github.com/cache-token/docs/blob/master/CACHE_Gold_CGT_Audit_Polygon_CertiK.pdf) | CertiK | Audit | 2022-07 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 8 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=1

Zero-match audit list:

- [12879] CACHE_Gold_CGT_Audit_Polygon_CertiK.pdf

Fork inheritance lineage and inherited audits are included when available.
