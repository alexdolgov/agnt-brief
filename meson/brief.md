# Agentic Audit Brief: Meson

## Project Overview

- Project: Meson (`meson`)
- Website: [https://meson.fi/home](https://meson.fi/home)
- Lifecycle: active (Tier 0, 93.9% below peak)
- Generated: 2026-06-17T07:00:52.162Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: blast, merlin
- Contract surface: 15 unique implementations (15 raw deployments)
- DeFi Llama TVL: $491,410.67
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Meson is a cross-chain connectivity and swap protocol supporting crypto-to-crypto transfers, CEX-to-chain flows, and partner-supported currency, RWA, and fiat-related flows across multiple networks. Its current protocol surface should not be characterized as centered on the FixSupplyToken contract unless confirmed by official contract documentation, and unsupported claims about atomic-swap mechanics or a specific liquidity-provider network should be removed or explicitly qualified.

### Architecture

The Meson family consists of a single product family with one core token contract (FixSupplyToken) and multiple unnamed supporting contracts that likely handle bridge logic, liquidity management, and cross-chain communication. All contracts are deployed by two main deployer clusters, indicating a unified infrastructure.

## Contract Surface Quality

- Indexed contracts: 129; live-surface contracts included: 15 (7 live, 8 unknown).
- Excluded by liveness: 114 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/1 (0.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 14
- Unique implementations: 15
- Raw deployments: 15
- Audits discovered: 4
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-10 (stale)
- Staleness: 0 fresh, 0 aging, 4 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| FixSupplyToken | token | blast | n/a | [`0x01593b...a48c5f`](./contracts/blast-81457/0x01593b8aaadc5238f2f5c8597bc1402eb7a48c5f/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (14)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
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

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [here](https://static.meson.fi/MesonFi-Audit-Report-R1-2022Feb.pdf) | SSLab at Georgia Institute of Technology | Audit | 2022-02 | stale | Direct | n/a | 0 | n/a |
| [here](https://static.meson.fi/MesonFi-Audit-Report-R2-2022Jul.pdf) | Trail of Bits | Audit | 2022-07 | stale | Direct | n/a | 0 | n/a |
| [here](https://static.meson.fi/MesonFi-Audit-Report-R3-2022Oct.pdf) | Trail of Bits | Audit | 2022-10 | stale | Direct | n/a | 0 | n/a |
| [here](https://static.meson.fi/MesonFi-Audit-Report-R4-2022Oct.pdf) | Trail of Bits | Audit | 2022-10 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| blast | [`0x01593b...a48c5f`](./contracts/blast-81457/0x01593b8aaadc5238f2f5c8597bc1402eb7a48c5f/) | FixSupplyToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 13 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [3198] here
- [3199] here
- [3200] here
- [3201] here

Fork inheritance lineage and inherited audits are included when available.
