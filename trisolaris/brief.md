# Agentic Audit Brief: Trisolaris

⚠️ Lifecycle status: DEAD - TVL changed 47.5% over 90 days

## Project Overview

- Project: Trisolaris (`trisolaris`)
- Website: [https://www.trisolaris.io/#/swap](https://www.trisolaris.io/#/swap)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-05-25T00:45:08.162Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: aurora
- Contract surface: 226 unique implementations (267 raw deployments)
- DeFi Llama TVL: $1,339,764.86
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Trisolaris is a decentralized exchange (DEX) on Aurora that enables users to swap tokens, provide liquidity, and earn yield through automated market-making and farming. It includes a native TRI token and supports cross-chain farming via AutoFarmV2.

### Architecture

The UniswapV2Factory creates liquidity pools using the EvmErc20 token standard, while the Tri token serves as the protocol's incentive and governance asset. AutoFarmV2_CrossChain extends yield farming across chains, and the unnamed supporting contracts likely handle routing, periphery, or access control for the core DEX operations.

## Audit Coverage Summary

- Verified implementations audited: 0/20 (0.0%)
- Verified + Unaudited implementations: 20
- Verified by bytecode match: 0
- Unverified implementations: 206
- Unique implementations: 226
- Raw deployments: 267
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (20)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AutoFarmV2_CrossChain | unknown | aurora | 3 deployments: aurora [`0x3b2763...5b69a5`](./contracts/aurora-1313161554/0x3b2763c77343ce87cb42f9ac70a0175ddb5b69a5/); aurora `0x4b6ed3...b2f68f`; aurora `0x625374...71a700` | ⚠️ Unaudited |
| ComplexRewarder | unknown | aurora | [`0x34998b...f1e7bf`](./contracts/aurora-1313161554/0x34998bb1b4721f0418b22aae5a252c3167f1e7bf/) | ⚠️ Unaudited |
| EvmErc20 | token | aurora | [`0x5183e1...cf2896`](./contracts/aurora-1313161554/0x5183e1b1091804bc2602586919e6880ac1cf2896/) | ⚠️ Unaudited |
| MasterChef | unknown | aurora | 4 deployments: aurora [`0x1f1ed2...d0d79b`](./contracts/aurora-1313161554/0x1f1ed214bef5e83d8f5d0eb5d7011eb965d0d79b/); aurora `0xddab5f...3d76da`; aurora `0xe24f20...b39573`; aurora `0xe53d65...1930f5` | ⚠️ Unaudited |
| MasterChefV2 | unknown | aurora | [`0x383895...5675d6`](./contracts/aurora-1313161554/0x3838956710bcc9d122dd23863a0549ca8d5675d6/) | ⚠️ Unaudited |
| Multicall | periphery | aurora | [`0xd26ddb...4e0a23`](./contracts/aurora-1313161554/0xd26ddb60efb6267db68f18801491c2292c4e0a23/) | ⚠️ Unaudited |
| StableLPMaker | unknown | aurora | [`0xcb2519...78e3ff`](./contracts/aurora-1313161554/0xcb251907382aeb3c2edab766561d5f4e6c78e3ff/) | ⚠️ Unaudited |
| StableLPMakerV2 | unknown | aurora | [`0x2df95b...8ab86b`](./contracts/aurora-1313161554/0x2df95be842cd68062ecdb7a30ca8dd400a8ab86b/) | ⚠️ Unaudited |
| StableLPMakerV3 | unknown | aurora | [`0x84c1b1...b8aded`](./contracts/aurora-1313161554/0x84c1b1986766fd32cfac340f947217bd1fb8aded/) | ⚠️ Unaudited |
| StableLPMakerV4 | unknown | aurora | 4 deployments: aurora [`0x015225...723fcb`](./contracts/aurora-1313161554/0x0152254efd4f98f305edf892b3110af30b723fcb/); aurora `0x5174f1...1de94a`; aurora `0x728e9e...4740b2`; aurora `0xc437d6...5d9b4d` | ⚠️ Unaudited |
| SwapFlashLoan | unknown | aurora | [`0x51d96e...1a4064`](./contracts/aurora-1313161554/0x51d96ef6960cc7b4c884e1215564f926011a4064/) | ⚠️ Unaudited |
| TimelockController_RewardsDistributor2 | operational_periphery | aurora | [`0xaea5f4...77e800`](./contracts/aurora-1313161554/0xaea5f423361e799950e09d38c4dabac2db77e800/) | ⚠️ Unaudited |
| Tri | unknown | aurora | 3 deployments: aurora [`0x2cd59e...238ac1`](./contracts/aurora-1313161554/0x2cd59ea668afda4e712369042150f2fa00238ac1/); aurora `0x55b963...b5ab64`; aurora `0xfa9434...c65abb` | ⚠️ Unaudited |
| TriBar | unknown | aurora | [`0x802119...6d6803`](./contracts/aurora-1313161554/0x802119e4e253d5c19aa06a5d567c5a41596d6803/) | ⚠️ Unaudited |
| TriMaker | unknown | aurora | [`0xe79345...8ae151`](./contracts/aurora-1313161554/0xe793455c9728fc91a3e5a33faff9eb2f228ae151/) | ⚠️ Unaudited |
| UniswapV2Factory | registry | aurora | [`0xc66f59...b176e7`](./contracts/aurora-1313161554/0xc66f594268041db60507f00703b152492fb176e7/) | ⚠️ Unaudited |
| UniswapV2Router02 | adapter | aurora | [`0xfe1f3d...c5d65b`](./contracts/aurora-1313161554/0xfe1f3d4d7c09d2d3f959d9f77405f1e102c5d65b/) | ⚠️ Unaudited |
| UsdcMaker | unknown | aurora | 2 deployments: aurora [`0x5ebd5e...0aaade`](./contracts/aurora-1313161554/0x5ebd5e963a00500b6a1234c621811c52af0aaade/); aurora `0xe7d7fd...63f34a` | ⚠️ Unaudited |
| Vester | operational_periphery | aurora | 31 deployments: aurora [`0x0a0dc6...079e2b`](./contracts/aurora-1313161554/0x0a0dc69d4d6042a961e7f6d9e87b53df0c079e2b/); aurora `0x10945c...ca4e2c`; aurora `0x1769b6...3c2002`; aurora `0x1972d7...d0691a`; aurora `0x1afdcd...02c494`; aurora `0x23f0e4...40aaad`; aurora `0x39ddcc...f4bb1d`; aurora `0x3cb176...4308d4`; aurora `0x425856...078223`; aurora `0x43019d...ea4d1d`; aurora `0x47b68b...aaec8c`; aurora `0x4e6431...074367`; aurora `0x53980a...6e9f8a`; aurora `0x5910ce...aa52a9`; aurora `0x651bb2...77930a`; aurora `0x657a2c...3a9b5c`; aurora `0x736290...795861`; aurora `0x7ba018...28d30d`; aurora `0x7ce3f2...afaf6f`; aurora `0x870f32...367f3d`; aurora `0xa6002c...b2c946`; aurora `0xadba80...3ee7aa`; aurora `0xb25e64...8b2f39`; aurora `0xc7298a...46050c`; aurora `0xcb0a38...2cea9a`; aurora `0xcdb2a9...7a6b3e`; aurora `0xcfcc98...dcda4b`; aurora `0xd12aa0...dddb8c`; aurora `0xda1925...80c69c`; aurora `0xf8165f...1d0218`; aurora `0xfd44b7...2e046b` | ⚠️ Unaudited |
| WETH9 | token | aurora | [`0xc9bdee...fe3feb`](./contracts/aurora-1313161554/0xc9bdeed33cd01541e1eed10f90519d2c06fe3feb/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (206)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | aurora | `0x002905...eefa03` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x00fbc4...fd2370` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x0160b7...deb3df` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x02fc42...8731d6` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x0564d6...2a69a0` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x062f30...387714` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x07383d...eb425b` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x087225...d81723` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x08800d...0f7c3b` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x097509...fdaff0` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x0982eb...7ac663` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x0d6a7b...28371c` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x0df9c5...fd41fb` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x0ec7d2...adc470` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x0f06e1...ac1a1b` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x10475e...564d22` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x107340...17a7b1` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x107f0e...322a4e` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x114eca...959fc2` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x13e7a0...ff5f59` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x143371...8653bf` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x1b6a3d...a7e946` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x1d22db...266f43` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x1d9cb2...337a40` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x1e409e...3b6f2c` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x21e756...da81d8` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x2511c5...c51a55` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x264e4b...c70fd4` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x26ec2a...53d9b9` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x294df2...9fdc3e` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x29c857...1b2c58` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x2a8b7d...b079fc` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x2ade4f...f73064` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x2cf2bd...00699b` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x2f3661...135726` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x2f928d...a1abc2` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x30ed29...081aa5` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x31c818...c494eb` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x328a36...ff97ca` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x32d8c8...6d8912` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x381753...31d495` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x39ea1b...64be60` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x3a795f...f613e1` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x3b4e26...fc0c5b` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x3ce7aa...38b7ec` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x3d63c2...dfdbf5` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x3f6226...582693` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x3fcbf6...d82ef6` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x4135b6...c755ed` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x438587...a65b11` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x43f747...d69a0c` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x44fffc...a6bea3` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x450e40...c53d6f` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x4575fa...2c5de1` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x458459...0c3970` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x4596b1...a9d1b4` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x45e940...d2e01e` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x468e79...51ae8b` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x46f276...dcb2b8` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x4723de...53bae4` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x47372a...f12898` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x474b82...c6d3db` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x47883a...594fdc` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x48bc4b...f1fb0e` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x48d1f9...8d0b59` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x49eb1f...a5212a` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x4ba3a1...270946` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x4bc107...4131dc` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x4c3da4...19b5c3` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x4e0e33...926ed6` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x4f03d9...c79541` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x4fdd3c...43b425` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x518b8e...22900b` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x530ec2...611c24` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x538829...181130` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x594672...ce25e8` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x5dc52e...b9d03a` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x5ed6ca...444d12` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x609137...e74748` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x60c590...9548af` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x61ed55...54ff05` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x62f6de...97f7f0` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x641e05...39fb6e` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x672453...a6abab` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x67cc99...0a4436` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x6a6ccd...179190` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x6c1db0...4a1958` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x6c3205...137c00` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x6dcb3f...9483e4` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x6dedb2...8ba7b7` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x6e49c6...eb5d4a` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x6e6e7b...a1a9ff` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x6f0e21...22f435` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x6f6636...9cbcc6` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x6f6851...0b3ed0` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x6f7829...c59f75` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x7003de...0f7555` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x725186...eee472` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x72ff47...066aa4` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x7397ab...d1ca26` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x740e60...a0347e` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x7825c8...5ba12c` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x78edee...159df1` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x7b32ee...571aa6` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x7b514f...e1a715` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x7b84c0...257991` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x7d29b5...558113` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x7f9655...544633` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x825921...e8d4b0` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x82c919...2b6cf0` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x85d2ca...bb314d` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x869999...1ca901` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x870095...384bb6` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x874805...4bca92` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x880f09...d118ae` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x895bdc...f868fe` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x8b492a...e574ed` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x8dbd87...3ea055` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x8e61dc...7b1574` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x931e03...163066` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x94669d...63b9b5` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x94e36b...98300c` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x9769be...db7c65` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x984bd0...b6e440` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x9990a6...491b70` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x9ae422...ec7954` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x9c9d29...377ebe` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x9d4991...62bdf0` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x9dfec5...1a66cd` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x9e5c2d...31503d` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x9e6114...f15985` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xa141de...740c83` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xa2887f...f72cc0` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xa57828...b8e50e` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xa5ec0a...2a4afc` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xa677c6...8e51b2` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xa8ebfd...020311` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xabb7aa...06be75` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xac4272...f7c4c0` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xaceb38...7755a9` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xad1245...2090e0` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xaf8999...518fe9` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xb1243b...ee443c` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xb2059d...9345f5` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xb3452c...869326` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xb63333...282266` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xb77190...facb24` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xb88007...1d6f6b` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xb8e6c8...57f54a` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xbb56f7...cf8381` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xbba51c...d3b8ce` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xbeba8e...a31ca4` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xbf6cf5...0a2aeb` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xc0bd31...787d19` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xc1c06c...f53ee6` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xc220a8...bb31a4` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xc222e1...203487` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xc6618d...90adda` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xc68d12...cc6fd1` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xc694c4...41dfba` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xc8ee3f...fcd960` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xc96442...0d7860` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xcbb3be...2dbbce` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xccd878...6c2d65` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xcddc83...25ff74` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xcde4fa...d504c1` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xcea6be...4dae97` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xcf6b6f...f76541` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xd21e29...dc6475` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xd489f7...e941c4` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xd6b41c...f6465f` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xd74dc7...dba899` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xd7a8cc...60779f` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xd8ce4c...77cc2f` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xdaeac1...276b12` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xdc5eea...6c2596` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xdd4078...25ad9c` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xddbfd2...5575b1` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xdf7797...411e59` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xe00a8a...91cfe7` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xe0d56b...0c83ff` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xe1fefe...6f249c` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xe50c10...b8ced9` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xe61d39...3004f8` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xe67cc5...f5f89b` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xe6f44a...ec153c` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xe7c805...35a263` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xea8417...943be7` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xea8a72...835f4e` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xeae1f3...38311b` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xedbc9d...51b9c6` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xedd978...71ceea` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xef44f3...956649` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xefa291...2e56dc` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xf083f9...0dff36` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xf25769...5f97aa` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xf27fcc...9f012c` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xf31067...ac8e90` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xf57647...e29a39` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xf5854f...5a6be7` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xf609d0...358a11` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xf6e062...342ee5` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xf8ac5d...511d25` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xfaf371...c5a98b` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xfb080a...904ee1` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xff9224...0d32fd` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| aurora | [`0x3b2763...5b69a5`](./contracts/aurora-1313161554/0x3b2763c77343ce87cb42f9ac70a0175ddb5b69a5/) | AutoFarmV2_CrossChain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| aurora | [`0x34998b...f1e7bf`](./contracts/aurora-1313161554/0x34998bb1b4721f0418b22aae5a252c3167f1e7bf/) | ComplexRewarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| aurora | [`0x1f1ed2...d0d79b`](./contracts/aurora-1313161554/0x1f1ed214bef5e83d8f5d0eb5d7011eb965d0d79b/) | MasterChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| aurora | [`0x383895...5675d6`](./contracts/aurora-1313161554/0x3838956710bcc9d122dd23863a0549ca8d5675d6/) | MasterChefV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| aurora | [`0xcb2519...78e3ff`](./contracts/aurora-1313161554/0xcb251907382aeb3c2edab766561d5f4e6c78e3ff/) | StableLPMaker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| aurora | [`0x2df95b...8ab86b`](./contracts/aurora-1313161554/0x2df95be842cd68062ecdb7a30ca8dd400a8ab86b/) | StableLPMakerV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| aurora | [`0x84c1b1...b8aded`](./contracts/aurora-1313161554/0x84c1b1986766fd32cfac340f947217bd1fb8aded/) | StableLPMakerV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| aurora | [`0x015225...723fcb`](./contracts/aurora-1313161554/0x0152254efd4f98f305edf892b3110af30b723fcb/) | StableLPMakerV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| aurora | [`0x51d96e...1a4064`](./contracts/aurora-1313161554/0x51d96ef6960cc7b4c884e1215564f926011a4064/) | SwapFlashLoan | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| aurora | [`0xaea5f4...77e800`](./contracts/aurora-1313161554/0xaea5f423361e799950e09d38c4dabac2db77e800/) | TimelockController_RewardsDistributor2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| aurora | [`0x2cd59e...238ac1`](./contracts/aurora-1313161554/0x2cd59ea668afda4e712369042150f2fa00238ac1/) | Tri | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| aurora | [`0x802119...6d6803`](./contracts/aurora-1313161554/0x802119e4e253d5c19aa06a5d567c5a41596d6803/) | TriBar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| aurora | [`0xe79345...8ae151`](./contracts/aurora-1313161554/0xe793455c9728fc91a3e5a33faff9eb2f228ae151/) | TriMaker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| aurora | [`0x5ebd5e...0aaade`](./contracts/aurora-1313161554/0x5ebd5e963a00500b6a1234c621811c52af0aaade/) | UsdcMaker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| aurora | [`0x0a0dc6...079e2b`](./contracts/aurora-1313161554/0x0a0dc69d4d6042a961e7f6d9e87b53df0c079e2b/) | Vester | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 15 |
| upstream | 2 |
| standard_library | 3 |
| needs_review | 206 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
