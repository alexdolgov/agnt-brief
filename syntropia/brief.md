# Agentic Audit Brief: Syntropia

## Project Overview

- Project: Syntropia (`syntropia`)
- Website: [https://syntropia.ai/](https://syntropia.ai/)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-06-17T07:01:00.916Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum
- Contract surface: 2 unique implementations (4 raw deployments)
- DeFi Llama TVL: $4,174,930.02
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Syntropia is an Ethereum-based DeFi yield protocol focused on risk-adjusted stablecoin yield, including DeFi market-making yield and synUSD tranche products. Its deployed surface consists of OptinProxy proxy contracts pointing to a shared Vault implementation, with advertised protection layers such as circuit breakers and anomaly detection to help manage strategy and market risk.

### Architecture

All three OptinProxy contracts share the same Vault implementation, indicating a single product family with multiple instances. No separate infrastructure contracts are identified, suggesting a self-contained vault design.

## Contract Surface Quality

- Indexed contracts: 9; live-surface contracts included: 4 (1 live, 3 unknown).
- Excluded by liveness: 1 inactive, 4 singleton, 0 uninitialized.
- Deployment units: 1/3 live.
- Detected codebases: none
- Dependencies extracted: 1; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/2 (0.0%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 2
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

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DelayProxyAdmin | governance | ethereum | n/a | 3 deployments: ethereum [`0x358f9f...334542`](./contracts/ethereum-1/0x358f9ff9eee76bb6fade2a6f5d495e649b334542/); ethereum `0x78ac58...0f2cf4`; ethereum `0xdf2410...f96d24` | ⚠️ Unaudited |
| OptinProxyFactory | registry | ethereum | unit-32615 | [`0x8d6f54...60f9b1`](./contracts/ethereum-1/0x8d6f5479b14348186fae9bc7e636e947c260f9b1/) | ⚠️ Unaudited |

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
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
