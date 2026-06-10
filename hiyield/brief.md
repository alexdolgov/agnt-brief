# Agentic Audit Brief: HiYield

## Project Overview

- Project: HiYield (`hiyield`)
- Website: [https://www.hiyield.xyz](https://www.hiyield.xyz)
- Lifecycle: active (Tier 0, 33.6% below peak)
- Generated: 2026-06-10T23:50:21.811Z
- Pipeline run: v2-pipeline-2026-06-10-5b3b54-08cb
- Chains: avalanche, canto, ethereum
- Contract surface: 4 unique implementations (4 raw deployments)
- DeFi Llama TVL: $2,727,183.81
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

HiYield is a single Real World Asset (RWA) protocol that tokenizes off-chain assets and enables users to earn yield from real-world financial instruments on-chain. The currently collected contract addresses should be treated as unclassified by chain unless further evidence establishes their specific roles or product relationships.

### Architecture

The HiYield family represents the core protocol logic, while the Mainnet family contains the deployed instances on Ethereum mainnet, sharing the same deployer cluster and likely interacting through shared token standards or oracle infrastructure.

## Audit Coverage Summary

- Verified implementations audited: 0/0 (0.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 4
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

### ⚠️ Verified + Unaudited (0)

- None

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0xaf5baa...cfeac2` | ❓ Unverified |
| UnnamedContract | unknown | canto | `0x0e4289...4c3f72` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x847550...307b3e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xce6050...59e660` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
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
