# Agentic Audit Brief: MDEX

⚠️ Lifecycle status: DECLINING - TVL changed 2.1% over 90 days

## Project Overview

- Project: MDEX (`mdex`)
- Website: [https://mdex.com/](https://mdex.com/)
- Lifecycle: declining (Tier 1, dead)
- Generated: 2026-06-18T20:19:17.436Z
- Pipeline run: v2-pipeline-2026-06-18-32b207-4ae8
- Chains: bsc, heco
- Contract surface: 6 unique implementations (8 raw deployments)
- DeFi Llama TVL: $1,286,861.99
- On-chain TVL (included contracts): $235,538.61
- TVL by chain: Bsc $235,538.61

## Project Description

MDEX is an AMM/DEX and broader DeFi platform tracked on Binance Smart Chain/BSC, Heco and Bittorrent, with components including the MDX governance token, factory/router swap infrastructure, liquidity/pool and swap-mining contracts, repurchase/blackhole mechanisms, and DAO/governance-related features. Its homepage also positions the platform around DEX, IMO, DAO and staking functionality.

### Architecture

The MDEX family consists of the MdxToken and an unnamed supporting contract, likely handling core DEX logic such as swapping or liquidity management. Both contracts are deployed from the same deployer cluster, indicating a unified infrastructure.

## Contract Surface Quality

- Indexed contracts: 24; live-surface contracts included: 8 (7 live, 1 unknown).
- Excluded by liveness: 16 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: uniswap-v2
- Unverified dependencies: 1/4.

## Audit Coverage Summary

- Verified implementations audited: 4/5 (80.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 6
- Raw deployments: 8
- Audits discovered: 3
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): $20,172.28
- Latest audit: 2021-04 (stale)
- Staleness: 0 fresh, 0 aging, 3 stale, 0 unknown
- Tier 1 coverage: 80.0% (SlowMist)
- Note: This protocol is classified as [declining]. ASD of $20,172.28 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SlowMist | Tier 1 | 4 | 80.0% | 2021-03 |
| CertiK | Tier 2 | 3 | 60.0% | 2021-04 |
| Fairyproof | Tier 2 | 2 | 40.0% | 2021-04 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MdxToken | token | bsc | n/a | [`0x9c65ab...e3a739`](./contracts/bsc-56/0x9c65ab58d8d978db963e63f2bfb7121627e3a739/) | ✅ Audited |
| MdexFactory | registry | bsc | n/a | [`0x3cd1c4...8062b8`](./contracts/bsc-56/0x3cd1c46068daea5ebb0d3f55f6915b10648062b8/) | ✅ Audited |
| MdexRouter | adapter | bsc | n/a | 3 deployments: bsc [`0x0384e9...bc4333`](./contracts/bsc-56/0x0384e9ad329396c3a6a401243ca71633b2bc4333/); bsc `0x62c1a0...b87059`; bsc `0x7dae51...af1ba8` | ✅ Audited |
| SwapMining | unknown | bsc | n/a | [`0x782395...b44c11`](./contracts/bsc-56/0x782395303692abed877d2737aa7982345eb44c11/) | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BSCPool | core_logic | bsc | n/a | [`0xc48fe2...728a50`](./contracts/bsc-56/0xc48fe252aa631017df253578b1405ea399728a50/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | heco | n/a | `0xb0b670...22d941` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://mdex.com/slowmist_bsc.pdf) | SlowMist | Audit | 2021-03 | stale | Direct | contract_name | 6 | high |
| [fairyproof_bsc.pdf](https://mdex.com/fairyproof_bsc.pdf) | Fairyproof | Audit | 2021-04 | stale | Direct | contract_name | 2 | high |
| [DL audit link](https://mdex.com/certik_bsc.pdf) | CertiK | Audit | 2021-04 | stale | Direct | contract_name | 3 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0xc48fe2...728a50`](./contracts/bsc-56/0xc48fe252aa631017df253578b1405ea399728a50/) | BSCPool | core_logic | $20,172.28 | Verified native implementation with $20,172.28 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: extraction_exact=41

Fork inheritance lineage and inherited audits are included when available.
