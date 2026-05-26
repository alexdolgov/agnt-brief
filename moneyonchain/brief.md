# Agentic Audit Brief: MoneyOnChain

## Project Overview

- Project: MoneyOnChain (`moneyonchain`)
- Website: [https://moneyonchain.com/](https://moneyonchain.com/)
- Lifecycle: unknown
- Generated: 2026-05-26T13:04:25.796Z
- Pipeline run: v2-pipeline-2026-05-26-695c23-aaf8
- Chains: n/a
- Contract surface: 0 unique implementations (0 raw deployments)
- DeFi Llama TVL: $43,710,308.64
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

MoneyOnChain is a dual-token stablecoin protocol that issues a price-stable token (DoC) pegged to fiat currency and a volatile token (BPro) that absorbs price fluctuations, enabling users to hedge or leverage Bitcoin exposure.

### Architecture

The MoC contract acts as the central coordinator, interacting with MoCState for state management, MoCSettlement for settlement logic, and MoCExchange for token swaps, while MoCConnector provides a shared registry for all core and supporting contracts.

## Audit Coverage Summary

- Verified implementations audited: 0/0 (0.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 0
- Raw deployments: 0
- Audits discovered: 13
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024 (stale)
- Staleness: 0 fresh, 0 aging, 6 stale, 7 unknown
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

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [* [Audits]()](https://github.com/money-on-chain/Audits) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Money on Chain Dex Audit 2.pdf](https://github.com/money-on-chain/Audits/blob/master/Descentralized%3AExchange/Money%20on%20Chain%20Dex%20Audit%202.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Money on Chain Dex Audit.pdf](https://github.com/money-on-chain/Audits/blob/master/Descentralized%3AExchange/Money%20on%20Chain%20Dex%20Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [20190425 - Money on Chain Audit.pdf](https://github.com/money-on-chain/Audits/blob/master/RBTC_collateral/20190425%20-%20Money%20on%20Chain%20Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Money On Chain Audit 2 Review.pdf](https://github.com/money-on-chain/Audits/blob/master/RBTC_collateral/Money%20On%20Chain%20Audit%202%20Review.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Money On Chain Audit 2.pdf](https://github.com/money-on-chain/Audits/blob/master/RBTC_collateral/Money%20On%20Chain%20Audit%202.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Kudelski_RSKL_Labs_Moc_SA-v1.4-public.pdf](https://github.com/money-on-chain/Audits/blob/master/ROC/audits/Kudelski_RSKL_Labs_Moc_SA-v1.4-public.pdf) | Kudelski Security | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [Kudelski_RSKL_Labs_Roc_SA-v1.4-public.pdf](https://github.com/money-on-chain/Audits/blob/master/ROC/audits/Kudelski_RSKL_Labs_Roc_SA-v1.4-public.pdf) | Kudelski Security | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [20191004 - Money On Chain Audit 3.pdf](https://github.com/money-on-chain/Audits/blob/master/RRC-20_collateral/20191004%20-%20Money%20On%20Chain%20Audit%203.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [OMoC_Security_Audit_v210127.pdf](https://github.com/money-on-chain/Audits/blob/master/Shared/OMoC_Security_Audit_v210127.pdf) | OMoC | Audit | 2020-12 | stale | Direct | n/a | 0 | n/a |
| [RIF_On_Chain_2023_06.pdf](https://github.com/money-on-chain/Audits/blob/master/Shared/RIF_On_Chain_2023_06.pdf) | RIF On Chain | Audit | 2023-06 | stale | Direct | n/a | 0 | n/a |
| [RIF_On_Chain_2023_08.pdf](https://github.com/money-on-chain/Audits/blob/master/Shared/RIF_On_Chain_2023_08.pdf) | RIF On Chain | Audit | 2023-08 | stale | Direct | n/a | 0 | n/a |
| [RIF_On_Chain_2023_09.pdf](https://github.com/money-on-chain/Audits/blob/master/Shared/RIF_On_Chain_2023_09.pdf) | RIF On Chain | Audit | 2023-09 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 13
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [3886] * [Audits]()
- [3887] Money on Chain Dex Audit 2.pdf
- [3888] Money on Chain Dex Audit.pdf
- [3889] 20190425 - Money on Chain Audit.pdf
- [3890] Money On Chain Audit 2 Review.pdf
- [3891] Money On Chain Audit 2.pdf
- [3892] Kudelski_RSKL_Labs_Moc_SA-v1.4-public.pdf
- [3893] Kudelski_RSKL_Labs_Roc_SA-v1.4-public.pdf
- [3894] 20191004 - Money On Chain Audit 3.pdf
- [3895] OMoC_Security_Audit_v210127.pdf
- [3896] RIF_On_Chain_2023_06.pdf
- [3897] RIF_On_Chain_2023_08.pdf
- [3898] RIF_On_Chain_2023_09.pdf

Fork inheritance lineage and inherited audits are included when available.
