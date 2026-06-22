# Agentic Audit Brief: VMEX Finance

⚠️ Lifecycle status: DECLINING - TVL dropped 5.3% over 90 days

## Project Overview

- Project: VMEX Finance (`vmex-finance`)
- Lifecycle: declining (Tier 0, 99.2% below peak)
- Generated: 2026-06-19T19:22:08.016Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: optimism
- Contract surface: 1 unique implementations (1 raw deployments)
- DeFi Llama TVL: $3,244.42
- On-chain TVL (included contracts): $29,360.00
- TVL by chain: Optimism $29,360.00

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 1 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 6; live-surface contracts included: 1 (1 live, 0 unknown).
- Excluded by liveness: 5 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/2 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/1 (0.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1
- Raw deployments: 1
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $29,360.00
- Latest audit: 2023 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $29,360.00 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| VMEXToken | token | optimism | n/a | [`0x6d2e5b...b93312`](./contracts/optimism-10/0x6d2e5b8841a6aa5f0f973436357f75d3eeb93312/) | ⚠️ Unaudited |

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
| [DL audit link](https://1688608737-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FrX09jW895gw7i8ra9T8j%2Fuploads%2FFYqdThUExsUSROjP1V2f%2F06-2023-VMEX_yAudit_Reports.pdf) | yAudit | Audit | 2023 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| optimism | [`0x6d2e5b...b93312`](./contracts/optimism-10/0x6d2e5b8841a6aa5f0f973436357f75d3eeb93312/) | VMEXToken | token | $29,360.00 | Verified native implementation with $29,360.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |

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
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [14114] DL audit link

Fork inheritance lineage and inherited audits are included when available.
