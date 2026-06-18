# Agentic Audit Brief: Hashport

⚠️ Lifecycle status: SUNSETTING - TVL dropped 71.5% over 90 days

## Project Overview

- Project: Hashport (`hashport`)
- Website: [https://www.hashport.network](https://www.hashport.network)
- Lifecycle: sunsetting (Tier 1, sunsetting)
- Generated: 2026-06-18T21:16:14.490Z
- Pipeline run: v2-pipeline-2026-06-18-32b207-5cc8
- Chains: arbitrum, avalanche, base, bsc, cronos, ethereum, fantom, moonbeam, optimism, polygon
- Contract surface: 6 unique implementations (31 raw deployments)
- DeFi Llama TVL: $998,028.27
- On-chain TVL (included contracts): $152,610.27
- TVL by chain: Ethereum $124,561.26 | Base $26,257.68 | Avalanche $1,694.79 | Polygon $81.37 | Arbitrum $15.16

## Project Description

Hashport was a Hedera-native public bridge that used a validator swarm and Hedera Consensus Service to support asset movement between Hedera and other networks through routers, router facets, diamond facets, governance, fee, payment, pausable facets, and ERC20/ERC721 wrapper-token contracts. The project has been permanently decommissioned: bridging infrastructure is offline, bridging is no longer available, and wrapped assets are stated by the project to be permanently unredeemable.

### Architecture

The Hashport family consists solely of Router and RouterFacet contracts, which are deployed as proxy-implementation pairs across multiple chains. These contracts share a common infrastructure pattern, with each Router proxy using a corresponding RouterFacet implementation to handle cross-chain routing logic.

## Contract Surface Quality

- Indexed contracts: 298; live-surface contracts included: 31 (29 live, 2 unknown).
- Excluded by liveness: 259 inactive, 8 singleton, 0 uninitialized.
- Deployment units: 1/5 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 3/4 (75.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 6
- Raw deployments: 31
- Audits discovered: 3
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-08 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 2 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [sunsetting]. ASD of n/a represents exposure in a protocol with sunsetting activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Omniscia | Tier 2 | 3 | 75.0% | n/a |
| unknown | Tier 2 | 3 | 75.0% | 2022-08 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| WrappedToken | token | ethereum | n/a | 24 deployments: ethereum [`0x1f7fd1...b544bb`](./contracts/ethereum-1/0x1f7fd18926a9646f4ff62952706dfcaed7b544bb/); ethereum `0x273d43...051c18`; ethereum `0x2aeabd...f39526`; ethereum `0x2f3afd...285ef7`; ethereum `0xbd09be...0c2558`; ethereum `0xcc944c...28af61`; ethereum `0xf6a72c...592b97`; optimism `0x21b829...9114cd`; optimism `0x52cfce...f29dac`; polygon `0x3212bf...60042f`; polygon `0x79103b...a972d5`; polygon `0xd30ed3...ffeb31`; moonbeam `0x6a1fcc...f4300f`; moonbeam `0xad6bc1...693bde`; base `0x22833b...ca5761`; base `0x2a6eb2...635162`; base `0x34598d...2c9d0f`; arbitrum `0x508096...0bfcfa`; arbitrum `0xad4ff3...5f393a`; arbitrum `0xc12f1d...0ad58e`; arbitrum `0xed6c7a...684fa5`; avalanche `0x2e8db7...e15c68`; avalanche `0x30c747...4ca1e0`; avalanche `0x945ca4...3e4f2c` | ✅ Audited |
| Router | adapter | base | n/a | 3 deployments: optimism `0x6da4e9...7c0c3e`; moonbeam `0x617d29...6d2f6b`; base [`0x0f3414...09f54b`](./contracts/base-8453/0x0f3414b61b902513e04e76ca4d1a7b003d09f54b/) | ✅ Audited |
| RouterFacet | adapter | base | n/a | [`0xd9cde0...ef42e8`](./contracts/base-8453/0xd9cde0457e04f0fc9a5a9fd314fd185d00ef42e8/) | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| RouterFacet | adapter | bsc | unit-39133 | [`0x902192...ffafcc`](./contracts/bsc-56/0x9021926be887355b76e60f4148ebb6b3f1ffafcc/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | cronos | n/a | `0x36daaf...c6413c` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x475b21...1f4e0f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Introduction](https://omniscia.io/reports/limechain-hashport) | Omniscia | Audit | n/a | unknown | Direct | contract_name | 28 | high |
| [Introduction](https://omniscia.io/reports/limechain-hashport-round-2) | Omniscia | Audit | n/a | unknown | Direct | contract_name | 28 | high |
| [Round 1](https://www.hashport.network/wp-content/uploads/Hashport-Smart-Contract-Review-v1.0-3-1.pdf) | unknown | Audit | 2022-08 | stale | Direct | contract_name | 28 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x902192...ffafcc`](./contracts/bsc-56/0x9021926be887355b76e60f4148ebb6b3f1ffafcc/) | RouterFacet | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: extraction_exact=777

Fork inheritance lineage and inherited audits are included when available.
