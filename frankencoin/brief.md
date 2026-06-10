# Agentic Audit Brief: Frankencoin

## Project Overview

- Project: Frankencoin (`frankencoin`)
- Website: [https://frankencoin.com](https://frankencoin.com)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-06-10T23:25:05.909Z
- Pipeline run: v2-pipeline-2026-06-10-5b3b54-22cc
- Chains: ethereum
- Contract surface: 5 unique implementations (13 raw deployments)
- DeFi Llama TVL: $70,002,557.26
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Frankencoin is an over-collateralized, oracle-free decentralized stablecoin protocol for ZCHF, a stablecoin tracking the Swiss franc. Its evidenced CDP core centers on Frankencoin, MintingHub, PositionFactory, and Position-style collateralized borrowing/minting components, with related savings and bridge functionality where in scope. FolioProxy/Folio should not be described as the main entry point unless separately documented.

### Architecture

The FolioProxy acts as the main entry point, delegating to the Folio implementation which manages vaults and interacts with the Frankencoin token contract. TetherToken is used as a collateral type within the system.

## Audit Coverage Summary

- Verified implementations audited: 4/5 (80.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 5
- Raw deployments: 13
- Audits discovered: 5
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-11 (aging)
- Staleness: 0 fresh, 2 aging, 3 stale, 0 unknown
- Tier 1 coverage: 80.0% (ChainSecurity, Code4rena)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 4 | 80.0% | 2024-11 |
| Code4rena | Tier 1 | 4 | 80.0% | 2023-04 |
| Blockbite | Tier 2 | 3 | 60.0% | 2023-02 |
| yAudit | Tier 2 | 2 | 40.0% | 2024-09 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Frankencoin | unknown | ethereum | 3 deployments: ethereum [`0x422d17...86bf4e`](./contracts/ethereum-1/0x422d17ccc1442501d039595ffcaaa71b4686bf4e/); ethereum `0x7a7870...09b0d8`; ethereum `0xb58e61...0921cb` | ✅ Audited |
| MintingHub | unknown | ethereum | 3 deployments: ethereum [`0x0e5dfe...fcb9ea`](./contracts/ethereum-1/0x0e5dfe570e5637f7b6b43f515b30dd08fbfcb9ea/); ethereum `0x4539b0...0a4e7a`; ethereum `0x754676...265219` | ✅ Audited |
| PositionFactory | registry | ethereum | 3 deployments: ethereum [`0x0cde50...486392`](./contracts/ethereum-1/0x0cde500e6940931ed190ded77bb48640c9486392/); ethereum `0x63cf7c...706b7e`; ethereum `0xcfa9b5...be2080` | ✅ Audited |
| StablecoinBridge | operational_periphery | ethereum | 3 deployments: ethereum [`0x4125cd...d8402b`](./contracts/ethereum-1/0x4125cd1f826099a4dead6b7746f7f28b30d8402b/); ethereum `0x7bbe8f...e346df`; ethereum `0x8d8b5d...0fa020` | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Folio | unknown | ethereum | [`0xe4a109...db1f94`](./contracts/ethereum-1/0xe4a10951f962e6cb93cb843a4ef05d2f99db1f94/) | ⚠️ Unaudited |

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
| [ChainSecurity-audit.pdf](https://github.com/Frankencoin-ZCHF/Frankencoin/blob/main/audits/V1/ChainSecurity-audit.pdf) | ChainSecurity | Audit | 2023-10 | stale | Direct | contract_name | 12 | high |
| [blockbite-audit.pdf](https://github.com/Frankencoin-ZCHF/Frankencoin/blob/main/audits/V1/blockbite-audit.pdf) | Blockbite | Audit | 2023-02 | stale | Direct | contract_name | 9 | high |
| [ChainSecurity_Frankencoin_Frankencoin_v2024.pdf](https://github.com/Frankencoin-ZCHF/Frankencoin/blob/main/audits/V2/ChainSecurity_Frankencoin_Frankencoin_v2024.pdf) | ChainSecurity | Audit | 2024-11 | aging | Direct | contract_name | 9 | high |
| [Code4rena](https://code4rena.com/reports/2023-04-frankencoin) | Code4rena | Contest | 2023-04 | stale | Direct | contract_name | 12 | high |
| [- [Decurity Audit]()](https://github.com/Decurity/audits/blob/master/Frankencoin/frankencoin-audit-report-2024-1.1.pdf) | yAudit | Audit | 2024-09 | aging | Direct | contract_name | 6 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xe4a109...db1f94`](./contracts/ethereum-1/0xe4a10951f962e6cb93cb843a4ef05d2f99db1f94/) | Folio | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=5
- Match method counts: extraction_exact=48

Fork inheritance lineage and inherited audits are included when available.
