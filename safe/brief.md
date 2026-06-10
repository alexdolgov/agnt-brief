# Agentic Audit Brief: Safe

## Project Overview

- Project: Safe (`safe`)
- Website: [https://safe.global/](https://safe.global/)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-06-10T20:59:12.198Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: ethereum
- Contract surface: 1 unique implementations (1 raw deployments)
- DeFi Llama TVL: $99,267,282.27
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Safe is a smart-account and multisig wallet platform for decentralized custody and transaction execution. Its core architecture consists of Safe smart-account singleton/mastercopy contracts, proxy factories and deployment infrastructure, fallback handlers, libraries, modules, guards, and related production contracts. The currently captured VestingPool contract is only a peripheral vesting-related contract and does not represent Safe's core project architecture.

## Audit Coverage Summary

- Verified implementations audited: 0/1 (0.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1
- Raw deployments: 1
- Audits discovered: 18
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-07 (fresh)
- Staleness: 1 fresh, 3 aging, 7 stale, 7 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| VestingPool | operational_periphery | ethereum | [`0x96b71e...1ea4ff`](./contracts/ethereum-1/0x96b71e2551915d98d22c448b040a3bc4801ea4ff/) | ⚠️ Unaudited |

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
| [2025.07 - Certora Audit.pdf](https://github.com/safe-global/safe-wallet-monorepo/blob/dev/apps/mobile/docs/audits/2025.07%20-%20Certora%20Audit.pdf) | unknown | Audit | 2025-07 | fresh | Direct | n/a | 0 | n/a |
| [Gnosis_Safe_Audit_Report.pdf](https://github.com/safe-global/safe-smart-account/blob/main/docs/Gnosis_Safe_Audit_Report.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Gnosis_Safe_Audit_Report_1_1_0.pdf](https://github.com/safe-global/safe-smart-account/blob/main/docs/Gnosis_Safe_Audit_Report_1_1_0.pdf) | unknown | Audit | 2019-11 | stale | Direct | n/a | 0 | n/a |
| [Gnosis_Safe_Audit_Report_1_1_1.pdf](https://github.com/safe-global/safe-smart-account/blob/main/docs/Gnosis_Safe_Audit_Report_1_1_1.pdf) | unknown | Audit | 2019-11 | stale | Direct | n/a | 0 | n/a |
| [Gnosis_Safe_Audit_Report_1_2_0.pdf](https://github.com/safe-global/safe-smart-account/blob/main/docs/Gnosis_Safe_Audit_Report_1_2_0.pdf) | unknown | Audit | 2020-05 | stale | Direct | n/a | 0 | n/a |
| [Gnosis_Safe_Audit_Report_1_3_0_Final.pdf](https://github.com/safe-global/safe-smart-account/blob/main/docs/Gnosis_Safe_Audit_Report_1_3_0_Final.pdf) | unknown | Audit | 2021-05 | stale | Direct | n/a | 0 | n/a |
| [Gnosis_Safe_Audit_Report_1_3_0_Initial.pdf](https://github.com/safe-global/safe-smart-account/blob/main/docs/Gnosis_Safe_Audit_Report_1_3_0_Initial.pdf) | unknown | Audit | 2021-04 | stale | Direct | n/a | 0 | n/a |
| [Gnosis_Safe_Formal_Verification_Report_1_0_0.pdf](https://github.com/safe-global/safe-smart-account/blob/main/docs/Gnosis_Safe_Formal_Verification_Report_1_0_0.pdf) | unknown | Audit | 2019-02 | stale | Direct | n/a | 0 | n/a |
| [Gnosis_Safe_Symbolic_Execution.pdf](https://github.com/safe-global/safe-smart-account/blob/main/docs/Gnosis_Safe_Symbolic_Execution.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Safe_Audit_Report_1_4_0.pdf](https://github.com/safe-global/safe-smart-account/blob/main/docs/Safe_Audit_Report_1_4_0.pdf) | unknown | Audit | 2023-03 | stale | Direct | n/a | 0 | n/a |
| [Safe_Audit_Report_1_5_0_Ackee.pdf](https://github.com/safe-global/safe-smart-account/blob/main/docs/Safe_Audit_Report_1_5_0_Ackee.pdf) | Ackee Blockchain | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |
| [Safe_Audit_Report_1_5_0_Certora.pdf](https://github.com/safe-global/safe-smart-account/blob/main/docs/Safe_Audit_Report_1_5_0_Certora.pdf) | unknown | Audit | 2025-01 | aging | Direct | n/a | 0 | n/a |
| [Safe_Library_Contracts_Audit_Report_1_4_1.pdf](https://github.com/safe-global/safe-smart-account/blob/main/docs/Safe_Library_Contracts_Audit_Report_1_4_1.pdf) | unknown | Audit | 2024-08 | aging | Direct | n/a | 0 | n/a |
| [audit_1_1_1.md](https://github.com/safe-global/safe-smart-account/blob/main/docs/audit_1_1_1.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [audit_1_2_0.md](https://github.com/safe-global/safe-smart-account/blob/main/docs/audit_1_2_0.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [audit_1_3_0.md](https://github.com/safe-global/safe-smart-account/blob/main/docs/audit_1_3_0.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [audit_1_4_0.md](https://github.com/safe-global/safe-smart-account/blob/main/docs/audit_1_4_0.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [audit_1_5_0.md](https://github.com/safe-global/safe-smart-account/blob/main/docs/audit_1_5_0.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x96b71e...1ea4ff`](./contracts/ethereum-1/0x96b71e2551915d98d22c448b040a3bc4801ea4ff/) | VestingPool | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
- Audits with zero matched contracts: 18
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [4792] 2025.07 - Certora Audit.pdf
- [4831] Gnosis_Safe_Audit_Report.pdf
- [4832] Gnosis_Safe_Audit_Report_1_1_0.pdf
- [4833] Gnosis_Safe_Audit_Report_1_1_1.pdf
- [4834] Gnosis_Safe_Audit_Report_1_2_0.pdf
- [4835] Gnosis_Safe_Audit_Report_1_3_0_Final.pdf
- [4836] Gnosis_Safe_Audit_Report_1_3_0_Initial.pdf
- [4837] Gnosis_Safe_Formal_Verification_Report_1_0_0.pdf
- [4838] Gnosis_Safe_Symbolic_Execution.pdf
- [4839] Safe_Audit_Report_1_4_0.pdf
- [4840] Safe_Audit_Report_1_5_0_Ackee.pdf
- [4841] Safe_Audit_Report_1_5_0_Certora.pdf
- [4842] Safe_Library_Contracts_Audit_Report_1_4_1.pdf
- [4844] audit_1_1_1.md
- [4845] audit_1_2_0.md
- [4846] audit_1_3_0.md
- [4847] audit_1_4_0.md
- [4848] audit_1_5_0.md

Fork inheritance lineage and inherited audits are included when available.
