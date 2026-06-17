# Agentic Audit Brief: Binaryx Platform

## Project Overview

- Project: Binaryx Platform (`binaryx-platform`)
- Website: [https://www.binaryx.com](https://www.binaryx.com)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-06-17T07:00:49.997Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: polygon
- Contract surface: 7 unique implementations (15 raw deployments)
- DeFi Llama TVL: $8,652,394.51
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Binaryx Platform is a real-world asset (RWA) tokenization protocol on Polygon that enables fractional ownership and trading of property-backed tokens. It provides infrastructure for property tokenization, secondary market trading, rewards distribution, and compliance (KYC/access control).

### Architecture

All product families rely on shared infrastructure contracts like AddressesProvider for registry lookups and AccessManager for role-based permissions. Property tokens (BeaconProxies) are created by PropertyFactory and traded on the SecondaryMarket, while RewardsDistributor and CommissionsDistributor handle income flows from those properties.

## Contract Surface Quality

- Indexed contracts: 234; live-surface contracts included: 15 (15 live, 0 unknown).
- Excluded by liveness: 129 inactive, 90 singleton, 0 uninitialized.
- Deployment units: 6/55 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/7 (0.0%)
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 7
- Raw deployments: 15
- Audits discovered: 3
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-03 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 2 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BeaconProxy | registry | polygon | unit-19673 (7 proxies) | 7 deployments: polygon [`0x1e3cf2...0dd69b`](./contracts/polygon-137/0x1e3cf2eeaa6d5973e2da6fe03600ba55870dd69b/); polygon `0x7b592d...b168e1`; polygon `0xad4f81...360e2a`; polygon `0xb2b9f9...78a605`; polygon `0xbde380...ad5d7b`; polygon `0xd55513...e6ada5`; polygon `0xdd36b6...49f02c` | ⚠️ Unaudited |
| BeaconProxy | registry | polygon | unit-19685 (3 proxies) | 3 deployments: polygon [`0x4b1784...2bbbd7`](./contracts/polygon-137/0x4b17845f255cc19db2612ab8577ea1e0852bbbd7/); polygon `0xa07db6...4bfd57`; polygon `0xc1ea0c...0ad4b1` | ⚠️ Unaudited |
| BinaryxEarlyAdopter | unknown | polygon | n/a | [`0xb65f62...5fa9a6`](./contracts/polygon-137/0xb65f623a4a992b5e697626b5943c9353935fa9a6/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | polygon | unit-19677 | [`0x2718fe...2f68fe`](./contracts/polygon-137/0x2718fe8eeb091301d1f3d367231affe95c2f68fe/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | polygon | unit-19681 | [`0x326fdc...c45061`](./contracts/polygon-137/0x326fdcca0f5b9f5905f6bfdb914b1f6eddc45061/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | polygon | unit-19716 | [`0xe442aa...afa9dc`](./contracts/polygon-137/0xe442aa8dc9d8526d7ccddf4f3f8369294eafa9dc/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | polygon | unit-19719 | [`0xf26cc1...4bf58b`](./contracts/polygon-137/0xf26cc1388b9c2f0fabdde1ff7bb10a396e4bf58b/) | ⚠️ Unaudited |

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
| [Audit](https://binaryx-1.gitbook.io/documentation/taxes/audit.md) | unknown | Audit | 2023-03 | stale | Direct | n/a | 0 | n/a |
| [Смарт-контракты Binaryx [были проверены]() в марте 2023 года компанией [Blaize Security](https://blaize.tech/). Общий уровень безопасности платформы Binaryx оценен как **Highly Secure, 9,8 из 10**. Более подробную информацию можно найти здесь:](https://blaize.tech/clients/smart-contract-security-audit-for-binaryx) | Blaize Security | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [RWA-tokenization report 2025-2026](https://drive.google.com/file/d/1bGZftSrt7v7rHWvOI35fFUMLTll3QFhG/view?usp=sharing) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | [`0xb65f62...5fa9a6`](./contracts/polygon-137/0xb65f623a4a992b5e697626b5943c9353935fa9a6/) | BinaryxEarlyAdopter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 6 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2136] Audit
- [2137] Смарт-контракты Binaryx [были проверены]() в марте 2023 года компанией [Blaize Security](https://blaize.tech/). Общий уровень безопасности платформы Binaryx оценен как **Highly Secure, 9,8 из 10**. Более подробную информацию можно найти здесь:
- [11889] RWA-tokenization report 2025-2026

Fork inheritance lineage and inherited audits are included when available.
