# Agentic Audit Brief: PumpSpace

## Project Overview

- Project: PumpSpace (`pumpspace`)
- Website: [https://pumpspace.io/](https://pumpspace.io/)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-05-25T15:41:41.447Z
- Pipeline run: v2-pipeline-2026-05-25-eff36e-79e6
- Chains: avalanche
- Contract surface: 667 unique implementations (787 raw deployments)
- DeFi Llama TVL: $4,025,207.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

PumpSpace is a decentralized exchange (DEX) protocol on Avalanche that facilitates token swaps and liquidity provision. It appears to support automated market making and yield farming, with multiple product versions indicating iterative upgrades.

### Architecture

PumpSpace V3 appears to be an evolution of the original PumpSpace, sharing the same deployer cluster and proxy patterns. Both families rely on a common set of proxy implementations (e.g., ERC1967Proxy, TransparentUpgradeableProxy) for upgradeability, indicating shared infrastructure.

## Audit Coverage Summary

- Verified implementations audited: 2/7 (28.6%)
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 660
- Unique implementations: 667
- Raw deployments: 787
- Audits discovered: 4
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-01 (aging)
- Staleness: 0 fresh, 3 aging, 0 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Cyberscope | Tier 2 | 2 | 28.6% | 2025-01 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| DexRouter | adapter | avalanche | [`0xe8a55f...a59946`](./contracts/avalanche-43114/0xe8a55f6b4ee94d2dbe02e724bc23228e15a59946/) | ✅ Audited |
| TransparentUpgradeableProxy | proxy | avalanche | 83 deployments: avalanche [`0x0091eb...efe2e8`](./contracts/avalanche-43114/0x0091eb7bd9b40d258695335bebf07f4d31efe2e8/); avalanche `0x03be74...f92f39`; avalanche `0x0565d2...b95093`; avalanche `0x0567ea...2e61d9`; avalanche `0x05c36f...14f9a9`; avalanche `0x0655fa...c46f6a`; avalanche `0x08ea82...18a999`; avalanche `0x0ceca8...f97e7c`; avalanche `0x170af5...fa0cf1`; avalanche `0x1bc3b0...cef890`; avalanche `0x1c654e...19128d`; avalanche `0x1cb5af...2f7762`; avalanche `0x1cf028...f2d30d`; avalanche `0x20d6cc...25471f`; avalanche `0x264f4f...48966d`; avalanche `0x2b0771...f95ac0`; avalanche `0x2b20f3...3c6a78`; avalanche `0x33ad5c...40a190`; avalanche `0x33f436...74ef65`; avalanche `0x36206c...9b38c8`; avalanche `0x377366...12b342`; avalanche `0x38554e...dbb0dc`; avalanche `0x388983...cd0aca`; avalanche `0x3d04c0...a2fa41`; avalanche `0x40b937...1e6e4e`; avalanche `0x4731bc...711d8d`; avalanche `0x53cb24...bc88d7`; avalanche `0x53ee88...b640ba`; avalanche `0x558ff3...3dca38`; avalanche `0x567a6d...c37205`; avalanche `0x56d6cd...2128dd`; avalanche `0x5f4038...e7798e`; avalanche `0x63eadf...7102c7`; avalanche `0x65ba62...cef275`; avalanche `0x68e315...163136`; avalanche `0x6ca89f...cb9fcf`; avalanche `0x6f0885...7811bf`; avalanche `0x7023be...77f0d6`; avalanche `0x703079...09fc31`; avalanche `0x72a992...514018`; avalanche `0x77c8df...4f474f`; avalanche `0x7c12fc...4d046c`; avalanche `0x83fff7...021a73`; avalanche `0x84c931...284c97`; avalanche `0x89aee1...f05dad`; avalanche `0x8a23e3...e321bf`; avalanche `0x8f164d...76be5c`; avalanche `0x9070fb...55e55e`; avalanche `0x95207b...f550cf`; avalanche `0x9c6bbe...7e1b2f`; avalanche `0xa84304...0547ba`; avalanche `0xa90f84...8078e8`; avalanche `0xaf52c1...838de2`; avalanche `0xb10d16...7e5866`; avalanche `0xb53486...17fa72`; avalanche `0xb56ef6...660c48`; avalanche `0xb6e2f9...ebfda8`; avalanche `0xb71a01...1e1f91`; avalanche `0xb8c9d8...849657`; avalanche `0xbba343...960acf`; avalanche `0xbce94b...050961`; avalanche `0xc13e4d...5de4b3`; avalanche `0xc1ecba...146bfd`; avalanche `0xc5fd93...7174bd`; avalanche `0xc7a901...8aa357`; avalanche `0xc91c9f...d3a04e`; avalanche `0xd4ed16...5332ce`; avalanche `0xd6d1dc...0dd368`; avalanche `0xd6f5fe...2ddfb0`; avalanche `0xdbf831...93a7bf`; avalanche `0xdcf100...587dfc`; avalanche `0xdf724b...34e3e5`; avalanche `0xe64bcb...201a27`; avalanche `0xe749c1...037ced`; avalanche `0xe8288d...f7950a`; avalanche `0xe88ab8...b9b0b1`; avalanche `0xebe319...c0e78f`; avalanche `0xee27a3...598068`; avalanche `0xee9d94...6fca06`; avalanche `0xfbff2e...f86d30`; avalanche `0xfc320c...8276fd`; avalanche `0xfddb02...90f7a4`; avalanche `0xfea23d...e2dc52` | ✅ Audited |

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AutoFarmV2_CrossChain | unknown | avalanche | [`0x864a0b...23f213`](./contracts/avalanche-43114/0x864a0b7f8466247a0e44558d29cdc37d4623f213/) | ⚠️ Unaudited |
| ERC1967Proxy | proxy | avalanche | 38 deployments: avalanche [`0x08b61d...ececb1`](./contracts/avalanche-43114/0x08b61d8879602e4f38739bba2505b609e1ececb1/); avalanche `0x1d2a2e...a4d094`; avalanche `0x273630...19501c`; avalanche `0x2ab55a...d3a0e9`; avalanche `0x2d0c9b...b124bb`; avalanche `0x2ff702...d44e62`; avalanche `0x31b5e9...02e832`; avalanche `0x36494c...97066f`; avalanche `0x3bd66a...19cd29`; avalanche `0x3de4f7...3f29cc`; avalanche `0x511d2f...2a656d`; avalanche `0x55cee3...2cf36a`; avalanche `0x63e679...617aac`; avalanche `0x6cdccf...a2a647`; avalanche `0x718531...eaa888`; avalanche `0x760ba3...57243e`; avalanche `0x767987...a106e9`; avalanche `0x84952d...f29ff3`; avalanche `0x86b51c...e53dd3`; avalanche `0x87c0fc...203067`; avalanche `0x8e89cc...6ec4a1`; avalanche `0x90ba8d...49205b`; avalanche `0x91d6a2...8262e5`; avalanche `0x98a266...8d3a06`; avalanche `0x9d3641...cc49f8`; avalanche `0xa0d092...82682f`; avalanche `0xa56957...7266d1`; avalanche `0xaf82f0...89954f`; avalanche `0xb9bb8f...a32feb`; avalanche `0xc1a744...229af4`; avalanche `0xc7ea0e...4cf887`; avalanche `0xc8d07d...6d6a6d`; avalanche `0xd0dc4e...79c049`; avalanche `0xd5eeb0...7358e9`; avalanche `0xe2245a...2f1e92`; avalanche `0xf8ba27...06c4e0`; avalanche `0xfa7bf5...fe8e5e`; avalanche `0xfc14c5...f00d01` | ⚠️ Unaudited |
| ProxyAdmin | governance | avalanche | 2 deployments: avalanche [`0x2116ac...82ce66`](./contracts/avalanche-43114/0x2116ac862bc0a5b7b01cf1dd92f6fe127d82ce66/); avalanche `0xdce8c2...d00214` | ⚠️ Unaudited |
| PumpSpecialRouter | adapter | avalanche | [`0x4ec533...8390e2`](./contracts/avalanche-43114/0x4ec53317186098956956ae9a7092853e218390e2/) | ⚠️ Unaudited |
| PumpSplitRouter | adapter | avalanche | [`0x27d8d5...a553ba`](./contracts/avalanche-43114/0x27d8d5d536581daaf743abaf339f4658e9a553ba/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (660)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Proxy (impl: 0x0200039ac8d44de3ce6c81e2a8c98bf061eebb05) | proxy | avalanche | `0x0dc1c1...46911f` | ❓ Unverified |
| Proxy (impl: 0x05d02325aafd74d50a3a41dbcb70b490b34b1a62) | proxy | avalanche | `0x40a58f...c33879` | ❓ Unverified |
| Proxy (impl: 0x07482f5b2d886815d15ff1706f37377674b474a3) | proxy | avalanche | `0x743bcd...d753cb` | ❓ Unverified |
| Proxy (impl: 0x131b99397116049949da71b106178634beba273e) | proxy | avalanche | `0xd963a4...6fc19d` | ❓ Unverified |
| Proxy (impl: 0x158b65bcfdc2f59375b50af95a1818a44b0b1b1b) | proxy | avalanche | `0x42ea48...e318f3` | ❓ Unverified |
| Proxy (impl: 0x1b43b93a9c95a76de0a0bc1adf6fb6a6dacab7d9) | proxy | avalanche | `0xfcc0c0...440eed` | ❓ Unverified |
| Proxy (impl: 0x1e01af06b622abdcdd08ba53ff8303f542bd8861) | proxy | avalanche | `0x4eed58...3494f8` | ❓ Unverified |
| Proxy (impl: 0x20aa1df030697de5d2c115657788e6ba850eaec3) | proxy | avalanche | `0x2d2001...dab76b` | ❓ Unverified |
| Proxy (impl: 0x2f5d892470359af99e0a698ea1b094a64721b036) | proxy | avalanche | `0x4e42d0...0c666b` | ❓ Unverified |
| Proxy (impl: 0x301e17424de779f1a56f5158db4328c8deedd3ed) | proxy | avalanche | `0xe04348...710714` | ❓ Unverified |
| Proxy (impl: 0x36ab89037b01400f3c0705bd06a57808cd9ea46f) | proxy | avalanche | `0xb72761...8e9d2c` | ❓ Unverified |
| Proxy (impl: 0x3d8915fe56ad51fe608ceb716e29f17ae65044a7) | proxy | avalanche | `0xadcae6...370a8e` | ❓ Unverified |
| Proxy (impl: 0x3e0e421abc6acac7b53df2a9507ee23bedc9e1c1) | proxy | avalanche | `0x15a206...7432be` | ❓ Unverified |
| Proxy (impl: 0x3fec1de40b2765071eb3066e1e6509d992829193) | proxy | avalanche | `0x0680b6...253c01` | ❓ Unverified |
| Proxy (impl: 0x41c299ea121250594ecf565f3e36aa2642dca0d6) | proxy | avalanche | `0xc4f881...189af6` | ❓ Unverified |
| Proxy (impl: 0x4e2c04006168a5980c2d9750776556fd749da2a1) | proxy | avalanche | `0x2c93ac...39ec82` | ❓ Unverified |
| Proxy (impl: 0x53bcafe3b37977eb6a5896296a40e550faa95632) | proxy | avalanche | `0xa657b3...9441ee` | ❓ Unverified |
| Proxy (impl: 0x558e514060b356ef39011d2296fe04ed29e63b57) | proxy | avalanche | `0xae8c76...e7a932` | ❓ Unverified |
| Proxy (impl: 0x5d6f3d504a5d9f89c9e6878506d12a8f6087f8f5) | proxy | avalanche | `0x75ffde...2a228f` | ❓ Unverified |
| Proxy (impl: 0x5f1e256ab506f3da870afa61abba5ad01f92c317) | proxy | avalanche | `0x551576...da6c20` | ❓ Unverified |
| Proxy (impl: 0x66527d593b1bcabafa6fdbac45e0d4a7f2a18675) | proxy | avalanche | `0x56b54a...df3e42` | ❓ Unverified |
| Proxy (impl: 0x6e8558b74fd389d1eb9a2feedeaa10147631b8a0) | proxy | avalanche | `0x724aa2...9ac29b` | ❓ Unverified |
| Proxy (impl: 0x701dbdb2935a0285f9ee2d42a0da1fcd9d6749a3) | proxy | avalanche | `0x91db2a...35c189` | ❓ Unverified |
| Proxy (impl: 0x747ad1420926e117796089956fcf07872ee4f67a) | proxy | avalanche | `0x7d336b...8081ec` | ❓ Unverified |
| Proxy (impl: 0x770e82ed4205bcaffd8a82284e80f4cfe256f89a) | proxy | avalanche | `0xb73891...f0eaa9` | ❓ Unverified |
| Proxy (impl: 0x849f009eb89656c28bdb51d6dc0fc543167b5639) | proxy | avalanche | `0x400000...4a82bb` | ❓ Unverified |
| Proxy (impl: 0x85a860245a4775b686a1896c48b63877d2a02555) | proxy | avalanche | `0x021890...94e259` | ❓ Unverified |
| Proxy (impl: 0x87e7c2b70c3af4e731d88fdc0f7e1505d524fc35) | proxy | avalanche | `0xd645e3...2b709c` | ❓ Unverified |
| Proxy (impl: 0x8905f6ba3c0453844205224f2addbe6e48a90107) | proxy | avalanche | `0xb06de2...373b4f` | ❓ Unverified |
| Proxy (impl: 0x8e60710c70f763b9706a43e92b89335802494c65) | proxy | avalanche | `0x3d5aa8...af3d73` | ❓ Unverified |
| Proxy (impl: 0x91860f682b1ccd47ba85a9787e94b11d6ba1e2c3) | proxy | avalanche | `0x8a8fb3...6ff389` | ❓ Unverified |
| Proxy (impl: 0x99f9828ac84249867a602de62c9bc62ecc22a4cd) | proxy | avalanche | `0x8e04ec...8566fb` | ❓ Unverified |
| Proxy (impl: 0xa1cfd50512885fde2d3c5e4e63aab770e713929d) | proxy | avalanche | `0x06c551...8283c6` | ❓ Unverified |
| Proxy (impl: 0xa25fd4b25f309560f640822284cd959e6cf8db10) | proxy | avalanche | `0xacfd67...4b7606` | ❓ Unverified |
| Proxy (impl: 0xa71d84510be9ce10547cc7093923d9e942d20291) | proxy | avalanche | `0x86c7aa...76fa05` | ❓ Unverified |
| Proxy (impl: 0xa8cd91448ab479e9874afd696fb87fd22003c80c) | proxy | avalanche | `0xc75da9...b149a2` | ❓ Unverified |
| Proxy (impl: 0xa95b3580d21fb1616dc6d06be2ecdffd77ca15ea) | proxy | avalanche | `0x00f8a3...459674` | ❓ Unverified |
| Proxy (impl: 0xac303dbf6630c2bfa8416e152c407a6a5d5fc304) | proxy | avalanche | `0x61e8f7...c47775` | ❓ Unverified |
| Proxy (impl: 0xaee3e155463f4391f96ff9f9e68ea86f14fab015) | proxy | avalanche | `0x9b5599...b91067` | ❓ Unverified |
| Proxy (impl: 0xb02304a6040afbb62c9fc7741780727b73b18a2a) | proxy | avalanche | `0xd211b1...c679d5` | ❓ Unverified |
| Proxy (impl: 0xb2cc1202d56e7053e857fac263d12d508f508f89) | proxy | avalanche | `0x3c5940...5b83b7` | ❓ Unverified |
| Proxy (impl: 0xb45aa82cba5a8710ac67b3ad8644fd24d21c0678) | proxy | avalanche | `0x038dbe...44f73d` | ❓ Unverified |
| Proxy (impl: 0xbc6c98354538895bb7342a92f6012f234109e6f1) | proxy | avalanche | `0x609307...c4a74f` | ❓ Unverified |
| Proxy (impl: 0xc113504f112269c3793be33ca5b8c07c0c1a9213) | proxy | avalanche | `0xb8e73f...337984` | ❓ Unverified |
| Proxy (impl: 0xcd52ccdf9adfebd52cd2cc1d992543bd981cdc7c) | proxy | avalanche | `0xa6977a...f3aed0` | ❓ Unverified |
| Proxy (impl: 0xd0dbc97c86dc8dbec2589a0f61698530e553cded) | proxy | avalanche | `0xe0e20b...3f471a` | ❓ Unverified |
| Proxy (impl: 0xd261f34948173c63529b8b0eb964b093eab17fb2) | proxy | avalanche | `0x96329f...a6f0ce` | ❓ Unverified |
| Proxy (impl: 0xd7a7517c6e5dca8610c40382a46f3531fd22ea0d) | proxy | avalanche | `0xc1e519...6f2607` | ❓ Unverified |
| Proxy (impl: 0xd847d61dc3d6e8ef6b392b04aa7ef14b4e921bcb) | proxy | avalanche | `0xc70160...6c26bc` | ❓ Unverified |
| Proxy (impl: 0xe27a680cdac47e76038876870400dfa97fa81349) | proxy | avalanche | `0x641697...524e9f` | ❓ Unverified |
| Proxy (impl: 0xed215c76cb0963983626fd4d87e76d4de7f2484c) | proxy | avalanche | `0xae5160...bd0b03` | ❓ Unverified |
| Proxy (impl: 0xf52e5b120f049b9ee8c1dc8a7ebec7b1437db67f) | proxy | avalanche | `0xccb7de...e3f27c` | ❓ Unverified |
| Proxy (impl: 0xf582f02738d4cbec56900b9e220bdb6a6f15ef50) | proxy | avalanche | `0x096f6d...10140c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x0086e2...210f85` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x0095e0...1bff5b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x00a194...1b608c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x00b59f...31bec7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x020003...eebb05` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x022f2b...6d06de` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x02a2b2...70e01d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x02a9d3...4cd6a5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x03868a...5e2e62` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x04b7b6...ce758f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x051a56...8da3ea` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x05a6fb...e5fc74` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x05d023...4b1a62` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x06667b...d4a0e4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x06698b...30f08b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x06f227...30a18c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x07482f...b474a3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x0771e7...54f8af` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x07df97...ca336e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x084283...c5e84a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x08c4b5...20e447` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x09a88b...6ef186` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x09d116...5c558e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x0a31f5...95d4d4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x0a5a62...83331e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x0af639...1ab80a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x0c42f7...0f8cc2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x0c54c0...e86233` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x0c81c0...bfce1b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x0cd21d...356609` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x0cd620...66cc47` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x0cdbd0...544695` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x0cfeae...2e4cc8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x0d3638...bc1063` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x0d7781...9d8ba7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x0e3d14...9c724c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x0f63c6...831550` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x0f656b...2fed89` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x0f969e...7e88a9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x100545...3af6b2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x1060e0...cc375c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x10f8a0...9e7061` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x110092...5efe50` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x11a9fe...6765a5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x11f41a...cecfda` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x131b99...ba273e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x13e732...a0d3ee` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x14022c...9a27a8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x15740c...208777` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x158b65...0b1b1b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x15eb03...0bd635` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x160116...bd60f2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x168020...5793bf` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x1689d2...ca8cad` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x16b926...901886` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x16d91b...947bf4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x172dad...fc9655` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x17890d...b2b9b4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x1882f2...6d3ab7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x18d773...4cd439` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x18f500...97a769` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x198763...24ef01` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x19e9eb...3d2f32` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x1ab8b6...6be9fc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x1aeaa0...7b3535` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x1b4392...be8b07` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x1b43b9...cab7d9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x1bb992...749ad2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x1bf7b8...ffd2d5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x1d76ca...382250` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x1de4b8...dd44f3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x1e01af...bd8861` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x1ea538...7cff85` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x1f72de...f0f376` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x1f7d74...b53a5e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x1fdc90...c71086` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x201408...23afec` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x2071a5...2e7ebc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x20aa1d...0eaec3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x20d037...86f841` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x21bbf1...2ca04e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x21f6b1...349ec4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x220966...ebcfd2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x220cc0...42aabb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x22351f...0159be` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x225033...a54ac6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x2270d6...da0be3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x22b4dc...15f3f4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x235727...3d1e58` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x23838d...19062f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x23a179...10e948` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x241789...2b2c0a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x253d59...02d0e9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x2598bc...9afa13` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x25c0d5...69c751` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x25e8b9...bd7bd4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x2648ec...23142f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x264af9...fe85b3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x26b42c...4d4616` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x26be4d...9258a5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x273eb3...69ffa0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x2792cf...a35a42` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x29ab40...b10eaf` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x29dc03...404e35` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x2a7bc0...bb5da6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x2b1b1a...c63725` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x2b9406...985f98` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x2bbd66...ef60be` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x2d00ab...959895` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x2d3651...3bbd23` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x2d8f40...52ef9d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x2df8ed...172562` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x2e0e4c...c0dc16` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x2f332a...0a3974` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x2f5d89...21b036` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x2fc55f...0caa0e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x301e17...edd3ed` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x30a7c4...76f198` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x30fc3b...df5897` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x317e2f...754ef0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x34ad08...f2ec26` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x34bf08...230d8c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x352bb3...b47e14` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x354273...617ef0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x3590aa...c2790d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x35c525...3736b6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x36ab89...9ea46f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x393ea5...605dbf` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x39e370...31ae4d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x3a81c2...f68b52` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x3b0462...3a7243` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x3b7f15...bd64b4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x3c5e10...97b8d9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x3d8915...5044a7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x3e0e42...c9e1c1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x3ea03c...4eaac3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x3fec1d...829193` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x3ffc8c...3b7722` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x41151d...65757a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x41c299...dca0d6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x41e4f4...e6434d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x42512c...8f8cee` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x42a4f9...70b934` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x42e82e...107935` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x43dfd4...415ebe` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x452e8e...187121` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x452f56...3765c2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x45cff6...8ac4ef` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x45dc04...8b0a05` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x46fc79...843c4b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x4791c0...7f2354` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x479c19...9181a4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x485d3c...7e6a3b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x488eb2...583a1f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x4a06cb...8c06d9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x4a3a3c...dce09b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x4a5182...58f274` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x4ab649...ab9c27` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x4b0788...1ff7ed` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x4b5d52...fac955` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x4baa3b...61001a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x4c0197...54b342` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x4c09af...2b19ea` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x4c573b...38934a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x4cc75f...5f47cd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x4cedac...a86c3b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x4d7348...095c09` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x4d74d5...44d75c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x4d7b89...d166eb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x4dd3cf...fde825` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x4e2c04...9da2a1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x4e4603...c95351` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x4e898e...159e73` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x4ed0a7...a34270` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x503bea...644f53` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x506d48...bb761f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x50aaf0...cb6681` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x516320...cd9be0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x52b96e...8b0053` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x5318f8...5a8d7f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x53651e...789a04` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x5387ca...32378e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x539ed1...72b31d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x53bcaf...a95632` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x53c4c1...c6f872` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x542c19...731be8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x5441fd...bfd508` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x54a601...d82b6f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x554b6f...ab2863` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x558e51...e63b57` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x559e0a...7ba135` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x55e7a8...fe817d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x56067c...30acb2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x56dc8b...7ee086` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x574316...4eafc5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x57b94f...ffa689` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x580e92...16e301` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x58a36a...6b22b0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x5a356f...f209e8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x5b0477...eb1ad9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x5b2ed6...e2625c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x5bd4ec...b905ea` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x5c0f7d...2b2dca` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x5d0b6f...388b11` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x5d11b5...71fa7d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x5d6d98...f04bff` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x5d6f3d...87f8f5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x5dea10...f9e238` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x5df2f2...5b26c7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x5ede33...b48aa0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x5f1e25...92c317` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x5f533a...6f4abc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x5f7eea...e55922` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x5fae78...2f263c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x5fe726...981086` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x602cfa...77a340` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x60ae52...2baa82` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x60eb75...987602` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x61201f...2d57bc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x616adf...030a08` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x61a447...c22405` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x61c54a...f3071e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x6214d1...d82170` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x62afaa...5f1205` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x62cd95...c0b0f3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x633888...41b66c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x63e926...48e104` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x651bcd...a8d7e2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x652607...5ec08f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x656516...b715f9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x65757e...5d9583` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x66527d...a18675` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x678ce6...b26983` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x686d32...a5e677` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x68b3c8...f17811` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x692e8a...1423a2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x6940e4...47445b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x69442d...3da164` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x6984f1...de2461` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x69e1e5...07832d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x6a69db...b97a60` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x6ac2ae...a4ec43` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x6b3ea9...7696e1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x6b64f5...543c2c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x6b97e8...301dbe` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x6c9606...b660f7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x6cee2a...668201` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x6dbb1c...dfae81` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x6dc69e...9ab7a2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x6e2e8f...8dccfb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x6e38be...ff608c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x6e4b74...a79d1b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x6e4d31...f76859` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x6e8558...31b8a0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x6f0b7f...05f32b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x6f67fb...43de8f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x6fc34e...dd66a2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x701dbd...6749a3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x70a7c7...bf4738` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x70b9ac...c358b3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x716b6e...3da4f2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x71da6d...1b4ceb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x724f10...618b31` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x725679...0d4a19` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x725eae...fc0193` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x72cac0...bfe201` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x73742e...436860` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x743c78...58fbc9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x747ad1...e4f67a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x74895e...aa45f5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x74fea5...b05975` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x756e4e...0a8d41` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x75f238...25f8b2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x75fc56...1ac2b7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x767fb8...2f9bc5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x770e82...56f89a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x7759de...dc58de` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x779006...b8f6c9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x782a17...081504` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x785c7d...b004d4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x7865fa...4fff55` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x787a5a...073ca2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x78c857...117c42` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x7911e6...d999bc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x794f47...467e7f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x79c4c5...11c966` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x7a2d9e...364a97` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x7ba07f...d56f1d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x7bf8ec...6d74fa` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x7c29de...5d5bce` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x7c6c02...a93f05` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x7c842e...e1bde0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x7ccc51...31204b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x7d3273...c32a64` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x8015ee...ed58cc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x809bc7...289d7a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x80aaae...aa48ef` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x80f96e...e23040` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x829de3...4edb94` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x82bb0c...1def3c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x8407f7...b6eeaf` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x842b66...9ec81d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x8462d7...054938` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x849f00...7b5639` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x84f022...608b3f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x8556bf...dac725` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x85a860...a02555` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x85b3d8...2e1364` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x85f370...76a5af` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x867203...fda002` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x86875f...866da1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x87e7c2...24fc35` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x883fca...5bac74` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x8905f6...a90107` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x8a0cce...5ce372` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x8a930e...427c4c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x8ad90c...7a687a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x8c1790...514532` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x8c7039...5b3188` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x8ca8a1...7814da` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x8d0d83...5dcf65` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x8d18f9...af92ab` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x8daade...ff2b7a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x8e3260...d0e5ad` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x8e559e...8021b1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x8e6071...494c65` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x8e753f...f37491` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x8f63c4...6a6223` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x8fa083...84750d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x8fa479...7f68db` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x8fcbdf...b7a829` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x90633f...b66168` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x908208...383d52` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x90dc4f...ca59d1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x90de38...4a1a5a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x90fba3...a26e8f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x9137cb...4820ff` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x914340...162721` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x91860f...a1e2c3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x929f35...7ab777` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x92d9b2...d09fe9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x935da8...13f231` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x93960d...64446a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x93a723...48a762` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x93ed12...e77c02` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x941a35...39b255` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x943339...a8ab6b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x94405c...b5f6b0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x94d0d1...f72a0b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x9674a5...536647` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x96e9e8...500036` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x97dffc...1e453d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x97f6f6...a05474` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x981588...af24c9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x99f982...22a4cd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x9a78fb...072dbd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x9ac77f...d36c25` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x9adb9b...0ce6cb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x9bc773...dcd68d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x9c7237...51da7a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x9de382...57e7d8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x9dec02...0e5331` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x9e2380...82122c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x9fc52b...5275b4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa0b8b1...189310` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa0c3b1...9435f9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa1235e...fa1698` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa16aa5...d65b8c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa1aba1...cee33b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa1cfd5...13929d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa24abd...b53d93` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa25fd4...f8db10` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa3a26b...4edd1a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa3e316...69f8b1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa43c4f...227502` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa4595b...427b25` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa461f4...84c38a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa4822e...29b6b6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa4bd6b...1c126c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa4eeed...61ec2c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa54e15...43ba00` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa602f2...714c61` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa60ae2...c9fded` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa61a19...b0593b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa6b808...eaab5e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa6eae1...4bac1c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa71d84...d20291` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa746c8...06cc4a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa778b9...861892` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa85825...43c641` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa8a379...ddcaf1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa8cd91...03c80c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa8e0ec...5d8848` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa8ffec...db82b8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa914a5...112806` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa91f3d...ce74a4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa95b35...ca15ea` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa9c19f...587061` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xaa415f...0bd1f0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xab2334...ecdf01` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xab4fba...f84024` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xab6570...e4a5bb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xabb37e...6fdc35` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xac303d...5fc304` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xad1ad7...56ad75` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xad34c7...5c2b00` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xad4391...df540b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xad4cb7...214dc6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xadc77c...7863e8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xaec7f3...f15f3c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xaee3e1...fab015` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xaef18e...895b0f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xaf46ab...992b21` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xaf7c36...8582b7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb02304...b18a2a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb0ff02...2dadd8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb11bf4...6236a9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb1e778...a672fb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb1ec7b...fa3ff9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb27e03...f3fab1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb2b7ea...7068b6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb2cc12...508f89` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb34c12...a2e852` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb36c40...cf7a7a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb374ac...e8933e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb3d73a...aec348` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb45aa8...1c0678` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb46a6a...39d149` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb489b4...ff3461` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb4bcdd...0521f7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb5aa08...4b812d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb5c852...dff798` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb706b7...fa1f69` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb7218e...513a96` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb79fd2...ab950c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb79fd6...05448a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb7f6fe...e62f1b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb828e7...6f8eeb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb8edd2...38a29d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb8f9cf...bc6732` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb90fb7...382f1e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb935fc...3c298e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb9d036...1fe35d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xbb1602...ef0c4b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xbb2637...8a8ca3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xbb5362...33551b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xbc6c98...09e6f1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xbd57a6...ad7566` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xbeb1e2...8454e3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xbedef7...802706` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xbefe79...698934` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xbf0fb8...5d1aff` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xbffbc8...1755a3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xc03d7c...f0d455` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xc05291...59a134` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xc071dc...326e57` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xc0cc1c...1f4803` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xc11350...1a9213` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xc218a4...78c744` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xc28aa1...20545f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xc2964c...ada86d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xc2ed33...296020` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xc2f89a...7ba804` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xc39564...b4b5d1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xc5006e...deeda7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xc55b42...ce7aad` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xc5626a...250245` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xc5f34d...a0327c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xc7e136...b31834` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xc86846...f48b14` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xc977b4...26d6b5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xcac79f...db23fd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xcaf3cb...8d2c15` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xcb69e3...951802` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xcb911a...c6f00c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xcc0e14...97211e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xcc1101...6b305f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xcc4673...313b7b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xcc972a...cb96fb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xcd52cc...1cdc7c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xcd9bc4...ed0c41` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xcd9eea...3fd3e4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xcde5a1...2bd140` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xce050b...e417cf` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xce47e6...b51d56` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xce8d80...98447f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xcf267f...607661` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xcf3934...53d438` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xcfbaba...c69b7c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xd067a7...6f028c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xd07560...95e58a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xd086ec...3a2ca4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xd0b481...b4940d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xd0dbc9...53cded` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xd1acac...8e5e2a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xd20fe3...cc34ff` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xd226e5...89d629` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xd261f3...b17fb2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xd2a112...af8f58` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xd335a7...0d72c1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xd36feb...33ff51` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xd37615...190e08` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xd38e08...92f5a7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xd47174...e82c6d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xd4b257...53ec02` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xd5210e...52a016` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xd5247f...cf3968` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xd5c476...f822ba` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xd64ebf...9bd907` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xd6802d...650691` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xd7a751...22ea0d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xd7e60b...ad37da` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xd847d6...921bcb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xd88d44...3c354e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xd8990b...51bcdd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xd8a0ec...e81a63` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xd98bc2...401455` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xd994b4...ba26f6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xda8580...0e1428` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xdb5ca3...d36871` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xdbc346...f66f85` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xdc852d...675ea8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xdcd0ce...d723a8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xdcfe79...812f1b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xddd8e7...e499ea` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xdeca29...e2ef7e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xdf74ee...7fd436` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xdfb8f8...4c4d8f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xdff343...79688c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xe03e13...65b514` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xe070cd...695711` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xe1301b...a4f9ef` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xe212b8...e0a3b8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xe27a68...a81349` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xe3b6d8...ec86b8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xe507d0...e150a3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xe579ab...e7f1b5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xe5ca54...4eb3fe` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xe6295c...f91f32` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xe6f764...c7d5be` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xe74150...9cbb39` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xe7b0a5...809270` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xe7b77f...5a15b4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xe7d0fd...e319d1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xe821fd...0d0f01` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xe8420c...b292e2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xe8ac63...297e09` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xe90e42...e2462d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xe94240...e3a84a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xe9550d...a6960f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xe994f1...4dccf1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xe99c03...87e1ba` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xe9eb6b...11517e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xeaebf9...c505f4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xeb8dde...19f050` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xec18ed...365caa` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xec760f...30022d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xed215c...f2484c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xee2321...4c5848` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xee9f75...c1ecd8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xeec50b...272f92` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xef0e8c...a91ba6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xef1694...5b55cb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xef298a...56c4da` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xef9bec...174dcb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xeff1db...70d504` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf04502...b81441` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf0b3c8...e5b033` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf0bc86...36a1a3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf0c193...0d1496` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf0e0ed...06238e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf0e7ce...849ff7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf1680e...1c7347` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf1e4e7...1c4319` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf34ff8...68da78` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf36f1c...8ea3f2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf3a904...564cac` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf3c206...83c008` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf3d7dd...dfc9f1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf3f259...60c764` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf3f8e5...b91cf0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf40028...5df726` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf43bda...2f11f1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf4e219...f967f1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf4e795...66e69d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf52e5b...7db67f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf55276...c58b50` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf582f0...15ef50` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf59c56...654ff4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf5d295...734cd4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf6444d...13e6f5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf74f31...4c37a2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf79c40...862c82` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf83022...faec5d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf8c743...f9e1ed` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf97603...569138` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf9d499...986226` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xfa33f2...093a83` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xfa54aa...da5c75` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xfafd70...f7aee4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xfb6686...1488fb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xfbdd81...1cd864` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xfc95e0...5c08db` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xfd11f8...bf82c5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xff58ac...e2013d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xff7337...84a2d5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xffad3a...6cae19` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://www.cyberscope.io/audits/pumpspace?assessmentIndex=1https://github.com/cyberscope-io/audits/blob/main/pumpspace/dexAudit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [dexAudit.pdf](https://github.com/cyberscope-io/audits/blob/main/pumpspace/dexAudit.pdf) | Cyberscope | Audit | 2025-01 | aging | Direct | contract_name | 1 | high |
| [DexAudit](https://www.cyberscope.io/audits/pumpspace?assessmentIndex=1) | Cyberscope | Audit | 2025-01 | aging | Direct | contract_name | 83 | high |
| [audit.pdf (also discovered via alternate URL)](https://github.com/cyberscope-io/audits/blob/main/pumpspace/audit.pdf) | unknown | Audit | 2025-01 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | [`0x864a0b...23f213`](./contracts/avalanche-43114/0x864a0b7f8466247a0e44558d29cdc37d4623f213/) | AutoFarmV2_CrossChain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x4ec533...8390e2`](./contracts/avalanche-43114/0x4ec53317186098956956ae9a7092853e218390e2/) | PumpSpecialRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x27d8d5...a553ba`](./contracts/avalanche-43114/0x27d8d5d536581daaf743abaf339f4658e9a553ba/) | PumpSplitRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 660 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=84

Zero-match audit list:

- [2665] DL audit link
- [2668] audit.pdf

Fork inheritance lineage and inherited audits are included when available.
