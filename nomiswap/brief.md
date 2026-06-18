# Agentic Audit Brief: Nomiswap

⚠️ Lifecycle status: DECLINING - TVL changed 1.9% over 90 days

## Project Overview

- Project: Nomiswap (`nomiswap`)
- Website: [https://nomiswap.io](https://nomiswap.io)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-18T04:42:13.546Z
- Pipeline run: v2-pipeline-2026-06-18-32b207-bcf3
- Chains: bsc
- Contract surface: 7 unique implementations (24 raw deployments)
- DeFi Llama TVL: $1,399,422.79
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Nomiswap is a decentralized exchange (DEX) on BSC that enables users to swap tokens, provide liquidity, and stake assets. It includes both standard and stable swap factories for different pool types, along with a staking service for earning rewards.

### Architecture

The single product family encompasses all core contracts, with the factories creating liquidity pools and the staking service likely interacting with the NMX token for rewards. No separate families or shared infrastructure are evident from the contract surface.

## Contract Surface Quality

- Indexed contracts: 91; live-surface contracts included: 24 (24 live, 0 unknown).
- Excluded by liveness: 63 inactive, 4 singleton, 0 uninitialized.
- Deployment units: 0/3 live.
- Detected codebases: uniswap-v2
- Unverified dependencies: 1/4.

## Audit Coverage Summary

- Verified implementations audited: 2/7 (28.6%)
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 7
- Raw deployments: 24
- Audits discovered: 1
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-04 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CertiK | Tier 2 | 2 | 28.6% | 2022-04 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| NomiswapRouter | adapter | bsc | n/a | [`0xd65495...79413d`](./contracts/bsc-56/0xd654953d746f0b114d1f85332dc43446ac79413d/) | ✅ Audited |
| StakingService2 | unknown | bsc | n/a | 4 deployments: bsc [`0x2b530d...444a7b`](./contracts/bsc-56/0x2b530d7243c126aaa71d70250f03a76322444a7b/); bsc `0x2d8b19...5edd74`; bsc `0x565756...e96beb`; bsc `0x85e3fa...39933b` | ✅ Audited |

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Nmx | unknown | bsc | n/a | [`0xd32d01...7d9d65`](./contracts/bsc-56/0xd32d01a43c869edcd1117c640fbdcfcfd97d9d65/) | ⚠️ Unaudited |
| NomiswapPair | unknown | bsc | n/a | 5 deployments: bsc [`0x13de25...a863e6`](./contracts/bsc-56/0x13de257cb86a08753df938b6ad30d1a456a863e6/); bsc `0x33edc4...0573b6`; bsc `0xa5f2f2...5afa22`; bsc `0xe2bbf5...03bb27`; bsc `0xfc3a2a...2e18a7` | ⚠️ Unaudited |
| NomiswapRouter03 | adapter | bsc | n/a | [`0x4ec343...2359e0`](./contracts/bsc-56/0x4ec3432d9443f05022e2ff4e54fc7514be2359e0/) | ⚠️ Unaudited |
| NomiswapRouter04 | adapter | bsc | n/a | [`0x131478...d2e7b0`](./contracts/bsc-56/0x13147820401f455e3318db8686958d457ad2e7b0/) | ⚠️ Unaudited |
| StakingService | unknown | bsc | n/a | 11 deployments: bsc [`0x03868d...b62a68`](./contracts/bsc-56/0x03868d2e45a9b579cc68b7addd65cf78ddb62a68/); bsc `0x5c3177...669bfe`; bsc `0x5cd67d...258338`; bsc `0x63a81d...b3bd94`; bsc `0x8326e2...62805c`; bsc `0x857083...2bc9ab`; bsc `0x9cd2d1...a2f9a6`; bsc `0xa0f2c1...908797`; bsc `0xa937ed...e9d54c`; bsc `0xab2f42...a106d8`; bsc `0xdbf1b1...81c3b3` | ⚠️ Unaudited |

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
| [DL audit link](https://skynet.certik.com/projects/nomiswap) | CertiK | Audit | 2022-04 | stale | Direct | contract_name | 5 | medium |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0xd32d01...7d9d65`](./contracts/bsc-56/0xd32d01a43c869edcd1117c640fbdcfcfd97d9d65/) | Nmx | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x13de25...a863e6`](./contracts/bsc-56/0x13de257cb86a08753df938b6ad30d1a456a863e6/) | NomiswapPair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4ec343...2359e0`](./contracts/bsc-56/0x4ec3432d9443f05022e2ff4e54fc7514be2359e0/) | NomiswapRouter03 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x131478...d2e7b0`](./contracts/bsc-56/0x13147820401f455e3318db8686958d457ad2e7b0/) | NomiswapRouter04 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x03868d...b62a68`](./contracts/bsc-56/0x03868d2e45a9b579cc68b7addd65cf78ddb62a68/) | StakingService | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
- Extraction confidence breakdown: medium=1
- Match method counts: extraction_exact=11

Fork inheritance lineage and inherited audits are included when available.
