# Agentic Audit Brief: Sonic Market

⚠️ Lifecycle status: DECLINING - TVL dropped 24.4% over 90 days

## Project Overview

- Project: Sonic Market (`sonic-market`)
- Website: [https://www.sonic.market](https://www.sonic.market)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-19T19:28:59.625Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: sonic
- Contract surface: 4 unique implementations (4 raw deployments)
- DeFi Llama TVL: $3,296.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Sonic Market is a decentralized exchange (DEX) on the Sonic chain that combines an order book model with automated market maker (AMM) liquidity vaults. It enables users to trade tokens via limit orders and provides liquidity through vaults that execute strategies, with staking and governance features.

### Architecture

The OrderBook family relies on the BookManager for governance and order management, while the BookViewer provides read access to order book data. The Operator contract likely manages order execution and interacts with the AMM liquidity vaults (LiquidityVault, SimpleOracleStrategy) and staking (StakingPool) to settle trades and provide liquidity.

## Contract Surface Quality

- Indexed contracts: 58; live-surface contracts included: 4 (4 live, 0 unknown).
- Excluded by liveness: 22 inactive, 32 singleton, 0 uninitialized.
- Deployment units: 0/16 live.
- Detected codebases: none
- Unverified dependencies: 1/5.

## Audit Coverage Summary

- Verified implementations audited: 1/4 (25.0%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 4
- Raw deployments: 4
- Audits discovered: 2
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-01 (aging)
- Staleness: 0 fresh, 2 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 25.0% | 2025-01 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Minter | operational_periphery | sonic | n/a | [`0x466795...0803a7`](./contracts/sonic-146/0x466795c0eae3c44a6dcbb6db0534f7019e0803a7/) | ✅ Audited |

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BookManager | governance | sonic | n/a | [`0xd4ad5e...17c636`](./contracts/sonic-146/0xd4ad5ed9e1436904624b6db8b1be31f36317c636/) | ⚠️ Unaudited |
| Controller | governance | sonic | n/a | [`0xca6c15...2eadd1`](./contracts/sonic-146/0xca6c15b7b03ca69087b85b8ea690ed44a92eadd1/) | ⚠️ Unaudited |
| SonicMarketGem | unknown | sonic | n/a | [`0x3bed0d...4ed952`](./contracts/sonic-146/0x3bed0daf59a0a6fc8d2aefff015600641c4ed952/) | ⚠️ Unaudited |

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
| [DL audit link](https://docs.clober.io/assets/files/Clober_Liquidity_Vault_v2_Audit_Report_by_Trust_Security-7d8bcf5e7f6b488122f7974aef1d70c7.pdf) | unknown | Audit | 2024-12 | aging | Direct | contract_name | 0 | n/a |
| [DL audit link](https://docs.clober.io/assets/files/2025_1_Clober_LiquidityVault-50ac1ebac2c19b9449389bcdf1c788bf.pdf) | unknown | Audit | 2025-01 | aging | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| sonic | [`0xd4ad5e...17c636`](./contracts/sonic-146/0xd4ad5ed9e1436904624b6db8b1be31f36317c636/) | BookManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xca6c15...2eadd1`](./contracts/sonic-146/0xca6c15b7b03ca69087b85b8ea690ed44a92eadd1/) | Controller | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x3bed0d...4ed952`](./contracts/sonic-146/0x3bed0daf59a0a6fc8d2aefff015600641c4ed952/) | SonicMarketGem | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=7

Zero-match audit list:

- [13862] DL audit link

Fork inheritance lineage and inherited audits are included when available.
