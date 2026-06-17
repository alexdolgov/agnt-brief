# Agentic Audit Brief: Fuel Bridge

⚠️ Lifecycle status: DECLINING - TVL dropped 14.6% over 90 days

## Project Overview

- Project: Fuel Bridge (`fuel-bridge`)
- Website: [https://app.fuel.network/bridge](https://app.fuel.network/bridge)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-17T07:00:41.654Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum
- Contract surface: 2 unique implementations (2 raw deployments)
- DeFi Llama TVL: $9,336,546.73
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Fuel Bridge is an Ethereum-Fuel Ignition bridge for asset transfers and cross-chain messaging. Staking, reward distribution, sequencing, and Icon Link-related contracts should be treated as a separate related surface unless independently documented as part of Fuel Bridge.

## Contract Surface Quality

- Indexed contracts: 44; live-surface contracts included: 2 (2 live, 0 unknown).
- Excluded by liveness: 18 inactive, 24 singleton, 0 uninitialized.
- Deployment units: 2/14 live.
- Detected codebases: none
- Dependencies extracted: 2; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 1/2 (50.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 2
- Raw deployments: 2
- Audits discovered: 5
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-11 (fresh)
- Staleness: 1 fresh, 3 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Unknown | Tier 2 | 1 | 50.0% | 2025-11 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| FuelChainState | unknown | ethereum | unit-25305 | [`0xf3d20d...90f130`](./contracts/ethereum-1/0xf3d20db1d16a4d0ad2f280a5e594ff3c7790f130/) | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Rig | unknown | ethereum | unit-25298 | [`0x9ba9d8...b5cd7e`](./contracts/ethereum-1/0x9ba9d8781ac7ce5adb8b8ec48aab521d0db5cd7e/) | ⚠️ Unaudited |

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
| [Fuel-Bridge-apr24(Public) (including Diffs).pdf](https://github.com/FuelLabs/audits/blob/master/Fuel-Bridge-apr24(Public)%20(including%20Diffs).pdf) | Unknown | Audit | 2024-04 | stale | Direct | contract_name | 1 | high |
| [fuel-audit-september-2024(Connectors Predicates)(Public).pdf](https://github.com/FuelLabs/audits/blob/master/fuel-audit-september-2024(Connectors%20Predicates)(Public).pdf) | Unknown | Audit | 2024-09 | aging | Direct | n/a | 0 | n/a |
| [fuel-audit-september-2024(Diffs on the Bridge and State Contracts)(Public).pdf](https://github.com/FuelLabs/audits/blob/master/fuel-audit-september-2024(Diffs%20on%20the%20Bridge%20and%20State%20Contracts)(Public).pdf) | Unknown | Audit | 2024-09 | aging | Direct | contract_name | 1 | high |
| [fuel-audit-september-2024(Points Migration Function)(Public).pdf](https://github.com/FuelLabs/audits/blob/master/fuel-audit-september-2024(Points%20Migration%20Function)(Public).pdf) | Unknown | Audit | 2024-09 | aging | Direct | contract_name | 0 | n/a |
| [fuel_fast_bridge_audit_final.pdf](https://github.com/FuelLabs/audits/blob/master/fuel_fast_bridge_audit_final.pdf) | Unknown | Audit | 2025-11 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=23

Zero-match audit list:

- [2057] fuel-audit-september-2024(Connectors Predicates)(Public).pdf
- [2059] fuel-audit-september-2024(Points Migration Function)(Public).pdf
- [2062] fuel_fast_bridge_audit_final.pdf

Fork inheritance lineage and inherited audits are included when available.
