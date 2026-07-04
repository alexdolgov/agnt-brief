# Agentic Audit Brief: GOLDSTATION

## Project Overview

- Project: GOLDSTATION (`goldstation`)
- Website: [https://goldstation.io](https://goldstation.io)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:19.873Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-dc67
- Chains: avalanche, klaytn
- Contract surface: 2 unique implementations (5 raw deployments)
- DeFi Llama TVL: $1,748,120.46
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 2 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 5; live-surface contracts included: 5 (0 live, 5 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/0 (0.0%)
- Deployed-live implementations: 0 of 2 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 2
- Raw deployments: 5
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-03 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
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

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | klaytn | n/a | 4 deployments: klaytn `0x347e5c...62ae88`; klaytn `0x4836cc...0cd95e`; klaytn `0x4d55b0...dc8954`; klaytn `0x6569b1...47dc76` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1b27d7...64281d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [SlowMist Audit Report - GoldCollateralManager.pdf](https://github.com/CrederLabs/audit/blob/main/GoldCollateralManager/SlowMist%20Audit%20Report%20-%20GoldCollateralManager.pdf) | SlowMist | Audit | 2023-08 | stale | Direct | n/a | 0 | n/a |
| [Certik_Audit_Report_Goldstation_V3.pdf](https://github.com/CrederLabs/audit/blob/main/GoldstationV3/Certik_Audit_Report_Goldstation_V3.pdf) | CertiK | Audit | 2024-12 | aging | Direct | n/a | 0 | n/a |
| [Certik_Audit_Report_STAN_Token.pdf](https://github.com/CrederLabs/audit/blob/main/StanToken/Certik_Audit_Report_STAN_Token.pdf) | CertiK | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |

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

- [2860] SlowMist Audit Report - GoldCollateralManager.pdf
- [2861] Certik_Audit_Report_Goldstation_V3.pdf
- [2862] Certik_Audit_Report_STAN_Token.pdf

Fork inheritance lineage and inherited audits are included when available.
