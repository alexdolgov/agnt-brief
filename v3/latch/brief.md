# Agentic Audit Brief: Latch

## Project Overview

- Project: Latch (`latch`)
- Website: [https://savings.latch.io/](https://savings.latch.io/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:20.838Z
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

- Coverage of deployed-live implementations: 0/3 (0.0%)
- Deployed-live implementations: 3 of 3 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/3
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 3
- Raw deployments: 5
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DepositPool | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x7cc08f...b8f90c`](./contracts/ethereum-1/0x7cc08f23a6e8222c86a62fce3d4d252dd1b8f90c/); ethereum `0xfe606e...31a023` | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | n/a | [`0x774388...4562e7`](./contracts/ethereum-1/0x774388454c92fe33e781ab535a5e9d186a4562e7/) | ⚠️ Unaudited |
| StakingPool | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x29403b...119b95`](./contracts/ethereum-1/0x29403b1ac2b745c806e4d4988e4c1b6f4c119b95/); ethereum `0x899f88...d3245b` | ⚠️ Unaudited |

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
| [Latch - SmartSavings - SlowMist Audit Report.pdf](https://1701983824-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FIGuGSFluXTKk154QgK0V%2Fuploads%2FlaOJpIXpYQKR4iYk70Ud%2FLatch%20-%20SmartSavings%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Latch - StakingPool - SlowMist Audit Report.pdf](https://1701983824-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FIGuGSFluXTKk154QgK0V%2Fuploads%2FIoFGYLwRiZjAvu3cazuS%2FLatch%20-%20StakingPool%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [24109] Latch - SmartSavings - SlowMist Audit Report.pdf
- [24110] Latch - StakingPool - SlowMist Audit Report.pdf

Fork inheritance lineage and inherited audits are included when available.
