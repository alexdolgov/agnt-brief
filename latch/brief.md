# Agentic Audit Brief: Latch

## Project Overview

- Project: Latch (`latch`)
- Website: [https://savings.latch.io/](https://savings.latch.io/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:29.409Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-16da
- Chains: ethereum
- Contract surface: 3 unique implementations (5 raw deployments)
- DeFi Llama TVL: $1,552,461.96
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 3 project-authored contract(s) across 1 chain(s); built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 5; live-surface contracts included: 5 (5 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 2/2 (100.0%)
- Deployed-live implementations: 3 of 3 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/3
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 3
- Raw deployments: 5
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-12 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 2 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 100.0% (SlowMist)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SlowMist | Tier 1 | 2 | 66.7% | 2024-12 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DepositPool | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x7cc08f23a6e8222c86a62fce3d4d252dd1b8f90c`](./contracts/ethereum-1/0x7cc08f23a6e8222c86a62fce3d4d252dd1b8f90c/); ethereum `0xfe606eec8eb8e6ad8e8654968a15650f5331a023` | ✅ Audited |
| StakingPool | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x29403b1ac2b745c806e4d4988e4c1b6f4c119b95`](./contracts/ethereum-1/0x29403b1ac2b745c806e4d4988e4c1b6f4c119b95/); ethereum `0x899f88b7c34a01ed0eea2bdb0952bd271ad3245b` | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| GnosisSafe | governance | ethereum | n/a | [`0x774388454c92fe33e781ab535a5e9d186a4562e7`](./contracts/ethereum-1/0x774388454c92fe33e781ab535a5e9d186a4562e7/) | ⚠️ Unaudited |

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
| [Latch - SmartSavings - SlowMist Audit Report.pdf](https://1701983824-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FIGuGSFluXTKk154QgK0V%2Fuploads%2FlaOJpIXpYQKR4iYk70Ud%2FLatch%20-%20SmartSavings%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2024-09 | aging | Direct | contract_name | 2 | high |
| [Latch - StakingPool - SlowMist Audit Report.pdf](https://1701983824-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FIGuGSFluXTKk154QgK0V%2Fuploads%2FIoFGYLwRiZjAvu3cazuS%2FLatch%20-%20StakingPool%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2024-12 | aging | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=4

Fork inheritance lineage and inherited audits are included when available.
