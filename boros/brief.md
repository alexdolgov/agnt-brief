# Agentic Audit Brief: Boros

## Project Overview

- Project: Boros (`boros`)
- Website: [https://boros.pendle.finance/markets](https://boros.pendle.finance/markets)
- Lifecycle: active (Tier 0, 16.9% below peak)
- Generated: 2026-06-17T07:01:01.899Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum
- Contract surface: 2 unique implementations (2 raw deployments)
- DeFi Llama TVL: $9,749,792.92
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Boros is Pendle's Arbitrum-based interest-rate and funding-rate derivatives platform for leveraged funding-rate or yield exposure, enabling users to speculate on rate shifts or hedge perpetuals funding-rate exposure through its market hub, router, and AMM components.

### Architecture

The MarketHubEntry serves as the main entry point for user interactions, while the Router handles trade execution and liquidity aggregation. Both contracts are upgradeable proxies, indicating a shared upgrade management pattern.

## Contract Surface Quality

- Indexed contracts: 2; live-surface contracts included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 2/2 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 2/2 (100.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 2
- Raw deployments: 2
- Audits discovered: 5
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-08 (fresh)
- Staleness: 5 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: 100.0% (ChainSecurity)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 2 | 100.0% | 2025-08 |
| WatchPug | Tier 2 | 2 | 100.0% | 2025-07 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MarketHubEntry | unknown | arbitrum | unit-19872 | [`0x108080...12adad`](./contracts/arbitrum-42161/0x1080808080f145b14228443212e62447c112adad/) | ✅ Audited |
| Router | adapter | arbitrum | unit-19873 | [`0x808080...52def6`](./contracts/arbitrum-42161/0x8080808080dab95efed788a9214e400ba552def6/) | ✅ Audited |

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
| [ChainSecurity-Markets.pdf](https://github.com/pendle-finance/boros-core-public/blob/main/audits/ChainSecurity/ChainSecurity-Markets.pdf) | ChainSecurity | Audit | 2025-08 | fresh | Direct | contract_name | 1 | high |
| [ChainSecurity-Router and AMM.pdf](https://github.com/pendle-finance/boros-core-public/blob/main/audits/ChainSecurity/ChainSecurity-Router%20and%20AMM.pdf) | ChainSecurity | Audit | 2025-08 | fresh | Direct | contract_name | 1 | high |
| [Pendle-Spearbit-Security-Review-August-2025.pdf](https://github.com/pendle-finance/boros-core-public/blob/main/audits/Spearbit/Pendle-Spearbit-Security-Review-August-2025.pdf) | Spearbit | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |
| [Pendle___Boros___Market_&_MarketHub_Audit_Report_by_WatchPug_rev2.pdf](https://github.com/pendle-finance/boros-core-public/blob/main/audits/WatchPug/Pendle___Boros___Market_%26_MarketHub_Audit_Report_by_WatchPug_rev2.pdf) | WatchPug | Audit | 2025-07 | fresh | Direct | contract_name | 2 | high |
| [Pendle___Boros___Router_&_AMM_Audit_Report_by_WatchPug_rev2.pdf](https://github.com/pendle-finance/boros-core-public/blob/main/audits/WatchPug/Pendle___Boros___Router_%26_AMM_Audit_Report_by_WatchPug_rev2.pdf) | WatchPug | Audit | 2025-07 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

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
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: extraction_exact=4

Zero-match audit list:

- [2066] Pendle-Spearbit-Security-Review-August-2025.pdf
- [2068] Pendle___Boros___Router_&_AMM_Audit_Report_by_WatchPug_rev2.pdf

Fork inheritance lineage and inherited audits are included when available.
