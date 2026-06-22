# Agentic Audit Brief: Rage Trade v1

⚠️ Lifecycle status: DEAD - TVL changed 0.0% over 90 days

## Project Overview

- Project: Rage Trade v1 (`rage-trade-v1`)
- Website: [https://www.rage.trade/](https://www.rage.trade/)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-06-19T12:08:46.834Z
- Pipeline run: v2-pipeline-2026-06-19-727228-cc10
- Chains: arbitrum
- Contract surface: 2 unique implementations (2 raw deployments)
- DeFi Llama TVL: $5.99
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Rage Trade v1 is a yield optimization protocol on Arbitrum that aggregates liquidity into GMX’s GLP pool and Curve’s Tricrypto pool. It offers users automated delta-neutral strategies and vaults that manage risk and maximize returns from these underlying DeFi protocols.

### Architecture

The DnGmxJuniorVault and DnGmxSeniorVault form a two-tier vault system where the junior vault takes first-loss risk and the senior vault provides lower-risk yield. Both vaults rely on DnGmxBatchingManager and DnGmxBatchingManagerGlp for efficient deposit/withdrawal batching, DnGmxTraderHedgeStrategy for delta-neutral hedging, and DnGmxRouter for interacting with GMX; the CurveYieldStrategy operates independently for Curve pool yields.

## Contract Surface Quality

- Indexed contracts: 53; live-surface contracts included: 2 (2 live, 0 unknown).
- Excluded by liveness: 43 inactive, 8 singleton, 0 uninitialized.
- Deployment units: 2/7 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 2/2 (100.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 2
- Raw deployments: 2
- Audits discovered: 3
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-04 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 2 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 2 | 100.0% | 2022-04 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CurveYieldStrategy | core_logic | arbitrum | unit-39715 | [`0x1d4278...30a068`](./contracts/arbitrum-42161/0x1d42783e7eeacae12ebc315d1d2d0e3c6230a068/) | ✅ Audited |
| DnGmxJuniorVault | core_logic | arbitrum | unit-39719 | [`0x8478ab...5f041e`](./contracts/arbitrum-42161/0x8478ab5064ebac770ddce77e7d31d969205f041e/) | ✅ Audited |

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
| [audit.pdf (also discovered via alternate URL)](https://github.com/RageTrade/core/blob/159a94ca9fa75a7c1b3acf7191c2c87ebd746691/audits/cmichelio/audit.pdf) | unknown | Audit | 2022-04 | stale | Direct | contract_name | 2 | high |
| [DL audit link](https://drive.google.com/file/d/1rgTgB3Zs1A6YhssF4jIsVS5l0Lr8sl1r/view) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DL audit link](https://docs.google.com/document/d/1joxRpf1D-KoACf7h1xnB72YkPYKxd27oDX-9axTbIQw/edit) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=25

Zero-match audit list:

- [13735] DL audit link
- [13736] DL audit link

Fork inheritance lineage and inherited audits are included when available.
