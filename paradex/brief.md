# Agentic Audit Brief: Paradex

⚠️ Lifecycle status: DECLINING - TVL dropped 78.5% over 90 days

## Project Overview

- Project: Paradex (`paradex`)
- Website: [https://app.paradex.trade/r/defillama](https://app.paradex.trade/r/defillama)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-12T16:23:27.146Z
- Pipeline run: v2-pipeline-2026-06-12-c7aee3-9d35
- Chains: ethereum
- Contract surface: 5 unique implementations (7 raw deployments)
- DeFi Llama TVL: $27,280,553.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Paradex is a perpetuals decentralized exchange. The recorded Ethereum contracts appear to represent bridge/deposit-withdrawal infrastructure for Ethereum/Starknet connectivity, not the complete trading protocol or sole on-chain infrastructure.

### Architecture

The Paradex Bridge serves as the sole on-chain infrastructure, with the Proxy contract managing upgrades to the StarknetTokenBridge implementation, which handles all cross-chain token transfers.

## Audit Coverage Summary

- Verified implementations audited: 1/2 (50.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 5
- Raw deployments: 7
- Audits discovered: 5
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-05 (aging)
- Staleness: 0 fresh, 3 aging, 2 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Zellic | Tier 2 | 1 | 50.0% | 2024-10 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| StarknetTokenBridge | unknown | ethereum | 2 deployments: ethereum [`0xdcbd52...8eec86`](./contracts/ethereum-1/0xdcbd52ffaf81bf0aa5bd38b0c15f60345e8eec86/); ethereum `0xe3cbe3...e53db3` | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| StarknetERC20Bridge | operational_periphery | ethereum | 2 deployments: ethereum [`0x6fd622...b42c16`](./contracts/ethereum-1/0x6fd62239f3a441d1898683c5a84ce3681bb42c16/); ethereum `0x8a4e51...be1e77` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (3)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x2b3c19...9d5f8d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5dacc4...c2fcc3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd8d79d...97152a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [May 2025 (Cairo Security Clan)](https://github.com/Cairo-Security-Clan/Audit-Portfolio/blob/main/Paradex_Audit_Report.pdf) | Cairo Security Clan | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |
| [Oct 2024 (Zellic)](https://github.com/tradeparadex/paradex-docs/blob/main/fern/assets/StarkGate_Oct_2024.pdf) | Zellic | Audit | 2024-10 | aging | Direct | n/a | 0 | n/a |
| [Oct 2023 (Zellic)](https://github.com/tradeparadex/paradex-docs/blob/main/fern/assets/StarkGate_Oct_2023.pdf) | Zellic | Audit | 2023-10 | stale | Direct | contract_name | 2 | high |
| [Nov 2022 (Trail of Bits)](https://github.com/tradeparadex/paradex-docs/blob/main/fern/assets/Starknet_Core_Summary_Report_Sept_2022.pdf) | Trail of Bits | Audit | 2022-11 | stale | Direct | n/a | 0 | n/a |
| [March 2025 (HackerOne)](https://github.com/tradeparadex/paradex-docs/blob/main/fern/assets/Paradex_Penetration_Test_March_25_2025.pdf) | HackerOne | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=2

Zero-match audit list:

- [12218] May 2025 (Cairo Security Clan)
- [12219] Oct 2024 (Zellic)
- [12221] Nov 2022 (Trail of Bits)
- [12222] March 2025 (HackerOne)

Fork inheritance lineage and inherited audits are included when available.
