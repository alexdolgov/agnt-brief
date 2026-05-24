# Agentic Audit Brief: flaunch

## Project Overview

- Project: flaunch (`flaunch`)
- Website: [https://flaunch.gg](https://flaunch.gg)
- Lifecycle: active (Tier 0, 35% below peak)
- Generated: 2026-05-24T14:31:03.040Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: base
- Contract surface: 3 unique implementations (52 raw deployments)
- DeFi Llama TVL: $2,134,796.43
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Flaunch is a launchpad protocol on Base that enables users to create and trade memecoins. It provides infrastructure for deploying new tokens and managing their initial liquidity.

### Architecture

The Unnamed Infrastructure contract likely acts as a factory that deploys the numerous Memecoin instances across both the Memecoin Launchpad and Flaunch Core families. The flETH token may be used as a base asset for liquidity or staking within the Flaunch ecosystem.

## Audit Coverage Summary

- Verified implementations audited: 0/2 (0.0%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 3
- Raw deployments: 52
- Audits discovered: 21
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Staleness: 10 fresh, 5 aging, 6 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| flETH | unknown | base | [`0x000000...fc7cf8`](./contracts/base-8453/0x000000000d564d5be76f7f0d28fe52605afc7cf8/) | ⚠️ Unaudited |
| Memecoin | unknown | base | 50 deployments: base [`0x0086cf...51d959`](./contracts/base-8453/0x0086cff0c1e5d17b19f5bcd4c8840a5b4251d959/); base `0x02d777...1a7e26`; base `0x0346a9...dd0bcd`; base `0x06a050...69ddc5`; base `0x09a55c...3416a2`; base `0x0f4f5f...dead22`; base `0x1cc824...373783`; base `0x2188cf...ecd080`; base `0x21bac3...e4297c`; base `0x22aab1...dafbb7`; base `0x283149...122abf`; base `0x32dd9a...4ff306`; base `0x3d8931...d00a95`; base `0x46bc5b...72d59d`; base `0x49886a...e51039`; base `0x557e8f...90821a`; base `0x5c808a...f0cd78`; base `0x61934a...0e55cf`; base `0x63a33d...fe3456`; base `0x64573d...4500e8`; base `0x66c136...33ebf6`; base `0x716f8e...6b5809`; base `0x803c33...0dbd79`; base `0x80fb0f...f3dce0`; base `0x8644d6...f2a55b`; base `0x8cbb2c...1b91d4`; base `0x9074d7...4d4403`; base `0x909ebb...f6d9b3`; base `0x93657d...88ae57`; base `0x9551b0...c4eb25`; base `0x98805d...838c89`; base `0x9e9b78...a7bcea`; base `0xa448d4...899125`; base `0xa4e3dc...3b614d`; base `0xaf679b...d58bf1`; base `0xb7965a...ae0b68`; base `0xbab36d...14de5f`; base `0xbd072a...fdc7f4`; base `0xbd56f4...4026d1`; base `0xbd8b27...c73d8d`; base `0xbebddd...dbd0ea`; base `0xc3b678...90d231`; base `0xc78fab...753a4e`; base `0xc827d9...24976c`; base `0xcd62a5...80426a`; base `0xd98b11...8e2db3`; base `0xdc33a1...7bda3d`; base `0xe75413...61890c`; base `0xeb46fd...31caeb`; base `0xf4b7fa...b7767a` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | base | `0x688aeb...7ad384` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [2017-03.md](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/audits/2017-03.md) | OpenZeppelin | Audit | 2017-03 | stale | Direct | n/a | 0 | n/a |
| [2018-10.pdf](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/audits/2018-10.pdf) | OpenZeppelin | Audit | 2018-10 | stale | Direct | n/a | 0 | n/a |
| [2022-10-Checkpoints.pdf](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/audits/2022-10-Checkpoints.pdf) | OpenZeppelin | Audit | 2022-10 | stale | Direct | n/a | 0 | n/a |
| [2022-10-ERC4626.pdf](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/audits/2022-10-ERC4626.pdf) | Code4rena | Contest | 2022-10 | stale | Direct | n/a | 0 | n/a |
| [2023-05-v4.9.pdf](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/audits/2023-05-v4.9.pdf) | OpenZeppelin | Audit | 2023-05 | stale | Direct | n/a | 0 | n/a |
| [2023-10-v5.0.pdf](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/audits/2023-10-v5.0.pdf) | OpenZeppelin | Audit | 2023-10 | stale | Direct | n/a | 0 | n/a |
| [2024-10-v5.1.pdf](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/audits/2024-10-v5.1.pdf) | OpenZeppelin | Audit | 2024-10 | aging | Direct | n/a | 0 | n/a |
| [2024-12-v5.2.pdf](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/audits/2024-12-v5.2.pdf) | OpenZeppelin | Audit | 2024-12 | aging | Direct | n/a | 0 | n/a |
| [2025-04-v5.3.pdf](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/audits/2025-04-v5.3.pdf) | OpenZeppelin | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [2025-07-v5.4.pdf](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/audits/2025-07-v5.4.pdf) | OpenZeppelin | Audit | 2025-07 | fresh | Direct | n/a | 0 | n/a |
| [2025-10-v5.5.pdf](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/audits/2025-10-v5.5.pdf) | OpenZeppelin | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [2025-11-RLP.pdf](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/audits/2025-11-RLP.pdf) | OpenZeppelin | Audit | 2025-11 | fresh | Direct | n/a | 0 | n/a |
| [2026-02-v5.6.pdf](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/audits/2026-02-v5.6.pdf) | OpenZeppelin | Audit | 2026-02 | fresh | Direct | n/a | 0 | n/a |
| [2025-05-v0.1.pdf](https://github.com/OpenZeppelin/openzeppelin-confidential-contracts/blob/master/audits/2025-05-v0.1.pdf) | OpenZeppelin | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |
| [2025-07-v0.2.pdf](https://github.com/OpenZeppelin/openzeppelin-confidential-contracts/blob/master/audits/2025-07-v0.2.pdf) | OpenZeppelin | Audit | 2025-07 | fresh | Direct | n/a | 0 | n/a |
| [2025-11-v0.3.pdf](https://github.com/OpenZeppelin/openzeppelin-confidential-contracts/blob/master/audits/2025-11-v0.3.pdf) | OpenZeppelin | Audit | 2025-11 | fresh | Direct | n/a | 0 | n/a |
| [2026-01-v0.3.1.pdf](https://github.com/OpenZeppelin/openzeppelin-confidential-contracts/blob/master/audits/2026-01-v0.3.1.pdf) | OpenZeppelin | Audit | 2026-01 | fresh | Direct | n/a | 0 | n/a |
| [2026-03-v0.4.pdf](https://github.com/OpenZeppelin/openzeppelin-confidential-contracts/blob/master/audits/2026-03-v0.4.pdf) | OpenZeppelin | Audit | 2026-03 | fresh | Direct | n/a | 0 | n/a |
| [2025-01-v1.0.0.pdf](https://github.com/OpenZeppelin/cairo-contracts/blob/main/audits/2025-01-v1.0.0.pdf) | OpenZeppelin | Audit | 2025-01 | aging | Direct | n/a | 0 | n/a |
| [2025-06-v2.0.0.pdf](https://github.com/OpenZeppelin/cairo-contracts/blob/main/audits/2025-06-v2.0.0.pdf) | OpenZeppelin | Audit | 2025-06 | fresh | Direct | n/a | 0 | n/a |
| [2025-11-v3.0.0.pdf](https://github.com/OpenZeppelin/cairo-contracts/blob/main/audits/2025-11-v3.0.0.pdf) | OpenZeppelin | Audit | 2025-11 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x000000...fc7cf8`](./contracts/base-8453/0x000000000d564d5be76f7f0d28fe52605afc7cf8/) | flETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0086cf...51d959`](./contracts/base-8453/0x0086cff0c1e5d17b19f5bcd4c8840a5b4251d959/) | Memecoin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 21
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2897] 2017-03.md
- [2898] 2018-10.pdf
- [2899] 2022-10-Checkpoints.pdf
- [2900] 2022-10-ERC4626.pdf
- [2901] 2023-05-v4.9.pdf
- [2902] 2023-10-v5.0.pdf
- [2903] 2024-10-v5.1.pdf
- [2904] 2024-12-v5.2.pdf
- [2905] 2025-04-v5.3.pdf
- [2906] 2025-07-v5.4.pdf
- [2907] 2025-10-v5.5.pdf
- [2908] 2025-11-RLP.pdf
- [2909] 2026-02-v5.6.pdf
- [2910] 2025-05-v0.1.pdf
- [2911] 2025-07-v0.2.pdf
- [2912] 2025-11-v0.3.pdf
- [2913] 2026-01-v0.3.1.pdf
- [2914] 2026-03-v0.4.pdf
- [2915] 2025-01-v1.0.0.pdf
- [2916] 2025-06-v2.0.0.pdf
- [2917] 2025-11-v3.0.0.pdf

Fork inheritance lineage and inherited audits are included when available.
