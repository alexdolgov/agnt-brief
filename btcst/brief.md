# Agentic Audit Brief: BTCST

## Project Overview

- Project: BTCST (`btcst`)
- Lifecycle: active (Tier 0, 93.4% below peak)
- Generated: 2026-06-17T07:00:45.187Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: bsc
- Contract surface: 1 unique implementations (1 raw deployments)
- DeFi Llama TVL: $909,720.14
- On-chain TVL (included contracts): $263,693,624.04
- TVL by chain: Bsc $263,693,624.04

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

BTCST is the Bitcoin Standard Hashrate Token on BNB Chain/BSC, anchored at bsc:0x78650b139471520656b9e7aa7a5e9276814a38e9. It represents tokenized Bitcoin mining hashrate and is associated with staking for Bitcoin-denominated rewards. Other token contracts or balances, including 0xba2ae424d960c26247dd6c32edc70b295c744c43, should not be treated as BTCST protocol TVL or core BTCST product-line assets unless project ownership is independently verified.

## Contract Surface Quality

- Indexed contracts: 93; live-surface contracts included: 1 (1 live, 0 unknown).
- Excluded by liveness: 57 inactive, 35 singleton, 0 uninitialized.
- Deployment units: 1/20 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/1 (0.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1
- Raw deployments: 1
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $263,693,624.04
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BEP20TokenImplementation | token | bsc | unit-19940 | [`0xba2ae4...744c43`](./contracts/bsc-56/0xba2ae424d960c26247dd6c32edc70b295c744c43/) | ⚠️ Unaudited |

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
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
