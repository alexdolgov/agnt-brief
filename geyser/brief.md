# Agentic Audit Brief: Geyser

⚠️ Lifecycle status: DEAD - TVL dropped 14.8% over 90 days

## Project Overview

- Project: Geyser (`geyser`)
- Website: [https://www.gysr.io](https://www.gysr.io)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-06-21T08:00:58.041Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: ethereum, optimism, polygon
- Contract surface: 7 unique implementations (8 raw deployments)
- DeFi Llama TVL: $93,223.55
- On-chain TVL (included contracts): $934.78
- TVL by chain: Polygon $934.78

## Project Description

Geyser is a yield protocol that enables users to stake ERC-20 or ERC-721 tokens into modular pools to earn rewards. It supports multiple reward distribution strategies (e.g., competitive, friendly, fixed, linear, multi-reward) and operates across Ethereum, Optimism, and Polygon.

### Architecture

Each product family is a chain-specific deployment of the same modular staking architecture, sharing factory and info contracts for staking and reward modules. The Ethereum mainnet serves as the original deployment, while Optimism and Polygon replicate the pattern with chain-specific configurations and token bridges (e.g., L2StandardERC20 on Optimism, UChildERC20Proxy on Polygon).

## Contract Surface Quality

- Indexed contracts: 142; live-surface contracts included: 8 (8 live, 0 unknown).
- Excluded by liveness: 134 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: none
- Dependencies extracted: 1; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 3/6 (50.0%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 7
- Raw deployments: 8
- Audits discovered: 2
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): $934.78
- Latest audit: 2021-06 (stale)
- Staleness: 0 fresh, 0 aging, 2 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of $934.78 represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CertiK | Tier 2 | 2 | 33.3% | 2021-06 |
| unknown | Tier 2 | 1 | 16.7% | 2020-10 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Geyser | unknown | ethereum | n/a | [`0x6c1ffd...9ae99f`](./contracts/ethereum-1/0x6c1ffdecc6520571d2c41087726611938a9ae99f/) | ✅ Audited |
| Pool | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x30c0f6...3fb381`](./contracts/ethereum-1/0x30c0f65d9b27ebe2cc2a49cbcb4133230b3fb381/); optimism `0xb9b532...265d68` | ✅ Audited |
| PoolFactory | registry | polygon | n/a | [`0x2f2e7b...2081d1`](./contracts/polygon-137/0x2f2e7b4e12f8a7949919c833f1a49bcb012081d1/) | ✅ Audited |

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UChildERC20 | token | polygon | unit-41668 | [`0xc48f61...6a168c`](./contracts/polygon-137/0xc48f61a288a08f1b80c2edd74652e1276b6a168c/) | ⚠️ Unaudited |
| L2StandardERC20 | token | optimism | n/a | [`0x117cfd...087f05`](./contracts/optimism-10/0x117cfd9060525452db4a34d51c0b3b7599087f05/) | ⚠️ Unaudited |
| PoolMetadata | core_logic | polygon | n/a | [`0x7daab8...39c164`](./contracts/polygon-137/0x7daab81668809bd6510177254f0c56e3b739c164/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | ethereum | n/a | `0xbea98c...c8ccab` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://resources.gysr.io/gysr_v1_audit_pessimistic.pdf) | unknown | Audit | 2020-10 | stale | Direct | contract_name | 1 | high |
| [DL audit link](https://resources.gysr.io/gysr_v2_audit_certik.pdf) | CertiK | Audit | 2021-06 | stale | Direct | contract_name | 3 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | [`0x7daab8...39c164`](./contracts/polygon-137/0x7daab81668809bd6510177254f0c56e3b739c164/) | PoolMetadata | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 2 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=33

Fork inheritance lineage and inherited audits are included when available.
