# Agentic Audit Brief: Orbiter One

⚠️ Lifecycle status: DEAD - TVL dropped 18.1% over 90 days

## Project Overview

- Project: Orbiter One (`orbiter-one`)
- Website: [https://orbiter.one](https://orbiter.one)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-06-21T07:38:22.244Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: moonbeam
- Contract surface: 1 unique implementations (1 raw deployments)
- DeFi Llama TVL: $77,011.82
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 1 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 3; live-surface contracts included: 1 (1 live, 0 unknown).
- Excluded by liveness: 2 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/1 (0.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1
- Raw deployments: 1
- Audits discovered: 2
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-04 (stale)
- Staleness: 0 fresh, 0 aging, 2 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

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

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [SmartContract_Audit_Solidproof_OrbiterOne_Incentive.pdf](https://github.com/solidproof/projects/blob/main/Orbiterone/SmartContract_Audit_Solidproof_OrbiterOne_Incentive.pdf) | unknown | Audit | 2023-04 | stale | Direct | n/a | 0 | n/a |
| [SmartContract_Audit_Solidproof_Orbiterone.pdf](https://github.com/solidproof/projects/blob/main/Orbiterone/SmartContract_Audit_Solidproof_Orbiterone.pdf) | unknown | Audit | 2023-02 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| moonbeam | [`0x4eeaa1...a3c3d7`](./contracts/moonbeam-1284/0x4eeaa1fd27c50c64e77272bcdde68c28f0a3c3d7/) | ORBToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

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
