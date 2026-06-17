# Agentic Audit Brief: StableHodl

## Project Overview

- Project: StableHodl (`stablehodl`)
- Website: [https://stablehodl.com/](https://stablehodl.com/)
- Lifecycle: unknown
- Generated: 2026-06-17T07:00:36.922Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: n/a
- Contract surface: 0 unique implementations (0 raw deployments)
- DeFi Llama TVL: $6,960,502.12
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

StableHodl is a stablecoin yield product powered by HeLa Network. It focuses on USDT, USDC, and HLUSD deposits/staking and generates yield through funding-arbitrage-based strategies, with HLUSD-related rewards described in public data sources. The indexed contract surface includes ERC1967 proxy-based stake pool deployments across Ethereum, BSC, and Polygon, plus OTC endpoint proxy deployments on BSC and Polygon; those OTC endpoint contracts should be treated as recorded contract-surface components unless product documentation confirms they are user-facing yield endpoints.

## Contract Surface Quality

- Indexed contracts: 7; live-surface contracts included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 7 singleton, 0 uninitialized.
- Deployment units: 2/5 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/0 (0.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 0
- Raw deployments: 0
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
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
