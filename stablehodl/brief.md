# Agentic Audit Brief: StableHodl

## Project Overview

- Project: StableHodl (`stablehodl`)
- Website: [https://stablehodl.com/](https://stablehodl.com/)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-06-13T01:41:26.975Z
- Pipeline run: v2-pipeline-2026-06-13-546062-d5d2
- Chains: bsc, ethereum, polygon
- Contract surface: 1 unique implementations (7 raw deployments)
- DeFi Llama TVL: $6,960,502.12
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

StableHodl is a stablecoin yield product powered by HeLa Network. It focuses on USDT, USDC, and HLUSD deposits/staking and generates yield through funding-arbitrage-based strategies, with HLUSD-related rewards described in public data sources. The indexed contract surface includes ERC1967 proxy-based stake pool deployments across Ethereum, BSC, and Polygon, plus OTC endpoint proxy deployments on BSC and Polygon; those OTC endpoint contracts should be treated as recorded contract-surface components unless product documentation confirms they are user-facing yield endpoints.

## Audit Coverage Summary

- Verified implementations audited: 0/1 (0.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1
- Raw deployments: 7
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
| stake_pool | core_logic | ethereum | 7 deployments: ethereum [`0x109d30...a47544`](./contracts/ethereum-1/0x109d3042a3c682f94107b3818e93b3ade2a47544/); ethereum `0xc34df6...53e470`; bsc [`0x109d30...a47544`](./contracts/bsc-56/0x109d3042a3c682f94107b3818e93b3ade2a47544/); bsc `0x528d46...fe64aa`; bsc `0xc34df6...53e470`; polygon [`0x109d30...a47544`](./contracts/polygon-137/0x109d3042a3c682f94107b3818e93b3ade2a47544/); polygon `0xc34df6...53e470` | ⚠️ Unaudited |

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
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
