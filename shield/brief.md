# Agentic Audit Brief: Shield

⚠️ Lifecycle status: DEAD - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: Shield (`shield`)
- Website: [https://shieldex.io](https://shieldex.io)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-06-19T17:11:11.477Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: bsc
- Contract surface: 2 unique implementations (2 raw deployments)
- DeFi Llama TVL: $0.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 2 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 131; live-surface contracts included: 2 (2 live, 0 unknown).
- Excluded by liveness: 129 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Unverified dependencies: 2/4.

## Audit Coverage Summary

- Verified implementations audited: 0/1 (0.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 2
- Raw deployments: 2
- Audits discovered: 6
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-10 (stale)
- Staleness: 0 fresh, 0 aging, 6 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ShieldEX | unknown | bsc | n/a | [`0x1ef6a7...95a084`](./contracts/bsc-56/0x1ef6a7e2c966fb7c5403efefde38338b1a95a084/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | bsc | n/a | `0x515040...a5f9e3` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Smart Contract Security Audit Report - Shield.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report/Smart%20Contract%20Security%20Audit%20Report%20-%20Shield.pdf) | yAudit | Audit | 2021-04 | stale | Direct | n/a | 0 | n/a |
| [PeckShield-Audit-Report-Shield-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Shield-v1.0.pdf) | PeckShield | Audit | 2021-05 | stale | Direct | n/a | 0 | n/a |
| [*PeckShield*](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Shield-v1.0.1.pdf) | PeckShield | Audit | 2021-11 | stale | Direct | contract_name | 0 | n/a |
| [*Certik*](https://skynet.certik.com/projects/shield-protocol) | CertiK | Audit | 2022-07 | stale | Direct | n/a | 0 | n/a |
| [*Secure3\_SSVault*](https://github.com/Secure3Audit/Shield_SSVault_Audit_Contest/blob/main/audit_report/Secure3_Shield_SSVault_security_audit_report.pdf) | Secure3 | Audit | 2022-09 | stale | Direct | n/a | 0 | n/a |
| [Shield_mvault_final_Secure3_Audit_Report.pdf](https://github.com/Secure3Audit/Shield_MVault_Audit_Contest/blob/main/audit_report/Shield_mvault_final_Secure3_Audit_Report.pdf) | Secure3 | Audit | 2022-10 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x1ef6a7...95a084`](./contracts/bsc-56/0x1ef6a7e2c966fb7c5403efefde38338b1a95a084/) | ShieldEX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: extraction_exact=2

Zero-match audit list:

- [13829] Smart Contract Security Audit Report - Shield.pdf
- [13830] PeckShield-Audit-Report-Shield-v1.0.pdf
- [13831] *PeckShield*
- [13832] *Certik*
- [13833] *Secure3\_SSVault*
- [13834] Shield_mvault_final_Secure3_Audit_Report.pdf

Fork inheritance lineage and inherited audits are included when available.
