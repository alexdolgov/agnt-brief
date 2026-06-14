# Agentic Audit Brief: TxFlow

## Project Overview

- Project: TxFlow (`txflow`)
- Website: [https://txflow.com/](https://txflow.com/)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-06-14T06:57:12.783Z
- Pipeline run: v2-pipeline-2026-06-14-ec5560-9bd7
- Chains: arbitrum
- Contract surface: 1 unique implementations (1 raw deployments)
- DeFi Llama TVL: $4,123,570.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

TxFlow is an open Layer 1 blockchain built around TIP Liquidity Standards, enabling shared on-chain liquidity, settlement, and market data without bridging. The currently tracked Arbitrum Bridge2 contract should be treated as a limited DefiLlama bridge/TVL adapter surface, not as evidence that the whole project is primarily a cross-chain bridge or perpetuals platform.

## Audit Coverage Summary

- Verified implementations audited: 0/1 (0.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1
- Raw deployments: 1
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

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Bridge2 | operational_periphery | arbitrum | [`0xcde3f9...c24565`](./contracts/arbitrum-42161/0xcde3f99bcb4c91e19124e41730489eaefec24565/) | ⚠️ Unaudited |

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
| arbitrum | [`0xcde3f9...c24565`](./contracts/arbitrum-42161/0xcde3f99bcb4c91e19124e41730489eaefec24565/) | Bridge2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
