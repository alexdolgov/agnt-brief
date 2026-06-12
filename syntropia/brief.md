# Agentic Audit Brief: Syntropia

## Project Overview

- Project: Syntropia (`syntropia`)
- Website: [https://syntropia.ai/](https://syntropia.ai/)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-06-12T05:35:30.749Z
- Pipeline run: v2-pipeline-2026-06-12-c31370-dba8
- Chains: ethereum
- Contract surface: 4 unique implementations (9 raw deployments)
- DeFi Llama TVL: $4,174,930.02
- On-chain TVL (included contracts): $3,659,411.44
- TVL by chain: Ethereum $3,659,411.44

## Project Description

Syntropia is an Ethereum-based DeFi yield protocol focused on risk-adjusted stablecoin yield, including DeFi market-making yield and synUSD tranche products. Its deployed surface consists of OptinProxy proxy contracts pointing to a shared Vault implementation, with advertised protection layers such as circuit breakers and anomaly detection to help manage strategy and market risk.

### Architecture

All three OptinProxy contracts share the same Vault implementation, indicating a single product family with multiple instances. No separate infrastructure contracts are identified, suggesting a self-contained vault design.

## Audit Coverage Summary

- Verified implementations audited: 0/4 (0.0%)
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 4
- Raw deployments: 9
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $3,659,411.44
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Vault | core_logic | ethereum | 4 deployments: ethereum [`0x1b2cb7...ae6765`](./contracts/ethereum-1/0x1b2cb79a4564206f53ba80b4d780f251b4ae6765/); ethereum `0x8df3de...f036d5`; ethereum `0xd17049...95cfd8`; ethereum `0xe50554...d3dedf` | ⚠️ Unaudited |
| DelayProxyAdmin | governance | ethereum | 3 deployments: ethereum [`0x358f9f...334542`](./contracts/ethereum-1/0x358f9ff9eee76bb6fade2a6f5d495e649b334542/); ethereum `0x78ac58...0f2cf4`; ethereum `0xdf2410...f96d24` | ⚠️ Unaudited |
| OptinProxyFactory | registry | ethereum | [`0x8d6f54...60f9b1`](./contracts/ethereum-1/0x8d6f5479b14348186fae9bc7e636e947c260f9b1/) | ⚠️ Unaudited |
| ProtocolRegistry | registry | ethereum | [`0x6da4d1...33e27c`](./contracts/ethereum-1/0x6da4d1859ba1d02d095d2246142cdad52233e27c/) | ⚠️ Unaudited |

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
