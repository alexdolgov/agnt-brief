# Agentic Audit Brief: BabySwap

⚠️ Lifecycle status: DEAD - TVL changed 1.0% over 90 days

## Project Overview

- Project: BabySwap (`babyswap`)
- Lifecycle: dead (Tier 0, 99.6% below peak)
- Generated: 2026-07-03T21:05:32.583Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-3e24
- Chains: bsc
- Contract surface: 86 unique implementations (134 raw deployments)
- DeFi Llama TVL: $1,301,945.33
- On-chain TVL (included contracts): $197,171.29
- TVL by chain: Bsc $197,171.29

## Project Description

Dexs. Structurally: 68 project-authored contract(s) across 1 chain(s); 6 ERC20 tokens, 4 ERC721 NFTs, 1 ERC1155 multi-token; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 7 functional families. Its contracts share 2 common project-authored base contract(s) (safeownable, bep20). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 194; live-surface contracts included: 134 (86 live, 48 unknown).
- Excluded by liveness: 60 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/38 (2.6%)
- Deployed-live implementations: 38 of 86 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/38
- Verified + Unaudited implementations: 37
- Verified by bytecode match: 0
- Unverified implementations: 48
- Unique implementations: 86
- Raw deployments: 134
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $197,171.29
- Latest audit: 2022-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of $197,171.29 represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CertiK | Tier 2 | 1 | 2.6% | 2022-08 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BabyWonderland | unknown | bsc | n/a | [`0x1fe7f2...1dd68d`](./contracts/bsc-56/0x1fe7f243eb49f3b9575f51a2f9fba9fc2c1dd68d/) | ✅ Audited |

