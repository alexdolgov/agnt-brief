# Agentic Audit Brief: Merchant Moe

⚠️ Lifecycle status: DECLINING - TVL dropped 52.5% over 90 days

## Project Overview

- Project: Merchant Moe (`merchant-moe`)
- Website: [https://merchantmoe.com/](https://merchantmoe.com/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-19T06:14:28.391Z
- Pipeline run: v2-pipeline-2026-06-19-32b207-c216
- Chains: mantle
- Contract surface: 14 unique implementations (24 raw deployments)
- DeFi Llama TVL: $21,558,728.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Merchant Moe is a decentralized exchange (DEX) on Mantle that uses a Liquidity Book model for efficient trading. It also offers staking and yield farming through its MOE token and related contracts.

### Architecture

The LBFactory creates and manages liquidity pools, while the Moe token is used for governance and incentives. Staking and farming contracts (MasterChef, MoeStaking, VeMoe) interact with the Moe token to distribute rewards, and the JoeDexLens provides on-chain data for the DEX.

## Contract Surface Quality

- Indexed contracts: 138; live-surface contracts included: 24 (23 live, 1 unknown).
- Excluded by liveness: 105 inactive, 9 singleton, 0 uninitialized.
- Deployment units: 2/7 live.
- Detected codebases: uniswap-v2
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 5/11 (45.5%)
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 14
- Raw deployments: 24
- Audits discovered: 1
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-12 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Paladin | Tier 2 | 5 | 45.5% | 2023-12 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MasterChef | unknown | mantle | unit-38495 | [`0xa756f7...1955b5`](./contracts/mantle-5000/0xa756f7d419e1a5cbd656a438443011a7de1955b5/) | ✅ Audited |
| Moe | unknown | mantle | n/a | [`0x4515a4...dc00c9`](./contracts/mantle-5000/0x4515a45337f461a11ff0fe8abf3c606ae5dc00c9/) | ✅ Audited |
| MoeRouter | adapter | mantle | n/a | [`0xeaee7e...e7232a`](./contracts/mantle-5000/0xeaee7ee68874218c3558b40063c42b82d3e7232a/) | ✅ Audited |
| VeMoe | unknown | mantle | unit-38493 | [`0x55160b...01dee7`](./contracts/mantle-5000/0x55160b0f39848a7b844f3a562210489df301dee7/) | ✅ Audited |
| VestingContract | operational_periphery | mantle | n/a | 11 deployments: mantle [`0x1549de...2a14f6`](./contracts/mantle-5000/0x1549de86b2de4f619663841b276b1a62002a14f6/); mantle `0x315299...05a8c5`; mantle `0x3905f5...c157cd`; mantle `0x55d86a...7bb554`; mantle `0x55e583...83b689`; mantle `0x55edc7...993fbb`; mantle `0x78bb8f...02894f`; mantle `0x920803...a925da`; mantle `0x9b86c2...80300f`; mantle `0xb9e9dc...98f4c4`; mantle `0xffdeab...741602` | ✅ Audited |

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| FeeManager | governance | mantle | n/a | [`0x982ce5...929b12`](./contracts/mantle-5000/0x982ce53ab2c9d7b841af04d8df87879f73929b12/) | ⚠️ Unaudited |
| LBFactory | registry | mantle | n/a | [`0xa66306...104054`](./contracts/mantle-5000/0xa6630671775c4ea2743840f9a5016dcf2a104054/) | ⚠️ Unaudited |
| LBRouter | adapter | mantle | n/a | [`0x013e13...d21e3a`](./contracts/mantle-5000/0x013e138ef6008ae5fdfde29700e3f2bc61d21e3a/) | ⚠️ Unaudited |
| OdosRouterV2 | adapter | mantle | n/a | [`0xd9f4e8...c26745`](./contracts/mantle-5000/0xd9f4e85489adcd0baf0cd63b4231c6af58c26745/) | ⚠️ Unaudited |
| Router | adapter | mantle | n/a | [`0x45a62b...e2c86b`](./contracts/mantle-5000/0x45a62b090df48243f12a21897e7ed91863e2c86b/) | ⚠️ Unaudited |
| RouterLogic | adapter | mantle | n/a | [`0x4e2abc...63ff20`](./contracts/mantle-5000/0x4e2abccf08bb2103f5dc9c6517fcf34cc163ff20/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (3)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | mantle | n/a | `0x031839...b89eef` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x0980d1...658aa6` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x7097f0...e61476` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Merchant Moe Audit Report](https://paladinsec.co/projects/merchant-moe) | Paladin | Audit | 2023-12 | stale | Direct | contract_name | 14 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| mantle | [`0x982ce5...929b12`](./contracts/mantle-5000/0x982ce53ab2c9d7b841af04d8df87879f73929b12/) | FeeManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0xa66306...104054`](./contracts/mantle-5000/0xa6630671775c4ea2743840f9a5016dcf2a104054/) | LBFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x013e13...d21e3a`](./contracts/mantle-5000/0x013e138ef6008ae5fdfde29700e3f2bc61d21e3a/) | LBRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x45a62b...e2c86b`](./contracts/mantle-5000/0x45a62b090df48243f12a21897e7ed91863e2c86b/) | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x4e2abc...63ff20`](./contracts/mantle-5000/0x4e2abccf08bb2103f5dc9c6517fcf34cc163ff20/) | RouterLogic | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 1 |
| standard_library | 2 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=83

Fork inheritance lineage and inherited audits are included when available.
