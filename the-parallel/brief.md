# Agentic Audit Brief: The Parallel

⚠️ Lifecycle status: DEAD - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: The Parallel (`the-parallel`)
- Website: [https://theparallel.io](https://theparallel.io)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-06-19T17:22:30.339Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: bsc
- Contract surface: 4 unique implementations (4 raw deployments)
- DeFi Llama TVL: $0.00
- On-chain TVL (included contracts): $445,423.12
- TVL by chain: Bsc $445,423.12

## Project Description

The Parallel is a gaming-focused DeFi protocol on BSC that provides liquidity locking and token staking mechanisms, likely to support in-game economies or reward systems. It includes a native token (ParallelToken) and integrates with PancakeSwap-style AMM pools for liquidity management.

### Architecture

The ParallelToken serves as the ecosystem token, likely used for rewards or governance. LockLiquidity and Locked contracts manage staking and locking of LP tokens from the PancakePair pools, while DMMPool may provide dynamic fee liquidity. The unnamed contract at 0x21ef... could be a factory or router coordinating these components.

## Contract Surface Quality

- Indexed contracts: 8; live-surface contracts included: 4 (4 live, 0 unknown).
- Excluded by liveness: 4 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: uniswap-v2
- Dependencies extracted: 5; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 1/3 (33.3%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 4
- Raw deployments: 4
- Audits discovered: 1
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $63.12
- Latest audit: 2021-12 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of $63.12 represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 33.3% | 2021-12 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ParallelToken | token | bsc | n/a | [`0xd07e82...4f8b24`](./contracts/bsc-56/0xd07e82440a395f3f3551b42da9210cd1ef4f8b24/) | ✅ Audited |

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DMMPool | core_logic | bsc | n/a | [`0x3e95e0...3f7c57`](./contracts/bsc-56/0x3e95e07550e9798272130ab65b58f2f17b3f7c57/) | ⚠️ Unaudited |
| PancakePair | unknown | bsc | n/a | [`0xb5feae...f4fa0e`](./contracts/bsc-56/0xb5feae037c2330a8f298f39bce96dd6e69f4fa0e/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x21efc3...924785` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Verichains Public Audit Report - TheParallel - v1.1.pdf](https://github.com/verichains/public-audit-reports/blob/main/Verichains%20Public%20Audit%20Report%20-%20TheParallel%20-%20v1.1.pdf) | unknown | Audit | 2021-12 | stale | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=1

Fork inheritance lineage and inherited audits are included when available.
