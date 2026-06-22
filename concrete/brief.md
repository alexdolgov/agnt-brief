# Agentic Audit Brief: Concrete

## Project Overview

- Project: Concrete (`concrete`)
- Website: [https://app.concrete.xyz](https://app.concrete.xyz)
- Lifecycle: active (Tier 0, 28.2% below peak)
- Generated: 2026-06-21T20:00:49.501Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: ethereum
- Contract surface: 2 unique implementations (3 raw deployments)
- DeFi Llama TVL: $789,876,276.77
- On-chain TVL (included contracts): $29.66
- TVL by chain: Ethereum $29.66

## Project Description

Concrete is an onchain capital allocator that enables users to deposit assets into vaults which then deploy capital across multiple yield strategies. The protocol optimizes returns by managing allocations and rebalancing between strategies.

### Architecture

Both product families share the same underlying vault infrastructure, with the Concrete family using standard vault proxies and the Example response family extending functionality to multi-strategy management. They likely share common interfaces and possibly a registry or factory pattern for deployment.

## Contract Surface Quality

- Indexed contracts: 3; live-surface contracts included: 3 (1 live, 2 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/1 live.
- Detected codebases: none
- Unverified dependencies: 2/2.

## Audit Coverage Summary

- Verified implementations audited: 2/2 (100.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 2
- Raw deployments: 3
- Audits discovered: 2
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-09 (fresh)
- Staleness: 1 fresh, 1 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 50.0% | 2025-09 |
| Zellic | Tier 2 | 1 | 50.0% | 2025-06 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ConcreteMultiStrategyVault | core_logic | ethereum | n/a | [`0x15ce9b...ea5fac`](./contracts/ethereum-1/0x15ce9be6609db102b70d68ca75a39c555bea5fac/) | ✅ Audited |
| ConcreteStandardVaultImpl | core_logic | ethereum | unit-43872 (2 proxies) | 2 deployments: ethereum [`0x5854c7...e0e5fd`](./contracts/ethereum-1/0x5854c7693459c6e316a96565776b72d94ee0e5fd/); ethereum `0xb04e16...55a08f` | ✅ Audited |

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
| [DL audit link](https://docs.concrete.xyz/assets/files/Standard-Implementation-9948d7fcebb518e5c29051bc2326b5ec.pdf) | unknown | Audit | 2025-09 | fresh | Direct | contract_name | 2 | high |
| [Zellic-Audit-Report-5dbb9d52d444adcd197dfbaa941a86ab.pdf](https://docs.concrete.xyz/assets/files/Zellic-Audit-Report-5dbb9d52d444adcd197dfbaa941a86ab.pdf) | Zellic | Audit | 2025-06 | aging | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
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
