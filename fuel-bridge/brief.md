# Agentic Audit Brief: Fuel Bridge

## Project Overview

- Project: Fuel Bridge (`fuel-bridge`)
- Website: [https://app.fuel.network/bridge](https://app.fuel.network/bridge)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:16.559Z
- Pipeline run: v2-pipeline-2026-07-01-2b719a-2d9c
- Chains: ethereum
- Contract surface: 1 unique implementations (1 raw deployments)
- DeFi Llama TVL: $9,030,064.84
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

- Coverage of deployed-live implementations: 0/1 (0.0%)
- Deployed-live implementations: 1 of 1 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/1
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1
- Raw deployments: 1
- Audits discovered: 12 (12 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-11 (fresh)
- Audit staleness (calendar age): 1 fresh, 5 aging, 5 stale, 1 unknown
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
| Rig | unknown | ethereum | n/a | [`0x9ba9d8781ac7ce5adb8b8ec48aab521d0db5cd7e`](./contracts/ethereum-1/0x9ba9d8781ac7ce5adb8b8ec48aab521d0db5cd7e/) | ⚠️ Unaudited |

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
| [Fuel-Bridge-apr24(Public) (including Diffs).pdf](https://github.com/FuelLabs/audits/blob/master/Fuel-Bridge-apr24(Public)%20(including%20Diffs).pdf) | Unknown | Audit | 2024-04 | stale | Direct | n/a | 0 | n/a |
| [fuel-audit-september-2024(Connectors Predicates)(Public).pdf](https://github.com/FuelLabs/audits/blob/master/fuel-audit-september-2024(Connectors%20Predicates)(Public).pdf) | Unknown | Audit | 2024-09 | aging | Direct | n/a | 0 | n/a |
| [fuel-audit-september-2024(Diffs on the Bridge and State Contracts)(Public).pdf](https://github.com/FuelLabs/audits/blob/master/fuel-audit-september-2024(Diffs%20on%20the%20Bridge%20and%20State%20Contracts)(Public).pdf) | Unknown | Audit | 2024-09 | aging | Direct | n/a | 0 | n/a |
| [fuel-audit-september-2024(Points Migration Function)(Public).pdf](https://github.com/FuelLabs/audits/blob/master/fuel-audit-september-2024(Points%20Migration%20Function)(Public).pdf) | Unknown | Audit | 2024-09 | aging | Direct | n/a | 0 | n/a |
| [fuel_fast_bridge_audit_final.pdf](https://github.com/FuelLabs/audits/blob/master/fuel_fast_bridge_audit_final.pdf) | Unknown | Audit | 2025-11 | fresh | Direct | n/a | 0 | n/a |
| [audits (GitHub directory)](https://github.com/FuelLabs/audits) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ChainSecurity_Fuel_Sway_Optimizations_audit.pdf](https://github.com/FuelLabs/audits/blob/master/ChainSecurity_Fuel_Sway_Optimizations_audit.pdf) | ChainSecurity | Audit | 2024-06 | stale | Direct | n/a | 0 | n/a |
| [ChainSecurity_Fuel_Sway_Semantic_Analysis_audit.pdf](https://github.com/FuelLabs/audits/blob/master/ChainSecurity_Fuel_Sway_Semantic_Analysis_audit.pdf) | ChainSecurity | Audit | 2024-10 | aging | Direct | n/a | 0 | n/a |
| [fuel-rollup-audit-may-2024.pdf](https://github.com/FuelLabs/audits/blob/master/fuel-rollup-audit-may-2024.pdf) | Unknown | Audit | 2024-05 | stale | Direct | n/a | 0 | n/a |
| [fuel-sway-standard-audit-july24(Public) (3).pdf](https://github.com/FuelLabs/audits/blob/master/fuel-sway-standard-audit-july24(Public)%20(3).pdf) | Unknown | Audit | 2024-07 | stale | Direct | n/a | 0 | n/a |
| [fuel_core_audit_report.pdf](https://github.com/FuelLabs/audits/blob/master/fuel_core_audit_report.pdf) | Unknown | Audit | 2024-10 | aging | Direct | n/a | 0 | n/a |
| [fuel_vm_audit_report.pdf](https://github.com/FuelLabs/audits/blob/master/fuel_vm_audit_report.pdf) | Unknown | Audit | 2024-06 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x9ba9d8781ac7ce5adb8b8ec48aab521d0db5cd7e`](./contracts/ethereum-1/0x9ba9d8781ac7ce5adb8b8ec48aab521d0db5cd7e/) | Rig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
- Audits with zero matched contracts: 12
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2056] Fuel-Bridge-apr24(Public) (including Diffs).pdf
- [2057] fuel-audit-september-2024(Connectors Predicates)(Public).pdf
- [2058] fuel-audit-september-2024(Diffs on the Bridge and State Contracts)(Public).pdf
- [2059] fuel-audit-september-2024(Points Migration Function)(Public).pdf
- [2062] fuel_fast_bridge_audit_final.pdf
- [15177] audits (GitHub directory)
- [15178] ChainSecurity_Fuel_Sway_Optimizations_audit.pdf
- [15179] ChainSecurity_Fuel_Sway_Semantic_Analysis_audit.pdf
- [15183] fuel-rollup-audit-may-2024.pdf
- [15184] fuel-sway-standard-audit-july24(Public) (3).pdf
- [15185] fuel_core_audit_report.pdf
- [15187] fuel_vm_audit_report.pdf

Fork inheritance lineage and inherited audits are included when available.
