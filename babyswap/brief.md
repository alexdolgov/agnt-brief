# Agentic Audit Brief: BabySwap

## Project Overview

- Project: BabySwap (`babyswap`)
- Lifecycle: active (Tier 0, 99.6% below peak)
- Generated: 2026-06-10T20:58:58.030Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: bsc
- Contract surface: 113 unique implementations (194 raw deployments)
- DeFi Llama TVL: $1,344,585.94
- On-chain TVL (included contracts): $241,077.08
- TVL by chain: Bsc $241,077.08

## Project Description

BabySwap is a BNB Chain AMM and NFT DEX ecosystem for swaps, liquidity provision, and emerging project markets. Its broader contract surface includes the BABY token, router infrastructure, NFT and marketplace components, farming, launchpad, and Wonderland-related modules.

### Architecture

The BabySmartRouter proxy delegates to the BabyNormalRouter implementation to handle swap logic, while BabyToken serves as the protocol's native asset, likely used for fees or rewards. All contracts are deployed from a single deployer cluster, indicating a unified infrastructure.

## Audit Coverage Summary

- Verified implementations audited: 1/65 (1.5%)
- Verified + Unaudited implementations: 64
- Verified by bytecode match: 0
- Unverified implementations: 48
- Unique implementations: 113
- Raw deployments: 194
- Audits discovered: 1
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $241,077.08
- Latest audit: 2022-08 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CertiK | Tier 2 | 1 | 1.5% | 2022-08 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| BabyWonderland | unknown | bsc | [`0x1fe7f2...1dd68d`](./contracts/bsc-56/0x1fe7f243eb49f3b9575f51a2f9fba9fc2c1dd68d/) | ✅ Audited |

