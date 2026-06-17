# Agentic Audit Brief: Depth

⚠️ Lifecycle status: DECLINING - TVL changed 1.4% over 90 days

## Project Overview

- Project: Depth (`depth`)
- Lifecycle: declining (Tier 0, 99.7% below peak)
- Generated: 2026-06-17T20:23:25.746Z
- Pipeline run: v2-pipeline-2026-06-17-2a130c-6f9b
- Chains: bsc, heco
- Contract surface: 4 unique implementations (4 raw deployments)
- DeFi Llama TVL: $1,158,345.40
- On-chain TVL (included contracts): $342,709.15
- TVL by chain: Bsc $342,709.15

## Project Description

Depth is a stablecoin-focused asset management and stablecoin swap protocol. Current DefiLlama data attributes its TVL to Binance, with Heco TVL at zero; the listed Heco address is not sufficient to represent the full current contract surface and should not be described as the sole core protocol contract without further verification.

### Architecture

The protocol consists of a single product family with one contract, so there are no inter-family relationships or shared infrastructure.

## Contract Surface Quality

- Indexed contracts: 10; live-surface contracts included: 4 (3 live, 1 unknown).
- Excluded by liveness: 6 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 5; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/3 (0.0%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 4
- Raw deployments: 4
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $342,709.15
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $342,709.15 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| dCowVault | core_logic | bsc | n/a | [`0x0b28a5...ccefc0`](./contracts/bsc-56/0x0b28a55dbbd6c5ddd4d1d7157361e9d6d0ccefc0/) | ⚠️ Unaudited |
| dDepVenusVault | core_logic | bsc | n/a | [`0x2e128e...88e1a6`](./contracts/bsc-56/0x2e128eb2ee787428307a7b246d02c1801788e1a6/) | ⚠️ Unaudited |
| dDepAlphaVault | core_logic | bsc | n/a | [`0x024f05...1fb69d`](./contracts/bsc-56/0x024f05c70f203fb77f27b00422534cc33e1fb69d/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | heco | n/a | `0x48c859...895c27` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x0b28a5...ccefc0`](./contracts/bsc-56/0x0b28a55dbbd6c5ddd4d1d7157361e9d6d0ccefc0/) | dCowVault | core_logic | $336,621.28 | Verified native implementation with $336,621.28 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2e128e...88e1a6`](./contracts/bsc-56/0x2e128eb2ee787428307a7b246d02c1801788e1a6/) | dDepVenusVault | core_logic | $5,329.98 | Verified native implementation with $5,329.98 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x024f05...1fb69d`](./contracts/bsc-56/0x024f05c70f203fb77f27b00422534cc33e1fb69d/) | dDepAlphaVault | core_logic | $757.89 | Verified native implementation with $757.89 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
