# Agentic Audit Brief: Grape Finance

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: Grape Finance (`grape-finance`)
- Website: [https://grapefinance.app/](https://grapefinance.app/)
- Lifecycle: unknown (Tier 0, TVL trajectory)
- Generated: 2026-06-19T10:04:43.124Z
- Pipeline run: v2-pipeline-2026-06-19-727228-cc10
- Chains: avalanche
- Contract surface: 15 unique implementations (15 raw deployments)
- DeFi Llama TVL: $0.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Grape Finance is an algorithmic stablecoin protocol on Avalanche that uses seigniorage and bonding mechanisms to maintain a stable value for its native token, Grape.

### Architecture

The protocol consists of a single product family centered around the Grape token contract, with no additional supporting contracts identified in the provided inventory.

## Contract Surface Quality

- Indexed contracts: 138; live-surface contracts included: 15 (15 live, 0 unknown).
- Excluded by liveness: 123 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: uniswap-v2
- Unverified dependencies: 1/37.

## Audit Coverage Summary

- Verified implementations audited: 6/15 (40.0%)
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 15
- Raw deployments: 15
- Audits discovered: 1
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-01 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of n/a represents exposure in a protocol with unknown activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 6 | 40.0% | 2022-01 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Boardroom | unknown | avalanche | n/a | [`0x3ce7bc...d7a972`](./contracts/avalanche-43114/0x3ce7bc78a7392197c569504970017b6eb0d7a972/) | ✅ Audited |
| GBond | unknown | avalanche | n/a | [`0xf18ecd...7378dd`](./contracts/avalanche-43114/0xf18ecd11d87c7479f8cd2ebe29abad04c97378dd/) | ✅ Audited |
| Grape | unknown | avalanche | n/a | [`0x5541d8...5cdac2`](./contracts/avalanche-43114/0x5541d83efad1f281571b343977648b75d95cdac2/) | ✅ Audited |
| Treasury | operational_periphery | avalanche | n/a | [`0xb26054...51640c`](./contracts/avalanche-43114/0xb260547c37bc80fbd1a0d742af71c2324151640c/) | ✅ Audited |
| Wine | unknown | avalanche | n/a | [`0xc55036...0d3a44`](./contracts/avalanche-43114/0xc55036b5348cfb45a932481744645985010d3a44/) | ✅ Audited |
| WineRewardPool | core_logic | avalanche | n/a | [`0x28c65d...5bee49`](./contracts/avalanche-43114/0x28c65dcb3a5f0d456624aff91ca03e4e315bee49/) | ✅ Audited |

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| GrapePriceFeed | operational_periphery | avalanche | n/a | [`0xa917d1...dc3f2b`](./contracts/avalanche-43114/0xa917d187c8754406739d246ca4bb3e4318dc3f2b/) | ⚠️ Unaudited |
| Lotto | unknown | avalanche | n/a | [`0xc9e611...b6de95`](./contracts/avalanche-43114/0xc9e611b577667d722c5e0e36fd8ac43840b6de95/) | ⚠️ Unaudited |
| LPZapper | adapter | avalanche | n/a | [`0x7aaee8...b359f5`](./contracts/avalanche-43114/0x7aaee8897e9da50fdb6e765e16ddffbc8bb359f5/) | ⚠️ Unaudited |
| Raisin | unknown | avalanche | n/a | [`0x4df22a...dcf2c2`](./contracts/avalanche-43114/0x4df22aac6a83c44bf4efa592e170e1a4d1dcf2c2/) | ⚠️ Unaudited |
| SodaPress | unknown | avalanche | n/a | [`0x369e55...5fa597`](./contracts/avalanche-43114/0x369e556f0e7a08e781527d161dac867bb05fa597/) | ⚠️ Unaudited |
| TheWineryNFT | token | avalanche | n/a | [`0x99fec0...91e2df`](./contracts/avalanche-43114/0x99fec0ca5cd461884e2e6e8484c219bbfb91e2df/) | ⚠️ Unaudited |
| VintageAgingBarrel | unknown | avalanche | n/a | [`0x23b91c...c61d5f`](./contracts/avalanche-43114/0x23b91cf132f06f8f71d3f36f59b89c29a3c61d5f/) | ⚠️ Unaudited |
| WinePress | unknown | avalanche | n/a | [`0x2707cc...64979f`](./contracts/avalanche-43114/0x2707ccc10d6c1ce49f72867ab5b85de11e64979f/) | ⚠️ Unaudited |
| Zapper | adapter | avalanche | n/a | [`0x576a1d...a5af8d`](./contracts/avalanche-43114/0x576a1ddbac921c092a839095d02a8717ffa5af8d/) | ⚠️ Unaudited |

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
| [Grape-Finance_final-audit-report_1642499628626.pdf](https://github.com/0xGuard-com/audit-reports/blob/master/grape-finance/Grape-Finance_final-audit-report_1642499628626.pdf) | unknown | Audit | 2022-01 | stale | Direct | contract_name | 6 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | [`0xc9e611...b6de95`](./contracts/avalanche-43114/0xc9e611b577667d722c5e0e36fd8ac43840b6de95/) | Lotto | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x7aaee8...b359f5`](./contracts/avalanche-43114/0x7aaee8897e9da50fdb6e765e16ddffbc8bb359f5/) | LPZapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x369e55...5fa597`](./contracts/avalanche-43114/0x369e556f0e7a08e781527d161dac867bb05fa597/) | SodaPress | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x99fec0...91e2df`](./contracts/avalanche-43114/0x99fec0ca5cd461884e2e6e8484c219bbfb91e2df/) | TheWineryNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x23b91c...c61d5f`](./contracts/avalanche-43114/0x23b91cf132f06f8f71d3f36f59b89c29a3c61d5f/) | VintageAgingBarrel | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x2707cc...64979f`](./contracts/avalanche-43114/0x2707ccc10d6c1ce49f72867ab5b85de11e64979f/) | WinePress | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 12 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=13

Fork inheritance lineage and inherited audits are included when available.
