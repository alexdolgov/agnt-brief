# Agentic Audit Brief: Gains Network

⚠️ Lifecycle status: UNKNOWN - TVL dropped 39.7% over 90 days

## Project Overview

- Project: Gains Network (`gains-network`)
- Website: [https://gains.trade/](https://gains.trade/)
- Lifecycle: unknown (Tier 0, 76.5% below peak)
- Generated: 2026-05-25T14:20:34.679Z
- Pipeline run: v2-pipeline-2026-05-25-eff36e-79e6
- Chains: arbitrum, base, polygon
- Contract surface: 760 unique implementations (1777 raw deployments)
- DeFi Llama TVL: $19,912,437.79
- On-chain TVL (included contracts): $21,861,405.22
- TVL by chain: Arbitrum $16,181,339.34 | Base $2,857,544.74 | Polygon $2,822,521.14

## Project Description

Gains Network is a decentralized leveraged trading platform that allows users to trade a wide range of assets (crypto, forex, commodities) with high leverage using synthetic assets. It operates across multiple chains and uses its own GNS token for staking, rewards, and governance.

### Architecture

The Gains Network family is a monolithic suite where all contracts share the same GNS token for staking, rewards, and fee mechanisms. Trading contracts rely on price aggregators and pair storage for market data, while staking and rewards contracts distribute incentives to users and oracles, all interconnected through the core token and trading flow.

## Audit Coverage Summary

- Verified implementations audited: 0/114 (0.0%)
- Verified + Unaudited implementations: 114
- Verified by bytecode match: 0
- Unverified implementations: 646
- Unique implementations: 760
- Raw deployments: 1777
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $21,861,405.22
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of $21,861,405.22 represents exposure in a protocol with unknown activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (114)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| GainsNetworkToken | token | arbitrum | 4 deployments: polygon `0xe5417a...397896`; base `0x26196c...001b80`; base `0xfb1aab...7ee7ac`; arbitrum [`0x18c11f...63a122`](./contracts/arbitrum-42161/0x18c11fd286c5ec11c3b683caa813b77f5163a122/) | ⚠️ Unaudited |
| GToken | token | polygon | 40 deployments: polygon [`0x08f3f5...6cb253`](./contracts/polygon-137/0x08f3f51d8d28f1b194e2e68e511f07d6f06cb253/); polygon `0x0fb7b7...9df222`; polygon `0x1544e1...3464fb`; polygon `0x20b263...c55155`; polygon `0x29019f...fe2c81`; polygon `0x65dff6...525fcc`; polygon `0x91993f...efe827`; polygon `0x956af4...013e7b`; polygon `0x9b059c...3bd6b0`; polygon `0xbdfd37...850fca`; polygon `0xc9f972...2a5a00`; polygon `0xf24f94...8b5988`; base `0x1d655c...7064e0`; base `0x46d977...bb0df0`; base `0x5335a8...09a708`; base `0x5d333f...fa1634`; base `0x9be876...f95ed6`; base `0xad2052...3d02e5`; base `0xd3bbe9...772c1c`; arbitrum `0x1f7eff...b1d9d6`; arbitrum `0x388277...e58093`; arbitrum `0x42249c...89c954`; arbitrum `0x485027...d46f48`; arbitrum `0x4beef1...a9a9f4`; arbitrum `0x5977a9...a2784c`; arbitrum `0x6899d5...243dc9`; arbitrum `0x7621c2...ec0093`; arbitrum `0x79967d...e1e6be`; arbitrum `0x85eb02...05542e`; arbitrum `0x8dfa03...842a41`; arbitrum `0x909393...98e874`; arbitrum `0x9a39cb...4b64dc`; arbitrum `0x9d27a7...369316`; arbitrum `0xa388d4...5444f2`; arbitrum `0xd3443e...8046e0`; arbitrum `0xd85e03...b9b91b`; arbitrum `0xdf8b50...cdfec2`; arbitrum `0xeb7545...d6cbdd`; arbitrum `0xf0cf7e...455659`; arbitrum `0xf40808...564d53` | ⚠️ Unaudited |
| GNSTradingVaultV5 | core_logic | polygon | [`0xd7052e...58804f`](./contracts/polygon-137/0xd7052ec0fe1fe25b20b7d65f6f3d490fce58804f/) | ⚠️ Unaudited |
| GNSNftRewardsV6_4_1 | token | polygon | 5 deployments: polygon [`0x5ac841...49abb6`](./contracts/polygon-137/0x5ac841ab23d501c1aa98b1ffe23588f06749abb6/); polygon `0x6f5c1b...8cb948`; polygon `0x8103c0...005f1c`; arbitrum `0x9ebb88...7b4a62`; arbitrum `0xde5750...acfec3` | ⚠️ Unaudited |
| ApeRewards | unknown | arbitrum | [`0xb970e2...e46655`](./contracts/arbitrum-42161/0xb970e280f9ddaa3349ab9f3ecf778970cde46655/) | ⚠️ Unaudited |
| ARBIS | unknown | arbitrum | [`0x9f20de...b03461`](./contracts/arbitrum-42161/0x9f20de1fc9b161b34089cbeae888168b44b03461/) | ⚠️ Unaudited |
| ArrayGetters | unknown | arbitrum | 15 deployments: polygon `0x173ac3...6b1a72`; polygon `0x5cfff8...e3c915`; polygon `0x8a0ea1...119727`; polygon `0xdb9f70...b48402`; polygon `0xea71d5...251921`; polygon `0xf2e84e...bd7c8f`; base `0x5903de...37f3b4`; base `0xbe77b6...26ada0`; base `0xe51f8f...6dcffa`; arbitrum [`0x061bc5...fc06a4`](./contracts/arbitrum-42161/0x061bc5884c7dfb4d6514f4101047f8c010fc06a4/); arbitrum `0x6b5179...ad1f64`; arbitrum `0x880cb1...347b08`; arbitrum `0xc5ea6e...e5c424`; arbitrum `0xf79d87...7ea4ba`; arbitrum `0xfddd43...a5dde2` | ⚠️ Unaudited |
| AutoFarmV2_CrossChain | unknown | polygon | [`0x89d065...eb0b76`](./contracts/polygon-137/0x89d065572136814230a55ddeeddec9df34eb0b76/) | ⚠️ Unaudited |
| BorrowingFeesUtils | core_logic | base | 16 deployments: polygon `0x1d5e7a...c4e2e9`; polygon `0x2162b9...77845b`; polygon `0x2934f3...d11ab9`; polygon `0xc17e26...600b2b`; polygon `0xf9ae45...9cc368`; polygon `0xff9176...35875e`; base [`0x02007a...faf882`](./contracts/base-8453/0x02007a5d5f31a4a27ad7db7f22b3e69265faf882/); base `0xb90f55...c0785f`; base `0xcea4ab...611669`; base `0xe9d6cf...d2f5f9`; arbitrum `0x59ae80...a985c1`; arbitrum `0x94b7af...859759`; arbitrum `0x9ab74b...744575`; arbitrum `0xb17295...88c35d`; arbitrum `0xdf4c3f...cb4124`; arbitrum `0xf4b86b...7959e8` | ⚠️ Unaudited |
| CarbonRewards | unknown | arbitrum | [`0x2c5058...d49f45`](./contracts/arbitrum-42161/0x2c5058325373d02dfd6c08e48d91fcaf8fd49f45/) | ⚠️ Unaudited |
| DevsRevenue | unknown | polygon | [`0xad85e2...9a20d6`](./contracts/polygon-137/0xad85e25576a4e4ae7423d9c0ee1eccf6c99a20d6/) | ⚠️ Unaudited |
| EpochBasedTokenClaim | token | arbitrum | [`0x6ac331...1006e8`](./contracts/arbitrum-42161/0x6ac331b603373d0006d72d3a3159b4c35e1006e8/) | ⚠️ Unaudited |
| ERC20Bridge | operational_periphery | arbitrum | 5 deployments: polygon `0xd5f889...97f5c9`; polygon `0xdf774a...ff75bd`; base `0x1671e2...2143a9`; arbitrum [`0x01caaa...5fa5e2`](./contracts/arbitrum-42161/0x01caaaa682ceba8cd6c02f93bb1393fb415fa5e2/); arbitrum `0x887f4d...163d20` | ⚠️ Unaudited |
| ERC721LockingBridge | operational_periphery | polygon | 4 deployments: polygon [`0x19eba9...1fda0b`](./contracts/polygon-137/0x19eba97430caf024685e433974beed30bc1fda0b/); polygon `0xa33f70...218362`; polygon `0xcce395...5b35eb`; polygon `0xdff9a5...460209` | ⚠️ Unaudited |
| ERC721MintingBridge | operational_periphery | arbitrum | 4 deployments: arbitrum [`0x0f9e43...e50827`](./contracts/arbitrum-42161/0x0f9e4375facbeb90daa850f677819b438ce50827/); arbitrum `0x3fcdf1...9b6e88`; arbitrum `0x563724...a0cc92`; arbitrum `0xeb7e6b...0e5bd0` | ⚠️ Unaudited |
| FeeTiersUtils | unknown | polygon | 4 deployments: polygon [`0x312c06...1abab9`](./contracts/polygon-137/0x312c06494f334f595da1e25759710d3d791abab9/); polygon `0x39b117...566cc3`; arbitrum `0xa3840b...ca2f15`; arbitrum `0xf0927a...96cccb` | ⚠️ Unaudited |
| GainsNetworkNft1 | token | arbitrum | [`0x75cbcc...2d6f89`](./contracts/arbitrum-42161/0x75cbcc5414c539c2b302a5fa60e30b949d2d6f89/) | ⚠️ Unaudited |
| GainsNetworkNft2 | token | arbitrum | [`0xd1f024...8e8a4e`](./contracts/arbitrum-42161/0xd1f024ba4dbb1593b486cb5031b3ac5ac28e8a4e/) | ⚠️ Unaudited |
| GainsNetworkNft3 | token | arbitrum | [`0x983415...84b384`](./contracts/arbitrum-42161/0x9834159eaf9811cf4c568294d5c7c9158f84b384/) | ⚠️ Unaudited |
| GainsNetworkNft4 | token | arbitrum | [`0x40f0ae...1a21a1`](./contracts/arbitrum-42161/0x40f0aeab6383be2f254ce40b79089070fa1a21a1/) | ⚠️ Unaudited |
| GainsNetworkNft5 | token | arbitrum | [`0x5e3b54...ffc9be`](./contracts/arbitrum-42161/0x5e3b541ad6acc4381c110247946c863e05ffc9be/) | ⚠️ Unaudited |
| GNSBorrowingFees | core_logic | base | 42 deployments: polygon `0x089fae...5c895d`; polygon `0x222be4...c63073`; polygon `0x2c765b...b05104`; polygon `0x3b3e18...a2d981`; polygon `0x498df3...43d1e3`; polygon `0x4c5c33...1b2788`; polygon `0x5e1f0c...822716`; polygon `0x6b59f1...6e58bb`; polygon `0x713895...9401c8`; polygon `0x83ae6f...96fe15`; polygon `0x9828b0...5cc4a6`; polygon `0xa1d0ec...9430f0`; polygon `0xac318a...82caba`; polygon `0xbc47a6...6ba368`; polygon `0xbd6fbf...89b5af`; polygon `0xd4465e...6d318c`; polygon `0xfcd812...f488e7`; base [`0x0102e0...ae4d8b`](./contracts/base-8453/0x0102e07c3bf688c77c2120d67f47cfd9d5ae4d8b/); base `0x01ab17...7a4664`; base `0x03e22c...569a4e`; base `0x9d81e0...4f904e`; base `0xb4bbee...5dc45b`; base `0xf9ebb2...91bd7f`; arbitrum `0x02446a...0e8692`; arbitrum `0x0775dc...1bdd66`; arbitrum `0x086dac...027407`; arbitrum `0x152a2a...c1e70a`; arbitrum `0x22c5dc...ca5de2`; arbitrum `0x374a4c...e8eb96`; arbitrum `0x4412d8...9bc826`; arbitrum `0x447593...ad3536`; arbitrum `0x497153...9f7e5a`; arbitrum `0x60dfdc...3fab95`; arbitrum `0x6c5041...a5af2a`; arbitrum `0x8531d6...a6d923`; arbitrum `0xa03e32...393154`; arbitrum `0xa52fe9...d5b859`; arbitrum `0xb4792f...a923d6`; arbitrum `0xbea5a3...a5d50c`; arbitrum `0xd87a9b...96483b`; arbitrum `0xf380f2...6dd7c8`; arbitrum `0xf9854f...df21ea` | ⚠️ Unaudited |
| GNSBorrowingFeesV6_3_2 | core_logic | arbitrum | 2 deployments: polygon `0xfa2d31...e84ce4`; arbitrum [`0xadf447...21c314`](./contracts/arbitrum-42161/0xadf447d4ce2538e055d3f32a65ada0d7ad21c314/) | ⚠️ Unaudited |
| GNSBorrowingFeesV6_4 | core_logic | arbitrum | 8 deployments: polygon `0x0cbd54...4e2fee`; polygon `0x7a8f74...92a1cd`; polygon `0x8628ef...bbee90`; polygon `0xb9deae...b53e5f`; polygon `0xd62c64...b0213c`; polygon `0xf342ba...e751b9`; arbitrum [`0x037d01...e05e06`](./contracts/arbitrum-42161/0x037d01b939b92049460a5f56b0dea3b2ffe05e06/); arbitrum `0xe54e75...8f0f92` | ⚠️ Unaudited |
| GNSChainConfig | governance | polygon | 4 deployments: polygon [`0x189c9e...4f91a2`](./contracts/polygon-137/0x189c9ed174cd19025864b5ee5f587ee8084f91a2/); polygon `0x269225...91ef27`; base `0xa81288...83d1be`; arbitrum `0x8df54d...45108b` | ⚠️ Unaudited |
| GNSCompensationHandlerV6_4_1 | unknown | arbitrum | 3 deployments: polygon `0x7859a5...fd8862`; polygon `0xc7d91a...6df6ae`; arbitrum [`0x30d8c5...ae7ebf`](./contracts/arbitrum-42161/0x30d8c505516ab7693e2de491bdceb028d8ae7ebf/) | ⚠️ Unaudited |
| GNSDaiTokenV5 | token | arbitrum | 4 deployments: arbitrum [`0x34e11c...4bee34`](./contracts/arbitrum-42161/0x34e11cfb98b0eb88cfb999b0a5e4235e124bee34/); arbitrum `0x4a459b...d937b4`; arbitrum `0x9a3438...00297c`; arbitrum `0xf89c7b...5e5e5b` | ⚠️ Unaudited |
| GNSFeeTiers | unknown | polygon | 25 deployments: polygon [`0x026594...38ad12`](./contracts/polygon-137/0x026594069e41dd9b85c0af804348c1c57c38ad12/); polygon `0x0cf423...3c0557`; polygon `0x270acd...c442a8`; polygon `0x2ea605...78c7d6`; polygon `0x40aeb9...97fdb5`; polygon `0x5d052f...5b165b`; polygon `0xd9b1e2...d21279`; polygon `0xed3734...198327`; polygon `0xf03295...c0fcdb`; polygon `0xf83a2d...3e2802`; base `0x1b4784...d4ae4e`; base `0x5ca91f...231562`; base `0x9d4e37...816220`; base `0xa17bfa...634bd0`; base `0xc1a4e1...fc35dc`; base `0xc90428...f702a0`; base `0xe8b6d1...ec77d6`; arbitrum `0x052a1c...072021`; arbitrum `0x0a016b...b4ae6a`; arbitrum `0x1ec697...3ab156`; arbitrum `0x4e1d77...48851b`; arbitrum `0x53e5ad...7a8a88`; arbitrum `0x95e7ab...ede1a4`; arbitrum `0x964fb7...8ff91a`; arbitrum `0xb8198e...fec9af` | ⚠️ Unaudited |
| GNSMulticall | periphery | arbitrum | 4 deployments: polygon `0xa09789...4635d7`; base `0x4b7e44...15d61e`; base `0xec79db...d1e626`; arbitrum [`0x212a3c...54374c`](./contracts/arbitrum-42161/0x212a3c0b8bf54ab5dc0c8274a4948b402e54374c/) | ⚠️ Unaudited |
| GNSMultiCollatDiamond | unknown | arbitrum | 27 deployments: polygon `0x209a9a...452018`; polygon `0x324a9d...8f4e24`; polygon `0x3bda8f...111064`; polygon `0x5270c1...e2bc4b`; polygon `0xab3087...010a3b`; polygon `0xc33100...eb33f9`; polygon `0xc8eee1...b16fc8`; polygon `0xe33ed7...cbfd5c`; polygon `0xef6998...69f1a6`; base `0x218d77...6cb8e9`; base `0x6cd5ac...704eeb`; base `0x7370fe...8b5928`; base `0x7dd7be...01e3e2`; base `0x841d5c...137bcf`; base `0x92ed0c...9194d7`; base `0xb7352f...ce8068`; base `0xc194e1...21aa09`; base `0xc6aa98...6b550e`; base `0xd95790...35c0d5`; arbitrum [`0x194cf9...1c0c8b`](./contracts/arbitrum-42161/0x194cf9e0bbde0dcecc8e93620ba08ba4441c0c8b/); arbitrum `0x1b7aea...c6ea8a`; arbitrum `0x5e0728...3f644d`; arbitrum `0x682593...d837d5`; arbitrum `0x75cdf8...632eaa`; arbitrum `0xe7b5b8...7cc864`; arbitrum `0xff162c...57f169`; arbitrum `0xff84c4...1de0ed` | ⚠️ Unaudited |
| GNSNftRewardsV6 | token | arbitrum | 8 deployments: polygon `0x347075...2f5268`; arbitrum [`0x308b9d...54ea76`](./contracts/arbitrum-42161/0x308b9d341b0a434bcd24b04f949603562254ea76/); arbitrum `0x7ce604...b4135f`; arbitrum `0x95120e...a266bb`; arbitrum `0xa65448...9afdb8`; arbitrum `0xa74000...ce60a6`; arbitrum `0xc2d107...3505b8`; arbitrum `0xf69639...13b4c2` | ⚠️ Unaudited |
| GNSNftRewardsV6_3_1 | token | arbitrum | 10 deployments: polygon `0x308cd9...fddba4`; polygon `0x81a073...491862`; polygon `0x8a3041...0143f9`; polygon `0x8bef5d...c67bd8`; polygon `0xb1afdd...f98a8b`; polygon `0xba30d4...825f10`; polygon `0xeea30e...bbbec1`; arbitrum [`0x09a5a0...6840a9`](./contracts/arbitrum-42161/0x09a5a0e9cccac3db70e6954386ca0eeb7f6840a9/); arbitrum `0x920d0b...66a5c8`; arbitrum `0xd901f0...8c193b` | ⚠️ Unaudited |
| GNSOracleRewards | operational_periphery | polygon | 12 deployments: polygon [`0x09c2c2...278249`](./contracts/polygon-137/0x09c2c2185f47c1cb86148a6441969d6127278249/); polygon `0x18d300...d366e5`; polygon `0x345fb9...f61e50`; polygon `0x77c3f6...ca1cca`; polygon `0xa50022...2d7ef4`; arbitrum `0x0d3ecf...32c611`; arbitrum `0x5bb741...433d48`; arbitrum `0x6a864a...4c456e`; arbitrum `0x93c663...e77981`; arbitrum `0xa3c13a...b8f560`; arbitrum `0xa7b65a...e07279`; arbitrum `0xacb9c3...4d2c88` | ⚠️ Unaudited |
| GNSOracleRewardsV6_4_1 | operational_periphery | polygon | 4 deployments: polygon [`0x03a643...d9331c`](./contracts/polygon-137/0x03a6431d25f881df94c0a96c574f214d28d9331c/); polygon `0x586d5e...18442e`; polygon `0xa839ac...faa968`; arbitrum `0x5f7612...ff4ea4` | ⚠️ Unaudited |
| GNSOtc | unknown | base | 21 deployments: polygon `0x144096...50967b`; polygon `0x737619...471d71`; polygon `0x786707...c8f535`; polygon `0x983863...196e17`; polygon `0x9eb6df...31e5a4`; polygon `0xbd32ce...1ef91f`; polygon `0xd9915e...29a4bd`; polygon `0xe786b9...8d4a31`; polygon `0xf3fe12...07ad83`; polygon `0xfe3e29...86b537`; base [`0x0d30fd...0a135b`](./contracts/base-8453/0x0d30fd5b87f212c002c5c881f237f580860a135b/); base `0x0f5e09...61de23`; base `0x24a4d2...b9e165`; base `0x6f2ee0...d13fee`; base `0xd3abb3...c2a125`; arbitrum `0x1094e3...1ccfdc`; arbitrum `0x8c3fbf...b1b1e0`; arbitrum `0x8c6824...d395cd`; arbitrum `0xb12db9...64f2ba`; arbitrum `0xdac762...ad52f4`; arbitrum `0xf17b1d...0b1b9a` | ⚠️ Unaudited |
| GNSPairInfosV6_1 | periphery | arbitrum | 8 deployments: polygon `0xee7442...63e977`; arbitrum [`0x04a5e3...82d497`](./contracts/arbitrum-42161/0x04a5e3cf21b0080b72facdca634349a56982d497/); arbitrum `0x0b5216...4501a6`; arbitrum `0x21caf0...b57d86`; arbitrum `0x522004...e50a38`; arbitrum `0xa6e3e6...5b1b2b`; arbitrum `0xd5e687...a2f9b6`; arbitrum `0xf13819...603f2d` | ⚠️ Unaudited |
| GNSPairsStorage | registry | polygon | 36 deployments: polygon [`0x03c757...8c5f41`](./contracts/polygon-137/0x03c757ccf50607d1d2c4789e1d894716898c5f41/); polygon `0x03e119...062943`; polygon `0x0a7ccb...476f46`; polygon `0x28af2a...db89e6`; polygon `0x2c3d9c...ead001`; polygon `0x350b32...14ec75`; polygon `0x473961...c6f5ed`; polygon `0x4e4b9a...0e7798`; polygon `0x55a54a...0b3e4e`; polygon `0x5bd335...7aa775`; polygon `0x75f31e...c6f9cb`; polygon `0x8692b3...baa576`; polygon `0xa5fd27...3c4ec0`; polygon `0xb7e282...8c8375`; polygon `0xbfe711...f021d9`; polygon `0xcaa953...f61562`; polygon `0xf93c4b...d9548e`; polygon `0xfa09d1...1aaf2e`; base `0x1cc216...0e9d2b`; base `0x56dbab...10a43b`; base `0x6dcd75...bfa9d5`; base `0x7a04e9...72c123`; base `0x8889f1...642c22`; base `0x8c8ecc...b72b05`; base `0x984550...3f6488`; base `0xf310d8...135d21`; arbitrum `0x1f6f73...f53585`; arbitrum `0x261eab...39dde5`; arbitrum `0x3217d2...5c0cb0`; arbitrum `0x34d44d...bd7f79`; arbitrum `0x4ba651...7233ca`; arbitrum `0x5715e4...35309a`; arbitrum `0x686d9d...eadf22`; arbitrum `0x7e01c3...edf356`; arbitrum `0xb8cb82...f23911`; arbitrum `0xe371bc...88b01f` | ⚠️ Unaudited |
| GNSPairsStorageV6 | registry | arbitrum | 8 deployments: polygon `0x6e5326...a8c922`; arbitrum [`0x0f43c4...258772`](./contracts/arbitrum-42161/0x0f43c47aca3518fde69e012857cbc9c880258772/); arbitrum `0x3157d6...4d65ad`; arbitrum `0x619179...961893`; arbitrum `0x779528...736d28`; arbitrum `0xd1c3fa...d32045`; arbitrum `0xf67df2...960d4b`; arbitrum `0xfda4d5...11ac1f` | ⚠️ Unaudited |
| GNSPoolV5 | core_logic | polygon | [`0x151757...6aa0c5`](./contracts/polygon-137/0x151757c2e830c467b28fe6c09c3174b6c76aa0c5/) | ⚠️ Unaudited |
| GNSPriceAggregator | operational_periphery | polygon | 45 deployments: polygon [`0x01b1ea...f71030`](./contracts/polygon-137/0x01b1ea7868aceb1e5e71369e1986afae1ff71030/); polygon `0x04d9d3...4ddc99`; polygon `0x15f46f...c50103`; polygon `0x16ac34...6d9d07`; polygon `0x2df511...a9ac32`; polygon `0x2e954d...62a3e4`; polygon `0x4d42e9...c74c10`; polygon `0x5e31c4...d81171`; polygon `0x5e5889...9ca5d8`; polygon `0x5f0823...731fde`; polygon `0x73d93d...e66a62`; polygon `0x888902...7f9c09`; polygon `0x9ec317...95d10b`; polygon `0x9f8785...40dc44`; polygon `0x9ffafa...6c233b`; polygon `0xcfc239...9bf8c4`; base `0x57bdb5...a89abc`; base `0x81ec75...a004b4`; base `0xb6cc60...28e50c`; base `0xdaba17...3814ce`; base `0xe47e2c...50dd6f`; base `0xf5ce3f...d10437`; arbitrum `0x058dd4...e5ec4b`; arbitrum `0x0a573c...c335e6`; arbitrum `0x10034e...9bc0de`; arbitrum `0x111b81...034b37`; arbitrum `0x1c25c1...9bacda`; arbitrum `0x1e7620...fcfc45`; arbitrum `0x3a1cd7...125135`; arbitrum `0x5995e6...dbd237`; arbitrum `0x6096be...ea1831`; arbitrum `0x66f231...4a0c83`; arbitrum `0x6b2e73...d4c73d`; arbitrum `0x74c55d...25f03d`; arbitrum `0x757d54...6185df`; arbitrum `0x820d38...66c390`; arbitrum `0x896ff1...1cd430`; arbitrum `0x92b31d...96ad0f`; arbitrum `0x9a4688...f4720a`; arbitrum `0xb26419...c1a9ff`; arbitrum `0xb56020...be016a`; arbitrum `0xb6712b...16040f`; arbitrum `0xe6b969...91bb6e`; arbitrum `0xfb03d3...ccc4b9`; arbitrum `0xfee4db...f4f60d` | ⚠️ Unaudited |
| GNSPriceAggregatorV6 | operational_periphery | polygon | [`0x5fb473...41178b`](./contracts/polygon-137/0x5fb47355828c0902acbbe759cee1b8342c41178b/) | ⚠️ Unaudited |
| GNSPriceAggregatorV6_2 | operational_periphery | arbitrum | 8 deployments: polygon `0x4c578c...990494`; polygon `0x58dcd5...7532e1`; polygon `0x9cfdc8...7dabcc`; polygon `0xa7a804...49dd67`; arbitrum [`0x1b4784...d4ae4e`](./contracts/arbitrum-42161/0x1b47846758456e24e865d6a1ad16a6c540d4ae4e/); arbitrum `0x66af85...85e20b`; arbitrum `0xb6cc60...28e50c`; arbitrum `0xb90f55...c0785f` | ⚠️ Unaudited |
| GNSPriceAggregatorV6_3 | operational_periphery | arbitrum | 5 deployments: polygon `0x631e88...8f6632`; arbitrum [`0x5d66f3...1f5b9f`](./contracts/arbitrum-42161/0x5d66f391efbddce62a1dd659d3d26d4b7c1f5b9f/); arbitrum `0xc9a4dc...b0140d`; arbitrum `0xcef1c7...e1ff21`; arbitrum `0xd0de74...a9489d` | ⚠️ Unaudited |
| GNSPriceAggregatorV6_4 | operational_periphery | polygon | 4 deployments: polygon [`0x126f32...58a816`](./contracts/polygon-137/0x126f32723c5fc8dfeb17c46b7b7dd3dcd458a816/); polygon `0x7cc9a3...e96f8c`; arbitrum `0x2e44a8...cbe0c3`; arbitrum `0x3f7c57...39439e` | ⚠️ Unaudited |
| GNSPriceImpact | operational_periphery | arbitrum | 29 deployments: polygon `0x377608...1cc96a`; polygon `0x3fd5f5...f0dbf6`; polygon `0x576b99...2501c1`; polygon `0x580573...493e32`; polygon `0x5e7362...fdcc21`; polygon `0x76d7ba...62a2cf`; polygon `0x7cc366...3fb219`; polygon `0xa08d93...273634`; polygon `0xac59a7...836b47`; polygon `0xe3bc5e...5cd324`; polygon `0xf4ce16...4d972f`; polygon `0xfc467e...6a31a9`; base `0x27386f...91a12e`; base `0x287868...b52e80`; base `0x2be5d7...1b0163`; base `0x41d6f7...acb8bb`; base `0x4b9f0d...de1f79`; base `0xb0a1db...cbe626`; arbitrum [`0x22a31b...bf1d12`](./contracts/arbitrum-42161/0x22a31bffccd5fa5c45dfae100e2b6f567cbf1d12/); arbitrum `0x2c029c...fa49e8`; arbitrum `0x46bc1d...ef213d`; arbitrum `0x51307c...fecf8a`; arbitrum `0x6f3243...d64d9e`; arbitrum `0x7c1393...bb6b4c`; arbitrum `0xa2fd82...ff1bea`; arbitrum `0xa4ce1a...5562f1`; arbitrum `0xa91d04...1f50b6`; arbitrum `0xcd95e5...daa5aa`; arbitrum `0xeb0eb6...8656b4` | ⚠️ Unaudited |
| GNSReferrals | unknown | base | 30 deployments: polygon `0x273369...93b668`; polygon `0x37a66b...0e724b`; polygon `0x40217a...ba6c92`; polygon `0x577c9c...0dbd6e`; polygon `0x6ea3e1...c74667`; polygon `0x7054b5...d67e5f`; polygon `0x83795c...0bbb36`; polygon `0x93e47d...3f6bee`; polygon `0xa52475...d643e4`; polygon `0xb064ad...6608aa`; polygon `0xbd825a...d6a087`; polygon `0xc78659...37ce50`; polygon `0xc9d6e6...8843e2`; polygon `0xf41a4c...fb0422`; base [`0x153b2e...7dbff9`](./contracts/base-8453/0x153b2e08bf39534180e76a8822d95c84bf7dbff9/); base `0x2421c6...81ceec`; base `0x4b3064...9545d8`; base `0x778dc0...1f7b9a`; base `0x819164...b41d73`; base `0xad1ede...0c83a4`; base `0xc0c556...ee5499`; base `0xe14879...a325d3`; arbitrum `0x2a959a...2ccb37`; arbitrum `0x32c903...a57f27`; arbitrum `0x3be1c3...b3219a`; arbitrum `0x40fdbf...fcd8b7`; arbitrum `0x5ee4ea...9bf063`; arbitrum `0x70e586...6eb3f0`; arbitrum `0xb3399f...3e76a3`; arbitrum `0xf7741b...a7e4f6` | ⚠️ Unaudited |
| GNSReferralsV6_2 | unknown | polygon | 8 deployments: polygon [`0x0f9498...052425`](./contracts/polygon-137/0x0f9498b1206bf9ffde2a2321fdb56f573a052425/); arbitrum `0x249ff4...4d4a9a`; arbitrum `0x2df07d...0f7b51`; arbitrum `0x4899e0...ce6092`; arbitrum `0x564e35...0f834a`; arbitrum `0x8c617f...2d124f`; arbitrum `0xaa379d...231b8f`; arbitrum `0xca0f88...d04b5a` | ⚠️ Unaudited |
| GNSStaking | unknown | polygon | 11 deployments: polygon [`0x1b9924...4b15f4`](./contracts/polygon-137/0x1b99244e75fbcee5763730e1d207d7cceb4b15f4/); polygon `0x20f924...eca664`; polygon `0x26aa44...7f1214`; polygon `0x8c74b2...e2beca`; base `0x28efaa...0dcbf3`; base `0x2b2395...3cfa83`; base `0x76bb00...0bf9fd`; arbitrum `0x1e4e07...f2a68e`; arbitrum `0x2f9251...73baac`; arbitrum `0x7edde7...5dc015`; arbitrum `0x9cda89...db96a4` | ⚠️ Unaudited |
| GNSStakingV6_2 | unknown | arbitrum | 8 deployments: polygon `0xfb06a7...c0819d`; arbitrum [`0x368767...384bb9`](./contracts/arbitrum-42161/0x368767c2da448fa6acf4ca4d4a25e99873384bb9/); arbitrum `0x6b8d3c...d3f9d6`; arbitrum `0x749e8b...b289cc`; arbitrum `0x905f03...28dd4a`; arbitrum `0xa37547...c522e4`; arbitrum `0xb190b3...0cceac`; arbitrum `0xcd05e2...7b7fb6` | ⚠️ Unaudited |
| GNSStakingV6_4_1 | unknown | polygon | 5 deployments: polygon [`0x04b4b0...090a3e`](./contracts/polygon-137/0x04b4b0fdb2a6dec6c8f7885a8b62c57765090a3e/); polygon `0x894c9c...1c9ca3`; polygon `0x9e8496...fff0bb`; polygon `0xe9b576...c10da6`; arbitrum `0x52a342...273e65` | ⚠️ Unaudited |
| GNSTestNft1 | token | arbitrum | 3 deployments: arbitrum [`0x292338...b01e8a`](./contracts/arbitrum-42161/0x29233896201c1fa8a475bad3ce71f98c75b01e8a/); arbitrum `0x615473...d7e01f`; arbitrum `0x87693d...be0a92` | ⚠️ Unaudited |
| GNSTestNft2 | token | arbitrum | 3 deployments: arbitrum [`0x26c1ec...ed8edf`](./contracts/arbitrum-42161/0x26c1ec6166ebb99b2ed94dc833d1d2696eed8edf/); arbitrum `0xaae00b...78dc45`; arbitrum `0xdaea35...3b7a49` | ⚠️ Unaudited |
| GNSTestNft3 | token | arbitrum | 3 deployments: arbitrum [`0x305267...5eda1a`](./contracts/arbitrum-42161/0x305267df8d93a0a92425ef487303a75f185eda1a/); arbitrum `0x936519...0beb72`; arbitrum `0xe368b6...9d3707` | ⚠️ Unaudited |
| GNSTestNft4 | token | arbitrum | 3 deployments: arbitrum [`0x449b7c...5d02c9`](./contracts/arbitrum-42161/0x449b7cae22d1fe19c2d8dbad66440140655d02c9/); arbitrum `0x891580...8781d4`; arbitrum `0x938012...cf65fb` | ⚠️ Unaudited |
| GNSTestNft5 | token | arbitrum | 3 deployments: arbitrum [`0x065f97...6d0572`](./contracts/arbitrum-42161/0x065f97a37d298695e7d3488509937b21f66d0572/); arbitrum `0x0f1428...bad088`; arbitrum `0x9474b1...a7be9d` | ⚠️ Unaudited |
| GNSTestToken | token | arbitrum | [`0x5c811d...932a81`](./contracts/arbitrum-42161/0x5c811dc555036cb521940973584bbad290932a81/) | ⚠️ Unaudited |
| GNSTimelockManager | governance | arbitrum | 5 deployments: polygon `0xf0a853...f44a40`; arbitrum [`0x1632c3...26f637`](./contracts/arbitrum-42161/0x1632c38cb208df8409753729dbfba5c58626f637/); arbitrum `0x7b85c3...b07b5b`; arbitrum `0x8e6ed4...8766b5`; arbitrum `0xd9ced0...5f4640` | ⚠️ Unaudited |
| GNSTimelockOwner | governance | polygon | 5 deployments: polygon [`0x322e18...96da0e`](./contracts/polygon-137/0x322e18fdb5d0b0221e4724dcc5883c4b7896da0e/); arbitrum `0x53c880...5afad1`; arbitrum `0x5f5e48...c4df0f`; arbitrum `0x649ad3...f3facb`; arbitrum `0xb94591...5d1382` | ⚠️ Unaudited |
| GNSTrading | unknown | arbitrum | 12 deployments: polygon `0x25cf93...12047d`; polygon `0x6e5260...b97977`; polygon `0x79d052...4d7f2d`; polygon `0x834735...5dd914`; polygon `0xa3151b...dfc6b6`; polygon `0xb0901f...111f61`; arbitrum [`0x0b213d...acc11c`](./contracts/arbitrum-42161/0x0b213d09c5264ffdceb3d24b86f746a2d8acc11c/); arbitrum `0x2c7e82...7f15dc`; arbitrum `0x2fe799...6ff650`; arbitrum `0x48b076...235c6f`; arbitrum `0x5be58a...63533b`; arbitrum `0xa779e5...2ff061` | ⚠️ Unaudited |
| GNSTradingBackendV6_3 | unknown | arbitrum | 5 deployments: polygon `0x9b2833...6f9d5f`; arbitrum [`0x49f025...f37881`](./contracts/arbitrum-42161/0x49f025f916880f7bda82d1da3409e5e716f37881/); arbitrum `0x55b2be...cd7483`; arbitrum `0x7f1cc9...543640`; arbitrum `0xd02d1d...94cd81` | ⚠️ Unaudited |
| GNSTradingCallbacks | unknown | base | 52 deployments: polygon `0x0bbed2...933755`; polygon `0x19955d...c8d36c`; polygon `0x1d9594...d1e018`; polygon `0x24bb26...4f81c8`; polygon `0x2ac674...5a1aef`; polygon `0x2d0def...517953`; polygon `0x37e565...13d264`; polygon `0x45750d...9cefd0`; polygon `0x48c64e...b62466`; polygon `0x53d212...0fd868`; polygon `0x74551a...f189f3`; polygon `0x7dfcd3...4d4c73`; polygon `0x812e40...82a96c`; polygon `0x82e593...a6b311`; polygon `0x969ff6...fdf19f`; polygon `0xb5619e...eee8fd`; polygon `0xc25ea6...7fcf4c`; polygon `0xc4b7a8...0e8c4d`; polygon `0xd9cb74...2c47be`; polygon `0xe6c0de...ac71e7`; polygon `0xea6065...e23c61`; polygon `0xedb593...2394fe`; base [`0x02432f...e57cbc`](./contracts/base-8453/0x02432fb59835f4a413a97e1a8e329545b1e57cbc/); base `0x4a59de...de53c1`; base `0x503c11...8cef36`; base `0x509575...af55c1`; base `0x62822e...a1c1af`; base `0x87f60a...e9205a`; base `0xe44d0e...15c31e`; arbitrum `0x198a4c...a3c8b3`; arbitrum `0x1d08e5...84cc25`; arbitrum `0x1fdea6...a3e58a`; arbitrum `0x2346f9...20d3eb`; arbitrum `0x298a69...0b7522`; arbitrum `0x333338...625b48`; arbitrum `0x4072ee...243fe1`; arbitrum `0x454225...6485bf`; arbitrum `0x493c28...ccf809`; arbitrum `0x62a9f5...1ce019`; arbitrum `0x6951ab...4459a5`; arbitrum `0x772b19...ef0c52`; arbitrum `0x7d059a...088a96`; arbitrum `0x7da07a...64a5b6`; arbitrum `0x7fbbf7...9f6c67`; arbitrum `0xa0d60b...b1f2b2`; arbitrum `0xa13f11...f863f8`; arbitrum `0xac152b...dc0dfd`; arbitrum `0xc14abb...790538`; arbitrum `0xc5fa29...323f8f`; arbitrum `0xc83e08...0f718e`; arbitrum `0xc923de...84b376`; arbitrum `0xeed25b...1c7d85` | ⚠️ Unaudited |
| GNSTradingCallbacksV5 | unknown | polygon | [`0x1e87e8...235bed`](./contracts/polygon-137/0x1e87e8703883a46ccdec4c8868043abe40235bed/) | ⚠️ Unaudited |
| GNSTradingCallbacksV6 | unknown | polygon | [`0xcf6391...270e28`](./contracts/polygon-137/0xcf63914f5160e596bc574bf4fd52c13a8d270e28/) | ⚠️ Unaudited |
| GNSTradingCallbacksV6_1 | unknown | polygon | [`0x170cc5...998a37`](./contracts/polygon-137/0x170cc5a70d6f544e5456881b586eb58180998a37/) | ⚠️ Unaudited |
| GNSTradingCallbacksV6_2 | unknown | arbitrum | 2 deployments: polygon `0x6805dd...629690`; arbitrum [`0x2688dd...0ed407`](./contracts/arbitrum-42161/0x2688ddab2c291f98c1f79cd682f35e41900ed407/) | ⚠️ Unaudited |
| GNSTradingCallbacksV6_3 | unknown | polygon | 9 deployments: polygon [`0x08a144...ddd888`](./contracts/polygon-137/0x08a144792239cb7517afbf11883011867eddd888/); polygon `0xb454d8...44e0fa`; arbitrum `0x19fa8e...68d41c`; arbitrum `0x2769bb...725f89`; arbitrum `0x66f0d3...b2b179`; arbitrum `0x697c74...9172cd`; arbitrum `0x6c612c...b28f46`; arbitrum `0xad65b9...735a55`; arbitrum `0xae31db...d06121` | ⚠️ Unaudited |
| GNSTradingCallbacksV6_3_1 | unknown | arbitrum | 8 deployments: polygon `0x5a4785...fd20c9`; polygon `0x6b5a7d...4d0ac8`; polygon `0x79cbfb...56f56c`; polygon `0x96cb68...a8c2b4`; polygon `0xdd7ed4...54e2f4`; arbitrum [`0x0765eb...7e1aaf`](./contracts/arbitrum-42161/0x0765ebc1411fc2db457fd01268e9d8dc087e1aaf/); arbitrum `0x23fc2a...f3f810`; arbitrum `0x5eb6cd...db983a` | ⚠️ Unaudited |
| GNSTradingCallbacksV6_3_2 | unknown | arbitrum | 2 deployments: polygon `0x9439fc...27cef8`; arbitrum [`0x2899e5...20d572`](./contracts/arbitrum-42161/0x2899e59a4617c488935765799f9ec4439220d572/) | ⚠️ Unaudited |
| GNSTradingCallbacksV6_4 | unknown | polygon | 5 deployments: polygon [`0x1523fa...2f7c6b`](./contracts/polygon-137/0x1523fabcbbcdab95bcec6b8ebecaeabc6b2f7c6b/); polygon `0x9a4975...11e4e3`; polygon `0xe2ea64...59cf90`; arbitrum `0x3951b0...6960c6`; arbitrum `0xaa874e...3f5375` | ⚠️ Unaudited |
| GNSTradingCallbacksV6_4_1 | unknown | arbitrum | 3 deployments: polygon `0x66f9b9...ceec78`; polygon `0xe35737...d58c9f`; arbitrum [`0x05c3d5...e04149`](./contracts/arbitrum-42161/0x05c3d5a2476b260b8938a225ea233f366be04149/) | ⚠️ Unaudited |
| GNSTradingDiamond | unknown | arbitrum | 4 deployments: polygon `0xe21806...da9a02`; polygon `0xe46500...485f67`; arbitrum [`0x0f3cba...3b9bb3`](./contracts/arbitrum-42161/0x0f3cba7d2cb755d89602be5993fd01eb863b9bb3/); arbitrum `0x40ea98...70d74d` | ⚠️ Unaudited |
| GNSTradingInteractions | unknown | polygon | 33 deployments: polygon [`0x0afaed...19afb5`](./contracts/polygon-137/0x0afaed0191e79374ca2d04efc85b4e719419afb5/); polygon `0x0fd69e...ef0f4d`; polygon `0x3735ae...d088e1`; polygon `0x3c6370...bf0d17`; polygon `0x4bc20f...d7c163`; polygon `0xb631b0...a3224c`; polygon `0xb72402...095a43`; polygon `0xbc21db...fe9736`; polygon `0xd341fa...b024dd`; polygon `0xe1a599...6b4304`; polygon `0xe20973...f2bf06`; polygon `0xe514d0...b6e406`; polygon `0xe9fd12...e49df1`; base `0x1ce544...7c1f10`; base `0x22ca73...e75cfe`; base `0x2a4fd5...722806`; base `0x52439a...d8f790`; base `0x8c4f96...993d3f`; base `0x8f6a71...51846c`; base `0xe6bee8...3cfdb3`; arbitrum `0x214344...9d1876`; arbitrum `0x346e10...c9cd4f`; arbitrum `0x35e893...b22837`; arbitrum `0x3a2a82...b7ddf2`; arbitrum `0x608f56...c4de74`; arbitrum `0x8dec66...9e347f`; arbitrum `0x901060...d6fe79`; arbitrum `0x9197b7...db471a`; arbitrum `0x9d2acd...3e2aae`; arbitrum `0xb69929...a7e53b`; arbitrum `0xd06fc0...e78843`; arbitrum `0xe4c173...3cefaa`; arbitrum `0xfea761...8676f8` | ⚠️ Unaudited |
| GNSTradingStateCopy | unknown | polygon | 2 deployments: polygon [`0x7f1bca...b29bc9`](./contracts/polygon-137/0x7f1bcaf274fa79909d1778c95c9947d882b29bc9/); arbitrum `0xa9bb71...4c96ae` | ⚠️ Unaudited |
| GNSTradingStorage | unknown | arbitrum | 35 deployments: polygon `0x1f8e7a...5dc02d`; polygon `0x308a75...78b0aa`; polygon `0x38926d...f72745`; polygon `0x49ca0e...e6df23`; polygon `0x58b211...5e02e2`; polygon `0x5c1a19...4d156d`; polygon `0x6ab4eb...f97c43`; polygon `0xa11c25...dcb987`; polygon `0xa2545e...3b10dd`; polygon `0xa99357...abaf2f`; polygon `0xbe499c...e94283`; polygon `0xc504c9...be9378`; polygon `0xe7712e...5bed4e`; base `0x0bc318...07a534`; base `0x5151c0...3d9e29`; base `0x53ebbc...3a52c0`; base `0x798c9d...74b9b0`; base `0xb8e919...cedb48`; base `0xce2d9d...5573a6`; arbitrum [`0x01fd80...cf9858`](./contracts/arbitrum-42161/0x01fd80b99424a455345df672e7719bbf86cf9858/); arbitrum `0x15d4ec...52d814`; arbitrum `0x284027...ebc512`; arbitrum `0x37217c...19779c`; arbitrum `0x3b09fc...fd60fd`; arbitrum `0x3e0ba1...0d7f3e`; arbitrum `0x516e2c...289572`; arbitrum `0x694bb9...ed8ef9`; arbitrum `0x75d853...06bc1a`; arbitrum `0x7c338c...d3ad8e`; arbitrum `0x82079d...c9565e`; arbitrum `0x8c5706...3e8f58`; arbitrum `0x9f70f1...d01c51`; arbitrum `0xe1c452...4cdd18`; arbitrum `0xfaf6ef...6106a6`; arbitrum `0xfe54a9...da4d27` | ⚠️ Unaudited |
| GNSTradingStorageV5 | unknown | arbitrum | 8 deployments: arbitrum [`0x05e765...7cf117`](./contracts/arbitrum-42161/0x05e765253bec77ce27a6ec4819c2f32d6e7cf117/); arbitrum `0x138ed8...60bdec`; arbitrum `0x2bc36a...203ee7`; arbitrum `0x46d977...bb0df0`; arbitrum `0x54422d...c5b09b`; arbitrum `0x5c05e5...5e0e80`; arbitrum `0x9f73fa...d22781`; arbitrum `0xcfa6eb...5be33c` | ⚠️ Unaudited |
| GNSTradingV5 | unknown | polygon | [`0x37c114...528ebe`](./contracts/polygon-137/0x37c11410b2c2a1cd4b3a0de2bd3a1808e0528ebe/) | ⚠️ Unaudited |
| GNSTradingV6 | unknown | polygon | [`0xf8a140...4fe559`](./contracts/polygon-137/0xf8a140db8b05bec52c7e86d0d40d72f8e54fe559/) | ⚠️ Unaudited |
| GNSTradingV6_1 | unknown | polygon | [`0xd8d177...5f8f58`](./contracts/polygon-137/0xd8d177efc926a18ee455da6f5f6a6cfcee5f8f58/) | ⚠️ Unaudited |
| GNSTradingV6_2 | unknown | arbitrum | 8 deployments: polygon `0x64e995...175146`; polygon `0x65187f...353db1`; arbitrum [`0x07c848...a11fe0`](./contracts/arbitrum-42161/0x07c8481f5ebe5c40c5e2e18a174606e5d3a11fe0/); arbitrum `0x2f67a8...3c10c6`; arbitrum `0x370a28...d6536e`; arbitrum `0x785f97...a9b650`; arbitrum `0xa23bfe...6d921c`; arbitrum `0xca96e2...802764` | ⚠️ Unaudited |
| GNSTradingV6_3_1 | unknown | polygon | 5 deployments: polygon [`0x36f9d6...1124f8`](./contracts/polygon-137/0x36f9d68acd292e1e59b3c45457dfabd7301124f8/); polygon `0x4ba64a...facaeb`; polygon `0x9678a4...1a9fc4`; arbitrum `0x5220ff...637f65`; arbitrum `0x938ab5...d9b908` | ⚠️ Unaudited |
| GNSTradingV6_3_2 | unknown | polygon | 2 deployments: polygon [`0x5c58a8...5d83da`](./contracts/polygon-137/0x5c58a8acac721928b6f4495370c10762795d83da/); arbitrum `0xcdcb43...72c44d` | ⚠️ Unaudited |
| GNSTradingV6_4 | unknown | arbitrum | 4 deployments: polygon `0x3aeb4c...9ba1ef`; polygon `0x6d91ed...810e17`; arbitrum [`0x227bfb...cd0a8c`](./contracts/arbitrum-42161/0x227bfb54d0f488e9736292c6372d3fe329cd0a8c/); arbitrum `0x5e5bfd...706342` | ⚠️ Unaudited |
| GNSTradingV6_4_1 | unknown | arbitrum | 2 deployments: polygon `0x90d13b...85c1dc`; arbitrum [`0x4899fe...298121`](./contracts/arbitrum-42161/0x4899fefbf0a5c9881f1dffe6d13f758257298121/) | ⚠️ Unaudited |
| GNSTriggerRewards | unknown | polygon | 10 deployments: polygon [`0x09d981...073f37`](./contracts/polygon-137/0x09d981aef6556b92ffb0521bcb3552b0d0073f37/); polygon `0x18d39f...6cf82c`; polygon `0x251131...8dbd33`; polygon `0x4ef305...8c22f4`; base `0xaebcae...4bb76b`; base `0xc47016...e110c2`; base `0xe9d52f...c633e4`; arbitrum `0x725031...de1bbc`; arbitrum `0xbe6875...4350c6`; arbitrum `0xdcff63...b1874c` | ⚠️ Unaudited |
| GTokenLockedDepositNft | token | arbitrum | 13 deployments: polygon `0x4329c6...e5261e`; polygon `0xc4a8ab...0d64cf`; polygon `0xdd42aa...69bcc1`; base `0x170cc5...998a37`; base `0x7d0131...a05ceb`; arbitrum [`0x0c299d...dfaaad`](./contracts/arbitrum-42161/0x0c299d41b6ee07feb7adaf73e234e3cb29dfaaad/); arbitrum `0x3bb4b8...0910f8`; arbitrum `0x5a0841...1fbde5`; arbitrum `0x673cf5...3e4cc6`; arbitrum `0xa1d3cf...6dcc47`; arbitrum `0xb04374...a6e96c`; arbitrum `0xcf4e6b...1fdafc`; arbitrum `0xd846b1...df3804` | ⚠️ Unaudited |
| GTokenLockedDepositNftDesign | token | arbitrum | 13 deployments: polygon `0x05826b...e241de`; polygon `0xba4aff...388bb0`; polygon `0xfc28bb...8fbea4`; base `0xb77d92...9761be`; base `0xd8d177...5f8f58`; arbitrum [`0x01f53a...1f2858`](./contracts/arbitrum-42161/0x01f53a010b09863ffd362a15e002da01901f2858/); arbitrum `0x090277...ec8286`; arbitrum `0x0f3fc8...839fd4`; arbitrum `0x1759ed...06ace2`; arbitrum `0x411641...327734`; arbitrum `0x760fc0...f01c90`; arbitrum `0x937a12...46d515`; arbitrum `0xd56c24...ee0d4c` | ⚠️ Unaudited |
| GTokenOpenPnlFeed | token | arbitrum | 13 deployments: polygon `0x8d6872...f4440c`; polygon `0xf07f45...894473`; polygon `0xff84e7...6fe822`; base `0x0498ae...de3566`; base `0xefa1c2...33be37`; arbitrum [`0x007803...de47b4`](./contracts/arbitrum-42161/0x00780378a40bd6a7a682aa891f5f052b49de47b4/); arbitrum `0x018d9a...f9f27e`; arbitrum `0x4ca163...30e0d1`; arbitrum `0x95cf34...fff6a5`; arbitrum `0x990ba9...a4a23d`; arbitrum `0xbf55c7...d47982`; arbitrum `0xe9fbfe...b0c78e`; arbitrum `0xee791c...c786eb` | ⚠️ Unaudited |
| GTokenV6_3_2 | token | arbitrum | 2 deployments: polygon `0xc91336...1191ea`; arbitrum [`0xbbda87...e305fa`](./contracts/arbitrum-42161/0xbbda8719a932b3ce5b7c56f427d97fe4a8e305fa/) | ⚠️ Unaudited |
| L2TBTC | unknown | arbitrum | [`0x6c84a8...d0de40`](./contracts/arbitrum-42161/0x6c84a8f1c29108f47a79964b5fe888d4f4d0de40/) | ⚠️ Unaudited |
| ManagerTimelock | governance | base | 2 deployments: base [`0x03908e...0b8f08`](./contracts/base-8453/0x03908e9aeba0a23c1c476f946b99b6e9ea0b8f08/); base `0xf89c7b...5e5e5b` | ⚠️ Unaudited |
| MarinateAutoCompounder | adapter | arbitrum | [`0x1922c3...1684ab`](./contracts/arbitrum-42161/0x1922c36f3bc762ca300b4a46bb2102f84b1684ab/) | ⚠️ Unaudited |
| NyanRewards | unknown | arbitrum | 3 deployments: arbitrum [`0x32e559...1aa724`](./contracts/arbitrum-42161/0x32e5594f14de658b0d577d6560fa0d9c6f1aa724/); arbitrum `0x62ff5b...d2da2c`; arbitrum `0xf6a377...4a703d` | ⚠️ Unaudited |
| OvercollatMigrationRouter | operational_periphery | polygon | 2 deployments: polygon [`0x6528ed...cf9b9c`](./contracts/polygon-137/0x6528edab55cb189be91c835011ed174455cf9b9c/); polygon `0xca7133...217bdd` | ⚠️ Unaudited |
| OwnerTimelock | governance | base | 2 deployments: base [`0x3a00b1...419e7a`](./contracts/base-8453/0x3a00b1fa6cb7d07043fc2b2066066735f9419e7a/); base `0x908b3c...88235f` | ⚠️ Unaudited |
| PackingUtils | unknown | arbitrum | 10 deployments: polygon `0x41e342...b47a78`; polygon `0x599b77...c442ac`; polygon `0xbe7751...2c55ef`; polygon `0xe42e29...8a494a`; base `0x578d65...8d5314`; arbitrum [`0x409c8f...9b5b53`](./contracts/arbitrum-42161/0x409c8fd50e49f8944e0966ffc5c0dab85c9b5b53/); arbitrum `0x6fdc49...7f381d`; arbitrum `0xaeb08c...208c37`; arbitrum `0xd29970...3270c1`; arbitrum `0xff8b4a...e220cb` | ⚠️ Unaudited |
| PairsStorageUtils | registry | polygon | 2 deployments: polygon [`0x535537...09270d`](./contracts/polygon-137/0x53553728a39e307b8f485f431825a1e13909270d/); arbitrum `0x5a7098...a257d7` | ⚠️ Unaudited |
| PONGRewards | unknown | arbitrum | [`0xe34003...098bc2`](./contracts/arbitrum-42161/0xe340031b61a394c7811868ef81d2eacc79098bc2/) | ⚠️ Unaudited |
| PriceAggregatorUtils | operational_periphery | polygon | 24 deployments: polygon [`0x02cd10...1a12e3`](./contracts/polygon-137/0x02cd10923e19b6ba98f745466167694f611a12e3/); polygon `0x0d89c6...a4a72c`; polygon `0x2a8a8a...a3bc0c`; polygon `0x3b738c...8db41c`; polygon `0x52f09e...51bcc2`; polygon `0x8391f5...1be6a6`; polygon `0x9dc848...dd9f71`; polygon `0xa67abb...f2985f`; polygon `0xdc605a...7369f3`; base `0x0aabe2...9d1465`; base `0x217204...4609c8`; base `0x24358b...c1f428`; base `0x752be1...183c2e`; base `0xbf9afb...2447ef`; base `0xe31c67...90b38a`; arbitrum `0x02e788...de328c`; arbitrum `0x0cf021...867162`; arbitrum `0x1effbb...4ef2be`; arbitrum `0x2f6b4e...449afe`; arbitrum `0x5f2c1d...e4923a`; arbitrum `0x76436e...43ebf3`; arbitrum `0xc4038b...2baa17`; arbitrum `0xe3fb8b...75f461`; arbitrum `0xf5dd27...7c486f` | ⚠️ Unaudited |
| PriceImpactUtils | operational_periphery | arbitrum | 6 deployments: polygon `0x52a4d3...575a5c`; polygon `0x79398e...a4168c`; polygon `0x89f7b9...fe51ca`; arbitrum [`0x3719b3...c7f8a7`](./contracts/arbitrum-42161/0x3719b373652aed9eb245525cf08ce41d61c7f8a7/); arbitrum `0x5daf4a...b279f9`; arbitrum `0x64def9...717f60` | ⚠️ Unaudited |
| ProxyAdmin | governance | polygon | 18 deployments: polygon [`0x0bcadb...6aa541`](./contracts/polygon-137/0x0bcadb23ba1df7de9878f8d0bd31e86bdf6aa541/); polygon `0x11d530...48881d`; polygon `0x27e1a4...234678`; polygon `0x7b14e9...88fb73`; polygon `0x8fc60a...537964`; polygon `0xc67e53...a95bbc`; polygon `0xdbcd00...416bad`; base `0xd65be7...13da9d`; arbitrum `0x1523fa...2f7c6b`; arbitrum `0x45edb5...41eec6`; arbitrum `0x51ebd1...2e103b`; arbitrum `0x7f4a92...f7b948`; arbitrum `0x969721...f527f9`; arbitrum `0x96cb68...a8c2b4`; arbitrum `0x9eb6df...31e5a4`; arbitrum `0xb40476...7adb84`; arbitrum `0xdd42aa...69bcc1`; arbitrum `0xe18be0...bcb2eb` | ⚠️ Unaudited |
| ReferralStateCopy | token | polygon | 2 deployments: polygon [`0x02dbbc...9202f9`](./contracts/polygon-137/0x02dbbc5aadfeb6a1e21819d9ece4bcf0799202f9/); arbitrum `0xef74e7...bb98be` | ⚠️ Unaudited |
| ReferralsUtils | unknown | arbitrum | 2 deployments: polygon `0x9da85d...1d6c7c`; arbitrum [`0x9bd783...1aff41`](./contracts/arbitrum-42161/0x9bd78303b12eafd8aa8e1f0667b730b10f1aff41/) | ⚠️ Unaudited |
| StakingRewards | unknown | polygon | [`0x33025b...4b4e43`](./contracts/polygon-137/0x33025b177a35f6275b78f9c25684273fc24b4e43/) | ⚠️ Unaudited |
| stARBIS | unknown | arbitrum | [`0xbf0075...d2db86`](./contracts/arbitrum-42161/0xbf00759d7e329d7a7fa1d4dcdc914c53d1d2db86/) | ⚠️ Unaudited |
| Timelock | governance | arbitrum | 17 deployments: polygon `0x29e44c...9e80d5`; polygon `0x80399b...d46497`; polygon `0x8abb67...0e83df`; polygon `0xb4742e...e4fb0b`; polygon `0xb847e2...787dca`; polygon `0xefcb39...0303b7`; base `0x498f7e...e31e0d`; base `0x7f10f0...f43a86`; base `0x96a609...b176da`; base `0xcbe135...41007a`; base `0xcc7ed0...81138b`; base `0xde6229...238fb6`; base `0xe77109...1b09a4`; arbitrum [`0x00f417...e77667`](./contracts/arbitrum-42161/0x00f417403732dbd32fde2b0d61dbab0e25e77667/); arbitrum `0x6d5eb0...d26ed7`; arbitrum `0x893fcf...d5e75a`; arbitrum `0xac69a6...3da481` | ⚠️ Unaudited |
| TradeUtils | unknown | polygon | 17 deployments: polygon [`0x03c86d...889c0b`](./contracts/polygon-137/0x03c86d38143908ef53305e8184cfe4aed9889c0b/); polygon `0x7abb47...30bee5`; polygon `0x8ccccc...b7f627`; polygon `0xa3033c...939ac2`; polygon `0xa523f6...783fbe`; polygon `0xc64367...a36385`; polygon `0xd21b6b...864209`; polygon `0xe4ed37...899f60`; polygon `0xf0c993...765189`; arbitrum `0x4485af...92120e`; arbitrum `0x493eec...672e39`; arbitrum `0x588bee...7cb98b`; arbitrum `0x7ca99c...04e4c7`; arbitrum `0x8c0d84...2ba881`; arbitrum `0xc16831...14b5e7`; arbitrum `0xc9e7e5...16730e`; arbitrum `0xf7763d...dd2359` | ⚠️ Unaudited |
| TradingBackend | unknown | arbitrum | 4 deployments: polygon `0x6c166d...1530d5`; polygon `0x810721...bb470d`; arbitrum [`0x614d5d...de61a4`](./contracts/arbitrum-42161/0x614d5d60a5ed7a6941234151c8e6cc7ebade61a4/); arbitrum `0xc9ba2a...859a8f` | ⚠️ Unaudited |
| TradingCallbacksUtils | unknown | arbitrum | 4 deployments: polygon `0x653070...4076c7`; polygon `0xd0eb8b...e9ce3e`; arbitrum [`0x0393e1...07d0ae`](./contracts/arbitrum-42161/0x0393e1e68a051ae580a69f443b7db7cd3907d0ae/); arbitrum `0x6d176a...814c58` | ⚠️ Unaudited |
| TradingCommonUtils | unknown | arbitrum | 27 deployments: polygon `0x0ccf80...f0b117`; polygon `0x22535a...f3d26a`; polygon `0x3b0fd5...01164f`; polygon `0x434fcc...fc44ae`; polygon `0x57bb6c...76c47c`; polygon `0x582bd0...1d2dc3`; polygon `0x5a2df4...2d4d19`; polygon `0xe3a39d...891c95`; polygon `0xe56b42...dfc35c`; polygon `0xecb7a2...ce3dae`; polygon `0xfd3eab...5404f3`; base `0x1ae27a...bb0b20`; base `0x312ffa...f15e20`; base `0x43d8ae...f3f302`; base `0xd65efa...b1d69c`; base `0xe46205...46b3e9`; base `0xf4339a...f5d968`; arbitrum [`0x01e8bd...1798df`](./contracts/arbitrum-42161/0x01e8bde7cbb881aeca02ba2a9631d94d491798df/); arbitrum `0x3baeba...8d32e5`; arbitrum `0x63a419...ccbbd2`; arbitrum `0x793403...6f9c74`; arbitrum `0x96bcb2...7193d5`; arbitrum `0xa3be4e...561a22`; arbitrum `0xab5890...53e518`; arbitrum `0xd4ba8d...a14b91`; arbitrum `0xec013e...cc4164`; arbitrum `0xf88307...ba0d42` | ⚠️ Unaudited |
| TradingStorageUtils | unknown | polygon | 24 deployments: polygon [`0x036c04...3000d9`](./contracts/polygon-137/0x036c0411c5ce4fa6e0600529904884b55e3000d9/); polygon `0x187a0e...0549a2`; polygon `0x1ff1bd...e4da20`; polygon `0x25991c...85978b`; polygon `0x55b12c...eff9cb`; polygon `0x70ec5c...c3388e`; polygon `0xa61aa0...4dc999`; polygon `0xd24c18...b64a29`; polygon `0xe12836...fdb33d`; base `0x190ff9...59fb16`; base `0x3e2a53...ae6774`; base `0x9f4cb1...a933b1`; base `0xbee40b...54e978`; base `0xc4f02b...f6709f`; base `0xf39def...2c05d1`; arbitrum `0x15e530...d4030e`; arbitrum `0x29137b...7ff2b9`; arbitrum `0x2cdee7...d46962`; arbitrum `0x2e2f6a...5c5201`; arbitrum `0xa5e99f...0a2bc8`; arbitrum `0xb0b390...54a3b8`; arbitrum `0xd5b893...ecd7f3`; arbitrum `0xe9ab59...eb45cb`; arbitrum `0xf5ef7b...889a72` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | arbitrum | 127 deployments: polygon `0x4b903e...df9c24`; polygon `0x6db4e7...2816be`; polygon `0xa1434b...1e3a10`; polygon `0xbba4a7...4b04aa`; arbitrum [`0x002a0e...6fedf3`](./contracts/arbitrum-42161/0x002a0eee81dfc6de5a108cbf83d4d74d406fedf3/); arbitrum `0x02bd53...ee9f35`; arbitrum `0x03c86d...889c0b`; arbitrum `0x059f28...ecb322`; arbitrum `0x0638a3...fc2b78`; arbitrum `0x0a02f9...5bff39`; arbitrum `0x0b2cce...a63f8f`; arbitrum `0x0b3404...296e1c`; arbitrum `0x0bcadb...6aa541`; arbitrum `0x0c19d8...885b36`; arbitrum `0x0cf423...3c0557`; arbitrum `0x0dfb52...5ed321`; arbitrum `0x1669e2...00d3e4`; arbitrum `0x173ac3...6b1a72`; arbitrum `0x1858c9...fe80c2`; arbitrum `0x191f19...0b64ea`; arbitrum `0x19a6b5...50da97`; arbitrum `0x1d017d...aabcc9`; arbitrum `0x1d5e7a...c4e2e9`; arbitrum `0x1f4ec4...668f0a`; arbitrum `0x252403...787913`; arbitrum `0x25538b...ae5b9a`; arbitrum `0x269225...91ef27`; arbitrum `0x294d0f...d7e8e9`; arbitrum `0x308cd9...fddba4`; arbitrum `0x312c06...1abab9`; arbitrum `0x31dfb4...f552be`; arbitrum `0x326b43...18272e`; arbitrum `0x335336...af1d85`; arbitrum `0x37e2bb...833628`; arbitrum `0x37e565...13d264`; arbitrum `0x38926d...f72745`; arbitrum `0x3ae197...422fc3`; arbitrum `0x3d7a8a...7eba9e`; arbitrum `0x3de7e5...0fc48f`; arbitrum `0x3e6a26...4707de`; arbitrum `0x47e69a...4ebacd`; arbitrum `0x4b1121...d82bad`; arbitrum `0x4ed3b2...86548c`; arbitrum `0x501843...e17d57`; arbitrum `0x51c315...5ded81`; arbitrum `0x53af6d...766e90`; arbitrum `0x55735b...6f52e2`; arbitrum `0x56a3a1...9c4c11`; arbitrum `0x58dcd5...7532e1`; arbitrum `0x5a4785...fd20c9`; arbitrum `0x5ac841...49abb6`; arbitrum `0x5b0ef3...96973d`; arbitrum `0x5cb0f4...c64b46`; arbitrum `0x5ed745...979a8f`; arbitrum `0x62aeb2...172834`; arbitrum `0x6304f4...63dc25`; arbitrum `0x635173...4fb1ca`; arbitrum `0x64e8a5...6ce4a9`; arbitrum `0x6558c6...a7c2e9`; arbitrum `0x6805dd...629690`; arbitrum `0x69ba52...f1f266`; arbitrum `0x6a17cb...84cd06`; arbitrum `0x6a438b...4bcc0b`; arbitrum `0x6db4e7...2816be`; arbitrum `0x6fbfbd...59597e`; arbitrum `0x79398e...a4168c`; arbitrum `0x7a54e2...a2b0ac`; arbitrum `0x7b1ff4...6c4408`; arbitrum `0x8288a4...196672`; arbitrum `0x894c9c...1c9ca3`; arbitrum `0x8d6872...f4440c`; arbitrum `0x8fc60a...537964`; arbitrum `0x918675...0d49e6`; arbitrum `0x92ee7d...a73d84`; arbitrum `0x98afe3...4e6a52`; arbitrum `0x99f696...198587`; arbitrum `0x9b2833...6f9d5f`; arbitrum `0x9e30d3...5a40bf`; arbitrum `0x9fab99...33c0e8`; arbitrum `0x9ffafa...6c233b`; arbitrum `0xa2520d...41e4c5`; arbitrum `0xa40110...a2dd00`; arbitrum `0xa6a8a6...144a2f`; arbitrum `0xa747a1...38caab`; arbitrum `0xaccd80...9d65c4`; arbitrum `0xb1aec6...a81e0a`; arbitrum `0xb25966...d3014b`; arbitrum `0xb29e8b...fc3185`; arbitrum `0xb488a9...d8a970`; arbitrum `0xb7e937...ce751d`; arbitrum `0xbc47a6...6ba368`; arbitrum `0xbd825a...d6a087`; arbitrum `0xbe5591...84748f`; arbitrum `0xc07d1d...5cbc86`; arbitrum `0xc17e26...600b2b`; arbitrum `0xc216f4...8b8695`; arbitrum `0xc431aa...d04f09`; arbitrum `0xc64367...a36385`; arbitrum `0xc7d91a...6df6ae`; arbitrum `0xc88c7d...689999`; arbitrum `0xcc6fb1...dacc30`; arbitrum `0xd7a4ba...e02dc2`; arbitrum `0xd9405a...ba6492`; arbitrum `0xd9b1e2...d21279`; arbitrum `0xdd25cf...0e15e0`; arbitrum `0xdd6d48...92d0c7`; arbitrum `0xdd9c98...81d860`; arbitrum `0xddb5a1...413445`; arbitrum `0xdff9a5...460209`; arbitrum `0xe167d7...24dae5`; arbitrum `0xe33ed7...cbfd5c`; arbitrum `0xe35737...d58c9f`; arbitrum `0xe46500...485f67`; arbitrum `0xe58144...448b08`; arbitrum `0xf00c39...bf6eee`; arbitrum `0xf2d733...685c00`; arbitrum `0xf37a0f...12dc64`; arbitrum `0xf39ed3...a82544`; arbitrum `0xf4ce16...4d972f`; arbitrum `0xf8861e...904070`; arbitrum `0xf904aa...fd94a4`; arbitrum `0xf9b76e...b1af5c`; arbitrum `0xfb06a7...c0819d`; arbitrum `0xfc779c...3e1bc7`; arbitrum `0xfcb70e...c4ce44`; arbitrum `0xfe3e29...86b537`; arbitrum `0xfe7386...519516` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | polygon | [`0x6e53cb...cd25c4`](./contracts/polygon-137/0x6e53cb6942e518376e9e763554db1a45ddcd25c4/) | ⚠️ Unaudited |
| UpdateLeverageLifecycles | unknown | base | 26 deployments: polygon `0x0fafe9...611218`; polygon `0x3ff7d8...dd96c8`; polygon `0x544fb4...a5fde7`; polygon `0x5cb0f4...c64b46`; polygon `0x627bf3...2ce6ee`; polygon `0x713ce1...779d2b`; polygon `0x93df43...723d5e`; polygon `0x9f99ab...af8cd5`; polygon `0xda91c9...bba5f6`; polygon `0xec4660...f15b69`; base [`0x066830...36bfce`](./contracts/base-8453/0x06683037152874729cb6ed02eb9561754736bfce/); base `0x0e4b2b...443dc7`; base `0x425a9e...974ec4`; base `0x6a68fb...2e4b3f`; base `0x8d5358...fefbae`; base `0xee666c...fef7cb`; arbitrum `0x39e698...8e299c`; arbitrum `0x494717...c3aa73`; arbitrum `0x504a5b...ffac83`; arbitrum `0x71e5f1...5c6226`; arbitrum `0x8a839a...ea3acc`; arbitrum `0x99c537...43cbee`; arbitrum `0xa0fe7f...990559`; arbitrum `0xa495af...98f2fc`; arbitrum `0xbbe716...2199c8`; arbitrum `0xcede87...71e7ed` | ⚠️ Unaudited |
| UpdatePositionSizeLifecycles | unknown | base | 32 deployments: polygon `0x1858c9...fe80c2`; polygon `0x1911c3...e875ad`; polygon `0x46d00d...d8a6b4`; polygon `0x481dc9...97cd8c`; polygon `0x4ef0d2...239b99`; polygon `0x5ed4be...742a43`; polygon `0x6ecf20...7c3a86`; polygon `0x8107e0...f22e80`; polygon `0x9ff427...97cbbd`; polygon `0xc4c576...8d6b4e`; polygon `0xc779ad...ae4ac7`; polygon `0xdff3a4...e3a24c`; polygon `0xf7c2dd...3f565d`; base [`0x0b9949...0a003a`](./contracts/base-8453/0x0b994984fe963904d601805d3d20930b8f0a003a/); base `0x164bb6...21526d`; base `0x38a8ae...c1ca66`; base `0x8b8988...4e5200`; base `0xc991fb...9182d3`; base `0xe8eee6...88f228`; base `0xee1531...1a9f59`; arbitrum `0x13a56e...f00ddf`; arbitrum `0x258d2f...41bae7`; arbitrum `0x348ea5...666d45`; arbitrum `0x375d7b...06157e`; arbitrum `0x8af075...51c9b0`; arbitrum `0xac501b...b82cab`; arbitrum `0xb2084b...dd4bc0`; arbitrum `0xcf5fa6...cb65c2`; arbitrum `0xd00bb3...cc9ccc`; arbitrum `0xedf449...3f4624`; arbitrum `0xf4bc71...cd6714`; arbitrum `0xf9e09e...f34ec5` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (646)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | polygon | `0x0283f8...747a52` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x0385e4...292a2e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x038b6c...a7deeb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x04433f...8c3bba` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x04643a...8d9791` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x050e24...7bcc9d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x0686e8...a2cddf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x06d97e...63d6a8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x06da5e...f2fac1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x06f557...d9df03` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x089cf4...afdf74` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x0a78aa...4ad9e8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x0afdbd...6249d9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x0b0e70...ca7138` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x0b52bc...4a86e6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x0d75d1...6ed885` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x0dfb52...5ed321` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x11cd5c...9e4b8f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x11fcea...048306` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x123f6e...edc4fb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x125faf...2d7639` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x13617a...815c3e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x14e2f9...6a7f3f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x170763...4fb96a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x1745ea...4717dd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x182295...fcad66` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x19a50d...cbec4a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x19a6b5...50da97` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x19f5b3...44f0b7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x1ad84f...0be56e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x1dece5...fc6dee` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x1e887e...45d81b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x1f010b...a9dbea` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x1f9358...7041de` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x2010c3...fcc4ea` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x20425a...3728b9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x21147d...3c9535` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x21ee50...fe6b30` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x22b69c...bbfe0b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x252403...787913` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x2564ce...803bbb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x268620...a29da8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x2a3bf9...417259` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x2cc665...2bdbf7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x2db032...0b272b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x2e1cfb...153cc2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x2e5289...12b518` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x307996...952391` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x314055...145ba4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x31820a...74ea8c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x31f18d...7f2d31` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x323802...3b28f6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x32537f...3e1457` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x32d6ac...f21c36` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x335336...af1d85` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x340d47...434bbf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x35429c...79147f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x372a92...13ef6f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x383396...7bc758` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x385efb...c17f35` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x38fc82...915ce1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x3a3e21...defa1c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x3ae862...7b7dbd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x3b8b55...8c32c9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x3bf9ef...72b973` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x3d4283...8fbe94` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x3d6834...d9c067` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x3e6a26...4707de` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x4032ff...3d9b9b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x40cdfd...501c67` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x42f7b3...72c6aa` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x43402c...85ab6e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x435bd7...325ecd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x438422...5a199b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x43e947...26135b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x448ce5...1606ad` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x456cb4...9ed99e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x45b0d7...c600e5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x46d977...bb0df0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x46dbae...eefc8b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x47e100...f769cf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x48d1cb...19a453` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x49a4db...10537b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x4a6aac...9edd18` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x4ad55c...71909f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x4b3abf...efb0c8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x4cfe01...a0bd4c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x4d2a5c...961c4c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x4d7d00...93a586` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x4e4e86...b786be` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x4e6707...fdb2ab` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x4f6b1c...3af633` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x4f8380...e21d09` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x4ff93d...1a1232` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x501843...e17d57` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x501c79...9071bd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x53af6d...766e90` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x541e2f...f78ae1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x573de0...7a273f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x580963...7d20b4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x5892a7...ab491a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x58b736...aefe37` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x5b98ac...e8e46e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x5cfd76...12a975` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x5db646...2f8f03` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x5ed745...979a8f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x5f3bc5...96ef80` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x622264...e0dc4d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x62aeb2...172834` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x6304f4...63dc25` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x64982c...f33cbc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x68ccca...f9ad5a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x68f8d4...b9a5de` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x698cff...c348ca` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x69ba52...f1f266` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x6a17cb...84cd06` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x6a9106...e707d7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x6ab21c...319352` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x6aea6c...034b09` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x6b91b6...4b0319` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x6bbd8a...d86d80` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x6ee606...b47edd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x6fc92b...3ae918` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x71a0c9...1672cd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x71e729...753da4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x72bc1f...09bda2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x74c302...1c28c5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x758508...487058` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x75e438...ec6734` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x76993c...cc4c17` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x76fb92...f35fe9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x77957f...1a067c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x7a0258...60403a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x7a070e...caea86` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x7b1cb4...630812` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x7be1ce...bafa65` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x7cf227...82ce8b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x7d819b...ec5bf5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x7e8365...53acf3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x7f0039...1bca46` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x7f1307...8bbfc5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x7f917f...65d73c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x808b3a...48f6dc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x8092a5...868cc0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x810adb...56a44f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x83ac53...699ae0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x83bef2...c21063` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x83cfb9...c40561` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x85a87b...f45fc9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x85de17...e44caf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x8629b3...43feac` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x8665a5...4f5ab8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x86f504...4a1d56` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x887fe0...d2bd1a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x88dfc9...592f4d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x8904ed...255a57` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x8a1bca...d621ec` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x8a1fc3...65c015` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x8ad719...07664b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x8badf6...ede7d8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x8c1766...b823a8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x8c6132...6ed950` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x8f45f0...222570` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x907544...3c6ace` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x90ef7f...703cfa` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x920b1f...7778d2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x92acf5...154107` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x92ee7d...a73d84` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x950f9b...f32400` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x955e43...2461e8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x955f16...540866` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x9654a8...6d4e77` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x966333...1e2d44` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x9708c7...0dfd1c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x970d1a...cf743d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x9b0bce...ddfcf0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x9e055f...811861` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x9e6143...76d7c6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x9edfff...8f32c0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x9f4ee4...372380` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x9fc33e...108919` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xa05c40...2db32a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xa28370...ea6147` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xa424b9...48b7fb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xa4ea25...2f489a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xa5a62d...e9007c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xa5cd15...99dd9e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xa68769...a0b47e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xa7124f...aa55ec` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xa747a1...38caab` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xa7ceb1...e2a133` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xa8d7f7...30838b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xa8e5f1...3f931d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xa94f55...70a237` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xaaeb10...e9c084` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xac4e1f...f8dacd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xac9049...9753d5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xaff095...21fd82` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xb0ee55...5255e3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xb1a3f8...edfcde` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xb1a533...aedddb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xb1e4a1...2f2cc7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xb3bea5...1fd8a4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xb57ad1...3aa130` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xb5b4f8...2e3e7f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xb78dcc...d3cdec` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xb8e278...270ead` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xb8fbb3...1cd17c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xba3114...6f786e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xbc5af7...9606c4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xbc8ab3...6ceb21` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xbcf0ff...c2b488` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xbdcd5d...0a91d4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xbe3b77...8e1db2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xbf4fab...5e7ad6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xc0adcd...632da8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xc12c05...aa33c1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xc32c8b...041d67` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xc347b7...84c687` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xc53e83...f4327c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xc6ebd7...29c120` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xc78091...32387c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xc8300c...8f6da5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xcab8f8...7ab81d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xcabf93...e50abb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xcb694c...5d9780` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xcba78c...6dbe07` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xcc7e97...b5465f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xccc562...8d67de` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xce3ddf...548e08` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xd09994...f1c551` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xd09d47...2ebfc8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xd1eb89...1cfee2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xd2131f...3edafb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xd3cd36...43772c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xd749ad...972967` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xd79c77...3877b4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xd8c2cb...2a7d1f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xd92b31...88adb3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xd9405a...ba6492` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xd9776e...e40b05` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xdb2180...5653cb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xdc1f63...55fc4d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xdc76f5...0f1a18` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xdcaa75...b240e9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xe0795d...0c2215` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xe2f86a...8193c5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xe3633d...fcf73f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xe3792b...d574a4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xe55026...4316ea` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xe5c997...63d6d5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xe631a7...9c344c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xe79e71...4ea39b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xe839f0...280b31` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xe8d68c...e5ebac` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xea9b2c...6077a5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xed1673...4eee27` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xeee4f4...976a19` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xf16c54...e3d95a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xf1c315...b57245` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xf22248...442280` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xf39ed3...a82544` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xf465df...61d4f4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xf5c057...c5c022` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xf5cdf3...01d91e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xf7aa06...ed5776` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xf7d5f7...0829fd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xf904aa...fd94a4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xf966c8...fee185` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xfa8314...892aa3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xfb8f28...346775` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xfbeaf3...fcf47a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xfcc40e...37adbb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xfda7aa...e9d9b6` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x091613...784b06` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x0af685...c73f25` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x11adf5...6761fd` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x232abf...91027a` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x261354...072c42` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x2688dd...0ed407` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x33ebac...633732` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x370a28...d6536e` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x3feba7...bc2c48` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x4af42d...e7e142` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x56ebe5...651b56` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x5b0793...e394f8` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x613f4f...870b47` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x66af85...85e20b` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x693855...f2a4da` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x9fd963...d22cef` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xbc0566...2286dc` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xcc2c5d...beca9b` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xd05445...628f33` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xd4d3cf...98cc69` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xe9acbd...2e92a5` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xeff1c2...a29915` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x0043fb...405341` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x00d22a...e2ee94` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x00d87a...a3bb95` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x01e229...f79fd9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x038b6c...a7deeb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x03a0a1...4ab791` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x03a643...d9331c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x03c757...8c5f41` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x03df57...506b15` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x04643a...8d9791` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x05025f...7f2924` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x050a30...d786ef` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x062b4b...1c8e23` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x09ebbe...f5755a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x0b0e70...ca7138` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x0bd65f...100545` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x0cbd54...4e2fee` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x0d75d1...6ed885` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x0dbc6f...cee334` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x0e350a...8a28e0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x0e96d4...1b2c7b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x0f5438...c5bcce` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x11d530...48881d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x12effd...472ea3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x150b32...5ec5f2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x170cc5...998a37` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x1894c5...353828` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x18d300...d366e5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x18d39f...6cf82c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x1915c0...65a013` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x192845...c5b372` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x1ac456...03f796` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x1bba24...ae769a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x1c000a...016dc2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x1cc216...0e9d2b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x1cf137...bc2586` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x1d655c...7064e0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x1f8e7a...5dc02d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x1f9c8d...cda741` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x2010c3...fcc4ea` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x20425a...3728b9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x21147d...3c9535` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x214e94...06800b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x2162b9...77845b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x22d91b...fc95a0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x234c90...181fe6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x251131...8dbd33` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x25cf93...12047d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x26196c...001b80` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x26f091...006692` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x27002a...6f925b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x27e1a4...234678` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x29550f...b6d289` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x29ed1a...11f902` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x2b2395...3cfa83` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x2b9335...23fa2e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x2cc665...2bdbf7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x2fef01...38ca1f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3057fb...370a8b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x31820a...74ea8c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x322e18...96da0e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x32537f...3e1457` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x32b4eb...939649` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x32d6ac...f21c36` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x32e5fe...d178f3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x33fe6f...d968f5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x35879f...549c46` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x372a92...13ef6f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x374e9f...3af13a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x375a65...2f5728` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x383396...7bc758` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x383d61...511b51` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x399491...2e7297` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3b0fd5...01164f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3b3e18...a2d981` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3b738c...8db41c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3ca58c...65b34d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3d4283...8fbe94` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3d5a8a...a3506e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3e20a2...97de38` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3f1e68...2a8117` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x40aeb9...97fdb5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x40b87f...89ed4d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x40cdfd...501c67` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x4186d4...3fff0e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x41e342...b47a78` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x4229ff...177595` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x434fcc...fc44ae` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x456cb4...9ed99e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x465453...28dcbd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x46cb98...dea471` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x470e0f...172527` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x48df05...a7cb59` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x491d55...6cf3f3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x49b5ef...584510` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x4abb62...b84504` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x4c578c...990494` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x4d7d00...93a586` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x4eaa87...f9a3ad` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x4ef305...8c22f4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x4feb2b...dd255f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x50db70...7e234d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x52a4d3...575a5c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x535537...09270d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x53d830...566238` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x542d52...0bb1b5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x558e00...dc393b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x5610ac...109652` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x56ebe5...651b56` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x57559c...af7159` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x58f4f7...219563` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x591106...a88da3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x591c46...90ca64` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x599b77...c442ac` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x5b2899...e3a9c1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x5b41d9...4a7968` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x5b98ac...e8e46e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x5c58a8...5d83da` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x5d333f...fa1634` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x5f7a1e...fdaaf3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x616e7a...430938` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x617314...8ac4e0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x61c874...68ea9a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x621256...cc8c33` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x622264...e0dc4d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x631e88...8f6632` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x64e995...175146` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x6528ed...cf9b9c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x65dff6...525fcc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x66f9b9...ceec78` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x683195...152c9f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x68d42d...1f5d93` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x68d4a8...95ea24` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x69ce98...20538a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x6b5a7d...4d0ac8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x6c61d5...45faa1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x6cd9c1...9de36b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x6d91ed...810e17` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x6df677...ac4f9e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x6ea3e1...c74667` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x6f5c1b...8cb948` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x705964...fdbda9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x725c2b...e5c607` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x736939...450240` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x740750...e4031f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x744f44...59fa0d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x74a06b...4f74ca` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x758508...487058` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7695c2...2c5096` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x76bb00...0bf9fd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x77957f...1a067c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7859a5...fd8862` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x79cbfb...56f56c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7a872d...3191ed` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7a8f74...92a1cd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7abb47...30bee5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7ac6d1...fd912a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7ad802...b651a6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7b14e9...88fb73` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7be082...2dbd2d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7cc9a3...e96f8c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7dfcd3...4d4c73` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7f10f0...f43a86` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7f1bca...b29bc9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7f917f...65d73c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x819164...b41d73` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x81a073...491862` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8211b5...7e2a7e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x82e593...a6b311` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x82e9b8...6c404e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x83ae6f...96fe15` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x85319e...0b07a9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x85592d...fcf016` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x86149c...281e5b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8628ef...bbee90` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x872850...55a9fe` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8789d7...26ec97` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x897e5d...8d1e66` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x898cf4...ba069d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x899280...cd050c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x89f7b9...fe51ca` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8a3041...0143f9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8ba748...f7ca8d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8bb0c3...c8a7e3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8bef5d...c67bd8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8c1766...b823a8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8c74b2...e2beca` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8ccccc...b7f627` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8ee6c4...883e7b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x907544...3c6ace` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x908b3c...88235f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x90d13b...85c1dc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x90ea07...1c6d35` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x91b84c...d3656f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x9248e0...d8b4f1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x9324a3...d4348a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x93bdc8...7de694` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x9439fc...27cef8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x950f9b...f32400` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x95ccc8...697ef8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x966333...1e2d44` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x970d1a...cf743d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x999835...47648b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x9a4975...11e4e3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x9b0bce...ddfcf0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x9b98cc...0dc91b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x9be876...f95ed6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x9cfdc8...7dabcc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x9d6304...e9a504` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x9da85d...1d6c7c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x9e055f...811861` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x9f4ee4...372380` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x9f8785...40dc44` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa1434b...1e3a10` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa16e00...91c879` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa1aafe...753552` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa1ca3e...cc227d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa1e93a...28b576` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa22b43...464bb0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa28370...ea6147` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa2c6db...b90e90` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa3033c...939ac2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa33f70...218362` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa4b6ea...c49f12` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa4ea25...2f489a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa5caa8...a45ed2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa64e9d...ef269b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa6b64b...2ad216` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa775f6...1b22a5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa7a804...49dd67` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa839ac...faa968` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa8d7f7...30838b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa8e5f1...3f931d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xabc8b9...23f95d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xac59a7...836b47` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xac9049...9753d5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xace501...259ff9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xad85e2...9a20d6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb0901f...111f61` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb1afdd...f98a8b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb2ac45...a9c8f6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb2bed8...0fd3d9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb3aa36...a3a4fb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb3b9c7...a1762f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb451d3...4788e3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb454d8...44e0fa` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb47b5c...c25328` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb5b4f8...2e3e7f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb5eb7b...cacc40` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb6745b...180c66` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb6eb56...59efe6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb6ecc0...983c16` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb6fbd6...d16023` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb78dcc...d3cdec` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb7e282...8c8375` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb9c2b7...49aefa` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb9deae...b53e5f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xba2543...457cd9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xba30d4...825f10` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xba3d59...f10143` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xbae9df...bc1ba7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xbc8ab3...6ceb21` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xbc9430...ae12fb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xbcf0ff...c2b488` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xbd0330...e5246a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xbd6fbf...89b5af` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xbdfd37...850fca` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xbe11ed...18da72` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xbe7751...2c55ef` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xbf2e9e...5f2034` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc0adcd...632da8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc139f8...10b82e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc15d9b...e25c2e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc194e1...21aa09` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc2f3af...e37863` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc2fe7c...7673e3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc56dba...e5fd17` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc6aa98...6b550e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc8300c...8f6da5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc85d20...abe97a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc91336...1191ea` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc97191...865b7b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xcc2c5d...beca9b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xcc7ed0...81138b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd21b6b...864209` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd3efa8...9ce974` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd4465e...6d318c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd44d61...d89a6d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd48e37...164de2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd62c64...b0213c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd65be7...13da9d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd7057a...e61c01` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd749ad...972967` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd855d2...d3d801` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd87c88...328f26` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd8d177...5f8f58` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd95790...35c0d5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd9776e...e40b05` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd9c759...7b1cfc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xda91c9...bba5f6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xdbcd00...416bad` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xdcaa75...b240e9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xdce834...de59e8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xdd7ed4...54e2f4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xde6229...238fb6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xdf774a...ff75bd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xdffabe...a28604` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe05a86...e946f5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe19e71...bc3d12` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe2c32f...51c4f3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe2ea64...59cf90` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe3633d...fcf73f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe4ed37...899f60` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe5f8d6...faa1e1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe6668b...94266d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe6c0de...ac71e7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe9111a...afdd59` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe9b576...c10da6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe9c604...071ae2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xeab148...26c6f3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xeac4f9...e93e7e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xec79db...d1e626` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xed1673...4eee27` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xeea30e...bbbec1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xef9ebd...2ad083` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf04a57...3bebe9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf0a853...f44a40` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf0ebd0...69c530` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf10681...e04b81` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf1c315...b57245` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf1ca24...eb5f1d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf2e84e...bd7c8f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf342ba...e751b9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf37dd7...72d530` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf3934c...dfd916` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf41a4c...fb0422` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf61fc7...5fe9d8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf62e22...fb497d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf707d4...a66758` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf73b63...df361f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf7aa06...ed5776` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf7e1ec...9c80d9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf92135...c6f661` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf9ae45...9cc368` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xfa9680...65d5a6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xfbeaf3...fcf47a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xfc28bb...8fbea4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xfc801e...3caf40` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xfeed2d...7f4035` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xff6f86...639cd7` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://skynet.certik.com/projects/gains-network) | CertiK | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x18c11f...63a122`](./contracts/arbitrum-42161/0x18c11fd286c5ec11c3b683caa813b77f5163a122/) | GainsNetworkToken | token | $10,951,361.44 | Verified native implementation with $10,951,361.44 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xd7052e...58804f`](./contracts/polygon-137/0xd7052ec0fe1fe25b20b7d65f6f3d490fce58804f/) | GNSTradingVaultV5 | core_logic | $54,451.00 | Verified native implementation with $54,451.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x5ac841...49abb6`](./contracts/polygon-137/0x5ac841ab23d501c1aa98b1ffe23588f06749abb6/) | GNSNftRewardsV6_4_1 | token | $305.37 | Verified native implementation with $305.37 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x061bc5...fc06a4`](./contracts/arbitrum-42161/0x061bc5884c7dfb4d6514f4101047f8c010fc06a4/) | ArrayGetters | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x02007a...faf882`](./contracts/base-8453/0x02007a5d5f31a4a27ad7db7f22b3e69265faf882/) | BorrowingFeesUtils | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xad85e2...9a20d6`](./contracts/polygon-137/0xad85e25576a4e4ae7423d9c0ee1eccf6c99a20d6/) | DevsRevenue | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x01caaa...5fa5e2`](./contracts/arbitrum-42161/0x01caaaa682ceba8cd6c02f93bb1393fb415fa5e2/) | ERC20Bridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x19eba9...1fda0b`](./contracts/polygon-137/0x19eba97430caf024685e433974beed30bc1fda0b/) | ERC721LockingBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0f9e43...e50827`](./contracts/arbitrum-42161/0x0f9e4375facbeb90daa850f677819b438ce50827/) | ERC721MintingBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x312c06...1abab9`](./contracts/polygon-137/0x312c06494f334f595da1e25759710d3d791abab9/) | FeeTiersUtils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0102e0...ae4d8b`](./contracts/base-8453/0x0102e07c3bf688c77c2120d67f47cfd9d5ae4d8b/) | GNSBorrowingFees | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x037d01...e05e06`](./contracts/arbitrum-42161/0x037d01b939b92049460a5f56b0dea3b2ffe05e06/) | GNSBorrowingFeesV6_4 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x189c9e...4f91a2`](./contracts/polygon-137/0x189c9ed174cd19025864b5ee5f587ee8084f91a2/) | GNSChainConfig | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x026594...38ad12`](./contracts/polygon-137/0x026594069e41dd9b85c0af804348c1c57c38ad12/) | GNSFeeTiers | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x09c2c2...278249`](./contracts/polygon-137/0x09c2c2185f47c1cb86148a6441969d6127278249/) | GNSOracleRewards | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x03a643...d9331c`](./contracts/polygon-137/0x03a6431d25f881df94c0a96c574f214d28d9331c/) | GNSOracleRewardsV6_4_1 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0d30fd...0a135b`](./contracts/base-8453/0x0d30fd5b87f212c002c5c881f237f580860a135b/) | GNSOtc | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x03c757...8c5f41`](./contracts/polygon-137/0x03c757ccf50607d1d2c4789e1d894716898c5f41/) | GNSPairsStorage | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0f43c4...258772`](./contracts/arbitrum-42161/0x0f43c47aca3518fde69e012857cbc9c880258772/) | GNSPairsStorageV6 | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x151757...6aa0c5`](./contracts/polygon-137/0x151757c2e830c467b28fe6c09c3174b6c76aa0c5/) | GNSPoolV5 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x01b1ea...f71030`](./contracts/polygon-137/0x01b1ea7868aceb1e5e71369e1986afae1ff71030/) | GNSPriceAggregator | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x5fb473...41178b`](./contracts/polygon-137/0x5fb47355828c0902acbbe759cee1b8342c41178b/) | GNSPriceAggregatorV6 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x126f32...58a816`](./contracts/polygon-137/0x126f32723c5fc8dfeb17c46b7b7dd3dcd458a816/) | GNSPriceAggregatorV6_4 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x153b2e...7dbff9`](./contracts/base-8453/0x153b2e08bf39534180e76a8822d95c84bf7dbff9/) | GNSReferrals | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0f9498...052425`](./contracts/polygon-137/0x0f9498b1206bf9ffde2a2321fdb56f573a052425/) | GNSReferralsV6_2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1b9924...4b15f4`](./contracts/polygon-137/0x1b99244e75fbcee5763730e1d207d7cceb4b15f4/) | GNSStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x04b4b0...090a3e`](./contracts/polygon-137/0x04b4b0fdb2a6dec6c8f7885a8b62c57765090a3e/) | GNSStakingV6_4_1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1632c3...26f637`](./contracts/arbitrum-42161/0x1632c38cb208df8409753729dbfba5c58626f637/) | GNSTimelockManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x322e18...96da0e`](./contracts/polygon-137/0x322e18fdb5d0b0221e4724dcc5883c4b7896da0e/) | GNSTimelockOwner | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0b213d...acc11c`](./contracts/arbitrum-42161/0x0b213d09c5264ffdceb3d24b86f746a2d8acc11c/) | GNSTrading | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x02432f...e57cbc`](./contracts/base-8453/0x02432fb59835f4a413a97e1a8e329545b1e57cbc/) | GNSTradingCallbacks | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1e87e8...235bed`](./contracts/polygon-137/0x1e87e8703883a46ccdec4c8868043abe40235bed/) | GNSTradingCallbacksV5 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xcf6391...270e28`](./contracts/polygon-137/0xcf63914f5160e596bc574bf4fd52c13a8d270e28/) | GNSTradingCallbacksV6 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x170cc5...998a37`](./contracts/polygon-137/0x170cc5a70d6f544e5456881b586eb58180998a37/) | GNSTradingCallbacksV6_1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x08a144...ddd888`](./contracts/polygon-137/0x08a144792239cb7517afbf11883011867eddd888/) | GNSTradingCallbacksV6_3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0765eb...7e1aaf`](./contracts/arbitrum-42161/0x0765ebc1411fc2db457fd01268e9d8dc087e1aaf/) | GNSTradingCallbacksV6_3_1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1523fa...2f7c6b`](./contracts/polygon-137/0x1523fabcbbcdab95bcec6b8ebecaeabc6b2f7c6b/) | GNSTradingCallbacksV6_4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x05c3d5...e04149`](./contracts/arbitrum-42161/0x05c3d5a2476b260b8938a225ea233f366be04149/) | GNSTradingCallbacksV6_4_1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0afaed...19afb5`](./contracts/polygon-137/0x0afaed0191e79374ca2d04efc85b4e719419afb5/) | GNSTradingInteractions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x7f1bca...b29bc9`](./contracts/polygon-137/0x7f1bcaf274fa79909d1778c95c9947d882b29bc9/) | GNSTradingStateCopy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x01fd80...cf9858`](./contracts/arbitrum-42161/0x01fd80b99424a455345df672e7719bbf86cf9858/) | GNSTradingStorage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x37c114...528ebe`](./contracts/polygon-137/0x37c11410b2c2a1cd4b3a0de2bd3a1808e0528ebe/) | GNSTradingV5 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xf8a140...4fe559`](./contracts/polygon-137/0xf8a140db8b05bec52c7e86d0d40d72f8e54fe559/) | GNSTradingV6 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xd8d177...5f8f58`](./contracts/polygon-137/0xd8d177efc926a18ee455da6f5f6a6cfcee5f8f58/) | GNSTradingV6_1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x07c848...a11fe0`](./contracts/arbitrum-42161/0x07c8481f5ebe5c40c5e2e18a174606e5d3a11fe0/) | GNSTradingV6_2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x36f9d6...1124f8`](./contracts/polygon-137/0x36f9d68acd292e1e59b3c45457dfabd7301124f8/) | GNSTradingV6_3_1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x5c58a8...5d83da`](./contracts/polygon-137/0x5c58a8acac721928b6f4495370c10762795d83da/) | GNSTradingV6_3_2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x09d981...073f37`](./contracts/polygon-137/0x09d981aef6556b92ffb0521bcb3552b0d0073f37/) | GNSTriggerRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0c299d...dfaaad`](./contracts/arbitrum-42161/0x0c299d41b6ee07feb7adaf73e234e3cb29dfaaad/) | GTokenLockedDepositNft | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x01f53a...1f2858`](./contracts/arbitrum-42161/0x01f53a010b09863ffd362a15e002da01901f2858/) | GTokenLockedDepositNftDesign | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x007803...de47b4`](./contracts/arbitrum-42161/0x00780378a40bd6a7a682aa891f5f052b49de47b4/) | GTokenOpenPnlFeed | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x03908e...0b8f08`](./contracts/base-8453/0x03908e9aeba0a23c1c476f946b99b6e9ea0b8f08/) | ManagerTimelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x6528ed...cf9b9c`](./contracts/polygon-137/0x6528edab55cb189be91c835011ed174455cf9b9c/) | OvercollatMigrationRouter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3a00b1...419e7a`](./contracts/base-8453/0x3a00b1fa6cb7d07043fc2b2066066735f9419e7a/) | OwnerTimelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x535537...09270d`](./contracts/polygon-137/0x53553728a39e307b8f485f431825a1e13909270d/) | PairsStorageUtils | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x02cd10...1a12e3`](./contracts/polygon-137/0x02cd10923e19b6ba98f745466167694f611a12e3/) | PriceAggregatorUtils | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x02dbbc...9202f9`](./contracts/polygon-137/0x02dbbc5aadfeb6a1e21819d9ece4bcf0799202f9/) | ReferralStateCopy | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x33025b...4b4e43`](./contracts/polygon-137/0x33025b177a35f6275b78f9c25684273fc24b4e43/) | StakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x00f417...e77667`](./contracts/arbitrum-42161/0x00f417403732dbd32fde2b0d61dbab0e25e77667/) | Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x03c86d...889c0b`](./contracts/polygon-137/0x03c86d38143908ef53305e8184cfe4aed9889c0b/) | TradeUtils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0393e1...07d0ae`](./contracts/arbitrum-42161/0x0393e1e68a051ae580a69f443b7db7cd3907d0ae/) | TradingCallbacksUtils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x01e8bd...1798df`](./contracts/arbitrum-42161/0x01e8bde7cbb881aeca02ba2a9631d94d491798df/) | TradingCommonUtils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x036c04...3000d9`](./contracts/polygon-137/0x036c0411c5ce4fa6e0600529904884b55e3000d9/) | TradingStorageUtils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x066830...36bfce`](./contracts/base-8453/0x06683037152874729cb6ed02eb9561754736bfce/) | UpdateLeverageLifecycles | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0b9949...0a003a`](./contracts/base-8453/0x0b994984fe963904d601805d3d20930b8f0a003a/) | UpdatePositionSizeLifecycles | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 448 |
| upstream | 1 |
| standard_library | 2 |
| needs_review | 309 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [3379] DL audit link

Fork inheritance lineage and inherited audits are included when available.
