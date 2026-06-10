# Agentic Audit Brief: Everything

## Project Overview

- Project: Everything (`everything`)
- Website: [https://everything.inc/](https://everything.inc/)
- Lifecycle: active (Tier 0, 22.8% below peak)
- Generated: 2026-06-10T20:59:03.902Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: arbitrum
- Contract surface: 10 unique implementations (13 raw deployments)
- DeFi Llama TVL: $945,261.28
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Everything is an Arbitrum-based unified-liquidity AMM and oracle-less lending, borrowing, and leverage protocol for swaps, earning, borrowing, and leveraged positions. Wormhole/NTT-related contracts should be treated only as supporting cross-chain infrastructure where independently verified, not as the protocol's primary identity.

### Architecture

The EV contract serves as the core lending logic, while WormholeTransceiver and NttManager contracts handle cross-chain messaging and asset transfers, all managed through upgradeable proxy patterns and a shared UpgradeableBeacon.

## Audit Coverage Summary

- Verified implementations audited: 0/4 (0.0%)
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 6
- Unique implementations: 10
- Raw deployments: 13
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

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| EV | unknown | arbitrum | 2 deployments: arbitrum [`0x43b280...fce74c`](./contracts/arbitrum-42161/0x43b280297a7f1dcc27f44f06cbedffa8b5fce74c/); arbitrum `0xe7e7e7...c1e7e7` | ⚠️ Unaudited |
| NttManager | governance | arbitrum | 2 deployments: arbitrum [`0x4d54c9...04d03a`](./contracts/arbitrum-42161/0x4d54c928d802eee6632177b6c146fc3e9b04d03a/); arbitrum `0xf432b2...f435cd` | ⚠️ Unaudited |
| UpgradeableBeacon | registry | arbitrum | [`0x4e04f0...a5e5b4`](./contracts/arbitrum-42161/0x4e04f0fcc6c153cc7ff21b8e49aa53053ba5e5b4/) | ⚠️ Unaudited |
| WormholeTransceiver | unknown | arbitrum | 2 deployments: arbitrum [`0x1ea94d...9d63b5`](./contracts/arbitrum-42161/0x1ea94dfaaabfa1ac4dcc672cc27fca6bc59d63b5/); arbitrum `0x3d0f80...a945f6` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (6)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Proxy (impl: 0x4e3ca901719c84cf86f4328d3d930b471de8acb5) | proxy | arbitrum | `0xabd8dc...917b91` | ❓ Unverified |
| Proxy (impl: 0x9f38a0ec5daabd34fe8983cba24c9efb9572afaa) | proxy | arbitrum | `0xa88216...06b6a7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x4e3ca9...e8acb5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x6a53ed...c98003` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x99af3f...7cd682` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc26494...4fca44` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x43b280...fce74c`](./contracts/arbitrum-42161/0x43b280297a7f1dcc27f44f06cbedffa8b5fce74c/) | EV | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 1 |
| standard_library | 2 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
