# Agentic Audit Brief: Symbiosis

## Project Overview

- Project: Symbiosis (`symbiosis`)
- Website: [https://symbiosis.finance](https://symbiosis.finance)
- Lifecycle: active (Tier 0, 76.5% below peak)
- Generated: 2026-05-23T05:29:10.117Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: cronos, ethereum, scroll
- Contract surface: 137 unique implementations (246 raw deployments)
- DeFi Llama TVL: $9,352,402.05
- On-chain TVL (included contracts): $236,145,411.90
- TVL by chain: Ethereum $236,145,411.90

## Project Description

Symbiosis is a cross-chain bridge and liquidity protocol that enables users to swap and transfer assets across multiple blockchains. It aggregates liquidity and routes transactions through a network of contracts including portals, routers, and token adapters.

### Architecture

The Symbiosis family relies on Portal contracts as the main entry points for cross-chain operations, with MetaRouter handling routing logic and WOFTAdapterFactory managing token adapters. Supporting proxy contracts provide upgradeability and access control, while verifier contracts ensure transaction integrity.

## Audit Coverage Summary

- Verified implementations audited: 4/69 (5.8%)
- Verified + Unaudited implementations: 65
- Verified by bytecode match: 0
- Unverified implementations: 68
- Unique implementations: 137
- Raw deployments: 246
- Audits discovered: 15
- Scoreable audits (matched contracts): 5
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/symbiosis/information))
- ASD (verified + unaudited TVL): $236,145,411.90
- Latest audit: 2025-10 (fresh)
- Staleness: 2 fresh, 2 aging, 10 stale, 0 unknown
- Tier 1 coverage: 2.9% (SlowMist)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| HashCloak | Tier 2 | 3 | 4.3% | 2022-04 |
| Zokyo | Tier 2 | 3 | 4.3% | 2024-10 |
| Omniscia | Tier 2 | 2 | 2.9% | 2022-03 |
| SlowMist | Tier 1 | 2 | 2.9% | 2022-02 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| MetaRouter | adapter | ethereum | [`0xe75c7e...ba9877`](./contracts/ethereum-1/0xe75c7e85fe6add07077467064ad15847e6ba9877/) | ✅ Audited |
| Portal | unknown | ethereum | 2 deployments: ethereum [`0x8a7f93...e3dedf`](./contracts/ethereum-1/0x8a7f930003bedd63a1ebd99c5917fd6ae7e3dedf/); ethereum `0xb8f275...9e81a8` | ✅ Audited |
| Symbiosis | unknown | ethereum | [`0xd38bb4...c76dd9`](./contracts/ethereum-1/0xd38bb40815d2b0c2d2c866e0c72c5728ffc76dd9/) | ✅ Audited |
| SyntERC20 | token | ethereum | [`0x70b7f7...a0cda1`](./contracts/ethereum-1/0x70b7f7044d2ca8e2f1e999b90ef16d7cb7a0cda1/) | ✅ Audited |

