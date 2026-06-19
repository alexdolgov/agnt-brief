# Agentic Audit Brief: TruStake

⚠️ Lifecycle status: DECLINING - TVL dropped 69.8% over 90 days

## Project Overview

- Project: TruStake (`trufin-protocol`)
- Website: [https://app.truyields.com](https://app.truyields.com)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-19T06:16:40.460Z
- Pipeline run: v2-pipeline-2026-06-19-32b207-fda2
- Chains: ethereum
- Contract surface: 2 unique implementations (2 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

TruYields is an institutional onchain yield platform with product lines including TruCore, TruStake, and TruVault. TruStake includes liquid staking products such as MATIC/POL staking, while TruVault and related products cover additional yield strategies. The Ethereum contracts listed in this brief represent only a subset of the broader TruYields platform and should not be treated as the complete multi-chain protocol surface.

## Contract Surface Quality

- Indexed contracts: 24; live-surface contracts included: 2 (2 live, 0 unknown).
- Excluded by liveness: 11 inactive, 11 singleton, 0 uninitialized.
- Deployment units: 1/6 live.
- Detected codebases: none
- Dependencies extracted: 1; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 1/2 (50.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 2
- Raw deployments: 2
- Audits discovered: 13
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-05 (fresh)
- Staleness: 3 fresh, 3 aging, 7 stale, 0 unknown
- Tier 1 coverage: 50.0% (OpenZeppelin)
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Nethermind | Tier 2 | 1 | 50.0% | 2025-09 |
| OpenZeppelin | Tier 1 | 1 | 50.0% | 2023-07 |
| Zokyo | Tier 2 | 1 | 50.0% | 2023-05 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| TruStakeMATICv2 | unknown | ethereum | unit-39400 | [`0xa43a7c...8987ed`](./contracts/ethereum-1/0xa43a7c62d56df036c187e1966c03e2799d8987ed/) | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| PausableModule | unknown | ethereum | n/a | [`0xe6dcd7...84c246`](./contracts/ethereum-1/0xe6dcd72cc14e1b1a6c4d8a3c4b7d9f3bcf84c246/) | ⚠️ Unaudited |

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
| [Download PDF](https://truyields.com/audits/TruYields-audit-report-Solana-TruRLP-vaults.pdf) | Unknown | Audit | 2026-02 | fresh | Direct | n/a | 0 | n/a |
| [Download PDF](https://truyields.com/audits/TruPOL-Nethermind-audit-september-2025.pdf) | Nethermind | Audit | 2025-09 | fresh | Direct | contract_name | 0 | n/a |
| [Download PDF](https://truyields.com/audits/TruFin_Solana_Staker_Solana_Program_Security_Assessment_Report_Halborn_Final.pdf) | Halborn | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [Download PDF](https://truyields.com/audits/TruINJ-Zellic-Nov24.pdf) | Zellic | Audit | 2024-11 | aging | Direct | n/a | 0 | n/a |
| [Download PDF](https://truyields.com/audits/TruNEAR-BlockSec-Sep24.pdf) | BlockSec | Audit | 2024-09 | aging | Direct | n/a | 0 | n/a |
| [TruFin Audit Report OtterSec-May24.pdf](https://truyields.com/audits/TruFin%20Audit%20Report%20OtterSec-May24.pdf) | OtterSec | Audit | 2024-05 | stale | Direct | n/a | 0 | n/a |
| [Download PDF](https://truyields.com/audits/Trufin%20Audit%20Report%20MoveBit-Apr24.pdf) | MoveBit | Audit | 2024-04 | stale | Direct | contract_name | 0 | n/a |
| [Download PDF](https://truyields.com/audits/TruMATIC-Nethermind-Dec23.pdf) | Nethermind | Audit | 2023-12 | stale | Direct | contract_name | 1 | high |
| [TruMATIC-OpenZeppelin-Audit-Report.pdf](https://truyields.com/audits/TruMATIC-OpenZeppelin-Audit-Report.pdf) | OpenZeppelin | Audit | 2023-07 | stale | Direct | contract_name | 1 | high |
| [Download PDF](https://truyields.com/audits/TruMATIC-Nethermind-Jun23.pdf) | Nethermind | Audit | 2023-06 | stale | Direct | contract_name | 1 | high |
| [Download PDF](https://truyields.com/audits/TruMATIC-ZokyoAudit-May23.pdf) | Zokyo | Audit | 2023-05 | stale | Direct | contract_name | 1 | high |
| [Download PDF](https://truyields.com/audits/Trufin-audit-report-20230309.pdf) | yAudit | Audit | 2023-03 | stale | Direct | contract_name | 0 | n/a |
| [View audit](https://www.halborn.com/audits/truyields/smart-contract-assessment-954e48) | Halborn | Audit | 2026-05 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xe6dcd7...84c246`](./contracts/ethereum-1/0xe6dcd72cc14e1b1a6c4d8a3c4b7d9f3bcf84c246/) | PausableModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 9
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=4
- Match method counts: extraction_exact=59

Zero-match audit list:

- [2211] Download PDF
- [2212] Download PDF
- [2213] Download PDF
- [2214] Download PDF
- [2215] Download PDF
- [2216] TruFin Audit Report OtterSec-May24.pdf
- [2217] Download PDF
- [2222] Download PDF
- [15576] View audit

Fork inheritance lineage and inherited audits are included when available.
