# Agentic Audit Brief: Goose Finance

⚠️ Lifecycle status: DEAD - TVL dropped 3.3% over 90 days

## Project Overview

- Project: Goose Finance (`goose-finance`)
- Lifecycle: dead (Tier 0, 99.9% below peak)
- Generated: 2026-06-21T11:10:14.591Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: bsc
- Contract surface: 11 unique implementations (11 raw deployments)
- DeFi Llama TVL: $249,859.13
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Goose Finance is a yield farming protocol on BSC that allows users to stake tokens and earn rewards.

### Architecture

The protocol consists of a single product family with one core contract, indicating a simple, self-contained farming mechanism without shared infrastructure.

## Contract Surface Quality

- Indexed contracts: 492; live-surface contracts included: 11 (11 live, 0 unknown).
- Excluded by liveness: 481 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: uniswap-v2
- Unverified dependencies: 3/71.

## Audit Coverage Summary

- Verified implementations audited: 0/4 (0.0%)
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 7
- Unique implementations: 11
- Raw deployments: 11
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| GooseDollar | unknown | bsc | n/a | [`0x5bfe81...1febeb`](./contracts/bsc-56/0x5bfe81fcb3708c8fc733bef60d313cafce1febeb/) | ⚠️ Unaudited |
| GooseDollarBond | unknown | bsc | n/a | [`0x831b85...0a9c8e`](./contracts/bsc-56/0x831b85b2c6e55344d6b17c9d67ea83771b0a9c8e/) | ⚠️ Unaudited |
| GooseDollarChefV2 | unknown | bsc | n/a | [`0x400624...6126bb`](./contracts/bsc-56/0x4006243f6f067d06db15799848229209e96126bb/) | ⚠️ Unaudited |
| VaultChef | core_logic | bsc | n/a | [`0x3f6481...b435d8`](./contracts/bsc-56/0x3f648151f5d591718327aa27d2ee25edf1b435d8/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (7)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0xb8157e...b90a16` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbc8529...233de5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc0704e...0c9b1b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe3cd01...5d47f3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe70e91...7f2e57` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xeee370...c1636c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf952fc...5bfda6` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://skynet.certik.com/projects/goose-finance) | CertiK | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x5bfe81...1febeb`](./contracts/bsc-56/0x5bfe81fcb3708c8fc733bef60d313cafce1febeb/) | GooseDollar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x400624...6126bb`](./contracts/bsc-56/0x4006243f6f067d06db15799848229209e96126bb/) | GooseDollarChefV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3f6481...b435d8`](./contracts/bsc-56/0x3f648151f5d591718327aa27d2ee25edf1b435d8/) | VaultChef | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13199] DL audit link

Fork inheritance lineage and inherited audits are included when available.
