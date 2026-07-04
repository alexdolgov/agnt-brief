# Agentic Audit Brief: BOOKUSD

## Project Overview

- Project: BOOKUSD (`bookusd`)
- Website: [https://www.bookmemebsc.com/](https://www.bookmemebsc.com/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:35.996Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-3e24
- Chains: bsc
- Contract surface: 142 unique implementations (167 raw deployments)
- DeFi Llama TVL: $28,946.37
- On-chain TVL (included contracts): $83,638.83
- TVL by chain: Bsc $83,638.83

## Project Description

CDP. Structurally: 46 project-authored contract(s) across 1 chain(s); 6 ERC20 tokens, 1 ERC721 NFT; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 14 common project-authored base contract(s) (checkcontract, liquitybase, basemath). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 226; live-surface contracts included: 162 (41 live, 121 unknown).
- Excluded by liveness: 64 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 4/21 (19.0%)
- Deployed-live implementations: 21 of 142 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 4/21
- Verified + Unaudited implementations: 17
- Verified by bytecode match: 0
- Unverified implementations: 121
- Unique implementations: 142
- Raw deployments: 167
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $83,638.83
- Latest audit: 2025-05 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 4 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 4 | 19.0% | 2025-05 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BookOfBinance | unknown | bsc | n/a | [`0xc9ad42...83017f`](./contracts/bsc-56/0xc9ad421f96579ace066ec188a7bba472fb83017f/) | ✅ Audited |
| BorrowerOperations | core_logic | bsc | n/a | [`0x91fe15...1c0814`](./contracts/bsc-56/0x91fe1533b5e33a89e37a2494ce1bef74081c0814/) | ✅ Audited |
| RedeemProxy | unknown | bsc | n/a | [`0x82fa44...0b2ef6`](./contracts/bsc-56/0x82fa44be42596119406e45d4d9653a3e8a0b2ef6/) | ✅ Audited |
| TroveManager | unknown | bsc | n/a | 3 deployments: bsc [`0xa33bd4...546af4`](./contracts/bsc-56/0xa33bd424ef456af316698963506d069c2d546af4/); bsc `0xbcb000...faeca4`; bsc `0xfe5d0a...d1ac15` | ✅ Audited |

### ⚠️ Verified + Unaudited (17)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| LQTYToken | token | bsc | n/a | 2 deployments: bsc [`0xafea16...18e00a`](./contracts/bsc-56/0xafea16a14742f10cc5f83bd358e4a9d38718e00a/); bsc `0xfc35bf...e9b7c5` | ⚠️ Unaudited |
| LUSDToken | token | bsc | n/a | 3 deployments: bsc [`0x2d7a5c...830217`](./contracts/bsc-56/0x2d7a5c70484863055e3fcc9e69fb3e7aa1830217/); bsc `0xc28957...cb093d`; bsc `0xd4a1a6...770173` | ⚠️ Unaudited |
| BurningBooks | unknown | bsc | n/a | 2 deployments: bsc [`0x3f669d...b682f7`](./contracts/bsc-56/0x3f669d02b58c2e35e273c7a5e2b8ee83a6b682f7/); bsc `0xe8ead8...a4c67b` | ⚠️ Unaudited |
| FarmFactory | unknown | bsc | n/a | 2 deployments: bsc [`0x6ddbd1...237a5b`](./contracts/bsc-56/0x6ddbd1329d093c244cf8ca272530f3947d237a5b/); bsc `0xbb0e53...c55610` | ⚠️ Unaudited |
| LpTool | unknown | bsc | n/a | [`0x466eaa...4c353d`](./contracts/bsc-56/0x466eaa98d1e6fa238309a5795ce51038614c353d/) | ⚠️ Unaudited |
| LQTYStaking | unknown | bsc | n/a | 3 deployments: bsc [`0x73317c...f089f8`](./contracts/bsc-56/0x73317c7d55bbf7306339cf8423a83e29a8f089f8/); bsc `0x744959...922c15`; bsc `0xd8ec53...8c3a17` | ⚠️ Unaudited |
| MintStakeShare | unknown | bsc | n/a | [`0xf0f14c...cb9b2f`](./contracts/bsc-56/0xf0f14cbd7ce6753bc209eb0d8f67fc84cccb9b2f/) | ⚠️ Unaudited |
| MintStakeShareExpansion | unknown | bsc | n/a | [`0x7c3b00...3cb9e2`](./contracts/bsc-56/0x7c3b00cb3b40cc77d88329a58574e29cfa3cb9e2/) | ⚠️ Unaudited |
| MSSNFT | unknown | bsc | n/a | 2 deployments: bsc [`0xc1f0c9...f90d3b`](./contracts/bsc-56/0xc1f0c9094d2014306a5782d280a76df49bf90d3b/); bsc `0xc8b336...153846` | ⚠️ Unaudited |
| MultiTroveGetter | unknown | bsc | n/a | 3 deployments: bsc [`0x5ad54c...fc6a11`](./contracts/bsc-56/0x5ad54cddeac8dab5efe01c763144b08465fc6a11/); bsc `0xa6de87...28f880`; bsc `0xf61716...7e7bba` | ⚠️ Unaudited |
| MyOFTAdapter | adapter | bsc | n/a | 2 deployments: bsc [`0x279e63...dbde6e`](./contracts/bsc-56/0x279e63c7f2243500cafce8b3f510bbe6dfdbde6e/); bsc `0x33afd7...b79195` | ⚠️ Unaudited |
| ProxyAdmin | unknown | bsc | n/a | 4 deployments: bsc [`0x0a337d...3b7abd`](./contracts/bsc-56/0x0a337dbef40e9d79bc5ad39415ff817b1e3b7abd/); bsc `0x4b556f...76f706`; bsc `0xb6cb06...f35fb5`; bsc `0xd2e1e1...e71183` | ⚠️ Unaudited |
| SortedTroves | unknown | bsc | n/a | 3 deployments: bsc [`0x2e658e...215edc`](./contracts/bsc-56/0x2e658e118886b2c176fc53b493322b6fc5215edc/); bsc `0x7b5d6a...e10da7`; bsc `0xf07237...1a65e4` | ⚠️ Unaudited |
| StabilityPool | core_logic | bsc | n/a | 2 deployments: bsc [`0x3a11c0...d17fac`](./contracts/bsc-56/0x3a11c0a0f7818aa88e57c568e31bfc9427d17fac/); bsc `0x492f62...f256a5` | ⚠️ Unaudited |
| Staking | unknown | bsc | n/a | 2 deployments: bsc [`0xc6d635...11872b`](./contracts/bsc-56/0xc6d635e0cc999e7032d7bf07dd047d3e5311872b/); bsc `0xde5cae...156d2b` | ⚠️ Unaudited |
| Swapper | unknown | bsc | n/a | 2 deployments: bsc [`0x224b54...1aeec3`](./contracts/bsc-56/0x224b5431a3a229056a1393f8a681bc28351aeec3/); bsc `0xd3e6e2...6ae3d5` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 5 deployments: bsc [`0x7a14b0...70f780`](./contracts/bsc-56/0x7a14b072636ebab2c957fc3dd7facbc8b070f780/); bsc `0x7c8c6a...7d656d`; bsc `0x98b9c5...31a874`; bsc `0xcc0cfb...685ae5`; bsc `0xec16f1...cbc1ec` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (121)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x0034b5...437eac` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x014055...ff40f2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x01a0f7...7146ec` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x01ed2e...247d6a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x067b5d...dcf0e0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x06d551...a91798` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x099754...a2a9b4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x09c163...b9eb3c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0a7365...c7f607` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0b8710...0c062b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0d8d21...78bdf0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0f65bd...79d5a7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1338bf...366cbe` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x13a564...6f1c4e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x13d938...d1c6d2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x13eac4...0d7486` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1ec3bc...e162e3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1ef3d1...9889dc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x20531c...121f8e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x221da6...7e6048` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2abe9b...702765` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2c2f24...4e68e5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2fe420...907796` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x33b1eb...5e102e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x33bf65...37587c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x347e5a...16def2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x36ed0a...ae4ad9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x388ca0...2350ca` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x39449c...0f0ec4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x395ed7...3d0df7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3a2654...6699cf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3d32d8...0cfa59` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x40ef15...0bccee` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x450d07...1a9e52` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x47de14...cf33a0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4beb0e...367496` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4c299c...52e26c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4ca2bc...a7154b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4cd3f0...320a09` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x501a64...46f5c6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x50e6a8...e6619c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x542323...2e6fb1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x54f710...09b2b9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x59d79f...2e5571` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x59fa10...3a640a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5beec4...9fdaf5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5d6fd6...7ae0d1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5d8393...b9a791` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5e1d14...3c97ca` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6179e4...083787` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x622ea7...a04571` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x63fa5a...8554f5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x65892c...3383b0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6696ce...5ada52` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x66cd79...c2c7dd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6f251a...978869` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x708583...aedb91` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x709099...c9545e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7639cf...f69810` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x771037...07ae7d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x77533b...0e132b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x776a40...1d5aa4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x78f933...4e78a5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x792e0e...24295e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x808ba4...e82c52` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x814328...c07ac1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x81c76e...936e5b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x82b0d0...8aace7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x82f99d...e6c01f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x83c72c...4f3c84` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x86f9cd...3957ca` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8ddbb2...ebbd16` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x91a020...1b6311` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x93b536...609c75` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x981b9e...831ea0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9c83e3...4d1b3b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9d1abe...ac5042` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9d26fb...6b2c53` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa0a78a...7f7aef` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa13391...c7f038` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa4271b...6cf8d5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa7fb26...383fe4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa814eb...d8408d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xad87f9...84ce15` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaf7b7d...60b23c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb21e80...3a85e8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb2eb2c...c12e32` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb9ba0f...a1a3b8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbb6d5e...5e6dc6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbd2272...724fb0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc27377...2d2d11` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc28aeb...dd0e05` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc4d8fd...0497c0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcc2b96...451873` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcd5c37...cde199` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xce1ca5...3a58f7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd18d07...289095` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd23554...ceba6a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd2da7b...9dce7b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd40777...16574e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd5f4f2...621e15` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd6e770...0aeb0d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd838e6...cf04b6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd8a52f...93a4c6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd9a1c4...c25bbf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdad8cb...b12793` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe3bdc6...5e5e60` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe5370a...5c15b8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe82154...c8f005` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xea76ff...02a791` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xeec092...6bb411` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xef3192...16bd35` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xefa40e...ed48f5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf0e3a9...c1ec49` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf21e06...2782dd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf581cc...6350ac` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf84b4b...a8c806` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf8e9f1...6cb48d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfabe94...4de948` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfe8d5c...8b4743` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xffc1d3...70cbd5` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-BookUSD-v1.0.pdf](https://github.com/BookMemeBsc/bookusd-contracts/blob/main/PeckShield-Audit-Report-BookUSD-v1.0.pdf) | PeckShield | Audit | 2025-05 | aging | Direct | contract_name | 4 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x2d7a5c...830217`](./contracts/bsc-56/0x2d7a5c70484863055e3fcc9e69fb3e7aa1830217/) | LUSDToken | token | $41,705.78 | Verified native implementation with $41,705.78 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x466eaa...4c353d`](./contracts/bsc-56/0x466eaa98d1e6fa238309a5795ce51038614c353d/) | LpTool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x73317c...f089f8`](./contracts/bsc-56/0x73317c7d55bbf7306339cf8423a83e29a8f089f8/) | LQTYStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xf0f14c...cb9b2f`](./contracts/bsc-56/0xf0f14cbd7ce6753bc209eb0d8f67fc84cccb9b2f/) | MintStakeShare | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x7c3b00...3cb9e2`](./contracts/bsc-56/0x7c3b00cb3b40cc77d88329a58574e29cfa3cb9e2/) | MintStakeShareExpansion | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3a11c0...d17fac`](./contracts/bsc-56/0x3a11c0a0f7818aa88e57c568e31bfc9427d17fac/) | StabilityPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 132 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=4

Fork inheritance lineage and inherited audits are included when available.
