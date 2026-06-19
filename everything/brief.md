# Agentic Audit Brief: Everything

## Project Overview

- Project: Everything (`everything`)
- Website: [https://everything.inc/](https://everything.inc/)
- Lifecycle: active (Tier 0, 22.8% below peak)
- Generated: 2026-06-19T06:13:51.650Z
- Pipeline run: v2-pipeline-2026-06-19-32b207-c216
- Chains: arbitrum
- Contract surface: 7 unique implementations (7 raw deployments)
- DeFi Llama TVL: $710,207.80
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Everything is an Arbitrum-based unified-liquidity AMM and oracle-less lending, borrowing, and leverage protocol for swaps, earning, borrowing, and leveraged positions. Wormhole/NTT-related contracts should be treated only as supporting cross-chain infrastructure where independently verified, not as the protocol's primary identity.

### Architecture

The EV contract serves as the core lending logic, while WormholeTransceiver and NttManager contracts handle cross-chain messaging and asset transfers, all managed through upgradeable proxy patterns and a shared UpgradeableBeacon.

## Contract Surface Quality

- Indexed contracts: 16; live-surface contracts included: 7 (7 live, 0 unknown).
- Excluded by liveness: 0 inactive, 9 singleton, 0 uninitialized.
- Deployment units: 3/8 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/4 (0.0%)
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 7
- Raw deployments: 7
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

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UniPoolPair | core_logic | arbitrum | unit-21093 | [`0xfa896e...fe8f56`](./contracts/arbitrum-42161/0xfa896ef9659ea0dcf42c751e2b1f78f626fe8f56/) | ⚠️ Unaudited |
| UniPoolRouter | adapter | arbitrum | n/a | [`0xb15e7a...ff7628`](./contracts/arbitrum-42161/0xb15e7a89e71b8468c23eb330f837caf0f2ff7628/) | ⚠️ Unaudited |
| WormholeTransceiver | unknown | arbitrum | unit-21086 | [`0x1ea94d...9d63b5`](./contracts/arbitrum-42161/0x1ea94dfaaabfa1ac4dcc672cc27fca6bc59d63b5/) | ⚠️ Unaudited |
| WormholeTransceiver | unknown | arbitrum | unit-21087 | [`0x3d0f80...a945f6`](./contracts/arbitrum-42161/0x3d0f808e717943f7aa53c6285a33a2dfa2a945f6/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (3)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | arbitrum | n/a | `0x6a53ed...c98003` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x99af3f...7cd682` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc26494...4fca44` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0xb15e7a...ff7628`](./contracts/arbitrum-42161/0xb15e7a89e71b8468c23eb330f837caf0f2ff7628/) | UniPoolRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
