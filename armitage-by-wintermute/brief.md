# Agentic Audit Brief: Armitage by Wintermute

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: Armitage by Wintermute (`armitage-by-wintermute`)
- Website: [https://armitage.wintermute.com](https://armitage.wintermute.com)
- Lifecycle: unknown (Tier 0, TVL trajectory)
- Generated: 2026-06-17T07:01:01.861Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum
- Contract surface: 7 unique implementations (9 raw deployments)
- DeFi Llama TVL: $52,007,611.73
- On-chain TVL (included contracts): $51,808,883.67
- TVL by chain: Ethereum $51,808,883.67

## Project Description

Armitage by Wintermute is Wintermute's onchain vault curation product for yield-bearing DeFi vaults. It curates and manages risk for depositors, currently including Prime and Select USDC vaults on Ethereum.

### Architecture

The protocol consists of a single product family with two instances of the VaultV2 contract, likely representing separate vaults for different assets or strategies, sharing the same core logic.

## Contract Surface Quality

- Indexed contracts: 9; live-surface contracts included: 9 (8 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/7 (0.0%)
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 7
- Raw deployments: 9
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $51,808,883.67
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of $51,808,883.67 represents exposure in a protocol with unknown activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| VaultV2 | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x5dc53a...71ff2b`](./contracts/ethereum-1/0x5dc53a23adc9f2bed98de6f59f7f309a7c71ff2b/); ethereum `0xa2eaad...7d68cd` | ⚠️ Unaudited |
| Morpho | unknown | ethereum | n/a | [`0xbbbbbb...eeffcb`](./contracts/ethereum-1/0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb/) | ⚠️ Unaudited |
| MorphoMarketV1AdapterV2Factory | adapter | ethereum | n/a | [`0x32bb1c...61ccc1`](./contracts/ethereum-1/0x32bb1c0d48d8b1b3363e86eeb9a0300bad61ccc1/) | ⚠️ Unaudited |
| MorphoVaultV1AdapterFactory | adapter | ethereum | n/a | [`0xd1b8e2...f63394`](./contracts/ethereum-1/0xd1b8e2dee25c2b89dcd2f98448a7ce87d6f63394/) | ⚠️ Unaudited |
| RegistryList | registry | ethereum | n/a | [`0x3696c5...d9364e`](./contracts/ethereum-1/0x3696c5eae4a7ffd04ea163564571e9cd8ed9364e/) | ⚠️ Unaudited |
| Safe | unknown | ethereum | unit-18913 (2 proxies) | 2 deployments: ethereum [`0x4687e4...1d74d8`](./contracts/ethereum-1/0x4687e45bb5518a995913a24bb2816fe2031d74d8/); ethereum `0xb83a77...559e5e` | ⚠️ Unaudited |
| VaultV2Factory | registry | ethereum | n/a | [`0xa1d94f...6c0405`](./contracts/ethereum-1/0xa1d94f746defa1928926b84fb2596c06926c0405/) | ⚠️ Unaudited |

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

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 3 |
| standard_library | 0 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
