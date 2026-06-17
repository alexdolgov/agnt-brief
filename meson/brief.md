# Agentic Audit Brief: Meson

## Project Overview

- Project: Meson (`meson`)
- Website: [https://meson.fi/home](https://meson.fi/home)
- Lifecycle: active (Tier 0, 93.9% below peak)
- Generated: 2026-06-17T16:32:13.452Z
- Pipeline run: v2-pipeline-2026-06-17-2a130c-a893
- Chains: arbitrum, base, blast, bsc, ethereum, linea, merlin, optimism, polygon
- Contract surface: 22 unique implementations (23 raw deployments)
- DeFi Llama TVL: $491,410.67
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Meson is a cross-chain connectivity and swap protocol supporting crypto-to-crypto transfers, CEX-to-chain flows, and partner-supported currency, RWA, and fiat-related flows across multiple networks. Its current protocol surface should not be characterized as centered on the FixSupplyToken contract unless confirmed by official contract documentation, and unsupported claims about atomic-swap mechanics or a specific liquidity-provider network should be removed or explicitly qualified.

### Architecture

The Meson family consists of a single product family with one core token contract (FixSupplyToken) and multiple unnamed supporting contracts that likely handle bridge logic, liquidity management, and cross-chain communication. All contracts are deployed by two main deployer clusters, indicating a unified infrastructure.

## Contract Surface Quality

- Indexed contracts: 139; live-surface contracts included: 23 (15 live, 8 unknown).
- Excluded by liveness: 116 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 8/8 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 1/5 (20.0%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 1
- Unverified implementations: 17
- Unique implementations: 22
- Raw deployments: 23
- Audits discovered: 4
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-10 (stale)
- Staleness: 0 fresh, 0 aging, 4 stale, 0 unknown
- Tier 1 coverage: 20.0% (Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SSLab at Georgia Institute of Technology | Tier 2 | 1 | 20.0% | 2022-02 |
| Trail of Bits | Tier 1 | 1 | 20.0% | 2022-10 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UpgradableMeson | unknown | bsc | unit-32820 | [`0x25ab3e...6948d3`](./contracts/bsc-56/0x25ab3efd52e6470681ce037cd546dc60726948d3/) | ✅ Audited |

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| FixSupplyToken | token | blast | n/a | [`0x01593b...a48c5f`](./contracts/blast-81457/0x01593b8aaadc5238f2f5c8597bc1402eb7a48c5f/) | ⚠️ Unaudited |
| ProxyToMeson | proxy | optimism | unit-32819 | [`0x25ab3e...6948d3`](./contracts/optimism-10/0x25ab3efd52e6470681ce037cd546dc60726948d3/) | ⚠️ Unaudited |
| ProxyToMeson | proxy | arbitrum | unit-32823 | [`0x25ab3e...6948d3`](./contracts/arbitrum-42161/0x25ab3efd52e6470681ce037cd546dc60726948d3/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ProxyToMeson | proxy | ethereum | unit-32818 | 2 deployments: ethereum [`0x25ab3e...6948d3`](./contracts/ethereum-1/0x25ab3efd52e6470681ce037cd546dc60726948d3/); polygon [`0x25ab3e...6948d3`](./contracts/polygon-137/0x25ab3efd52e6470681ce037cd546dc60726948d3/) | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (17)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Proxy (impl: 0xa7a9f30f9d2c4a79ff60179e02236b82d0a176b7) | proxy | linea | unit-32824 | `0x25ab3e...6948d3` | ❓ Unverified |
| Proxy (impl: 0xa7a9f30f9d2c4a79ff60179e02236b82d0a176b7) | proxy | blast | unit-32825 | `0x25ab3e...6948d3` | ❓ Unverified |
| UnnamedContract | unknown | merlin | n/a | `0x25ab3e...6948d3` | ❓ Unverified |
| UnnamedContract | unknown | merlin | n/a | `0x480e15...caf78d` | ❓ Unverified |
| UnnamedContract | unknown | merlin | n/a | `0x4b21b9...1c7c6b` | ❓ Unverified |
| UnnamedContract | unknown | merlin | n/a | `0x9bd60d...1bddcd` | ❓ Unverified |
| UnnamedContract | unknown | merlin | n/a | `0xa79374...32b758` | ❓ Unverified |
| UnnamedContract | unknown | merlin | n/a | `0xb5d8b1...24e2cf` | ❓ Unverified |
| UnnamedContract | unknown | merlin | n/a | `0xc21d5d...a4ad2b` | ❓ Unverified |
| UnnamedContract | unknown | merlin | n/a | `0xd55342...11038e` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x21f758...64caf8` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x28ea26...6a8fd3` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x662267...8a819b` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x946d5d...6598e3` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xc8cbb7...37ebfc` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xd4d589...c95512` | ❓ Unverified |
| UpgradableMeson | unknown | base | unit-32822 | `0x25ab3e...6948d3` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [here](https://static.meson.fi/MesonFi-Audit-Report-R1-2022Feb.pdf) | SSLab at Georgia Institute of Technology | Audit | 2022-02 | stale | Direct | contract_name | 2 | high |
| [here](https://static.meson.fi/MesonFi-Audit-Report-R2-2022Jul.pdf) | Trail of Bits | Audit | 2022-07 | stale | Direct | n/a | 0 | n/a |
| [here](https://static.meson.fi/MesonFi-Audit-Report-R3-2022Oct.pdf) | Trail of Bits | Audit | 2022-10 | stale | Direct | contract_name | 2 | high |
| [here](https://static.meson.fi/MesonFi-Audit-Report-R4-2022Oct.pdf) | Trail of Bits | Audit | 2022-10 | stale | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| blast | [`0x01593b...a48c5f`](./contracts/blast-81457/0x01593b8aaadc5238f2f5c8597bc1402eb7a48c5f/) | FixSupplyToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x25ab3e...6948d3`](./contracts/ethereum-1/0x25ab3efd52e6470681ce037cd546dc60726948d3/) | ProxyToMeson | proxy | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x25ab3e...6948d3`](./contracts/optimism-10/0x25ab3efd52e6470681ce037cd546dc60726948d3/) | ProxyToMeson | proxy | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x25ab3e...6948d3`](./contracts/arbitrum-42161/0x25ab3efd52e6470681ce037cd546dc60726948d3/) | ProxyToMeson | proxy | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 17 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: extraction_exact=6

Zero-match audit list:

- [3199] here

Fork inheritance lineage and inherited audits are included when available.
