# Agentic Audit Brief: Colend Protocol

## Project Overview

- Project: Colend Protocol (`colend-protocol`)
- Website: [https://www.colend.xyz](https://www.colend.xyz)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:10.359Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-bd47
- Chains: ethereum
- Contract surface: 4 unique implementations (4 raw deployments)
- DeFi Llama TVL: $2,881,396.06
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Colend Protocol is a BTCFi lending and borrowing liquidity market on Core, enabling users to supply assets to earn yield and borrow against collateral. The protocol includes CLND-related governance and yield-boost features for participants in its lending markets.

### Architecture

No relationship narrative (skeletal or single-family surface).

## Contract Surface Quality

- Indexed contracts: 4; live-surface contracts included: 4 (0 live, 4 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/0 (0.0%)
- Deployed-live implementations: 0 of 4 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 4
- Raw deployments: 4
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-12 (fresh)
- Audit staleness (calendar age): 1 fresh, 2 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (0)

- None

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x567af8...9076e3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x71b2c1...c8108f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8e43df...746e3d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc3f120...28efa1` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Certik Audit Apr 23rd 2024.pdf](https://github.com/Colend-Protocol/audits/blob/main/Certik%20Audit%20Apr%2023rd%202024.pdf) | CertiK | Audit | 2024-01 | stale | Direct | n/a | 0 | n/a |
| [Colend_Zokyo_audit_report_Jan7th_2025.pdf](https://github.com/Colend-Protocol/audits/blob/main/Colend_Zokyo_audit_report_Jan7th_2025.pdf) | Zokyo | Audit | 2025-12 | fresh | Direct | n/a | 0 | n/a |
| [Halborn Audit 04-15-2024.pdf](https://github.com/Colend-Protocol/audits/blob/main/Halborn%20Audit%2004-15-2024.pdf) | Halborn | Audit | 2024-01 | stale | Direct | n/a | 0 | n/a |
| [Verichains Public Audit Report - CoLend - v1.0 .pdf](https://github.com/Colend-Protocol/audits/blob/main/Verichains%20Public%20Audit%20Report%20-%20CoLend%20-%20v1.0%20.pdf) | Verichains | Audit | 2024-01 | stale | Direct | n/a | 0 | n/a |
| [Verichains Public Audit Report - CoLend Loop Core - v1.1.pdf](https://github.com/Colend-Protocol/audits/blob/main/Verichains%20Public%20Audit%20Report%20-%20CoLend%20Loop%20Core%20-%20v1.1.pdf) | Verichains | Audit | 2025-01 | aging | Direct | n/a | 0 | n/a |
| [Verichains Public Audit Report - CoLend Token - v1.0.pdf](https://github.com/Colend-Protocol/audits/blob/main/Verichains%20Public%20Audit%20Report%20-%20CoLend%20Token%20-%20v1.0.pdf) | Verichains | Audit | 2024-01 | stale | Direct | n/a | 0 | n/a |
| [Verichains Public Audit Report - CoLend Yield Boost & Subscription - v1.0.pdf](https://github.com/Colend-Protocol/audits/blob/main/Verichains%20Public%20Audit%20Report%20-%20CoLend%20Yield%20Boost%20%26%20Subscription%20-%20v1.0.pdf) | Verichains | Audit | 2025-01 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2598] Certik Audit Apr 23rd 2024.pdf
- [2599] Colend_Zokyo_audit_report_Jan7th_2025.pdf
- [2600] Halborn Audit 04-15-2024.pdf
- [2601] Verichains Public Audit Report - CoLend - v1.0 .pdf
- [2602] Verichains Public Audit Report - CoLend Loop Core - v1.1.pdf
- [2603] Verichains Public Audit Report - CoLend Token - v1.0.pdf
- [2604] Verichains Public Audit Report - CoLend Yield Boost & Subscription - v1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
