# Agentic Audit Brief: Bridgers

## Project Overview

- Project: Bridgers (`bridgers`)
- Website: [https://bridgers.ai/](https://bridgers.ai/)
- Lifecycle: active (Tier 0, 40.4% below peak)
- Generated: 2026-05-24T14:41:21.329Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: arbitrum, avalanche, base, ethereum, fantom, linea, optimism, polygon
- Contract surface: 9 unique implementations (13 raw deployments)
- DeFi Llama TVL: $2,082,876.93
- On-chain TVL (included contracts): $71,921,779.86
- TVL by chain: Ethereum $71,921,779.86

## Project Description

Bridgers is a cross-chain DEX aggregator and bridge that enables users to swap and transfer assets across multiple blockchains. It provides liquidity aggregation and token bridging services through a unified interface.

### Architecture

The Bridgers family includes core token contracts (HBToken, PepeToken, SwftCoin, WLD) that represent bridged or wrapped assets, while operational periphery contracts handle routing and execution logic. All contracts are deployed across multiple chains to support cross-chain functionality.

## Audit Coverage Summary

- Verified implementations audited: 0/5 (0.0%)
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 1
- Unverified implementations: 4
- Unique implementations: 9
- Raw deployments: 13
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $71,921,779.86
- Latest audit: 2023-06 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| HBToken | token | ethereum | [`0x6f2596...8aa161`](./contracts/ethereum-1/0x6f259637dcd74c767781e37bc6133cd6a68aa161/) | ⚠️ Unaudited |
| PepeToken | token | ethereum | [`0x698250...311933`](./contracts/ethereum-1/0x6982508145454ce325ddbe47a25d4ec3d2311933/) | ⚠️ Unaudited |
| SwftCoin | unknown | ethereum | [`0x0bb217...0dfc1e`](./contracts/ethereum-1/0x0bb217e40f8a5cb79adf04e1aab60e5abd0dfc1e/) | ⚠️ Unaudited |
| WLD | unknown | ethereum | [`0x163f8c...318753`](./contracts/ethereum-1/0x163f8c2467924be0ae7b5347228cabf260318753/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Bridgers | operational_periphery | ethereum | 5 deployments: ethereum [`0xb68576...89895b`](./contracts/ethereum-1/0xb685760ebd368a891f27ae547391f4e2a289895b/); optimism [`0xb68576...89895b`](./contracts/optimism-10/0xb685760ebd368a891f27ae547391f4e2a289895b/); polygon [`0xb68576...89895b`](./contracts/polygon-137/0xb685760ebd368a891f27ae547391f4e2a289895b/); arbitrum [`0xb68576...89895b`](./contracts/arbitrum-42161/0xb685760ebd368a891f27ae547391f4e2a289895b/); avalanche [`0xb68576...89895b`](./contracts/avalanche-43114/0xb685760ebd368a891f27ae547391f4e2a289895b/) | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | fantom | `0x74b238...58c76d` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0xb68576...89895b` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xa18968...9f3501` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x815989...2acd0e` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://skynet.certik.com/projects/bridgers) | CertiK | Audit | 2023-06 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x6f2596...8aa161`](./contracts/ethereum-1/0x6f259637dcd74c767781e37bc6133cd6a68aa161/) | HBToken | token | $71,921,779.86 | Verified native implementation with $71,921,779.86 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb68576...89895b`](./contracts/ethereum-1/0xb685760ebd368a891f27ae547391f4e2a289895b/) | Bridgers | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x698250...311933`](./contracts/ethereum-1/0x6982508145454ce325ddbe47a25d4ec3d2311933/) | PepeToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0bb217...0dfc1e`](./contracts/ethereum-1/0x0bb217e40f8a5cb79adf04e1aab60e5abd0dfc1e/) | SwftCoin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x163f8c...318753`](./contracts/ethereum-1/0x163f8c2467924be0ae7b5347228cabf260318753/) | WLD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2918] DL audit link

Fork inheritance lineage and inherited audits are included when available.