### ⚠️ Verified + Unaudited (65)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| SimpleToken | token | ethereum | [`0x4d2244...594381`](./contracts/ethereum-1/0x4d224452801aced8b2f0aebe155379bb5d594381/) | ⚠️ Unaudited |
| PufferVaultV5 | core_logic | ethereum | [`0xd9a442...306a72`](./contracts/ethereum-1/0xd9a442856c234a39a81a089c06451ebaa4306a72/) | ⚠️ Unaudited |
| GravityTokenG | token | ethereum | [`0x9c7beb...260649`](./contracts/ethereum-1/0x9c7beba8f6ef6643abd725e45a4e8387ef260649/) | ⚠️ Unaudited |
| AddressManager | governance | ethereum | 15 deployments: ethereum [`0x171045...a5a063`](./contracts/ethereum-1/0x1710450f1dab239a83834123508e10c910a5a063/); ethereum `0x1dc618...6d39fa`; ethereum `0x262181...8415af`; ethereum `0x39860b...552864`; ethereum `0x3ad319...b67b05`; ethereum `0x424b45...d202b5`; ethereum `0x5e99cf...e8902d`; ethereum `0x6d223e...719665`; ethereum `0x897c4f...a7abf6`; ethereum `0xa69f3d...ddf561`; ethereum `0xc32db7...b0580d`; ethereum `0xdb2712...fc3284`; ethereum `0xe3cb59...43e9db`; ethereum `0xe63ac9...7a7a82`; ethereum `0xfd195d...dfbc4c` | ⚠️ Unaudited |
| AgglayerGER | unknown | ethereum | [`0x580bda...ce3cfb`](./contracts/ethereum-1/0x580bda1e7a0cfae92fa7f6c20a3794f169ce3cfb/) | ⚠️ Unaudited |
| AgglayerManager | governance | ethereum | [`0x5132a1...1b7ab2`](./contracts/ethereum-1/0x5132a183e9f3cb7c848b0aac5ae0c4f0491b7ab2/) | ⚠️ Unaudited |
| AirdropGrapesToken | operational_periphery | ethereum | [`0x025c6d...205a1f`](./contracts/ethereum-1/0x025c6da5bd0e6a5dd1350fda9e3b6a614b205a1f/) | ⚠️ Unaudited |
| Controller | governance | ethereum | [`0xca0641...febeb7`](./contracts/ethereum-1/0xca06411bd7a7296d7dbdd0050dfc846e95febeb7/) | ⚠️ Unaudited |
| DadFab | unknown | ethereum | 2 deployments: ethereum [`0x01c110...db072d`](./contracts/ethereum-1/0x01c1103d765f62a0d909499d7b615c382cdb072d/); ethereum `0xe5df61...2f012f` | ⚠️ Unaudited |
| DaiFab | unknown | ethereum | [`0xf07674...69ebbb`](./contracts/ethereum-1/0xf07674f6ac6632e253c291b694f9c2e2ed69ebbb/) | ⚠️ Unaudited |
| DSChief | unknown | ethereum | [`0x8e2a84...057152`](./contracts/ethereum-1/0x8e2a84d6ade1e7fffee039a35ef5f19f13057152/) | ⚠️ Unaudited |
| DSChiefFab | unknown | ethereum | [`0x1e7ca0...8f1483`](./contracts/ethereum-1/0x1e7ca05e174a523709e556080e227f734a8f1483/) | ⚠️ Unaudited |
| DSToken | token | ethereum | 6 deployments: ethereum [`0x068083...cc5523`](./contracts/ethereum-1/0x068083069ed92da4c5291dba52d8912abfcc5523/); ethereum `0x2c6739...f95636`; ethereum `0x59adcf...62b6a4`; ethereum `0x97bf1f...b71e0e`; ethereum `0x9aed7a...d6727b`; ethereum `0xc0562b...395e57` | ⚠️ Unaudited |
| ERC20Mock | token | ethereum | 7 deployments: ethereum [`0x076c1e...239bcf`](./contracts/ethereum-1/0x076c1e3a551082fa84042ce5fff53bc795239bcf/); ethereum `0x4a63c5...2ed089`; ethereum `0xb6cd0d...cae97a`; ethereum `0xbd8ea1...107b5e`; ethereum `0xbe574b...5f1ae8`; ethereum `0xef5a2f...d6de34`; ethereum `0xf1815b...045d14` | ⚠️ Unaudited |
| Factory | registry | ethereum | [`0xe5a5f1...f2322b`](./contracts/ethereum-1/0xe5a5f138005e19a3e6d0fe68b039397eeef2322b/) | ⚠️ Unaudited |
| FflonkVerifier | periphery | ethereum | 2 deployments: ethereum [`0x21f65d...b5a3d6`](./contracts/ethereum-1/0x21f65deadb3b85082ba99766f323bea90eb5a3d6/); ethereum `0x4f9a0e...38e6e9` | ⚠️ Unaudited |
| FiatToken | token | ethereum | [`0x8cbde2...77a91a`](./contracts/ethereum-1/0x8cbde23b1416cac07a52591bba744c744d77a91a/) | ⚠️ Unaudited |
| FiatTokenUtil | token | ethereum | [`0x6315aa...0355a6`](./contracts/ethereum-1/0x6315aa908c50376d1028412c028aa0629f0355a6/) | ⚠️ Unaudited |
| FiatTokenV1 | token | ethereum | 3 deployments: ethereum [`0x088247...57fe56`](./contracts/ethereum-1/0x0882477e7895bdc5cea7cb1552ed914ab157fe56/); ethereum `0x0fbbc6...49a77f`; ethereum `0xde0aa2...0f0195` | ⚠️ Unaudited |
| FiatTokenV2 | token | ethereum | [`0xb7277a...3778a2`](./contracts/ethereum-1/0xb7277a6e95992041568d9391d09d0122023778a2/) | ⚠️ Unaudited |
| FiatTokenV2_1 | token | ethereum | [`0xa2327a...4cbdcf`](./contracts/ethereum-1/0xa2327a938febf5fec13bacfb16ae10ecbc4cbdcf/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | ethereum | [`0xa0b869...06eb48`](./contracts/ethereum-1/0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48/) | ⚠️ Unaudited |
| GemFab | unknown | ethereum | 2 deployments: ethereum [`0x431e93...845692`](./contracts/ethereum-1/0x431e935209d79706b5866eb42137a3491d845692/); ethereum `0x552f35...ec30e9` | ⚠️ Unaudited |
| GemPit | unknown | ethereum | 3 deployments: ethereum [`0x69076e...83c275`](./contracts/ethereum-1/0x69076e44a9c70a67d5b79d95795aba299083c275/); ethereum `0x9dc6c5...4c37e5`; ethereum `0xf5b59c...ad8d55` | ⚠️ Unaudited |
| L1ChugSplashProxy | bridge_template | ethereum | 2 deployments: ethereum [`0x305e88...8f18d6`](./contracts/ethereum-1/0x305e88d809c9dc03179554bfbf85ac05ce8f18d6/); ethereum `0xb6c539...c230df` | ⚠️ Unaudited |
| L1CrossDomainMessenger | unknown | ethereum | 2 deployments: ethereum [`0x635ba6...13c310`](./contracts/ethereum-1/0x635ba609680c55c3bdd0b3627b4c5db21b13c310/); ethereum `0x9cddc6...e8b51f` | ⚠️ Unaudited |
| L1ERC721Bridge | operational_periphery | ethereum | 2 deployments: ethereum [`0xbe896f...481c8f`](./contracts/ethereum-1/0xbe896f53bb658c9eecabbdf4a4db85e4b8481c8f/); ethereum `0xfb1e17...d3c32d` | ⚠️ Unaudited |
| L1StandardBridge | bridge_template | ethereum | 2 deployments: ethereum [`0x3b95bc...9715e5`](./contracts/ethereum-1/0x3b95bc951ee0f553ba487327278cac44f29715e5/); ethereum `0x62b257...41cd58` | ⚠️ Unaudited |
| L2OutputOracle | operational_periphery | ethereum | 2 deployments: ethereum [`0x1e5e63...70b30a`](./contracts/ethereum-1/0x1e5e634981564fc645dcbc6546ae618d7870b30a/); ethereum `0x30c789...a05c1d` | ⚠️ Unaudited |
| MasterChef | unknown | ethereum | [`0xe05de6...cc6df2`](./contracts/ethereum-1/0xe05de631122d95ef347f6fca85d1bb149fcc6df2/) | ⚠️ Unaudited |
| MasterMinter | unknown | ethereum | 3 deployments: ethereum [`0x566c11...674335`](./contracts/ethereum-1/0x566c11b5c2201b69c9269fe924e4395873674335/); ethereum `0xe98261...e3de17`; ethereum `0xec0f22...ac4beb` | ⚠️ Unaudited |
| Members | unknown | ethereum | [`0x3e8640...107ac5`](./contracts/ethereum-1/0x3e8640574aa764763291ed733672d3a105107ac5/) | ⚠️ Unaudited |
| MiniMeTokenFactory | registry | ethereum | [`0x003ea7...f15505`](./contracts/ethereum-1/0x003ea7f54b6dcf6cee86986edc18143a35f15505/) | ⚠️ Unaudited |
| MomFab | unknown | ethereum | 2 deployments: ethereum [`0x141a20...3669ea`](./contracts/ethereum-1/0x141a206ece672e3198086c5d21f7858ad03669ea/); ethereum `0x4a67d9...bac0fe` | ⚠️ Unaudited |
| MovementWAB | unknown | ethereum | [`0xb48086...6ee114`](./contracts/ethereum-1/0xb4808618b63384f50ff9eee14fe47aee646ee114/) | ⚠️ Unaudited |
| NEC | unknown | ethereum | [`0xcc80c0...b97a5e`](./contracts/ethereum-1/0xcc80c051057b774cd75067dc48f8987c4eb97a5e/) | ⚠️ Unaudited |
| NectarController | governance | ethereum | 2 deployments: ethereum [`0x8d5a41...05d98d`](./contracts/ethereum-1/0x8d5a41e85f4ce2433beef476305d307b9205d98d/); ethereum `0x904249...cb7640` | ⚠️ Unaudited |
| OFTMock | unknown | ethereum | [`0xbc7f24...c14b84`](./contracts/ethereum-1/0xbc7f244e2b38657bd014a5f6f4e4ba1125c14b84/) | ⚠️ Unaudited |
| OptimismMintableERC20Factory | registry | ethereum | 2 deployments: ethereum [`0x216525...d41e20`](./contracts/ethereum-1/0x2165254f0dd74c19d07ed447b231447604d41e20/); ethereum `0xd49577...ceb894` | ⚠️ Unaudited |
| OptimismPortal | unknown | ethereum | 2 deployments: ethereum [`0x445c62...b199f1`](./contracts/ethereum-1/0x445c62f4948f3b08a6bb1dbc51ef985b3eb199f1/); ethereum `0x916876...0b7622` | ⚠️ Unaudited |
| PolygonZkEVM | unknown | ethereum | [`0xe262ea...03efef`](./contracts/ethereum-1/0xe262ea2782e2e8dbfe354048c3b5d6de9603efef/) | ⚠️ Unaudited |
| PolygonZkEVMGlobalExitRoot | operational_periphery | ethereum | [`0xbc1ea5...9b6bc3`](./contracts/ethereum-1/0xbc1ea504fc54d078514efcca1f6860b5219b6bc3/) | ⚠️ Unaudited |
| PolygonZkEVMTimelock | governance | ethereum | [`0xef1462...7ca4ef`](./contracts/ethereum-1/0xef1462451c30ea7ad8555386226059fe837ca4ef/) | ⚠️ Unaudited |
| PolygonZkEVMUpgraded | unknown | ethereum | [`0x301442...d9ef7f`](./contracts/ethereum-1/0x301442aa888701c8b86727d42f3c55fb0dd9ef7f/) | ⚠️ Unaudited |
| Proxy | proxy | ethereum | 12 deployments: ethereum [`0x0f2486...1e47bf`](./contracts/ethereum-1/0x0f2486b9c7ba7a1edd9ab33c7a5586d6481e47bf/); ethereum `0x120bd9...35d78c`; ethereum `0x1c466b...b8aa71`; ethereum `0x6ec90d...e2c5ce`; ethereum `0x732970...fea232`; ethereum `0x96d6e5...8771c4`; ethereum `0xb73603...5016fb`; ethereum `0xd0e3a9...3e3dcc`; ethereum `0xea4f12...126fba`; ethereum `0xf417f5...d2851f`; ethereum `0xf4b428...0748fa`; ethereum `0xf992f6...acf631` | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | 17 deployments: ethereum [`0x007957...f8cb2d`](./contracts/ethereum-1/0x007957bf0681b75e92273a7018784ace6af8cb2d/); ethereum `0x1772e3...410eb5`; ethereum `0x1a7381...88007d`; ethereum `0x4d7e19...a40e9e`; ethereum `0x65d6b2...92d48e`; ethereum `0x68b18d...8062bd`; ethereum `0x8a7b47...8d3be1`; ethereum `0x8ad82b...0778d4`; ethereum `0x943ed4...1ca66e`; ethereum `0xa2dca8...06e8d1`; ethereum `0xc21f2e...b6e79d`; ethereum `0xc95801...726782`; ethereum `0xc9ef2e...906995`; ethereum `0xd04a69...86ec39`; ethereum `0xe84162...dbdd0e`; ethereum `0xeb77d0...4c48cd`; ethereum `0xecde80...b0d8e5` | ⚠️ Unaudited |
| Reservoir | unknown | ethereum | [`0xf911f2...22bbc3`](./contracts/ethereum-1/0xf911f2f5b5e4b12bb2d5cbdcec717d3c6222bbc3/) | ⚠️ Unaudited |
| ResolvedDelegateProxy | unknown | ethereum | [`0x2fe3ad...d94ba5`](./contracts/ethereum-1/0x2fe3ad97a60eb7c79a976fc18bb5ffd07dd94ba5/) | ⚠️ Unaudited |
| SafeL2 | unknown | scroll | [`0xd58811...50c4f8`](./contracts/scroll-534352/0xd588116a2cc55ed7c926405f425f22f72450c4f8/) | ⚠️ Unaudited |
| SignatureChecker | unknown | ethereum | [`0xdf7108...f86b6c`](./contracts/ethereum-1/0xdf7108f8b10f9b9ec1aba01cca057268cbf86b6c/) | ⚠️ Unaudited |
| SymbiosisTokenVesting | operational_periphery | ethereum | 4 deployments: ethereum [`0x6ef7dd...7231bf`](./contracts/ethereum-1/0x6ef7dd4d7782c27a4c509585db60695d8c7231bf/); ethereum `0x931c67...9f48f6`; ethereum `0xc5ebd4...0a848d`; ethereum `0xe99a09...8c1fcb` | ⚠️ Unaudited |
| SystemConfig | governance | ethereum | 2 deployments: ethereum [`0x895e00...351a5d`](./contracts/ethereum-1/0x895e00269a05848f3c9889efa677d02ff7351a5d/); ethereum `0xef01a6...1ad0ae` | ⚠️ Unaudited |
| TapFab | unknown | ethereum | 2 deployments: ethereum [`0x521c42...51f14f`](./contracts/ethereum-1/0x521c420c2a2b461034becbb41d4888b68951f14f/); ethereum `0xc2baca...98ab50` | ⚠️ Unaudited |
| TetherToken | token | ethereum | 5 deployments: ethereum [`0x0e98db...fdba1b`](./contracts/ethereum-1/0x0e98db51010dd1ade14dd3fb164e218805fdba1b/); ethereum `0x3721a8...ed3b57`; ethereum `0xabdf14...fae01f`; ethereum `0xdac17f...831ec7`; ethereum `0xf64456...7a17c0` | ⚠️ Unaudited |
| TokenVesting | operational_periphery | ethereum | [`0x3086ac...c76827`](./contracts/ethereum-1/0x3086ac03b0347bee2ce3fd9079452db13fc76827/) | ⚠️ Unaudited |
| TopFab | unknown | ethereum | 2 deployments: ethereum [`0x0eda20...733ed4`](./contracts/ethereum-1/0x0eda20f7499aae7bdadc4e52fd72e49663733ed4/); ethereum `0x9dda49...380c49` | ⚠️ Unaudited |
| TubFab | unknown | ethereum | 2 deployments: ethereum [`0xb3b670...d1b987`](./contracts/ethereum-1/0xb3b67099121e1fbde6276b2802048d1a7dd1b987/); ethereum `0xec4d29...d28356` | ⚠️ Unaudited |
| USDCOFTAdapter | adapter | ethereum | [`0x67480c...df647f`](./contracts/ethereum-1/0x67480c30ff8cc128cf0250e25616857302df647f/) | ⚠️ Unaudited |
| VoxFab | unknown | ethereum | 2 deployments: ethereum [`0x414b1d...2499bf`](./contracts/ethereum-1/0x414b1da0bb6e948dc0559d14ebde9fa9572499bf/); ethereum `0x68fd08...6ea216` | ⚠️ Unaudited |
| WBTC | token | ethereum | [`0x2260fa...c2c599`](./contracts/ethereum-1/0x2260fac5e5542a773aa44fbcfedf7c193bc2c599/) | ⚠️ Unaudited |
| WETH | token | ethereum | 3 deployments: ethereum [`0x353f89...c4bf52`](./contracts/ethereum-1/0x353f8931ce1c52f643121be129985aab09c4bf52/); ethereum `0x5503e7...a2808e`; ethereum `0xaec71b...3bc33d` | ⚠️ Unaudited |
| WETH9 | token | ethereum | [`0xc02aaa...756cc2`](./contracts/ethereum-1/0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2/) | ⚠️ Unaudited |
| WOFTAdapterFactory | adapter | ethereum | 12 deployments: ethereum [`0x015fd5...9c9329`](./contracts/ethereum-1/0x015fd589f4f1a33ce4487e12714e1b15129c9329/); ethereum `0x5b58c9...2dfd2b`; ethereum `0x674843...38cbc8`; ethereum `0x69bfc7...a74d9f`; ethereum `0x74c9f2...89de67`; ethereum `0x7ac729...16beb8`; ethereum `0x880f61...89167f`; ethereum `0xb1eead...2b86c3`; ethereum `0xbab93b...7cc500`; ethereum `0xbb0d08...e31c2e`; ethereum `0xd8cf92...d6ff4d`; ethereum `0xe9aba8...0f7de7` | ⚠️ Unaudited |
| WrapperLockEth | unknown | ethereum | [`0x991f0e...f3690e`](./contracts/ethereum-1/0x991f0e5c5775ca9dd02e30e67f545c36cff3690e/) | ⚠️ Unaudited |
| wstETHOFTAdapterUpgradeable | adapter | ethereum | 14 deployments: ethereum [`0x02dedc...7f808d`](./contracts/ethereum-1/0x02dedca9ccfdaa3a68fac4f368644416be7f808d/); ethereum `0x1a9dd4...41ce06`; ethereum `0x4175d9...13ebe3`; ethereum `0x5c2973...be7362`; ethereum `0x6cea30...795848`; ethereum `0x734cef...f9610a`; ethereum `0x7bcdc4...8629d6`; ethereum `0x7bf810...fac855`; ethereum `0x8ac372...8c90ef`; ethereum `0xa2d339...19ee3f`; ethereum `0xa460c9...955839`; ethereum `0xb8b21b...4e9339`; ethereum `0xfe146a...b4a337`; ethereum `0xfe634e...6e001f` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (68)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x0cbd55...390940` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0d126c...c00c60` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0d64d8...50fbd1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x102560...5df38b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x127f3c...a9199b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x15f73a...6f5605` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x183739...a98908` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1ee741...fc7bef` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1ff103...26f4da` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x20826b...363058` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x20bdda...9a55b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x230557...37b15e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2c6f75...35b507` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2ff889...b8854d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x31d687...cda740` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x335926...f90c3a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x362b56...9dfce6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3ad977...98f8a1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3bd1ee...3ca5af` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x402fa0...2584b1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x411ea3...9e93b9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x46695c...003ee7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x471208...0a8732` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4c209a...223d28` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4c9ad5...1c9acd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x542fda...7e677d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x56de9e...fa51a0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5b4997...5c76c8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5b4ba4...789c09` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x76d8a5...b14646` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7916ac...fb8675` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x824d8f...4e4cba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x84f162...cbf197` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x897c79...ebc249` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x89f800...389aa3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8b00a8...af293b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8cbd1d...aeed7a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9001db...d25001` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x92bfd0...fb3e9a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9843e5...bd50ac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x98bc79...4cf142` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9b3093...8fa3d1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9e978e...73fdd1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9f4ef8...57df75` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9f6de3...1f2423` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9fcb31...35be6a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa1438c...05b024` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa71a6c...905627` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc1bc8b...5ace0c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc61d91...f4a581` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc77841...0cd5ab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc882b9...2b0d9d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcbc21c...efe931` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd3f3c5...8a8a89` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe6eaa2...a68e1d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe81930...a59891` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xef0594...5e8173` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf50db8...785f99` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf68393...8fbf14` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf85903...287c11` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf88cbc...c08ff4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xff0eb5...489010` | ❓ Unverified |
| UnnamedContract | unknown | cronos | `0x292fc5...824d62` | ❓ Unverified |
| UnnamedContract | unknown | cronos | `0x2e818e...c5d3d7` | ❓ Unverified |
| UnnamedContract | unknown | cronos | `0x50c42d...f2634b` | ❓ Unverified |
| UnnamedContract | unknown | cronos | `0xaa5b84...64076c` | ❓ Unverified |
| UnnamedContract | unknown | cronos | `0xbc1000...000000` | ❓ Unverified |
| UnnamedContract | unknown | cronos | `0xe34c91...48b693` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Symbiosis Protocol Audit - Omniscia.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol/core/Symbiosis%20Protocol%20Audit%20-%20Omniscia.pdf) | Omniscia | Audit | 2022-03 | stale | Direct | contract_name | 3 | high |
| [Symbiosis Protocol Audit - SlowMist.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol/core/Symbiosis%20Protocol%20Audit%20-%20SlowMist.pdf) | SlowMist | Audit | 2022-02 | stale | Direct | contract_name | 3 | high |
| [Symbiosis Protocol Audit - Zokyo.pdf (also discovered via alternate URL)](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol/core/Symbiosis%20Protocol%20Audit%20-%20Zokyo.pdf) | Zokyo | Audit | 2022-02 | stale | Direct | contract_name | 4 | high |
| [Symbiosis Depository Audit - Decurity.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol/depository/Symbiosis%20Depository%20Audit%20-%20Decurity.pdf) | yAudit | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [Symbiosis Protocol MRv3 Audit - Zokyo.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol/metarouter-v3/Symbiosis%20Protocol%20MRv3%20Audit%20-%20Zokyo.pdf) | Zokyo | Audit | 2022-05 | stale | Direct | contract_name | 4 | high |
| [Symbiosis Onchain Swap Audit - Decurity.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol/onchain-swap/Symbiosis%20Onchain%20Swap%20Audit%20-%20Decurity.pdf) | Decurity | Audit | 2023-09 | stale | Direct | n/a | 0 | n/a |
| [Symbiosis Pool Audit - Zokyo.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol/pool/Symbiosis%20Pool%20Audit%20-%20Zokyo.pdf) | Zokyo | Audit | 2022-12 | stale | Direct | n/a | 0 | n/a |
| [Symbiosis TON Bridge - Zokyo.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol/ton-bridge/Symbiosis%20TON%20Bridge%20-%20Zokyo.pdf) | Zokyo | Audit | 2024-05 | stale | Direct | n/a | 0 | n/a |
| [Symbiosis TON Bridge v2 - Zokyo.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol/ton-bridge/Symbiosis%20TON%20Bridge%20v2%20-%20Zokyo.pdf) | Zokyo | Audit | 2024-10 | aging | Direct | n/a | 0 | n/a |
| [Active Bug Bounty Program](https://immunefi.com/bug-bounty/symbiosis/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a |
| [Symbiosis Staking - Decurity.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Staking/Symbiosis%20Staking%20-%20Decurity.pdf) | Decurity | Audit | 2025-07 | fresh | Direct | n/a | 0 | n/a |
| [Symbiosis Relayers Network 2022 - Decurity.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Relayers%20Network/Symbiosis%20Relayers%20Network%202022%20-%20Decurity.pdf) | Decurity | Audit | 2023-01 | stale | Direct | n/a | 0 | n/a |
| [Symbiosis Relayers Network 2024 - Decurity.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Relayers%20Network/Symbiosis%20Relayers%20Network%202024%20-%20Decurity.pdf) | Decurity | Audit | 2024-07 | aging | Direct | n/a | 0 | n/a |
| [Symbiosis Frontend App - Decurity.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Frontend%20App/Symbiosis%20Frontend%20App%20-%20Decurity.pdf) | Decurity | Audit | 2022-08 | stale | Direct | n/a | 0 | n/a |
| [Symbiosis Protocol Audit - HashCloak.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol%20Terra/core/Symbiosis%20Protocol%20Audit%20-%20HashCloak.pdf) | HashCloak | Audit | 2022-04 | stale | Direct | contract_name | 4 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x025c6d...205a1f`](./contracts/ethereum-1/0x025c6da5bd0e6a5dd1350fda9e3b6a614b205a1f/) | AirdropGrapesToken | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xca0641...febeb7`](./contracts/ethereum-1/0xca06411bd7a7296d7dbdd0050dfc846e95febeb7/) | Controller | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe5a5f1...f2322b`](./contracts/ethereum-1/0xe5a5f138005e19a3e6d0fe68b039397eeef2322b/) | Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa0b869...06eb48`](./contracts/ethereum-1/0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48/) | FiatTokenV2_2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x431e93...845692`](./contracts/ethereum-1/0x431e935209d79706b5866eb42137a3491d845692/) | GemFab | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x69076e...83c275`](./contracts/ethereum-1/0x69076e44a9c70a67d5b79d95795aba299083c275/) | GemPit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x305e88...8f18d6`](./contracts/ethereum-1/0x305e88d809c9dc03179554bfbf85ac05ce8f18d6/) | L1ChugSplashProxy | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x635ba6...13c310`](./contracts/ethereum-1/0x635ba609680c55c3bdd0b3627b4c5db21b13c310/) | L1CrossDomainMessenger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3b95bc...9715e5`](./contracts/ethereum-1/0x3b95bc951ee0f553ba487327278cac44f29715e5/) | L1StandardBridge | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe05de6...cc6df2`](./contracts/ethereum-1/0xe05de631122d95ef347f6fca85d1bb149fcc6df2/) | MasterChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x566c11...674335`](./contracts/ethereum-1/0x566c11b5c2201b69c9269fe924e4395873674335/) | MasterMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3e8640...107ac5`](./contracts/ethereum-1/0x3e8640574aa764763291ed733672d3a105107ac5/) | Members | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb48086...6ee114`](./contracts/ethereum-1/0xb4808618b63384f50ff9eee14fe47aee646ee114/) | MovementWAB | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcc80c0...b97a5e`](./contracts/ethereum-1/0xcc80c051057b774cd75067dc48f8987c4eb97a5e/) | NEC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8d5a41...05d98d`](./contracts/ethereum-1/0x8d5a41e85f4ce2433beef476305d307b9205d98d/) | NectarController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2fe3ad...d94ba5`](./contracts/ethereum-1/0x2fe3ad97a60eb7c79a976fc18bb5ffd07dd94ba5/) | ResolvedDelegateProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6ef7dd...7231bf`](./contracts/ethereum-1/0x6ef7dd4d7782c27a4c509585db60695d8c7231bf/) | SymbiosisTokenVesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x521c42...51f14f`](./contracts/ethereum-1/0x521c420c2a2b461034becbb41d4888b68951f14f/) | TapFab | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3086ac...c76827`](./contracts/ethereum-1/0x3086ac03b0347bee2ce3fd9079452db13fc76827/) | TokenVesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb3b670...d1b987`](./contracts/ethereum-1/0xb3b67099121e1fbde6276b2802048d1a7dd1b987/) | TubFab | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x67480c...df647f`](./contracts/ethereum-1/0x67480c30ff8cc128cf0250e25616857302df647f/) | USDCOFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x414b1d...2499bf`](./contracts/ethereum-1/0x414b1da0bb6e948dc0559d14ebde9fa9572499bf/) | VoxFab | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x015fd5...9c9329`](./contracts/ethereum-1/0x015fd589f4f1a33ce4487e12714e1b15129c9329/) | WOFTAdapterFactory | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x991f0e...f3690e`](./contracts/ethereum-1/0x991f0e5c5775ca9dd02e30e67f545c36cff3690e/) | WrapperLockEth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x02dedc...7f808d`](./contracts/ethereum-1/0x02dedca9ccfdaa3a68fac4f368644416be7f808d/) | wstETHOFTAdapterUpgradeable | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 41 |
| upstream | 19 |
| standard_library | 10 |
| needs_review | 67 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 9
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=5
- Match method counts: extraction_exact=21

Zero-match audit list:

- [2087] Symbiosis Depository Audit - Decurity.pdf
- [2089] Symbiosis Onchain Swap Audit - Decurity.pdf
- [2090] Symbiosis Pool Audit - Zokyo.pdf
- [2091] Symbiosis TON Bridge - Zokyo.pdf
- [2092] Symbiosis TON Bridge v2 - Zokyo.pdf
- [2094] Symbiosis Staking - Decurity.pdf
- [2095] Symbiosis Relayers Network 2022 - Decurity.pdf
- [2096] Symbiosis Relayers Network 2024 - Decurity.pdf
- [2097] Symbiosis Frontend App - Decurity.pdf

Fork inheritance lineage and inherited audits are included when available.
