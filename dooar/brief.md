# Agentic Audit Brief: DOOAR

## Project Overview

- Project: DOOAR (`dooar`)
- Website: [https://beta.dooar.com/swap](https://beta.dooar.com/swap)
- Lifecycle: active (Tier 0, 60.8% below peak)
- Generated: 2026-05-23T17:50:29.510Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: bsc
- Contract surface: 2 unique implementations (2 raw deployments)
- DeFi Llama TVL: $5,141,127.69
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

DOOAR is a decentralized exchange (DEX) protocol on BSC that enables users to swap tokens and provide liquidity through automated market maker (AMM) pools.

### Architecture

The single product family contains the core factory contract that deploys and manages liquidity pools, with no additional supporting contracts identified.

## Audit Coverage Summary

- Verified implementations audited: 0/2 (0.0%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 2
- Raw deployments: 2
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

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| DooarSwapV2Factory | registry | bsc | [`0x1e895b...476f3c`](./contracts/bsc-56/0x1e895bfe59e3a5103e8b7da3897d1f2391476f3c/) | ⚠️ Unaudited |
| DooarSwapV2Router02 | adapter | bsc | [`0x53e0e5...b9879f`](./contracts/bsc-56/0x53e0e51b5ed9202110d7ecd637a4581db8b9879f/) | ⚠️ Unaudited |

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
| bsc | [`0x1e895b...476f3c`](./contracts/bsc-56/0x1e895bfe59e3a5103e8b7da3897d1f2391476f3c/) | DooarSwapV2Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x53e0e5...b9879f`](./contracts/bsc-56/0x53e0e51b5ed9202110d7ecd637a4581db8b9879f/) | DooarSwapV2Router02 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
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
