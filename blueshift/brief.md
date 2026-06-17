# Agentic Audit Brief: Blueshift

## Project Overview

- Project: Blueshift (`blueshift`)
- Website: [https://blueshift.fi/](https://blueshift.fi/)
- Lifecycle: active (Tier 0, 67.1% below peak)
- Generated: 2026-06-17T07:00:37.467Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: kava, polygon
- Contract surface: 3 unique implementations (3 raw deployments)
- DeFi Llama TVL: $3,449,608.43
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 3 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Blueshift is a cross-chain portfolio-managed decentralized exchange, liquidity management, and crypto asset management protocol. Its product surface includes token swaps, liquidity portfolios, portfolio and asset-management functionality, farming and staking, analytics, and bridge/cross-chain functionality across active ecosystems including BOB, Milkomeda/Milkomeda A1, Polygon, and Kava.

## Contract Surface Quality

- Indexed contracts: 28; live-surface contracts included: 3 (1 live, 2 unknown).
- Excluded by liveness: 15 inactive, 10 singleton, 0 uninitialized.
- Deployment units: 0/5 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/0 (0.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 3
- Raw deployments: 3
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-05 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
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

### ❓ Unverified (3)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | polygon | n/a | `0xadbd83...4e8fb5` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0x493996...2577b1` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0x7a6091...6a77e1` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://skynet.certik.com/projects/blueshift) | CertiK | Audit | 2022-05 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2594] DL audit link

Fork inheritance lineage and inherited audits are included when available.
