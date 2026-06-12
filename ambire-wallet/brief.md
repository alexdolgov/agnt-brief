# Agentic Audit Brief: Ambire Wallet

## Project Overview

- Project: Ambire Wallet (`ambire-wallet`)
- Website: [https://www.ambire.com](https://www.ambire.com)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-06-12T22:06:45.117Z
- Pipeline run: v2-pipeline-2026-06-12-546062-9d5a
- Chains: ethereum, optimism
- Contract surface: 13 unique implementations (14 raw deployments)
- DeFi Llama TVL: $11,408,152.79
- On-chain TVL (included contracts): $5,815,395.37
- TVL by chain: Ethereum $5,815,389.72 | Optimism $5.65

## Project Description

Ambire is a self-custodial Web3 wallet, primarily offered as a browser-extension wallet, that enables users to manage assets, swap, bridge, interact with dApps, and use smart-account features including EIP-7702 support for EOAs. Its WALLET token and related staking contracts are token-related components rather than the entirety of the Ambire Wallet product.

### Architecture

The StakingPool contract interacts with the WALLETToken to manage staking and reward distribution. Both contracts are deployed from the same deployer cluster, indicating shared ownership and infrastructure.

## Audit Coverage Summary

- Verified implementations audited: 1/5 (20.0%)
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 8
- Unique implementations: 13
- Raw deployments: 14
- Audits discovered: 12
- Scoreable audits (matched contracts): 9
- ASD (verified + unaudited TVL): $5,815,389.72
- Latest audit: 2025-02 (aging)
- Staleness: 0 fresh, 2 aging, 6 stale, 4 unknown
- Tier 1 coverage: 20.0% (Code4rena)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Code4rena | Tier 1 | 1 | 20.0% | n/a |
| CuriousApple | Tier 2 | 1 | 20.0% | 2023-10 |
| Facu | Tier 2 | 1 | 20.0% | 2023-09 |
| Hunter Security | Tier 2 | 1 | 20.0% | 2025-02 |
| Pashov Audit Group | Tier 2 | 1 | 20.0% | n/a |
| Shieldify | Tier 2 | 1 | 20.0% | 2024-02 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AmbireAccount | core_logic | optimism | [`0x904372...647293`](./contracts/optimism-10/0x90437220d89774217c291ae4cede826dcd647293/) | ✅ Audited |

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| WALLETToken | token | ethereum | [`0x888000...2794ae`](./contracts/ethereum-1/0x88800092ff476844f74dc2fc427974bbee2794ae/) | ⚠️ Unaudited |
| adexStakingSpendable | unknown | ethereum | [`0x2685dd...2cecb7`](./contracts/ethereum-1/0x2685dde658faa0465130bc1672904d32c42cecb7/) | ⚠️ Unaudited |
| StakingPool | core_logic | ethereum | 2 deployments: ethereum [`0x47cd7e...c12935`](./contracts/ethereum-1/0x47cd7e91c3cbaaf266369fe8518345fc4fc12935/); ethereum `0x4d3348...fe3d58` | ⚠️ Unaudited |
| xWALLETSpendable | unknown | ethereum | [`0x0b62ec...be43fd`](./contracts/ethereum-1/0x0b62ec5f3b445d2cdd024e736c3f4f1f92be43fd/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (8)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x0604f2...ceaee7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0e3c4f...f4bf3f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1955db...f6440b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1bba61...b1b2dc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1f6a77...1c8dcc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa69b80...24aaff` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xde0ed7...7b9159` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf2dd37...4b110b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Ambire-EIP-7702-Update-Hunter-Security-Audit-Report-0.1.pdf](https://github.com/AmbireTech/ambire-common/blob/v2/audits/Ambire-EIP-7702-Update-Hunter-Security-Audit-Report-0.1.pdf) | Hunter Security | Audit | 2025-02 | aging | Direct | contract_name | 1 | high |
| [Ambire-Hunter-Security-Assessment-26-01-2024.pdf](https://github.com/AmbireTech/ambire-common/blob/v2/audits/Ambire-Hunter-Security-Assessment-26-01-2024.pdf) | Hunter Security | Audit | 2024-01 | stale | Direct | contract_name | 1 | high |
| [Ambire-stkWALLET-Hunter-Security-Audit-26-02-2024-1.pdf](https://github.com/AmbireTech/ambire-common/blob/v2/audits/Ambire-stkWALLET-Hunter-Security-Audit-26-02-2024-1.pdf) | Hunter Security | Audit | 2024-02 | stale | Direct | n/a | 0 | n/a |
| [Ambire-stkWallet-Hunter-Security-Audit-Report-2025-1.pdf](https://github.com/AmbireTech/ambire-common/blob/v2/audits/Ambire-stkWallet-Hunter-Security-Audit-Report-2025-1.pdf) | Hunter Security | Audit | 2025-01 | aging | Direct | n/a | 0 | n/a |
| [CuriousApple-AmbireRewview01.md](https://github.com/AmbireTech/ambire-common/blob/v2/audits/CuriousApple-AmbireRewview01.md) | CuriousApple | Audit | 2023-10 | stale | Direct | contract_name | 1 | high |
| [ERC6492-Hunter-Security-Audit-Report-V1.0.pdf](https://github.com/AmbireTech/ambire-common/blob/v2/audits/ERC6492-Hunter-Security-Audit-Report-V1.0.pdf) | Hunter Security | Audit | 2024-02 | stale | Direct | n/a | 0 | n/a |
| [Pashov-Ambire-second-security-review.md](https://github.com/AmbireTech/ambire-common/blob/v2/audits/Pashov-Ambire-second-security-review.md) | Pashov Audit Group | Audit | n/a | unknown | Direct | contract_name | 1 | high |
| [Pashov-Ambire-security-review.md](https://github.com/AmbireTech/ambire-common/blob/v2/audits/Pashov-Ambire-security-review.md) | Pashov Audit Group | Audit | n/a | unknown | Direct | contract_name | 1 | high |
| [Pashov-Ambire-third-security-review.md](https://github.com/AmbireTech/ambire-common/blob/v2/audits/Pashov-Ambire-third-security-review.md) | Pashov Audit Group | Audit | n/a | unknown | Direct | contract_name | 1 | medium |
| [Shieldify-Ambire-Security-Review.pdf](https://github.com/AmbireTech/ambire-common/blob/v2/audits/Shieldify-Ambire-Security-Review.pdf) | Shieldify | Audit | 2024-02 | stale | Direct | contract_name | 1 | high |
| [code4rena - Ambire Wallet - Invitational.pdf](https://github.com/AmbireTech/ambire-common/blob/v2/audits/code4rena%20-%20Ambire%20Wallet%20-%20Invitational.pdf) | Code4rena | Contest | n/a | unknown | Direct | contract_name | 1 | low |
| [facu_2023-09-28_Ambire_Smart_Contracts_Audit_Report-1.pdf](https://github.com/AmbireTech/ambire-common/blob/v2/audits/facu_2023-09-28_Ambire_Smart_Contracts_Audit_Report-1.pdf) | Facu | Audit | 2023-09 | stale | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x888000...2794ae`](./contracts/ethereum-1/0x88800092ff476844f74dc2fc427974bbee2794ae/) | WALLETToken | token | $5,815,389.72 | Verified native implementation with $5,815,389.72 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2685dd...2cecb7`](./contracts/ethereum-1/0x2685dde658faa0465130bc1672904d32c42cecb7/) | adexStakingSpendable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x47cd7e...c12935`](./contracts/ethereum-1/0x47cd7e91c3cbaaf266369fe8518345fc4fc12935/) | StakingPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0b62ec...be43fd`](./contracts/ethereum-1/0x0b62ec5f3b445d2cdd024e736c3f4f1f92be43fd/) | xWALLETSpendable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 13 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=7, low=1, medium=1
- Match method counts: extraction_exact=9

Zero-match audit list:

- [2303] Ambire-stkWALLET-Hunter-Security-Audit-26-02-2024-1.pdf
- [2304] Ambire-stkWallet-Hunter-Security-Audit-Report-2025-1.pdf
- [2306] ERC6492-Hunter-Security-Audit-Report-V1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
