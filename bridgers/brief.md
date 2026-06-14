# Agentic Audit Brief: Bridgers

## Project Overview

- Project: Bridgers (`bridgers`)
- Website: [https://bridgers.ai/](https://bridgers.ai/)
- Lifecycle: active (Tier 0, 40.4% below peak)
- Generated: 2026-06-14T10:35:02.320Z
- Pipeline run: v2-pipeline-2026-06-14-ec5560-df6c
- Chains: arbitrum, avalanche, base, berachain, blast, bsc, celo, ethereum, fantom, linea, mantle, opbnb, optimism, polygon, sonic, zksync-era
- Contract surface: 11 unique implementations (18 raw deployments)
- DeFi Llama TVL: $1,715,355.40
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
- Unverified implementations: 9
- Unique implementations: 11
- Raw deployments: 18
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
| Bridgers | unknown | sonic | 8 deployments: ethereum `0xb68576...89895b`; optimism `0xb68576...89895b`; bsc `0xb68576...89895b`; polygon `0xb68576...89895b`; sonic [`0x89a70b...48d693`](./contracts/sonic-146/0x89a70b162be7dbc8b5e7579066fa58190c48d693/); arbitrum `0xb68576...89895b`; avalanche `0xb68576...89895b`; berachain [`0x89a70b...48d693`](./contracts/berachain-80094/0x89a70b162be7dbc8b5e7579066fa58190c48d693/) | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (9)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | opbnb | `0x8f957e...594dd1` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x74b238...58c76d` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0xb68576...89895b` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x2042ec...c8b7eb` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xd1088d...1be3e6` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xa18968...9f3501` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xd1088d...1be3e6` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x815989...2acd0e` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xd1088d...1be3e6` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://skynet.certik.com/projects/bridgers) | CertiK | Audit | 2023-06 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x163f8c...318753`](./contracts/ethereum-1/0x163f8c2467924be0ae7b5347228cabf260318753/) | WLD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 9 |

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
