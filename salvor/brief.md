# Agentic Audit Brief: Salvor

⚠️ Lifecycle status: UNKNOWN - TVL dropped 32.6% over 90 days

## Project Overview

- Project: Salvor (`salvor`)
- Website: [https://salvor.io](https://salvor.io)
- Lifecycle: unknown (Tier 0, 88.5% below peak)
- Generated: 2026-06-21T15:24:28.137Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: avalanche
- Contract surface: 80 unique implementations (155 raw deployments)
- DeFi Llama TVL: $660,534.10
- On-chain TVL (included contracts): $745,133.10
- TVL by chain: Avalanche $745,133.10

## Project Description

Salvor is an NFT marketplace and DeFi platform on Avalanche that enables users to trade NFTs, stake tokens, and participate in liquidity pools. It also supports token launches and rentals for hardware and subnets.

### Architecture

The Salvor family integrates an NFT marketplace (ArtMarketplace) with staking (StakingV3) and governance (VeArt, SalvorGovernanceToken). Supporting contracts handle token wrapping, rentals, and factory deployments, all sharing the same proxy-based upgradeable infrastructure.

## Contract Surface Quality

- Indexed contracts: 571; live-surface contracts included: 155 (155 live, 0 unknown).
- Excluded by liveness: 334 inactive, 82 singleton, 0 uninitialized.
- Deployment units: 2/42 live.
- Detected codebases: uniswap-v2
- Unverified dependencies: 7/30.

## Audit Coverage Summary

- Verified implementations audited: 3/69 (4.3%)
- Verified + Unaudited implementations: 66
- Verified by bytecode match: 0
- Unverified implementations: 11
- Unique implementations: 80
- Raw deployments: 155
- Audits discovered: 3
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): $745,133.10
- Latest audit: 2023-03 (stale)
- Staleness: 0 fresh, 0 aging, 3 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of $745,133.10 represents exposure in a protocol with unknown activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 3 | 4.3% | 2023-03 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SalvorGovernanceToken | token | avalanche | n/a | [`0xf99516...70a90e`](./contracts/avalanche-43114/0xf99516bc189af00ff8effd5a1f2295b67d70a90e/) | ✅ Audited |
| VeArt | unknown | avalanche | unit-42937 | [`0x72b73f...02ebaa`](./contracts/avalanche-43114/0x72b73fa1569df9ff1ae9b29cd5b164af6c02ebaa/) | ✅ Audited |
| Vesting | operational_periphery | avalanche | n/a | 2 deployments: avalanche [`0x93640f...d7dcc5`](./contracts/avalanche-43114/0x93640f79cca740bdaaec37cd0eaf553ae5d7dcc5/); avalanche `0xefac81...c2be20` | ✅ Audited |

