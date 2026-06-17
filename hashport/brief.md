# Agentic Audit Brief: Hashport

⚠️ Lifecycle status: DEAD - TVL dropped 54.8% over 90 days

## Project Overview

- Project: Hashport (`hashport`)
- Website: [https://www.hashport.network](https://www.hashport.network)
- Lifecycle: dead (Tier 1, sunsetting)
- Generated: 2026-06-17T07:00:56.243Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, avalanche, base, cronos, ethereum, fantom, moonbeam, optimism, polygon
- Contract surface: 20 unique implementations (116 raw deployments)
- DeFi Llama TVL: $998,028.27
- On-chain TVL (included contracts): $152,610.27
- TVL by chain: Ethereum $124,561.26 | Base $26,257.68 | Avalanche $1,694.79 | Polygon $81.37 | Arbitrum $15.16

## Project Description

Hashport was a Hedera-native public bridge that used a validator swarm and Hedera Consensus Service to support asset movement between Hedera and other networks through routers, router facets, diamond facets, governance, fee, payment, pausable facets, and ERC20/ERC721 wrapper-token contracts. The project has been permanently decommissioned: bridging infrastructure is offline, bridging is no longer available, and wrapped assets are stated by the project to be permanently unredeemable.

### Architecture

The Hashport family consists solely of Router and RouterFacet contracts, which are deployed as proxy-implementation pairs across multiple chains. These contracts share a common infrastructure pattern, with each Router proxy using a corresponding RouterFacet implementation to handle cross-chain routing logic.

## Contract Surface Quality

- Indexed contracts: 297; live-surface contracts included: 116 (16 live, 100 unknown).
- Excluded by liveness: 173 inactive, 8 singleton, 0 uninitialized.
- Deployment units: 0/4 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 14/14 (100.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 1
- Unverified implementations: 6
- Unique implementations: 20
- Raw deployments: 116
- Audits discovered: 3
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-08 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 2 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 14 | 100.0% | 2022-08 |
| Omniscia | Tier 2 | 13 | 92.9% | n/a |

## Contract Surface

### ✅ Verified + Audited (13)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| WrappedToken | token | arbitrum | n/a | 62 deployments: ethereum `0x1f7fd1...b544bb`; ethereum `0x273d43...051c18`; ethereum `0x2aeabd...f39526`; ethereum `0x2f3afd...285ef7`; ethereum `0xbd09be...0c2558`; ethereum `0xcc944c...28af61`; ethereum `0xf6a72c...592b97`; optimism `0x21b829...9114cd`; optimism `0x52cfce...f29dac`; polygon `0x28dba9...bd6d34`; polygon `0x2d2101...440ab1`; polygon `0x319413...8bc5db`; polygon `0x3212bf...60042f`; polygon `0x346ba1...19e55e`; polygon `0x59c43e...7e2441`; polygon `0x75771d...1e67e7`; polygon `0x79103b...a972d5`; polygon `0x7998a9...455aac`; polygon `0x7adb62...d71262`; polygon `0x8b4cae...f1753d`; polygon `0x8f3d03...8305a4`; polygon `0xb98ce6...cee369`; polygon `0xc63ec8...0a9e93`; polygon `0xcceadd...8b95fc`; polygon `0xcddc03...114ddf`; polygon `0xd30ed3...ffeb31`; polygon `0xea8586...358c0e`; moonbeam `0x6a1fcc...f4300f`; moonbeam `0xad6bc1...693bde`; base `0x22833b...ca5761`; base `0x2a6eb2...635162`; base `0x34598d...2c9d0f`; base `0x841952...671bd5`; base `0x93aefc...c9c333`; base `0xc5e8fe...7febf3`; base `0xd3705d...b7dc9f`; base `0xdc586c...9bfe14`; base `0xde5806...b8fa97`; base `0xfa77ca...7e7167`; arbitrum [`0x029341...2bf85e`](./contracts/arbitrum-42161/0x029341d8772f8f5cca973f788b0dbd3aaf2bf85e/); arbitrum `0x148200...fc48a6`; arbitrum `0x31269b...fa7c89`; arbitrum `0x508096...0bfcfa`; arbitrum `0x53a198...ecfd3a`; arbitrum `0x5a324e...015da5`; arbitrum `0x5c173e...0bb19a`; arbitrum `0x6534f7...5247af`; arbitrum `0x6ce727...7cc171`; arbitrum `0x6fd908...f3946d`; arbitrum `0x84b420...226057`; arbitrum `0x8f005e...80a6cc`; arbitrum `0xaca468...8e0a55`; arbitrum `0xad4ff3...5f393a`; arbitrum `0xc12f1d...0ad58e`; arbitrum `0xe508b0...cdc7f5`; arbitrum `0xe821c0...c89417`; arbitrum `0xeb7278...927d68`; arbitrum `0xed6c7a...684fa5`; arbitrum `0xfa151e...0facce`; avalanche `0x2e8db7...e15c68`; avalanche `0x30c747...4ca1e0`; avalanche `0x945ca4...3e4f2c` | ✅ Audited |
| DiamondCutFacet | unknown | polygon | n/a | 3 deployments: polygon [`0x2232a1...a0a785`](./contracts/polygon-137/0x2232a10986375fdc9315f682551e141fc2a0a785/); base `0x43a456...3de595`; arbitrum `0x3587fe...78b4b8` | ✅ Audited |
| DiamondLoupeFacet | unknown | base | n/a | 3 deployments: polygon `0x8e1e45...f8caad`; base [`0x0b5ea9...5e1ef9`](./contracts/base-8453/0x0b5ea903db149f505a5af1a692761491bc5e1ef9/); arbitrum `0xcaabf3...8adf98` | ✅ Audited |
| ERC721PortalFacet | token | polygon | n/a | 5 deployments: polygon [`0x0c49c9...faad3d`](./contracts/polygon-137/0x0c49c965d76cc7a4ae7afbfaf6d32a8aaafaad3d/); polygon `0x2f20f1...c950da`; base `0xa26804...d8a693`; arbitrum `0x3d39f9...715572`; arbitrum `0xd6e23e...baa15e` | ✅ Audited |
| FeeCalculatorFacet | unknown | arbitrum | n/a | 3 deployments: polygon `0x9010ee...d9ab1f`; base `0x8334e9...abe66f`; arbitrum [`0x5e0f83...386775`](./contracts/arbitrum-42161/0x5e0f83bf38f119a32e8c6e4c30802d455f386775/) | ✅ Audited |
| GovernanceFacet | unknown | polygon | n/a | 3 deployments: polygon [`0x8088cb...c1fabc`](./contracts/polygon-137/0x8088cb9ba08224c7ecff05d4b9ee32dcaac1fabc/); base `0x8e89a2...0b8929`; arbitrum `0x90e46c...d7e4f8` | ✅ Audited |
| GovernanceV2Facet | unknown | polygon | n/a | 3 deployments: polygon [`0x0381d7...73f1b8`](./contracts/polygon-137/0x0381d726d3146e2171ffe48ae04bbc20a473f1b8/); base `0x1e2b22...226dbe`; arbitrum `0x41ae06...311d1c` | ✅ Audited |
| OwnershipFacet | unknown | polygon | n/a | 3 deployments: polygon [`0x590243...9dace3`](./contracts/polygon-137/0x590243fa41af4383237e83a4ce5490a5ad9dace3/); base `0xc34aa6...0aa7e0`; arbitrum `0x79b62e...7701b1` | ✅ Audited |
| PausableFacet | unknown | base | n/a | 3 deployments: polygon `0x9e4eab...9a43e1`; base [`0x2a5867...3f52bd`](./contracts/base-8453/0x2a58671e23f41f2c684daa372f2b06ab673f52bd/); arbitrum `0xe010fb...18cde1` | ✅ Audited |
| PaymentFacet | unknown | base | n/a | 3 deployments: polygon `0x382d00...b0cb74`; base [`0x358e77...a29306`](./contracts/base-8453/0x358e77bbcd8860d1444e99d8804ffa2d58a29306/); arbitrum `0x4eee0f...7130e1` | ✅ Audited |
| Router | adapter | base | n/a | 3 deployments: optimism `0x6da4e9...7c0c3e`; moonbeam `0x617d29...6d2f6b`; base [`0x0f3414...09f54b`](./contracts/base-8453/0x0f3414b61b902513e04e76ca4d1a7b003d09f54b/) | ✅ Audited |
| RouterFacet | adapter | base | n/a | [`0xd9cde0...ef42e8`](./contracts/base-8453/0xd9cde0457e04f0fc9a5a9fd314fd185d00ef42e8/) | ✅ Audited |
| WrappedERC721 | token | polygon | n/a | 3 deployments: polygon [`0x09cef2...70b6f7`](./contracts/polygon-137/0x09cef21241116fdd00eb7e90c93be724d370b6f7/); polygon `0x0ffe15...ad1547`; polygon `0x7c4070...b2cbb9` | ✅ Audited |

### ⚠️ Verified + Unaudited (0)

- None

### ✅ Verified by Bytecode + Audited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| WrappedERC721Pausable | token | polygon | n/a | 12 deployments: polygon [`0x0f1ff2...bc0251`](./contracts/polygon-137/0x0f1ff2541b81d5f9d6410301febd1a9669bc0251/); polygon `0x1d163e...1a6e59`; polygon `0x25ebc0...29abc3`; polygon `0x2a3ea9...120d85`; polygon `0x452572...5ad4f0`; polygon `0x563b49...ed9d61`; polygon `0x58dc84...8aeb31`; polygon `0x63d71e...a305ef`; polygon `0x7c38d5...53c77b`; polygon `0xe6f8be...53f907`; polygon `0xf0082e...111d45`; arbitrum `0x8a9240...0d8d90` | ✅ Audited (bytecode match) |

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (6)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | cronos | n/a | `0x36daaf...c6413c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2ee227...46fc5c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa2aa75...fff50a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xaebcae...3e3f6e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfce733...5322c0` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x475b21...1f4e0f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Introduction](https://omniscia.io/reports/limechain-hashport) | Omniscia | Audit | n/a | unknown | Direct | contract_name | 84 | high |
| [Introduction](https://omniscia.io/reports/limechain-hashport-round-2) | Omniscia | Audit | n/a | unknown | Direct | contract_name | 98 | high |
| [Round 1](https://www.hashport.network/wp-content/uploads/Hashport-Smart-Contract-Review-v1.0-3-1.pdf) | unknown | Audit | 2022-08 | stale | Direct | contract_name | 109 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 19 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: extraction_exact=777

Fork inheritance lineage and inherited audits are included when available.
