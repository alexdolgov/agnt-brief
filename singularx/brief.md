# Agentic Audit Brief: SingularX

## Project Overview

- Project: SingularX (`singularx`)
- Lifecycle: active (Tier 0, 56.3% below peak)
- Generated: 2026-06-14T00:15:24.455Z
- Pipeline run: v2-pipeline-2026-06-13-e4a349-24d8
- Chains: ethereum
- Contract surface: 2 unique implementations (3 raw deployments)
- DeFi Llama TVL: $1,424,168.62
- On-chain TVL (included contracts): $21,448,655.86
- TVL by chain: Ethereum $21,448,655.86

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

SingularX is an Ethereum peer-to-peer decentralized exchange (DEX). No verified project-owned documentation supports treating Arbitrum token bridge or gateway contracts as part of the SingularX protocol surface.

## Audit Coverage Summary

- Verified implementations audited: 0/2 (0.0%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 2
- Raw deployments: 3
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $21,448,655.86
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| L1ArbitrumToken | token | ethereum | 2 deployments: ethereum [`0xad0c36...3c6fc7`](./contracts/ethereum-1/0xad0c361ef902a7d9851ca7dcc85535da2d3c6fc7/); ethereum `0xb50721...234ad1` | ⚠️ Unaudited |
| Dex | unknown | ethereum | [`0x9a2d16...566f80`](./contracts/ethereum-1/0x9a2d163ab40f88c625fd475e807bbc3556566f80/) | ⚠️ Unaudited |

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
| ethereum | [`0x9a2d16...566f80`](./contracts/ethereum-1/0x9a2d163ab40f88c625fd475e807bbc3556566f80/) | Dex | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
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
