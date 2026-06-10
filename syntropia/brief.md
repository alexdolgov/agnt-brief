# Agentic Audit Brief: Syntropia

## Project Overview

- Project: Syntropia (`syntropia`)
- Website: [https://syntropia.ai/](https://syntropia.ai/)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-06-10T20:59:17.158Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: ethereum
- Contract surface: 1 unique implementations (3 raw deployments)
- DeFi Llama TVL: $3,662,459.78
- On-chain TVL (included contracts): $3,659,411.44
- TVL by chain: Ethereum $3,659,411.44

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Syntropia is an Ethereum-based DeFi yield protocol focused on risk-adjusted stablecoin yield, including DeFi market-making yield and synUSD tranche products. Its deployed surface consists of OptinProxy proxy contracts pointing to a shared Vault implementation, with advertised protection layers such as circuit breakers and anomaly detection to help manage strategy and market risk.

## Audit Coverage Summary

- Verified implementations audited: 0/1 (0.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1
- Raw deployments: 3
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

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Vault | core_logic | ethereum | 3 deployments: ethereum [`0x1b2cb7...ae6765`](./contracts/ethereum-1/0x1b2cb79a4564206f53ba80b4d780f251b4ae6765/); ethereum `0x8df3de...f036d5`; ethereum `0xd17049...95cfd8` | ⚠️ Unaudited |

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
| ethereum | [`0x1b2cb7...ae6765`](./contracts/ethereum-1/0x1b2cb79a4564206f53ba80b4d780f251b4ae6765/) | Vault | core_logic | $3,659,411.44 | Verified native implementation with $3,659,411.44 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
