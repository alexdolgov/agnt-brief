# Agentic Audit Brief: PadSwap

⚠️ Lifecycle status: DECLINING - TVL dropped 6.8% over 90 days

## Project Overview

- Project: PadSwap (`padswap`)
- Lifecycle: declining (Tier 0, 96.1% below peak)
- Generated: 2026-06-21T08:19:02.184Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: bsc
- Contract surface: 8 unique implementations (10 raw deployments)
- DeFi Llama TVL: $107,262.19
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

PadSwap is a decentralized exchange (DEX) on BSC that enables token swaps, liquidity provision, and yield farming. It uses a custom AMM with a focus on community-driven tokenomics and anti-whale mechanisms.

### Architecture

PadFactory creates and manages liquidity pools, while PadFarm and PadFarmsV2 handle staking and reward distribution. Toad is the reward token, and ToadFarm is a dedicated staking contract for Toad, with SonofDogeV2 likely serving as an adapter or helper for reward calculations.

## Contract Surface Quality

- Indexed contracts: 87; live-surface contracts included: 10 (10 live, 0 unknown).
- Excluded by liveness: 77 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: uniswap-v2
- Unverified dependencies: 1/3.

## Audit Coverage Summary

- Verified implementations audited: 0/8 (0.0%)
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 8
- Raw deployments: 10
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| LPFarm | unknown | bsc | n/a | 2 deployments: bsc [`0x816ed1...15dc76`](./contracts/bsc-56/0x816ed1589b7783d7dd820ba4ebdef5899515dc76/); bsc `0xc1b3bf...f84101` | ⚠️ Unaudited |
| Pad | unknown | bsc | n/a | [`0xc0888d...deb6d5`](./contracts/bsc-56/0xc0888d80ee0abf84563168b3182650c0addeb6d5/) | ⚠️ Unaudited |
| PadFarmsV2 | unknown | bsc | n/a | 2 deployments: bsc [`0x392051...9db7ea`](./contracts/bsc-56/0x39205195afb9c79a5eb1d9575091b5a6a19db7ea/); bsc `0x4992df...4ed08b` | ⚠️ Unaudited |
| PadFarmsV3 | unknown | bsc | n/a | [`0xb87b83...f55e82`](./contracts/bsc-56/0xb87b836083617f61b9c35ddd934c7bc03ff55e82/) | ⚠️ Unaudited |
| PadOnlyFarm | unknown | bsc | n/a | [`0x300244...664ed1`](./contracts/bsc-56/0x30024473efd45ef9bfd7781db5438e1a58664ed1/) | ⚠️ Unaudited |
| PadRouter | adapter | bsc | n/a | [`0x764372...138c24`](./contracts/bsc-56/0x76437234d29f84d9a12820a137c6c6a719138c24/) | ⚠️ Unaudited |
| SonofDogeV2 | unknown | bsc | n/a | [`0xcdb943...307e60`](./contracts/bsc-56/0xcdb943908de5ee37998a53f23467017d1a307e60/) | ⚠️ Unaudited |
| Toad | unknown | bsc | n/a | [`0x463e73...d539e9`](./contracts/bsc-56/0x463e737d8f740395abf44f7aac2d9531d8d539e9/) | ⚠️ Unaudited |

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
| [DL audit link](https://solanaleveling.com/) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x816ed1...15dc76`](./contracts/bsc-56/0x816ed1589b7783d7dd820ba4ebdef5899515dc76/) | LPFarm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc0888d...deb6d5`](./contracts/bsc-56/0xc0888d80ee0abf84563168b3182650c0addeb6d5/) | Pad | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x392051...9db7ea`](./contracts/bsc-56/0x39205195afb9c79a5eb1d9575091b5a6a19db7ea/) | PadFarmsV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xb87b83...f55e82`](./contracts/bsc-56/0xb87b836083617f61b9c35ddd934c7bc03ff55e82/) | PadFarmsV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x300244...664ed1`](./contracts/bsc-56/0x30024473efd45ef9bfd7781db5438e1a58664ed1/) | PadOnlyFarm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x764372...138c24`](./contracts/bsc-56/0x76437234d29f84d9a12820a137c6c6a719138c24/) | PadRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xcdb943...307e60`](./contracts/bsc-56/0xcdb943908de5ee37998a53f23467017d1a307e60/) | SonofDogeV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x463e73...d539e9`](./contracts/bsc-56/0x463e737d8f740395abf44f7aac2d9531d8d539e9/) | Toad | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
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

- [13641] DL audit link

Fork inheritance lineage and inherited audits are included when available.
