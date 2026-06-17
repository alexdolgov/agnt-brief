# Agentic Audit Brief: GLIF

## Project Overview

- Project: GLIF (`glif`)
- Website: [https://glif.io](https://glif.io)
- Lifecycle: active (Tier 0, 90% below peak)
- Generated: 2026-06-17T07:00:36.826Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: base
- Contract surface: 4 unique implementations (5 raw deployments)
- DeFi Llama TVL: $25,413,698.24
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

GLIF is a Filecoin/DePIN yield, credit, and liquidity protocol with activity on Filecoin and Base. Its product surface should not be described as Base-only; project-level coverage and TVL should account for Filecoin as well as Base, with any Base-only figures clearly labeled as such.

### Architecture

The GLIF family consists of a single product family centered around the PoolV2 contract, which is accessed via an ERC1967Proxy. All other contracts in the inventory are periphery contracts that support the pool's operations, such as managing rewards and user interactions.

## Contract Surface Quality

- Indexed contracts: 13; live-surface contracts included: 5 (5 live, 0 unknown).
- Excluded by liveness: 0 inactive, 8 singleton, 0 uninitialized.
- Deployment units: 1/5 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/4 (0.0%)
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 4
- Raw deployments: 5
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ERC20Token | token | base | n/a | 2 deployments: base [`0x4a7c37...e53746`](./contracts/base-8453/0x4a7c3792995c9f6e0a3fb8d01ecd633c53e53746/); base `0x9f3f9a...ce0711` | ⚠️ Unaudited |
| Periphery | periphery | base | n/a | [`0x24d242...4ad082`](./contracts/base-8453/0x24d242e7e7c8bf7f022204d94aaf49c76a4ad082/) | ⚠️ Unaudited |
| PeripheryV2 | periphery | base | unit-23309 | [`0x35e137...f1ecff`](./contracts/base-8453/0x35e1371b87b742a99ab863d3cecf04e73ef1ecff/) | ⚠️ Unaudited |
| Pool | core_logic | base | n/a | [`0xed236d...024cf0`](./contracts/base-8453/0xed236d2f99346a17555f4161b2b099be80024cf0/) | ⚠️ Unaudited |

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

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
