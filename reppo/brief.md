# Agentic Audit Brief: Reppo

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: Reppo (`reppo`)
- Website: [https://reppo.xyz/](https://reppo.xyz/)
- Lifecycle: unknown (Tier 0, TVL trajectory)
- Generated: 2026-06-17T07:00:47.349Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: base
- Contract surface: 2 unique implementations (3 raw deployments)
- DeFi Llama TVL: $3,826,175.20
- On-chain TVL (included contracts): $19,774,880.15
- TVL by chain: Base $19,774,880.15

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Reppo is an AI training data network and data infrastructure project. Although it may be categorized under DefiLlama's "Prediction Market" label, the available verified information does not support describing it as a protocol for creating or trading real-world event outcome tokens.

## Contract Surface Quality

- Indexed contracts: 5; live-surface contracts included: 3 (3 live, 0 unknown).
- Excluded by liveness: 0 inactive, 2 singleton, 0 uninitialized.
- Deployment units: 0/1 live.
- Detected codebases: uniswap-v2
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/1 (0.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 2
- Raw deployments: 3
- Audits discovered: 3
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $19,774,880.15
- Latest audit: 2026-03 (fresh)
- Staleness: 2 fresh, 1 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of $19,774,880.15 represents exposure in a protocol with unknown activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AgentTokenV2 | unknown | base | n/a | 2 deployments: base [`0x7bab5d...8ae2db`](./contracts/base-8453/0x7bab5d2e3ebde7293888b3f4c022aaaad88ae2db/); base `0xff8104...8583d6` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | base | n/a | `0x365075...e25481` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [2025-06-25.pdf](https://github.com/Reppo-Labs/audit-reports/blob/main/2025-06-25.pdf) | unknown | Audit | 2025-06 | aging | Direct | n/a | 0 | n/a |
| [2025-07-15.pdf](https://github.com/Reppo-Labs/audit-reports/blob/main/2025-07-15.pdf) | unknown | Audit | 2025-07 | fresh | Direct | n/a | 0 | n/a |
| [2026-03-24.pdf](https://github.com/Reppo-Labs/audit-reports/blob/main/2026-03-24.pdf) | unknown | Audit | 2026-03 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2257] 2025-06-25.pdf
- [2258] 2025-07-15.pdf
- [2259] 2026-03-24.pdf

Fork inheritance lineage and inherited audits are included when available.
