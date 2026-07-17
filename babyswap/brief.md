# Agentic Audit Brief: BabySwap

⚠️ Lifecycle status: DEAD - TVL changed 1.0% over 90 days

## Project Overview

- Project: BabySwap (`babyswap`)
- Lifecycle: dead (Tier 0, 99.6% below peak)
- Generated: 2026-07-04T14:53:05.154Z
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
| BabyWonderland | unknown | bsc | n/a | [`0x1fe7f243eb49f3b9575f51a2f9fba9fc2c1dd68d`](./contracts/bsc-56/0x1fe7f243eb49f3b9575f51a2f9fba9fc2c1dd68d/) | ✅ Audited |

### ⚠️ Verified + Unaudited (37)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BabyToken | unknown | bsc | n/a | 6 deployments: bsc [`0x2b1d01c316a41c11dc1a3d691a9aca66c63e74e9`](./contracts/bsc-56/0x2b1d01c316a41c11dc1a3d691a9aca66c63e74e9/); bsc `0x53e562b9b7e5e94b81f10e96ee70ad06df3d2657`; bsc `0x98ce25b2a1e8aa4cc3b81e31feca307a846603d7`; bsc `0xbaa6ef4298b7b1a0cc461dc9f6c303de461e66f7`; bsc `0xd7dda7284522aa6085fc534bcec975beb4f1b160`; bsc `0xf2c313a1dd63fb27c8d396aa567acf8c7a08c535` | ⚠️ Unaudited |
| BabyPoolV2 | core_logic | bsc | n/a | [`0xad7a5809dc2c0ebbec32786780b3469f3c94ef1c`](./contracts/bsc-56/0xad7a5809dc2c0ebbec32786780b3469f3c94ef1c/) | ⚠️ Unaudited |
| AutoBabyPool | core_logic | bsc | n/a | [`0x3e1ead5cbe817689f4bdb96bceeb112fdbe94dbc`](./contracts/bsc-56/0x3e1ead5cbe817689f4bdb96bceeb112fdbe94dbc/) | ⚠️ Unaudited |
| NFTFarm | token | bsc | n/a | [`0xa2807219c6154d21d8d96acd55c4841d63363318`](./contracts/bsc-56/0xa2807219c6154d21d8d96acd55c4841d63363318/) | ⚠️ Unaudited |
| NFTFarmV4 | token | bsc | n/a | [`0x391079902156b90f0ece775350643fcfb5aa4ae0`](./contracts/bsc-56/0x391079902156b90f0ece775350643fcfb5aa4ae0/) | ⚠️ Unaudited |
| NFTFarmV5 | token | bsc | n/a | 2 deployments: bsc [`0x2f5822ad24ab4cddbcea82765ab851f86d3f1a30`](./contracts/bsc-56/0x2f5822ad24ab4cddbcea82765ab851f86d3f1a30/); bsc `0xadca12e35766af075540163387e85822cf798ea1` | ⚠️ Unaudited |
| BabyAutoPoolV2 | core_logic | bsc | n/a | [`0x3b6279a3826bc6d2c7216182a4c25fe43d2554b1`](./contracts/bsc-56/0x3b6279a3826bc6d2c7216182a4c25fe43d2554b1/) | ⚠️ Unaudited |
| BabyERC721 | token | bsc | n/a | 2 deployments: bsc [`0x103aa302b5f0acd1a4512033f103126faf4975e7`](./contracts/bsc-56/0x103aa302b5f0acd1a4512033f103126faf4975e7/); bsc `0x9f0225d5c92b9cee4024f6406c4f13e546fd91a8` | ⚠️ Unaudited |
| BabyFactory | registry | bsc | n/a | 4 deployments: bsc [`0x86407bea2078ea5f5eb5a52b2caa963bc1f889da`](./contracts/bsc-56/0x86407bea2078ea5f5eb5a52b2caa963bc1f889da/); bsc `0xa97629459a9edd71940af74e4272a068768987a1`; bsc `0xabff615ad198e93b1450b1b9cfbc5a3f428d70b6`; bsc `0xc695d8a53fefc4d09bba615a015eac6c03f792a4` | ⚠️ Unaudited |
| BabyFarmV2 | unknown | bsc | n/a | [`0xcb59468d06b812f457c1763738217fb0430842bb`](./contracts/bsc-56/0xcb59468d06b812f457c1763738217fb0430842bb/) | ⚠️ Unaudited |
| BabyProxyOFT | unknown | bsc | n/a | [`0x000c86bb08f24261453a289fa3af839e23c28d43`](./contracts/bsc-56/0x000c86bb08f24261453a289fa3af839e23c28d43/) | ⚠️ Unaudited |
| BabyRouter | adapter | bsc | n/a | [`0x325e343f1de602396e256b67efd1f61c3a6b38bd`](./contracts/bsc-56/0x325e343f1de602396e256b67efd1f61c3a6b38bd/) | ⚠️ Unaudited |
| BabySBTs | unknown | bsc | n/a | [`0x8c27103eee75eed8801b808ff23eb02c9876fa7c`](./contracts/bsc-56/0x8c27103eee75eed8801b808ff23eb02c9876fa7c/) | ⚠️ Unaudited |
| BabySwapFeeV3 | unknown | bsc | n/a | 2 deployments: bsc [`0x6bef4238761aee8ea773405d60ba93cd183d41d3`](./contracts/bsc-56/0x6bef4238761aee8ea773405d60ba93cd183d41d3/); bsc `0x90457d1b1da076abf4cbbae1b248349d9809c4f0` | ⚠️ Unaudited |
| BabyVault | unknown | bsc | n/a | [`0x5da29e4afe94784fde4b7a62c5cd8a8aebcfd6e4`](./contracts/bsc-56/0x5da29e4afe94784fde4b7a62c5cd8a8aebcfd6e4/) | ⚠️ Unaudited |
| BabyWonderlandMakeFactoryV2 | unknown | bsc | n/a | [`0xa020624d733a1544b74449add598adefd709d6a9`](./contracts/bsc-56/0xa020624d733a1544b74449add598adefd709d6a9/) | ⚠️ Unaudited |
| BabyWonderlandReserve | unknown | bsc | n/a | [`0xe4212d35abc69812a8e88ed40e44759d8b39f887`](./contracts/bsc-56/0xe4212d35abc69812a8e88ed40e44759d8b39f887/) | ⚠️ Unaudited |
| Bottle | unknown | bsc | n/a | 11 deployments: bsc [`0x2556f40f6de1a3e24433c215a71dba9a6d1ddc80`](./contracts/bsc-56/0x2556f40f6de1a3e24433c215a71dba9a6d1ddc80/); bsc `0x2ab54e712f6c181a554e3d75202103189f77bb68`; bsc `0x36e2210fb6ed2fc94d05741e83ff998b22680c51`; bsc `0x3ac266990f0079a44b9827c1fcfc5a5afa095bb5`; bsc `0x3ed1b155749523ec4e42aa7094cf9531b9643ce6`; bsc `0x40d7d4bb6a4aab23a160cdd133101fcf1553cca5`; bsc `0x4cd80f83cacf2919c807ac82b81a33ab0a587a3c`; bsc `0x4e06b2e641c1720b214edd36ae8ccf4860a5a2df`; bsc `0x7e7886fc415c4c9a588ffafdcb57a01493959fe6`; bsc `0x95333b8723de359bc9e5ba2fdb3d17af65e4082a`; bsc `0xf068237db504d278cad0370d9943f1da6ffe90f9` | ⚠️ Unaudited |
| ILO | unknown | bsc | n/a | 7 deployments: bsc [`0x03d13d1c5f0bfed4c5408e0e70322fd0a2b798e3`](./contracts/bsc-56/0x03d13d1c5f0bfed4c5408e0e70322fd0a2b798e3/); bsc `0x27a97c6094b498c81fbdebcec2d576ccc672f556`; bsc `0x8fb1b54b1031fc00a4610158cb872597496a60cc`; bsc `0x92f32a2498bd119bccb18536a0698531bc4d3002`; bsc `0xb669b3ba3ee36fd243f6c40e7726a9fefdeb4e39`; bsc `0xcc4fe72db62f6c55b14617fbdc94f380c0c5ef14`; bsc `0xde31fb5a2062c1f1e130b9a5aee4f39425c5ff16` | ⚠️ Unaudited |
| LandFragments | unknown | bsc | n/a | [`0xc646d16dbb448d3ec0a6c8430a3236e04559c317`](./contracts/bsc-56/0xc646d16dbb448d3ec0a6c8430a3236e04559c317/) | ⚠️ Unaudited |
| LandFragmentSynthesis | unknown | bsc | n/a | 4 deployments: bsc [`0x170659f2d006db964d7b6d2df8906358e1c4417e`](./contracts/bsc-56/0x170659f2d006db964d7b6d2df8906358e1c4417e/); bsc `0x63dbc1eba5d03e18205eb1968817cef4c4043fb1`; bsc `0x8706a4df4c6c5637728bafa8c8fca88c2c3b4051`; bsc `0xb1cee43f8867b38e9173fb425a4519cfd663cf9f` | ⚠️ Unaudited |
| MarketFeeManager | unknown | bsc | n/a | 4 deployments: bsc [`0x2d24344739530a1c6c63e4d594d56ef4e6dfe722`](./contracts/bsc-56/0x2d24344739530a1c6c63e4d594d56ef4e6dfe722/); bsc `0x4f808d1477c2c195efd717749f24773240e1f906`; bsc `0x6748b1da85856b621f122cdbe5f23e4a50396b04`; bsc `0xb7949aaf569da049b3f140044f9025116ba791d0` | ⚠️ Unaudited |
| MasterChef | unknown | bsc | n/a | 2 deployments: bsc [`0x860038f20e99192d5ca52e3c49591ebc4454bda7`](./contracts/bsc-56/0x860038f20e99192d5ca52e3c49591ebc4454bda7/); bsc `0xdfaa0e08e357db0153927c7eabb492d1f60ac730` | ⚠️ Unaudited |
| MasterChefMigrator | unknown | bsc | n/a | 2 deployments: bsc [`0x5063b4d6e50c0bee3ea5a5f8c50eb2adc3bb6939`](./contracts/bsc-56/0x5063b4d6e50c0bee3ea5a5f8c50eb2adc3bb6939/); bsc `0x8c344fb1217110839f7e81c8c1cc8e5d76ce2928` | ⚠️ Unaudited |
| MasterChefTimelock | unknown | bsc | n/a | [`0x48fcafa24c5599d521447713efb4eeeea3af99ff`](./contracts/bsc-56/0x48fcafa24c5599d521447713efb4eeeea3af99ff/) | ⚠️ Unaudited |
| Oracle | unknown | bsc | n/a | 3 deployments: bsc [`0x5db99da94d967e268bbc4b6d9ffbe5da88fb47a3`](./contracts/bsc-56/0x5db99da94d967e268bbc4b6d9ffbe5da88fb47a3/); bsc `0x726cb726c9d8463f4c999c1d3b4fd558a51f9528`; bsc `0xb81d4780780e5b66ba80a17e8c496dd1616fa468` | ⚠️ Unaudited |
| OracleCaller | unknown | bsc | n/a | [`0xc26a75fbb4c9e1fd06080a1c5f616de95e603597`](./contracts/bsc-56/0xc26a75fbb4c9e1fd06080a1c5f616de95e603597/) | ⚠️ Unaudited |
| RewardClaim | unknown | bsc | n/a | [`0xf282988582538e58332a78edc98ea304921f856d`](./contracts/bsc-56/0xf282988582538e58332a78edc98ea304921f856d/) | ⚠️ Unaudited |
| SwapMining | unknown | bsc | n/a | 3 deployments: bsc [`0x50e55d1ca48e02d00a950a6ca11ab16c5290c617`](./contracts/bsc-56/0x50e55d1ca48e02d00a950a6ca11ab16c5290c617/); bsc `0x5c9f1a9ced41ccc5dcecda5afc317b72f1e49636`; bsc `0x826cd338c58e065f5fd84bab1c84051629c46b90` | ⚠️ Unaudited |
| SyrupBar | unknown | bsc | n/a | [`0x930c4047d26467e4dec0fd199fb44a92298da9be`](./contracts/bsc-56/0x930c4047d26467e4dec0fd199fb44a92298da9be/) | ⚠️ Unaudited |
| TaskReward | unknown | bsc | n/a | [`0x681392bf14623dc4ba704ec89bb2537d939616ec`](./contracts/bsc-56/0x681392bf14623dc4ba704ec89bb2537d939616ec/) | ⚠️ Unaudited |
| TOYSwap | unknown | bsc | n/a | 5 deployments: bsc [`0x1df30a49b1638a7479c97940bf3f2dc79a07f3b4`](./contracts/bsc-56/0x1df30a49b1638a7479c97940bf3f2dc79a07f3b4/); bsc `0x44e6098f791d68ba4ba7e3c9d45ccb4fc2b1c26d`; bsc `0x487b17d4f1286de88739cc933535d3b81e98375e`; bsc `0x67fda6d4af8e96c7fb6a211a5c5f0ab6e926d9a0`; bsc `0x9ef1b82d0c28627bff72f9484b89f199de5e8587` | ⚠️ Unaudited |
| TOYToken | unknown | bsc | n/a | 6 deployments: bsc [`0x1618b5a5aaab1e622a242c6982f3905c2ce107bb`](./contracts/bsc-56/0x1618b5a5aaab1e622a242c6982f3905c2ce107bb/); bsc `0x4769069e290e1cd7afb5753606dd4c6e9183693f`; bsc `0x820fa39207d8ab505fa411582b21ccd1e8d095e6`; bsc `0x9f529e50de4e90756152ce4bf7c465c38dff495b`; bsc `0xcc1e6d8045b2ecf1ec04eebaf8ea082a08f33b4c`; bsc `0xfa8d6565caa0490b5c9a5e57e645a234cb569453` | ⚠️ Unaudited |
| VBabyDispatch | unknown | bsc | n/a | [`0xc501a6db19f7e088d9af57b5997045967f5e871c`](./contracts/bsc-56/0xc501a6db19f7e088d9af57b5997045967f5e871c/) | ⚠️ Unaudited |
| VBabyDonateSchedule | unknown | bsc | n/a | [`0x740ce924fc0c7fb904f151c08fb34160ec9146c6`](./contracts/bsc-56/0x740ce924fc0c7fb904f151c08fb34160ec9146c6/) | ⚠️ Unaudited |
| VBabyFarmerV2 | unknown | bsc | n/a | [`0x2d21762410cffe4ddbd991ae1503b031ef86edc9`](./contracts/bsc-56/0x2d21762410cffe4ddbd991ae1503b031ef86edc9/) | ⚠️ Unaudited |
| vBABYToken | token | bsc | n/a | [`0x05134427ca04fe0712b29fb50c4d573f63e5cb22`](./contracts/bsc-56/0x05134427ca04fe0712b29fb50c4d573f63e5cb22/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | bsc | n/a | `0x03657b633423c218b000ca43c59445589c800c62` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0def70bfa366dc75c5f4b183f7397e4042f15a77` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1b802b50da173d60e34f1f1a9e47125b72b86995` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x23a62a4f9413a426e826725f41450d97a30aefd4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x24b6af5521b40d388e923699692944198eb8e0be` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x26611bc1b7bbfd61c684f7901fd4cf5186ab9105` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3325fbf79f37e2edac2139a4b2a0fe52d11cc1c8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x364d10edd4996667cadc939278744f023d301589` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x399d7ec539dd9dbd48a15500da6df0edafd109d5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3f2221e9521604b381df00513659dd9594905fab` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4577f7c9ee693724974a58f28d2a8b2c269f6b61` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x46fe3000e3f105abc269c1c56d6957af926bcc13` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x47313a908ac15a5cd1f8009c279f4a1c274bbf02` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x47e84e4dcc862ee5695c695d3cc995f41d06d9e8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x47f08cb2711a31112fa68ed4700beb283fa90be9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x56b6be1215edc606f14387ceb928a771f2b69189` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5c4370d578a93ab86c85438bf90599b28872c5a8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5f0108f2c5a6a09e100120907eaf1277e0cff787` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5f4f159dd58faffc149c64cfee9e2d1cb9342fce` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x61e53a118830eb34f8cda4500ed4ef3f92d194ac` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x682f267e50d9526405adc153a44f49e3892aaa3d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x69dc8ee38d27d39a499a49e2430842f7be69edf3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6c6fdef29f6f262435cc445ac2f15dc12b895fe2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6f1b8fcbb9d680dbdc8658f4e5811ed2e93c5aec` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7542bc18e0ad83a41bf127cf5cef61ad6833ad43` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x797940a30ff3f1ac1ceeb746690eeaae00350b0f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7e1b40832261cac977915eaf2cbf83c5b3f10005` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x807e1b600783032e366a85704d6359d5fe25c07e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x86d611ea32a4e0f9027d314b8f879d72660dda6f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x86fddf358fcd275a3749005478e2a4008ef05028` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8c6e5093883940abf2a77414ab2bdf3e0f617199` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x99ae912d7bdd6f32c72b675b33321a9905c044bc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb270c7c2761d148dec923319c3481c9390ff20e0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb57ffdb71d85bb5f482385a90d6f35633bffffdf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb91b1a95587619d54a62befea18a3a34b32ad836` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbc9e2230783d694f00844fb6ce435dcaf8fe031a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc2262b0044d3b1ba92f24261bf7ec08c95aecb40` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc439c158e070ad5fc1ecde234bd97c3509d37350` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc8ea0ddb39ea4534b4af773b53fd9c2a3b1faef9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcc3f1a62c446383d4a6c2e3a4ec74cb8201bd434` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd44a947ed506ff268a2785e46053f263c9ddd3f3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xed321576b17622a6752761a308aebc970db0c4dd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xee1af9ae8910790e2f6350e1b2656170c1e7408c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf5844c48f4488064d181cd4ca927588baefc4d4f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf7b5bdbd2747baa02642f687b8861b1fa8332eac` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfb798048231deb0331106d1b4eb8c3bac81847a2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfcefc13e8a7cf544b2b0bf5f5a45fde65982e708` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfd5062baf890ae0438d7949a296a6ffb4ce8f59a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [skynet.certik.com/projects/babyswap](https://skynet.certik.com/projects/babyswap) | CertiK | Audit | 2022-08 | stale | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x2b1d01c316a41c11dc1a3d691a9aca66c63e74e9`](./contracts/bsc-56/0x2b1d01c316a41c11dc1a3d691a9aca66c63e74e9/) | BabyToken | unknown | $179,141.49 | Verified native implementation with $179,141.49 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xad7a5809dc2c0ebbec32786780b3469f3c94ef1c`](./contracts/bsc-56/0xad7a5809dc2c0ebbec32786780b3469f3c94ef1c/) | BabyPoolV2 | core_logic | $16,140.86 | Verified native implementation with $16,140.86 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3e1ead5cbe817689f4bdb96bceeb112fdbe94dbc`](./contracts/bsc-56/0x3e1ead5cbe817689f4bdb96bceeb112fdbe94dbc/) | AutoBabyPool | core_logic | $1,888.31 | Verified native implementation with $1,888.31 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xa2807219c6154d21d8d96acd55c4841d63363318`](./contracts/bsc-56/0xa2807219c6154d21d8d96acd55c4841d63363318/) | NFTFarm | token | $0.47 | Verified native implementation with $0.47 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x391079902156b90f0ece775350643fcfb5aa4ae0`](./contracts/bsc-56/0x391079902156b90f0ece775350643fcfb5aa4ae0/) | NFTFarmV4 | token | $0.15 | Verified native implementation with $0.15 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2f5822ad24ab4cddbcea82765ab851f86d3f1a30`](./contracts/bsc-56/0x2f5822ad24ab4cddbcea82765ab851f86d3f1a30/) | NFTFarmV5 | token | $0.01 | Verified native implementation with $0.01 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3b6279a3826bc6d2c7216182a4c25fe43d2554b1`](./contracts/bsc-56/0x3b6279a3826bc6d2c7216182a4c25fe43d2554b1/) | BabyAutoPoolV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x103aa302b5f0acd1a4512033f103126faf4975e7`](./contracts/bsc-56/0x103aa302b5f0acd1a4512033f103126faf4975e7/) | BabyERC721 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x86407bea2078ea5f5eb5a52b2caa963bc1f889da`](./contracts/bsc-56/0x86407bea2078ea5f5eb5a52b2caa963bc1f889da/) | BabyFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xcb59468d06b812f457c1763738217fb0430842bb`](./contracts/bsc-56/0xcb59468d06b812f457c1763738217fb0430842bb/) | BabyFarmV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x000c86bb08f24261453a289fa3af839e23c28d43`](./contracts/bsc-56/0x000c86bb08f24261453a289fa3af839e23c28d43/) | BabyProxyOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x325e343f1de602396e256b67efd1f61c3a6b38bd`](./contracts/bsc-56/0x325e343f1de602396e256b67efd1f61c3a6b38bd/) | BabyRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x8c27103eee75eed8801b808ff23eb02c9876fa7c`](./contracts/bsc-56/0x8c27103eee75eed8801b808ff23eb02c9876fa7c/) | BabySBTs | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6bef4238761aee8ea773405d60ba93cd183d41d3`](./contracts/bsc-56/0x6bef4238761aee8ea773405d60ba93cd183d41d3/) | BabySwapFeeV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5da29e4afe94784fde4b7a62c5cd8a8aebcfd6e4`](./contracts/bsc-56/0x5da29e4afe94784fde4b7a62c5cd8a8aebcfd6e4/) | BabyVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xa020624d733a1544b74449add598adefd709d6a9`](./contracts/bsc-56/0xa020624d733a1544b74449add598adefd709d6a9/) | BabyWonderlandMakeFactoryV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xe4212d35abc69812a8e88ed40e44759d8b39f887`](./contracts/bsc-56/0xe4212d35abc69812a8e88ed40e44759d8b39f887/) | BabyWonderlandReserve | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2556f40f6de1a3e24433c215a71dba9a6d1ddc80`](./contracts/bsc-56/0x2556f40f6de1a3e24433c215a71dba9a6d1ddc80/) | Bottle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x03d13d1c5f0bfed4c5408e0e70322fd0a2b798e3`](./contracts/bsc-56/0x03d13d1c5f0bfed4c5408e0e70322fd0a2b798e3/) | ILO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc646d16dbb448d3ec0a6c8430a3236e04559c317`](./contracts/bsc-56/0xc646d16dbb448d3ec0a6c8430a3236e04559c317/) | LandFragments | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x170659f2d006db964d7b6d2df8906358e1c4417e`](./contracts/bsc-56/0x170659f2d006db964d7b6d2df8906358e1c4417e/) | LandFragmentSynthesis | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2d24344739530a1c6c63e4d594d56ef4e6dfe722`](./contracts/bsc-56/0x2d24344739530a1c6c63e4d594d56ef4e6dfe722/) | MarketFeeManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x860038f20e99192d5ca52e3c49591ebc4454bda7`](./contracts/bsc-56/0x860038f20e99192d5ca52e3c49591ebc4454bda7/) | MasterChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5063b4d6e50c0bee3ea5a5f8c50eb2adc3bb6939`](./contracts/bsc-56/0x5063b4d6e50c0bee3ea5a5f8c50eb2adc3bb6939/) | MasterChefMigrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x48fcafa24c5599d521447713efb4eeeea3af99ff`](./contracts/bsc-56/0x48fcafa24c5599d521447713efb4eeeea3af99ff/) | MasterChefTimelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5db99da94d967e268bbc4b6d9ffbe5da88fb47a3`](./contracts/bsc-56/0x5db99da94d967e268bbc4b6d9ffbe5da88fb47a3/) | Oracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc26a75fbb4c9e1fd06080a1c5f616de95e603597`](./contracts/bsc-56/0xc26a75fbb4c9e1fd06080a1c5f616de95e603597/) | OracleCaller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xf282988582538e58332a78edc98ea304921f856d`](./contracts/bsc-56/0xf282988582538e58332a78edc98ea304921f856d/) | RewardClaim | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x50e55d1ca48e02d00a950a6ca11ab16c5290c617`](./contracts/bsc-56/0x50e55d1ca48e02d00a950a6ca11ab16c5290c617/) | SwapMining | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x930c4047d26467e4dec0fd199fb44a92298da9be`](./contracts/bsc-56/0x930c4047d26467e4dec0fd199fb44a92298da9be/) | SyrupBar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x681392bf14623dc4ba704ec89bb2537d939616ec`](./contracts/bsc-56/0x681392bf14623dc4ba704ec89bb2537d939616ec/) | TaskReward | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1df30a49b1638a7479c97940bf3f2dc79a07f3b4`](./contracts/bsc-56/0x1df30a49b1638a7479c97940bf3f2dc79a07f3b4/) | TOYSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1618b5a5aaab1e622a242c6982f3905c2ce107bb`](./contracts/bsc-56/0x1618b5a5aaab1e622a242c6982f3905c2ce107bb/) | TOYToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc501a6db19f7e088d9af57b5997045967f5e871c`](./contracts/bsc-56/0xc501a6db19f7e088d9af57b5997045967f5e871c/) | VBabyDispatch | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x740ce924fc0c7fb904f151c08fb34160ec9146c6`](./contracts/bsc-56/0x740ce924fc0c7fb904f151c08fb34160ec9146c6/) | VBabyDonateSchedule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2d21762410cffe4ddbd991ae1503b031ef86edc9`](./contracts/bsc-56/0x2d21762410cffe4ddbd991ae1503b031ef86edc9/) | VBabyFarmerV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x05134427ca04fe0712b29fb50c4d573f63e5cb22`](./contracts/bsc-56/0x05134427ca04fe0712b29fb50c4d573f63e5cb22/) | vBABYToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 39 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 47 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=1

Fork inheritance lineage and inherited audits are included when available.
