# Agentic Audit Brief: Resupply

## Project Overview

- Project: Resupply (`resupply`)
- Website: [https://resupply.fi/](https://resupply.fi/)
- Lifecycle: active (Tier 0, 73.6% below peak)
- Generated: 2026-06-10T20:59:11.325Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: ethereum
- Contract surface: 1 unique implementations (1 raw deployments)
- DeFi Llama TVL: $41,835,801.02
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Resupply is an Ethereum DeFi protocol centered on reUSD, a stablecoin-backed lending and rehypothecation system. Users can deposit supported collateral such as crvUSD- and frxUSD-related assets into markets to borrow reUSD, while the protocol routes collateral and liquidity through operators and related lending infrastructure. The protocol also includes governance/staking, insurance pool, liquidation/redemption, treasury and registry components that coordinate markets, risk management and system accounting.

## Audit Coverage Summary

- Verified implementations audited: 1/1 (100.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1
- Raw deployments: 1
- Audits discovered: 8
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-10 (fresh)
- Staleness: 4 fresh, 2 aging, 0 stale, 2 unknown
- Tier 1 coverage: 100.0% (ChainSecurity)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 1 | 100.0% | 2025-10 |
| yAudit | Tier 2 | 1 | 100.0% | 2024-12 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ResupplyRegistry | registry | ethereum | [`0x101010...1e7d94`](./contracts/ethereum-1/0x10101010e0c3171d894b71b3400668af311e7d94/) | ✅ Audited |

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
| [ChainSecurity_Resupply_CurveLend_Operators_audit.pdf](https://github.com/resupplyfi/resupply/blob/main/audits/ChainSecurity_Resupply_CurveLend_Operators_audit.pdf) | ChainSecurity | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [ChainSecurity_Resupply_Resupply_audit.pdf](https://github.com/resupplyfi/resupply/blob/main/audits/ChainSecurity_Resupply_Resupply_audit.pdf) | ChainSecurity | Audit | 2025-02 | aging | Direct | contract_name | 1 | high |
| [ChainSecurity_Resupply_audit_v2.pdf](https://github.com/resupplyfi/resupply/blob/main/audits/ChainSecurity_Resupply_audit_v2.pdf) | ChainSecurity | Audit | 2025-08 | fresh | Direct | contract_name | 1 | high |
| [ChainSecurity_Resupply_sreUSD_audit.pdf](https://github.com/resupplyfi/resupply/blob/main/audits/ChainSecurity_Resupply_sreUSD_audit.pdf) | ChainSecurity | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |
| [Electisec-Resupply-CurveLendOperator.pdf](https://github.com/resupplyfi/resupply/blob/main/audits/Electisec-Resupply-CurveLendOperator.pdf) | unknown | Audit | 2025-09 | fresh | Direct | n/a | 0 | n/a |
| [Electisec-Resupply-Inflation-Fixes.pdf](https://github.com/resupplyfi/resupply/blob/main/audits/Electisec-Resupply-Inflation-Fixes.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Electisec-Resupply-sreUSD.pdf](https://github.com/resupplyfi/resupply/blob/main/audits/Electisec-Resupply-sreUSD.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [rsup_yaudit_report.pdf](https://github.com/resupplyfi/resupply/blob/main/audits/rsup_yaudit_report.pdf) | yAudit | Audit | 2024-12 | aging | Direct | contract_name | 1 | high |

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
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: extraction_exact=3

Zero-match audit list:

- [5822] ChainSecurity_Resupply_CurveLend_Operators_audit.pdf
- [5825] ChainSecurity_Resupply_sreUSD_audit.pdf
- [5826] Electisec-Resupply-CurveLendOperator.pdf
- [5827] Electisec-Resupply-Inflation-Fixes.pdf
- [5828] Electisec-Resupply-sreUSD.pdf

Fork inheritance lineage and inherited audits are included when available.
