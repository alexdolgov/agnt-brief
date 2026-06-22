# Agentic Audit Brief: VII Finance

⚠️ Lifecycle status: UNKNOWN - TVL changed 342.7% over 90 days

## Project Overview

- Project: VII Finance (`vii-finance`)
- Website: [https://www.vii.finance/](https://www.vii.finance/)
- Lifecycle: unknown (Tier 0, 33.2% below peak)
- Generated: 2026-06-19T22:46:20.674Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: ethereum, unichain
- Contract surface: 2 unique implementations (3 raw deployments)
- DeFi Llama TVL: $12,478.95
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

VII Finance is a leveraged farming protocol that enables users to amplify yield from liquidity provision. It wraps Uniswap V4 positions to facilitate leveraged strategies, likely through borrowing or derivative mechanisms.

### Architecture

The VII Finance contract likely coordinates user deposits and leverage, while the UniswapV4WrapperFactory instances create wrapped LP tokens that can be used as collateral or to manage leveraged positions. Both families share the same deployer cluster, indicating a unified development origin.

## Contract Surface Quality

- Indexed contracts: 3; live-surface contracts included: 3 (3 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 1/1 (100.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 2
- Raw deployments: 3
- Audits discovered: 1
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-07 (fresh)
- Staleness: 1 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: 100.0% (Cyfrin)
- Note: This protocol is classified as [unknown]. ASD of n/a represents exposure in a protocol with unknown activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Cyfrin | Tier 1 | 1 | 100.0% | 2025-07 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UniswapV4WrapperFactory | registry | ethereum | n/a | 2 deployments: ethereum [`0x77774a...93f777`](./contracts/ethereum-1/0x77774abb84eeabae05ce00d8a1b83dfc6e93f777/); unichain `0x777765...ce2777` | ✅ Audited |

### ⚠️ Verified + Unaudited (0)

- None

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x12e74f...8bb394` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [2025-07-15-cyfrin-vii-v2.0.pdf](https://github.com/Cyfrin/cyfrin-audit-reports/blob/main/reports/2025-07-15-cyfrin-vii-v2.0.pdf) | Cyfrin | Audit | 2025-07 | fresh | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=2

Fork inheritance lineage and inherited audits are included when available.
