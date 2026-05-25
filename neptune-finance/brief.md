# Agentic Audit Brief: Neptune Finance

## Project Overview

- Project: Neptune Finance (`neptune-finance`)
- Website: [https://nept.finance/](https://nept.finance/)
- Lifecycle: active (Tier 0, 84.1% below peak)
- Generated: 2026-05-25T15:49:17.486Z
- Pipeline run: v2-pipeline-2026-05-25-eff36e-79e6
- Chains: ethereum
- Contract surface: 2 unique implementations (2 raw deployments)
- DeFi Llama TVL: $6,051,685.85
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Neptune Finance is a lending protocol on Ethereum that enables users to supply and borrow assets, with interest rates determined by market utilization. It provides a decentralized platform for earning yield on deposits and accessing liquidity through overcollateralized loans.

### Architecture

The protocol appears to have a single product family focused on borrow rate retrieval, with no explicit shared infrastructure contracts identified in the provided inventory.

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

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| TetherToken | token | ethereum | [`0xdac17f...831ec7`](./contracts/ethereum-1/0xdac17f958d2ee523a2206206994597c13d831ec7/) | ⚠️ Unaudited |
| WETH9 | token | ethereum | [`0xc02aaa...756cc2`](./contracts/ethereum-1/0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2/) | ⚠️ Unaudited |

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
