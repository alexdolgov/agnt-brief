# Agentic Audit Brief: Vest Markets

⚠️ Lifecycle status: DECLINING - TVL dropped 73.4% over 90 days

## Project Overview

- Project: Vest Markets (`vest-markets`)
- Website: [https://alpha.vestmarkets.com](https://alpha.vestmarkets.com)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-19T06:14:51.029Z
- Pipeline run: v2-pipeline-2026-06-19-32b207-c216
- Chains: arbitrum, bsc, zksync-era
- Contract surface: 3 unique implementations (3 raw deployments)
- DeFi Llama TVL: $1,172,935.07
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Vest Markets is a perpetuals and leveraged trading DEX for equities, crypto and FX. Its bridge contracts are supporting infrastructure rather than the primary protocol identity.

### Architecture

The SrcBridge contract handles cross-chain asset transfers and is deployed on multiple chains, while the Treasury manages protocol fees. The Exchange and RouterV2 contracts facilitate trading and routing, sharing the bridge and treasury infrastructure.

## Contract Surface Quality

- Indexed contracts: 75; live-surface contracts included: 3 (3 live, 0 unknown).
- Excluded by liveness: 58 inactive, 14 singleton, 0 uninitialized.
- Deployment units: 2/11 live.
- Detected codebases: none
- Unverified dependencies: 1/1.

## Audit Coverage Summary

- Verified implementations audited: 0/2 (0.0%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 3
- Raw deployments: 3
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SrcBridge | operational_periphery | bsc | unit-23669 | [`0xef14da...372c41`](./contracts/bsc-56/0xef14da66876476c1a75dc057343b97b6bd372c41/) | ⚠️ Unaudited |
| SrcBridge | operational_periphery | arbitrum | unit-23677 | [`0x80c526...0eda00`](./contracts/arbitrum-42161/0x80c526d1c2fddadb3cd39810cd7a79e07b0eda00/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | zksync-era | n/a | `0xf0bcf4...fda56b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
