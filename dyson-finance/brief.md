# Agentic Audit Brief: Dyson Finance

⚠️ Lifecycle status: UNKNOWN - TVL dropped 9.3% over 90 days

## Project Overview

- Project: Dyson Finance (`dyson-finance`)
- Website: [https://dyson.finance/](https://dyson.finance/)
- Lifecycle: unknown (Tier 0, 87.2% below peak)
- Generated: 2026-06-21T07:38:18.123Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: blast, polygon-zkevm
- Contract surface: 5 unique implementations (5 raw deployments)
- DeFi Llama TVL: $80,630.40
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dyson Finance is a decentralized exchange protocol that enables users to trade tokens and provide liquidity across multiple chains. It uses factory contracts to deploy and manage trading pairs or pools, facilitating permissionless market creation.

### Architecture

The two factory contracts likely serve as the primary infrastructure for deploying trading pairs, while the unnamed contracts may act as pool implementations or routers that interact with the factories. All contracts within the family share the same deployer clusters, indicating a unified codebase.

## Contract Surface Quality

- Indexed contracts: 13; live-surface contracts included: 5 (3 live, 2 unknown).
- Excluded by liveness: 8 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 1; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 3/3 (100.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 5
- Raw deployments: 5
- Audits discovered: 3
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-11 (stale)
- Staleness: 0 fresh, 0 aging, 2 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of n/a represents exposure in a protocol with unknown activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 3 | 100.0% | 2023-11 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DYSON | unknown | blast | n/a | [`0x9cbd81...d1159c`](./contracts/blast-81457/0x9cbd81b43ba263ca894178366cfb89a246d1159c/) | ✅ Audited |
| Router | adapter | blast | n/a | [`0xada6e6...a73bdc`](./contracts/blast-81457/0xada6e69781399990d42becb1a9427955ffa73bdc/) | ✅ Audited |
| sDYSON | unknown | blast | n/a | [`0x8813b3...70c088`](./contracts/blast-81457/0x8813b3eeb279a43ac89e502e6fbe0ec89170c088/) | ✅ Audited |

### ⚠️ Verified + Unaudited (0)

- None

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | polygon-zkevm | n/a | `0x51a0d4...357d1d` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0x9cbd81...d1159c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Dyson Finance Audit Report_2023.pdf](https://github.com/DysonFinance/dyson-audit-reports/blob/main/Dyson%20Finance%20Audit%20Report_2023.pdf) | unknown | Audit | 2023-11 | stale | Direct | contract_name | 3 | high |
| [Dyson Finance Audit - October '22.pdf](https://github.com/DysonFinance/dyson-audit-reports/blob/main/Dyson%20Finance%20Audit%20-%20October%20'22.pdf) | unknown | Audit | 2022-10 | stale | Direct | contract_name | 2 | high |
| [Audit Reports](https://github.com/DysonFinance/dyson-audit-reports) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=8

Zero-match audit list:

- [13071] Audit Reports

Fork inheritance lineage and inherited audits are included when available.
