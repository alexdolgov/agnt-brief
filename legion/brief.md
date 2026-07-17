# Agentic Audit Brief: Legion

## Project Overview

- Project: Legion (`legion`)
- Website: [https://legion.cc](https://legion.cc)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:29.914Z
- Pipeline run: v2-2026-07-04-db4eb6
- Chains: ethereum
- Contract surface: 7 unique implementations (7 raw deployments)
- DeFi Llama TVL: $935,060.71
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Launchpad. Structurally: 7 project-authored contract(s) across 1 chain(s); upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 7; live-surface contracts included: 7 (7 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 2/7 (28.6%)
- Deployed-live implementations: 7 of 7 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/7
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 7
- Raw deployments: 7
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-08 (fresh)
- Audit staleness (calendar age): 1 fresh, 4 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 2 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 14.3% (Code4rena)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Code4rena | Tier 1 | 1 | 14.3% | 2024-10 |
| Unknown | Tier 2 | 1 | 14.3% | 2025-08 |
| Zenith | Tier 2 | 1 | 14.3% | 2025-02 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| LegionAddressRegistry | unknown | ethereum | n/a | [`0x58ddd0816120cab3e646dd57b9722b016552aed7`](./contracts/ethereum-1/0x58ddd0816120cab3e646dd57b9722b016552aed7/) | ✅ Audited |
| LegionPreLiquidSaleV1Factory | unknown | ethereum | n/a | [`0x6d1a5c2c7f71c3a16a36a247f12ce8aedeb5c4e7`](./contracts/ethereum-1/0x6d1a5c2c7f71c3a16a36a247f12ce8aedeb5c4e7/) | ✅ Audited |

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DiamondHandsVault | unknown | ethereum | n/a | [`0x3548a8345a37f58f232f97eb050c937fb660d514`](./contracts/ethereum-1/0x3548a8345a37f58f232f97eb050c937fb660d514/) | ⚠️ Unaudited |
| LegionBouncer | unknown | ethereum | n/a | [`0x4a7aca57a685c9e893f60a716415e5e588500533`](./contracts/ethereum-1/0x4a7aca57a685c9e893f60a716415e5e588500533/) | ⚠️ Unaudited |
| LegionPreLiquidSaleV2Factory | unknown | ethereum | n/a | [`0x5acc2f2ac83e4615f85cfc9a5bc903355a3efb24`](./contracts/ethereum-1/0x5acc2f2ac83e4615f85cfc9a5bc903355a3efb24/) | ⚠️ Unaudited |
| LegionTokenDistributorFactory | unknown | ethereum | n/a | [`0xd009f57acece44e6e22ff481f2f325fea8a97f9d`](./contracts/ethereum-1/0xd009f57acece44e6e22ff481f2f325fea8a97f9d/) | ⚠️ Unaudited |
| LegionVestingFactory | unknown | ethereum | n/a | [`0x7832d6730aa93f6954ca158e392b21d0a95e9e5f`](./contracts/ethereum-1/0x7832d6730aa93f6954ca158e392b21d0a95e9e5f/) | ⚠️ Unaudited |

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
| [Code4rena - Legion EVM Audit.pdf](https://github.com/Legion-Team/legion-protocol-contracts/blob/master/audits/Code4rena%20-%20Legion%20EVM%20Audit.pdf) | Code4rena | Contest | 2024-10 | aging | Direct | contract_name | 1 | high |
| [Legion - Zenith Audit Report.pdf](https://github.com/Legion-Team/legion-protocol-contracts/blob/master/audits/Legion%20-%20Zenith%20Audit%20Report.pdf) | Zenith | Audit | 2025-02 | aging | Direct | contract_name | 1 | high |
| [Legion-security-review_2025-07-28.pdf](https://github.com/Legion-Team/legion-protocol-contracts/blob/master/audits/Legion-security-review_2025-07-28.pdf) | Unknown | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |
| [Legion_Report1_Final.pdf](https://github.com/Legion-Team/legion-protocol-contracts/blob/master/audits/Legion_Report1_Final.pdf) | Unknown | Audit | 2024-11 | aging | Direct | n/a | 0 | n/a |
| [legion_smart_contracts_-_summary_report_1.1.pdf](https://github.com/Legion-Team/legion-protocol-contracts/blob/master/audits/legion_smart_contracts_-_summary_report_1.1.pdf) | Unknown | Audit | 2024-08 | aging | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x3548a8345a37f58f232f97eb050c937fb660d514`](./contracts/ethereum-1/0x3548a8345a37f58f232f97eb050c937fb660d514/) | DiamondHandsVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4a7aca57a685c9e893f60a716415e5e588500533`](./contracts/ethereum-1/0x4a7aca57a685c9e893f60a716415e5e588500533/) | LegionBouncer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5acc2f2ac83e4615f85cfc9a5bc903355a3efb24`](./contracts/ethereum-1/0x5acc2f2ac83e4615f85cfc9a5bc903355a3efb24/) | LegionPreLiquidSaleV2Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd009f57acece44e6e22ff481f2f325fea8a97f9d`](./contracts/ethereum-1/0xd009f57acece44e6e22ff481f2f325fea8a97f9d/) | LegionTokenDistributorFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7832d6730aa93f6954ca158e392b21d0a95e9e5f`](./contracts/ethereum-1/0x7832d6730aa93f6954ca158e392b21d0a95e9e5f/) | LegionVestingFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: extraction_exact=3

Zero-match audit list:

- [24120] Legion-security-review_2025-07-28.pdf
- [24121] Legion_Report1_Final.pdf

Fork inheritance lineage and inherited audits are included when available.
