# Agentic Audit Brief: Pegasusdollar

## Project Overview

- Project: Pegasusdollar (`pegasusdollar`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:43.020Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d094
- Chains: cronos
- Contract surface: 1 unique implementations (7 raw deployments)
- DeFi Llama TVL: $14,009.05
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 1 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 7; live-surface contracts included: 7 (0 live, 7 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/0 (0.0%)
- Deployed-live implementations: 0 of 1 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 1
- Raw deployments: 7
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
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

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | cronos | n/a | 7 deployments: cronos `0x43713f13a350d104319126c13cd7402822a44f6b`; cronos `0x7614a4ceb3acdfcd4841d7bd76c30e7a401e83cd`; cronos `0x8efbaa6080412d7832025b03b9239d0be1e2aa3b`; cronos `0x97749c9b61f878a880dfe312d2594ae07aed7656`; cronos `0xb8df27c687c6af9afe845a2afad2d01e199f4878`; cronos `0xbbd4650eea85f9dbd83d6fb2a6e8b3d8f32fe1c5`; cronos `0xdd403db142a320261858840103b907c2486240c6` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-PegasusDollar-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-PegasusDollar-v1.0.pdf) | PeckShield | Audit | 2022-03 | stale | Direct | n/a | 0 | n/a |
| [SmartContract_Audit_Solidproof_PegasusDollar.pdf](https://github.com/solidproof/projects/blob/main/PegasusDollar/SmartContract_Audit_Solidproof_PegasusDollar.pdf) | Solidproof | Audit | 2022-03 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13662] PeckShield-Audit-Report-PegasusDollar-v1.0.pdf
- [15992] SmartContract_Audit_Solidproof_PegasusDollar.pdf

Fork inheritance lineage and inherited audits are included when available.
