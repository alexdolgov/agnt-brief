# Agentic Audit Brief: Umee

⚠️ Lifecycle status: DECLINING - TVL dropped 19.4% over 90 days

## Project Overview

- Project: Umee (`umee`)
- Lifecycle: declining (Tier 0, 98.8% below peak)
- Generated: 2026-05-31T11:25:55.909Z
- Pipeline run: v2-pipeline-2026-05-31-ab6275-1b32
- Chains: ethereum
- Contract surface: 1 unique implementations (1 raw deployments)
- DeFi Llama TVL: $2,510,742.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Umee is a decentralized lending protocol that enables users to supply and borrow assets across multiple blockchains. It focuses on cross-chain interoperability and capital efficiency.

### Architecture

The protocol consists of a single product family with one proxy contract that handles all lending operations. No additional infrastructure contracts are identified.

## Audit Coverage Summary

- Verified implementations audited: 0/0 (0.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 1
- Raw deployments: 1
- Audits discovered: 8
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-07 (stale)
- Staleness: 0 fresh, 0 aging, 7 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

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

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Proxy (impl: 0xcecb170a1d54985bf8d0ebb4d6d6d980cdacf992) | proxy | ethereum | `0xe296db...333ba6` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Least Authority - Umee_Peggo Orchestrator_Final Audit Report.pdf](https://github.com/umee-network/docs/blob/main/docs/.vuepress/public/audits/Least%20Authority%20-%20Umee_Peggo%20Orchestrator_Final%20Audit%20Report.pdf) | unknown | Audit | 2022-06 | stale | Direct | n/a | 0 | n/a |
| [PeckShield-Audit-Report-Umee-v1.0.pdf](https://github.com/umee-network/docs/blob/main/docs/.vuepress/public/audits/PeckShield-Audit-Report-Umee-v1.0.pdf) | PeckShield | Audit | 2022-01 | stale | Direct | n/a | 0 | n/a |
| [Trail of Bits Full Audit.pdf](https://github.com/umee-network/docs/blob/main/docs/.vuepress/public/audits/Trail%20of%20Bits%20Full%20Audit.pdf) | Trail of Bits | Audit | 2022-03 | stale | Direct | n/a | 0 | n/a |
| [UMEE_WASM_Integration_Security_Audit_Report_Halborn_Final.pdf](https://github.com/umee-network/docs/blob/main/docs/.vuepress/public/audits/UMEE_WASM_Integration_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2022-07 | stale | Direct | n/a | 0 | n/a |
| [Umee Leverage Module Audit Report_RV Inc..pdf](https://github.com/umee-network/docs/blob/main/docs/.vuepress/public/audits/Umee%20Leverage%20Module%20Audit%20Report_RV%20Inc..pdf) | unknown | Audit | 2022-06 | stale | Direct | n/a | 0 | n/a |
| [Umee_Oracle_Price_Feeder_Cosmos_Security_Audit_Report_Halborn_Final.pdf](https://github.com/umee-network/docs/blob/main/docs/.vuepress/public/audits/Umee_Oracle_Price_Feeder_Cosmos_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2022-06 | stale | Direct | n/a | 0 | n/a |
| [Umee_WebApp_Pentest_Report_Halborn_Final.pdf](https://github.com/umee-network/docs/blob/main/docs/.vuepress/public/audits/Umee_WebApp_Pentest_Report_Halborn_Final.pdf) | Halborn | Audit | 2022-03 | stale | Direct | n/a | 0 | n/a |
| [security-audits.md (also discovered via alternate URL)](https://github.com/umee-network/docs/blob/main/docs/additional-info/security-audits.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

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
- Audits with zero matched contracts: 8
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [8768] Least Authority - Umee_Peggo Orchestrator_Final Audit Report.pdf
- [8769] PeckShield-Audit-Report-Umee-v1.0.pdf
- [8770] Trail of Bits Full Audit.pdf
- [8771] UMEE_WASM_Integration_Security_Audit_Report_Halborn_Final.pdf
- [8772] Umee Leverage Module Audit Report_RV Inc..pdf
- [8773] Umee_Oracle_Price_Feeder_Cosmos_Security_Audit_Report_Halborn_Final.pdf
- [8774] Umee_WebApp_Pentest_Report_Halborn_Final.pdf
- [8779] security-audits.md

Fork inheritance lineage and inherited audits are included when available.
