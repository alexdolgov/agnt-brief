# Agentic Audit Brief: Frankencoin

## Project Overview

- Project: Frankencoin (`frankencoin`)
- Website: [https://frankencoin.com](https://frankencoin.com)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-06-17T07:00:38.375Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum
- Contract surface: 3 unique implementations (3 raw deployments)
- DeFi Llama TVL: $62,111,432.68
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 3 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Frankencoin is an over-collateralized, oracle-free decentralized stablecoin protocol for ZCHF, a stablecoin tracking the Swiss franc. Its evidenced CDP core centers on Frankencoin, MintingHub, PositionFactory, and Position-style collateralized borrowing/minting components, with related savings and bridge functionality where in scope. FolioProxy/Folio should not be described as the main entry point unless separately documented.

## Contract Surface Quality

- Indexed contracts: 13; live-surface contracts included: 3 (3 live, 0 unknown).
- Excluded by liveness: 10 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: none
- Dependencies extracted: 3; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 2/3 (66.7%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 3
- Raw deployments: 3
- Audits discovered: 5
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-11 (aging)
- Staleness: 0 fresh, 2 aging, 3 stale, 0 unknown
- Tier 1 coverage: 66.7% (ChainSecurity, Code4rena)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Blockbite | Tier 2 | 2 | 66.7% | 2023-02 |
| ChainSecurity | Tier 1 | 2 | 66.7% | 2024-11 |
| Code4rena | Tier 1 | 2 | 66.7% | 2023-04 |
| yAudit | Tier 2 | 1 | 33.3% | 2024-09 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Frankencoin | unknown | ethereum | n/a | [`0xb58e61...0921cb`](./contracts/ethereum-1/0xb58e61c3098d85632df34eecfb899a1ed80921cb/) | ✅ Audited |
| MintingHub | unknown | ethereum | n/a | [`0x754676...265219`](./contracts/ethereum-1/0x7546762fdb1a6d9146b33960545c3f6394265219/) | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Folio | unknown | ethereum | unit-24172 | [`0xe4a109...db1f94`](./contracts/ethereum-1/0xe4a10951f962e6cb93cb843a4ef05d2f99db1f94/) | ⚠️ Unaudited |

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
| [ChainSecurity-audit.pdf](https://github.com/Frankencoin-ZCHF/Frankencoin/blob/main/audits/V1/ChainSecurity-audit.pdf) | ChainSecurity | Audit | 2023-10 | stale | Direct | contract_name | 2 | high |
| [blockbite-audit.pdf](https://github.com/Frankencoin-ZCHF/Frankencoin/blob/main/audits/V1/blockbite-audit.pdf) | Blockbite | Audit | 2023-02 | stale | Direct | contract_name | 2 | high |
| [ChainSecurity_Frankencoin_Frankencoin_v2024.pdf](https://github.com/Frankencoin-ZCHF/Frankencoin/blob/main/audits/V2/ChainSecurity_Frankencoin_Frankencoin_v2024.pdf) | ChainSecurity | Audit | 2024-11 | aging | Direct | contract_name | 2 | high |
| [Code4rena](https://code4rena.com/reports/2023-04-frankencoin) | Code4rena | Contest | 2023-04 | stale | Direct | contract_name | 2 | high |
| [- [Decurity Audit]()](https://github.com/Decurity/audits/blob/master/Frankencoin/frankencoin-audit-report-2024-1.1.pdf) | yAudit | Audit | 2024-09 | aging | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xe4a109...db1f94`](./contracts/ethereum-1/0xe4a10951f962e6cb93cb843a4ef05d2f99db1f94/) | Folio | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
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
