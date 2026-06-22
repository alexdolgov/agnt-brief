# Agentic Audit Brief: RociFi

⚠️ Lifecycle status: UNKNOWN - TVL dropped 5.6% over 90 days

## Project Overview

- Project: RociFi (`rocifi`)
- Lifecycle: unknown (Tier 0, 79.2% below peak)
- Generated: 2026-06-21T05:12:59.286Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: polygon
- Contract surface: 15 unique implementations (20 raw deployments)
- DeFi Llama TVL: $46,452.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

RociFi is a decentralized lending protocol that enables undercollateralized loans using on-chain credit scoring. It allows borrowers to access credit based on their reputation and collateral, while lenders provide liquidity to earn yield.

### Architecture

The RociFi V2 family uses a modular architecture where LoanManager orchestrates loan operations, relying on CollateralManager for collateral handling, LimitManager for credit limits, ScoreDB for credit scores, and PriceFeed for asset prices. Pools hold lender funds, and Liquidator handles defaults, all governed by SettingsProvider and access-controlled via NFCS and NamedNFT.

## Contract Surface Quality

- Indexed contracts: 77; live-surface contracts included: 20 (1 live, 19 unknown).
- Excluded by liveness: 22 inactive, 35 singleton, 0 uninitialized.
- Deployment units: 0/21 live.
- Detected codebases: none
- Unverified dependencies: 2/2.

## Audit Coverage Summary

- Verified implementations audited: 4/7 (57.1%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 1
- Unverified implementations: 8
- Unique implementations: 15
- Raw deployments: 20
- Audits discovered: 3
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-12 (stale)
- Staleness: 0 fresh, 0 aging, 3 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of n/a represents exposure in a protocol with unknown activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Hexens | Tier 2 | 4 | 57.1% | 2022-12 |
| CertiK | Tier 2 | 1 | 14.3% | 2022-02 |
| Chainsulting | Tier 2 | 1 | 14.3% | 2021-12 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CollateralManager | governance | polygon | n/a | [`0x98ccf3...d544c4`](./contracts/polygon-137/0x98ccf35738527389d935c8eaaf4604bdacd544c4/) | ✅ Audited |
| LoanManager | governance | polygon | n/a | 2 deployments: polygon [`0xad8899...6a9e20`](./contracts/polygon-137/0xad8899a7e3d45c7967e430ca3ff6fd21686a9e20/); polygon `0xaeebff...7451b7` | ✅ Audited |
| NFCS | unknown | polygon | n/a | [`0xd4f059...4a0678`](./contracts/polygon-137/0xd4f05951102cad5f1f47baa48efad8e0304a0678/) | ✅ Audited |

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Liquidator | operational_periphery | polygon | n/a | [`0xdcd617...9276e0`](./contracts/polygon-137/0xdcd617649099aae438ee27cfc8bafd10e49276e0/) | ⚠️ Unaudited |
| NamedNFT | token | polygon | n/a | [`0xe49931...4e39f0`](./contracts/polygon-137/0xe49931f8103b11414c59ef85191261a5b64e39f0/) | ⚠️ Unaudited |
| PriceFeedSettable | operational_periphery | polygon | n/a | [`0xb329c9...ea16ac`](./contracts/polygon-137/0xb329c9dee4419781dade20e6adb6582ad3ea16ac/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Pool | core_logic | polygon | n/a | 5 deployments: polygon [`0xcde0fd...cc6c28`](./contracts/polygon-137/0xcde0fde0638227363847fa763fd53c11cecc6c28/); polygon `0xe2920b...9fce25`; polygon `0xf32f8f...57bcf5`; polygon `0xf70abb...5c7185`; polygon `0xfdb2bd...10b93a` | ✅ Audited (bytecode match) |

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (8)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | polygon | n/a | `0x9af987...b76314` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa83295...970f5f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb179e8...7a3fc9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb709d3...6abdf2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd518fd...8e50cd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd525eb...76a9de` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe1cc2e...d1f9f7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xef5b15...678159` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Certik-PRE-RociFi-2022-02-10.pdf](https://github.com/rociFi/docs/blob/main/Certik-PRE-RociFi-2022-02-10.pdf) | CertiK | Audit | 2022-02 | stale | Direct | contract_name | 1 | high |
| [Chainsulting-02_Smart_Contract_Audit_RociFi_Protocol-Jan-2022.pdf](https://github.com/rociFi/docs/blob/main/Chainsulting-02_Smart_Contract_Audit_RociFi_Protocol-Jan-2022.pdf) | Chainsulting | Audit | 2021-12 | stale | Direct | contract_name | 1 | high |
| [RociFi_Hexens_Dec_2022_SMA_public.pdf (also discovered via alternate URL)](https://github.com/rociFi/docs/blob/main/RociFi_Hexens_Dec_2022_SMA_public.pdf) | Hexens | Audit | 2022-12 | stale | Direct | contract_name | 6 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | [`0xdcd617...9276e0`](./contracts/polygon-137/0xdcd617649099aae438ee27cfc8bafd10e49276e0/) | Liquidator | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xe49931...4e39f0`](./contracts/polygon-137/0xe49931f8103b11414c59ef85191261a5b64e39f0/) | NamedNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xb329c9...ea16ac`](./contracts/polygon-137/0xb329c9dee4419781dade20e6adb6582ad3ea16ac/) | PriceFeedSettable | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 11 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: extraction_exact=75

Fork inheritance lineage and inherited audits are included when available.
