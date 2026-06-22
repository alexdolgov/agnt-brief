# Agentic Audit Brief: Saddle Finance

⚠️ Lifecycle status: DEAD - TVL dropped 10.0% over 90 days

## Project Overview

- Project: Saddle Finance (`saddle-finance`)
- Lifecycle: dead (Tier 0, 99.7% below peak)
- Generated: 2026-06-21T15:05:30.643Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: arbitrum, ethereum, fantom, kava, optimism
- Contract surface: 10 unique implementations (16 raw deployments)
- DeFi Llama TVL: $777,233.92
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Saddle Finance is a decentralized exchange (DEX) optimized for trading pegged-value assets, such as stablecoins and wrapped tokens, with low slippage. It uses automated market maker (AMM) pools and supports multi-chain deployments.

### Architecture

The Saddle Finance family relies on MasterRegistry contracts to manage pool deployments and configurations across chains. The Swap, MetaSwap, and SwapFlashLoan pools use shared utility libraries (SwapUtils, MetaSwapUtils) for core AMM logic, while the TetherToken family is an external dependency that may interact with pools but is not part of Saddle's infrastructure.

## Contract Surface Quality

- Indexed contracts: 170; live-surface contracts included: 16 (13 live, 3 unknown).
- Excluded by liveness: 146 inactive, 8 singleton, 0 uninitialized.
- Deployment units: 0/3 live.
- Detected codebases: none
- Unverified dependencies: 3/21.

## Audit Coverage Summary

- Verified implementations audited: 0/7 (0.0%)
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 10
- Raw deployments: 16
- Audits discovered: 3
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2020-12 (stale)
- Staleness: 0 fresh, 0 aging, 3 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MetaSwap | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x5dd186...e58c9c`](./contracts/arbitrum-42161/0x5dd186f8809147f96d3ffc4508f3c82694e58c9c/); arbitrum `0xa5bd85...fd4706` | ⚠️ Unaudited |
| MiniChefV2 | unknown | arbitrum | n/a | 2 deployments: ethereum `0x691ef7...d58534`; arbitrum [`0x206904...f29b55`](./contracts/arbitrum-42161/0x2069043d7556b1207a505eb459d18d908df29b55/) | ⚠️ Unaudited |
| RetroactiveVesting | operational_periphery | ethereum | n/a | [`0x5dca27...198a03`](./contracts/ethereum-1/0x5dca270671935cf3df78bd8373c22be250198a03/) | ⚠️ Unaudited |
| SDL | unknown | ethereum | n/a | [`0xf1dc50...4f6871`](./contracts/ethereum-1/0xf1dc500fde233a4055e25e5bbf516372bc4f6871/) | ⚠️ Unaudited |
| SwapFlashLoan | unknown | arbitrum | n/a | 4 deployments: optimism `0x5847f8...993628`; optimism `0xf6c2e0...fe08b5`; arbitrum [`0x401afb...9b4849`](./contracts/arbitrum-42161/0x401afbc31ad2a3bc0ed8960d63efcdea749b4849/); arbitrum `0xfeea4d...e56ee0` | ⚠️ Unaudited |
| TetherToken | token | ethereum | n/a | [`0xdac17f...831ec7`](./contracts/ethereum-1/0xdac17f958d2ee523a2206206994597c13d831ec7/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6ec5dd...44d57c`](./contracts/ethereum-1/0x6ec5dd7d8e396973588f0defd79dca04f844d57c/); ethereum `0xd2751c...e73bb2` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | fantom | n/a | `0x700310...9407d0` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xba684b...d44418` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0x3a0c2a...17fe0f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [10-29-2020_Certik.pdf](https://github.com/saddle-finance/saddle-audits/blob/master/10-29-2020_Certik.pdf) | CertiK | Audit | 2020-10 | stale | Direct | contract_name | 0 | n/a |
| [DL audit link](https://www.openzeppelin.com/news/saddle-contracts-audit) | OpenZeppelin | Audit | 2020-12 | stale | Direct | contract_name | 0 | n/a |
| [12-09-2020_Quantstamp.pdf](https://github.com/saddle-finance/saddle-audits/blob/master/12-09-2020_Quantstamp.pdf) | Quantstamp | Audit | 2020-12 | stale | Direct | contract_name | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x5dd186...e58c9c`](./contracts/arbitrum-42161/0x5dd186f8809147f96d3ffc4508f3c82694e58c9c/) | MetaSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x206904...f29b55`](./contracts/arbitrum-42161/0x2069043d7556b1207a505eb459d18d908df29b55/) | MiniChefV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5dca27...198a03`](./contracts/ethereum-1/0x5dca270671935cf3df78bd8373c22be250198a03/) | RetroactiveVesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf1dc50...4f6871`](./contracts/ethereum-1/0xf1dc500fde233a4055e25e5bbf516372bc4f6871/) | SDL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x401afb...9b4849`](./contracts/arbitrum-42161/0x401afbc31ad2a3bc0ed8960d63efcdea749b4849/) | SwapFlashLoan | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6ec5dd...44d57c`](./contracts/ethereum-1/0x6ec5dd7d8e396973588f0defd79dca04f844d57c/) | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: extraction_exact=47

Zero-match audit list:

- [13800] 10-29-2020_Certik.pdf
- [13801] DL audit link
- [13802] 12-09-2020_Quantstamp.pdf

Fork inheritance lineage and inherited audits are included when available.
