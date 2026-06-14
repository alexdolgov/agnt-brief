# Agentic Audit Brief: Dnax

## Project Overview

- Project: Dnax (`dnax`)
- Website: [https://dnax.us/](https://dnax.us/)
- Lifecycle: active (Tier 0, 42.5% below peak)
- Generated: 2026-06-14T03:35:58.537Z
- Pipeline run: v2-pipeline-2026-06-14-ec5560-d641
- Chains: bsc
- Contract surface: 3 unique implementations (4 raw deployments)
- DeFi Llama TVL: $3,354,305.09
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dnax is a BSC onchain trading and DEX protocol focused on automated trading features, including automated limit orders, custom price ranges, grid and recurring orders, and orderbook-like trading functionality through its upgradeable core controller contract.

### Architecture

The protocol consists of a single product family where the OptimizedTransparentUpgradeableProxy serves as the governance-controlled entry point, delegating all logic to the CarbonController implementation.

## Audit Coverage Summary

- Verified implementations audited: 0/3 (0.0%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 3
- Raw deployments: 4
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

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| CarbonController | unknown | bsc | 2 deployments: bsc [`0x62b2b6...3c7e2f`](./contracts/bsc-56/0x62b2b60e2112011e5f5c34e3865d83a93c3c7e2f/); bsc `0xafc43f...a9a1b9` | ⚠️ Unaudited |
| Multicall3 | periphery | bsc | [`0xca11bd...76ca11`](./contracts/bsc-56/0xca11bde05977b3631167028862be2a173976ca11/) | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | proxy | bsc | [`0xea9dfe...95f48b`](./contracts/bsc-56/0xea9dfe485a700229068d9419488103f6ee95f48b/) | ⚠️ Unaudited |

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

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x62b2b6...3c7e2f`](./contracts/bsc-56/0x62b2b60e2112011e5f5c34e3865d83a93c3c7e2f/) | CarbonController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xea9dfe...95f48b`](./contracts/bsc-56/0xea9dfe485a700229068d9419488103f6ee95f48b/) | OptimizedTransparentUpgradeableProxy | proxy | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
