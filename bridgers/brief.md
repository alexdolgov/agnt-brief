# Agentic Audit Brief: Bridgers

## Project Overview

- Project: Bridgers (`bridgers`)
- Website: [https://bridgers.ai/](https://bridgers.ai/)
- Lifecycle: active (Tier 0, 40.4% below peak)
- Generated: 2026-06-10T22:12:32.439Z
- Pipeline run: v2-pipeline-2026-06-10-5b3b54-7a87
- Chains: arbitrum, avalanche, base, ethereum, fantom, linea, optimism, polygon
- Contract surface: 6 unique implementations (10 raw deployments)
- DeFi Llama TVL: $1,599,052.31
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Bridgers is a cross-chain swap/DEX aggregation protocol that enables users to exchange and transfer assets across multiple blockchains through a unified interface. Third-party ERC20 token contracts such as HBToken, PepeToken, SwftCoin, and similar asset tokens should not be treated as Bridgers-owned core protocol contracts unless separate ownership and protocol-control evidence is available.

### Architecture

The Bridgers family includes core token contracts (HBToken, PepeToken, SwftCoin, WLD) that represent bridged or wrapped assets, while operational periphery contracts handle routing and execution logic. All contracts are deployed across multiple chains to support cross-chain functionality.

## Audit Coverage Summary

- Verified implementations audited: 0/2 (0.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 1
- Unverified implementations: 4
- Unique implementations: 6
- Raw deployments: 10
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-06 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
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
| ethereum | [`0xb68576...89895b`](./contracts/ethereum-1/0xb685760ebd368a891f27ae547391f4e2a289895b/) | Bridgers | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x163f8c...318753`](./contracts/ethereum-1/0x163f8c2467924be0ae7b5347228cabf260318753/) | WLD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2918] DL audit link

Fork inheritance lineage and inherited audits are included when available.
