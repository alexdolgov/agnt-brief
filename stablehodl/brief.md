# Agentic Audit Brief: StableHodl

## Project Overview

- Project: StableHodl (`stablehodl`)
- Website: [https://stablehodl.com/](https://stablehodl.com/)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-05-31T10:39:41.327Z
- Pipeline run: v2-pipeline-2026-05-31-ab6275-1b32
- Chains: bsc, ethereum, polygon
- Contract surface: 2 unique implementations (9 raw deployments)
- DeFi Llama TVL: $6,957,865.97
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

StableHodl is a yield protocol that allows users to stake assets and earn returns through staking pools and OTC endpoints, deployed across BSC, Polygon, and Ethereum.

### Architecture

Both families share the ERC1967Proxy infrastructure for upgradeability, with staking pools and OTC endpoints deployed as separate proxy instances pointing to distinct implementations, indicating a modular design where staking and OTC services may interact through shared token flows.

## Audit Coverage Summary

- Verified implementations audited: 0/2 (0.0%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 2
- Raw deployments: 9
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

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| OTCEndPoint | operational_periphery | bsc | 2 deployments: bsc [`0x10057f...d66777`](./contracts/bsc-56/0x10057f7d9897414d1c84c886e16566dce8d66777/); polygon `0x528d46...fe64aa` | ⚠️ Unaudited |
| stake_pool | core_logic | ethereum | 7 deployments: ethereum [`0x109d30...a47544`](./contracts/ethereum-1/0x109d3042a3c682f94107b3818e93b3ade2a47544/); ethereum `0xc34df6...53e470`; bsc [`0x109d30...a47544`](./contracts/bsc-56/0x109d3042a3c682f94107b3818e93b3ade2a47544/); bsc `0x528d46...fe64aa`; bsc `0xc34df6...53e470`; polygon [`0x109d30...a47544`](./contracts/polygon-137/0x109d3042a3c682f94107b3818e93b3ade2a47544/); polygon `0xc34df6...53e470` | ⚠️ Unaudited |

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
| standard_library | 2 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
