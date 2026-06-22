# Agentic Audit Brief: PolygonFarm Finance

⚠️ Lifecycle status: UNKNOWN - TVL dropped 4.4% over 90 days

## Project Overview

- Project: PolygonFarm Finance (`polygonfarm-finance`)
- Lifecycle: unknown (Tier 0, 94.1% below peak)
- Generated: 2026-06-21T06:51:40.697Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: polygon
- Contract surface: 1 unique implementations (1 raw deployments)
- DeFi Llama TVL: $51,484.85
- On-chain TVL (included contracts): $2,682.17
- TVL by chain: Polygon $2,682.17

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 1 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 22; live-surface contracts included: 1 (1 live, 0 unknown).
- Excluded by liveness: 21 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: uniswap-v2
- Unverified dependencies: 1/13.

## Audit Coverage Summary

- Verified implementations audited: 1/1 (100.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1
- Raw deployments: 1
- Audits discovered: 2
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-07 (stale)
- Staleness: 0 fresh, 0 aging, 2 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of n/a represents exposure in a protocol with unknown activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Paladin | Tier 2 | 1 | 100.0% | 2021-07 |
| yAudit | Tier 2 | 1 | 100.0% | 2021-07 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SPADEToken | token | polygon | n/a | [`0xf5ea62...6eff19`](./contracts/polygon-137/0xf5ea626334037a2cf0155d49ea6462fddc6eff19/) | ✅ Audited |

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
| [SPADE Standart Smart Contract Security Audit.pdf](https://github.com/TechRate/Smart-Contract-Audits/blob/main/2018-21%20N-Z/SPADE%20Standart%20Smart%20Contract%20Security%20Audit.pdf) | yAudit | Audit | 2021-07 | stale | Direct | contract_name | 1 | high |
| [DL audit link](https://paladinsec.co/projects/polygonfarm) | Paladin | Audit | 2021-07 | stale | Direct | contract_name | 1 | high |

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
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=3

Fork inheritance lineage and inherited audits are included when available.