### ⚠️ Verified + Unaudited (37)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BabyToken | unknown | bsc | n/a | 6 deployments: bsc [`0x2b1d01...3e74e9`](./contracts/bsc-56/0x2b1d01c316a41c11dc1a3d691a9aca66c63e74e9/); bsc `0x53e562...3d2657`; bsc `0x98ce25...6603d7`; bsc `0xbaa6ef...1e66f7`; bsc `0xd7dda7...f1b160`; bsc `0xf2c313...08c535` | ⚠️ Unaudited |
| BabyPoolV2 | core_logic | bsc | n/a | [`0xad7a58...94ef1c`](./contracts/bsc-56/0xad7a5809dc2c0ebbec32786780b3469f3c94ef1c/) | ⚠️ Unaudited |
| AutoBabyPool | core_logic | bsc | n/a | [`0x3e1ead...e94dbc`](./contracts/bsc-56/0x3e1ead5cbe817689f4bdb96bceeb112fdbe94dbc/) | ⚠️ Unaudited |
| NFTFarm | token | bsc | n/a | [`0xa28072...363318`](./contracts/bsc-56/0xa2807219c6154d21d8d96acd55c4841d63363318/) | ⚠️ Unaudited |
| NFTFarmV4 | token | bsc | n/a | [`0x391079...aa4ae0`](./contracts/bsc-56/0x391079902156b90f0ece775350643fcfb5aa4ae0/) | ⚠️ Unaudited |
| NFTFarmV5 | token | bsc | n/a | 2 deployments: bsc [`0x2f5822...3f1a30`](./contracts/bsc-56/0x2f5822ad24ab4cddbcea82765ab851f86d3f1a30/); bsc `0xadca12...798ea1` | ⚠️ Unaudited |
| BabyAutoPoolV2 | core_logic | bsc | n/a | [`0x3b6279...2554b1`](./contracts/bsc-56/0x3b6279a3826bc6d2c7216182a4c25fe43d2554b1/) | ⚠️ Unaudited |
| BabyERC721 | token | bsc | n/a | 2 deployments: bsc [`0x103aa3...4975e7`](./contracts/bsc-56/0x103aa302b5f0acd1a4512033f103126faf4975e7/); bsc `0x9f0225...fd91a8` | ⚠️ Unaudited |
| BabyFactory | registry | bsc | n/a | 4 deployments: bsc [`0x86407b...f889da`](./contracts/bsc-56/0x86407bea2078ea5f5eb5a52b2caa963bc1f889da/); bsc `0xa97629...8987a1`; bsc `0xabff61...8d70b6`; bsc `0xc695d8...f792a4` | ⚠️ Unaudited |
| BabyFarmV2 | unknown | bsc | n/a | [`0xcb5946...0842bb`](./contracts/bsc-56/0xcb59468d06b812f457c1763738217fb0430842bb/) | ⚠️ Unaudited |
| BabyProxyOFT | unknown | bsc | n/a | [`0x000c86...c28d43`](./contracts/bsc-56/0x000c86bb08f24261453a289fa3af839e23c28d43/) | ⚠️ Unaudited |
| BabyRouter | adapter | bsc | n/a | [`0x325e34...6b38bd`](./contracts/bsc-56/0x325e343f1de602396e256b67efd1f61c3a6b38bd/) | ⚠️ Unaudited |
| BabySBTs | unknown | bsc | n/a | [`0x8c2710...76fa7c`](./contracts/bsc-56/0x8c27103eee75eed8801b808ff23eb02c9876fa7c/) | ⚠️ Unaudited |
| BabySwapFeeV3 | unknown | bsc | n/a | 2 deployments: bsc [`0x6bef42...3d41d3`](./contracts/bsc-56/0x6bef4238761aee8ea773405d60ba93cd183d41d3/); bsc `0x90457d...09c4f0` | ⚠️ Unaudited |
| BabyVault | unknown | bsc | n/a | [`0x5da29e...cfd6e4`](./contracts/bsc-56/0x5da29e4afe94784fde4b7a62c5cd8a8aebcfd6e4/) | ⚠️ Unaudited |
| BabyWonderlandMakeFactoryV2 | unknown | bsc | n/a | [`0xa02062...09d6a9`](./contracts/bsc-56/0xa020624d733a1544b74449add598adefd709d6a9/) | ⚠️ Unaudited |
| BabyWonderlandReserve | unknown | bsc | n/a | [`0xe4212d...39f887`](./contracts/bsc-56/0xe4212d35abc69812a8e88ed40e44759d8b39f887/) | ⚠️ Unaudited |
| Bottle | unknown | bsc | n/a | 11 deployments: bsc [`0x2556f4...1ddc80`](./contracts/bsc-56/0x2556f40f6de1a3e24433c215a71dba9a6d1ddc80/); bsc `0x2ab54e...77bb68`; bsc `0x36e221...680c51`; bsc `0x3ac266...095bb5`; bsc `0x3ed1b1...643ce6`; bsc `0x40d7d4...53cca5`; bsc `0x4cd80f...587a3c`; bsc `0x4e06b2...a5a2df`; bsc `0x7e7886...959fe6`; bsc `0x95333b...e4082a`; bsc `0xf06823...fe90f9` | ⚠️ Unaudited |
| ILO | unknown | bsc | n/a | 7 deployments: bsc [`0x03d13d...b798e3`](./contracts/bsc-56/0x03d13d1c5f0bfed4c5408e0e70322fd0a2b798e3/); bsc `0x27a97c...72f556`; bsc `0x8fb1b5...6a60cc`; bsc `0x92f32a...4d3002`; bsc `0xb669b3...eb4e39`; bsc `0xcc4fe7...c5ef14`; bsc `0xde31fb...c5ff16` | ⚠️ Unaudited |
| LandFragments | unknown | bsc | n/a | [`0xc646d1...59c317`](./contracts/bsc-56/0xc646d16dbb448d3ec0a6c8430a3236e04559c317/) | ⚠️ Unaudited |
| LandFragmentSynthesis | unknown | bsc | n/a | 4 deployments: bsc [`0x170659...c4417e`](./contracts/bsc-56/0x170659f2d006db964d7b6d2df8906358e1c4417e/); bsc `0x63dbc1...043fb1`; bsc `0x8706a4...3b4051`; bsc `0xb1cee4...63cf9f` | ⚠️ Unaudited |
| MarketFeeManager | unknown | bsc | n/a | 4 deployments: bsc [`0x2d2434...dfe722`](./contracts/bsc-56/0x2d24344739530a1c6c63e4d594d56ef4e6dfe722/); bsc `0x4f808d...e1f906`; bsc `0x6748b1...396b04`; bsc `0xb7949a...a791d0` | ⚠️ Unaudited |
| MasterChef | unknown | bsc | n/a | 2 deployments: bsc [`0x860038...54bda7`](./contracts/bsc-56/0x860038f20e99192d5ca52e3c49591ebc4454bda7/); bsc `0xdfaa0e...0ac730` | ⚠️ Unaudited |
| MasterChefMigrator | unknown | bsc | n/a | 2 deployments: bsc [`0x5063b4...bb6939`](./contracts/bsc-56/0x5063b4d6e50c0bee3ea5a5f8c50eb2adc3bb6939/); bsc `0x8c344f...ce2928` | ⚠️ Unaudited |
| MasterChefTimelock | unknown | bsc | n/a | [`0x48fcaf...af99ff`](./contracts/bsc-56/0x48fcafa24c5599d521447713efb4eeeea3af99ff/) | ⚠️ Unaudited |
| Oracle | unknown | bsc | n/a | 3 deployments: bsc [`0x5db99d...fb47a3`](./contracts/bsc-56/0x5db99da94d967e268bbc4b6d9ffbe5da88fb47a3/); bsc `0x726cb7...1f9528`; bsc `0xb81d47...6fa468` | ⚠️ Unaudited |
| OracleCaller | unknown | bsc | n/a | [`0xc26a75...603597`](./contracts/bsc-56/0xc26a75fbb4c9e1fd06080a1c5f616de95e603597/) | ⚠️ Unaudited |
| RewardClaim | unknown | bsc | n/a | [`0xf28298...1f856d`](./contracts/bsc-56/0xf282988582538e58332a78edc98ea304921f856d/) | ⚠️ Unaudited |
| SwapMining | unknown | bsc | n/a | 3 deployments: bsc [`0x50e55d...90c617`](./contracts/bsc-56/0x50e55d1ca48e02d00a950a6ca11ab16c5290c617/); bsc `0x5c9f1a...e49636`; bsc `0x826cd3...c46b90` | ⚠️ Unaudited |
| SyrupBar | unknown | bsc | n/a | [`0x930c40...8da9be`](./contracts/bsc-56/0x930c4047d26467e4dec0fd199fb44a92298da9be/) | ⚠️ Unaudited |
| TaskReward | unknown | bsc | n/a | [`0x681392...9616ec`](./contracts/bsc-56/0x681392bf14623dc4ba704ec89bb2537d939616ec/) | ⚠️ Unaudited |
| TOYSwap | unknown | bsc | n/a | 5 deployments: bsc [`0x1df30a...07f3b4`](./contracts/bsc-56/0x1df30a49b1638a7479c97940bf3f2dc79a07f3b4/); bsc `0x44e609...b1c26d`; bsc `0x487b17...98375e`; bsc `0x67fda6...26d9a0`; bsc `0x9ef1b8...5e8587` | ⚠️ Unaudited |
| TOYToken | unknown | bsc | n/a | 6 deployments: bsc [`0x1618b5...e107bb`](./contracts/bsc-56/0x1618b5a5aaab1e622a242c6982f3905c2ce107bb/); bsc `0x476906...83693f`; bsc `0x820fa3...d095e6`; bsc `0x9f529e...ff495b`; bsc `0xcc1e6d...f33b4c`; bsc `0xfa8d65...569453` | ⚠️ Unaudited |
| VBabyDispatch | unknown | bsc | n/a | [`0xc501a6...5e871c`](./contracts/bsc-56/0xc501a6db19f7e088d9af57b5997045967f5e871c/) | ⚠️ Unaudited |
| VBabyDonateSchedule | unknown | bsc | n/a | [`0x740ce9...9146c6`](./contracts/bsc-56/0x740ce924fc0c7fb904f151c08fb34160ec9146c6/) | ⚠️ Unaudited |
| VBabyFarmerV2 | unknown | bsc | n/a | [`0x2d2176...86edc9`](./contracts/bsc-56/0x2d21762410cffe4ddbd991ae1503b031ef86edc9/) | ⚠️ Unaudited |
| vBABYToken | token | bsc | n/a | [`0x051344...e5cb22`](./contracts/bsc-56/0x05134427ca04fe0712b29fb50c4d573f63e5cb22/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (48)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x03657b...800c62` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0def70...f15a77` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1b802b...b86995` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x23a62a...0aefd4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x24b6af...b8e0be` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x26611b...ab9105` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3325fb...1cc1c8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x364d10...301589` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x399d7e...d109d5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3f2221...905fab` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4577f7...9f6b61` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x46fe30...6bcc13` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x47313a...4bbf02` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x47e84e...06d9e8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x47f08c...a90be9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x56b6be...b69189` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5c4370...72c5a8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5f0108...cff787` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5f4f15...342fce` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x61e53a...d194ac` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x682f26...2aaa3d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x69dc8e...69edf3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6c6fde...895fe2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6f1b8f...3c5aec` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7542bc...33ad43` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x797940...350b0f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7e1b40...f10005` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x807e1b...25c07e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x86d611...0dda6f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x86fddf...f05028` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8c6e50...617199` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x99ae91...c044bc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb270c7...ff20e0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb57ffd...ffffdf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb91b1a...2ad836` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbc9e22...fe031a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc2262b...aecb40` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc439c1...d37350` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc8ea0d...1faef9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcc3f1a...1bd434` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd44a94...ddd3f3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xed3215...b0c4dd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xee1af9...e7408c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf5844c...fc4d4f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf7b5bd...332eac` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfb7980...1847a2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfcefc1...82e708` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfd5062...e8f59a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [skynet.certik.com/projects/babyswap](https://skynet.certik.com/projects/babyswap) | CertiK | Audit | 2022-08 | stale | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0xad7a58...94ef1c`](./contracts/bsc-56/0xad7a5809dc2c0ebbec32786780b3469f3c94ef1c/) | BabyPoolV2 | core_logic | $16,140.86 | Verified native implementation with $16,140.86 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3e1ead...e94dbc`](./contracts/bsc-56/0x3e1ead5cbe817689f4bdb96bceeb112fdbe94dbc/) | AutoBabyPool | core_logic | $1,888.31 | Verified native implementation with $1,888.31 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xa28072...363318`](./contracts/bsc-56/0xa2807219c6154d21d8d96acd55c4841d63363318/) | NFTFarm | token | $0.47 | Verified native implementation with $0.47 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x391079...aa4ae0`](./contracts/bsc-56/0x391079902156b90f0ece775350643fcfb5aa4ae0/) | NFTFarmV4 | token | $0.15 | Verified native implementation with $0.15 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2f5822...3f1a30`](./contracts/bsc-56/0x2f5822ad24ab4cddbcea82765ab851f86d3f1a30/) | NFTFarmV5 | token | $0.01 | Verified native implementation with $0.01 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3b6279...2554b1`](./contracts/bsc-56/0x3b6279a3826bc6d2c7216182a4c25fe43d2554b1/) | BabyAutoPoolV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x103aa3...4975e7`](./contracts/bsc-56/0x103aa302b5f0acd1a4512033f103126faf4975e7/) | BabyERC721 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x86407b...f889da`](./contracts/bsc-56/0x86407bea2078ea5f5eb5a52b2caa963bc1f889da/) | BabyFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xcb5946...0842bb`](./contracts/bsc-56/0xcb59468d06b812f457c1763738217fb0430842bb/) | BabyFarmV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x000c86...c28d43`](./contracts/bsc-56/0x000c86bb08f24261453a289fa3af839e23c28d43/) | BabyProxyOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x325e34...6b38bd`](./contracts/bsc-56/0x325e343f1de602396e256b67efd1f61c3a6b38bd/) | BabyRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x8c2710...76fa7c`](./contracts/bsc-56/0x8c27103eee75eed8801b808ff23eb02c9876fa7c/) | BabySBTs | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6bef42...3d41d3`](./contracts/bsc-56/0x6bef4238761aee8ea773405d60ba93cd183d41d3/) | BabySwapFeeV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xf28298...1f856d`](./contracts/bsc-56/0xf282988582538e58332a78edc98ea304921f856d/) | RewardClaim | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x930c40...8da9be`](./contracts/bsc-56/0x930c4047d26467e4dec0fd199fb44a92298da9be/) | SyrupBar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc501a6...5e871c`](./contracts/bsc-56/0xc501a6db19f7e088d9af57b5997045967f5e871c/) | VBabyDispatch | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x740ce9...9146c6`](./contracts/bsc-56/0x740ce924fc0c7fb904f151c08fb34160ec9146c6/) | VBabyDonateSchedule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2d2176...86edc9`](./contracts/bsc-56/0x2d21762410cffe4ddbd991ae1503b031ef86edc9/) | VBabyFarmerV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x051344...e5cb22`](./contracts/bsc-56/0x05134427ca04fe0712b29fb50c4d573f63e5cb22/) | vBABYToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 21 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 65 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=1

Fork inheritance lineage and inherited audits are included when available.
