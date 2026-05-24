# Agentic Audit Brief: Dnax

## Project Overview

- Project: Dnax (`dnax`)
- Website: [https://dnax.us/](https://dnax.us/)
- Lifecycle: active (Tier 0, 39.5% below peak)
- Generated: 2026-05-24T04:15:37.874Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: bsc
- Contract surface: 1 unique implementations (1 raw deployments)
- DeFi Llama TVL: $3,536,934.01
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dnax is a decentralized exchange (DEX) protocol on BSC that facilitates token swaps and liquidity provision. It uses a single upgradeable CarbonController contract to manage its core trading and liquidity logic.

### Architecture

The protocol consists of a single product family where the OptimizedTransparentUpgradeableProxy serves as the governance-controlled entry point, delegating all logic to the CarbonController implementation.

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
| CarbonController | governance | bsc | [`0xafc43f...a9a1b9`](./contracts/bsc-56/0xafc43fae32302d725fc4d448525c44c522a9a1b9/) | ⚠️ Unaudited |

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
| bsc | [`0xafc43f...a9a1b9`](./contracts/bsc-56/0xafc43fae32302d725fc4d448525c44c522a9a1b9/) | CarbonController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
