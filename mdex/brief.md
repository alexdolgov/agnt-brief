# Agentic Audit Brief: MDEX

⚠️ Lifecycle status: DECLINING - TVL changed 2.1% over 90 days

## Project Overview

- Project: MDEX (`mdex`)
- Website: [https://mdex.com/](https://mdex.com/)
- Lifecycle: declining (Tier 1, dead)
- Generated: 2026-06-11T00:56:40.087Z
- Pipeline run: v2-pipeline-2026-06-11-5b3b54-2b99
- Chains: bsc, heco
- Contract surface: 13 unique implementations (24 raw deployments)
- DeFi Llama TVL: $1,374,300.40
- On-chain TVL (included contracts): $235,538.61
- TVL by chain: Bsc $235,538.61

## Project Description

MDEX is an AMM/DEX and broader DeFi platform tracked on Binance Smart Chain/BSC, Heco and Bittorrent, with components including the MDX governance token, factory/router swap infrastructure, liquidity/pool and swap-mining contracts, repurchase/blackhole mechanisms, and DAO/governance-related features. Its homepage also positions the platform around DEX, IMO, DAO and staking functionality.

### Architecture

The MDEX family consists of the MdxToken and an unnamed supporting contract, likely handling core DEX logic such as swapping or liquidity management. Both contracts are deployed from the same deployer cluster, indicating a unified infrastructure.

## Audit Coverage Summary

- Verified implementations audited: 6/7 (85.7%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 6
- Unique implementations: 13
- Raw deployments: 24
- Audits discovered: 3
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): $20,172.28
- Latest audit: 2021-04 (stale)
- Staleness: 0 fresh, 0 aging, 3 stale, 0 unknown
- Tier 1 coverage: 85.7% (SlowMist)
- Note: This protocol is classified as [declining]. ASD of $20,172.28 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SlowMist | Tier 1 | 6 | 85.7% | 2021-03 |
| CertiK | Tier 2 | 5 | 71.4% | 2021-04 |
| Fairyproof | Tier 2 | 3 | 42.9% | 2021-04 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| MdxToken | token | bsc | [`0x9c65ab...e3a739`](./contracts/bsc-56/0x9c65ab58d8d978db963e63f2bfb7121627e3a739/) | ✅ Audited |
| BlackHole | unknown | bsc | [`0x6f3dee...4cd3d1`](./contracts/bsc-56/0x6f3dee41f6f216d1e78670b7e53002ba0c4cd3d1/) | ✅ Audited |
| MdexFactory | registry | bsc | [`0x3cd1c4...8062b8`](./contracts/bsc-56/0x3cd1c46068daea5ebb0d3f55f6915b10648062b8/) | ✅ Audited |
| MdexRouter | adapter | bsc | 4 deployments: bsc [`0x0384e9...bc4333`](./contracts/bsc-56/0x0384e9ad329396c3a6a401243ca71633b2bc4333/); bsc `0x518a6e...cf1a3c`; bsc `0x62c1a0...b87059`; bsc `0x7dae51...af1ba8` | ✅ Audited |
| Repurchase | unknown | bsc | 9 deployments: bsc [`0x1308af...27110f`](./contracts/bsc-56/0x1308af6853b449d7604c7544cb2170248527110f/); bsc `0x187cc3...68b2bd`; bsc `0x626533...60bb22`; bsc `0x84e087...036f44`; bsc `0x98b54b...387f59`; bsc `0xbef2db...5a61ec`; bsc `0xc151cb...c11251`; bsc `0xd6a50d...21b3a6`; bsc `0xf082f6...56453e` | ✅ Audited |
| SwapMining | unknown | bsc | [`0x782395...b44c11`](./contracts/bsc-56/0x782395303692abed877d2737aa7982345eb44c11/) | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| BSCPool | core_logic | bsc | [`0xc48fe2...728a50`](./contracts/bsc-56/0xc48fe252aa631017df253578b1405ea399728a50/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (6)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | bsc | `0x9458f7...abef8e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xba6f7d...3392d6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xbd21cd...570f5e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd6cd59...158047` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xfa2eeb...21214f` | ❓ Unverified |
| UnnamedContract | unknown | heco | `0xb0b670...22d941` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://mdex.com/slowmist_bsc.pdf) | SlowMist | Audit | 2021-03 | stale | Direct | contract_name | 17 | high |
| [fairyproof_bsc.pdf](https://mdex.com/fairyproof_bsc.pdf) | Fairyproof | Audit | 2021-04 | stale | Direct | contract_name | 11 | high |
| [DL audit link](https://mdex.com/certik_bsc.pdf) | CertiK | Audit | 2021-04 | stale | Direct | contract_name | 13 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0xc48fe2...728a50`](./contracts/bsc-56/0xc48fe252aa631017df253578b1405ea399728a50/) | BSCPool | core_logic | $20,172.28 | Verified native implementation with $20,172.28 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: extraction_exact=41

Fork inheritance lineage and inherited audits are included when available.
