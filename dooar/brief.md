# Agentic Audit Brief: DOOAR

## Project Overview

- Project: DOOAR (`dooar`)
- Website: [https://beta.dooar.com/swap](https://beta.dooar.com/swap)
- Lifecycle: active (Tier 0, 64.8% below peak)
- Generated: 2026-06-17T07:00:52.434Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: bsc, ethereum, polygon
- Contract surface: 6 unique implementations (8 raw deployments)
- DeFi Llama TVL: $4,518,171.15
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

DOOAR is a multi-chain decentralized exchange built by Find Satoshi Lab for STEPN users and broader DeFi users. It supports token swaps and liquidity provision through automated market maker pools. The currently recorded contract inventory represents only the Binance/BSC side of the project and should be treated as a partial BSC-only surface, not the full multi-chain DOOAR deployment.

### Architecture

The single product family contains the core factory contract that deploys and manages liquidity pools, with no additional supporting contracts identified.

## Contract Surface Quality

- Indexed contracts: 8; live-surface contracts included: 8 (2 live, 6 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: uniswap-v2
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/2 (0.0%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 6
- Raw deployments: 8
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DooarSwapV2Factory | registry | ethereum | n/a | 2 deployments: ethereum [`0x1e895b...476f3c`](./contracts/ethereum-1/0x1e895bfe59e3a5103e8b7da3897d1f2391476f3c/); bsc [`0x1e895b...476f3c`](./contracts/bsc-56/0x1e895bfe59e3a5103e8b7da3897d1f2391476f3c/) | ⚠️ Unaudited |
| DooarSwapV2Router02 | adapter | ethereum | n/a | 2 deployments: ethereum [`0x53e0e5...b9879f`](./contracts/ethereum-1/0x53e0e51b5ed9202110d7ecd637a4581db8b9879f/); bsc [`0x53e0e5...b9879f`](./contracts/bsc-56/0x53e0e51b5ed9202110d7ecd637a4581db8b9879f/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x17db7a...ed30f0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5f5d38...98dff5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xba5ae8...d8f6a9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xacc8e4...cf7e47` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x1e895b...476f3c`](./contracts/ethereum-1/0x1e895bfe59e3a5103e8b7da3897d1f2391476f3c/) | DooarSwapV2Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x53e0e5...b9879f`](./contracts/ethereum-1/0x53e0e51b5ed9202110d7ecd637a4581db8b9879f/) | DooarSwapV2Router02 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
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
