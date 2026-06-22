# Agentic Audit Brief: Segment Finance

⚠️ Lifecycle status: DECLINING - TVL dropped 26.2% over 90 days

## Project Overview

- Project: Segment Finance (`segment-finance`)
- Website: [https://segment.finance](https://segment.finance)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-21T14:45:44.673Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: bsc, opbnb
- Contract surface: 89 unique implementations (101 raw deployments)
- DeFi Llama TVL: $524,722.33
- On-chain TVL (included contracts): $103,198,830.33
- TVL by chain: Bsc $103,198,830.33

## Project Description

Segment Finance is a decentralized lending protocol on BSC and opBNB that enables users to supply and borrow assets through core and isolated lending pools. It uses a Compound-like architecture with interest-bearing seTokens and a governance system.

### Architecture

Core Pools General and Isolated Pools General both interact with seTokens and underlying tokens to facilitate lending. The Unitroller in Core Pools acts as the main proxy for the Diamond, which likely contains the core logic shared across pools, while Isolated Pools use PoolLens for data aggregation.

## Contract Surface Quality

- Indexed contracts: 160; live-surface contracts included: 101 (43 live, 58 unknown).
- Excluded by liveness: 47 inactive, 12 singleton, 0 uninitialized.
- Deployment units: 2/8 live.
- Detected codebases: compound-v2
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/11 (0.0%)
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 78
- Unique implementations: 89
- Raw deployments: 101
- Audits discovered: 2
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $103,198,830.33
- Latest audit: 2023-11 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $103,198,830.33 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BEP20TokenImplementation | token | bsc | unit-42877 (12 proxies) | 12 deployments: bsc [`0x1fa4a7...ee5d63`](./contracts/bsc-56/0x1fa4a73a3f0133f0025378af00236f3abdee5d63/); bsc `0x3d6545...e3c25e`; bsc `0x795086...f210f7`; bsc `0x8ac76a...cd580d`; bsc `0x947950...9124c4`; bsc `0x9a2f55...a1d8a2`; bsc `0xa2b726...e4d495`; bsc `0xb7f8cd...e5e094`; bsc `0xbf7c81...1337fe`; bsc `0xd475c9...185b92`; bsc `0xdd3c81...50385a`; bsc `0xfb6115...58f802` | ⚠️ Unaudited |
| BEP20TokenImplementationV2 | token | bsc | unit-42878 | [`0x250632...0aa91b`](./contracts/bsc-56/0x250632378e573c6be1ac2f97fcdf00515d0aa91b/) | ⚠️ Unaudited |
| AccessControlManager | governance | opbnb | n/a | [`0x2e81af...7cc80a`](./contracts/opbnb-204/0x2e81af8bdb43eaacf96d79145b36abc2407cc80a/) | ⚠️ Unaudited |
| BEP20Ethereum | unknown | bsc | n/a | [`0x2170ed...f933f8`](./contracts/bsc-56/0x2170ed0880ac9a755fd29b2688956bd959f933f8/) | ⚠️ Unaudited |
| BEP20Token | token | bsc | n/a | 2 deployments: bsc [`0x7130d2...3ead9c`](./contracts/bsc-56/0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c/); bsc `0xe9e7ce...087d56` | ⚠️ Unaudited |
| BEP20USDT | token | bsc | n/a | [`0x55d398...197955`](./contracts/bsc-56/0x55d398326f99059ff775485246999027b3197955/) | ⚠️ Unaudited |
| GnosisSafeProxy | governance | opbnb | n/a | [`0x1f41cf...4b97d1`](./contracts/opbnb-204/0x1f41cfbbf95bac4f5a220700f78dbaa1e34b97d1/) | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | opbnb | n/a | [`0x50c572...7db0cb`](./contracts/opbnb-204/0x50c5725949a6f0c72e6c4a641f24049a917db0cb/) | ⚠️ Unaudited |
| SeBep20Delegator | unknown | opbnb | n/a | [`0x567558...534c3c`](./contracts/opbnb-204/0x567558167f102bb45c0437f1fd5a527c5c534c3c/) | ⚠️ Unaudited |
| SEFVestingProxy | operational_periphery | bsc | n/a | [`0x05357a...4d94bd`](./contracts/bsc-56/0x05357a9bda81ca7184e7ac15e5f885b67e4d94bd/) | ⚠️ Unaudited |
| STreasury | operational_periphery | opbnb | n/a | [`0x2f6778...0ad696`](./contracts/opbnb-204/0x2f67784d367bab5fd7b8dc607504e0c8de0ad696/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (78)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x07b4fb...946d75` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x12cd46...d0f61d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x24a811...999ef3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2d7e06...ab446d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x36c12b...f8480e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x382117...5d7eed` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x44b1e0...300119` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x48758b...a97155` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4cafd8...88b72c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x56b6fb...dccbd6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x57e09c...060173` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5d7317...4e4ef5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5d7c4f...2c9b86` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5de40c...bbc4fd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5fcea9...3328c3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x69c577...33af77` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6a4e7e...d35ecd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x708360...873402` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x71b5cd...f79cf2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x759dd1...1c4cbe` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x763217...7b9a05` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7d6549...debbc1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7f7064...53eda5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x81c2be...5b5b14` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8404f1...af6090` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x849a60...251d90` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x855826...2c4ac6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8969b8...93e226` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8c248e...295f75` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8ff795...444adf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9c1f9b...03677f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa609d4...431c1b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xac4aba...337aef` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xad6cae...6c6c18` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xadbfba...67c0bf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb40d2b...a8e1e1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb5983a...f54cf4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xba86bc...e578eb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbab56f...88a983` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc6bcbe...16fe57` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc835e1...69a4ec` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc83b96...8ac564` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcefe1d...02bc7d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcf00bd...e11881` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd14499...53e5a0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd5f767...af0626` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd76d8c...b1df3c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdaaf3c...30aeb0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdc99f2...4bea92` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdeb818...c92fa5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe02089...619e50` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe500c5...e9b47e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xec430a...0ca8dc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xeddaa1...3d2000` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xeebe1a...1b3d3d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf0a54a...ee3862` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf1c743...05fc12` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf58def...5d59d2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf88af4...f3b590` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf8adf7...386004` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfc415e...4e25c9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfd7b3a...850335` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x31e98e...46856b` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x398895...0a75ce` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x3f1512...8c041e` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x515d38...c7385d` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x719af7...765113` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x7c6b91...7227f2` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x7e8444...84eb82` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x81b98b...2a08d2` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x9e5aac...ca96f3` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xaacf63...b4d491` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xba3835...b7b729` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xc34400...279592` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xe7798f...5a77ea` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xec53a9...f87d26` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xf6fc43...d2b68b` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xfe62ba...54a565` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://1437394138-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FcYvodOcCalriGDOIk0m4%2Fuploads%2F2aV2FDinQ3TxtFSRRnqN%2FSegment_Finance_-_Public_Report.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Verichains (also discovered via alternate URL)](https://github.com/verichains/public-audit-reports/blob/main/Verichains%20Public%20Audit%20Report%20-%20Segment%20Finance%20Pool%20Register%20-%20v1.0.pdf) | Verichains | Audit | 2023-11 | stale | Direct | contract_name | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x1fa4a7...ee5d63`](./contracts/bsc-56/0x1fa4a73a3f0133f0025378af00236f3abdee5d63/) | BEP20TokenImplementation | token | $94,670,743.43 | Verified native implementation with $94,670,743.43 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x250632...0aa91b`](./contracts/bsc-56/0x250632378e573c6be1ac2f97fcdf00515d0aa91b/) | BEP20TokenImplementationV2 | token | $8,528,086.90 | Verified native implementation with $8,528,086.90 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| opbnb | [`0x567558...534c3c`](./contracts/opbnb-204/0x567558167f102bb45c0437f1fd5a527c5c534c3c/) | SeBep20Delegator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x05357a...4d94bd`](./contracts/bsc-56/0x05357a9bda81ca7184e7ac15e5f885b67e4d94bd/) | SEFVestingProxy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| opbnb | [`0x2f6778...0ad696`](./contracts/opbnb-204/0x2f67784d367bab5fd7b8dc607504e0c8de0ad696/) | STreasury | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 29 |
| upstream | 5 |
| standard_library | 1 |
| needs_review | 54 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: extraction_exact=2

Zero-match audit list:

- [13823] DL audit link
- [13824] Verichains

Fork inheritance lineage and inherited audits are included when available.
