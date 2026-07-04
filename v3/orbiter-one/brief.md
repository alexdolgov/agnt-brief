# Agentic Audit Brief: Orbiter One

## Project Overview

- Project: Orbiter One (`orbiter-one`)
- Website: [https://orbiter.one](https://orbiter.one)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:38.702Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d094
- Chains: moonbeam
- Contract surface: 3 unique implementations (3 raw deployments)
- DeFi Llama TVL: $108,693.87
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 3 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 3 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 4; live-surface contracts included: 3 (1 live, 2 unknown).
- Excluded by liveness: 1 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/1 (0.0%)
- Deployed-live implementations: 1 of 3 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/1
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 3
- Raw deployments: 3
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ORBToken | token | moonbeam | n/a | [`0x4eeaa1...a3c3d7`](./contracts/moonbeam-1284/0x4eeaa1fd27c50c64e77272bcdde68c28f0a3c3d7/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | moonbeam | n/a | `0x6d954e...2c9e58` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x996878...c8719c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [SmartContract_Audit_Solidproof_OrbiterOne_Incentive.pdf](https://github.com/solidproof/projects/blob/main/Orbiterone/SmartContract_Audit_Solidproof_OrbiterOne_Incentive.pdf) | unknown | Audit | 2023-04 | stale | Direct | n/a | 0 | n/a |
| [SmartContract_Audit_Solidproof_Orbiterone.pdf](https://github.com/solidproof/projects/blob/main/Orbiterone/SmartContract_Audit_Solidproof_Orbiterone.pdf) | unknown | Audit | 2023-02 | stale | Direct | n/a | 0 | n/a |

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

- [13647] SmartContract_Audit_Solidproof_OrbiterOne_Incentive.pdf
- [13648] SmartContract_Audit_Solidproof_Orbiterone.pdf

Fork inheritance lineage and inherited audits are included when available.
