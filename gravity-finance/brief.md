# Agentic Audit Brief: Gravity Finance

⚠️ Lifecycle status: DEAD - TVL dropped 1.5% over 90 days

## Project Overview

- Project: Gravity Finance (`gravity-finance`)
- Website: [https://gravityfinance.io/](https://gravityfinance.io/)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-06-21T07:46:39.676Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: polygon
- Contract surface: 2 unique implementations (2 raw deployments)
- DeFi Llama TVL: $90,366.82
- On-chain TVL (included contracts): $96,917.92
- TVL by chain: Polygon $96,917.92

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 2 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 4; live-surface contracts included: 2 (1 live, 1 unknown).
- Excluded by liveness: 2 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 2/2 (100.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 2
- Raw deployments: 2
- Audits discovered: 2
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-09 (stale)
- Staleness: 0 fresh, 0 aging, 2 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 2 | 100.0% | 2021-09 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| GravityToken | token | polygon | n/a | [`0x874e17...ab0381`](./contracts/polygon-137/0x874e178a2f3f3f9d34db862453cd756e7eab0381/) | ✅ Audited |
| Locking | unknown | polygon | n/a | [`0xb45ba3...af168d`](./contracts/polygon-137/0xb45ba3f36c1c6c306f1d6f7c2d7d4564b6af168d/) | ✅ Audited |

### ⚠️ Verified + Unaudited (0)

- None

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
| [Gravity.pdf](https://github.com/Tibereum/obelisk-audits/blob/main/Gravity.pdf) | unknown | Audit | 2021-09 | stale | Direct | n/a | 0 | n/a |
| [Cybersecurity_Audit_CTDSEC_Gravity_v4.pdf](https://github.com/JorgeRodriguezsec/CTDsec/blob/main/Audits/Cybersecurity_Audit_CTDSEC_Gravity_v4.pdf) | unknown | Audit | 2021-07 | stale | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

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
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=3

Zero-match audit list:

- [13208] Gravity.pdf

Fork inheritance lineage and inherited audits are included when available.
