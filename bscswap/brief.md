# Agentic Audit Brief: BSCSwap

## Project Overview

- Project: BSCSwap (`bscswap`)
- Lifecycle: active (Tier 0, 50.6% below peak)
- Generated: 2026-06-17T16:05:06.639Z
- Pipeline run: v2-pipeline-2026-06-17-2a130c-a893
- Chains: bsc
- Contract surface: 7 unique implementations (10 raw deployments)
- DeFi Llama TVL: $4,576,413.26
- On-chain TVL (included contracts): $11.61
- TVL by chain: Bsc $11.61

## Project Description

BSCSwap is a BSC decentralized exchange/AMM, apparently based on a Uniswap V2-style model for token swaps and liquidity provision. Its reviewed surface should not be described as a single-core-contract, self-contained DEX only: the broader contract set includes multiple modules and product families such as factory/router-style DEX components, staking or pool contracts including BurnPool and DegenPool, LaunchField/IDO-related contracts, vault/strategy components, and other ancillary deployments. Scope should explicitly distinguish confirmed BSCSwap DEX/AMM contracts from non-DEX modules and any suspected contamination or excluded entries.

### Architecture

The project consists of a single product family with one core contract, indicating a simple, self-contained DEX architecture without shared infrastructure across multiple families.

## Contract Surface Quality

- Indexed contracts: 102; live-surface contracts included: 10 (9 live, 1 unknown).
- Excluded by liveness: 92 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: uniswap-v2
- Dependencies extracted: 6; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/7 (0.0%)
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 7
- Raw deployments: 10
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $11.61
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| LFIVault | core_logic | bsc | n/a | 2 deployments: bsc [`0x2fd8ad...56fca8`](./contracts/bsc-56/0x2fd8ad2546db48cc0666d6f1a12aba3ca056fca8/); bsc `0x785987...036863` | ⚠️ Unaudited |
| BSCswap | unknown | bsc | n/a | [`0xacc234...d82584`](./contracts/bsc-56/0xacc234978a5eb941665fd051ca48765610d82584/) | ⚠️ Unaudited |
| BSCswapPair | unknown | bsc | n/a | 2 deployments: bsc [`0xc5c848...541616`](./contracts/bsc-56/0xc5c84863d32f41ad60eb2dead2d69c9553541616/); bsc `0xe61d0d...626e15` | ⚠️ Unaudited |
| BSCswapRouter | adapter | bsc | n/a | [`0xd95455...21424a`](./contracts/bsc-56/0xd954551853f55deb4ae31407c423e67b1621424a/) | ⚠️ Unaudited |
| BSWAPStaking | unknown | bsc | n/a | [`0x7b2dac...331e2d`](./contracts/bsc-56/0x7b2dac429df0b39390cd3d4e6a8b8bcceb331e2d/) | ⚠️ Unaudited |
| BurnPool | core_logic | bsc | n/a | [`0xbeeb41...7e9a12`](./contracts/bsc-56/0xbeeb4173f906e3cb395b04c7ca8ed389a97e9a12/) | ⚠️ Unaudited |
| LaunchField | unknown | bsc | n/a | 2 deployments: bsc [`0x62d6ee...d4cb08`](./contracts/bsc-56/0x62d6eeaf4e1895ce72bf10f8b0dbdb0e1dd4cb08/); bsc `0xe394b0...c2682a` | ⚠️ Unaudited |

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
| bsc | [`0x2fd8ad...56fca8`](./contracts/bsc-56/0x2fd8ad2546db48cc0666d6f1a12aba3ca056fca8/) | LFIVault | core_logic | $11.61 | Verified native implementation with $11.61 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xacc234...d82584`](./contracts/bsc-56/0xacc234978a5eb941665fd051ca48765610d82584/) | BSCswap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc5c848...541616`](./contracts/bsc-56/0xc5c84863d32f41ad60eb2dead2d69c9553541616/) | BSCswapPair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xd95455...21424a`](./contracts/bsc-56/0xd954551853f55deb4ae31407c423e67b1621424a/) | BSCswapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x7b2dac...331e2d`](./contracts/bsc-56/0x7b2dac429df0b39390cd3d4e6a8b8bcceb331e2d/) | BSWAPStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xbeeb41...7e9a12`](./contracts/bsc-56/0xbeeb4173f906e3cb395b04c7ca8ed389a97e9a12/) | BurnPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x62d6ee...d4cb08`](./contracts/bsc-56/0x62d6eeaf4e1895ce72bf10f8b0dbdb0e1dd4cb08/) | LaunchField | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
