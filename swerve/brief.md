# Agentic Audit Brief: Swerve

⚠️ Lifecycle status: DEAD - TVL dropped 0.0% over 90 days

## Project Overview

- Project: Swerve (`swerve`)
- Lifecycle: dead (Tier 0, 99.2% below peak)
- Generated: 2026-06-21T11:38:02.287Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: ethereum
- Contract surface: 2 unique implementations (5 raw deployments)
- DeFi Llama TVL: $305,212.54
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 2 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 17; live-surface contracts included: 5 (5 live, 0 unknown).
- Excluded by liveness: 12 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 1/2 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 1/2 (50.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 2
- Raw deployments: 5
- Audits discovered: 1
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2020-09 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 50.0% | 2020-09 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Vyper_contract | unknown | ethereum | unit-42380 | [`0x329239...f9f88d`](./contracts/ethereum-1/0x329239599afb305da0a2ec69c58f8a6697f9f88d/) | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Vyper_contract | unknown | ethereum | n/a | 4 deployments: ethereum [`0x2c988c...f67974`](./contracts/ethereum-1/0x2c988c3974ad7e604e276ae0294a7228def67974/); ethereum `0x77c6e4...83a059`; ethereum `0xb4d0c9...6b4bfa`; ethereum `0xb8baa0...cbd433` | ⚠️ Unaudited |

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
| [Swerve Finance Audit - by Cryptic Labs v3.pdf](https://github.com/crypticlabs/swerve-audit-report/blob/master/Swerve%20Finance%20Audit%20-%20by%20Cryptic%20Labs%20v3.pdf) | unknown | Audit | 2020-09 | stale | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x2c988c...f67974`](./contracts/ethereum-1/0x2c988c3974ad7e604e276ae0294a7228def67974/) | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=5

Fork inheritance lineage and inherited audits are included when available.
