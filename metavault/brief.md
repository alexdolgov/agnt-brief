# Agentic Audit Brief: Metavault

⚠️ Lifecycle status: DECLINING - TVL dropped 13.2% over 90 days

## Project Overview

- Project: Metavault (`metavault`)
- Lifecycle: declining (Tier 0, 99.9% below peak)
- Generated: 2026-06-19T22:15:10.666Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: arbitrum, ethereum, linea, polygon
- Contract surface: 12 unique implementations (13 raw deployments)
- DeFi Llama TVL: $10,787.00
- On-chain TVL (included contracts): $9,143.28
- TVL by chain: Arbitrum $9,143.28

## Project Description

Metavault is a decentralized trading and derivatives platform offering spot and perpetual swaps, binary options, and governance. It provides liquidity pools, staking, and a DAO structure for protocol management.

### Architecture

The DAO family governs the protocol and manages MVD/GMVD tokens, while Metavault.Trade and Binary Options operate as separate trading verticals. The Derivatives V2 Store likely provides shared configuration for the trading families.

## Contract Surface Quality

- Indexed contracts: 178; live-surface contracts included: 13 (13 live, 0 unknown).
- Excluded by liveness: 165 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: uniswap-v3
- Unverified dependencies: 6/48.

## Audit Coverage Summary

- Verified implementations audited: 1/12 (8.3%)
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 12
- Raw deployments: 13
- Audits discovered: 1
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $9,143.28
- Latest audit: 2022-09 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $9,143.28 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 8.3% | 2022-09 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MVX | unknown | polygon | n/a | [`0x2760e4...9f0ed7`](./contracts/polygon-137/0x2760e46d9bb43dafcbecaad1f64b93207f9f0ed7/) | ✅ Audited |

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| StandardArbERC20 | token | arbitrum | unit-40437 | [`0x15a808...c382b5`](./contracts/arbitrum-42161/0x15a808ed3846d25e88ae868de79f1bcb1ac382b5/) | ⚠️ Unaudited |
| EsMVX | unknown | polygon | n/a | [`0xd1b2f8...2ead61`](./contracts/polygon-137/0xd1b2f8dff8437be57430ee98767d512f252ead61/) | ⚠️ Unaudited |
| GMVDToken | token | arbitrum | n/a | [`0xfa6929...05679b`](./contracts/arbitrum-42161/0xfa69292726a53d62111c9485c03ac551ba05679b/) | ⚠️ Unaudited |
| GovernanceStaking | unknown | ethereum | n/a | [`0x421624...243b4d`](./contracts/ethereum-1/0x42162457006db4da3a7af5b53dfee5a891243b4d/) | ⚠️ Unaudited |
| MVD | unknown | ethereum | n/a | [`0x788b6d...1339d1`](./contracts/ethereum-1/0x788b6d2b37aa51d916f2837ae25b05f0e61339d1/) | ⚠️ Unaudited |
| MVLP | unknown | polygon | n/a | [`0x9f4f8b...43a2e8`](./contracts/polygon-137/0x9f4f8bc00f48663b7c204c96b932c29ccc43a2e8/) | ⚠️ Unaudited |
| MvxUnstaker | core_logic | polygon | n/a | [`0x2dca70...5ed986`](./contracts/polygon-137/0x2dca70cf14f9e07ed568432bf6979719455ed986/) | ⚠️ Unaudited |
| NewVester | operational_periphery | polygon | n/a | [`0x543e07...a8db0b`](./contracts/polygon-137/0x543e07eb4a260e10310fbcf2403e97c762a8db0b/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | linea | n/a | [`0x5979c5...3e7b36`](./contracts/linea-59144/0x5979c5315625276ff99a56f95ee5cc44293e7b36/) | ⚠️ Unaudited |
| StakedMvxTracker | token | polygon | n/a | 2 deployments: polygon [`0xa6ca41...16d59a`](./contracts/polygon-137/0xa6ca41bbf555074ed4d041c1f4551ef48116d59a/); polygon `0xabd6c7...7072eb` | ⚠️ Unaudited |
| VesterWithRatio | operational_periphery | polygon | n/a | [`0x7d3d31...f543fd`](./contracts/polygon-137/0x7d3d31754c11b7409984f421fa9bcd4feaf543fd/) | ⚠️ Unaudited |

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
| [Metavault.Trade_Full_Smart_Contract_Security_Audit.pdf](https://github.com/metavaultorg/trade-contracts/blob/main/Metavault.Trade_Full_Smart_Contract_Security_Audit.pdf) | unknown | Audit | 2022-09 | stale | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | [`0xd1b2f8...2ead61`](./contracts/polygon-137/0xd1b2f8dff8437be57430ee98767d512f252ead61/) | EsMVX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xfa6929...05679b`](./contracts/arbitrum-42161/0xfa69292726a53d62111c9485c03ac551ba05679b/) | GMVDToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x421624...243b4d`](./contracts/ethereum-1/0x42162457006db4da3a7af5b53dfee5a891243b4d/) | GovernanceStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x788b6d...1339d1`](./contracts/ethereum-1/0x788b6d2b37aa51d916f2837ae25b05f0e61339d1/) | MVD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x9f4f8b...43a2e8`](./contracts/polygon-137/0x9f4f8bc00f48663b7c204c96b932c29ccc43a2e8/) | MVLP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2dca70...5ed986`](./contracts/polygon-137/0x2dca70cf14f9e07ed568432bf6979719455ed986/) | MvxUnstaker | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x543e07...a8db0b`](./contracts/polygon-137/0x543e07eb4a260e10310fbcf2403e97c762a8db0b/) | NewVester | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xa6ca41...16d59a`](./contracts/polygon-137/0xa6ca41bbf555074ed4d041c1f4551ef48116d59a/) | StakedMvxTracker | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x7d3d31...f543fd`](./contracts/polygon-137/0x7d3d31754c11b7409984f421fa9bcd4feaf543fd/) | VesterWithRatio | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 10 |
| upstream | 1 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=7

Fork inheritance lineage and inherited audits are included when available.
