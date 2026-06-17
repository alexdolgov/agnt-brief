# Agentic Audit Brief: Mezo Earn

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: Mezo Earn (`mezo-earn`)
- Website: [https://mezo.org/earn/lock](https://mezo.org/earn/lock)
- Lifecycle: unknown (Tier 0, 35.7% below peak)
- Generated: 2026-06-17T07:00:57.604Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum
- Contract surface: 3 unique implementations (3 raw deployments)
- DeFi Llama TVL: $46,894,437.22
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Mezo Earn is the earning/allocation component of the Mezo protocol, allowing users to allocate supported assets into Mezo Earn/MezoAllocator logic to participate in the protocol's rewards and TVL program. The protocol/TVL chain should be identified as Mezo, while the discovered Ethereum address is part of the contract inventory as an upgradeable proxy pointing to the MezoAllocator implementation.

### Architecture

The protocol consists of a single product family with one core allocator contract behind a transparent upgradeable proxy, indicating a simple, upgradeable incentive distribution system.

## Contract Surface Quality

- Indexed contracts: 3; live-surface contracts included: 3 (2 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 2/2 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/3 (0.0%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 3
- Raw deployments: 3
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of n/a represents exposure in a protocol with unknown activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MezoAllocator | operational_periphery | ethereum | unit-32391 | [`0xb90fda...e20122`](./contracts/ethereum-1/0xb90fdad3dfd180458d62cc6acedc983d78e20122/) | ⚠️ Unaudited |
| Portal | unknown | ethereum | unit-32390 | [`0xab13b8...5b8a39`](./contracts/ethereum-1/0xab13b8eecf5aa2460841d75da5d5d861fd5b8a39/) | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | n/a | [`0x260ca2...681734`](./contracts/ethereum-1/0x260ca2abef5d38181e2562f00fa92ad1dc681734/) | ⚠️ Unaudited |

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

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xb90fda...e20122`](./contracts/ethereum-1/0xb90fdad3dfd180458d62cc6acedc983d78e20122/) | MezoAllocator | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xab13b8...5b8a39`](./contracts/ethereum-1/0xab13b8eecf5aa2460841d75da5d5d861fd5b8a39/) | Portal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
