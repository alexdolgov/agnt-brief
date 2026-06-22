# Agentic Audit Brief: Marginly

⚠️ Lifecycle status: DEAD - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: Marginly (`marginly`)
- Website: [https://marginly.com](https://marginly.com)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-06-19T11:08:44.256Z
- Pipeline run: v2-pipeline-2026-06-19-727228-cc10
- Chains: arbitrum, blast, ethereum
- Contract surface: 4 unique implementations (8 raw deployments)
- DeFi Llama TVL: $0.00
- On-chain TVL (included contracts): $186.97
- TVL by chain: Blast $186.97

## Project Description

Marginly is a decentralized derivatives protocol enabling leveraged trading and liquidity provision. It uses isolated margin pools for each trading pair, allowing users to trade with leverage or supply liquidity to earn fees. The protocol operates across multiple chains with factory-deployed pool instances.

### Architecture

All product families share the same core contract logic (MarginlyPool) deployed via factory contracts on each chain. The MarginlyRouter on Ethereum aggregates interactions across pools, while the Vault proxy provides shared infrastructure for asset management.

## Contract Surface Quality

- Indexed contracts: 72; live-surface contracts included: 8 (8 live, 0 unknown).
- Excluded by liveness: 64 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/1 live.
- Detected codebases: aave-v2
- Dependencies extracted: 8; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 3/4 (75.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 4
- Raw deployments: 8
- Audits discovered: 4
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-04 (stale)
- Staleness: 0 fresh, 0 aging, 2 stale, 2 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Quantstamp | Tier 2 | 3 | 75.0% | 2023-10 |
| unknown | Tier 2 | 2 | 50.0% | 2024-04 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MarginlyPool | core_logic | arbitrum | n/a | 5 deployments: arbitrum [`0x0f750f...876d94`](./contracts/arbitrum-42161/0x0f750fbb044037254b5843c6b4a715aa12876d94/); arbitrum `0x53c08a...e93b93`; arbitrum `0x5ceb22...4bce70`; arbitrum `0x87e711...d43b86`; blast `0xb312d6...35b3e5` | ✅ Audited |
| MarginlyFactory | registry | ethereum | n/a | [`0x0721f6...b1d4a5`](./contracts/ethereum-1/0x0721f616a6e2d4d7a47eed87d268bf0454b1d4a5/) | ✅ Audited |
| MarginlyRouter | adapter | ethereum | n/a | [`0xcf3306...1223b4`](./contracts/ethereum-1/0xcf33069db942ddcc2f42917f552157249d1223b4/) | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| TimelockWhitelist | governance | ethereum | n/a | [`0x8cdaf2...7b8aa5`](./contracts/ethereum-1/0x8cdaf202ebe2f38488074dcfca08c0b0cb7b8aa5/) | ⚠️ Unaudited |

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
| [Quantstamp-marginly-final-report.pdf (also discovered via alternate URL)](https://github.com/eq-lab/marginly/blob/main/audit/Quantstamp-marginly-final-report.pdf) | Quantstamp | Audit | 2023-10 | stale | Direct | contract_name | 7 | high |
| [Marginly-Oracle-Feature-Final-Report.pdf (also discovered via alternate URL)](https://github.com/eq-lab/marginly/blob/main/audit/Marginly-Oracle-Feature-Final-Report.pdf) | unknown | Audit | 2024-04 | stale | Direct | contract_name | 6 | high |
| [Report 1](https://698120604-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FQiFBW4qPpAjrKQaezZ3s%2Fuploads%2F44riQdio4FbpMe9uuLzp%2Fmarginly-final-report.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Report 2](https://698120604-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FQiFBW4qPpAjrKQaezZ3s%2Fuploads%2FQeydGxQVvNL332dL7Xi2%2FMarginly%20Oracle%20Feature%20Final%20Report%202.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x8cdaf2...7b8aa5`](./contracts/ethereum-1/0x8cdaf202ebe2f38488074dcfca08c0b0cb7b8aa5/) | TimelockWhitelist | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=136

Zero-match audit list:

- [13465] Report 1
- [13466] Report 2

Fork inheritance lineage and inherited audits are included when available.
