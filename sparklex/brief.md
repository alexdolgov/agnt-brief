# Agentic Audit Brief: SparkleX

⚠️ Lifecycle status: DECLINING - TVL dropped 94.4% over 90 days

## Project Overview

- Project: SparkleX (`sparklex`)
- Website: [https://sparklex.ai/](https://sparklex.ai/)
- Lifecycle: declining (Tier 0, 98.8% below peak)
- Generated: 2026-06-19T19:40:18.957Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: ethereum
- Contract surface: 15 unique implementations (19 raw deployments)
- DeFi Llama TVL: $5,416.10
- On-chain TVL (included contracts): $5,591.39
- TVL by chain: Ethereum $5,591.39

## Project Description

SparkleX is a yield protocol that automates liquidity provision and management on Uniswap V3. It allows users to deposit tokens into vaults that execute strategies for adding, rebalancing, and removing liquidity to optimize returns.

### Architecture

The Manager contract orchestrates the vault lifecycle, while UserVaultFactory deploys individual UserVault instances for each user. The Uniswap V3 operation contracts (Mint, AddLiquidity, DecreaseLiquidity, etc.) are called by the vaults to execute specific liquidity actions, sharing the same proxy-based upgradeable infrastructure.

## Contract Surface Quality

- Indexed contracts: 23; live-surface contracts included: 19 (19 live, 0 unknown).
- Excluded by liveness: 0 inactive, 4 singleton, 0 uninitialized.
- Deployment units: 7/9 live.
- Detected codebases: none
- Unverified dependencies: 33/109.

## Audit Coverage Summary

- Verified implementations audited: 5/15 (33.3%)
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 15
- Raw deployments: 19
- Audits discovered: 2
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-07 (fresh)
- Staleness: 1 fresh, 1 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 5 | 33.3% | 2025-07 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SparkleXVault | core_logic | ethereum | n/a | 2 deployments: ethereum [`0xbd35b9...1be5f1`](./contracts/ethereum-1/0xbd35b9c345fc95ae2952ad257a6c60f2861be5f1/); ethereum `0xef8629...2d7f61` | ✅ Audited |
| Manager | governance | ethereum | n/a | [`0x5434e6...93cdef`](./contracts/ethereum-1/0x5434e6a1f8d2713002ffa10900f2bccd7693cdef/) | ✅ Audited |
| TokenSwapper | adapter | ethereum | n/a | 4 deployments: ethereum [`0x04ba39...df951d`](./contracts/ethereum-1/0x04ba39db440494bede23bcbfd34a7fb7f9df951d/); ethereum `0x537d5c...dcd2c3`; ethereum `0x782041...86b900`; ethereum `0xd13520...43e202` | ✅ Audited |
| UniswapV3AddLiquidity | unknown | ethereum | unit-39921 | [`0x72c339...54d2cf`](./contracts/ethereum-1/0x72c339914ae39fb068c696230757a9022654d2cf/) | ✅ Audited |
| UniswapV3Mint | unknown | ethereum | unit-39917 | [`0x312db3...af8b46`](./contracts/ethereum-1/0x312db399aa026534d9c224a5f408165a1baf8b46/) | ✅ Audited |

### ⚠️ Verified + Unaudited (10)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ETHUniV3LPFarmingStrategy | core_logic | ethereum | n/a | [`0x58dab0...604f12`](./contracts/ethereum-1/0x58dab09bba10b53ef684eefe45025e1cbf604f12/) | ⚠️ Unaudited |
| LPFarmingHelper | periphery | ethereum | n/a | [`0x04f378...75fc21`](./contracts/ethereum-1/0x04f378cce9fd270fc136fdfc78a8afabd475fc21/) | ⚠️ Unaudited |
| Timelock | governance | ethereum | n/a | [`0x01acc1...150503`](./contracts/ethereum-1/0x01acc1f41c1127b3071b78ca130d340178150503/) | ⚠️ Unaudited |
| TimelockController | governance | ethereum | n/a | [`0x71a470...26339e`](./contracts/ethereum-1/0x71a470e5e6aec4dd95ace57e6419d6119226339e/) | ⚠️ Unaudited |
| TokenSwapperWithFallback | adapter | ethereum | n/a | [`0x347194...d42c52`](./contracts/ethereum-1/0x347194279ed35c7ab41b13cc0affb50847d42c52/) | ⚠️ Unaudited |
| UniswapV3Collect | unknown | ethereum | unit-39924 | [`0xef2612...fb30ab`](./contracts/ethereum-1/0xef2612de4f6ac1144841fbca094628a4fafb30ab/) | ⚠️ Unaudited |
| UniswapV3DecreaseLiquidity | unknown | ethereum | unit-39922 | [`0x85b52f...e24b32`](./contracts/ethereum-1/0x85b52f9505f4af63f541b4f9fb21779777e24b32/) | ⚠️ Unaudited |
| UniswapV3DecreaseLiquiditySwap | unknown | ethereum | unit-39923 | [`0xd99378...200a6a`](./contracts/ethereum-1/0xd9937859c323cb6b37c8ff3e6f3ebbae59200a6a/) | ⚠️ Unaudited |
| UniswapV3StrategyAddBaseTokenOnly | core_logic | ethereum | unit-39920 | [`0x491cc5...cb94af`](./contracts/ethereum-1/0x491cc5dc8b66db1458b10241350bfd1783cb94af/) | ⚠️ Unaudited |
| UniswapV3ZapMint | adapter | ethereum | unit-39919 | [`0x472747...2b1534`](./contracts/ethereum-1/0x47274797a5640ca35ab7c6899d07d9d6d22b1534/) | ⚠️ Unaudited |

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
| [PeckShield-Audit-Report-SparkleX-Farming-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-SparkleX-Farming-v1.0.pdf) | PeckShield | Audit | 2025-06 | aging | Direct | contract_name | 3 | high |
| [PeckShield-Audit-Report-SparkleX-Earning-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-SparkleX-Earning-v1.0.pdf) | PeckShield | Audit | 2025-07 | fresh | Direct | contract_name | 7 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x58dab0...604f12`](./contracts/ethereum-1/0x58dab09bba10b53ef684eefe45025e1cbf604f12/) | ETHUniV3LPFarmingStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04f378...75fc21`](./contracts/ethereum-1/0x04f378cce9fd270fc136fdfc78a8afabd475fc21/) | LPFarmingHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x01acc1...150503`](./contracts/ethereum-1/0x01acc1f41c1127b3071b78ca130d340178150503/) | Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x347194...d42c52`](./contracts/ethereum-1/0x347194279ed35c7ab41b13cc0affb50847d42c52/) | TokenSwapperWithFallback | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
| upstream | 0 |
| standard_library | 8 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=16

Fork inheritance lineage and inherited audits are included when available.
