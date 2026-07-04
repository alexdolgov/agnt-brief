# Agentic Audit Brief: Legion

## Project Overview

- Project: Legion (`legion`)
- Website: [https://legion.cc](https://legion.cc)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:21.420Z
- Pipeline run: v2-2026-07-03-59f8b9
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

- Coverage of deployed-live implementations: 0/7 (0.0%)
- Deployed-live implementations: 7 of 7 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/7
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 7
- Raw deployments: 7
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-07 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 1 stale, 3 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DiamondHandsVault | unknown | ethereum | n/a | [`0x3548a8...60d514`](./contracts/ethereum-1/0x3548a8345a37f58f232f97eb050c937fb660d514/) | ⚠️ Unaudited |
| LegionAddressRegistry | unknown | ethereum | n/a | [`0x58ddd0...52aed7`](./contracts/ethereum-1/0x58ddd0816120cab3e646dd57b9722b016552aed7/) | ⚠️ Unaudited |
| LegionBouncer | unknown | ethereum | n/a | [`0x4a7aca...500533`](./contracts/ethereum-1/0x4a7aca57a685c9e893f60a716415e5e588500533/) | ⚠️ Unaudited |
| LegionPreLiquidSaleV1Factory | unknown | ethereum | n/a | [`0x6d1a5c...b5c4e7`](./contracts/ethereum-1/0x6d1a5c2c7f71c3a16a36a247f12ce8aedeb5c4e7/) | ⚠️ Unaudited |
| LegionPreLiquidSaleV2Factory | unknown | ethereum | n/a | [`0x5acc2f...3efb24`](./contracts/ethereum-1/0x5acc2f2ac83e4615f85cfc9a5bc903355a3efb24/) | ⚠️ Unaudited |
| LegionTokenDistributorFactory | unknown | ethereum | n/a | [`0xd009f5...a97f9d`](./contracts/ethereum-1/0xd009f57acece44e6e22ff481f2f325fea8a97f9d/) | ⚠️ Unaudited |
| LegionVestingFactory | unknown | ethereum | n/a | [`0x7832d6...5e9e5f`](./contracts/ethereum-1/0x7832d6730aa93f6954ca158e392b21d0a95e9e5f/) | ⚠️ Unaudited |

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
| [Code4rena - Legion EVM Audit.pdf](https://github.com/Legion-Team/legion-protocol-contracts/blob/master/audits/Code4rena%20-%20Legion%20EVM%20Audit.pdf) | Code4rena | Contest | 2024 | stale | Direct | n/a | 0 | n/a |
| [Legion - Zenith Audit Report.pdf](https://github.com/Legion-Team/legion-protocol-contracts/blob/master/audits/Legion%20-%20Zenith%20Audit%20Report.pdf) | Zenith | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Legion-security-review_2025-07-28.pdf](https://github.com/Legion-Team/legion-protocol-contracts/blob/master/audits/Legion-security-review_2025-07-28.pdf) | Unknown | Audit | 2025-07 | aging | Direct | n/a | 0 | n/a |
| [Legion_Report1_Final.pdf](https://github.com/Legion-Team/legion-protocol-contracts/blob/master/audits/Legion_Report1_Final.pdf) | Unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [legion_smart_contracts_-_summary_report_1.1.pdf](https://github.com/Legion-Team/legion-protocol-contracts/blob/master/audits/legion_smart_contracts_-_summary_report_1.1.pdf) | Unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 7 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [24118] Code4rena - Legion EVM Audit.pdf
- [24119] Legion - Zenith Audit Report.pdf
- [24120] Legion-security-review_2025-07-28.pdf
- [24121] Legion_Report1_Final.pdf
- [24122] legion_smart_contracts_-_summary_report_1.1.pdf

Fork inheritance lineage and inherited audits are included when available.
