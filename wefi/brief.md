# Agentic Audit Brief: wefi

⚠️ Lifecycle status: UNKNOWN - TVL dropped 8.4% over 90 days

## Project Overview

- Project: wefi (`wefi`)
- Website: [https://wefi.xyz](https://wefi.xyz)
- Lifecycle: unknown (Tier 0, 82.7% below peak)
- Generated: 2026-06-21T11:40:11.042Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: polygon
- Contract surface: 2 unique implementations (2 raw deployments)
- DeFi Llama TVL: $292,376.85
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 2 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 2; live-surface contracts included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 1; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/1 (0.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 2
- Raw deployments: 2
- Audits discovered: 3
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-02 (stale)
- Staleness: 0 fresh, 0 aging, 2 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of n/a represents exposure in a protocol with unknown activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| WeFi | unknown | polygon | n/a | [`0xffa188...7b6a52`](./contracts/polygon-137/0xffa188493c15dfaf2c206c97d8633377847b6a52/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | polygon | n/a | `0x03ad1b...f6ce50` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-Paxo-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Paxo-v1.0.pdf) | PeckShield | Audit | 2023-02 | stale | Direct | n/a | 0 | n/a |
| [Paxo Smart Contract Audit Report - QuillAudits.pdf (also discovered via alternate URL)](https://github.com/Quillhash/QuillAudit_Reports/blob/master/Paxo%20Smart%20Contract%20Audit%20Report%20-%20QuillAudits.pdf) | unknown | Audit | 2022-03 | stale | Direct | n/a | 0 | n/a |
| [**Peckshield Audit Report**](https://docs.google.com/document/d/1uNrOZqCMzTxA_BM6PxMxugvjDgTOFCFL966bim28zS0/edit?usp=sharing) | PeckShield | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | [`0xffa188...7b6a52`](./contracts/polygon-137/0xffa188493c15dfaf2c206c97d8633377847b6a52/) | WeFi | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [14123] PeckShield-Audit-Report-Paxo-v1.0.pdf
- [14124] Paxo Smart Contract Audit Report - QuillAudits.pdf
- [14125] **Peckshield Audit Report**

Fork inheritance lineage and inherited audits are included when available.
