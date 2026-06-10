# Agentic Audit Brief: Swamp Finance

⚠️ Lifecycle status: DECLINING - TVL changed 9.0% over 90 days

## Project Overview

- Project: Swamp Finance (`swamp-finance`)
- Lifecycle: declining (Tier 0, 97.2% below peak)
- Generated: 2026-06-10T20:59:16.870Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: bsc
- Contract surface: 11 unique implementations (55 raw deployments)
- DeFi Llama TVL: $1,198,039.12
- On-chain TVL (included contracts): $0.09
- TVL by chain: Bsc $0.09

## Project Description

Swamp Finance is a BSC yield optimizer/yield protocol with multiple strategy contracts, alongside NativeFarm and SWAMP token reward components. Any governance-token characterization should be omitted or qualified unless supported by project documentation.

### Architecture

The NativeFarm contract distributes SWAMP token rewards to stakers, with SWAMP serving as the protocol's reward and governance token.

## Audit Coverage Summary

- Verified implementations audited: 0/7 (0.0%)
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 11
- Raw deployments: 55
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $0.09
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $0.09 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| StrategyPancake | core_logic | bsc | 28 deployments: bsc [`0x0e7e56...1db379`](./contracts/bsc-56/0x0e7e56ea2046e43442ee3063123f49a51a1db379/); bsc `0x26a934...d0acf2`; bsc `0x29e468...e73add`; bsc `0x2ba734...bc04fa`; bsc `0x2e4745...0cff7f`; bsc `0x2ecedd...b5f5ab`; bsc `0x361825...00855b`; bsc `0x482570...065700`; bsc `0x4aabf4...eafd81`; bsc `0x5f8003...7dcbe0`; bsc `0x665984...5ba32f`; bsc `0x671b92...cc2ffa`; bsc `0x720771...ceb10e`; bsc `0x76cf64...17c3a6`; bsc `0x7866e9...ebeaf0`; bsc `0x84f78e...1a6735`; bsc `0x8e02d2...102fb4`; bsc `0x99da5a...2c02a2`; bsc `0xa48e0a...c4d582`; bsc `0xa792f9...96ae80`; bsc `0xaf923c...89a525`; bsc `0xb6b91b...0062fb`; bsc `0xd9b785...431bb7`; bsc `0xdbc15f...5b5ac6`; bsc `0xe3f8da...1427b2`; bsc `0xeef69a...3ba64c`; bsc `0xef8148...ced67f`; bsc `0xfe30fd...c53141` | ⚠️ Unaudited |
| StrategyGoose | core_logic | bsc | 9 deployments: bsc [`0x0970aa...449a2f`](./contracts/bsc-56/0x0970aab66c0520b5717240dd8170462ea2449a2f/); bsc `0x1787cc...96df04`; bsc `0x368e59...454ffc`; bsc `0x577189...a8a6da`; bsc `0xa27549...a004f8`; bsc `0xcebb13...df9449`; bsc `0xe4f48c...82e22d`; bsc `0xe57e34...d53c46`; bsc `0xf8c422...7065e2` | ⚠️ Unaudited |
| NativeFarm | unknown | bsc | [`0x33adbf...afdee3`](./contracts/bsc-56/0x33adbf5f1ec364a4ea3a5ca8f310b597b8afdee3/) | ⚠️ Unaudited |
| StrategyNative | core_logic | bsc | 7 deployments: bsc [`0x1251f9...77a76d`](./contracts/bsc-56/0x1251f95a8a42f1095a9245e389523abdf177a76d/); bsc `0x15d208...8aed23`; bsc `0x1b1d76...53957c`; bsc `0x65c480...75d04a`; bsc `0x66c0fb...ab2130`; bsc `0xc65d6e...368252`; bsc `0xf4052a...3d5cce` | ⚠️ Unaudited |
| StrategyPancakeBUSD | core_logic | bsc | 4 deployments: bsc [`0x6da40a...1d9c0e`](./contracts/bsc-56/0x6da40a320f591b37de3d6132b9da0c5e871d9c0e/); bsc `0x72dcfe...6b9892`; bsc `0xb657e7...b32022`; bsc `0xd8a88b...aa8151` | ⚠️ Unaudited |
| SWAMP | unknown | bsc | [`0xc5a49b...f9765d`](./contracts/bsc-56/0xc5a49b4cbe004b6fd55b30ba1de6ac360ff9765d/) | ⚠️ Unaudited |
| TimelockController | governance | bsc | [`0x59cf63...6c2bf7`](./contracts/bsc-56/0x59cf6391fd805e838f8436edb32a4a08416c2bf7/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | bsc | `0x0eb82e...ed93d6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x3cc084...111abd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x42cf50...311894` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x8f7f7f...ad9ece` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x0e7e56...1db379`](./contracts/bsc-56/0x0e7e56ea2046e43442ee3063123f49a51a1db379/) | StrategyPancake | core_logic | $0.09 | Verified native implementation with $0.09 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x33adbf...afdee3`](./contracts/bsc-56/0x33adbf5f1ec364a4ea3a5ca8f310b597b8afdee3/) | NativeFarm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1251f9...77a76d`](./contracts/bsc-56/0x1251f95a8a42f1095a9245e389523abdf177a76d/) | StrategyNative | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6da40a...1d9c0e`](./contracts/bsc-56/0x6da40a320f591b37de3d6132b9da0c5e871d9c0e/) | StrategyPancakeBUSD | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc5a49b...f9765d`](./contracts/bsc-56/0xc5a49b4cbe004b6fd55b30ba1de6ac360ff9765d/) | SWAMP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
