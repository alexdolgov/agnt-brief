# Agentic Audit Brief: flaunch

## Project Overview

- Project: flaunch (`flaunch`)
- Website: [https://flaunch.gg](https://flaunch.gg)
- Lifecycle: active (Tier 0, 35% below peak)
- Generated: 2026-06-10T23:20:07.618Z
- Pipeline run: v2-pipeline-2026-06-10-5b3b54-22cc
- Chains: base
- Contract surface: 3 unique implementations (52 raw deployments)
- DeFi Llama TVL: $2,101,965.17
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 3 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Flaunch is a launchpad protocol on Base that enables users to create and trade memecoins.

## Audit Coverage Summary

- Verified implementations audited: 0/2 (0.0%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 3
- Raw deployments: 52
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-10 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
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
| [2022-10-ERC4626.pdf](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/audits/2022-10-ERC4626.pdf) | Code4rena | Contest | 2022-10 | stale | Direct | n/a | 0 | n/a |

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
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2900] 2022-10-ERC4626.pdf

Fork inheritance lineage and inherited audits are included when available.