### ⚠️ Verified + Unaudited (64)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| BabyToken | token | bsc | 6 deployments: bsc [`0x2b1d01...3e74e9`](./contracts/bsc-56/0x2b1d01c316a41c11dc1a3d691a9aca66c63e74e9/); bsc `0x53e562...3d2657`; bsc `0x98ce25...6603d7`; bsc `0xbaa6ef...1e66f7`; bsc `0xd7dda7...f1b160`; bsc `0xf2c313...08c535` | ⚠️ Unaudited |
| BabyPoolV2 | core_logic | bsc | [`0xad7a58...94ef1c`](./contracts/bsc-56/0xad7a5809dc2c0ebbec32786780b3469f3c94ef1c/) | ⚠️ Unaudited |
| BabyVault | core_logic | bsc | [`0x5da29e...cfd6e4`](./contracts/bsc-56/0x5da29e4afe94784fde4b7a62c5cd8a8aebcfd6e4/) | ⚠️ Unaudited |
| AutoBabyPool | core_logic | bsc | 2 deployments: bsc [`0x3e1ead...e94dbc`](./contracts/bsc-56/0x3e1ead5cbe817689f4bdb96bceeb112fdbe94dbc/); bsc `0x5aeb26...ca3f52` | ⚠️ Unaudited |
| NFTFarm | token | bsc | [`0xa28072...363318`](./contracts/bsc-56/0xa2807219c6154d21d8d96acd55c4841d63363318/) | ⚠️ Unaudited |
| NFTFarmV4 | token | bsc | [`0x391079...aa4ae0`](./contracts/bsc-56/0x391079902156b90f0ece775350643fcfb5aa4ae0/) | ⚠️ Unaudited |
| NFTFarmV5 | token | bsc | 2 deployments: bsc [`0x2f5822...3f1a30`](./contracts/bsc-56/0x2f5822ad24ab4cddbcea82765ab851f86d3f1a30/); bsc `0xadca12...798ea1` | ⚠️ Unaudited |
| BabyAutoPoolV2 | core_logic | bsc | [`0x3b6279...2554b1`](./contracts/bsc-56/0x3b6279a3826bc6d2c7216182a4c25fe43d2554b1/) | ⚠️ Unaudited |
| BabyERC1155 | token | bsc | 4 deployments: bsc [`0x00a234...981169`](./contracts/bsc-56/0x00a2340610cb54ee68fb86f6be357d3731981169/); bsc `0x1e1c96...50c248`; bsc `0x30cd3e...de1702`; bsc `0x57b342...a039fe` | ⚠️ Unaudited |
| BabyERC721 | token | bsc | 8 deployments: bsc [`0x103aa3...4975e7`](./contracts/bsc-56/0x103aa302b5f0acd1a4512033f103126faf4975e7/); bsc `0x402f4e...be0981`; bsc `0x548351...42e7bf`; bsc `0x60e1c3...bf11da`; bsc `0x65328a...0de500`; bsc `0x9f0225...fd91a8`; bsc `0xd92a8d...6909d5`; bsc `0xf3a360...eef11e` | ⚠️ Unaudited |
| BabyExchange | unknown | bsc | 3 deployments: bsc [`0x7b8c94...e0e47f`](./contracts/bsc-56/0x7b8c94acec4a0faa0be9e99628dd24eb65e0e47f/); bsc `0xc30321...ca94b6`; bsc `0xe7bef5...ae2d00` | ⚠️ Unaudited |
| BabyFactory | registry | bsc | 4 deployments: bsc [`0x86407b...f889da`](./contracts/bsc-56/0x86407bea2078ea5f5eb5a52b2caa963bc1f889da/); bsc `0xa97629...8987a1`; bsc `0xabff61...8d70b6`; bsc `0xc695d8...f792a4` | ⚠️ Unaudited |
| BabyFarmV2 | unknown | bsc | [`0xcb5946...0842bb`](./contracts/bsc-56/0xcb59468d06b812f457c1763738217fb0430842bb/) | ⚠️ Unaudited |
| BabyMarket | unknown | bsc | [`0x5588b2...b09aaf`](./contracts/bsc-56/0x5588b270b077310828610613ef2cebfb42b09aaf/) | ⚠️ Unaudited |
| BabyNormalRouter | adapter | bsc | 2 deployments: bsc [`0x8317c4...e2ad32`](./contracts/bsc-56/0x8317c460c22a9958c27b4b6403b98d2ef4e2ad32/); bsc `0xdab669...64df67` | ⚠️ Unaudited |
| BabyProxyOFT | unknown | bsc | [`0x000c86...c28d43`](./contracts/bsc-56/0x000c86bb08f24261453a289fa3af839e23c28d43/) | ⚠️ Unaudited |
| BabyRegistry | registry | bsc | 2 deployments: bsc [`0x540a80...73c86b`](./contracts/bsc-56/0x540a805dcb1b06820f1361c3ec3e89ba2273c86b/); bsc `0xc655e7...908f7a` | ⚠️ Unaudited |
| BabyRouter | adapter | bsc | 3 deployments: bsc [`0x237b0a...93213d`](./contracts/bsc-56/0x237b0a07edc7932bdd3260393ae7a9570a93213d/); bsc `0x26c8b1...c17d28`; bsc `0x325e34...6b38bd` | ⚠️ Unaudited |
| BabySBTs | unknown | bsc | [`0x8c2710...76fa7c`](./contracts/bsc-56/0x8c27103eee75eed8801b808ff23eb02c9876fa7c/) | ⚠️ Unaudited |
| BabySwapFee | unknown | bsc | 8 deployments: bsc [`0x48c3fb...08baf1`](./contracts/bsc-56/0x48c3fb5d1c8820bf867efe1d8217c41ea208baf1/); bsc `0x81e0ec...b7d2f0`; bsc `0x8ac71c...03f483`; bsc `0x8ca0a6...915d5c`; bsc `0xc37e7a...aaeb00`; bsc `0xd8ef56...b93b4e`; bsc `0xdaf273...0583bf`; bsc `0xe9d14b...a77389` | ⚠️ Unaudited |
| BabySwapFeeV2 | unknown | bsc | [`0x137f5d...dcf4ed`](./contracts/bsc-56/0x137f5d13295f2641124d5eb7283a20d0b4dcf4ed/) | ⚠️ Unaudited |
| BabySwapFeeV3 | unknown | bsc | 2 deployments: bsc [`0x6bef42...3d41d3`](./contracts/bsc-56/0x6bef4238761aee8ea773405d60ba93cd183d41d3/); bsc `0x90457d...09c4f0` | ⚠️ Unaudited |
| BabyTokenTransferProxy | token | bsc | 2 deployments: bsc [`0xde2ca9...62532b`](./contracts/bsc-56/0xde2ca923570de15263e3914af0637a38ea62532b/); bsc `0xeddc6a...734e18` | ⚠️ Unaudited |
| BabyWonderlandAirdrop | operational_periphery | bsc | [`0x0e15b0...5d0eb6`](./contracts/bsc-56/0x0e15b08b3a370dd8d115c7ad38b09b69f25d0eb6/) | ⚠️ Unaudited |
| BabyWonderlandMakeFactory | registry | bsc | [`0xc96df0...223f22`](./contracts/bsc-56/0xc96df0fc50cd4eed5823f1c12f92edc6f0223f22/) | ⚠️ Unaudited |
| BabyWonderlandMakeFactoryV2 | registry | bsc | [`0xa02062...09d6a9`](./contracts/bsc-56/0xa020624d733a1544b74449add598adefd709d6a9/) | ⚠️ Unaudited |
| BabyWonderlandReserve | unknown | bsc | [`0xe4212d...39f887`](./contracts/bsc-56/0xe4212d35abc69812a8e88ed40e44759d8b39f887/) | ⚠️ Unaudited |
| Bottle | unknown | bsc | 11 deployments: bsc [`0x2556f4...1ddc80`](./contracts/bsc-56/0x2556f40f6de1a3e24433c215a71dba9a6d1ddc80/); bsc `0x2ab54e...77bb68`; bsc `0x36e221...680c51`; bsc `0x3ac266...095bb5`; bsc `0x3ed1b1...643ce6`; bsc `0x40d7d4...53cca5`; bsc `0x4cd80f...587a3c`; bsc `0x4e06b2...a5a2df`; bsc `0x7e7886...959fe6`; bsc `0x95333b...e4082a`; bsc `0xf06823...fe90f9` | ⚠️ Unaudited |
| BoxFactory | registry | bsc | [`0x44e974...89c215`](./contracts/bsc-56/0x44e974d019f62627871638809dadd0e4b289c215/) | ⚠️ Unaudited |
| CalculateRouter | adapter | bsc | [`0x90055e...5e01d3`](./contracts/bsc-56/0x90055e75685d521fabb1ec567d1fbc63fc5e01d3/) | ⚠️ Unaudited |
| IDO | unknown | bsc | [`0x7d6525...2b5e35`](./contracts/bsc-56/0x7d65254e85484b5ea062753d4b0f8a66d22b5e35/) | ⚠️ Unaudited |
| IFO | unknown | bsc | 2 deployments: bsc [`0x31ba7a...de2849`](./contracts/bsc-56/0x31ba7a0b0f4f4c9b2fd0d84e0c66939324de2849/); bsc `0xb88be5...aeecd9` | ⚠️ Unaudited |
| ILO | unknown | bsc | 7 deployments: bsc [`0x03d13d...b798e3`](./contracts/bsc-56/0x03d13d1c5f0bfed4c5408e0e70322fd0a2b798e3/); bsc `0x27a97c...72f556`; bsc `0x8fb1b5...6a60cc`; bsc `0x92f32a...4d3002`; bsc `0xb669b3...eb4e39`; bsc `0xcc4fe7...c5ef14`; bsc `0xde31fb...c5ff16` | ⚠️ Unaudited |
| INO | unknown | bsc | 3 deployments: bsc [`0x6533c0...0ae6d7`](./contracts/bsc-56/0x6533c0bb3f2834bf35448dc45216dfc6ef0ae6d7/); bsc `0xa1d2ec...10bba3`; bsc `0xd55262...5ac3e3` | ⚠️ Unaudited |
| LandClaim | unknown | bsc | [`0x614214...2cc759`](./contracts/bsc-56/0x6142143e5d5956c3076a0be2f6b44bfa4f2cc759/) | ⚠️ Unaudited |
| LandFragments | unknown | bsc | [`0xc646d1...59c317`](./contracts/bsc-56/0xc646d16dbb448d3ec0a6c8430a3236e04559c317/) | ⚠️ Unaudited |
| LandFragmentSynthesis | unknown | bsc | 4 deployments: bsc [`0x170659...c4417e`](./contracts/bsc-56/0x170659f2d006db964d7b6d2df8906358e1c4417e/); bsc `0x63dbc1...043fb1`; bsc `0x8706a4...3b4051`; bsc `0xb1cee4...63cf9f` | ⚠️ Unaudited |
| LotteryTicket | unknown | bsc | [`0x9105aa...9307e5`](./contracts/bsc-56/0x9105aa5fef5d8f91ef10d330970e0151f39307e5/) | ⚠️ Unaudited |
| MarketFeeManager | governance | bsc | 4 deployments: bsc [`0x2d2434...dfe722`](./contracts/bsc-56/0x2d24344739530a1c6c63e4d594d56ef4e6dfe722/); bsc `0x4f808d...e1f906`; bsc `0x6748b1...396b04`; bsc `0xb7949a...a791d0` | ⚠️ Unaudited |
| MasterChef | unknown | bsc | 2 deployments: bsc [`0x860038...54bda7`](./contracts/bsc-56/0x860038f20e99192d5ca52e3c49591ebc4454bda7/); bsc `0xdfaa0e...0ac730` | ⚠️ Unaudited |
| MasterChefMigrator | periphery | bsc | 2 deployments: bsc [`0x5063b4...bb6939`](./contracts/bsc-56/0x5063b4d6e50c0bee3ea5a5f8c50eb2adc3bb6939/); bsc `0x8c344f...ce2928` | ⚠️ Unaudited |
| MasterChefTimelock | governance | bsc | [`0x48fcaf...af99ff`](./contracts/bsc-56/0x48fcafa24c5599d521447713efb4eeeea3af99ff/) | ⚠️ Unaudited |
| MockLevel | unknown | bsc | [`0x007156...8b3237`](./contracts/bsc-56/0x00715619bc5b50bf1e02d77292ba6caea08b3237/) | ⚠️ Unaudited |
| MultHelper | periphery | bsc | [`0xbc81c1...9274b2`](./contracts/bsc-56/0xbc81c169cf71daf17999970bd743c36f2b9274b2/) | ⚠️ Unaudited |
| MultHelperV2 | periphery | bsc | [`0x48de67...3aa526`](./contracts/bsc-56/0x48de67fc02cef912b037c56d7c1cc99e743aa526/) | ⚠️ Unaudited |
| Oracle | operational_periphery | bsc | 3 deployments: bsc [`0x5db99d...fb47a3`](./contracts/bsc-56/0x5db99da94d967e268bbc4b6d9ffbe5da88fb47a3/); bsc `0x726cb7...1f9528`; bsc `0xb81d47...6fa468` | ⚠️ Unaudited |
| OracleCaller | operational_periphery | bsc | [`0xc26a75...603597`](./contracts/bsc-56/0xc26a75fbb4c9e1fd06080a1c5f616de95e603597/) | ⚠️ Unaudited |
| PoolFactoryV2 | registry | bsc | [`0xc83829...82a9c9`](./contracts/bsc-56/0xc838290edd6810036bace1806dba0fca4482a9c9/) | ⚠️ Unaudited |
| RewardClaim | unknown | bsc | 2 deployments: bsc [`0xc50297...38b1b6`](./contracts/bsc-56/0xc502973a9d49da86eea602b9e63b02d1ed38b1b6/); bsc `0xf28298...1f856d` | ⚠️ Unaudited |
| ScratchOffTickets | unknown | bsc | [`0x27e30d...e98a5c`](./contracts/bsc-56/0x27e30d282e664ad7db613176524f5b13cfe98a5c/) | ⚠️ Unaudited |
| SmartChefFactory | registry | bsc | 2 deployments: bsc [`0x9871a9...afd5b6`](./contracts/bsc-56/0x9871a9c79a4df5669f3ebbb7cbc09627ddafd5b6/); bsc `0xa0a3df...07092b` | ⚠️ Unaudited |
| SmartRouter | adapter | bsc | 2 deployments: bsc [`0x098ccf...b20e05`](./contracts/bsc-56/0x098ccf88292d5fe4f71e9ce881f095ae02b20e05/); bsc `0xe56b7d...778f66` | ⚠️ Unaudited |
| SwapMining | unknown | bsc | 3 deployments: bsc [`0x50e55d...90c617`](./contracts/bsc-56/0x50e55d1ca48e02d00a950a6ca11ab16c5290c617/); bsc `0x5c9f1a...e49636`; bsc `0x826cd3...c46b90` | ⚠️ Unaudited |
| SyrupBar | unknown | bsc | [`0x930c40...8da9be`](./contracts/bsc-56/0x930c4047d26467e4dec0fd199fb44a92298da9be/) | ⚠️ Unaudited |
| TaskReward | unknown | bsc | [`0x681392...9616ec`](./contracts/bsc-56/0x681392bf14623dc4ba704ec89bb2537d939616ec/) | ⚠️ Unaudited |
| TokenLocker | token | bsc | 4 deployments: bsc [`0x0e84f6...361a9d`](./contracts/bsc-56/0x0e84f67dd5f7e8f5e1496f02a9bdedb6d7361a9d/); bsc `0x92c0f3...9267de`; bsc `0xc5d56b...ea3bc8`; bsc `0xf33de8...d6b179` | ⚠️ Unaudited |
| TOYSwap | unknown | bsc | 5 deployments: bsc [`0x1df30a...07f3b4`](./contracts/bsc-56/0x1df30a49b1638a7479c97940bf3f2dc79a07f3b4/); bsc `0x44e609...b1c26d`; bsc `0x487b17...98375e`; bsc `0x67fda6...26d9a0`; bsc `0x9ef1b8...5e8587` | ⚠️ Unaudited |
| TOYToken | token | bsc | 6 deployments: bsc [`0x1618b5...e107bb`](./contracts/bsc-56/0x1618b5a5aaab1e622a242c6982f3905c2ce107bb/); bsc `0x476906...83693f`; bsc `0x820fa3...d095e6`; bsc `0x9f529e...ff495b`; bsc `0xcc1e6d...f33b4c`; bsc `0xfa8d65...569453` | ⚠️ Unaudited |
| VBabyDispatch | unknown | bsc | [`0xc501a6...5e871c`](./contracts/bsc-56/0xc501a6db19f7e088d9af57b5997045967f5e871c/) | ⚠️ Unaudited |
| VBabyDonateSchedule | unknown | bsc | [`0x740ce9...9146c6`](./contracts/bsc-56/0x740ce924fc0c7fb904f151c08fb34160ec9146c6/) | ⚠️ Unaudited |
| VBabyFarmer | unknown | bsc | [`0x272d02...2bf963`](./contracts/bsc-56/0x272d02966c416ecf6fde052ec09dc089022bf963/) | ⚠️ Unaudited |
| VBabyFarmerV2 | unknown | bsc | [`0x2d2176...86edc9`](./contracts/bsc-56/0x2d21762410cffe4ddbd991ae1503b031ef86edc9/) | ⚠️ Unaudited |
| VBabyOwner | unknown | bsc | [`0xec6113...594a73`](./contracts/bsc-56/0xec6113ba8968bd4da9f7c909a0c42085a0594a73/) | ⚠️ Unaudited |
| vBABYToken | token | bsc | [`0x051344...e5cb22`](./contracts/bsc-56/0x05134427ca04fe0712b29fb50c4d573f63e5cb22/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (48)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | bsc | `0x03657b...800c62` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x0def70...f15a77` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x1b802b...b86995` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x23a62a...0aefd4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x24b6af...b8e0be` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x26611b...ab9105` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x3325fb...1cc1c8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x364d10...301589` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x399d7e...d109d5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x3f2221...905fab` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x4577f7...9f6b61` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x46fe30...6bcc13` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x47313a...4bbf02` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x47e84e...06d9e8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x47f08c...a90be9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x56b6be...b69189` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x5c4370...72c5a8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x5f0108...cff787` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x5f4f15...342fce` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x61e53a...d194ac` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x682f26...2aaa3d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x69dc8e...69edf3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x6c6fde...895fe2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x6f1b8f...3c5aec` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7542bc...33ad43` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x797940...350b0f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7e1b40...f10005` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x807e1b...25c07e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x86d611...0dda6f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x86fddf...f05028` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x8c6e50...617199` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x99ae91...c044bc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb270c7...ff20e0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb57ffd...ffffdf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb91b1a...2ad836` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xbc9e22...fe031a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc2262b...aecb40` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc439c1...d37350` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc8ea0d...1faef9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xcc3f1a...1bd434` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd44a94...ddd3f3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xed3215...b0c4dd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xee1af9...e7408c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf5844c...fc4d4f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf7b5bd...332eac` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xfb7980...1847a2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xfcefc1...82e708` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xfd5062...e8f59a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://skynet.certik.com/projects/babyswap) | CertiK | Audit | 2022-08 | stale | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x2b1d01...3e74e9`](./contracts/bsc-56/0x2b1d01c316a41c11dc1a3d691a9aca66c63e74e9/) | BabyToken | token | $213,478.08 | Verified native implementation with $213,478.08 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xad7a58...94ef1c`](./contracts/bsc-56/0xad7a5809dc2c0ebbec32786780b3469f3c94ef1c/) | BabyPoolV2 | core_logic | $19,234.89 | Verified native implementation with $19,234.89 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5da29e...cfd6e4`](./contracts/bsc-56/0x5da29e4afe94784fde4b7a62c5cd8a8aebcfd6e4/) | BabyVault | core_logic | $6,112.91 | Verified native implementation with $6,112.91 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3e1ead...e94dbc`](./contracts/bsc-56/0x3e1ead5cbe817689f4bdb96bceeb112fdbe94dbc/) | AutoBabyPool | core_logic | $2,250.45 | Verified native implementation with $2,250.45 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xa28072...363318`](./contracts/bsc-56/0xa2807219c6154d21d8d96acd55c4841d63363318/) | NFTFarm | token | $0.56 | Verified native implementation with $0.56 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x391079...aa4ae0`](./contracts/bsc-56/0x391079902156b90f0ece775350643fcfb5aa4ae0/) | NFTFarmV4 | token | $0.18 | Verified native implementation with $0.18 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2f5822...3f1a30`](./contracts/bsc-56/0x2f5822ad24ab4cddbcea82765ab851f86d3f1a30/) | NFTFarmV5 | token | $0.01 | Verified native implementation with $0.01 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3b6279...2554b1`](./contracts/bsc-56/0x3b6279a3826bc6d2c7216182a4c25fe43d2554b1/) | BabyAutoPoolV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x00a234...981169`](./contracts/bsc-56/0x00a2340610cb54ee68fb86f6be357d3731981169/) | BabyERC1155 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x103aa3...4975e7`](./contracts/bsc-56/0x103aa302b5f0acd1a4512033f103126faf4975e7/) | BabyERC721 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x7b8c94...e0e47f`](./contracts/bsc-56/0x7b8c94acec4a0faa0be9e99628dd24eb65e0e47f/) | BabyExchange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x86407b...f889da`](./contracts/bsc-56/0x86407bea2078ea5f5eb5a52b2caa963bc1f889da/) | BabyFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xcb5946...0842bb`](./contracts/bsc-56/0xcb59468d06b812f457c1763738217fb0430842bb/) | BabyFarmV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5588b2...b09aaf`](./contracts/bsc-56/0x5588b270b077310828610613ef2cebfb42b09aaf/) | BabyMarket | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x8317c4...e2ad32`](./contracts/bsc-56/0x8317c460c22a9958c27b4b6403b98d2ef4e2ad32/) | BabyNormalRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x540a80...73c86b`](./contracts/bsc-56/0x540a805dcb1b06820f1361c3ec3e89ba2273c86b/) | BabyRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x237b0a...93213d`](./contracts/bsc-56/0x237b0a07edc7932bdd3260393ae7a9570a93213d/) | BabyRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x8c2710...76fa7c`](./contracts/bsc-56/0x8c27103eee75eed8801b808ff23eb02c9876fa7c/) | BabySBTs | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x48c3fb...08baf1`](./contracts/bsc-56/0x48c3fb5d1c8820bf867efe1d8217c41ea208baf1/) | BabySwapFee | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x137f5d...dcf4ed`](./contracts/bsc-56/0x137f5d13295f2641124d5eb7283a20d0b4dcf4ed/) | BabySwapFeeV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6bef42...3d41d3`](./contracts/bsc-56/0x6bef4238761aee8ea773405d60ba93cd183d41d3/) | BabySwapFeeV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xde2ca9...62532b`](./contracts/bsc-56/0xde2ca923570de15263e3914af0637a38ea62532b/) | BabyTokenTransferProxy | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0e15b0...5d0eb6`](./contracts/bsc-56/0x0e15b08b3a370dd8d115c7ad38b09b69f25d0eb6/) | BabyWonderlandAirdrop | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc96df0...223f22`](./contracts/bsc-56/0xc96df0fc50cd4eed5823f1c12f92edc6f0223f22/) | BabyWonderlandMakeFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xa02062...09d6a9`](./contracts/bsc-56/0xa020624d733a1544b74449add598adefd709d6a9/) | BabyWonderlandMakeFactoryV2 | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xe4212d...39f887`](./contracts/bsc-56/0xe4212d35abc69812a8e88ed40e44759d8b39f887/) | BabyWonderlandReserve | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2556f4...1ddc80`](./contracts/bsc-56/0x2556f40f6de1a3e24433c215a71dba9a6d1ddc80/) | Bottle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x44e974...89c215`](./contracts/bsc-56/0x44e974d019f62627871638809dadd0e4b289c215/) | BoxFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x90055e...5e01d3`](./contracts/bsc-56/0x90055e75685d521fabb1ec567d1fbc63fc5e01d3/) | CalculateRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x7d6525...2b5e35`](./contracts/bsc-56/0x7d65254e85484b5ea062753d4b0f8a66d22b5e35/) | IDO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x31ba7a...de2849`](./contracts/bsc-56/0x31ba7a0b0f4f4c9b2fd0d84e0c66939324de2849/) | IFO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x03d13d...b798e3`](./contracts/bsc-56/0x03d13d1c5f0bfed4c5408e0e70322fd0a2b798e3/) | ILO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6533c0...0ae6d7`](./contracts/bsc-56/0x6533c0bb3f2834bf35448dc45216dfc6ef0ae6d7/) | INO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x614214...2cc759`](./contracts/bsc-56/0x6142143e5d5956c3076a0be2f6b44bfa4f2cc759/) | LandClaim | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc646d1...59c317`](./contracts/bsc-56/0xc646d16dbb448d3ec0a6c8430a3236e04559c317/) | LandFragments | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x170659...c4417e`](./contracts/bsc-56/0x170659f2d006db964d7b6d2df8906358e1c4417e/) | LandFragmentSynthesis | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x9105aa...9307e5`](./contracts/bsc-56/0x9105aa5fef5d8f91ef10d330970e0151f39307e5/) | LotteryTicket | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2d2434...dfe722`](./contracts/bsc-56/0x2d24344739530a1c6c63e4d594d56ef4e6dfe722/) | MarketFeeManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x860038...54bda7`](./contracts/bsc-56/0x860038f20e99192d5ca52e3c49591ebc4454bda7/) | MasterChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5063b4...bb6939`](./contracts/bsc-56/0x5063b4d6e50c0bee3ea5a5f8c50eb2adc3bb6939/) | MasterChefMigrator | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x48fcaf...af99ff`](./contracts/bsc-56/0x48fcafa24c5599d521447713efb4eeeea3af99ff/) | MasterChefTimelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xbc81c1...9274b2`](./contracts/bsc-56/0xbc81c169cf71daf17999970bd743c36f2b9274b2/) | MultHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x48de67...3aa526`](./contracts/bsc-56/0x48de67fc02cef912b037c56d7c1cc99e743aa526/) | MultHelperV2 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5db99d...fb47a3`](./contracts/bsc-56/0x5db99da94d967e268bbc4b6d9ffbe5da88fb47a3/) | Oracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc26a75...603597`](./contracts/bsc-56/0xc26a75fbb4c9e1fd06080a1c5f616de95e603597/) | OracleCaller | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc83829...82a9c9`](./contracts/bsc-56/0xc838290edd6810036bace1806dba0fca4482a9c9/) | PoolFactoryV2 | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc50297...38b1b6`](./contracts/bsc-56/0xc502973a9d49da86eea602b9e63b02d1ed38b1b6/) | RewardClaim | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x27e30d...e98a5c`](./contracts/bsc-56/0x27e30d282e664ad7db613176524f5b13cfe98a5c/) | ScratchOffTickets | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x9871a9...afd5b6`](./contracts/bsc-56/0x9871a9c79a4df5669f3ebbb7cbc09627ddafd5b6/) | SmartChefFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x098ccf...b20e05`](./contracts/bsc-56/0x098ccf88292d5fe4f71e9ce881f095ae02b20e05/) | SmartRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x50e55d...90c617`](./contracts/bsc-56/0x50e55d1ca48e02d00a950a6ca11ab16c5290c617/) | SwapMining | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x930c40...8da9be`](./contracts/bsc-56/0x930c4047d26467e4dec0fd199fb44a92298da9be/) | SyrupBar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x681392...9616ec`](./contracts/bsc-56/0x681392bf14623dc4ba704ec89bb2537d939616ec/) | TaskReward | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0e84f6...361a9d`](./contracts/bsc-56/0x0e84f67dd5f7e8f5e1496f02a9bdedb6d7361a9d/) | TokenLocker | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1df30a...07f3b4`](./contracts/bsc-56/0x1df30a49b1638a7479c97940bf3f2dc79a07f3b4/) | TOYSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1618b5...e107bb`](./contracts/bsc-56/0x1618b5a5aaab1e622a242c6982f3905c2ce107bb/) | TOYToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc501a6...5e871c`](./contracts/bsc-56/0xc501a6db19f7e088d9af57b5997045967f5e871c/) | VBabyDispatch | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x740ce9...9146c6`](./contracts/bsc-56/0x740ce924fc0c7fb904f151c08fb34160ec9146c6/) | VBabyDonateSchedule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x272d02...2bf963`](./contracts/bsc-56/0x272d02966c416ecf6fde052ec09dc089022bf963/) | VBabyFarmer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2d2176...86edc9`](./contracts/bsc-56/0x2d21762410cffe4ddbd991ae1503b031ef86edc9/) | VBabyFarmerV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xec6113...594a73`](./contracts/bsc-56/0xec6113ba8968bd4da9f7c909a0c42085a0594a73/) | VBabyOwner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x051344...e5cb22`](./contracts/bsc-56/0x05134427ca04fe0712b29fb50c4d573f63e5cb22/) | vBABYToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 83 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 29 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=1

Fork inheritance lineage and inherited audits are included when available.
