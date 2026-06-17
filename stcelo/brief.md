# Agentic Audit Brief: stCELO

⚠️ Lifecycle status: UNKNOWN - TVL dropped 30.5% over 90 days

## Project Overview

- Project: stCELO (`stcelo`)
- Website: [https://stcelo.xyz/](https://stcelo.xyz/)
- Lifecycle: unknown (Tier 0, 65.7% below peak)
- Generated: 2026-06-17T07:00:46.818Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: celo
- Contract surface: 3 unique implementations (3 raw deployments)
- DeFi Llama TVL: $1,235,536.48
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 3 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

stCELO is a liquid staking protocol on Celo that allows users to stake CELO and receive a liquid staking token (stCELO) representing their staked position, while earning staking rewards. It also provides a rebasing variant (rstCELO) that automatically compounds rewards.

## Contract Surface Quality

- Indexed contracts: 142; live-surface contracts included: 3 (3 live, 0 unknown).
- Excluded by liveness: 47 inactive, 92 singleton, 0 uninitialized.
- Deployment units: 2/48 live.
- Detected codebases: none
- Dependencies extracted: 9; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 2/3 (66.7%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 3
- Raw deployments: 3
- Audits discovered: 3
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-12 (aging)
- Staleness: 0 fresh, 1 aging, 2 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of n/a represents exposure in a protocol with unknown activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Celo | Tier 2 | 1 | 33.3% | 2024-12 |
| FTI | Tier 2 | 1 | 33.3% | 2022-05 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| LockedGold | unknown | celo | unit-28471 | [`0x6cc083...03349e`](./contracts/celo-42220/0x6cc083aed9e3ebe302a6336dbc7c921c9f03349e/) | ✅ Audited |
| Manager | governance | celo | n/a | [`0x2cb8b2...00e9af`](./contracts/celo-42220/0x2cb8b2e0915629c8999e739932f6a6642600e9af/) | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Election | unknown | celo | unit-28477 | [`0x8d6677...5a7ff6`](./contracts/celo-42220/0x8d6677192144292870907e3fa8a5527fe55a7ff6/) | ⚠️ Unaudited |

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
| [Celo Audit Competition Summary Report_Nov24.pdf](https://github.com/celo-org/staked-celo/blob/master/audit/Celo%20Audit%20Competition%20Summary%20Report_Nov24.pdf) | Celo | Audit | 2024-12 | aging | Direct | contract_name | 1 | medium |
| [Celo-staking-audit-mar24(Public).pdf](https://github.com/celo-org/staked-celo/blob/master/audit/Celo-staking-audit-mar24(Public).pdf) | Celo | Audit | 2024-04 | stale | Direct | contract_name | 0 | n/a |
| [FTI_audit_stCELO.pdf](https://github.com/celo-org/staked-celo/blob/master/audit/FTI_audit_stCELO.pdf) | FTI | Audit | 2022-05 | stale | Direct | contract_name | 1 | high |

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
- Extraction confidence breakdown: high=1, medium=1
- Match method counts: extraction_exact=89

Zero-match audit list:

- [14219] Celo-staking-audit-mar24(Public).pdf

Fork inheritance lineage and inherited audits are included when available.