### ⚠️ Verified + Unaudited (66)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| TokenGGP | token | avalanche | n/a | [`0x69260b...2cd11d`](./contracts/avalanche-43114/0x69260b9483f9871ca57f81a90d91e2f96c2cd11d/) | ⚠️ Unaudited |
| GECToken | token | avalanche | n/a | [`0xe8385c...4881f3`](./contracts/avalanche-43114/0xe8385cecb013561b69beb63ff59f4d10734881f3/) | ⚠️ Unaudited |
| EarningsBayV2Token | token | avalanche | n/a | [`0x1c7c53...7a42f9`](./contracts/avalanche-43114/0x1c7c53aa86b49a28c627b6450091998e447a42f9/) | ⚠️ Unaudited |
| BellumToken | token | avalanche | n/a | 4 deployments: avalanche [`0x03f774...42f155`](./contracts/avalanche-43114/0x03f77458e1eb9fa72b8186b573e40b106442f155/); avalanche `0x4a5bb4...e6e4d5`; avalanche `0x6ec180...4ab3d7`; avalanche `0xb44b64...006196` | ⚠️ Unaudited |
| ApexMaker | unknown | avalanche | n/a | [`0xf98ea8...e4f18e`](./contracts/avalanche-43114/0xf98ea8531cf95ec46c327f4a36484ff33ce4f18e/) | ⚠️ Unaudited |
| ApexMakerV2 | unknown | avalanche | n/a | [`0x3bf597...4e53ab`](./contracts/avalanche-43114/0x3bf59726d92a382256d2d30434c1bdcbdc4e53ab/) | ⚠️ Unaudited |
| ApexPremier | unknown | avalanche | n/a | [`0xd189d2...d8daac`](./contracts/avalanche-43114/0xd189d2a687238efe5ab4ec41a6e0952b3dd8daac/) | ⚠️ Unaudited |
| ArtMarketplace | unknown | avalanche | unit-42934 | [`0x648133...b56f66`](./contracts/avalanche-43114/0x64813357113500b9829fd47956e6fa58ebb56f66/) | ⚠️ Unaudited |
| BIFKN314 | unknown | avalanche | n/a | [`0xcffb86...9363dd`](./contracts/avalanche-43114/0xcffb862299f971121e731422090e318f529363dd/) | ⚠️ Unaudited |
| BIFKN314Factory | registry | avalanche | n/a | 2 deployments: avalanche [`0x3d193d...106a87`](./contracts/avalanche-43114/0x3d193de151f8e4e3ce1c4cb2977f806663106a87/); avalanche `0x96a97d...dab0f0` | ⚠️ Unaudited |
| BIFKN314Locker | unknown | avalanche | n/a | [`0xdfb880...845802`](./contracts/avalanche-43114/0xdfb8803797b11c64cd8520b611816924ce845802/) | ⚠️ Unaudited |
| BIFKN314Mintable | unknown | avalanche | n/a | 28 deployments: avalanche [`0x18e015...25a649`](./contracts/avalanche-43114/0x18e0155c8dbd145bd8ebd32bc4cccdd2fa25a649/); avalanche `0x19b7cc...7f4fed`; avalanche `0x1b923f...3b1516`; avalanche `0x1c7b3f...aad39a`; avalanche `0x1ff575...914d2f`; avalanche `0x2aaad9...974761`; avalanche `0x2e3ac2...e536fb`; avalanche `0x463a7e...c75e9a`; avalanche `0x490bf7...02e3eb`; avalanche `0x4a8876...2e6138`; avalanche `0x4ab51b...404d80`; avalanche `0x4df08c...f5dc9a`; avalanche `0x5b5913...481ce1`; avalanche `0x5facc8...a26461`; avalanche `0x65fcc0...e053f0`; avalanche `0x836094...e47cd1`; avalanche `0x8bb1e4...324bed`; avalanche `0x8e02a1...f65d96`; avalanche `0x9a25d8...f70736`; avalanche `0x9af107...5d697e`; avalanche `0x9fa9b0...92c15e`; avalanche `0xbe2ff4...fc545b`; avalanche `0xbf835b...ae176d`; avalanche `0xce6450...616da6`; avalanche `0xcec0b5...0442bd`; avalanche `0xda5d3f...b00947`; avalanche `0xdd4bfa...956d14`; avalanche `0xeb3dfd...6a8734` | ⚠️ Unaudited |
| BIFKN314RouterV2 | adapter | avalanche | n/a | 3 deployments: avalanche [`0x5d2dda...28082b`](./contracts/avalanche-43114/0x5d2dda02280f55a9d4529eadfa45ff032928082b/); avalanche `0x6242c8...2744fc`; avalanche `0xa6d21c...11a682` | ⚠️ Unaudited |
| BIFKN314WrapperMintable | unknown | avalanche | n/a | 29 deployments: avalanche [`0x0133a8...374bff`](./contracts/avalanche-43114/0x0133a82c4a2ec404ea61529c45ee15b08d374bff/); avalanche `0x098086...18b3da`; avalanche `0x1a308e...620f54`; avalanche `0x1f6c7e...f8e50f`; avalanche `0x1fb3f2...49c612`; avalanche `0x26ab72...3124d5`; avalanche `0x28f699...ad020c`; avalanche `0x430dde...ab2f46`; avalanche `0x485ea0...d6ed82`; avalanche `0x52e44b...e119ad`; avalanche `0x5c84b4...c3e9f9`; avalanche `0x5fe449...1ac6d6`; avalanche `0x636483...3b8941`; avalanche `0x69e852...87143b`; avalanche `0x6c5d31...5f05a2`; avalanche `0x737805...6a2e68`; avalanche `0x77cb12...9e8573`; avalanche `0x7e4126...811b5d`; avalanche `0x9dcde3...8be6c4`; avalanche `0xa28745...c00abe`; avalanche `0xae3f01...1b47a0`; avalanche `0xb47f0d...7ce5c3`; avalanche `0xbf2b86...97789e`; avalanche `0xbf88e0...31bb18`; avalanche `0xc80f88...fc817d`; avalanche `0xd714f2...fba4ec`; avalanche `0xde2468...0114a1`; avalanche `0xfb0cf8...d29332`; avalanche `0xfc6c9b...4e3d81` | ⚠️ Unaudited |
| BIFKNChefStrategy | core_logic | avalanche | n/a | [`0x421d0d...128815`](./contracts/avalanche-43114/0x421d0df5f147aefe3819466f6bc93fd278128815/) | ⚠️ Unaudited |
| BIFKNChefV2 | unknown | avalanche | n/a | [`0x599587...ed38d3`](./contracts/avalanche-43114/0x5995876c9c6e2c23c1c5fc902661127ff9ed38d3/) | ⚠️ Unaudited |
| BIFKNRewarder | unknown | avalanche | n/a | [`0xc158d2...67194f`](./contracts/avalanche-43114/0xc158d2d31a854644ac7b1ff13fcb1c1def67194f/) | ⚠️ Unaudited |
| BLS | unknown | avalanche | n/a | [`0x46b914...dcaf9d`](./contracts/avalanche-43114/0x46b9144771cb3195d66e4eda643a7493fadcaf9d/) | ⚠️ Unaudited |
| Bonez | unknown | avalanche | n/a | [`0x4d6ec4...2ab677`](./contracts/avalanche-43114/0x4d6ec47118f807ace03d3b3a4ee6aa96cb2ab677/) | ⚠️ Unaudited |
| ClaimNodeOp | unknown | avalanche | n/a | [`0xb42cfa...afc35c`](./contracts/avalanche-43114/0xb42cfad450b46fdc9cac5fbf14bc2e6091afc35c/) | ⚠️ Unaudited |
| ClaimProtocolDAO | unknown | avalanche | n/a | [`0x6476a7...bb286c`](./contracts/avalanche-43114/0x6476a72282ea701748f56dcfb8a9ffa919bb286c/) | ⚠️ Unaudited |
| ColonyGovernanceToken | token | avalanche | n/a | [`0xec3492...1793e6`](./contracts/avalanche-43114/0xec3492a2508ddf4fdc0cd76f31f340b30d1793e6/) | ⚠️ Unaudited |
| ColonyRouter | adapter | avalanche | n/a | [`0xa2e7ab...89a131`](./contracts/avalanche-43114/0xa2e7ab89a2c59818e1ecd925e718a9d63889a131/) | ⚠️ Unaudited |
| CopperOrbMinter | unknown | avalanche | n/a | [`0xae51aa...20770a`](./contracts/avalanche-43114/0xae51aa005bb123f211730fed55a5fbf2a620770a/) | ⚠️ Unaudited |
| DogWifTrainer | unknown | avalanche | n/a | [`0x8e3751...85f63d`](./contracts/avalanche-43114/0x8e3751e7e4bd1093fddcd68fdb10cc86d785f63d/) | ⚠️ Unaudited |
| Doorkeeper | operational_periphery | avalanche | n/a | [`0x2598eb...ed1e56`](./contracts/avalanche-43114/0x2598ebdfa5d414695ab6f56efdbc989d8eed1e56/) | ⚠️ Unaudited |
| EmissionsToken | operational_periphery | avalanche | n/a | [`0xaaab9d...081c6b`](./contracts/avalanche-43114/0xaaab9d12a30504559b0c5a9a5977fee4a6081c6b/) | ⚠️ Unaudited |
| ERC20Tokensx | token | avalanche | n/a | 3 deployments: avalanche [`0x201d04...062d38`](./contracts/avalanche-43114/0x201d04f88bc9b3bdacdf0519a95e117f25062d38/); avalanche `0x56b9f5...09c304`; avalanche `0x8f5642...aa832a` | ⚠️ Unaudited |
| GEGGSINCUBATOR | unknown | avalanche | n/a | [`0xaa2cee...6b1c4f`](./contracts/avalanche-43114/0xaa2cee2d7f93e38014bcc8d236484712ca6b1c4f/) | ⚠️ Unaudited |
| GoldenOrbSwapper | adapter | avalanche | n/a | [`0xaa2ef7...e04ba1`](./contracts/avalanche-43114/0xaa2ef728ed07c52c91a5dc2f21f087bf42e04ba1/) | ⚠️ Unaudited |
| Husky | unknown | avalanche | n/a | [`0x65378b...f4a654`](./contracts/avalanche-43114/0x65378b697853568da9ff8eab60c13e1ee9f4a654/) | ⚠️ Unaudited |
| IndexFeeDistributor | operational_periphery | avalanche | n/a | [`0x650a85...1fcd41`](./contracts/avalanche-43114/0x650a85049d2284a90c28a2c0e48506aebd1fcd41/) | ⚠️ Unaudited |
| Juicy | unknown | avalanche | n/a | [`0xc65472...a6af55`](./contracts/avalanche-43114/0xc654721fbf1f374fd9ffa3385bba2f4932a6af55/) | ⚠️ Unaudited |
| Ket | unknown | avalanche | n/a | [`0xffff00...2b6ed7`](./contracts/avalanche-43114/0xffff003a6bad9b743d658048742935fffe2b6ed7/) | ⚠️ Unaudited |
| KimboCollege | unknown | avalanche | n/a | [`0x4e6b2a...f4590c`](./contracts/avalanche-43114/0x4e6b2a6a282f62d5a1c449c1a52237e913f4590c/) | ⚠️ Unaudited |
| KimboTrainer | unknown | avalanche | n/a | [`0xaeb261...a06e22`](./contracts/avalanche-43114/0xaeb261db831fd11a3f700014f3ace6073da06e22/) | ⚠️ Unaudited |
| KONG | unknown | avalanche | n/a | [`0xebb5d4...1fc999`](./contracts/avalanche-43114/0xebb5d4959b2fba6318fbda7d03cd44ae771fc999/) | ⚠️ Unaudited |
| KOVIN | unknown | avalanche | n/a | [`0x694200...8c5cbb`](./contracts/avalanche-43114/0x694200a68b18232916353250955be220e88c5cbb/) | ⚠️ Unaudited |
| KovinJeckpot | unknown | avalanche | n/a | [`0x70b145...7febc3`](./contracts/avalanche-43114/0x70b145d9636747e45fc2fc6245b0f9cd4d7febc3/) | ⚠️ Unaudited |
| KycProofVerification | unknown | avalanche | n/a | [`0x580ddd...3fa0e9`](./contracts/avalanche-43114/0x580ddd6fa80f75e40ff6975e0a9d2688b03fa0e9/) | ⚠️ Unaudited |
| Laifu | unknown | avalanche | n/a | [`0x21e32d...93c24f`](./contracts/avalanche-43114/0x21e32d59b1f9574674006a4101150a004d93c24f/) | ⚠️ Unaudited |
| Landwolf | unknown | avalanche | n/a | [`0x4f94b8...4438ec`](./contracts/avalanche-43114/0x4f94b8aef08c92fefe416af073f1df1e284438ec/) | ⚠️ Unaudited |
| MasterChefColony | unknown | avalanche | n/a | [`0x2ac45f...3947d0`](./contracts/avalanche-43114/0x2ac45f92eabaa8dcb2ea1807a659a1393c3947d0/) | ⚠️ Unaudited |
| MemeToken | token | avalanche | n/a | [`0x7a842a...e6bc75`](./contracts/avalanche-43114/0x7a842a6f4580edd3df41c1f31e0395044de6bc75/) | ⚠️ Unaudited |
| Meow | unknown | avalanche | n/a | [`0x8ad25b...8f6187`](./contracts/avalanche-43114/0x8ad25b0083c9879942a64f00f20a70d3278f6187/) | ⚠️ Unaudited |
| MinipoolManager | core_logic | avalanche | n/a | [`0xc300bc...268ee7`](./contracts/avalanche-43114/0xc300bc9b4b690ba7a182126299a0618ece268ee7/) | ⚠️ Unaudited |
| NOODS | unknown | avalanche | n/a | [`0x206336...a869e1`](./contracts/avalanche-43114/0x206336c741178d976e9c5444987497bd8fa869e1/) | ⚠️ Unaudited |
| Ocyticus | unknown | avalanche | n/a | [`0xffdc3b...ad5542`](./contracts/avalanche-43114/0xffdc3b731c57a7179b90fe7f5c2b5b87a5ad5542/) | ⚠️ Unaudited |
| Oracle | operational_periphery | avalanche | n/a | [`0x30fb91...a16db7`](./contracts/avalanche-43114/0x30fb915258d844e9dc420b2c3aa97420aea16db7/) | ⚠️ Unaudited |
| OrbMerger | unknown | avalanche | n/a | [`0x412cb1...347839`](./contracts/avalanche-43114/0x412cb1580c33c421b2765e91a6c231a246347839/) | ⚠️ Unaudited |
| OrbRedeemer | unknown | avalanche | n/a | [`0xc874be...7b565a`](./contracts/avalanche-43114/0xc874be82cb1f5d6842783e21333e76b2e17b565a/) | ⚠️ Unaudited |
| Png | unknown | avalanche | n/a | [`0x60781c...aca982`](./contracts/avalanche-43114/0x60781c2586d68229fde47564546784ab3faca982/) | ⚠️ Unaudited |
| ProtocolDAO | unknown | avalanche | n/a | [`0xfc3ea3...d8051a`](./contracts/avalanche-43114/0xfc3ea32c03b4be326bced178431789f7e2d8051a/) | ⚠️ Unaudited |
| ProxyAdmin | governance | avalanche | n/a | 3 deployments: avalanche [`0x6e8fd3...aed940`](./contracts/avalanche-43114/0x6e8fd36d51d159209054dadda7f87aa4e1aed940/); avalanche `0xbc5627...e9e190`; avalanche `0xf4c562...1620a9` | ⚠️ Unaudited |
| RewardsPool | operational_periphery | avalanche | n/a | [`0xaa8fd0...7c1b1d`](./contracts/avalanche-43114/0xaa8fd06cc3f1059b6d35870bbf625c1bac7c1b1d/) | ⚠️ Unaudited |
| SQRCAT | unknown | avalanche | n/a | [`0xc8e7fb...03f2d5`](./contracts/avalanche-43114/0xc8e7fb72b53d08c4f95b93b390ed3f132d03f2d5/) | ⚠️ Unaudited |
| Staking | unknown | avalanche | n/a | 2 deployments: avalanche [`0x5b0d74...1dc557`](./contracts/avalanche-43114/0x5b0d74c78f2588b3c5c49857edb856cc731dc557/); avalanche `0xb6ddbf...26aecb` | ⚠️ Unaudited |
| StAvaxWavaxOracle | operational_periphery | avalanche | n/a | 2 deployments: avalanche [`0x7759c6...cb618d`](./contracts/avalanche-43114/0x7759c62e0e3c1c6ee5789b60ccd0826936cb618d/); avalanche `0xa582a3...bc3a4b` | ⚠️ Unaudited |
| ThePit | unknown | avalanche | n/a | [`0xc9871b...6fa33b`](./contracts/avalanche-43114/0xc9871bf1ee787f2134f69d6c6ed010bd636fa33b/) | ⚠️ Unaudited |
| Timelock | governance | avalanche | n/a | [`0xcd385f...14af41`](./contracts/avalanche-43114/0xcd385f1947d532186f3f6aaa93966e3e9c14af41/) | ⚠️ Unaudited |
| TokenggAVAX | token | avalanche | n/a | 3 deployments: avalanche [`0x576d98...ca7323`](./contracts/avalanche-43114/0x576d98d26419c5ce9595833403f64d919eca7323/); avalanche `0x84e71c...ceb922`; avalanche `0xd960ce...16e584` | ⚠️ Unaudited |
| TokenVesting | operational_periphery | avalanche | n/a | 2 deployments: avalanche [`0x49424f...1d5586`](./contracts/avalanche-43114/0x49424f026731af05a7a5ecc25901d0d9841d5586/); avalanche `0x5d7dcc...a666fd` | ⚠️ Unaudited |
| TwapGGP | unknown | avalanche | n/a | [`0x3155a8...d56cfe`](./contracts/avalanche-43114/0x3155a8f74f8618ebfdf4e04b40e86e5a51d56cfe/) | ⚠️ Unaudited |
| USDCInvestmentPool | operational_periphery | avalanche | n/a | [`0x82d7d9...9c4050`](./contracts/avalanche-43114/0x82d7d932e3e12d18f01838d4c01c1dbb539c4050/) | ⚠️ Unaudited |
| WithdrawQueue | operational_periphery | avalanche | n/a | 5 deployments: avalanche [`0x3dc349...5d08e2`](./contracts/avalanche-43114/0x3dc34920e12067de82de2a94cd46544b255d08e2/); avalanche `0x4043da...b45e6e`; avalanche `0x472e82...f56238`; avalanche `0x55eadf...bd8a16`; avalanche `0x87c1b4...b48a64` | ⚠️ Unaudited |
| xBIFKN314 | unknown | avalanche | n/a | [`0xa43f06...86374f`](./contracts/avalanche-43114/0xa43f06724e10561ea416ad7438ccfc94f486374f/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (11)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | avalanche | n/a | `0x15dbf0...68ce47` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x18e360...c18973` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3db497...79c071` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x41f2c5...bfea01` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x58c4b2...0740f1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6973af...e3cf3d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa224dd...fc6be0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb306c9...b20b04` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xcc42c3...b1d780` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xec16d6...60144d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf13d43...e8cad1` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Rendered PDF capture](https://3680626664-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FfUJhj5pOCZ1OqOS2mFCs%2Fuploads%2FLnkp7kxoSMTgU9Kh0q2A%2FSalvor_15082022_SCAudit_Report.pdf) | unknown | Audit | 2022-09 | stale | Direct | contract_name | 0 | n/a |
| [Rendered PDF capture (also discovered via alternate URL)](https://3680626664-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FfUJhj5pOCZ1OqOS2mFCs%2Fuploads%2FaHdorsVLkkSsvnJ1557L%2FSalvor_SC%20Audit%20Report_15022023__.pdf) | unknown | Audit | 2023-03 | stale | Direct | contract_name|n/a | 1 | high |
| [Rendered PDF capture (also discovered via alternate URL)](https://3680626664-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FfUJhj5pOCZ1OqOS2mFCs%2Fuploads%2FkvTuvmkMW2m2WJhcqjQB%2FSalvor_19122022_SCAudit_Report_%5BSA-871%5D.pdf) | unknown | Audit | 2023-01 | stale | Direct | contract_name|n/a | 3 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | [`0x3bf597...4e53ab`](./contracts/avalanche-43114/0x3bf59726d92a382256d2d30434c1bdcbdc4e53ab/) | ApexMakerV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xd189d2...d8daac`](./contracts/avalanche-43114/0xd189d2a687238efe5ab4ec41a6e0952b3dd8daac/) | ApexPremier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xcffb86...9363dd`](./contracts/avalanche-43114/0xcffb862299f971121e731422090e318f529363dd/) | BIFKN314 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x3d193d...106a87`](./contracts/avalanche-43114/0x3d193de151f8e4e3ce1c4cb2977f806663106a87/) | BIFKN314Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xdfb880...845802`](./contracts/avalanche-43114/0xdfb8803797b11c64cd8520b611816924ce845802/) | BIFKN314Locker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x18e015...25a649`](./contracts/avalanche-43114/0x18e0155c8dbd145bd8ebd32bc4cccdd2fa25a649/) | BIFKN314Mintable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x5d2dda...28082b`](./contracts/avalanche-43114/0x5d2dda02280f55a9d4529eadfa45ff032928082b/) | BIFKN314RouterV2 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x421d0d...128815`](./contracts/avalanche-43114/0x421d0df5f147aefe3819466f6bc93fd278128815/) | BIFKNChefStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x599587...ed38d3`](./contracts/avalanche-43114/0x5995876c9c6e2c23c1c5fc902661127ff9ed38d3/) | BIFKNChefV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xc158d2...67194f`](./contracts/avalanche-43114/0xc158d2d31a854644ac7b1ff13fcb1c1def67194f/) | BIFKNRewarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xb42cfa...afc35c`](./contracts/avalanche-43114/0xb42cfad450b46fdc9cac5fbf14bc2e6091afc35c/) | ClaimNodeOp | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x6476a7...bb286c`](./contracts/avalanche-43114/0x6476a72282ea701748f56dcfb8a9ffa919bb286c/) | ClaimProtocolDAO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xae51aa...20770a`](./contracts/avalanche-43114/0xae51aa005bb123f211730fed55a5fbf2a620770a/) | CopperOrbMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x8e3751...85f63d`](./contracts/avalanche-43114/0x8e3751e7e4bd1093fddcd68fdb10cc86d785f63d/) | DogWifTrainer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x2598eb...ed1e56`](./contracts/avalanche-43114/0x2598ebdfa5d414695ab6f56efdbc989d8eed1e56/) | Doorkeeper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xaaab9d...081c6b`](./contracts/avalanche-43114/0xaaab9d12a30504559b0c5a9a5977fee4a6081c6b/) | EmissionsToken | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xaa2cee...6b1c4f`](./contracts/avalanche-43114/0xaa2cee2d7f93e38014bcc8d236484712ca6b1c4f/) | GEGGSINCUBATOR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x650a85...1fcd41`](./contracts/avalanche-43114/0x650a85049d2284a90c28a2c0e48506aebd1fcd41/) | IndexFeeDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x4e6b2a...f4590c`](./contracts/avalanche-43114/0x4e6b2a6a282f62d5a1c449c1a52237e913f4590c/) | KimboCollege | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xaeb261...a06e22`](./contracts/avalanche-43114/0xaeb261db831fd11a3f700014f3ace6073da06e22/) | KimboTrainer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x580ddd...3fa0e9`](./contracts/avalanche-43114/0x580ddd6fa80f75e40ff6975e0a9d2688b03fa0e9/) | KycProofVerification | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x21e32d...93c24f`](./contracts/avalanche-43114/0x21e32d59b1f9574674006a4101150a004d93c24f/) | Laifu | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x2ac45f...3947d0`](./contracts/avalanche-43114/0x2ac45f92eabaa8dcb2ea1807a659a1393c3947d0/) | MasterChefColony | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xc300bc...268ee7`](./contracts/avalanche-43114/0xc300bc9b4b690ba7a182126299a0618ece268ee7/) | MinipoolManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x206336...a869e1`](./contracts/avalanche-43114/0x206336c741178d976e9c5444987497bd8fa869e1/) | NOODS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x30fb91...a16db7`](./contracts/avalanche-43114/0x30fb915258d844e9dc420b2c3aa97420aea16db7/) | Oracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x412cb1...347839`](./contracts/avalanche-43114/0x412cb1580c33c421b2765e91a6c231a246347839/) | OrbMerger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xc874be...7b565a`](./contracts/avalanche-43114/0xc874be82cb1f5d6842783e21333e76b2e17b565a/) | OrbRedeemer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xaa8fd0...7c1b1d`](./contracts/avalanche-43114/0xaa8fd06cc3f1059b6d35870bbf625c1bac7c1b1d/) | RewardsPool | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x5b0d74...1dc557`](./contracts/avalanche-43114/0x5b0d74c78f2588b3c5c49857edb856cc731dc557/) | Staking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x7759c6...cb618d`](./contracts/avalanche-43114/0x7759c62e0e3c1c6ee5789b60ccd0826936cb618d/) | StAvaxWavaxOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xc9871b...6fa33b`](./contracts/avalanche-43114/0xc9871bf1ee787f2134f69d6c6ed010bd636fa33b/) | ThePit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x576d98...ca7323`](./contracts/avalanche-43114/0x576d98d26419c5ce9595833403f64d919eca7323/) | TokenggAVAX | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x49424f...1d5586`](./contracts/avalanche-43114/0x49424f026731af05a7a5ecc25901d0d9841d5586/) | TokenVesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x3155a8...d56cfe`](./contracts/avalanche-43114/0x3155a8f74f8618ebfdf4e04b40e86e5a51d56cfe/) | TwapGGP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x82d7d9...9c4050`](./contracts/avalanche-43114/0x82d7d932e3e12d18f01838d4c01c1dbb539c4050/) | USDCInvestmentPool | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x3dc349...5d08e2`](./contracts/avalanche-43114/0x3dc34920e12067de82de2a94cd46544b255d08e2/) | WithdrawQueue | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xa43f06...86374f`](./contracts/avalanche-43114/0xa43f06724e10561ea416ad7438ccfc94f486374f/) | xBIFKN314 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 46 |
| upstream | 1 |
| standard_library | 4 |
| needs_review | 29 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=13

Zero-match audit list:

- [13807] Rendered PDF capture

Fork inheritance lineage and inherited audits are included when available.
