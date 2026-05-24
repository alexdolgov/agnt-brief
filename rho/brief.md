# Agentic Audit Brief: Rho

## Project Overview

- Project: Rho (`rho`)
- Website: [https://www.rho.trading/](https://www.rho.trading/)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-05-24T11:37:09.273Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: ethereum
- Contract surface: 32 unique implementations (36 raw deployments)
- DeFi Llama TVL: $2,441,166.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Rho is a DeFi protocol offering structured yield and derivatives products. It includes vaults that generate yield on stablecoins and a separate product line (Rho X) that issues a yield-bearing stablecoin (YUSD) backed by LP positions.

### Architecture

The Mainnet family provides the foundational vault logic and proxy infrastructure, while Rho X extends it with a stablecoin minted against LP vault positions. Both families share the same deployer cluster and likely interact through token flows between vaults and the YUSD contract.

## Audit Coverage Summary

- Verified implementations audited: 0/3 (0.0%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 1
- Unverified implementations: 29
- Unique implementations: 32
- Raw deployments: 36
- Audits discovered: 4
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-09 (fresh)
- Staleness: 2 fresh, 0 aging, 1 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| FixedRateMaturityVault | core_logic | ethereum | 3 deployments: ethereum [`0x535a5d...e9bb68`](./contracts/ethereum-1/0x535a5dbf628f79e36a0dbc7a3e8521df33e9bb68/); ethereum `0x9fc8b7...92b297`; ethereum `0xfa01d7...a6948a` | ⚠️ Unaudited |
| YUSD | unknown | ethereum | [`0x4274cd...a8da0a`](./contracts/ethereum-1/0x4274cd7277c7bb0806bd5fe84b9adae466a8da0a/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ERC1967Proxy | proxy | ethereum | 3 deployments: ethereum [`0x461ffa...f7ba36`](./contracts/ethereum-1/0x461ffa24b716f68c5a4fb583592f295db5f7ba36/); ethereum `0xcf60f0...a340ec`; ethereum `0xed96fe...c91fc1` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (29)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x037b13...677bec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x061765...f6c242` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x111b39...bce0d7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x184506...8bb00a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x18c1c0...26e8d8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x38e1b0...6cb603` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3a8931...1634f3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4d27c0...a51fa0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5d9573...7ceb25` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x695ce4...a218ec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6e1ea5...cdcfce` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6f93c4...48d77c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7094d8...cd1862` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x78daa3...a09e52` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x83a321...ae2f21` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x853e21...4bc0e7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9cf959...002b0f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa7561a...bb1af9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xab0313...e98a76` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbc77f3...31bfea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc2aebd...924c4c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xced447...55493b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd15a09...924942` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe2b85f...ec4932` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xefe4c3...7a1685` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf0a940...cd5e5b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf33bcb...a5330d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf95441...aaed06` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfbb3c9...bdcd4a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://audits.oxor.io/reports/-NsF0vIwYyzQJhrgL2nf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Rho Labs Audit Report](https://github.com/zokyo-sec/audit-reports/blob/main/Rho%20Labs/Rho_Labs_Zokyo_audit_report_Sep23rd_2025.pdf) | Zokyo | Audit | 2025-09 | fresh | Direct | n/a | 0 | n/a |
| [Vault Contracts v2 Audit](https://www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb) | Halborn | Audit | 2025-07 | fresh | Direct | n/a | 0 | n/a |
| [Rho Protocol Audit Report](https://oxor-io.github.io/public_audits/Rho/Rho%20Protocol%20Audit%20Report.pdf) | Halborn | Audit | 2024-04 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x535a5d...e9bb68`](./contracts/ethereum-1/0x535a5dbf628f79e36a0dbc7a3e8521df33e9bb68/) | FixedRateMaturityVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4274cd...a8da0a`](./contracts/ethereum-1/0x4274cd7277c7bb0806bd5fe84b9adae466a8da0a/) | YUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 26 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2811] DL audit link
- [2812] Rho Labs Audit Report
- [2813] Vault Contracts v2 Audit
- [2814] Rho Protocol Audit Report

Fork inheritance lineage and inherited audits are included when available.
