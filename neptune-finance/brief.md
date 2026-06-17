# Agentic Audit Brief: Neptune Finance

## Project Overview

- Project: Neptune Finance (`neptune-finance`)
- Website: [https://nept.finance/](https://nept.finance/)
- Lifecycle: active (Tier 0, 84.1% below peak)
- Generated: 2026-06-17T07:00:50.257Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum
- Contract surface: 2 unique implementations (2 raw deployments)
- DeFi Llama TVL: $5,929,052.27
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 2 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 2; live-surface contracts included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/2 (0.0%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 2
- Raw deployments: 2
- Audits discovered: 3
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-12 (aging)
- Staleness: 0 fresh, 1 aging, 2 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| TetherToken | token | ethereum | n/a | [`0xdac17f...831ec7`](./contracts/ethereum-1/0xdac17f958d2ee523a2206206994597c13d831ec7/) | ⚠️ Unaudited |
| WETH9 | token | ethereum | n/a | [`0xc02aaa...756cc2`](./contracts/ethereum-1/0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2/) | ⚠️ Unaudited |

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
| [Audit Report (also discovered via alternate URL)](https://github.com/oak-security/audit-reports/blob/main/Neptune/2024-01-09%20Audit%20Report%20-%20Neptune%20Updates%20v1.0.pdf) | Oak Security | Audit | 2024-01 | stale | Direct | n/a | 0 | n/a |
| [2023-04-09 Audit Report - Neptune Protocol v1.0.pdf](https://github.com/oak-security/audit-reports/blob/main/Neptune/2023-04-09%20Audit%20Report%20-%20Neptune%20Protocol%20v1.0.pdf) | unknown | Audit | 2023-04 | stale | Direct | n/a | 0 | n/a |
| [2024-12-23 Audit Report - Neptune Updates 2 v1.1.pdf](https://github.com/oak-security/audit-reports/blob/main/Neptune/2024-12-23%20Audit%20Report%20-%20Neptune%20Updates%202%20v1.1.pdf) | unknown | Audit | 2024-12 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 2 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2394] Audit Report
- [2395] 2023-04-09 Audit Report - Neptune Protocol v1.0.pdf
- [2396] 2024-12-23 Audit Report - Neptune Updates 2 v1.1.pdf

Fork inheritance lineage and inherited audits are included when available.
