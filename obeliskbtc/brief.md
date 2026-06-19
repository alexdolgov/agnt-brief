# Agentic Audit Brief: ObeliskBTC

⚠️ Lifecycle status: DECLINING - TVL changed 27.1% over 90 days

## Project Overview

- Project: ObeliskBTC (`obeliskbtc`)
- Website: [https://obelisk.nodedao.com](https://obelisk.nodedao.com)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-19T06:14:32.509Z
- Pipeline run: v2-pipeline-2026-06-19-32b207-c216
- Chains: ethereum
- Contract surface: 1 unique implementations (1 raw deployments)
- DeFi Llama TVL: $7,428,761.81
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

ObeliskBTC is a Bitcoin asset-management and bridge protocol tracked as a separate DeFiLlama protocol. Its scope should be treated separately from broader NodeDAO/NETH liquid-staking or restaking contracts unless project documentation explicitly links those deployments to ObeliskBTC.

## Contract Surface Quality

- Indexed contracts: 26; live-surface contracts included: 1 (1 live, 0 unknown).
- Excluded by liveness: 7 inactive, 18 singleton, 0 uninitialized.
- Deployment units: 0/15 live.
- Detected codebases: none
- Unverified dependencies: 1/5.

## Audit Coverage Summary

- Verified implementations audited: 1/1 (100.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1
- Raw deployments: 1
- Audits discovered: 1
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-08 (aging)
- Staleness: 0 fresh, 1 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CertiK | Tier 2 | 1 | 100.0% | 2024-08 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| OBTC | unknown | ethereum | n/a | [`0xb1e128...de0e3c`](./contracts/ethereum-1/0xb1e12802831da99d2d47b6a55049d69bf7de0e3c/) | ✅ Audited |

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
| [CertiK-Obelisk-final-20240805T174639Z.pdf](https://github.com/NodeDAO/audit/blob/main/CertiK-Obelisk-final-20240805T174639Z.pdf) | CertiK | Audit | 2024-08 | aging | Direct | contract_name | 1 | high |

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
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=12

Fork inheritance lineage and inherited audits are included when available.
