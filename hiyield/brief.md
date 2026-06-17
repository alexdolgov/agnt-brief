# Agentic Audit Brief: HiYield

## Project Overview

- Project: HiYield (`hiyield`)
- Website: [https://www.hiyield.xyz](https://www.hiyield.xyz)
- Lifecycle: active (Tier 0, 33.6% below peak)
- Generated: 2026-06-17T07:00:52.447Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: avalanche, canto, ethereum
- Contract surface: 3 unique implementations (3 raw deployments)
- DeFi Llama TVL: $2,729,501.64
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 3 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

HiYield is a single Real World Asset (RWA) protocol that tokenizes off-chain assets and enables users to earn yield from real-world financial instruments on-chain. The currently collected contract addresses should be treated as unclassified by chain unless further evidence establishes their specific roles or product relationships.

## Contract Surface Quality

- Indexed contracts: 4; live-surface contracts included: 3 (1 live, 2 unknown).
- Excluded by liveness: 1 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/0 (0.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 3
- Raw deployments: 3
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

### ❓ Unverified (3)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0xaf5baa...cfeac2` | ❓ Unverified |
| UnnamedContract | unknown | canto | n/a | `0x0e4289...4c3f72` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x847550...307b3e` | ❓ Unverified |

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
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
