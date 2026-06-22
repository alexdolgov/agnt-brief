# Agentic Audit Brief: Wise Lending

⚠️ Lifecycle status: DEAD - TVL dropped 2.6% over 90 days

## Project Overview

- Project: Wise Lending (`wise-lending`)
- Lifecycle: dead (Tier 0, 100% below peak)
- Generated: 2026-06-19T12:41:31.244Z
- Pipeline run: v2-pipeline-2026-06-19-727228-cc10
- Chains: arbitrum, ethereum
- Contract surface: 8 unique implementations (15 raw deployments)
- DeFi Llama TVL: $36.00
- On-chain TVL (included contracts): $23.84
- TVL by chain: Ethereum $23.84

## Project Description

Wise Lending is a decentralized lending protocol that enables users to supply and borrow assets with dynamic interest rates and fee management. It operates across Ethereum and Arbitrum One, providing non-custodial liquidity markets.

### Architecture

The protocol consists of a single product family with two core contract types: WiseLending handles all lending logic, while FeeManager governs fee parameters. Multiple instances exist on different chains, sharing the same architecture but operating independently.

## Contract Surface Quality

- Indexed contracts: 105; live-surface contracts included: 15 (15 live, 0 unknown).
- Excluded by liveness: 90 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: uniswap-v2
- Unverified dependencies: 1/15.

## Audit Coverage Summary

- Verified implementations audited: 4/8 (50.0%)
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 8
- Raw deployments: 15
- Audits discovered: 3
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-02 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 2 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 4 | 50.0% | n/a |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| WiseLending | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x78190e...5160ca`](./contracts/ethereum-1/0x78190e4c7c7b2c2c3b0562f1f155a1fc2f5160ca/); arbitrum `0x9034a4...c87ebf` | ✅ Audited |
| FeeManager | governance | arbitrum | n/a | [`0x90a022...4e8ec6`](./contracts/arbitrum-42161/0x90a022796798f9dba1da0f8645234b284d4e8ec6/) | ✅ Audited |
| PositionNFTs | token | arbitrum | n/a | 2 deployments: ethereum `0xbec57d...999529`; arbitrum [`0x6cd8c8...3298f9`](./contracts/arbitrum-42161/0x6cd8c86f5253f49c06fe913182e14dad313298f9/) | ✅ Audited |
| WiseOracleHub | operational_periphery | ethereum | n/a | [`0x896fc8...05f2d3`](./contracts/ethereum-1/0x896fc8ffc11cda80cf40c373afa9a22d6e05f2d3/) | ✅ Audited |

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BulkDepositWrapper | unknown | ethereum | n/a | 6 deployments: ethereum [`0x229420...87249b`](./contracts/ethereum-1/0x2294202709021d82d1e1623620372103c387249b/); ethereum `0x2f2591...1e2aa9`; ethereum `0x6d87b7...cd0913`; ethereum `0x7276a5...131dd4`; ethereum `0xc4f43c...cc2879`; ethereum `0xce8069...3aa023` | ⚠️ Unaudited |
| LiquidityMaker | unknown | ethereum | n/a | [`0x7d3cad...fdedcc`](./contracts/ethereum-1/0x7d3cad2ef18689625231fc793ac11c1676fdedcc/) | ⚠️ Unaudited |
| LiquidityManager | governance | ethereum | n/a | [`0x7970ed...9cdc80`](./contracts/ethereum-1/0x7970ede037856c14354baaf30b5f882c169cdc80/) | ⚠️ Unaudited |
| WiseRewards | unknown | ethereum | n/a | [`0xc6cbfd...6ee28c`](./contracts/ethereum-1/0xc6cbfd25390aa9ae331fced429482ac4b76ee28c/) | ⚠️ Unaudited |

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
| [View report](https://code4rena.com/reports/2024-02-wise-lending) | Code4rena | Contest | 2024-02 | stale | Direct | n/a | 0 | n/a |
| [report.md](https://github.com/hats-finance/Wise-Lending-0xa2ca45d6e249641e595d50d1d9c69c9e3cd22573/blob/master/report.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 6 | high |
| [DL audit link](https://app.wiselending.com/omni-audit-v1.pdf) | unknown | Audit | n/a | unknown | Direct | contract_name | 6 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x229420...87249b`](./contracts/ethereum-1/0x2294202709021d82d1e1623620372103c387249b/) | BulkDepositWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7d3cad...fdedcc`](./contracts/ethereum-1/0x7d3cad2ef18689625231fc793ac11c1676fdedcc/) | LiquidityMaker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7970ed...9cdc80`](./contracts/ethereum-1/0x7970ede037856c14354baaf30b5f882c169cdc80/) | LiquidityManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc6cbfd...6ee28c`](./contracts/ethereum-1/0xc6cbfd25390aa9ae331fced429482ac4b76ee28c/) | WiseRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=71

Zero-match audit list:

- [14133] View report

Fork inheritance lineage and inherited audits are included when available.
