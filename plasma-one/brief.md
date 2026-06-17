# Agentic Audit Brief: Plasma One

## Project Overview

- Project: Plasma One (`plasma-one`)
- Website: [https://www.plasma.to/one](https://www.plasma.to/one)
- Lifecycle: active (Tier 0, 22.1% below peak)
- Generated: 2026-06-17T07:00:35.596Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: plasma
- Contract surface: 4 unique implementations (5 raw deployments)
- DeFi Llama TVL: $5,456,746.30
- On-chain TVL (included contracts): $0.62
- TVL by chain: Plasma $0.62

## Project Description

Plasma One is a non-custodial stablecoin money app and crypto card product focused on stablecoin transfers, spending, and an Earn interface. Earn/yield functionality should be described as using or integrating third-party DeFi or vault providers unless Plasma One-operated vault contracts are verified. Do not assert Plasma One-owned bridge or vault internals without documented contract mapping.

### Architecture

The BoringVault holds user deposits and generates yield, while ATokenInstance represents tokenized positions. Multiple TetherTokenOFTExtension adapters enable cross-chain USDT transfers, and OUpgradeable contracts likely manage oracle or upgrade logic, all sharing the same deployer cluster.

## Contract Surface Quality

- Indexed contracts: 16; live-surface contracts included: 5 (3 live, 2 unknown).
- Excluded by liveness: 0 inactive, 11 singleton, 0 uninitialized.
- Deployment units: 0/4 live.
- Detected codebases: aave-v2
- Dependencies extracted: 5; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/2 (0.0%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 4
- Raw deployments: 5
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $0.62
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
| BoringVault | core_logic | plasma | n/a | [`0x1cf1c7...c53d77`](./contracts/plasma-9745/0x1cf1c71440ebd9cc998ce0b1b25ccef275c53d77/) | ⚠️ Unaudited |
| ProxyAdmin | governance | plasma | n/a | 2 deployments: plasma [`0x322483...773772`](./contracts/plasma-9745/0x3224831b5f45c616f8accba907798c6236773772/); plasma `0x5be536...47d8b2` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | plasma | n/a | `0x42529d...e11acc` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x779ded...713736` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| plasma | [`0x1cf1c7...c53d77`](./contracts/plasma-9745/0x1cf1c71440ebd9cc998ce0b1b25ccef275c53d77/) | BoringVault | core_logic | $0.62 | Verified native implementation with $0.62 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
