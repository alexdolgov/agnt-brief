# Agentic Audit Brief: Spiko

## Project Overview

- Project: Spiko (`spiko`)
- Website: [https://www.spiko.io/](https://www.spiko.io/)
- Lifecycle: active (Tier 0, 10.6% below peak)
- Generated: 2026-06-21T20:24:45.078Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: arbitrum, base, ethereum, polygon
- Contract surface: 109 unique implementations (142 raw deployments)
- DeFi Llama TVL: $1,161,063,812.79
- On-chain TVL (included contracts): $76,533,248.34
- TVL by chain: Polygon $76,533,248.34

## Project Description

Spiko is a protocol for tokenizing real-world assets (RWA) such as money market funds, enabling on-chain issuance, redemption, and management of yield-bearing tokens. It provides infrastructure for permissioned minting, oracle-based pricing, and cross-chain deployment of tokenized fund shares.

### Architecture

The EVM contracts family provides shared infrastructure (PermissionManager, Minter, Redemption) used by multiple token instances, including those in the Spiko family. Tokens rely on oracles for pricing and on the PermissionManager for role-based access control, while the Minter contract handles controlled token creation across different fund products.

## Contract Surface Quality

- Indexed contracts: 266; live-surface contracts included: 142 (142 live, 0 unknown).
- Excluded by liveness: 4 inactive, 120 singleton, 0 uninitialized.
- Deployment units: 4/46 live.
- Detected codebases: none
- Dependencies extracted: 3; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 6/11 (54.5%)
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 98
- Unique implementations: 109
- Raw deployments: 142
- Audits discovered: 1
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-10 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: 54.5% (Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Trail of Bits | Tier 1 | 6 | 54.5% | 2023-10 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Token | token | polygon | unit-43955 | [`0x272ea7...58c8a2`](./contracts/polygon-137/0x272ea767712cc4839f4a27ee35eb73116158c8a2/) | ✅ Audited |
| Token | token | polygon | unit-43959 | [`0x6f64f4...0b3dc5`](./contracts/polygon-137/0x6f64f47f95cf656f21b40e14798f6b49f80b3dc5/) | ✅ Audited |
| Token | token | polygon | unit-43958 | [`0x4fe515...4fe774`](./contracts/polygon-137/0x4fe515c67eeeadb3282780325f09bb7c244fe774/) | ✅ Audited |
| Oracle | operational_periphery | arbitrum | n/a | [`0x4c3ba0...30bc87`](./contracts/arbitrum-42161/0x4c3ba0eae5ab65c9510769a2877cf4d93330bc87/) | ✅ Audited |
| Token | token | ethereum | n/a | [`0xa2850a...355893`](./contracts/ethereum-1/0xa2850a72abe63d0c7258910564ed56fcfd355893/) | ✅ Audited |
| Token | token | polygon | unit-43962 | [`0x9de2b2...18f089`](./contracts/polygon-137/0x9de2b2dcdcf43540e47143f28484b6d15118f089/) | ✅ Audited |

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ERC1967Proxy | proxy | arbitrum | n/a | 21 deployments: arbitrum [`0x0c7093...66479c`](./contracts/arbitrum-42161/0x0c709396739b9cfb72bcea6ac691ce0ddf66479c/); arbitrum `0x0e389c...c03265`; arbitrum `0x141263...1d7b76`; arbitrum `0x15ea0e...b95f74`; arbitrum `0x3868d4...2e11cc`; arbitrum `0x4640a8...b23f39`; arbitrum `0x4f33ac...4c8d59`; arbitrum `0x78f59a...501579`; arbitrum `0x7a16df...bb93db`; arbitrum `0x8226e9...bfd828`; arbitrum `0x8d18e2...66993e`; arbitrum `0x903d59...d19474`; arbitrum `0x970e2a...edfe3d`; arbitrum `0x97e796...53ac6e`; arbitrum `0x99f70a...a5c6da`; arbitrum `0xa260d7...3be764`; arbitrum `0xa925c2...2d829a`; arbitrum `0xb114e0...0c393b`; arbitrum `0xbe0233...342635`; arbitrum `0xcbeb19...216ce7`; arbitrum `0xe48802...60e750` | ⚠️ Unaudited |
| ERC2771Forwarder | unknown | ethereum | n/a | 3 deployments: ethereum [`0x42db5a...d923c3`](./contracts/ethereum-1/0x42db5a5af4d82e8ed42405dfa37278c360d923c3/); polygon [`0x42db5a...d923c3`](./contracts/polygon-137/0x42db5a5af4d82e8ed42405dfa37278c360d923c3/); base [`0x42db5a...d923c3`](./contracts/base-8453/0x42db5a5af4d82e8ed42405dfa37278c360d923c3/) | ⚠️ Unaudited |
| Minter | operational_periphery | arbitrum | n/a | [`0xaead1f...9084c2`](./contracts/arbitrum-42161/0xaead1f7c9b189816cb845363d142cfcf339084c2/) | ⚠️ Unaudited |
| MultiATM | unknown | ethereum | n/a | [`0xbd6ad9...55f605`](./contracts/ethereum-1/0xbd6ad96f51e8d732811587468d0e2f9efa55f605/) | ⚠️ Unaudited |
| SpikoDefensiveSenderReceiver | unknown | arbitrum | n/a | 12 deployments: base `0x1b952b...689b1e`; base `0x4640a8...b23f39`; base `0x4c3ba0...30bc87`; base `0x8226e9...bfd828`; base `0xa390a9...a6ddcd`; base `0xe7bbab...d11d2a`; base `0xf10890...bb2a93`; arbitrum [`0x17e2b2...7c447c`](./contracts/arbitrum-42161/0x17e2b2eed8e07328302a7b4135ed1b2dc57c447c/); arbitrum `0x1b952b...689b1e`; arbitrum `0x77926a...f43218`; arbitrum `0x8513fc...112731`; arbitrum `0xa390a9...a6ddcd` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (98)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x033619...b90fc8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x05d142...5ae7ac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x17e2b2...7c447c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1b952b...689b1e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2a6d91...eefce4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4640a8...b23f39` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x465bc3...55f37a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4fbfc2...84323e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x57fa61...d7783d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x64e31c...eb5fda` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7430d9...00bbb7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x77d058...3d8b59` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x77d31b...69bc30` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x78f59a...501579` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7ba5d8...b91423` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8d18e2...66993e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x930f7f...9eaf55` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x99f14c...f34496` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa390a9...a6ddcd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa9c741...49a38a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaead1f...9084c2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb114e0...0c393b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1b952b...689b1e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x21907b...fcb9c3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2fa1a7...4ab1b1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x32416c...daf21a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x369036...05b8dc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3d01f2...115f4d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x57fa61...d7783d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x64a3b7...aae947` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7430d9...00bbb7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x77926a...f43218` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x78cc48...1d5e4a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x78f59a...501579` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7ba5d8...b91423` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7fcd00...133347` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8513fc...112731` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8d18e2...66993e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x91e2ed...31e5a6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9949ec...801341` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa1fdd4...c9424e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa42baa...288767` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb3b026...c1c4f5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbb20d3...ecfa4c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc9d26a...a924fb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe7bbab...d11d2a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf9fd77...b27579` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1cd239...9a3896` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x21907b...fcb9c3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2fa1a7...4ab1b1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x480725...25403e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4ff96d...b5583c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5ca17d...c5fab2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x64e31c...eb5fda` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7f9f63...c46263` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7fcd00...133347` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x930f7f...9eaf55` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x98568f...75e7dc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9949ec...801341` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9d104a...5ee23e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa2d05e...f5de0d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa71e40...1076ed` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xafe719...41b2bb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb3b026...c1c4f5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbb20d3...ecfa4c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc44f58...6eec27` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd88110...d8e8b9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdb7004...7ab428` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xeb2e0f...816361` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf9fd77...b27579` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xffb84f...04ee79` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x033619...b90fc8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x21907b...fcb9c3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2f284a...d187ed` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2fa1a7...4ab1b1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x308f38...4e2370` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x32416c...daf21a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3d01f2...115f4d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x57fa61...d7783d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x64a3b7...aae947` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7430d9...00bbb7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x78cc48...1d5e4a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7ba5d8...b91423` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7fcd00...133347` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x86a3c5...53b9cb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8e8937...bb6c2f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x91e2ed...31e5a6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x930f7f...9eaf55` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9949ec...801341` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xaa6b63...5dc82d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb3b026...c1c4f5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbb20d3...ecfa4c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc44f58...6eec27` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc9d26a...a924fb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd3f5f1...5b658e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdb7004...7ab428` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe7bbab...d11d2a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf9fd77...b27579` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [2023-10-spiko-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2023-10-spiko-securityreview.pdf) | Trail of Bits | Audit | 2023-10 | stale | Direct | contract_name | 6 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0xaead1f...9084c2`](./contracts/arbitrum-42161/0xaead1f7c9b189816cb845363d142cfcf339084c2/) | Minter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbd6ad9...55f605`](./contracts/ethereum-1/0xbd6ad96f51e8d732811587468d0e2f9efa55f605/) | MultiATM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x17e2b2...7c447c`](./contracts/arbitrum-42161/0x17e2b2eed8e07328302a7b4135ed1b2dc57c447c/) | SpikoDefensiveSenderReceiver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 17 |
| upstream | 0 |
| standard_library | 5 |
| needs_review | 87 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=91

Fork inheritance lineage and inherited audits are included when available.
