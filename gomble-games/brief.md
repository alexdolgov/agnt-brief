# Agentic Audit Brief: Gomble Games

⚠️ Lifecycle status: DEAD - TVL changed 0.0% over 90 days

## Project Overview

- Project: Gomble Games (`gomble-games`)
- Website: [https://gomble.io/](https://gomble.io/)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-06-19T17:33:56.071Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: bsc
- Contract surface: 22 unique implementations (33 raw deployments)
- DeFi Llama TVL: $14.73
- On-chain TVL (included contracts): $499,490.23
- TVL by chain: Bsc $499,490.23

## Project Description

Gomble Games is a DeFi gaming protocol on BSC that combines staking, betting, and NFT-based spaceship locking to enable yield farming and gamified token rewards.

### Architecture

The Stake, Betting, SpaceshipLock, and Payment contracts share the Token contract as the core reward and utility token, with TestAuction serving as a supporting auction mechanism for NFT distribution.

## Contract Surface Quality

- Indexed contracts: 42; live-surface contracts included: 33 (1 live, 32 unknown).
- Excluded by liveness: 6 inactive, 3 singleton, 0 uninitialized.
- Deployment units: 1/4 live.
- Detected codebases: none
- Dependencies extracted: 3; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 2/10 (20.0%)
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 12
- Unique implementations: 22
- Raw deployments: 33
- Audits discovered: 1
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $499,490.23
- Latest audit: 2024-02 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of $499,490.23 represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 2 | 20.0% | 2024-02 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Stake | unknown | bsc | n/a | 4 deployments: bsc [`0x5dd156...5f1244`](./contracts/bsc-56/0x5dd156d1aead8a8bb69eed466e3ffbcc155f1244/); bsc `0x9b777e...a11fb9`; bsc `0xe945e7...c61846`; bsc `0xee9fcf...48b4e1` | ✅ Audited |
| Stake | unknown | bsc | unit-39812 | [`0xab8c9e...4604d5`](./contracts/bsc-56/0xab8c9eb287796f075c821ffafbac5fedaa4604d5/) | ✅ Audited |

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Token | token | bsc | n/a | [`0xd8002d...6d3b3d`](./contracts/bsc-56/0xd8002d4bd1d50136a731c141e3206d516e6d3b3d/) | ⚠️ Unaudited |
| Auction | unknown | bsc | n/a | [`0xb0f5a7...2df97e`](./contracts/bsc-56/0xb0f5a7b5ec90c34997be1a6b3f54f05a772df97e/) | ⚠️ Unaudited |
| Badge | unknown | bsc | n/a | 3 deployments: bsc [`0x4fc42a...e7b6b3`](./contracts/bsc-56/0x4fc42aa439be7f685bbddb2959f4abb2e3e7b6b3/); bsc `0x7df068...977905`; bsc `0xf2f2c3...efbd36` | ⚠️ Unaudited |
| OGSpaceship | unknown | bsc | n/a | 3 deployments: bsc [`0xb5efc4...617727`](./contracts/bsc-56/0xb5efc445547e81e307ccce267704209c2c617727/); bsc `0xdc065c...1ed9ff`; bsc `0xece777...2af827` | ⚠️ Unaudited |
| Payment | unknown | bsc | n/a | 2 deployments: bsc [`0x85fe1d...af36c6`](./contracts/bsc-56/0x85fe1d3611cf0e35c14af76aad3a725c78af36c6/); bsc `0x9d5094...ef29e7` | ⚠️ Unaudited |
| TestAuction | unknown | bsc | n/a | [`0xe619f1...91d130`](./contracts/bsc-56/0xe619f1df06eeaaf443dfc5c09cc96e2c7c91d130/) | ⚠️ Unaudited |
| Vesting | operational_periphery | bsc | n/a | 4 deployments: bsc [`0x302830...955d6b`](./contracts/bsc-56/0x302830ebd50c9ec93b2d78234cc56d9339955d6b/); bsc `0x6e098f...e2a68e`; bsc `0x84b63b...9429c8`; bsc `0xf81349...146a76` | ⚠️ Unaudited |
| VRF | unknown | bsc | n/a | [`0x389033...ddf19d`](./contracts/bsc-56/0x389033c3c8bae68f9690cbb40119a9901bddf19d/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (12)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x45f34a...8076d4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x518140...133037` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6f0a89...7540a6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x73e7cb...4550e7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8cc38c...69977d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x91bacd...db6282` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9e8be3...953844` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xacdc8e...b06c0b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbef047...b7c5e2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc5a3fd...d60275` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd7b033...1519e6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf33ea7...b7fbe3` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://beosin.com/audits/GOMBLE_202402231621.pdf) | unknown | Audit | 2024-02 | stale | Direct | contract_name | 5 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0xd8002d...6d3b3d`](./contracts/bsc-56/0xd8002d4bd1d50136a731c141e3206d516e6d3b3d/) | Token | token | $499,490.23 | Verified native implementation with $499,490.23 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xb0f5a7...2df97e`](./contracts/bsc-56/0xb0f5a7b5ec90c34997be1a6b3f54f05a772df97e/) | Auction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4fc42a...e7b6b3`](./contracts/bsc-56/0x4fc42aa439be7f685bbddb2959f4abb2e3e7b6b3/) | Badge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xb5efc4...617727`](./contracts/bsc-56/0xb5efc445547e81e307ccce267704209c2c617727/) | OGSpaceship | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x85fe1d...af36c6`](./contracts/bsc-56/0x85fe1d3611cf0e35c14af76aad3a725c78af36c6/) | Payment | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xe619f1...91d130`](./contracts/bsc-56/0xe619f1df06eeaaf443dfc5c09cc96e2c7c91d130/) | TestAuction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x302830...955d6b`](./contracts/bsc-56/0x302830ebd50c9ec93b2d78234cc56d9339955d6b/) | Vesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 16 |
| upstream | 1 |
| standard_library | 1 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=8

Fork inheritance lineage and inherited audits are included when available.
