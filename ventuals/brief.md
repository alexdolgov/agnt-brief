# Agentic Audit Brief: Ventuals

## Project Overview

- Project: Ventuals (`ventuals`)
- Website: [https://ventuals.com/trade](https://ventuals.com/trade)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-06-17T07:01:01.857Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: hyperliquid
- Contract surface: 4 unique implementations (4 raw deployments)
- DeFi Llama TVL: $28,431,743.17
- On-chain TVL (included contracts): $273.74
- TVL by chain: Hyperliquid $273.74

## Project Description

Ventuals is a decentralized trading protocol/interface for creating and trading perpetual futures markets on private-company valuations using Hyperliquid HIP-3 infrastructure. The four tracked HyperEVM proxy contracts should be treated as the currently mapped on-chain contract surface only, not as evidence that Ventuals is primarily a staking or rewards protocol.

### Architecture

The StakingVaultManager oversees multiple StakingVault instances, which hold user deposits and distribute rewards. The RoleRegistry provides access control for administrative functions across the system, and VHYPE likely serves as the reward or staking token.

## Contract Surface Quality

- Indexed contracts: 4; live-surface contracts included: 4 (4 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 4/4 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 4/4 (100.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 4
- Raw deployments: 4
- Audits discovered: 2
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-10 (fresh)
- Staleness: 2 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Nethermind | Tier 2 | 4 | 100.0% | 2025-10 |
| Zenith | Tier 2 | 3 | 75.0% | 2025-10 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| StakingVault | core_logic | hyperliquid | unit-32789 | [`0x888888...c3beda`](./contracts/hyperliquid-999/0x8888888192a4a0593c13532ba48449fc24c3beda/) | ✅ Audited |
| StakingVaultManager | core_logic | hyperliquid | unit-32788 | [`0x888888...05b20c`](./contracts/hyperliquid-999/0x88888880793f89ce85777ff2e0e2d366bf05b20c/) | ✅ Audited |
| RoleRegistry | registry | hyperliquid | unit-32790 | [`0x888888...d77930`](./contracts/hyperliquid-999/0x8888888f0651a534011d7ad277c302e7d2d77930/) | ✅ Audited |
| VHYPE | unknown | hyperliquid | unit-32791 | [`0x888888...c216fa`](./contracts/hyperliquid-999/0x8888888fdaac0e7cf8c6523c8955bf7954c216fa/) | ✅ Audited |

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
| [20251008_nethermind.pdf](https://github.com/ventuals/ventuals-contracts/blob/main/docs/audits/20251008_nethermind.pdf) | Nethermind | Audit | 2025-10 | fresh | Direct | contract_name | 4 | high |
| [20251014_zenith.pdf](https://github.com/ventuals/ventuals-contracts/blob/main/docs/audits/20251014_zenith.pdf) | Zenith | Audit | 2025-10 | fresh | Direct | contract_name | 3 | high |

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
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=7

Fork inheritance lineage and inherited audits are included when available.
