# Agentic Audit Brief: DODO

⚠️ Lifecycle status: DECLINING - TVL dropped 42.9% over 90 days

## Project Overview

- Project: DODO (`dodo`)
- Website: [https://dodoex.io](https://dodoex.io)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-05-25T14:55:51.065Z
- Pipeline run: v2-pipeline-2026-05-25-eff36e-79e6
- Chains: arbitrum, aurora, avalanche, base, bsc, ethereum, linea, manta, mantle, optimism, polygon, scroll
- Contract surface: 569 unique implementations (1604 raw deployments)
- DeFi Llama TVL: $11,977,776.00
- On-chain TVL (included contracts): $20,635,644.02
- TVL by chain: Ethereum $19,605,339.63 | Bsc $1,030,304.39

## Project Description

DODO is a decentralized exchange protocol that uses a proactive market maker (PMM) algorithm to provide efficient on-chain liquidity and trading. It also includes aggregation and lending features to optimize trade execution and capital utilization across multiple chains.

### Architecture

The DODO family provides the foundational AMM factories and token, while DODO Agg builds on top with vaults and staking contracts that interact with DODO pools and external liquidity sources. DODO AMM is a parallel set of factory deployments sharing the same PMM design, often on separate chains, and may be used by aggregation services.

## Audit Coverage Summary

- Verified implementations audited: 0/178 (0.0%)
- Verified + Unaudited implementations: 162
- Verified by bytecode match: 16
- Unverified implementations: 391
- Unique implementations: 569
- Raw deployments: 1604
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $20,635,644.02
- Latest audit: 2021-04 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $20,635,644.02 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (162)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| DODOToken | token | ethereum | 2 deployments: ethereum [`0x43dfc4...7d4ddd`](./contracts/ethereum-1/0x43dfc4159d86f3a37a5a4b3d4580b888ad7d4ddd/); ethereum `0xf86a1f...9f6c24` | ⚠️ Unaudited |
| DODOBscToken | token | bsc | [`0x67ee3c...b929e2`](./contracts/bsc-56/0x67ee3cb086f8a16f34bee3ca72fad36f7db929e2/) | ⚠️ Unaudited |
| ArcxTokenV2 | token | ethereum | [`0x1321f1...9bb288`](./contracts/ethereum-1/0x1321f1f1aa541a56c31682c57b80ecfccd9bb288/) | ⚠️ Unaudited |
| bVault | core_logic | ethereum | 6 deployments: ethereum [`0x2c2327...568ea6`](./contracts/ethereum-1/0x2c23276107b45e64c8c59482f4a24f4f2e568ea6/); ethereum `0x378388...a35153`; ethereum `0x3fb6b0...15a2cc`; ethereum `0x750d30...7996d0`; ethereum `0x801690...85dc0e`; ethereum `0x8d9a39...ec6108` | ⚠️ Unaudited |
| BACDAIPool | core_logic | ethereum | [`0xebd126...02bde8`](./contracts/ethereum-1/0xebd12620e29dc6c452db7b96e1f190f3ee02bde8/) | ⚠️ Unaudited |
| BACUSDCPool | core_logic | ethereum | [`0x518821...429fd4`](./contracts/ethereum-1/0x51882184b7f9beed6db9c617846140da1d429fd4/) | ⚠️ Unaudited |
| BACUSDTPool | core_logic | ethereum | [`0x2833bd...877e44`](./contracts/ethereum-1/0x2833bdc5b31269d356bdf92d0fd8f3674e877e44/) | ⚠️ Unaudited |
| StakingAccrualERC20V5 | token | ethereum | [`0x9bffad...fd7d9d`](./contracts/ethereum-1/0x9bffad7a6d5f52dbc51cae33e419793c72fd7d9d/) | ⚠️ Unaudited |
| BACSUSDPool | core_logic | ethereum | [`0xdc42a2...93305c`](./contracts/ethereum-1/0xdc42a21e38c3b8028b01a6b00d8dbc648f93305c/) | ⚠️ Unaudited |
| ERC20Peg | token | ethereum | [`0x76bac8...4c6e32`](./contracts/ethereum-1/0x76bac85e1e82cd677faa2b3f00c4a2626c4c6e32/) | ⚠️ Unaudited |
| ABep20Delegate | unknown | bsc | 42 deployments: bsc [`0x004621...a62601`](./contracts/bsc-56/0x0046214a8a8cdc635e5ba0b7980fb91c3aa62601/); bsc `0x02a7de...c66e6b`; bsc `0x0503fe...b9df7f`; bsc `0x075105...93ae16`; bsc `0x10ad98...49be33`; bsc `0x14f235...fe684f`; bsc `0x1e3c74...0ad04f`; bsc `0x20c7e6...9603f9`; bsc `0x219db7...b17f57`; bsc `0x24ce0e...59a307`; bsc `0x264586...6a6dc4`; bsc `0x280b64...961cb4`; bsc `0x294c94...45abfc`; bsc `0x2c5056...684343`; bsc `0x2f4ba3...a2eeba`; bsc `0x4b1024...b9c34d`; bsc `0x4e9bf2...ad12f6`; bsc `0x558b96...94e9a3`; bsc `0x59123a...6cd87c`; bsc `0x5b3a4b...02c4d6`; bsc `0x5c81c0...68a2a2`; bsc `0x5e527b...65109a`; bsc `0x61f7d2...86c1be`; bsc `0x68af2e...924a57`; bsc `0x6a3ebe...ef11f2`; bsc `0x788a79...be1db3`; bsc `0x7c0697...7089cf`; bsc `0x8df371...162894`; bsc `0x96ffc0...a11940`; bsc `0xa30ce0...d808aa`; bsc `0xa65722...6e8adc`; bsc `0xbc46dc...c2fdfe`; bsc `0xbe5878...4a7160`; bsc `0xc182ea...f6c74e`; bsc `0xc9e38d...992c54`; bsc `0xcc7fc8...bbe54c`; bsc `0xd47084...6c4058`; bsc `0xd6bc11...cb7f67`; bsc `0xd7c38e...e30ac2`; bsc `0xd9afd1...001158`; bsc `0xdc90ad...22e1fe`; bsc `0xfead96...03ea0c` | ⚠️ Unaudited |
| ABep20Delegator | unknown | bsc | 16 deployments: bsc [`0x0524f1...69a7aa`](./contracts/bsc-56/0x0524f1841a2a11e7bfaf7f62f09b2e9e8f69a7aa/); bsc `0x12d244...8718cc`; bsc `0x193815...160dde`; bsc `0x1d4896...9a03e8`; bsc `0x21e7e1...2a7aa1`; bsc `0x33bdc1...a7a46c`; bsc `0x350bd6...e708c0`; bsc `0x3b1add...3c43b2`; bsc `0x4fd8f9...a62168`; bsc `0x7044a0...88f740`; bsc `0x926437...21e557`; bsc `0x963125...3ec84c`; bsc `0xacb6fc...fdb470`; bsc `0xaf089a...782c5c`; bsc `0xb5d407...42fc00`; bsc `0xfb7112...9bfde4` | ⚠️ Unaudited |
| ABNB | unknown | bsc | 2 deployments: bsc [`0x032dd2...995c29`](./contracts/bsc-56/0x032dd2cd4e64d8c30fed171d0d0b6cf4a7995c29/); bsc `0x5a9a90...1caf63` | ⚠️ Unaudited |
| Adoption | unknown | aurora | [`0x18b0bd...cb403b`](./contracts/aurora-1313161554/0x18b0bd918b55f995fd404b872404378a62cb403b/) | ⚠️ Unaudited |
| AlgebraAdapter | adapter | bsc | [`0x89ba40...006f4d`](./contracts/bsc-56/0x89ba4039841587b0a4cffdf17aee30cacf006f4d/) | ⚠️ Unaudited |
| Atlantis | unknown | bsc | 4 deployments: bsc [`0x1fd991...c10271`](./contracts/bsc-56/0x1fd991fb6c3102873ba68a4e6e6a87b3a5c10271/); bsc `0x6e0b56...0a6af0`; bsc `0xab4a4f...ded581`; bsc `0xb6e193...87b05b` | ⚠️ Unaudited |
| AtlantisLens | periphery | bsc | 2 deployments: bsc [`0x0e8c9f...a02a23`](./contracts/bsc-56/0x0e8c9fc7cd455faf22d13fcafd5c6f4eeca02a23/); bsc `0xa23a21...39a2c4` | ⚠️ Unaudited |
| AtlantisMultiSwapper | adapter | bsc | 4 deployments: bsc [`0x1eca54...83a07a`](./contracts/bsc-56/0x1eca5409b30a398b46c84d98db3e91054283a07a/); bsc `0x42febd...422a91`; bsc `0x4f58d3...e93ee3`; bsc `0x7b4c8a...cc8ad2` | ⚠️ Unaudited |
| AtlantisPriceOracle | operational_periphery | bsc | 10 deployments: bsc [`0x08f53b...f5b0d6`](./contracts/bsc-56/0x08f53b683e1b87d952a0878ce763c1e6f2f5b0d6/); bsc `0x0bfb6a...c7129e`; bsc `0x182f4b...879eb5`; bsc `0x1fb649...df59a0`; bsc `0x23720e...81ca7e`; bsc `0x77c01c...a26c7b`; bsc `0x8f85ee...6de09a`; bsc `0xa14435...364969`; bsc `0xe7fc78...1da1fb`; bsc `0xf9b50d...77ec3e` | ⚠️ Unaudited |
| AtlantisRescue | unknown | bsc | [`0x9efe05...c84c6f`](./contracts/bsc-56/0x9efe0562e453c8d69870e27acc4d44f7a7c84c6f/) | ⚠️ Unaudited |
| AtlantisStore | unknown | bsc | 5 deployments: bsc [`0x7772dc...feb49e`](./contracts/bsc-56/0x7772dc1c8907fee069a296db5790faf253feb49e/); bsc `0x8cfc23...eac61b`; bsc `0xb11164...7473be`; bsc `0xc81376...c03c27`; bsc `0xce748b...cd46fd` | ⚠️ Unaudited |
| ATLStore | token | bsc | [`0x681228...0510d4`](./contracts/bsc-56/0x6812288b7bc0cf1ed61f7bfaaef743310d0510d4/) | ⚠️ Unaudited |
| ATLVault | core_logic | bsc | 2 deployments: bsc [`0x098f2a...0910ed`](./contracts/bsc-56/0x098f2a29ba9ce38eeb10e02b83945d7c6d0910ed/); bsc `0x4e8e03...c66bd2` | ⚠️ Unaudited |
| BACyCRVPool | core_logic | ethereum | [`0xc462d8...14c3bf`](./contracts/ethereum-1/0xc462d8ee54953e7d7bf276612b75387ea114c3bf/) | ⚠️ Unaudited |
| BakeryAdapter | adapter | bsc | 3 deployments: bsc [`0x08e358...c6c61b`](./contracts/bsc-56/0x08e358a23decff37efca1d3c9e0e43a3e9c6c61b/); bsc `0x17307d...10b9cf`; bsc `0xbe24a0...b0c88c` | ⚠️ Unaudited |
| BatchERC721Transfer | token | bsc | [`0x7776b8...cdd9dc`](./contracts/bsc-56/0x7776b8e7b9228eb030d2e18e30d8adbbd1cdd9dc/) | ⚠️ Unaudited |
| BatchTransfer | periphery | ethereum | 2 deployments: ethereum [`0x0d53ac...3d112b`](./contracts/ethereum-1/0x0d53acf7956bfe0e4b00ee5eacbe5cf1d43d112b/); ethereum `0x1e4e1b...2a8bfd` | ⚠️ Unaudited |
| BentoBox | unknown | bsc | [`0x41f42f...6e78a6`](./contracts/bsc-56/0x41f42f4ff2490d171b0a7bb472a4fbcd8d6e78a6/) | ⚠️ Unaudited |
| BentoBoxV2 | unknown | bsc | 3 deployments: bsc [`0x42e7c8...8f277a`](./contracts/bsc-56/0x42e7c818f9c999f16b041953bb7c40503e8f277a/); bsc `0x535682...5c0f1a`; bsc `0x9e96bc...7043ab` | ⚠️ Unaudited |
| BirdlayerRouteProxy | unknown | arbitrum | 4 deployments: ethereum `0x464494...c6b744`; bsc `0x669c8c...f19ace`; bsc `0xdbaf29...75074a`; arbitrum [`0x255416...8f1992`](./contracts/arbitrum-42161/0x255416bc03b5f5c6fa4425691f3e5dac108f1992/) | ⚠️ Unaudited |
| BlackPoolToken | core_logic | ethereum | [`0x0ec9f7...7e37da`](./contracts/ethereum-1/0x0ec9f76202a7061eb9b3a7d6b59d36215a7e37da/) | ⚠️ Unaudited |
| Bridge | operational_periphery | ethereum | [`0x306227...b404b2`](./contracts/ethereum-1/0x306227d964511a260d14563fbfa82aa75db404b2/) | ⚠️ Unaudited |
| BuyoutModel | unknown | ethereum | 4 deployments: ethereum [`0x102739...296426`](./contracts/ethereum-1/0x102739e36bc412cf79ff62f3e1efaba9f8296426/); bsc `0xfea1ac...484197`; polygon `0x5ce3aa...336045`; arbitrum `0x23b06d...693af7` | ⚠️ Unaudited |
| CommonInterestModel | unknown | ethereum | [`0xe04f5b...8f8e05`](./contracts/ethereum-1/0xe04f5b60ed8ef9e52098e5428c5851b0de8f8e05/) | ⚠️ Unaudited |
| CommunityStore | unknown | bsc | 2 deployments: bsc [`0x63295b...89b4e3`](./contracts/bsc-56/0x63295bb73f7ea15a6a0ce57f34a379a8d689b4e3/); bsc `0xe47fdb...a3f375` | ⚠️ Unaudited |
| CommunityVault | core_logic | bsc | 3 deployments: bsc [`0x043bb6...7e3974`](./contracts/bsc-56/0x043bb6fa4577d9226b7f75e6d528393d247e3974/); bsc `0x66265f...7c3348`; bsc `0xdcb2fa...01bbbb` | ⚠️ Unaudited |
| Comptroller | unknown | bsc | 6 deployments: bsc [`0x31169b...6b7c79`](./contracts/bsc-56/0x31169b127e34fe6ff93fe9810a6165c6fd6b7c79/); bsc `0x3533e4...9b3c9c`; bsc `0x671120...5f1cc0`; bsc `0xcee214...bde2a1`; bsc `0xe56c4d...cce22e`; bsc `0xe7e304...e242f3` | ⚠️ Unaudited |
| ConstOracle | operational_periphery | ethereum | 12 deployments: ethereum [`0x072ff3...a99d7a`](./contracts/ethereum-1/0x072ff3ed5f723fb4e9a83a76755ed5222ea99d7a/); ethereum `0x0e3ca6...932f59`; ethereum `0x5e475b...ccf9dc`; ethereum `0x702d17...e1b5a3`; ethereum `0x8a6ac6...926bc5`; ethereum `0xab291a...d3dc3f`; bsc `0xa952f8...b21edb`; polygon `0x0e3ca6...932f59`; polygon `0x6fddb7...8577a4`; polygon `0x987e2a...363625`; arbitrum `0x652c09...a19a4d`; aurora `0xb86050...80aecc` | ⚠️ Unaudited |
| Controller | governance | bsc | 3 deployments: ethereum `0xfedbea...8c0b80`; bsc [`0x4187aa...113634`](./contracts/bsc-56/0x4187aab02f9e3abdeb9a6cc71397a7a839113634/); polygon `0xe6aafa...dab05b` | ⚠️ Unaudited |
| CrowdPoolingFactory | registry | ethereum | 20 deployments: ethereum [`0x1e5d8e...6aa656`](./contracts/ethereum-1/0x1e5d8ee8fb7f0d791475c59391db8f6cd06aa656/); ethereum `0x79887f...b8fe13`; ethereum `0x95e887...4b25a8`; ethereum `0xe8c9a7...fecf25`; optimism `0x424976...25d9db`; bsc `0x778df5...e185dc`; bsc `0x9ae501...11bcb5`; bsc `0x9c9ef6...28debc`; bsc `0xd5a7e1...07281a`; polygon `0x29e708...9d51f6`; polygon `0x42ddec...9841c9`; polygon `0x853512...f1325d`; manta `0xfd2b79...500df1`; mantle `0xe2004e...cc7b99`; base `0x97bbf5...416a83`; arbitrum `0x6e5f23...d89218`; arbitrum `0x9a8c0e...4faff4`; avalanche `0x25b2f9...a3addc`; avalanche `0xc1ba6b...d4f032`; linea `0x6b9577...6e303d` | ⚠️ Unaudited |
| CustomERC20 | token | polygon | 27 deployments: ethereum `0x68275e...bfcdbe`; ethereum `0x9cd85f...3ce4a9`; ethereum `0xf439e3...4bf75b`; optimism `0xd8d9c3...c710bf`; bsc `0x2aabd1...98051b`; bsc `0x4777a6...e10f1f`; bsc `0xb71c24...17ced2`; polygon [`0x093b68...dd17eb`](./contracts/polygon-137/0x093b68bfe0859d3c857fc3529952897c30dd17eb/); polygon `0x1e5d8e...6aa656`; polygon `0x471e1a...37dabd`; polygon `0x6f6059...ec76c2`; polygon `0xaf49db...d25eff`; polygon `0xd4f773...6aa49e`; manta `0xeac4bf...adc596`; mantle `0xc0f955...c360f7`; base `0x3dd629...073f11`; arbitrum `0x4a4cae...8c5c9e`; arbitrum `0x61126c...bd445e`; arbitrum `0x62c64e...23c3df`; arbitrum `0x99c5a8...df8acf`; arbitrum `0xce2a93...6ad373`; arbitrum `0xcf1eef...b1479a`; avalanche `0x1cc529...b2d58f`; avalanche `0xd56281...043127`; avalanche `0xe91067...f98b5c`; linea `0x841456...3cbe81`; aurora `0xee6d41...b2636b` | ⚠️ Unaudited |
| CustomMintableERC20 | token | manta | 11 deployments: ethereum `0x234e86...2fd4e5`; optimism `0xaf0f2c...a64346`; bsc `0xff739f...7eaff3`; polygon `0x5f3178...122d79`; manta [`0x04f7ba...dc89ea`](./contracts/manta-169/0x04f7bae2a4c05cd567f762e33450debcebdc89ea/); mantle `0x4a81aa...e58d8e`; base `0x841456...3cbe81`; arbitrum `0xdce659...a3beda`; avalanche `0x77dec4...58fdc8`; linea `0xeac4bf...adc596`; aurora `0x5e7878...f7c94f` | ⚠️ Unaudited |
| DataStreamsConsumer | unknown | arbitrum | [`0x01ae7f...331c97`](./contracts/arbitrum-42161/0x01ae7f0633e1d8d642c5a6a6d39b00a36b331c97/) | ⚠️ Unaudited |
| DODO | unknown | bsc | 13 deployments: ethereum `0x5e7878...f7c94f`; ethereum `0x7791c8...db665c`; ethereum `0x887681...2b4b2d`; ethereum `0xf6a8e4...167bf3`; optimism `0xacdac7...dc5d2b`; bsc [`0x47520b...80fec2`](./contracts/bsc-56/0x47520b1e49e252d5a79c3f6a241ae95b0f80fec2/); bsc `0x77106d...d2d748`; bsc `0x99ba96...48515b`; bsc `0x9ee4ce...015be4`; polygon `0x9f015a...07f2ea`; arbitrum `0xe33c4f...6c7735`; avalanche `0xd5a7e1...07281a`; aurora `0xb5dc5e...47d537` | ⚠️ Unaudited |
| DODOApproveProxy | unknown | polygon | 13 deployments: ethereum `0x335ac9...5cc619`; optimism `0x6d7602...bd648d`; optimism `0x8989a6...dbc348`; bsc `0xb76de2...76314c`; polygon [`0x01feea...ef80d7`](./contracts/polygon-137/0x01feea29da5ae41b0b5f6b10b93ee34752ef80d7/); polygon `0x738ebf...b1df51`; manta `0xa23137...49eeae`; mantle `0xb546ad...d1262c`; base `0x6de4d8...babeb1`; arbitrum `0x311e67...a611f0`; avalanche `0x96a75d...1d3dc4`; linea `0xcb3dc9...06495e`; aurora `0x6b4fa0...d3e5ef` | ⚠️ Unaudited |
| DODOBuyBackBatchSwap | periphery | ethereum | [`0xb3ce29...2ed040`](./contracts/ethereum-1/0xb3ce29e0ec5e83925f1dc39e261b60b83a2ed040/) | ⚠️ Unaudited |
| DODOCalleeHelper | periphery | optimism | 12 deployments: ethereum `0x45a7e2...54b522`; ethereum `0xb5397b...7d90c0`; optimism [`0x0bd742...49112d`](./contracts/optimism-10/0x0bd7426f008737feed575ed8e2aa1bd4fc49112d/); bsc `0x2673e5...8e3b4b`; polygon `0x261f6c...ed3dfc`; polygon `0x2bbd66...f71445`; manta `0x440234...01e269`; mantle `0x4aae1d...caf931`; base `0x440234...01e269`; arbitrum `0xe3b40f...21cfbd`; avalanche `0x4eff1d...a46f2a`; linea `0xb5c7ba...373780` | ⚠️ Unaudited |
| DODOCirculationHelper | periphery | ethereum | 2 deployments: ethereum [`0x357c5e...119d11`](./contracts/ethereum-1/0x357c5e9cfa8b834edcef7c7aabd8f9db09119d11/); ethereum `0x53233a...6b129b` | ⚠️ Unaudited |
| DODOCpProxy | unknown | ethereum | 19 deployments: ethereum [`0x048b89...e06fc2`](./contracts/ethereum-1/0x048b8926bb0ee9c52e05d61fdffbccffbee06fc2/); ethereum `0x283e02...3d0ef2`; ethereum `0x471e1a...37dabd`; optimism `0x072b3e...163093`; optimism `0x5627d0...9b23c5`; bsc `0x7831d8...57f08d`; bsc `0xa86724...5474d8`; bsc `0xbb8680...97f28c`; polygon `0x5480b3...558b57`; polygon `0x6bd374...8138fa`; polygon `0xfdd51a...2524a9`; manta `0x2f66c5...d35fd3`; mantle `0x49186e...d41414`; base `0x6b9577...6e303d`; arbitrum `0x074890...03c155`; arbitrum `0x467b6a...8d0f1a`; avalanche `0x973cab...c1143c`; avalanche `0x9aa4d7...7a98fd`; linea `0x2f66c5...d35fd3` | ⚠️ Unaudited |
| DODOCpProxyTmp | unknown | ethereum | [`0x8e2f66...f96a90`](./contracts/ethereum-1/0x8e2f666f316b614c76676215f16f0a9746f96a90/) | ⚠️ Unaudited |
| DODODppProxy | unknown | base | 12 deployments: ethereum `0xff7c8f...6dae7a`; optimism `0x51a70a...2e85dd`; optimism `0xb69804...cc87ab`; optimism `0xc117d8...da7e5f`; bsc `0x624fc8...ec21b9`; polygon `0xf6f1a1...abc2f7`; manta `0xcda4a6...f3c897`; mantle `0xa5fc92...69d6c2`; base [`0x0b1467...93cf36`](./contracts/base-8453/0x0b1467f71c082d8d410af4376c685d9a6893cf36/); avalanche `0xe44f14...1753c9`; linea `0xcda4a6...f3c897`; aurora `0x357c5e...119d11` | ⚠️ Unaudited |
| DODODropsProxy | unknown | bsc | [`0xc05a30...c3323b`](./contracts/bsc-56/0xc05a30468d039381aabab6dcac31078db2c3323b/) | ⚠️ Unaudited |
| DODODspProxy | unknown | manta | 19 deployments: ethereum `0x4599ed...5c644d`; ethereum `0x5245f5...cd879b`; optimism `0x61721e...9c5d54`; optimism `0x7d3589...6b640e`; optimism `0xbad6ee...b773fb`; bsc `0x2442a8...d4e65a`; bsc `0x69716e...11c594`; polygon `0xa3dff6...ef683e`; polygon `0xfddca6...178048`; manta [`0x0b1467...93cf36`](./contracts/manta-169/0x0b1467f71c082d8d410af4376c685d9a6893cf36/); mantle `0x2933c0...9debee`; base `0x2f8665...c188c7`; base `0x49186e...d41414`; arbitrum `0x36e523...500eaa`; arbitrum `0xf0f8fb...6fac9d`; avalanche `0xeceade...95dc32`; linea `0x2f8665...c188c7`; linea `0x6d3bd0...650e03`; aurora `0x53233a...6b129b` | ⚠️ Unaudited |
| DODOEthProxy | unknown | ethereum | 5 deployments: ethereum [`0x37adc3...9d5913`](./contracts/ethereum-1/0x37adc35f7b12582240818df04aac04ca409d5913/); ethereum `0x3d7cbd...0c98a6`; ethereum `0xb38df1...7bd79f`; ethereum `0xe78c49...137d47`; bsc `0xd3c2ce...77826f` | ⚠️ Unaudited |
| DODOFeeRouteProxy | unknown | bsc | 15 deployments: ethereum `0x5977f1...254da8`; ethereum `0xfe837a...c4dffc`; bsc [`0x0343c5...c71c64`](./contracts/bsc-56/0x0343c5757fb98ad9ef39824e08b852af61c71c64/); bsc `0x701ac6...c93368`; bsc `0xb95ed7...b10ab9`; manta `0x200d86...a5eb80`; manta `0x2933c0...9debee`; mantle `0x70b9c5...570698`; mantle `0xb4e598...992c61`; base `0x987bfb...c16d32`; base `0xa37676...daf128`; arbitrum `0x056fce...7bfc1a`; arbitrum `0x69716e...11c594`; linea `0x03e89f...bf391b`; linea `0x70b9c5...570698` | ⚠️ Unaudited |
| DODOIncentive | unknown | bsc | 4 deployments: ethereum `0x550b2e...ce289b`; ethereum `0x989dca...ce1b0c`; bsc [`0x4ee639...9cd352`](./contracts/bsc-56/0x4ee6398898f7fc3e648b3f6ba458310ac29cd352/); bsc `0x80930c...8a821b` | ⚠️ Unaudited |
| DODOLimitOrder | unknown | ethereum | 9 deployments: ethereum [`0x093b68...dd17eb`](./contracts/ethereum-1/0x093b68bfe0859d3c857fc3529952897c30dd17eb/); bsc `0xa68d05...8240c1`; bsc `0xdc5e86...7b2a04`; polygon `0x5f4304...21d3f3`; polygon `0x827cf8...bcee8d`; arbitrum `0x43e30e...985bd0`; arbitrum `0x91fbd0...d065c9`; avalanche `0x0fb981...ede767`; avalanche `0x5cd953...5b7139` | ⚠️ Unaudited |
| DODOLimitOrderBot | unknown | arbitrum | 10 deployments: ethereum `0xd9b825...524dbb`; bsc `0x187da3...9cf5fe`; bsc `0xd4edd3...43f083`; polygon `0xa7263e...4a7840`; polygon `0xaa5c4d...da3d41`; arbitrum [`0x0f278e...8684a2`](./contracts/arbitrum-42161/0x0f278ee5fdd139f9ae8c6498cca0f2c2208684a2/); arbitrum `0x16c8e7...7b561f`; arbitrum `0x35fcd0...8a064c`; avalanche `0x4a4cae...8c5c9e`; avalanche `0xe3b40f...21cfbd` | ⚠️ Unaudited |
| DODOLimitOrderProxy | unknown | bsc | [`0x5e6c9f...a03322`](./contracts/bsc-56/0x5e6c9f63e0ccf68d98bd14fef83a708f1ea03322/) | ⚠️ Unaudited |
| DODOMaticToken | token | polygon | [`0x6b208e...c46cf2`](./contracts/polygon-137/0x6b208e08dcf6bd51f50c5da09d15b2d8e5c46cf2/) | ⚠️ Unaudited |
| DODOMigrationBSC | operational_periphery | ethereum | 3 deployments: ethereum [`0x02fcb2...d32bc7`](./contracts/ethereum-1/0x02fcb21dc1cf221939c1d4277fb54016b5d32bc7/); ethereum `0x958f79...298e58`; ethereum `0xb15926...64cf6e` | ⚠️ Unaudited |
| DODOMine | unknown | bsc | 9 deployments: ethereum `0x5df860...a8945d`; ethereum `0xa951ed...732b8c`; ethereum `0xaed738...0a632c`; bsc [`0x01f9bf...0cc750`](./contracts/bsc-56/0x01f9bfac04e6184e90bd7eafd51999ce430cc750/); polygon `0xb14da6...6fc3ad`; arbitrum `0x27da0a...69024e`; arbitrum `0xba293f...f0d57f`; arbitrum `0xe3c109...2fde3e`; aurora `0xdbfaf3...96e192` | ⚠️ Unaudited |
| DODOMineReader | unknown | ethereum | 3 deployments: ethereum [`0x0de3c2...cbcc9d`](./contracts/ethereum-1/0x0de3c2c33d7ef25c4c89ea774e2059fc48cbcc9d/); ethereum `0x6a01ab...79b31d`; bsc `0xf94435...387416` | ⚠️ Unaudited |
| DODOMineV2Factory | registry | polygon | 13 deployments: ethereum `0x37f4fd...5d68f3`; optimism `0xa36b34...1ce0c9`; bsc `0x4e306a...a8b641`; bsc `0xf998ff...6fd217`; polygon [`0x357091...4dccc1`](./contracts/polygon-137/0x3570911f8f675c091e616e5efc7e5617684dccc1/); polygon `0xa5d3bd...af5d6a`; manta `0x46af6b...f6cd5c`; mantle `0x6b9577...6e303d`; base `0xfd2b79...500df1`; arbitrum `0x5a2e22...708759`; avalanche `0xcdfd45...3a2380`; linea `0xfd2b79...500df1`; aurora `0x9ae501...11bcb5` | ⚠️ Unaudited |
| DODOMineV3Proxy | unknown | ethereum | 12 deployments: ethereum [`0x0d9685...00bbdc`](./contracts/ethereum-1/0x0d9685d4037580f68d9f77b08971f17e1000bbdc/); optimism `0xaedbd0...470c78`; optimism `0xc4129d...2009fd`; bsc `0x3c39dc...9597ac`; bsc `0x8f3fb1...b5c590`; polygon `0x47a65e...a234ad`; manta `0xa6d006...dd9719`; mantle `0x6d3bd0...650e03`; base `0x2f66c5...d35fd3`; arbitrum `0x9a74b1...9ef45e`; avalanche `0x5d6e6a...16b245`; linea `0xa6d006...dd9719` | ⚠️ Unaudited |
| DODONFT | token | arbitrum | 4 deployments: ethereum `0x945497...623e55`; bsc `0x5ed972...489888`; polygon `0xa1ffe9...3fd0f4`; arbitrum [`0x4ec636...3e4e30`](./contracts/arbitrum-42161/0x4ec636c32195dd4e4be1d37c0838db1a8e3e4e30/) | ⚠️ Unaudited |
| DODONFT1155 | token | ethereum | 4 deployments: ethereum [`0x3ab9b8...4cfd5b`](./contracts/ethereum-1/0x3ab9b8bcc97db111bf14b04ebd4c08dce94cfd5b/); bsc `0xdc9224...f56119`; polygon `0xfeb1fb...20fd57`; arbitrum `0x3ec5a1...441ba8` | ⚠️ Unaudited |
| DODONFTApprove | token | bsc | 3 deployments: ethereum `0xf74025...e2e5f3`; bsc [`0x8f6978...4c7a6c`](./contracts/bsc-56/0x8f697865fb43236683a174fee87fd84db64c7a6c/); polygon `0x91e1c8...8f6ec7` | ⚠️ Unaudited |
| DODONFTPoolProxy | core_logic | bsc | 3 deployments: ethereum `0x9d4c34...3ce45d`; bsc [`0x509d37...b5b965`](./contracts/bsc-56/0x509d3775f684fa4d19c9c99b961202e309b5b965/); polygon `0x533af8...a817fb` | ⚠️ Unaudited |
| DODONFTProxy | token | bsc | 6 deployments: ethereum `0x987e2a...363625`; bsc [`0x0d224a...798c71`](./contracts/bsc-56/0x0d224a4a6da3cfb360b9879965b1f78865798c71/); bsc `0x485239...8131fa`; bsc `0xb9c408...e6fcde`; polygon `0xcb0a88...0fe09b`; arbitrum `0x6a51c8...329f23` | ⚠️ Unaudited |
| DODONFTRegistry | registry | bsc | 4 deployments: ethereum `0xa7263e...4a7840`; bsc [`0x2c0dd7...dce31a`](./contracts/bsc-56/0x2c0dd764a0be8a7e747cb0765e268d576edce31a/); polygon `0x840135...d33210`; arbitrum `0x8327b0...6b7535` | ⚠️ Unaudited |
| DODONFTRouteHelper | token | polygon | 4 deployments: ethereum `0x902942...fb7603`; bsc `0x2d8349...57fbf3`; polygon [`0x19309b...271e16`](./contracts/polygon-137/0x19309bb932df8c07dbca8df93ad4fcc419271e16/); arbitrum `0xfcbd98...9c539d` | ⚠️ Unaudited |
| DODORecharge | unknown | bsc | 2 deployments: bsc [`0x61b216...1d0f6a`](./contracts/bsc-56/0x61b21603a527b487c4a3a80a69224b87751d0f6a/); bsc `0xf7c531...7eddca` | ⚠️ Unaudited |
| DODORouteProxy | unknown | arbitrum | 15 deployments: ethereum `0x10f914...c08236`; ethereum `0x72c279...ac3632`; ethereum `0xa23988...e4d28a`; optimism `0x48ffb9...4f53d3`; optimism `0x7950dc...53f64a`; bsc `0x38a92d...5b3b12`; bsc `0x6b3d81...9737ca`; bsc `0xea872a...53671b`; polygon `0x2fa433...bdc5e9`; polygon `0x406e77...2a8c44`; polygon `0x53ee28...f52da0`; polygon `0x8a6998...6a8122`; arbitrum [`0x002abd...c4107b`](./contracts/arbitrum-42161/0x002abd9ccfdd544512fa21afd18c2c5f6dc4107b/); arbitrum `0x3b6067...9f9237`; avalanche `0x409e37...5d1dd9` | ⚠️ Unaudited |
| DODOSellHelper | periphery | ethereum | 10 deployments: ethereum [`0x533da7...ba80eb`](./contracts/ethereum-1/0x533da777aedce766ceae696bf90f8541a4ba80eb/); optimism `0x56f8e2...be70c2`; polygon `0xdfaf95...897c5a`; manta `0x8ea40e...543bac`; mantle `0x8ea40e...543bac`; base `0x8ea40e...543bac`; arbitrum `0xa5f36e...217c3e`; avalanche `0xf7c531...7eddca`; linea `0xf5ec1a...7270b1`; aurora `0x72d220...598f6c` | ⚠️ Unaudited |
| DODOStarterFactory | registry | bsc | 3 deployments: bsc [`0x796249...29ecb9`](./contracts/bsc-56/0x79624977c8065650f03c38d5bc0f03a6f929ecb9/); polygon `0x9337ca...a17da8`; arbitrum `0xf53bf0...faf804` | ⚠️ Unaudited |
| DODOStarterProxy | unknown | arbitrum | 6 deployments: ethereum `0xeb28da...4af561`; bsc `0x81521b...ffe8d1`; polygon `0xcbb0d6...8dfb56`; arbitrum [`0x02b701...5406ed`](./contracts/arbitrum-42161/0x02b7011de29961de1412dc3c31973909775406ed/); avalanche `0xb8132c...a84773`; aurora `0x800a52...0ab866` | ⚠️ Unaudited |
| DODOSwapCalcHelper | periphery | optimism | 10 deployments: optimism [`0x2815b0...36ab0f`](./contracts/optimism-10/0x2815b0addb0becf86b10982a86a133ae9d36ab0f/); polygon `0x53233a...6b129b`; polygon `0xd9dec7...6b14c2`; manta `0xbcd2fd...8c62da`; mantle `0xbcd2fd...8c62da`; base `0xbcd2fd...8c62da`; arbitrum `0xd7863a...c8d144`; avalanche `0xafe0a7...609eef`; linea `0x8ea40e...543bac`; aurora `0x80930c...8a821b` | ⚠️ Unaudited |
| DODOUpCpProxy | unknown | bsc | 6 deployments: ethereum `0x26d898...9e91b8`; ethereum `0x48d77f...4e550d`; ethereum `0x6ccd61...b34991`; ethereum `0xa3ca30...559d24`; bsc [`0x01d3e7...0679fa`](./contracts/bsc-56/0x01d3e7271c278aa3aa56eeba6a109b2c200679fa/); bsc `0x39eb55...173d03` | ⚠️ Unaudited |
| DODOV1Adapter | adapter | base | 7 deployments: ethereum `0x91e1c8...8f6ec7`; optimism `0xd906c4...da736f`; optimism `0xdd0951...204c86`; base [`0x46af6b...f6cd5c`](./contracts/base-8453/0x46af6b152f2cb02a3cfcc74014c2617bc4f6cd5c/); arbitrum `0xd5a7e1...07281a`; avalanche `0x62f67e...4f10bd`; linea [`0x46af6b...f6cd5c`](./contracts/linea-59144/0x46af6b152f2cb02a3cfcc74014c2617bc4f6cd5c/) | ⚠️ Unaudited |
| DODOV1Proxy04 | unknown | ethereum | 2 deployments: ethereum [`0xa2cb66...1de97d`](./contracts/ethereum-1/0xa2cb66ebb947d217f61510882096f6e95c1de97d/); bsc `0xbe9a66...f33b40` | ⚠️ Unaudited |
| DODOV2CuttingRouteHelper | periphery | polygon | 2 deployments: bsc `0xd9d393...9c4468`; polygon [`0x494c11...2bc35c`](./contracts/polygon-137/0x494c11bac7699c1c780e2ffeefc443b6b62bc35c/) | ⚠️ Unaudited |
| DODOV2Proxy01 | unknown | ethereum | 2 deployments: ethereum [`0x9ae501...11bcb5`](./contracts/ethereum-1/0x9ae501385bc7996a2a4a1fbb00c8d3820611bcb5/); bsc `0xb57dd5...e22e65` | ⚠️ Unaudited |
| DODOV2Proxy02 | unknown | ethereum | 18 deployments: ethereum [`0x1cf4ae...f6dc9a`](./contracts/ethereum-1/0x1cf4ae0fae772b64d83d175d9e3ee06240f6dc9a/); ethereum `0xa35686...231fdc`; optimism `0x4b4f33...d4aff2`; optimism `0xb0a4d8...465a71`; optimism `0xcb48ec...1a7524`; optimism `0xfd9d28...db3c98`; bsc `0x3a343f...054965`; bsc `0x6b4fa0...d3e5ef`; bsc `0x8f8dd7...d58486`; bsc `0xd56281...043127`; polygon `0x45894c...dfef0d`; polygon `0xa222e6...1d0e70`; manta `0x2f8665...c188c7`; mantle `0xe7979e...3e33a2`; base `0x4cad00...295f33`; arbitrum `0x88cbf4...4593e5`; avalanche `0x2cd185...c9ea26`; linea `0x4cad00...295f33` | ⚠️ Unaudited |
| DODOV2RouteHelper | periphery | ethereum | 29 deployments: ethereum [`0x067295...8b1896`](./contracts/ethereum-1/0x0672952fab6bd1336c57ae09e49db6d3e78b1896/); ethereum `0x6e9079...2d4e99`; ethereum `0x9337ca...a17da8`; ethereum `0xbe9a66...f33b40`; optimism `0x5cec05...96eacb`; optimism `0x7abdcb...9e8b11`; optimism `0xc2d185...0483b5`; optimism `0xc48a8e...057f25`; bsc `0x1dc8d1...f9c993`; bsc `0xb48ee7...1c3a65`; bsc `0xc1cce4...53d957`; bsc `0xf2cd74...6cd617`; polygon `0x324c74...d527d3`; polygon `0x6b0c1e...19fdb0`; polygon `0x958f79...298e58`; polygon `0x9b64c8...1e2a09`; polygon `0xa45b11...8c7614`; polygon `0xf077f9...505d66`; manta `0x4cad00...295f33`; mantle `0xcda4a6...f3c897`; base `0x1506b5...e7f0b1`; base `0xa5fc92...69d6c2`; arbitrum `0x0c4209...155ea6`; arbitrum `0xbe24a0...b0c88c`; avalanche `0x686984...cb7e4a`; avalanche `0xb895fa...246107`; linea `0x1506b5...e7f0b1`; linea `0x65df60...f8c2d6`; linea `0xa5fc92...69d6c2` | ⚠️ Unaudited |
| DODOZoo | unknown | polygon | 7 deployments: ethereum `0x3a9724...b49950`; ethereum `0xe1b5d7...57b0ba`; optimism `0xc48936...53eece`; bsc `0xca4594...b42828`; polygon [`0x357c5e...119d11`](./contracts/polygon-137/0x357c5e9cfa8b834edcef7c7aabd8f9db09119d11/); arbitrum `0xbcc340...883b1f`; avalanche `0x8ab2d3...bb6391` | ⚠️ Unaudited |
| DODOZooEventTrigger | unknown | ethereum | [`0xbd3379...364d25`](./contracts/ethereum-1/0xbd337924f000dceb119153d4d3b1744b22364d25/) | ⚠️ Unaudited |
| DPP | unknown | avalanche | 5 deployments: ethereum `0xb76de2...76314c`; bsc `0x853512...f1325d`; polygon `0x80930c...8a821b`; arbitrum `0xff8389...b893c0`; avalanche [`0x77106d...d2d748`](./contracts/avalanche-43114/0x77106d0f8c5b8adf95a7feaae5bea130b1d2d748/) | ⚠️ Unaudited |
| DPPAdmin | unknown | arbitrum | 7 deployments: ethereum `0x551536...cf93fe`; ethereum `0x729f7f...df021c`; bsc `0x44d5df...6de34e`; bsc `0x989dca...ce1b0c`; polygon `0xb5dc5e...47d537`; arbitrum [`0x1dc8d1...f9c993`](./contracts/arbitrum-42161/0x1dc8d1f1600b7c1d39e6b60fbc7b021bc4f9c993/); avalanche `0x67e5a4...75f9bb` | ⚠️ Unaudited |
| DPPAdvancedAdmin | unknown | polygon | 17 deployments: optimism `0xe5306c...4b4c29`; bsc `0x2ae3df...afed36`; bsc `0x4796db...10dd5f`; bsc `0x68b3ad...5ad28d`; bsc `0x69856d...efaf4b`; bsc `0xbb23ff...964aa5`; bsc `0xcdfd45...3a2380`; bsc `0xff133a...a8ae6a`; polygon [`0x26d898...9e91b8`](./contracts/polygon-137/0x26d898a37782b04d6c460e11aeecd8f3d99e91b8/); polygon `0x3ca785...f10876`; polygon `0xadd262...15ce41`; polygon `0xcd7364...5a4092`; polygon `0xfa6ae0...66544d`; manta `0xcd536b...de2e48`; mantle `0xcb3dc9...06495e`; base `0x6a9de0...183b3e`; linea `0x297da0...d81005` | ⚠️ Unaudited |
| DPPFactory | registry | optimism | 22 deployments: ethereum `0x5336ed...6a2fbe`; ethereum `0x6b4fa0...d3e5ef`; ethereum `0xb5dc5e...47d537`; optimism [`0x147dfc...8028f7`](./contracts/optimism-10/0x147dfcb00aa0075a00ee6fdfcfc718b1b18028f7/); optimism `0xb4a1e4...796ffb`; optimism `0xdb9c53...2f30a8`; bsc `0x7737fd...aebd3c`; bsc `0x9b64c8...1e2a09`; bsc `0xafe0a7...609eef`; bsc `0xd9cac3...51daae`; polygon `0x95e887...4b25a8`; polygon `0xd24153...fb7a51`; polygon `0xe55154...0389a1`; manta `0xa71415...35bf0a`; mantle `0x46af6b...f6cd5c`; base `0xc0f955...c360f7`; arbitrum `0xa6cf3d...fde63d`; arbitrum `0xddb13e...0394a9`; avalanche `0xb7865a...62655a`; linea `0x97bbf5...416a83`; scroll `0x31ac05...19ce3a`; aurora `0x406722...420855` | ⚠️ Unaudited |
| DPPOracle | operational_periphery | bsc | 4 deployments: bsc [`0x03e794...35b1a0`](./contracts/bsc-56/0x03e794b315f01744cbfa995fbdc9e871e835b1a0/); bsc `0x3024a8...c2d633`; base `0x117203...51de9f`; base `0xce6704...30535e` | ⚠️ Unaudited |
| DPPOracleAdmin | operational_periphery | base | 3 deployments: bsc `0xe9743c...2bc59c`; base [`0x70e977...e60353`](./contracts/base-8453/0x70e977fe6c552627ef16add2c2d92b701ce60353/); base `0xf64d63...375c14` | ⚠️ Unaudited |
| DropsFeeModel | unknown | bsc | [`0x6de96b...c0c67d`](./contracts/bsc-56/0x6de96b1a41ff2e8264925b4c5c0564c46dc0c67d/) | ⚠️ Unaudited |
| DSP | unknown | mantle | 14 deployments: ethereum `0x8735aa...93e036`; ethereum `0x8b09db...e6ef3e`; ethereum `0xfa6ae0...66544d`; optimism `0x2fc7be...d34005`; optimism `0xd300e7...60c5b3`; bsc `0x392b2a...c1cab6`; bsc `0xe3c91f...e9066e`; polygon `0xbe9a66...f33b40`; manta `0x6a9de0...183b3e`; mantle [`0x04f7ba...dc89ea`](./contracts/mantle-5000/0x04f7bae2a4c05cd567f762e33450debcebdc89ea/); base `0xe7979e...3e33a2`; arbitrum `0xd0751f...80c874`; avalanche `0xa952f8...b21edb`; linea `0x200d86...a5eb80` | ⚠️ Unaudited |
| DSPFactory | registry | bsc | 17 deployments: ethereum `0x6fddb7...8577a4`; optimism `0x1f8385...e6d711`; bsc [`0x0fb981...ede767`](./contracts/bsc-56/0x0fb9815938ad069bf90e14fe6c596c514bede767/); bsc `0xbb245f...b81378`; polygon `0x43c49f...ac1e87`; polygon `0x44d5df...6de34e`; polygon `0xa35686...231fdc`; manta `0x29c771...875de1`; mantle `0x7db214...bd2b93`; base `0x200d86...a5eb80`; base `0xa71415...35bf0a`; arbitrum `0xc8fe24...fd5a53`; avalanche `0x2b0d94...76d2fe`; linea `0x2933c0...9debee`; linea `0xa71415...35bf0a`; scroll `0x7e9c46...4a62e6`; aurora `0xbe9a66...f33b40` | ⚠️ Unaudited |
| DVM | unknown | ethereum | 19 deployments: ethereum [`0x01feea...ef80d7`](./contracts/ethereum-1/0x01feea29da5ae41b0b5f6b10b93ee34752ef80d7/); ethereum `0x2bbd66...f71445`; ethereum `0x3a64ec...fb496d`; ethereum `0x7ca7b5...5c90e7`; ethereum `0x8a5387...ab1ad0`; optimism `0x5fa976...330512`; optimism `0xa23476...f36cf5`; bsc `0x026076...33d901`; bsc `0x409e37...5d1dd9`; bsc `0xc3bed5...2496b9`; bsc `0xe44f14...1753c9`; polygon `0x041aba...cc57be`; manta `0x1fc8ec...4bd4cc`; mantle `0x841456...3cbe81`; base `0x5fe43c...aaaa65`; arbitrum `0x790b4a...1733fb`; avalanche `0x70efb3...afa72c`; linea `0x0fcb52...f851fc`; aurora `0x043957...c1089d` | ⚠️ Unaudited |
| DVMFactory | registry | base | 18 deployments: ethereum `0x72d220...598f6c`; ethereum `0xc9ed9b...64dea4`; optimism `0x2b800d...fe0b40`; bsc `0x790b4a...1733fb`; bsc `0xa1254e...96b6d4`; bsc `0xf50bdc...c4cb8e`; polygon `0x327344...200dd7`; polygon `0x79887f...b8fe13`; polygon `0xbab9f4...ffac6e`; manta `0x97bbf5...416a83`; mantle `0x29c771...875de1`; base [`0x0226fc...3e13c2`](./contracts/base-8453/0x0226fce8c969604c3a0ad19c37d1fafac73e13c2/); arbitrum `0x322b43...b0385f`; arbitrum `0xda4c44...33b72b`; avalanche `0xff133a...a8ae6a`; linea `0xc0f955...c360f7`; scroll `0x5a0c84...5006de`; aurora `0x551536...cf93fe` | ⚠️ Unaudited |
| EMAPriceOracle | operational_periphery | ethereum | [`0xf532fd...c4bf02`](./contracts/ethereum-1/0xf532fd8a0c064bbd519cd528e745285c5bc4bf02/) | ⚠️ Unaudited |
| ERC20Factory | registry | ethereum | 3 deployments: ethereum [`0x44d5df...6de34e`](./contracts/ethereum-1/0x44d5df24d5ef52a791d6436fa45a8d426f6de34e/); bsc `0x5e8419...81bb01`; polygon `0xaeb5cf...ffb177` | ⚠️ Unaudited |
| ERC20Mine | token | linea | 29 deployments: ethereum `0x19309b...271e16`; ethereum `0x2ff2ce...5447e4`; ethereum `0x366255...3d9d21`; ethereum `0x44024b...3b4151`; ethereum `0x53ee28...f52da0`; ethereum `0x840135...d33210`; ethereum `0xa6d368...912331`; ethereum `0xed5329...c6a0af`; optimism `0x056927...ee468a`; bsc `0x132231...b6a630`; bsc `0x2b40bc...f42999`; bsc `0x2c29cb...aa4c47`; bsc `0x322b43...b0385f`; bsc `0x38e02c...8fd145`; bsc `0x3b6067...9f9237`; bsc `0x7b6bbc...a0f695`; bsc `0x9a74b1...9ef45e`; bsc `0xc1ba6b...d4f032`; bsc `0xf6585f...db608f`; bsc `0xf7ac92...9f8e18`; polygon `0x2f17dc...cd46fa`; manta `0x898726...db7e3b`; mantle `0x97bbf5...416a83`; base `0xeac4bf...adc596`; arbitrum `0x1ee7ae...23db62`; arbitrum `0xe91067...f98b5c`; avalanche `0x0fba7f...24c38d`; linea [`0x04f7ba...dc89ea`](./contracts/linea-59144/0x04f7bae2a4c05cd567f762e33450debcebdc89ea/); aurora `0xaeb5cf...ffb177` | ⚠️ Unaudited |
| ERC20V2Factory | registry | avalanche | 7 deployments: ethereum `0xaa810c...1ada73`; bsc `0x652c09...a19a4d`; polygon `0x8e2f66...f96a90`; arbitrum `0x750b15...f10d1c`; avalanche [`0x141b44...dbe07a`](./contracts/avalanche-43114/0x141b4497a298340e8b451ac4eee947b00adbe07a/); avalanche `0x9b6c32...741813`; aurora `0xdfaf95...897c5a` | ⚠️ Unaudited |
| ERC20V3Factory | registry | avalanche | 11 deployments: ethereum `0x7466c6...5a7e16`; optimism `0x5a274f...0e0acc`; bsc `0x5ed22a...e7dc92`; polygon `0x5258db...b8be91`; manta `0xc0f955...c360f7`; mantle `0xfd2b79...500df1`; base `0xcb3dc9...06495e`; arbitrum `0x5ca5e0...45fdbc`; avalanche [`0x00971e...96ee42`](./contracts/avalanche-43114/0x00971e21955f1bb8021a5ef2546bec2ff896ee42/); linea `0x0226fc...3e13c2`; aurora `0xd6bd9f...55d868` | ⚠️ Unaudited |
| Eth2daiDirect | unknown | ethereum | 4 deployments: ethereum [`0x0f834c...db587e`](./contracts/ethereum-1/0x0f834cbb9c7f8e1ddb6c415e00f91a991adb587e/); ethereum `0x6148d3...673f2d`; ethereum `0x693a8e...949ffc`; ethereum `0xd9f6dc...52baee` | ⚠️ Unaudited |
| FairFunding | unknown | bsc | 4 deployments: bsc [`0x18b60f...d6bc31`](./contracts/bsc-56/0x18b60f1d852636b8ed24da2b682c0bc60dd6bc31/); bsc `0xa0744f...f68502`; polygon `0xaef8f0...178364`; arbitrum `0xcb3a2b...24bf7b` | ⚠️ Unaudited |
| Fear | unknown | bsc | [`0x3e6293...48b5e1`](./contracts/bsc-56/0x3e629332c51046a17ec236553cb931cf0548b5e1/) | ⚠️ Unaudited |
| FeedPriceOracle | operational_periphery | ethereum | [`0x5b676f...656677`](./contracts/ethereum-1/0x5b676fd01577c2b1ac68b9a764d7599dbc656677/) | ⚠️ Unaudited |
| FeeRateModel | operational_periphery | mantle | 12 deployments: ethereum `0x5e8419...81bb01`; optimism `0xc005e0...383fbb`; bsc `0x18dfde...fcb9d2`; polygon `0x18b0bd...cb403b`; manta `0x7b0716...c75aa0`; mantle [`0x0fcb52...f851fc`](./contracts/mantle-5000/0x0fcb5237a1997c4700ffa2bb4522ea38d4f851fc/); base `0x7b0716...c75aa0`; arbitrum `0x668e7f...c94873`; arbitrum `0xd56281...043127`; avalanche `0x156566...e6f4c0`; linea `0x628e50...e58852`; aurora `0xb57dd5...e22e65` | ⚠️ Unaudited |
| FilterAdmin | unknown | polygon | 3 deployments: ethereum `0xd4f773...6aa49e`; bsc `0xde8a38...0f9d41`; polygon [`0x50d148...75eeb2`](./contracts/polygon-137/0x50d148d0908c602a56884b8628a36470a875eeb2/) | ⚠️ Unaudited |
| FilterERC1155V1 | token | polygon | 3 deployments: ethereum `0x5258db...b8be91`; bsc `0x763569...3caee1`; polygon [`0x072ff3...a99d7a`](./contracts/polygon-137/0x072ff3ed5f723fb4e9a83a76755ed5222ea99d7a/) | ⚠️ Unaudited |
| FilterERC721V1 | token | bsc | 3 deployments: ethereum `0x5f3178...122d79`; bsc [`0x333641...1c301f`](./contracts/bsc-56/0x33364198d93648d3e976aa8625097567791c301f/); polygon `0x697f28...a1d61b` | ⚠️ Unaudited |
| Fragment | unknown | arbitrum | 5 deployments: ethereum `0xb14da6...6fc3ad`; bsc `0x9542f4...43b419`; bsc `0xa8f057...839b14`; polygon `0xded89e...d3d81c`; arbitrum [`0x0bdc00...941b06`](./contracts/arbitrum-42161/0x0bdc004b3ec9b746ff3fc34e7f74240a8a941b06/) | ⚠️ Unaudited |
| GambitAdapter | adapter | arbitrum | [`0x7da3e5...77a971`](./contracts/arbitrum-42161/0x7da3e5a759b35af295afed708864d8899677a971/) | ⚠️ Unaudited |
| GatewaySend | unknown | ethereum | 22 deployments: ethereum [`0x03f876...eaeef6`](./contracts/ethereum-1/0x03f876327f4dd491ca6bd9c4e33d60ca41eaeef6/); ethereum `0x070615...c7e433`; ethereum `0x470525...31d3ff`; ethereum `0x56d74f...46b4e9`; ethereum `0x873a82...b57e23`; ethereum `0xbab0f4...439962`; ethereum `0xf3234a...5a0a6b`; ethereum `0xf8221d...5225d7`; bsc `0x08f9f0...9f79f0`; bsc `0x3f1ed2...2d0a4d`; bsc `0x8683c9...b7e029`; bsc `0x8825a8...7bb032`; bsc `0xaf2403...4b8471`; bsc `0xbe3499...85b5ef`; bsc `0xc39f8c...8d073d`; bsc `0xcd636c...b75e96`; bsc `0xe02e1b...d42ea0`; bsc `0xf7f3e2...9b4ef1`; arbitrum `0x5c8898...1fd130`; arbitrum `0x873a82...b57e23`; arbitrum `0x9b1f69...8a9c83`; arbitrum `0xf8221d...5225d7` | ⚠️ Unaudited |
| GovernorAlpha | governance | bsc | 2 deployments: bsc [`0x0ed46f...771e11`](./contracts/bsc-56/0x0ed46f84ebf8af56eb29644f6a49d184ad771e11/); bsc `0x5a31d6...1074ff` | ⚠️ Unaudited |
| GovernorBravoDelegate | governance | bsc | 2 deployments: bsc [`0x17a169...edbf28`](./contracts/bsc-56/0x17a1693a62695610993ee389caa6473749edbf28/); bsc `0xf28615...c87993` | ⚠️ Unaudited |
| GSPFactory | registry | arbitrum | 3 deployments: ethereum `0x710409...df6473`; bsc `0x78d43a...178d55`; arbitrum [`0x46e55a...6f0c29`](./contracts/arbitrum-42161/0x46e55a974c5995675b025f7f607c3278b36f0c29/) | ⚠️ Unaudited |
| InitializableERC1155 | token | bsc | [`0x3c5509...c830a5`](./contracts/bsc-56/0x3c5509cc5212c62f77e36126efec7adb75c830a5/) | ⚠️ Unaudited |
| InitializableERC721 | token | bsc | [`0xbd0ed3...1ea188`](./contracts/bsc-56/0xbd0ed394042ae14a1d6b7478386cdffd9d1ea188/) | ⚠️ Unaudited |
| InstantFunding | unknown | polygon | 3 deployments: bsc `0xfcc60a...8dced8`; polygon [`0x2c32df...dca61a`](./contracts/polygon-137/0x2c32dfc4df92df02ae9d9ad0750a3f209ddca61a/); arbitrum `0x600174...56d1be` | ⚠️ Unaudited |
| JumpRateModelV2 | operational_periphery | bsc | 22 deployments: bsc [`0x04eafa...e4bb5e`](./contracts/bsc-56/0x04eafa65a44229f356c79dde2f57309a07e4bb5e/); bsc `0x0b6878...7e2454`; bsc `0x1594e6...b207c2`; bsc `0x28fc7c...79619a`; bsc `0x43d4d5...8d0539`; bsc `0x4eb56e...97844d`; bsc `0x617a45...5b46c1`; bsc `0x79ca66...c90f9e`; bsc `0x90a10d...b4c6e4`; bsc `0x9b3bb7...2d904a`; bsc `0x9c2a3b...507606`; bsc `0xa0d860...6b6c2b`; bsc `0xa99f79...95079e`; bsc `0xb6be20...0bac14`; bsc `0xc2f02c...235fbf`; bsc `0xc303d3...99245f`; bsc `0xc8cf4a...d4f7de`; bsc `0xd41387...ded40a`; bsc `0xdda605...7ea9d3`; bsc `0xe8b721...f476ac`; bsc `0xf12402...44ede5`; bsc `0xface79...fe59b7` | ⚠️ Unaudited |
| KashiPair | unknown | bsc | 4 deployments: bsc [`0x2ff807...80501c`](./contracts/bsc-56/0x2ff807371c9be6ce9659562323c5a9923a80501c/); bsc `0x49cb52...0e5d81`; bsc `0x4e83ad...d5c4c7`; bsc `0x9e7f77...442327` | ⚠️ Unaudited |
| LockedTokenVault | core_logic | ethereum | 25 deployments: ethereum [`0x050d08...177e9d`](./contracts/ethereum-1/0x050d08e8149f305dff7a9936f3908a1823177e9d/); ethereum `0x0e504d...673be4`; ethereum `0x1e02fe...483dd3`; ethereum `0x29c960...6a17a8`; ethereum `0x2e03f0...ddd5d8`; ethereum `0x300ad0...98233f`; ethereum `0x3fefa4...8c4909`; ethereum `0x46d8d8...8d98bb`; ethereum `0x5c37d4...6cf4ab`; ethereum `0x6cedea...6d0ab3`; ethereum `0x9224fc...fb9802`; ethereum `0xb28ecb...28e730`; ethereum `0xbc1d41...ce7db6`; ethereum `0xbd07db...b8a167`; ethereum `0xdb9119...cfff5f`; ethereum `0xde25ce...b769b4`; ethereum `0xf5a4d6...11519f`; bsc `0x36b673...6110df`; bsc `0xc6894b...7d834c`; bsc `0xe077ce...f4df9d`; arbitrum `0x480a51...deeba5`; arbitrum `0xb517a3...3568dc`; arbitrum `0xfc46f5...def1ce`; aurora `0x806c3c...454db0`; aurora `0x844d81...9ada49` | ⚠️ Unaudited |
| LPVault | core_logic | bsc | 2 deployments: bsc [`0x5f79e2...384050`](./contracts/bsc-56/0x5f79e25dbf729c0758de96dedf30ce6257384050/); bsc `0xad0246...1b2b64` | ⚠️ Unaudited |
| MasterChef | unknown | ethereum | [`0xc2edad...a888cd`](./contracts/ethereum-1/0xc2edad668740f1aa35e4d8f227fb8e17dca888cd/) | ⚠️ Unaudited |
| Maximillion | unknown | bsc | 3 deployments: bsc [`0x3533f2...4c7931`](./contracts/bsc-56/0x3533f2514bbb4b3345714a7adb80d7143c4c7931/); bsc `0xbb045e...52c640`; bsc `0xe9690d...b2d0eb` | ⚠️ Unaudited |
| Migrations | operational_periphery | aurora | [`0x18dfde...fcb9d2`](./contracts/aurora-1313161554/0x18dfde99f578a0735410797e949e8d3e2afcb9d2/) | ⚠️ Unaudited |
| MinimumOracle | operational_periphery | bsc | [`0x03d489...a208a2`](./contracts/bsc-56/0x03d489a5f65d4fd2db0b077570c7f707eca208a2/) | ⚠️ Unaudited |
| Multicall | periphery | avalanche | 7 deployments: optimism `0xb98ac2...fca9df`; polygon `0xc9ed9b...64dea4`; manta `0xf5ec1a...7270b1`; mantle `0xf5ec1a...7270b1`; base `0xf5ec1a...7270b1`; avalanche [`0x97f015...6fe53b`](./contracts/avalanche-43114/0x97f0153e7f5749640adf3ff9cfc518b79d6fe53b/); linea `0xa7b9c3...f0bd97` | ⚠️ Unaudited |
| MulticallWithValid | periphery | linea | 5 deployments: optimism `0x9b5f20...f33841`; manta `0x6d3bd0...650e03`; mantle `0x65934e...e38545`; base `0xee7210...0fedad`; linea [`0x117203...51de9f`](./contracts/linea-59144/0x1172035a744ea18161497e94f0bbce244d51de9f/) | ⚠️ Unaudited |
| MultiSwapper | adapter | bsc | [`0x9bcc33...847197`](./contracts/bsc-56/0x9bcc337fe99a7908133672ed00c516d5c3847197/) | ⚠️ Unaudited |
| MysteryBoxKAKA | unknown | bsc | [`0xdf7e00...20c8d4`](./contracts/bsc-56/0xdf7e00cd0bb91d1502a1a14575e58b5d8f20c8d4/) | ⚠️ Unaudited |
| MysteryBoxV1 | unknown | bsc | [`0xc25286...af97b8`](./contracts/bsc-56/0xc25286ef3bae3f6fe2d6d0a6e2acad0301af97b8/) | ⚠️ Unaudited |
| NativeAdapter | adapter | arbitrum | 5 deployments: ethereum `0x391f8d...bf48d4`; ethereum `0x886f67...58b460`; ethereum `0xb4f2e7...1e7a63`; bsc `0xf7d1da...5ebe1a`; arbitrum [`0x070615...c7e433`](./contracts/arbitrum-42161/0x07061554978b6b6645cf074e9d85df409cc7e433/) | ⚠️ Unaudited |
| NativeV3Adapter | adapter | ethereum | 2 deployments: ethereum [`0x63eec8...5cf7d1`](./contracts/ethereum-1/0x63eec8527884582358ce6e93d530df725d5cf7d1/); ethereum `0xdbaf29...75074a` | ⚠️ Unaudited |
| NFTCollateralVault | core_logic | bsc | 8 deployments: ethereum `0xa5d3bd...af5d6a`; ethereum `0xf019b3...e132da`; bsc [`0x0dd95c...3a1deb`](./contracts/bsc-56/0x0dd95ce685b8b101c52b43b203c351cf2d3a1deb/); bsc `0xd66b8b...1e3629`; polygon `0x1071a6...63ca2b`; polygon `0xa254c1...bf3238`; arbitrum `0x50da4c...69a96d`; arbitrum `0xedd626...df9882` | ⚠️ Unaudited |
| NFTTokenFactory | registry | bsc | [`0x6e08ea...16b8fa`](./contracts/bsc-56/0x6e08eaafea48c147e8d092a7979d7b266f16b8fa/) | ⚠️ Unaudited |
| OffsetOracle | operational_periphery | ethereum | [`0x066d47...8a7485`](./contracts/ethereum-1/0x066d47d010fe82384f75d504bc2685c7a58a7485/) | ⚠️ Unaudited |
| PermissionManager | governance | polygon | 12 deployments: ethereum `0x6b208e...c46cf2`; optimism `0x9b5f86...249ed0`; bsc `0x729f7f...df021c`; polygon [`0x550b2e...ce289b`](./contracts/polygon-137/0x550b2e7bd9605b8dcdd20d01ba73f1feb6ce289b/); manta `0x5fe43c...aaaa65`; mantle `0xcd536b...de2e48`; base `0xa1609a...1b8c10`; arbitrum `0x61b216...1d0f6a`; arbitrum `0xb8132c...a84773`; avalanche `0x8f8dd7...d58486`; linea `0xa1609a...1b8c10`; aurora `0xe55154...0389a1` | ⚠️ Unaudited |
| PoolHeartBeat | core_logic | polygon | 2 deployments: bsc `0xb5cbfa...ed46e5`; polygon [`0xb3a104...38f969`](./contracts/polygon-137/0xb3a104a96db375b2c726041c3e954d127538f969/) | ⚠️ Unaudited |
| RandomGenerator | unknown | bsc | 2 deployments: bsc [`0x7c062b...c5fe72`](./contracts/bsc-56/0x7c062b9c584fa6ec2504270790d38240a2c5fe72/); bsc `0xefda12...efc758` | ⚠️ Unaudited |
| RingAdapter | adapter | ethereum | 3 deployments: ethereum [`0x1d2bc7...14433b`](./contracts/ethereum-1/0x1d2bc7963fe592f08155fcaa6158186eb414433b/); bsc `0xcdd753...6bfedf`; arbitrum `0x895df3...0d7193` | ⚠️ Unaudited |
| SaveContract | unknown | ethereum | 2 deployments: ethereum [`0x161af9...5d0f90`](./contracts/ethereum-1/0x161af953c652ae3807f0b0428b63727f1d5d0f90/); ethereum `0x6b3518...de2570` | ⚠️ Unaudited |
| SolvOracleAdapter | operational_periphery | ethereum | 3 deployments: ethereum [`0x2da085...fe47fa`](./contracts/ethereum-1/0x2da0855f04919d402af88d0d04abb38177fe47fa/); bsc `0xd0cf7d...04a364`; arbitrum `0x577389...afa387` | ⚠️ Unaudited |
| StakedBPT | token | ethereum | [`0x46c509...7b1ee2`](./contracts/ethereum-1/0x46c5098f73fa656e82d7e9afbf3c00b32b7b1ee2/) | ⚠️ Unaudited |
| Timelock | governance | bsc | 3 deployments: bsc [`0x3e2a6f...640909`](./contracts/bsc-56/0x3e2a6f7818a0de1549f286f49826d5963a640909/); bsc `0x42a556...3203ac`; bsc `0xd72bae...20b03d` | ⚠️ Unaudited |
| TimeLockContract | governance | arbitrum | [`0xb95ed7...b10ab9`](./contracts/arbitrum-42161/0xb95ed7e958e196688984951f41ac2888f4b10ab9/) | ⚠️ Unaudited |
| TokenPool | core_logic | ethereum | [`0xc93528...793d84`](./contracts/ethereum-1/0xc935285b0d88069305431dace0c3c01d7e793d84/) | ⚠️ Unaudited |
| UniAdapter | adapter | arbitrum | 6 deployments: optimism `0x59bef1...228fad`; optimism `0xcd70bf...06ccaf`; base `0xe2004e...cc7b99`; arbitrum [`0x17ebc3...bd3aa7`](./contracts/arbitrum-42161/0x17ebc315760bb47384224a5f3bf829222fbd3aa7/); avalanche `0x3a343f...054965`; linea `0xe2004e...cc7b99` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | 2 deployments: ethereum [`0x570242...6507e5`](./contracts/ethereum-1/0x57024267e8272618f9c5037d373043a8646507e5/); ethereum `0x9f624b...980808` | ⚠️ Unaudited |
| UniV4Adapter | adapter | ethereum | 3 deployments: ethereum [`0x1e8df8...1971eb`](./contracts/ethereum-1/0x1e8df8bf06fe3dac7396b0cb4e5d4f71aa1971eb/); ethereum `0x3e83b9...47e783`; ethereum `0x650527...c5fdc0` | ⚠️ Unaudited |
| UpCrowdPoolingFactory | registry | ethereum | 11 deployments: ethereum [`0x0c4b4f...922281`](./contracts/ethereum-1/0x0c4b4f1d5f5c989457cdd6f5102308b33c922281/); ethereum `0x78d338...87ee52`; ethereum `0xd734a0...a7a363`; bsc `0x3e64f1...66ba9e`; bsc `0x4f57f6...b0f270`; bsc `0x69f52a...56f0a0`; bsc `0xeceade...95dc32`; polygon `0x326c78...1be4fc`; polygon `0x335ac9...5cc619`; arbitrum `0xe92787...ba3c25`; avalanche `0x55793c...9bf285` | ⚠️ Unaudited |
| UserQuota | unknown | arbitrum | 5 deployments: bsc `0x695d7b...3887d7`; bsc `0xae7186...6f0e12`; polygon `0x9f599e...f12300`; arbitrum [`0x622610...820bec`](./contracts/arbitrum-42161/0x622610747f7efca73e896d447772008ff4820bec/); arbitrum `0xb605b3...a9bc0b` | ⚠️ Unaudited |
| UserQuotaFactory | registry | polygon | 3 deployments: bsc `0x2e467a...80cbdd`; polygon [`0x0b5356...2feba2`](./contracts/polygon-137/0x0b53566055e4582b20c34150b844ea7efa2feba2/); arbitrum `0x80c432...9d7641` | ⚠️ Unaudited |
| Vault | core_logic | arbitrum | 15 deployments: ethereum `0x5f8f27...b31ff2`; ethereum `0xfd6ffe...530faf`; bsc `0x3150f5...80b624`; bsc `0x6589ca...501344`; bsc `0x6eceb1...a10042`; bsc `0x72a2c7...831b3a`; bsc `0x9afc98...be03de`; bsc `0xa2ae06...28c8b8`; bsc `0xc7a5bb...d45b58`; bsc `0xccf570...74b5bb`; bsc `0xf1b52e...7bdfe7`; arbitrum [`0x08c971...fc772b`](./contracts/arbitrum-42161/0x08c971aa807c21cfa354c3001683a9f4dbfc772b/); arbitrum `0x0c5669...c82e2a`; arbitrum `0x1d2bc7...14433b`; arbitrum `0x257f07...4a46ac` | ⚠️ Unaudited |
| VaultProxy | core_logic | bsc | 3 deployments: bsc [`0x69a169...925f43`](./contracts/bsc-56/0x69a1692fbb645bda8137e59da7f2d6104d925f43/); bsc `0xadf4c5...0a566a`; bsc `0xd7862a...03ff59` | ⚠️ Unaudited |
| vDODOMine | unknown | bsc | 2 deployments: ethereum `0xd84c90...f899cb`; bsc [`0x505a0f...ae945f`](./contracts/bsc-56/0x505a0f0f4956f7ca5839c5efd8ebdaf3d3ae945f/) | ⚠️ Unaudited |
| vDODOToken | token | ethereum | [`0xc4436f...bd402a`](./contracts/ethereum-1/0xc4436fbae6eba5d95bf7d53ae515f8a707bd402a/) | ⚠️ Unaudited |
| VenusStrategy | core_logic | bsc | 15 deployments: bsc [`0x0879db...d31941`](./contracts/bsc-56/0x0879db3a4c289b7e3dfbdbb8eb9494b2fdd31941/); bsc `0x0c53dd...6bf321`; bsc `0x0c5513...883d09`; bsc `0x24f953...34f990`; bsc `0x2c7c4b...46573a`; bsc `0x4a60ad...52fc59`; bsc `0x4ff237...5a9088`; bsc `0x6c409d...999fda`; bsc `0x82c6f1...220ce8`; bsc `0x8a9a9c...206164`; bsc `0xd2af5d...90277c`; bsc `0xf0322c...e96d54`; bsc `0xf2e6ab...b79421`; bsc `0xf77208...917269`; bsc `0xf92b79...130750` | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | [`0xdf5e0e...d806a8`](./contracts/ethereum-1/0xdf5e0e81dff6faf3a7e52ba697820c5e32d806a8/) | ⚠️ Unaudited |
| XVSVaultStrategy | core_logic | bsc | 3 deployments: bsc [`0x5d9fcf...f93038`](./contracts/bsc-56/0x5d9fcf09224b9e60d3f5e7b0a1a843386df93038/); bsc `0xcb41d1...dbe10d`; bsc `0xebb209...9a07aa` | ⚠️ Unaudited |
| XVSVaultStrategyProxy | core_logic | bsc | [`0xf2a47e...9fac4a`](./contracts/bsc-56/0xf2a47e9a2c7881afe4b6927ef9181725db9fac4a/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (16)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| BatchTransferERC20 | token | arbitrum | 2 deployments: polygon `0xaa5032...aa4866`; arbitrum [`0x094ace...2f103e`](./contracts/arbitrum-42161/0x094acea92557be7ef44562153bc9854f692f103e/) | ⚠️ Unaudited (bytecode match) |
| CloneFactory | registry | linea | 15 deployments: ethereum `0x5e5a7b...a80b88`; optimism `0xb073f9...e926dd`; bsc `0x8324a6...1ce380`; bsc `0xb7865a...62655a`; polygon `0x729f7f...df021c`; manta `0x628e50...e58852`; mantle `0x5fe43c...aaaa65`; base `0x628e50...e58852`; arbitrum `0x1ddd02...2884e7`; avalanche `0x1e0d40...b5e30d`; avalanche `0x4ee639...9cd352`; avalanche `0x778df5...e185dc`; linea [`0x17644d...2946a7`](./contracts/linea-59144/0x17644d3b366273fac75a07996e2f90a99a2946a7/); aurora `0x6b208e...c46cf2`; aurora `0xef49a6...7689d3` | ⚠️ Unaudited (bytecode match) |
| CP | unknown | avalanche | 30 deployments: ethereum `0x18b0bd...cb403b`; ethereum `0x327344...200dd7`; ethereum `0x34b9dc...3d28e3`; ethereum `0x9220cf...b50474`; ethereum `0xa5543c...801985`; optimism `0x03d09b...0f7e95`; optimism `0x1361f7...280dbd`; optimism `0x162252...d392bb`; bsc `0x041aba...cc57be`; bsc `0x5d6e6a...16b245`; bsc `0x6a3c8b...0f12e5`; bsc `0xd1aacd...0a53bf`; polygon `0x17c373...16bc03`; polygon `0x4bfa49...880155`; polygon `0xf50bdc...c4cb8e`; manta `0x3dd629...073f11`; mantle `0x0226fc...3e13c2`; base `0x297da0...d81005`; base `0x7deda1...1bdb9d`; arbitrum `0x15de9b...f63989`; arbitrum `0x7e116b...ca8e84`; arbitrum `0x8f8dd7...d58486`; arbitrum `0xa6e6d3...905e80`; arbitrum `0xc39ee4...71aa3a`; avalanche [`0x01f9bf...0cc750`](./contracts/avalanche-43114/0x01f9bfac04e6184e90bd7eafd51999ce430cc750/); avalanche `0x33eaae...460ce3`; avalanche `0xf0a1b9...e52f05`; linea `0xcd536b...de2e48`; linea `0xf3e3c6...a249bb`; aurora `0xaf49db...d25eff` | ⚠️ Unaudited (bytecode match) |
| DODOApprove | unknown | arbitrum | 17 deployments: ethereum `0xc3bed5...2496b9`; optimism `0xa492d6...080364`; optimism `0xb27fa3...3e7afe`; optimism `0xe305a3...35b9f1`; bsc `0x72d220...598f6c`; polygon `0x6d3103...8cb4f4`; polygon `0x9ae501...11bcb5`; manta `0x0226fc...3e13c2`; mantle `0xa71415...35bf0a`; base `0x898726...db7e3b`; arbitrum [`0x00971e...96ee42`](./contracts/arbitrum-42161/0x00971e21955f1bb8021a5ef2546bec2ff896ee42/); arbitrum `0xa86724...5474d8`; arbitrum `0xa952f8...b21edb`; arbitrum `0xcdfd45...3a2380`; avalanche `0xcfea63...39e470`; linea `0x6de4d8...babeb1`; aurora `0x335ac9...5cc619` | ⚠️ Unaudited (bytecode match) |
| DODOMineV3Registry | registry | mantle | 14 deployments: ethereum `0xf8ab09...852195`; optimism `0x150f73...3ca183`; optimism `0x9ed110...2d2a7f`; bsc `0x2a5aa9...0dabd8`; bsc `0xf1ed17...0c6d6a`; polygon `0x27566b...f4d25e`; manta `0x66c45f...3a3fec`; mantle [`0x0b1467...93cf36`](./contracts/mantle-5000/0x0b1467f71c082d8d410af4376c685d9a6893cf36/); base `0x8dd0fe...b151ba`; arbitrum `0x2b40bc...f42999`; arbitrum `0xf6585f...db608f`; avalanche `0x0fe261...9065f4`; linea `0x8dd0fe...b151ba`; aurora `0xfddca6...178048` | ⚠️ Unaudited (bytecode match) |
| DODOV1PmmHelper | periphery | manta | 11 deployments: ethereum `0x6373ce...064ac4`; optimism `0x6281e0...0e0dbe`; bsc `0x2bbd66...f71445`; polygon `0x18dfde...fcb9d2`; manta [`0x17644d...2946a7`](./contracts/manta-169/0x17644d3b366273fac75a07996e2f90a99a2946a7/); mantle `0xa1609a...1b8c10`; base [`0x17644d...2946a7`](./contracts/base-8453/0x17644d3b366273fac75a07996e2f90a99a2946a7/); arbitrum `0x4ee639...9cd352`; avalanche `0x790b4a...1733fb`; linea `0x440234...01e269`; aurora `0xbab9f4...ffac6e` | ⚠️ Unaudited (bytecode match) |
| DODOV2Adapter | unknown | polygon | 11 deployments: ethereum `0xe6aafa...dab05b`; optimism `0x169ae3...0e8a6b`; optimism `0x998a70...1b9a29`; bsc `0x165ba8...02c820`; polygon [`0x02fcb2...d32bc7`](./contracts/polygon-137/0x02fcb21dc1cf221939c1d4277fb54016b5d32bc7/); manta `0x7db214...bd2b93`; mantle `0xa6d006...dd9719`; base `0x66c45f...3a3fec`; arbitrum `0x8ab2d3...bb6391`; avalanche `0xd72b35...a42707`; linea `0x66c45f...3a3fec` | ⚠️ Unaudited (bytecode match) |
| DPPAdvanced | unknown | bsc | 22 deployments: ethereum `0xd0cf7d...04a364`; optimism `0x5f7944...98e7c6`; optimism `0x8ce14b...641c54`; bsc [`0x0fe261...9065f4`](./contracts/bsc-56/0x0fe261aee0d1c4dfddee4102e82dd425999065f4/); bsc `0x3a60a7...abc406`; bsc `0x5a2e22...708759`; bsc `0x64b2e6...c2f1e3`; bsc `0x7f6070...67ac53`; bsc `0x88cbf4...4593e5`; bsc `0xa7e60e...0e6a3d`; bsc `0xf718dd...1ac38e`; polygon `0x10dd6d...44c5c7`; polygon `0x206a75...0dcea9`; polygon `0x5333eb...02d561`; polygon `0x533a20...a47bc6`; polygon `0x72c279...ac3632`; polygon `0xe02000...58a4b7`; manta `0xcb3dc9...06495e`; mantle `0x6de4d8...babeb1`; mantle `0x898726...db7e3b`; base `0x1fc8ec...4bd4cc`; linea `0x6a9de0...183b3e` | ⚠️ Unaudited (bytecode match) |
| ERC20Helper | token | optimism | 10 deployments: ethereum `0xd9ef2d...d149df`; optimism [`0x42e456...7bb5b2`](./contracts/optimism-10/0x42e456ea0dd7538ea103fbb1d0388d14c97bb5b2/); polygon `0xfd2431...25a9b3`; manta `0xb5c7ba...373780`; mantle `0xb5c7ba...373780`; base `0xb5c7ba...373780`; arbitrum `0x7c062b...c5fe72`; arbitrum `0xc1ba6b...d4f032`; avalanche `0xc3528d...945282`; linea `0xbcd2fd...8c62da` | ⚠️ Unaudited (bytecode match) |
| ERC20MineV3 | unknown | optimism | 20 deployments: ethereum `0x69716e...11c594`; ethereum `0x760e32...5fb1e7`; ethereum `0xd57f29...a38c5a`; optimism [`0x0123e7...5fe2ba`](./contracts/optimism-10/0x0123e774f2feed16b8bdea4c02cba0dc435fe2ba/); optimism `0x34229d...5fa596`; bsc `0x5977f1...254da8`; bsc `0xba428f...5168d8`; bsc `0xd12317...ae1e4d`; polygon `0x53a51a...661a94`; polygon `0xda5942...74fa4d`; manta `0x6de4d8...babeb1`; mantle `0x577389...afa387`; mantle `0xfafc92...e53902`; base `0x04f7ba...dc89ea`; arbitrum `0x78d43a...178d55`; arbitrum `0x973cab...c1143c`; arbitrum `0xc1cce4...53d957`; avalanche `0xf31162...82d37c`; linea `0x898726...db7e3b`; aurora `0x9b64c8...1e2a09` | ⚠️ Unaudited (bytecode match) |
| FeeRateDIP3Impl | unknown | bsc | 25 deployments: ethereum `0x2c32df...dca61a`; ethereum `0xafb0e9...033874`; ethereum `0xc8f114...90d8d2`; optimism `0x12780d...c8f8f3`; optimism `0x6a3e65...12e7d2`; bsc [`0x06c19e...76322b`](./contracts/bsc-56/0x06c19e1d97aadd6f30a8a2be4c5defa30976322b/); bsc `0x818995...b03e45`; bsc `0xafb8ec...07ecc2`; bsc `0xe5e9b0...5a4c4d`; polygon `0x16601c...1f9d9c`; polygon `0x67df06...b234d6`; polygon `0x806c3c...454db0`; polygon `0xa0127f...69830c`; polygon `0xae551c...41415a`; polygon `0xd19d61...ad54f5`; manta `0x4aae1d...caf931`; mantle `0x6a9de0...183b3e`; base `0x4aae1d...caf931`; arbitrum `0x32e117...e2ee30`; arbitrum `0x39eb55...173d03`; arbitrum `0x6c4e79...1a5e45`; arbitrum `0xc6de76...86e190`; avalanche `0x1dc8d1...f9c993`; avalanche `0xb2570f...9922aa`; linea `0x65934e...e38545` | ⚠️ Unaudited (bytecode match) |
| FeeRateImpl | unknown | bsc | 4 deployments: ethereum `0x4775b1...01dac4`; bsc [`0x2b0d94...76d2fe`](./contracts/bsc-56/0x2b0d94eb7a63b8a2909de1cb3951ecf7ae76d2fe/); polygon `0x4775b1...01dac4`; arbitrum `0x4f57f6...b0f270` | ⚠️ Unaudited (bytecode match) |
| GSP | unknown | bsc | 18 deployments: ethereum `0x3a7bc5...6d1aaa`; ethereum `0x577389...afa387`; ethereum `0x78d43a...178d55`; ethereum `0xe6cecb...85686f`; ethereum `0xf50d3a...432bfd`; bsc [`0x056fce...7bfc1a`](./contracts/bsc-56/0x056fce6b76af3050f54b71fc9b5fcb7c387bfc1a/); bsc `0xc88492...f16ba8`; bsc `0xec1ac5...e39278`; mantle `0x5ec9be...b8f38e`; mantle `0x8b09db...e6ef3e`; arbitrum `0x2e50e3...9b962e`; arbitrum `0x3a7bc5...6d1aaa`; arbitrum `0x710409...df6473`; arbitrum `0x8b09db...e6ef3e`; arbitrum `0xb63ca5...3c0241`; arbitrum `0xc88492...f16ba8`; arbitrum `0xd2b805...89ea36`; arbitrum `0xe6cecb...85686f` | ⚠️ Unaudited (bytecode match) |
| InitializableERC20 | token | avalanche | 14 deployments: ethereum `0x8443a5...c5e8cc`; ethereum `0x853512...f1325d`; optimism `0xedbd68...7ebda8`; bsc `0x99155e...f7bdf5`; bsc `0xef49a6...7689d3`; polygon `0x34b9dc...3d28e3`; polygon `0xe8c9a7...fecf25`; manta `0x841456...3cbe81`; mantle `0xa23137...49eeae`; base `0xcd536b...de2e48`; arbitrum `0xbb245f...b81378`; avalanche [`0x1ddd02...2884e7`](./contracts/avalanche-43114/0x1ddd02f6d31c1ef04cfa0a1aa811406b5b2884e7/); avalanche `0xf94435...387416`; linea `0x3dd629...073f11` | ⚠️ Unaudited (bytecode match) |
| InitializableMintableERC20 | token | ethereum | 4 deployments: ethereum [`0x059690...629038`](./contracts/ethereum-1/0x0596908263ef2724fbfbcafa1c983fcd7a629038/); bsc `0x6373ce...064ac4`; polygon `0x7737fd...aebd3c`; arbitrum `0x70efb3...afa72c` | ⚠️ Unaudited (bytecode match) |
| MultiSigWalletWithTimelock | governance | arbitrum | 15 deployments: ethereum `0x6dae6a...aa8893`; ethereum `0xef9998...909f0b`; optimism `0x677dd9...037a00`; bsc `0x8aa0e0...3c4443`; polygon `0x3cd6d7...162b42`; manta `0xa7b9c3...f0bd97`; mantle `0x628e50...e58852`; mantle `0x7b0716...c75aa0`; arbitrum [`0x01d3e7...0679fa`](./contracts/arbitrum-42161/0x01d3e7271c278aa3aa56eeba6a109b2c200679fa/); arbitrum `0x1e0d40...b5e30d`; arbitrum `0x470525...31d3ff`; arbitrum `0xdbaf29...75074a`; avalanche `0x9fcfd9...0eb5ca`; linea `0x6292e8...30e0f9`; aurora `0x041aba...cc57be` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (391)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x043957...c1089d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x18dfde...fcb9d2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2ce83d...2b34de` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x46afe0...e2e683` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x50d148...75eeb2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x53d009...1bb794` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9b64c8...1e2a09` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9f8b87...37c8d9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xaeb5cf...ffb177` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb57dd5...e22e65` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe55154...0389a1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xeab910...bccc01` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xef49a6...7689d3` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x232b8d...df411b` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x6ff338...09d205` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x918424...67c25c` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x981cfc...d99d64` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xa3d6ce...e8d2e2` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xba1cc9...86866c` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xcae014...e7eeb9` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xe38f3a...8038fb` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xe9efd1...6f2c15` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x01bd42...bf1884` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x029658...a44d33` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x02e492...946f4c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x02fcb2...d32bc7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x055e09...d2fd0f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x059690...629038` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x0664c6...204cd6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x072345...969383` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x09fef7...3bfcf4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x0a4d8f...df2c1a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x0abff9...33485a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x0ba4cf...73e5d0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x0e37a7...bc1be7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x12d0f5...8afd42` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x14dfeb...a4b2bd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x15dab5...405018` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x16030b...5688fd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x17ebc3...bd3aa7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x180bf7...cdadac` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x1885b6...83c32f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x191d14...e23f10` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x1abf9b...faa066` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x1ac615...dec0ae` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x1c59d9...ef5d0f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x1d9e7b...9048ca` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x1e0d40...b5e30d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x1eb6cc...fdbcee` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x1f428a...56d63e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x211b80...631cfe` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x21b1c6...83bb4a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x21ced0...6e4ce8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x2306f9...524bb2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x234f6f...5e3880` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x24cee0...c4cadb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x24ec73...495d00` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x2558f5...0d3f9d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x259bf4...1acce9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x28b0de...bbdd6b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x29700b...9bf6ba` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x29828b...76be02` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x2a1f90...87642e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x2aae2c...25be76` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x2dddef...92a2e5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x2f0994...103e6c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x2f226a...a7a7df` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x30be2d...2d0fc2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x312739...ea68db` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x313b04...248486` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x31aaf9...99c50f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x31ed8b...c86070` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x331840...43cc73` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x335ac9...5cc619` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x34b405...4cb5bb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x36724c...9e450f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x39082f...2db464` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x39e29e...9ec002` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x3b545b...547f6d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x3c1336...d07ee2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x3ca930...2ff7ec` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x3d21ff...99d6c5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x3d8a71...ef47f9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x3e5a7b...68a97b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x418039...6a597a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x420411...4c6955` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x426a75...d28bba` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x42f10d...f460c6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x43f1b0...18daf3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x44f878...263589` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x45542c...a237df` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x45fde0...8f1066` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x46da0c...dc9b09` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x488223...2b5b01` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x492e08...5b8fb4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x4b3e03...141ecc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x4b6d6a...4a399b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x4da62b...8d0c91` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x4db9cc...daa823` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x4dbf39...9c6ee7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x4f02fd...efc565` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x5002c0...dbb87c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x53549f...81cd0f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x546317...3423cb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x550b2e...ce289b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x551f1b...b815cf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x55603f...030617` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x565a18...420712` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x580191...4f4b01` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x59f04a...ed2a2d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x5bb98d...0d245a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x5cff38...f51d23` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x60456f...5b5497` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x61a3b2...65e10d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x6226c6...cac0d7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x63e988...cfd8e8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x652c4c...7e1b40` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x67747f...af8ac6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x691863...f17c8c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x693c88...9a3f95` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x6bae9f...fa0249` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x6c2adf...bb3af6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x6c391e...ca0ac2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x6c9225...fcc870` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x6d7202...d5d4e7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x6ffba3...a62128` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x6ffd15...d5c752` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x70ca56...6df2f9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x753d0b...f9ecf5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x76fa75...ec4a4d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x787fad...79cf21` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x78a6ff...2efcdb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7aa708...6f6879` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7aae56...cd4e97` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7aed12...3c8489` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7af908...58707f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7b0e91...37c67e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7b832a...d27318` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7b8b86...93d648` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7bcc58...f092f9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7c073b...80022a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7de813...e8c0d7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7f6fe0...fbd597` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7f8c02...a41c39` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x80333e...064fbc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x80a9bd...814efd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x864112...296403` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x865b50...5f9c3a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x8b2e8f...7dd426` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x8c1b13...a5f82d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x8cf2e4...3d5bd3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x8e4842...8359d0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x902279...4245e7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x90ba6d...39b22d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x9256c3...bc3027` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x9500e4...fe9d40` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x95b337...d846a5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x95d4f9...08644c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x968ca9...c2781f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x9a5ad9...27693b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x9acd75...92e6d3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x9bb973...b8d534` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x9e0ba7...62b0b5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x9e17f7...6c7b9f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x9e60c5...9f9e85` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x9e8873...2529ff` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa02c23...110082` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa3c562...8d7749` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa40321...a3752f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa45b11...8c7614` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa57020...94836b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa5e0f3...ad5d77` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa7952d...0f3d09` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa97c94...7171f7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xaa1380...1bcb57` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xaa864c...126d00` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xaac53b...22fa42` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xaaffad...b25f7c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xac1a79...476d4d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xad3032...6a689c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xad39a4...315123` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xad9128...c29d6e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xadf2be...35fbab` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xaf1eb4...aa4ab1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb09f46...ea13c5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb12aee...e99c77` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb30d81...4635b0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb3ed4e...8a4512` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb5397b...7d90c0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb8b044...b31445` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xba2bbe...059455` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xbab9f4...ffac6e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xbad367...588e00` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xbb9b57...c4b66f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xbe7c68...44dba2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc11304...948ff4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc1ce15...6d48e1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc2163d...9994d9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc21a8e...94368c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc44563...6ed123` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc4706a...939807` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc59a41...b3f999` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc5c410...58a7d5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc67e63...6f211b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc7d8c1...0b7a84` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc7de75...b269b1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc7eecd...20f000` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc8fe24...fd5a53` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc9c70f...b2d4b8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xca7571...642e20` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xcc9d3c...90f031` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xccaa7b...29f6ed` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xcd23e7...bd767b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xce9289...97408a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xce994f...90d67a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd14a49...bb6f1d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd1eeca...e3f663` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd20524...9c9288` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd3a261...dd2ee5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd586d3...8e78c3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd6bd46...bb5a86` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd6e4d6...a047ba` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd70988...8d0ce6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd72b35...a42707` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xdb7e4a...aede7a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xdde87d...a29a70` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xde3036...56c2ce` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xdeae74...cb2ed9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xdf0ba7...2ffc4a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xdfaf95...897c5a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe223ac...760ac2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe2c12c...f1091d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe5b879...32e0db` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe84ca8...650324` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe853b7...81a1be` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe85890...63e793` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xebc80a...57cffc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xec293e...8ea3d0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xec4568...3acc5a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf04226...833c8e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf05548...12956a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf0dd82...a29771` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf16e2c...bc695d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf3cd71...a7f482` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf4899f...cdf313` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf78a62...bb2aa1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xfb2cc6...433bf3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xfc8de5...0d48f4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xfca835...045e8f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xfcfa03...2b5a7d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xfd03fd...5473a4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xfda86e...600992` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xff6e18...1aeb82` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xffcac9...c195c3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x002d86...0a9415` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x094f79...42892f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x176883...960b97` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x192bf7...6ee0a1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x1e359b...261317` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x406722...420855` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x429230...1447b0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x44024b...3b4151` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x50cce1...1c0832` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x5235f9...122d9c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x551536...cf93fe` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x5d3b99...75e86e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x5f619e...73bc03` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x6c30be...7b2670` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x72d220...598f6c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x753495...47f001` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x7bc257...e471c9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x7e2001...72e4cc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x7f121b...255869` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x8a5387...ab1ad0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x954ae3...c8b14b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x9585cc...7d3302` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x9d4c34...3ce45d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xa0f1e6...80029f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xa23988...e4d28a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xa2cb66...1de97d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xa4f63a...ec5eab` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xaea7c6...340735` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xb5397b...7d90c0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xbef0c8...64527c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xd9ef2d...d149df` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xdbfaf3...96e192` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xdcd26e...e3c4a0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xe37078...f9342f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xe373df...d6cfc8` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x297da0...d81005` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0xb38d39...0066cd` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x17644d...2946a7` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x2da085...fe47fa` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x2e50e3...9b962e` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x3a64ec...fb496d` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x3a7bc5...6d1aaa` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x440234...01e269` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x46afe0...e2e683` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x5fa9e0...ed3a8d` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x710409...df6473` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x89ba40...006f4d` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x8b87d4...1ea303` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xa7b9c3...f0bd97` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xb95ed7...b10ab9` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xd0cf7d...04a364` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xe6cecb...85686f` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xeac4bf...adc596` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x0fcb52...f851fc` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x224fec...3659ee` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x65934e...e38545` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x93d9a9...f1da85` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xa6d006...dd9719` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xc138ee...66ce4f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x01f9bf...0cc750` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x0fe261...9065f4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x0fea37...739968` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x141b44...dbe07a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x156566...e6f4c0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x18aa6b...971306` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x19c6f0...ebc060` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x1c31c6...0d31fe` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x1cc529...b2d58f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x2cd185...c9ea26` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x2f2f94...68a5a6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x36b673...6110df` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3a343f...054965` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3e64f1...66ba9e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x409e37...5d1dd9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x579d25...9fd1be` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x67e5a4...75f9bb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x67ee3c...b929e2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x69f52a...56f0a0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x77106d...d2d748` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x778df5...e185dc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x884e3e...bcd6be` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x96a75d...1d3dc4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x97f015...6fe53b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa1254e...96b6d4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa2844d...6033f9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xaaffad...b25f7c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xafe0a7...609eef` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb0c7cb...a4ff66` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb7865a...62655a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb895fa...246107` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc3528d...945282` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xcfea63...39e470` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd72b35...a42707` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe3c91f...e9066e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xeceade...95dc32` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf0b433...55a1ad` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf31162...82d37c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf73454...d11ea2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xff133a...a8ae6a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x18aa6b...971306` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x313fcb...2251fd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x67ee3c...b929e2` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x1fc8ec...4bd4cc` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x7b0716...c75aa0` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x0125cd...2e3627` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x02fcb2...d32bc7` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x048b89...e06fc2` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x059690...629038` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x16601c...1f9d9c` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x19309b...271e16` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x27566b...f4d25e` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x326c78...1be4fc` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x34b9dc...3d28e3` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x3cd6d7...162b42` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x44d5df...6de34e` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x471e1a...37dabd` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x4775b1...01dac4` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x48d77f...4e550d` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x49eab5...2b2845` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x53a51a...661a94` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x550b2e...ce289b` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x6373ce...064ac4` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x738ebf...b1df51` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x7737fd...aebd3c` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x853512...f1325d` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x8e2f66...f96a90` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x989dca...ce1b0c` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x9f015a...07f2ea` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xa2cb66...1de97d` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xa35686...231fdc` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xb76de2...76314c` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xbef0c8...64527c` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xc4436f...bd402a` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xc6962a...bbc817` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xd9dec7...6b14c2` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xe8c9a7...fecf25` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xf50bdc...c4cb8e` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [audit.md](https://github.com/DODOEX/docs/blob/master/docs/audit.md) | unknown | Audit | 2021-04 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x43dfc4...7d4ddd`](./contracts/ethereum-1/0x43dfc4159d86f3a37a5a4b3d4580b888ad7d4ddd/) | DODOToken | token | $18,098,975.31 | Verified native implementation with $18,098,975.31 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x67ee3c...b929e2`](./contracts/bsc-56/0x67ee3cb086f8a16f34bee3ca72fad36f7db929e2/) | DODOBscToken | token | $1,030,304.39 | Verified native implementation with $1,030,304.39 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2c2327...568ea6`](./contracts/ethereum-1/0x2c23276107b45e64c8c59482f4a24f4f2e568ea6/) | bVault | core_logic | $298,895.13 | Verified native implementation with $298,895.13 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x032dd2...995c29`](./contracts/bsc-56/0x032dd2cd4e64d8c30fed171d0d0b6cf4a7995c29/) | ABNB | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1fd991...c10271`](./contracts/bsc-56/0x1fd991fb6c3102873ba68a4e6e6a87b3a5c10271/) | Atlantis | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0e8c9f...a02a23`](./contracts/bsc-56/0x0e8c9fc7cd455faf22d13fcafd5c6f4eeca02a23/) | AtlantisLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1eca54...83a07a`](./contracts/bsc-56/0x1eca5409b30a398b46c84d98db3e91054283a07a/) | AtlantisMultiSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x9efe05...c84c6f`](./contracts/bsc-56/0x9efe0562e453c8d69870e27acc4d44f7a7c84c6f/) | AtlantisRescue | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x098f2a...0910ed`](./contracts/bsc-56/0x098f2a29ba9ce38eeb10e02b83945d7c6d0910ed/) | ATLVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x7776b8...cdd9dc`](./contracts/bsc-56/0x7776b8e7b9228eb030d2e18e30d8adbbd1cdd9dc/) | BatchERC721Transfer | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0d53ac...3d112b`](./contracts/ethereum-1/0x0d53acf7956bfe0e4b00ee5eacbe5cf1d43d112b/) | BatchTransfer | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x306227...b404b2`](./contracts/ethereum-1/0x306227d964511a260d14563fbfa82aa75db404b2/) | Bridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x102739...296426`](./contracts/ethereum-1/0x102739e36bc412cf79ff62f3e1efaba9f8296426/) | BuyoutModel | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe04f5b...8f8e05`](./contracts/ethereum-1/0xe04f5b60ed8ef9e52098e5428c5851b0de8f8e05/) | CommonInterestModel | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x63295b...89b4e3`](./contracts/bsc-56/0x63295bb73f7ea15a6a0ce57f34a379a8d689b4e3/) | CommunityStore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x043bb6...7e3974`](./contracts/bsc-56/0x043bb6fa4577d9226b7f75e6d528393d247e3974/) | CommunityVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x31169b...6b7c79`](./contracts/bsc-56/0x31169b127e34fe6ff93fe9810a6165c6fd6b7c79/) | Comptroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x072ff3...a99d7a`](./contracts/ethereum-1/0x072ff3ed5f723fb4e9a83a76755ed5222ea99d7a/) | ConstOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4187aa...113634`](./contracts/bsc-56/0x4187aab02f9e3abdeb9a6cc71397a7a839113634/) | Controller | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1e5d8e...6aa656`](./contracts/ethereum-1/0x1e5d8ee8fb7f0d791475c59391db8f6cd06aa656/) | CrowdPoolingFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x47520b...80fec2`](./contracts/bsc-56/0x47520b1e49e252d5a79c3f6a241ae95b0f80fec2/) | DODO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb3ce29...2ed040`](./contracts/ethereum-1/0xb3ce29e0ec5e83925f1dc39e261b60b83a2ed040/) | DODOBuyBackBatchSwap | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x0bd742...49112d`](./contracts/optimism-10/0x0bd7426f008737feed575ed8e2aa1bd4fc49112d/) | DODOCalleeHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x357c5e...119d11`](./contracts/ethereum-1/0x357c5e9cfa8b834edcef7c7aabd8f9db09119d11/) | DODOCirculationHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x048b89...e06fc2`](./contracts/ethereum-1/0x048b8926bb0ee9c52e05d61fdffbccffbee06fc2/) | DODOCpProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8e2f66...f96a90`](./contracts/ethereum-1/0x8e2f666f316b614c76676215f16f0a9746f96a90/) | DODOCpProxyTmp | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc05a30...c3323b`](./contracts/bsc-56/0xc05a30468d039381aabab6dcac31078db2c3323b/) | DODODropsProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x37adc3...9d5913`](./contracts/ethereum-1/0x37adc35f7b12582240818df04aac04ca409d5913/) | DODOEthProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0343c5...c71c64`](./contracts/bsc-56/0x0343c5757fb98ad9ef39824e08b852af61c71c64/) | DODOFeeRouteProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4ee639...9cd352`](./contracts/bsc-56/0x4ee6398898f7fc3e648b3f6ba458310ac29cd352/) | DODOIncentive | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x093b68...dd17eb`](./contracts/ethereum-1/0x093b68bfe0859d3c857fc3529952897c30dd17eb/) | DODOLimitOrder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5e6c9f...a03322`](./contracts/bsc-56/0x5e6c9f63e0ccf68d98bd14fef83a708f1ea03322/) | DODOLimitOrderProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x02fcb2...d32bc7`](./contracts/ethereum-1/0x02fcb21dc1cf221939c1d4277fb54016b5d32bc7/) | DODOMigrationBSC | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x01f9bf...0cc750`](./contracts/bsc-56/0x01f9bfac04e6184e90bd7eafd51999ce430cc750/) | DODOMine | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0de3c2...cbcc9d`](./contracts/ethereum-1/0x0de3c2c33d7ef25c4c89ea774e2059fc48cbcc9d/) | DODOMineReader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0d9685...00bbdc`](./contracts/ethereum-1/0x0d9685d4037580f68d9f77b08971f17e1000bbdc/) | DODOMineV3Proxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3ab9b8...4cfd5b`](./contracts/ethereum-1/0x3ab9b8bcc97db111bf14b04ebd4c08dce94cfd5b/) | DODONFT1155 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x8f6978...4c7a6c`](./contracts/bsc-56/0x8f697865fb43236683a174fee87fd84db64c7a6c/) | DODONFTApprove | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x509d37...b5b965`](./contracts/bsc-56/0x509d3775f684fa4d19c9c99b961202e309b5b965/) | DODONFTPoolProxy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0d224a...798c71`](./contracts/bsc-56/0x0d224a4a6da3cfb360b9879965b1f78865798c71/) | DODONFTProxy | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2c0dd7...dce31a`](./contracts/bsc-56/0x2c0dd764a0be8a7e747cb0765e268d576edce31a/) | DODONFTRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x61b216...1d0f6a`](./contracts/bsc-56/0x61b21603a527b487c4a3a80a69224b87751d0f6a/) | DODORecharge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x533da7...ba80eb`](./contracts/ethereum-1/0x533da777aedce766ceae696bf90f8541a4ba80eb/) | DODOSellHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x796249...29ecb9`](./contracts/bsc-56/0x79624977c8065650f03c38d5bc0f03a6f929ecb9/) | DODOStarterFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x2815b0...36ab0f`](./contracts/optimism-10/0x2815b0addb0becf86b10982a86a133ae9d36ab0f/) | DODOSwapCalcHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x01d3e7...0679fa`](./contracts/bsc-56/0x01d3e7271c278aa3aa56eeba6a109b2c200679fa/) | DODOUpCpProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa2cb66...1de97d`](./contracts/ethereum-1/0xa2cb66ebb947d217f61510882096f6e95c1de97d/) | DODOV1Proxy04 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9ae501...11bcb5`](./contracts/ethereum-1/0x9ae501385bc7996a2a4a1fbb00c8d3820611bcb5/) | DODOV2Proxy01 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1cf4ae...f6dc9a`](./contracts/ethereum-1/0x1cf4ae0fae772b64d83d175d9e3ee06240f6dc9a/) | DODOV2Proxy02 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x067295...8b1896`](./contracts/ethereum-1/0x0672952fab6bd1336c57ae09e49db6d3e78b1896/) | DODOV2RouteHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbd3379...364d25`](./contracts/ethereum-1/0xbd337924f000dceb119153d4d3b1744b22364d25/) | DODOZooEventTrigger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0fe261...9065f4`](./contracts/bsc-56/0x0fe261aee0d1c4dfddee4102e82dd425999065f4/) | DPPAdvanced | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x147dfc...8028f7`](./contracts/optimism-10/0x147dfcb00aa0075a00ee6fdfcfc718b1b18028f7/) | DPPFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x03e794...35b1a0`](./contracts/bsc-56/0x03e794b315f01744cbfa995fbdc9e871e835b1a0/) | DPPOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6de96b...c0c67d`](./contracts/bsc-56/0x6de96b1a41ff2e8264925b4c5c0564c46dc0c67d/) | DropsFeeModel | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0fb981...ede767`](./contracts/bsc-56/0x0fb9815938ad069bf90e14fe6c596c514bede767/) | DSPFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x01feea...ef80d7`](./contracts/ethereum-1/0x01feea29da5ae41b0b5f6b10b93ee34752ef80d7/) | DVM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0226fc...3e13c2`](./contracts/base-8453/0x0226fce8c969604c3a0ad19c37d1fafac73e13c2/) | DVMFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf532fd...c4bf02`](./contracts/ethereum-1/0xf532fd8a0c064bbd519cd528e745285c5bc4bf02/) | EMAPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x44d5df...6de34e`](./contracts/ethereum-1/0x44d5df24d5ef52a791d6436fa45a8d426f6de34e/) | ERC20Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x42e456...7bb5b2`](./contracts/optimism-10/0x42e456ea0dd7538ea103fbb1d0388d14c97bb5b2/) | ERC20Helper | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x0123e7...5fe2ba`](./contracts/optimism-10/0x0123e774f2feed16b8bdea4c02cba0dc435fe2ba/) | ERC20MineV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x18b60f...d6bc31`](./contracts/bsc-56/0x18b60f1d852636b8ed24da2b682c0bc60dd6bc31/) | FairFunding | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3e6293...48b5e1`](./contracts/bsc-56/0x3e629332c51046a17ec236553cb931cf0548b5e1/) | Fear | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x06c19e...76322b`](./contracts/bsc-56/0x06c19e1d97aadd6f30a8a2be4c5defa30976322b/) | FeeRateDIP3Impl | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2b0d94...76d2fe`](./contracts/bsc-56/0x2b0d94eb7a63b8a2909de1cb3951ecf7ae76d2fe/) | FeeRateImpl | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x333641...1c301f`](./contracts/bsc-56/0x33364198d93648d3e976aa8625097567791c301f/) | FilterERC721V1 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0ed46f...771e11`](./contracts/bsc-56/0x0ed46f84ebf8af56eb29644f6a49d184ad771e11/) | GovernorAlpha | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x17a169...edbf28`](./contracts/bsc-56/0x17a1693a62695610993ee389caa6473749edbf28/) | GovernorBravoDelegate | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x056fce...7bfc1a`](./contracts/bsc-56/0x056fce6b76af3050f54b71fc9b5fcb7c387bfc1a/) | GSP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x46e55a...6f0c29`](./contracts/arbitrum-42161/0x46e55a974c5995675b025f7f607c3278b36f0c29/) | GSPFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xbd0ed3...1ea188`](./contracts/bsc-56/0xbd0ed394042ae14a1d6b7478386cdffd9d1ea188/) | InitializableERC721 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x059690...629038`](./contracts/ethereum-1/0x0596908263ef2724fbfbcafa1c983fcd7a629038/) | InitializableMintableERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x050d08...177e9d`](./contracts/ethereum-1/0x050d08e8149f305dff7a9936f3908a1823177e9d/) | LockedTokenVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5f79e2...384050`](./contracts/bsc-56/0x5f79e25dbf729c0758de96dedf30ce6257384050/) | LPVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3533f2...4c7931`](./contracts/bsc-56/0x3533f2514bbb4b3345714a7adb80d7143c4c7931/) | Maximillion | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x03d489...a208a2`](./contracts/bsc-56/0x03d489a5f65d4fd2db0b077570c7f707eca208a2/) | MinimumOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x9bcc33...847197`](./contracts/bsc-56/0x9bcc337fe99a7908133672ed00c516d5c3847197/) | MultiSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xdf7e00...20c8d4`](./contracts/bsc-56/0xdf7e00cd0bb91d1502a1a14575e58b5d8f20c8d4/) | MysteryBoxKAKA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc25286...af97b8`](./contracts/bsc-56/0xc25286ef3bae3f6fe2d6d0a6e2acad0301af97b8/) | MysteryBoxV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0dd95c...3a1deb`](./contracts/bsc-56/0x0dd95ce685b8b101c52b43b203c351cf2d3a1deb/) | NFTCollateralVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6e08ea...16b8fa`](./contracts/bsc-56/0x6e08eaafea48c147e8d092a7979d7b266f16b8fa/) | NFTTokenFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x066d47...8a7485`](./contracts/ethereum-1/0x066d47d010fe82384f75d504bc2685c7a58a7485/) | OffsetOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x7c062b...c5fe72`](./contracts/bsc-56/0x7c062b9c584fa6ec2504270790d38240a2c5fe72/) | RandomGenerator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x161af9...5d0f90`](./contracts/ethereum-1/0x161af953c652ae3807f0b0428b63727f1d5d0f90/) | SaveContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3e2a6f...640909`](./contracts/bsc-56/0x3e2a6f7818a0de1549f286f49826d5963a640909/) | Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0c4b4f...922281`](./contracts/ethereum-1/0x0c4b4f1d5f5c989457cdd6f5102308b33c922281/) | UpCrowdPoolingFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x69a169...925f43`](./contracts/bsc-56/0x69a1692fbb645bda8137e59da7f2d6104d925f43/) | VaultProxy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x505a0f...ae945f`](./contracts/bsc-56/0x505a0f0f4956f7ca5839c5efd8ebdaf3d3ae945f/) | vDODOMine | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc4436f...bd402a`](./contracts/ethereum-1/0xc4436fbae6eba5d95bf7d53ae515f8a707bd402a/) | vDODOToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5d9fcf...f93038`](./contracts/bsc-56/0x5d9fcf09224b9e60d3f5e7b0a1a843386df93038/) | XVSVaultStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xf2a47e...9fac4a`](./contracts/bsc-56/0xf2a47e9a2c7881afe4b6927ef9181725db9fac4a/) | XVSVaultStrategyProxy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 146 |
| upstream | 12 |
| standard_library | 2 |
| needs_review | 409 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [3401] audit.md

Fork inheritance lineage and inherited audits are included when available.
