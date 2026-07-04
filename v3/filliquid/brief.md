# Agentic Audit Brief: FILLiquid

## Project Overview

- Project: FILLiquid (`filliquid`)
- Website: [https://dapp.filliquid.io](https://dapp.filliquid.io)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:51.527Z
- Pipeline run: v2-2026-07-03-59f8b9
- Chains: bsc
- Contract surface: 1 unique implementations (1 raw deployments)
- DeFi Llama TVL: $197,041.20
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 1 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 1; live-surface contracts included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
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
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 1 unknown
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
| InterchainToken | unknown | bsc | n/a | [`0x2f3e41...668d6b`](./contracts/bsc-56/0x2f3e415f56ba07b444bc68ed037377de1a668d6b/) | ⚠️ Unaudited |

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
| [FILLiquid_audit_report_2024-04-26.pdf](https://cert-api.salusec.io/api/v1/salus/contract/certificate/full/2024/FILLiquid_audit_report_2024-04-26.pdf) | Salus | Audit | 2024-04 | stale | Direct | n/a | 0 | n/a |
| [skynet.certik.com/projects/filliquid](https://skynet.certik.com/projects/filliquid) | CertiK | Audit | 2024-07 | stale | Direct | n/a | 0 | n/a |
| [REP-final-20240426T031044Z.pdf](https://4014563253-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FdhOs5OllpdOOyrijMlP5%2Fuploads%2FpH8LG58Cj0rPnRHZHU3E%2FREP-final-20240426T031044Z.pdf) | REP | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Rendered PDF capture](https://4014563253-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FdhOs5OllpdOOyrijMlP5%2Fuploads%2FVdb8iF9KFZrU79j1Ce6R%2FFILLiquid_audit_report_2024-04-26.pdf) | ChainSecurity | Audit | 2024-04 | stale | Direct | n/a | 0 | n/a |

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
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [21387] FILLiquid_audit_report_2024-04-26.pdf
- [21388] skynet.certik.com/projects/filliquid
- [24101] REP-final-20240426T031044Z.pdf
- [24102] Rendered PDF capture

Fork inheritance lineage and inherited audits are included when available.
