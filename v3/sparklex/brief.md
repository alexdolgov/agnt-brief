# Agentic Audit Brief: SparkleX

## Project Overview

- Project: SparkleX (`sparklex`)
- Website: [https://sparklex.ai/](https://sparklex.ai/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:56.313Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-ae05
- Chains: ethereum
- Contract surface: 17 unique implementations (23 raw deployments)
- DeFi Llama TVL: $5,486.33
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 9 project-authored contract(s) across 1 chain(s); 1 ERC4626 vault, 1 ERC20 token; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 23; live-surface contracts included: 23 (23 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 5/17 (29.4%)
- Deployed-live implementations: 17 of 17 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 5/17
- Verified + Unaudited implementations: 12
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 17
- Raw deployments: 23
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-07 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 5 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 5 | 29.4% | 2025-07 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Manager | governance | ethereum | n/a | [`0x5434e6...93cdef`](./contracts/ethereum-1/0x5434e6a1f8d2713002ffa10900f2bccd7693cdef/) | ✅ Audited |
| SparkleXVault | core_logic | ethereum | n/a | 2 deployments: ethereum [`0xbd35b9...1be5f1`](./contracts/ethereum-1/0xbd35b9c345fc95ae2952ad257a6c60f2861be5f1/); ethereum `0xef8629...2d7f61` | ✅ Audited |
| TokenSwapper | adapter | ethereum | n/a | 4 deployments: ethereum [`0x04ba39...df951d`](./contracts/ethereum-1/0x04ba39db440494bede23bcbfd34a7fb7f9df951d/); ethereum `0x537d5c...dcd2c3`; ethereum `0x782041...86b900`; ethereum `0xd13520...43e202` | ✅ Audited |
| UniswapV3AddLiquidity | unknown | ethereum | n/a | [`0x72c339...54d2cf`](./contracts/ethereum-1/0x72c339914ae39fb068c696230757a9022654d2cf/) | ✅ Audited |
| UniswapV3Mint | unknown | ethereum | n/a | [`0x312db3...af8b46`](./contracts/ethereum-1/0x312db399aa026534d9c224a5f408165a1baf8b46/) | ✅ Audited |

### ⚠️ Verified + Unaudited (12)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ETHUniV3LPFarmingStrategy | core_logic | ethereum | n/a | [`0x58dab0...604f12`](./contracts/ethereum-1/0x58dab09bba10b53ef684eefe45025e1cbf604f12/) | ⚠️ Unaudited |
| LPFarmingHelper | periphery | ethereum | n/a | [`0x04f378...75fc21`](./contracts/ethereum-1/0x04f378cce9fd270fc136fdfc78a8afabd475fc21/) | ⚠️ Unaudited |
| Manager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x29528e...c40a28`](./contracts/ethereum-1/0x29528ea9e96c25322e531df940d81cd9bfc40a28/); ethereum `0x3ec587...f70536` | ⚠️ Unaudited |
| Timelock | governance | ethereum | n/a | [`0x01acc1...150503`](./contracts/ethereum-1/0x01acc1f41c1127b3071b78ca130d340178150503/) | ⚠️ Unaudited |
| TimelockController | governance | ethereum | n/a | [`0x71a470...26339e`](./contracts/ethereum-1/0x71a470e5e6aec4dd95ace57e6419d6119226339e/) | ⚠️ Unaudited |
| TokenSwapperWithFallback | adapter | ethereum | n/a | [`0x347194...d42c52`](./contracts/ethereum-1/0x347194279ed35c7ab41b13cc0affb50847d42c52/) | ⚠️ Unaudited |
| UniswapV3Collect | unknown | ethereum | n/a | [`0xef2612...fb30ab`](./contracts/ethereum-1/0xef2612de4f6ac1144841fbca094628a4fafb30ab/) | ⚠️ Unaudited |
| UniswapV3DecreaseLiquidity | unknown | ethereum | n/a | [`0x85b52f...e24b32`](./contracts/ethereum-1/0x85b52f9505f4af63f541b4f9fb21779777e24b32/) | ⚠️ Unaudited |
| UniswapV3DecreaseLiquiditySwap | unknown | ethereum | n/a | [`0xd99378...200a6a`](./contracts/ethereum-1/0xd9937859c323cb6b37c8ff3e6f3ebbae59200a6a/) | ⚠️ Unaudited |
| UniswapV3StrategyAddBaseTokenOnly | core_logic | ethereum | n/a | [`0x491cc5...cb94af`](./contracts/ethereum-1/0x491cc5dc8b66db1458b10241350bfd1783cb94af/) | ⚠️ Unaudited |
| UniswapV3ZapMint | adapter | ethereum | n/a | [`0x472747...2b1534`](./contracts/ethereum-1/0x47274797a5640ca35ab7c6899d07d9d6d22b1534/) | ⚠️ Unaudited |
| UserVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3677a1...381b56`](./contracts/ethereum-1/0x3677a141b6dbaa7e3cb74406510ca2d116381b56/); ethereum `0x4535e2...f8d2b7` | ⚠️ Unaudited |

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
| [PeckShield-Audit-Report-SparkleX-Farming-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-SparkleX-Farming-v1.0.pdf) | PeckShield | Audit | 2025-06 | aging | Direct | contract_name | 3 | n/a |
| [PeckShield-Audit-Report-SparkleX-Earning-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-SparkleX-Earning-v1.0.pdf) | PeckShield | Audit | 2025-07 | aging | Direct | contract_name | 3 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 17 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=6

Fork inheritance lineage and inherited audits are included when available.
