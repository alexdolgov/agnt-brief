# Agentic Audit Brief: Swerve

## Project Overview

- Project: Swerve (`swerve`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:59.221Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-66d5
- Chains: ethereum
- Contract surface: 6 unique implementations (9 raw deployments)
- DeFi Llama TVL: $305,074.76
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 4 project-authored contract(s) across 1 chain(s); built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 16; live-surface contracts included: 9 (5 live, 4 unknown).
- Excluded by liveness: 7 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/2 (50.0%)
- Deployed-live implementations: 2 of 6 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/3
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 6
- Raw deployments: 9
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2020-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 33.3% | 2020-09 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Vyper_contract | unknown | ethereum | n/a | [`0x329239599afb305da0a2ec69c58f8a6697f9f88d`](./contracts/ethereum-1/0x329239599afb305da0a2ec69c58f8a6697f9f88d/) | ✅ Audited |

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Vyper_contract | unknown | ethereum | n/a | 4 deployments: ethereum [`0x2c988c3974ad7e604e276ae0294a7228def67974`](./contracts/ethereum-1/0x2c988c3974ad7e604e276ae0294a7228def67974/); ethereum `0x77c6e4a580c0dce4e5c7a17d0bc077188a83a059`; ethereum `0xb4d0c929cd3a1fbdc6d57e7d3315cf0c4d6b4bfa`; ethereum `0xb8baa0e4287890a5f79863ab62b7f175cecbd433` | ⚠️ Unaudited |
| YPoolDelegator | unknown | ethereum | n/a | [`0xe9f8ca518756911ba8ca01bcb571e12ce8a602b1`](./contracts/ethereum-1/0xe9f8ca518756911ba8ca01bcb571e12ce8a602b1/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | ethereum | n/a | `0x7e12d719563b4c8d6ef4b3465bdbfce0a45f49b4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xba08a5dd30dfc2af10b5e954b25831708efb9979` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc1aaebbd5d6464cbe62ffa7e0156a7ba826af74e` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Swerve Finance Audit - by Cryptic Labs v3.pdf](https://github.com/crypticlabs/swerve-audit-report/blob/master/Swerve%20Finance%20Audit%20-%20by%20Cryptic%20Labs%20v3.pdf) | unknown | Audit | 2020-09 | stale | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x2c988c3974ad7e604e276ae0294a7228def67974`](./contracts/ethereum-1/0x2c988c3974ad7e604e276ae0294a7228def67974/) | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe9f8ca518756911ba8ca01bcb571e12ce8a602b1`](./contracts/ethereum-1/0xe9f8ca518756911ba8ca01bcb571e12ce8a602b1/) | YPoolDelegator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=1

Fork inheritance lineage and inherited audits are included when available.
