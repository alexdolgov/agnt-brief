# Agentic Audit Brief: BitU Protocol

## Project Overview

- Project: BitU Protocol (`bitu-protocol`)
- Website: [https://www.bitu.io](https://www.bitu.io)
- Lifecycle: active (Tier 0, 44.1% below peak)
- Generated: 2026-07-04T14:53:07.525Z
- Pipeline run: v2-pipeline-2026-07-01-2b719a-0293
- Chains: bsc
- Contract surface: 3 unique implementations (3 raw deployments)
- DeFi Llama TVL: $19,547,798.50
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 3 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 3 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 5; live-surface contracts included: 3 (3 live, 0 unknown).
- Excluded by liveness: 2 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 2/2 (100.0%)
- Deployed-live implementations: 3 of 3 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/3
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 3
- Raw deployments: 3
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: 100.0% (SlowMist)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SlowMist | Tier 1 | 2 | 66.7% | 2024-04 |
| unknown | Tier 2 | 2 | 66.7% | 2024-05 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BITU | unknown | bsc | n/a | [`0x654a32...88e6bd`](./contracts/bsc-56/0x654a32542a84bea7d2c2c1a1ed1aaaf26888e6bd/) | ✅ Audited |
| BitUMinting | unknown | bsc | n/a | [`0xa581b5...116f18`](./contracts/bsc-56/0xa581b5b3d007dab450943749e29a677a0d116f18/) | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BEP20USDT | token | bsc | n/a | [`0x55d398...197955`](./contracts/bsc-56/0x55d398326f99059ff775485246999027b3197955/) | ⚠️ Unaudited |

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
| [spaces/j4FiwL05RDG9vbiK6wKb/uploads/5zJ9iSaosjkSWbY1Alkz/SlowMist Audit Report - BitU527.pdf](https://216194945-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fj4FiwL05RDG9vbiK6wKb%2Fuploads%2F5zJ9iSaosjkSWbY1Alkz%2FSlowMist%20Audit%20Report%20-%20BitU527.pdf) | SlowMist | Audit | 2024-04 | stale | Direct | contract_name | 2 | n/a |
| [spaces/j4FiwL05RDG9vbiK6wKb/uploads/x0qHqp82jMYKIQkLrwRp/BitU_audit_report_2024-05-27.pdf](https://216194945-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fj4FiwL05RDG9vbiK6wKb%2Fuploads%2Fx0qHqp82jMYKIQkLrwRp%2FBitU_audit_report_2024-05-27.pdf) | unknown | Audit | 2024-05 | stale | Direct | contract_name | 2 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=4

Fork inheritance lineage and inherited audits are included when available.
