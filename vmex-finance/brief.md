# Agentic Audit Brief: VMEX Finance

## Project Overview

- Project: VMEX Finance (`vmex-finance`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:10.049Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-4c3e
- Chains: optimism
- Contract surface: 3 unique implementations (3 raw deployments)
- DeFi Llama TVL: $3,178.95
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 3 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 3 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 6; live-surface contracts included: 3 (1 live, 2 unknown).
- Excluded by liveness: 3 inactive, 0 singleton, 0 uninitialized.
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
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
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
| VMEXToken | token | optimism | n/a | [`0x6d2e5b8841a6aa5f0f973436357f75d3eeb93312`](./contracts/optimism-10/0x6d2e5b8841a6aa5f0f973436357f75d3eeb93312/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | optimism | n/a | `0xaa1df23be6c980b21a5570824191d18ccedbca47` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xb00fa0c62175f20b49d67f995c255b7bf40bb3d8` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [spaces/rX09jW895gw7i8ra9T8j/uploads/FYqdThUExsUSROjP1V2f/06-2023-VMEX_yAudit_Reports.pdf](https://1688608737-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FrX09jW895gw7i8ra9T8j%2Fuploads%2FFYqdThUExsUSROjP1V2f%2F06-2023-VMEX_yAudit_Reports.pdf) | yAudit | Audit | 2023-01 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| optimism | [`0x6d2e5b8841a6aa5f0f973436357f75d3eeb93312`](./contracts/optimism-10/0x6d2e5b8841a6aa5f0f973436357f75d3eeb93312/) | VMEXToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [14114] spaces/rX09jW895gw7i8ra9T8j/uploads/FYqdThUExsUSROjP1V2f/06-2023-VMEX_yAudit_Reports.pdf

Fork inheritance lineage and inherited audits are included when available.
