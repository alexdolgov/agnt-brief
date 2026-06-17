# Agentic Audit Brief: Pay Protocol

⚠️ Lifecycle status: DECLINING - TVL dropped 55.4% over 90 days

## Project Overview

- Project: Pay Protocol (`pay-protocol`)
- Website: [https://payprotocol.network](https://payprotocol.network)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-17T20:24:07.830Z
- Pipeline run: v2-pipeline-2026-06-17-2a130c-6f9b
- Chains: ethereum
- Contract surface: 8 unique implementations (8 raw deployments)
- DeFi Llama TVL: $277,351.60
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Pay Protocol is a non-custodial crypto payment and wallet infrastructure product for B2C businesses. It provides self-custodial checkout and wallet-as-a-service infrastructure, keyless smart-contract wallets, APIs, gas-optimized sweeping, and system-wide multi-signature controls across multiple supported networks. The available evidence does not support describing token swaps as a core product or scoping the project as Ethereum-only.

### Architecture

All contracts are deployed by the same address and belong to a single product family, indicating a tightly integrated system. The supporting contracts likely provide shared infrastructure such as access control or configuration for the core payment contracts.

## Contract Surface Quality

- Indexed contracts: 8; live-surface contracts included: 8 (1 live, 7 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/0 (0.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 8
- Unique implementations: 8
- Raw deployments: 8
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

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

### ❓ Unverified (8)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x3f44b6...c1a820` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x56768a...8de220` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5dff63...053e4c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x65594f...2a850e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa0000a...ec164f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaaa035...3874c2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd16be5...244ad3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdc60c8...174431` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
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
