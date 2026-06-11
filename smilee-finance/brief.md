# Agentic Audit Brief: Smilee Finance

## Project Overview

- Project: Smilee Finance (`smilee-finance`)
- Website: [https://smilee.finance/](https://smilee.finance/)
- Lifecycle: active (Tier 0, 94.8% below peak)
- Generated: 2026-06-11T11:48:02.465Z
- Pipeline run: v2-pipeline-2026-06-11-9658c2-4b54
- Chains: arbitrum, berachain
- Contract surface: 186 unique implementations (223 raw deployments)
- DeFi Llama TVL: $1,124,131.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Smilee Finance's current primary product is gBERA, a Berachain liquid staking and yield product. Its Arbitrum options/vault contracts should be treated as legacy or secondary/low-TVL surfaces if retained in scope.

### Architecture

The two families operate on separate chains with no direct contract dependencies, but share the Smilee Finance brand and likely a common governance or token layer not visible in the contract surface.

## Audit Coverage Summary

- Verified implementations audited: 0/23 (0.0%)
- Verified + Unaudited implementations: 23
- Verified by bytecode match: 0
- Unverified implementations: 163
- Unique implementations: 186
- Raw deployments: 223
- Audits discovered: 3
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 3 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (23)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AddressProvider | registry | arbitrum | 2 deployments: arbitrum [`0x110a3b...062cf1`](./contracts/arbitrum-42161/0x110a3b051397956d69733b6fe947648bb9062cf1/); arbitrum `0x4e5af7...80546e` | ⚠️ Unaudited |
| AmountHelper | periphery | arbitrum | [`0xe1b1a2...35979c`](./contracts/arbitrum-42161/0xe1b1a246a6363b88654351554ce4d82c5135979c/) | ⚠️ Unaudited |
| AmountsMath | unknown | arbitrum | 5 deployments: arbitrum [`0x123dbf...5a4e09`](./contracts/arbitrum-42161/0x123dbfc7865350149ff827084b7a95e3fd5a4e09/); arbitrum `0x91869f...417b70`; arbitrum `0xa231a8...242b4f`; arbitrum `0xaa1ebd...61b536`; arbitrum `0xf0162a...af20ca` | ⚠️ Unaudited |
| EpochFrequency | unknown | arbitrum | 2 deployments: arbitrum [`0xf141e7...bff4a3`](./contracts/arbitrum-42161/0xf141e7bced2e300bf301eab47d5da537ecbff4a3/); arbitrum `0xfbf712...554792` | ⚠️ Unaudited |
| FeeManager | governance | arbitrum | [`0xff7699...700d75`](./contracts/arbitrum-42161/0xff7699c47326516759be8902e87d09bcf4700d75/) | ⚠️ Unaudited |
| Finance | unknown | arbitrum | [`0x1e5132...7517e5`](./contracts/arbitrum-42161/0x1e5132a2636deb590521ad0efbd8ff8ffc7517e5/) | ⚠️ Unaudited |
| FinanceIGPayoff | unknown | arbitrum | 5 deployments: arbitrum [`0x07c970...c7467c`](./contracts/arbitrum-42161/0x07c9707cb86b236cc8cce3f6de41d80baac7467c/); arbitrum `0x4c0418...757f97`; arbitrum `0x6b8b6d...8ce95a`; arbitrum `0x7b2eaf...c53be7`; arbitrum `0xb68271...70d284` | ⚠️ Unaudited |
| FinanceIGVega | unknown | arbitrum | [`0xb13170...5b9738`](./contracts/arbitrum-42161/0xb13170e36007a09d6962e23cbef5c50b775b9738/) | ⚠️ Unaudited |
| GBeraAssetManager | governance | berachain | [`0x3f7755...f2ebce`](./contracts/berachain-80094/0x3f7755117f1fec1981aefb01887240dbf5f2ebce/) | ⚠️ Unaudited |
| IG | unknown | arbitrum | 9 deployments: arbitrum [`0x1e0aa0...c5c016`](./contracts/arbitrum-42161/0x1e0aa028fcbe1fcd5b6b8394e5eacfaa6fc5c016/); arbitrum `0x1ee870...9f003f`; arbitrum `0x4e5121...00c933`; arbitrum `0x521e16...7b7153`; arbitrum `0x550f20...3361b8`; arbitrum `0x70def9...0548ae`; arbitrum `0x9650a8...e86f77`; arbitrum `0xc5cd71...fc4fac`; arbitrum `0xc9293c...fed768` | ⚠️ Unaudited |
| IGAccessNFT | token | arbitrum | [`0x3d4d50...f6dceb`](./contracts/arbitrum-42161/0x3d4d50654574f8c8fd417fc77adf5c6165f6dceb/) | ⚠️ Unaudited |
| MarketOracle | operational_periphery | arbitrum | 2 deployments: arbitrum [`0x121e69...ec70f6`](./contracts/arbitrum-42161/0x121e694d4f4fafee48a2a6ab69a96daa04ec70f6/); arbitrum `0x130648...7cd0d5` | ⚠️ Unaudited |
| Position | unknown | arbitrum | [`0xa452e8...6a02bf`](./contracts/arbitrum-42161/0xa452e8cd1a0028516fa75ddf0521b51f746a02bf/) | ⚠️ Unaudited |
| PositionManager | governance | arbitrum | 3 deployments: arbitrum [`0x49a07a...34056a`](./contracts/arbitrum-42161/0x49a07a6ba53f600106055764cb35f30a6c34056a/); arbitrum `0x838370...05fee6`; arbitrum `0xabb4e0...fa10cb` | ⚠️ Unaudited |
| Registry | registry | arbitrum | [`0x8682ea...26732e`](./contracts/arbitrum-42161/0x8682ead63e4934fbd35162df3fe4dae9b826732e/) | ⚠️ Unaudited |
| SwapAdapterRouter | adapter | arbitrum | 2 deployments: arbitrum [`0x991069...b09de5`](./contracts/arbitrum-42161/0x991069c8469643cbc1765a1527d570173ab09de5/); arbitrum `0xa2ca8b...eac009` | ⚠️ Unaudited |
| TimeLock | governance | arbitrum | [`0x2f8b57...95ae80`](./contracts/arbitrum-42161/0x2f8b57d0d542945986250e51b9fb0059f095ae80/) | ⚠️ Unaudited |
| TokensPair | token | arbitrum | 3 deployments: arbitrum [`0x082e02...6ac6bf`](./contracts/arbitrum-42161/0x082e02d16bcd9fc73be6a862070a56c7016ac6bf/); arbitrum `0xd92d3c...40ffea`; arbitrum `0xfb84f1...11a5ad` | ⚠️ Unaudited |
| Vault | core_logic | arbitrum | 9 deployments: arbitrum [`0x45c0c7...0d7924`](./contracts/arbitrum-42161/0x45c0c776242c2ea752a4b152902f203af40d7924/); arbitrum `0x55c950...0f201f`; arbitrum `0x6b028c...0da4f0`; arbitrum `0x7f2c0f...64b0e9`; arbitrum `0xbd80e2...251182`; arbitrum `0xc1894f...e569f4`; arbitrum `0xc948d7...31221b`; arbitrum `0xcbe9db...2a8a14`; arbitrum `0xd3468b...f68831` | ⚠️ Unaudited |
| VaultAccessNFT | core_logic | arbitrum | [`0xc47166...8b9e1f`](./contracts/arbitrum-42161/0xc471663f523f8c04ac8ca026a1d3b56af08b9e1f/) | ⚠️ Unaudited |
| VaultLib | core_logic | arbitrum | 3 deployments: arbitrum [`0x593843...62629b`](./contracts/arbitrum-42161/0x5938431e5d5a4def3590206dbeafa164dc62629b/); arbitrum `0x6ee8ae...f25724`; arbitrum `0xb7c607...e26739` | ⚠️ Unaudited |
| VaultProxy | core_logic | arbitrum | 2 deployments: arbitrum [`0x544f53...b3fbf8`](./contracts/arbitrum-42161/0x544f53b35a591df217e63725edb7bd597db3fbf8/); arbitrum `0x732c5e...40fddf` | ⚠️ Unaudited |
| WadTime | unknown | arbitrum | 3 deployments: arbitrum [`0x01a0ce...6eefd8`](./contracts/arbitrum-42161/0x01a0ce0c6351a9b39b2c3c43d5175a11336eefd8/); arbitrum `0x9f57d3...b95310`; arbitrum `0xed09db...8cdf5d` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (163)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | arbitrum | `0x038093...1ec40f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x05dcaf...237449` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x07afae...eaeb1f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x0c464c...58a3ce` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x10ac50...8bcdad` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x1107a7...af23ff` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x12b09f...01b2b4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x12c43a...62813f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x131385...926d63` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x1366e9...4d431e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x145569...b10243` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x157fae...c96e88` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x166133...3dab43` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x17b346...40d185` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x188632...af1eb7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x1aaec0...31ccef` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x1b2903...ccb83a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x1bcf06...458cd1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x1bcf1a...71f947` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x1bfac5...115b38` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x1d053f...f88f2d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x2235c5...b60edd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x228ac9...f986f9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x249026...bbe2bf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x26b23e...b0e281` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x2aaa29...cb7ef0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x2da726...912062` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x2f87dd...c3164f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x30a961...69d22e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x31fdab...0049a0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x35fd8d...3a4d5a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3831e6...1d84e6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3a2ea6...bde38d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3a3de6...0795ec` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3ea810...92d0e6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x408e88...70e3d8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x425b3b...4435f0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x433f2c...52e86c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x44bab0...a1b844` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x460c03...1ff9fd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x470aac...275822` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x471a26...5bac30` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x48f35c...bc9221` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x495fdc...a05f7e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x4a1352...25fdf0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x4d7fb9...963707` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x505a37...a4068a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x50adcb...66cf9e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x535fb0...f8e2e0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x546dbf...8d3315` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x57e3f8...784b19` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x58f7e9...e1c8ab` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x58f984...c105ef` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x5a54f6...f150e0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x5c9546...7aebdf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x5cb17b...807abf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x5d281a...6f1f38` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x5d429d...a02b9b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x5d6b0e...c8e547` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x5fd95c...bb8171` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x60178a...1639c8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x603b66...edb5ec` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x60e60b...359a2f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x6145ce...63758d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x6427bc...21ea81` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x6488f9...b9f05f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x64f9ae...98c8cf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x66d554...1a41af` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x685d40...0c9ff3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x69a495...e96c55` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x69b7cb...15e7c1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x6c5261...fd7e11` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x6f8ae9...5da048` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7068a0...4e077e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x70a6dc...e8bc16` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x70cba9...8f3637` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7489a4...b62f2f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7574c8...7d03e6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7617f6...cac9d0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7677db...93f8e4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x76d0f4...ec0d9b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x78dbce...fe2a11` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7eb67a...20989e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7f6764...e902f6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x81f86d...68bd07` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x82326a...ccaa7f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x86b55a...5544a6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x876574...f87af3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x88e76f...954424` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8a27d5...fea867` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8a5498...946d9c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8a655c...576886` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8aadce...dfe846` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8d698c...d1f8c4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8f3039...146fd3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x9101b8...06910a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x917aa3...ee8846` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x92911b...1c0236` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x938ecb...d54ed4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x93b1a7...21dbcb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x94b679...7b6e7d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x98bbf2...8b6bd4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x99ebf8...da3a17` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x9dc2df...a475f2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x9eecb2...833b34` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x9ef67d...244a2a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa6e9e0...2ae9ee` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa7fc33...9b9373` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xaa2692...b03a9e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xaa53ba...de3e4f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xadc15c...4299c3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xae2914...9b0686` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb5ef28...a431cf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb5fcab...bb523b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb63db0...7baec5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb6fc1b...57938e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb72397...8cb364` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb79b29...293595` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb7c54b...37a97d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb98a71...c63b8d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xba8e57...1de78c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xbc5c69...2796ec` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xbdb9df...5a5756` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xbe0aa6...6b72d6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xbff437...6cd4b2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc4039a...17de46` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc4c901...fcfb9f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc58a60...fba8bf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc61678...ccb3fb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc66dc3...fe297e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc6d597...eef7d2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xcb35c0...9e3d2a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xcb55d2...60c784` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xcba65c...15d716` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xccb110...29ce9c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xcdd6db...8b2c6f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xcf4d8a...a82c43` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd10dc7...2c4560` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd12e74...7451d3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd1c577...5ef847` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd4a198...5daad9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd72337...8ad4ae` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd7c8ee...a31ddc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd7dc54...3e35c1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xdbce43...7d4154` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xddb9d4...a74f84` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe96770...93a1e6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xed3e4a...92d405` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf0c898...d5fb58` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf19263...cdc93f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf2e173...e55764` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf35dad...7cb55c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf4b78f...361087` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf4f015...d2c099` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf50a00...f84879` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf53199...436725` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf66d8e...055cea` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf9afcd...fddb36` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xfae000...0b7e55` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xfdfd95...5b0774` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xfedaa8...5bd117` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xff12b3...9e54df` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xffd8f9...61ef53` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Rendered PDF capture](https://483967037-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fv9vHQJ1GDpGEgkvoUQUx%2Fuploads%2FK3W9Hj6sr2y8j6Zdkgub%2FGuardefy_Audit_gBERA_SmileeFinance.pdf) | Spearbit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Rendered PDF capture](https://483967037-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fv9vHQJ1GDpGEgkvoUQUx%2Fuploads%2FyKq7K1kTTAd57CnP2ask%2FCantina_Audit_gBERA_SmileeFinance.pdf) | Spearbit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Rendered PDF capture](https://483967037-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fv9vHQJ1GDpGEgkvoUQUx%2Fuploads%2FvhApBDZa65vO2FueUH9y%2FGuardefy_Audit_gBERA%20Update_Smilee%20Finance.pdf) | Spearbit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x110a3b...062cf1`](./contracts/arbitrum-42161/0x110a3b051397956d69733b6fe947648bb9062cf1/) | AddressProvider | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xe1b1a2...35979c`](./contracts/arbitrum-42161/0xe1b1a246a6363b88654351554ce4d82c5135979c/) | AmountHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x123dbf...5a4e09`](./contracts/arbitrum-42161/0x123dbfc7865350149ff827084b7a95e3fd5a4e09/) | AmountsMath | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xf141e7...bff4a3`](./contracts/arbitrum-42161/0xf141e7bced2e300bf301eab47d5da537ecbff4a3/) | EpochFrequency | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xff7699...700d75`](./contracts/arbitrum-42161/0xff7699c47326516759be8902e87d09bcf4700d75/) | FeeManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1e5132...7517e5`](./contracts/arbitrum-42161/0x1e5132a2636deb590521ad0efbd8ff8ffc7517e5/) | Finance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x07c970...c7467c`](./contracts/arbitrum-42161/0x07c9707cb86b236cc8cce3f6de41d80baac7467c/) | FinanceIGPayoff | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xb13170...5b9738`](./contracts/arbitrum-42161/0xb13170e36007a09d6962e23cbef5c50b775b9738/) | FinanceIGVega | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1e0aa0...c5c016`](./contracts/arbitrum-42161/0x1e0aa028fcbe1fcd5b6b8394e5eacfaa6fc5c016/) | IG | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3d4d50...f6dceb`](./contracts/arbitrum-42161/0x3d4d50654574f8c8fd417fc77adf5c6165f6dceb/) | IGAccessNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x121e69...ec70f6`](./contracts/arbitrum-42161/0x121e694d4f4fafee48a2a6ab69a96daa04ec70f6/) | MarketOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xa452e8...6a02bf`](./contracts/arbitrum-42161/0xa452e8cd1a0028516fa75ddf0521b51f746a02bf/) | Position | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x49a07a...34056a`](./contracts/arbitrum-42161/0x49a07a6ba53f600106055764cb35f30a6c34056a/) | PositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8682ea...26732e`](./contracts/arbitrum-42161/0x8682ead63e4934fbd35162df3fe4dae9b826732e/) | Registry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x991069...b09de5`](./contracts/arbitrum-42161/0x991069c8469643cbc1765a1527d570173ab09de5/) | SwapAdapterRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2f8b57...95ae80`](./contracts/arbitrum-42161/0x2f8b57d0d542945986250e51b9fb0059f095ae80/) | TimeLock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x082e02...6ac6bf`](./contracts/arbitrum-42161/0x082e02d16bcd9fc73be6a862070a56c7016ac6bf/) | TokensPair | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x45c0c7...0d7924`](./contracts/arbitrum-42161/0x45c0c776242c2ea752a4b152902f203af40d7924/) | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xc47166...8b9e1f`](./contracts/arbitrum-42161/0xc471663f523f8c04ac8ca026a1d3b56af08b9e1f/) | VaultAccessNFT | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x593843...62629b`](./contracts/arbitrum-42161/0x5938431e5d5a4def3590206dbeafa164dc62629b/) | VaultLib | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x544f53...b3fbf8`](./contracts/arbitrum-42161/0x544f53b35a591df217e63725edb7bd597db3fbf8/) | VaultProxy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x01a0ce...6eefd8`](./contracts/arbitrum-42161/0x01a0ce0c6351a9b39b2c3c43d5175a11336eefd8/) | WadTime | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 63 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 122 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [11664] Rendered PDF capture
- [11665] Rendered PDF capture
- [11666] Rendered PDF capture

Fork inheritance lineage and inherited audits are included when available.
