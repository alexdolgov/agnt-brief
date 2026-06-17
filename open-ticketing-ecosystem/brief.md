# Agentic Audit Brief: OPEN Ticketing Ecosystem

## Project Overview

- Project: OPEN Ticketing Ecosystem (`open-ticketing-ecosystem`)
- Website: [https://onopen.xyz](https://onopen.xyz)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-06-17T07:00:41.813Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: base, ethereum, polygon
- Contract surface: 6 unique implementations (9 raw deployments)
- DeFi Llama TVL: $817,650.80
- On-chain TVL (included contracts): $3,431,519.23
- TVL by chain: Ethereum $3,226,466.17 | Polygon $205,053.06

## Project Description

The OPEN Ticketing Ecosystem is a decentralized event ticketing protocol that enables event creation, ticket sales, and on-chain revenue distribution. It uses a modular architecture with factories, registries, and economic models to manage events and OPN-based ticketing fees or ecosystem fuel across multiple chains.

### Architecture

The Event Management family relies on the Registry and Auth for access control, while the Economics & Fuel family uses the PriceOracle for conversions and the Token family for fee payments. All families share the Auth contract for permissioned operations, and the EconomicsFactory likely deploys Economics instances tied to events.

## Contract Surface Quality

- Indexed contracts: 168; live-surface contracts included: 9 (9 live, 0 unknown).
- Excluded by liveness: 134 inactive, 25 singleton, 0 uninitialized.
- Deployment units: 2/22 live.
- Detected codebases: none
- Dependencies extracted: 14; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/6 (0.0%)
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 6
- Raw deployments: 9
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $3,431,519.23
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| OPNToken | token | ethereum | n/a | [`0xc28eb2...eb6509`](./contracts/ethereum-1/0xc28eb2250d1ae32c7e74cfb6d6b86afc9beb6509/) | ⚠️ Unaudited |
| GovernanceLockedRevenueDistributionToken | token | ethereum | n/a | 4 deployments: ethereum [`0x3e49e9...9f1a04`](./contracts/ethereum-1/0x3e49e9c890cd5b015a18ed76e7a4093f569f1a04/); ethereum `0x686e85...03fc88`; polygon [`0x3e49e9...9f1a04`](./contracts/polygon-137/0x3e49e9c890cd5b015a18ed76e7a4093f569f1a04/); polygon `0x686e85...03fc88` | ⚠️ Unaudited |
| UChildERC20 | token | polygon | unit-25471 | [`0x7844f7...78c2d5`](./contracts/polygon-137/0x7844f79fc841e4f92d974c417031c76f8578c2d5/) | ⚠️ Unaudited |
| getNFT_ERC721V3 | unknown | polygon | unit-25464 | [`0x205524...a452f4`](./contracts/polygon-137/0x2055244a719229d669488e389388f2d653a452f4/) | ⚠️ Unaudited |
| OPNMigration | operational_periphery | ethereum | n/a | [`0xb4cfd7...dd31da`](./contracts/ethereum-1/0xb4cfd748b23c103f73c10259171ecc5ef1dd31da/) | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | base | n/a | [`0x9a6d24...a31dbe`](./contracts/base-8453/0x9a6d24c02ec35ad970287ee8296d4d6552a31dbe/) | ⚠️ Unaudited |

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

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xc28eb2...eb6509`](./contracts/ethereum-1/0xc28eb2250d1ae32c7e74cfb6d6b86afc9beb6509/) | OPNToken | token | $2,669,303.67 | Verified native implementation with $2,669,303.67 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3e49e9...9f1a04`](./contracts/ethereum-1/0x3e49e9c890cd5b015a18ed76e7a4093f569f1a04/) | GovernanceLockedRevenueDistributionToken | token | $594,389.89 | Verified native implementation with $594,389.89 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb4cfd7...dd31da`](./contracts/ethereum-1/0xb4cfd748b23c103f73c10259171ecc5ef1dd31da/) | OPNMigration | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
