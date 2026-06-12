# Agentic Audit Brief: Safe

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: Safe (`safe`)
- Website: [https://safe.global/](https://safe.global/)
- Lifecycle: unknown (Tier 0, TVL trajectory)
- Generated: 2026-06-12T06:49:58.135Z
- Pipeline run: v2-pipeline-2026-06-12-6a3052-d6af
- Chains: ethereum
- Contract surface: 12 unique implementations (17 raw deployments)
- DeFi Llama TVL: $64,015,807.97
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Safe is a smart-account and multisig wallet platform for decentralized custody and transaction execution. Its core architecture consists of Safe smart-account singleton/mastercopy contracts, proxy factories and deployment infrastructure, fallback handlers, libraries, modules, guards, and related production contracts. The currently captured VestingPool contract is only a peripheral vesting-related contract and does not represent Safe's core project architecture.

### Architecture

The project consists of a single product family with one core contract, so there are no inter-family relationships or shared infrastructure.

## Audit Coverage Summary

- Verified implementations audited: 0/11 (0.0%)
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 12
- Raw deployments: 17
- Audits discovered: 18
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-07 (fresh)
- Staleness: 1 fresh, 3 aging, 7 stale, 7 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of n/a represents exposure in a protocol with unknown activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| CompatibilityFallbackHandler | unknown | ethereum | 2 deployments: ethereum [`0x3efcbb...be77f4`](./contracts/ethereum-1/0x3efcbb83a4a7afcb4f68d501e2c2203a38be77f4/); ethereum `0xfd0732...59ec99` | ⚠️ Unaudited |
| CreateCall | unknown | ethereum | 2 deployments: ethereum [`0x2ef5ec...da90b4`](./contracts/ethereum-1/0x2ef5ecfbea521449e4de05edb1ce63b75eda90b4/); ethereum `0x9b35af...0a1a52` | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | [`0x8cf60b...0bd1d1`](./contracts/ethereum-1/0x8cf60b289f8d31f737049b590b5e4285ff0bd1d1/) | ⚠️ Unaudited |
| MultiSend | unknown | ethereum | 2 deployments: ethereum [`0x218543...7d7eb7`](./contracts/ethereum-1/0x218543288004cd07832472d464648173c77d7eb7/); ethereum `0xa238cb...7e7761` | ⚠️ Unaudited |
| MultiSendCallOnly | unknown | ethereum | [`0x9641d7...8102e2`](./contracts/ethereum-1/0x9641d764fc13c8b624c04430c7356c1c7c8102e2/) | ⚠️ Unaudited |
| Safe | unknown | ethereum | 2 deployments: ethereum [`0x41675c...c7461a`](./contracts/ethereum-1/0x41675c099f32341bf84bfc5382af534df5c7461a/); ethereum `0xff51a5...2ca44b` | ⚠️ Unaudited |
| Safe4337Module | unknown | ethereum | [`0x75cf11...d5c226`](./contracts/ethereum-1/0x75cf11467937ce3f2f357ce24ffc3dbf8fd5c226/) | ⚠️ Unaudited |
| SafeL2 | unknown | ethereum | [`0x29fcb4...00c762`](./contracts/ethereum-1/0x29fcb43b46531bca003ddc8fcb67ffe91900c762/) | ⚠️ Unaudited |
| SafeProxyFactory | registry | ethereum | 2 deployments: ethereum [`0x14f298...165e7b`](./contracts/ethereum-1/0x14f2982d601c9458f93bd70b218933a6f8165e7b/); ethereum `0x4e1dcf...20ec67` | ⚠️ Unaudited |
| SignMessageLib | unknown | ethereum | [`0xd53cd0...8012c9`](./contracts/ethereum-1/0xd53cd0ab83d845ac265be939c57f53ad838012c9/) | ⚠️ Unaudited |
| VestingPool | operational_periphery | ethereum | [`0x96b71e...1ea4ff`](./contracts/ethereum-1/0x96b71e2551915d98d22c448b040a3bc4801ea4ff/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | ethereum | `0xa581c4...0b4037` | ❓ Unverified |

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

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 12 |

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
