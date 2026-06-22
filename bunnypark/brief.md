# Agentic Audit Brief: BunnyPark

⚠️ Lifecycle status: DEAD - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: BunnyPark (`bunnypark`)
- Website: [https://www.bunnypark.com/](https://www.bunnypark.com/)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-06-19T17:37:12.036Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: bsc
- Contract surface: 14 unique implementations (15 raw deployments)
- DeFi Llama TVL: $0.45
- On-chain TVL (included contracts): $2,205.61
- TVL by chain: Bsc $2,205.61

## Project Description

BunnyPark is a DeFi yield farming and staking protocol on BSC that allows users to deposit LP tokens to earn BP tokens. It uses a MasterChef-style contract to distribute rewards and manage pools.

### Architecture

The BunnyParkMasterChefV2 contract interacts with the BPToken to mint rewards for stakers. Supporting contracts include a proxy and its implementation, likely used for upgradeability or additional logic, and another unknown contract that may serve as a pool or helper.

## Contract Surface Quality

- Indexed contracts: 105; live-surface contracts included: 15 (15 live, 0 unknown).
- Excluded by liveness: 84 inactive, 6 singleton, 0 uninitialized.
- Deployment units: 0/3 live.
- Detected codebases: none
- Dependencies extracted: 3; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 1/3 (33.3%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 11
- Unique implementations: 14
- Raw deployments: 15
- Audits discovered: 3
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-08 (stale)
- Staleness: 0 fresh, 0 aging, 3 stale, 0 unknown
- Tier 1 coverage: 33.3% (SlowMist)
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 1 | 33.3% | 2021-08 |
| SlowMist | Tier 1 | 1 | 33.3% | 2021-04 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BPToken | token | bsc | n/a | 2 deployments: bsc [`0x36f956...aa5a7c`](./contracts/bsc-56/0x36f95616619e2d40132fe459fc2e7826fdaa5a7c/); bsc `0xacb8f5...fee9c1` | ✅ Audited |

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BunnyParkMasterChefV2 | unknown | bsc | n/a | [`0x614810...b2efe7`](./contracts/bsc-56/0x6148104d39924f071df05eeb2f6aeb53f7b2efe7/) | ⚠️ Unaudited |
| Timelock | governance | bsc | n/a | [`0x88b048...86811c`](./contracts/bsc-56/0x88b048191b071ed1bcd1ff7c7c21a697ec86811c/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (11)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x03a40a...12a4ee` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x04cb93...385433` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x093dec...dbd1d9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0c98dc...aff496` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x13ddd2...c70cd8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2c4db5...fa0531` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5135e2...ac6524` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x85483b...d7a9c5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x87055d...f9e6c6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9743d5...d788f0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc39e11...ba5c6b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://static.bunnypark.com/image/BunnyPark/pdf/SlowMistAuditReportBunnyPark-en.pdf) | SlowMist | Audit | 2021-04 | stale | Direct | contract_name | 2 | medium |
| [DL audit link](https://skynet.certik.com/projects/bunnypark) | CertiK | Audit | 2021-07 | stale | Direct | n/a | 0 | n/a |
| [DL audit link](https://static.bunnypark.com/image/BunnyPark/pdf/PeckShield-Audit-Report-ERC20-BP-v1.0.pdf) | PeckShield | Audit | 2021-08 | stale | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x614810...b2efe7`](./contracts/bsc-56/0x6148104d39924f071df05eeb2f6aeb53f7b2efe7/) | BunnyParkMasterChefV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x88b048...86811c`](./contracts/bsc-56/0x88b048191b071ed1bcd1ff7c7c21a697ec86811c/) | Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 11 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1, medium=1
- Match method counts: extraction_exact=6

Zero-match audit list:

- [12869] DL audit link

Fork inheritance lineage and inherited audits are included when available.
