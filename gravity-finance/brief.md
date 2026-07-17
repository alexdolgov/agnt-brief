# Agentic Audit Brief: Gravity Finance

## Project Overview

- Project: Gravity Finance (`gravity-finance`)
- Website: [https://gravityfinance.io/](https://gravityfinance.io/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:21.021Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-dc67
- Chains: polygon
- Contract surface: 3 unique implementations (3 raw deployments)
- DeFi Llama TVL: $87,650.21
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 3 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 3 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 4; live-surface contracts included: 3 (2 live, 1 unknown).
- Excluded by liveness: 1 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 2/2 (100.0%)
- Deployed-live implementations: 2 of 3 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/2
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 3
- Raw deployments: 3
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 2 | 100.0% | 2021-09 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| GravityToken | token | polygon | n/a | [`0x874e178a2f3f3f9d34db862453cd756e7eab0381`](./contracts/polygon-137/0x874e178a2f3f3f9d34db862453cd756e7eab0381/) | ✅ Audited |
| Locking | unknown | polygon | n/a | [`0xb45ba3f36c1c6c306f1d6f7c2d7d4564b6af168d`](./contracts/polygon-137/0xb45ba3f36c1c6c306f1d6f7c2d7d4564b6af168d/) | ✅ Audited |

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
| UnnamedContract | unknown | polygon | n/a | `0xe03ba1f7329dc24b0153a21578e3d1348322681c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Gravity.pdf](https://github.com/Tibereum/obelisk-audits/blob/main/Gravity.pdf) | unknown | Audit | 2021-09 | stale | Direct | n/a | 0 | n/a |
| [Cybersecurity_Audit_CTDSEC_Gravity_v4.pdf](https://github.com/JorgeRodriguezsec/CTDsec/blob/main/Audits/Cybersecurity_Audit_CTDSEC_Gravity_v4.pdf) | unknown | Audit | 2021-07 | stale | Direct | contract_name | 2 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=2

Zero-match audit list:

- [13208] Gravity.pdf

Fork inheritance lineage and inherited audits are included when available.
