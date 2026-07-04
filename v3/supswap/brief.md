# Agentic Audit Brief: SupSwap

## Project Overview

- Project: SupSwap (`supswap`)
- Website: [https://supswap.xyz](https://supswap.xyz)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:57.226Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-b097
- Chains: mode
- Contract surface: 287 unique implementations (357 raw deployments)
- DeFi Llama TVL: $19,012.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 41 project-authored contract(s) across 1 chain(s); upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 7 functional families. Its contracts share 13 common project-authored base contract(s) (peripheryimmutablestate, peripheryvalidation, peripherypaymentswithfee). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 357; live-surface contracts included: 357 (0 live, 357 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/0 (0.0%)
- Deployed-live implementations: 0 of 287 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/36
- Verified + Unaudited implementations: 35
- Verified by bytecode match: 0
- Unverified implementations: 251
- Unique implementations: 287
- Raw deployments: 357
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Zellic | Tier 2 | 1 | 2.8% | 2024-02 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SupRouter | adapter | mode | n/a | 4 deployments: mode [`0x082c1e...e61ae6`](./contracts/mode-34443/0x082c1e810b6518a65ae61d9c07dc25d9ffe61ae6/); mode `0x3e862a...488293`; mode `0x62296d...bc163b`; mode `0x7466ac...c348f7` | ✅ Audited |

### ⚠️ Verified + Unaudited (35)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccessRegistry | unknown | mode | n/a | [`0xaab557...afbbef`](./contracts/mode-34443/0xaab5576a760e994fbdc02b8e4ed33f2040afbbef/) | ⚠️ Unaudited |
| BatchSender | unknown | mode | n/a | [`0xb1359e...0fddb6`](./contracts/mode-34443/0xb1359e48a60141c183a2fc3ea52db8bfb70fddb6/) | ⚠️ Unaudited |
| ConstantProductCurve | unknown | mode | n/a | [`0x27cc54...db7b8d`](./contracts/mode-34443/0x27cc547291b0d824ffd53412688328c900db7b8d/) | ⚠️ Unaudited |
| FastPriceEvents | unknown | mode | n/a | 4 deployments: mode [`0x1d610f...c8043e`](./contracts/mode-34443/0x1d610fd6a8cb065658c7e6ce5ea268310dc8043e/); mode `0x54f2cb...35a524`; mode `0x7189d3...ee977c`; mode `0xeb8c53...0634c2` | ⚠️ Unaudited |
| Gauge | unknown | mode | n/a | [`0xb406d2...a70b98`](./contracts/mode-34443/0xb406d296cdb254a14d1a4cb5c12d09edbaa70b98/) | ⚠️ Unaudited |
| Launchpad | unknown | mode | n/a | [`0xd6a841...1ede25`](./contracts/mode-34443/0xd6a841627005e32f79b3dbe08c9eea6ce61ede25/) | ⚠️ Unaudited |
| LaunchpadToken | unknown | mode | n/a | 3 deployments: mode [`0x27fdff...bf3e5d`](./contracts/mode-34443/0x27fdff65c7c7946704f32c30ef27c0dc70bf3e5d/); mode `0x3dd464...7c4eb5`; mode `0x6bda32...2ad33a` | ⚠️ Unaudited |
| LpHolder | unknown | mode | n/a | [`0x413e73...53c811`](./contracts/mode-34443/0x413e73f42d2f4d18e358be25246b6f5e3253c811/) | ⚠️ Unaudited |
| Multicall3 | unknown | mode | n/a | 5 deployments: mode [`0x3b1288...f98c8e`](./contracts/mode-34443/0x3b1288408b60a4d38394c0d88a81e58352f98c8e/); mode `0x4c9d53...e64904`; mode `0x8773e2...9b64c6`; mode `0xf0a7f1...c66fc8`; mode `0xf92b1f...fc75df` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | mode | n/a | 2 deployments: mode [`0x118918...883b29`](./contracts/mode-34443/0x1189180050ce260451d802a7b648134d85883b29/); mode `0xae3a3e...9e015b` | ⚠️ Unaudited |
| OrderBookReader | unknown | mode | n/a | 8 deployments: mode [`0x3381b0...e30986`](./contracts/mode-34443/0x3381b01deff95226014cc5b176aa2f7f22e30986/); mode `0x4f5f2a...75e273`; mode `0x5cca0e...51b14e`; mode `0x6c04a4...f14a54`; mode `0x9084dd...7c5f1d`; mode `0xb0678e...c718fe`; mode `0xb6ee50...9e3825`; mode `0xdf271b...bf149a` | ⚠️ Unaudited |
| PancakeInterfaceMulticallV2 | unknown | mode | n/a | 2 deployments: mode [`0x3133ff...bc4547`](./contracts/mode-34443/0x3133ff5efa4f3490ef090a6201c532062bbc4547/); mode `0xec6e3a...0e8267` | ⚠️ Unaudited |
| PoolHelper | unknown | mode | n/a | [`0x71a1e1...f0b7ab`](./contracts/mode-34443/0x71a1e1929bdeaa79e211692f5547b0681ff0b7ab/) | ⚠️ Unaudited |
| PositionManager | unknown | mode | n/a | [`0x651349...b346d1`](./contracts/mode-34443/0x651349f1f0ec067e4d85016517abf44a16b346d1/) | ⚠️ Unaudited |
| PositionUtils | unknown | mode | n/a | 4 deployments: mode [`0x1f17a7...9b1c67`](./contracts/mode-34443/0x1f17a7efe305126f4bc7f9d0f685e60e9c9b1c67/); mode `0x468f3f...25ea5b`; mode `0x65c3e2...3487d6`; mode `0x830861...608106` | ⚠️ Unaudited |
| QuoterV2 | unknown | mode | n/a | 2 deployments: mode [`0x5e6aeb...1f72ba`](./contracts/mode-34443/0x5e6aebab1ad525f5336bd12e6847b851531f72ba/); mode `0x7fd569...bfc787` | ⚠️ Unaudited |
| ReferralHandler | unknown | mode | n/a | [`0xa55634...d37f7b`](./contracts/mode-34443/0xa55634a78dce36fb7e67bb45fa47d2c277d37f7b/) | ⚠️ Unaudited |
| ReferralHandlerV2 | unknown | mode | n/a | [`0xf0c5de...e7078c`](./contracts/mode-34443/0xf0c5de2c2b54cb665650982d0edd285e86e7078c/) | ⚠️ Unaudited |
| ReferralReader | unknown | mode | n/a | 8 deployments: mode [`0x1e85bd...310249`](./contracts/mode-34443/0x1e85bd181d528872536dc3482918fc8e22310249/); mode `0x2b8746...f4c661`; mode `0x6389f8...79c7bb`; mode `0x9b86cb...739c30`; mode `0xaa43f2...382756`; mode `0xae7508...e994bb`; mode `0xbd919a...73677e`; mode `0xc5eea8...209e60` | ⚠️ Unaudited |
| ReferralRouter | adapter | mode | n/a | [`0xe8a9d7...4b21f4`](./contracts/mode-34443/0xe8a9d7a48db1b7a7b6e73b568d2a257bed4b21f4/) | ⚠️ Unaudited |
| ReferralStorage | unknown | mode | n/a | [`0x75d489...e401f6`](./contracts/mode-34443/0x75d4891c4c7c32d65f3bc4ac2b1415e615e401f6/) | ⚠️ Unaudited |
| ShortsTracker | unknown | mode | n/a | 5 deployments: mode [`0x7b6bc9...ea72a0`](./contracts/mode-34443/0x7b6bc932db16e2e8b96b16ba00d2731ec4ea72a0/); mode `0x7d2b17...ef3180`; mode `0xae0ce3...bac389`; mode `0xddec54...15dd40`; mode `0xec109e...9ca06a` | ⚠️ Unaudited |
| ShortsTrackerTimelock | unknown | mode | n/a | 5 deployments: mode [`0x20f0ae...669b0b`](./contracts/mode-34443/0x20f0aec75986298789328a784ff7b25d96669b0b/); mode `0x47e015...a242d9`; mode `0x594cfc...9085fe`; mode `0xc20bdb...59c7a3`; mode `0xf9f466...8e49b1` | ⚠️ Unaudited |
| SmartRouter | adapter | mode | n/a | 3 deployments: mode [`0x016e13...9bd415`](./contracts/mode-34443/0x016e131c05fb007b5ab286a6d614a5dab99bd415/); mode `0x35ec98...c273b7`; mode `0xaeca7b...320e7f` | ⚠️ Unaudited |
| SmartRouterHelper | unknown | mode | n/a | 4 deployments: mode [`0x1c14f3...8dfac6`](./contracts/mode-34443/0x1c14f3a366e5202522734a609e5798f0c08dfac6/); mode `0x37a9db...dc98e2`; mode `0x9fe53e...538482`; mode `0xa79648...36e204` | ⚠️ Unaudited |
| SUPFactory | unknown | mode | n/a | 4 deployments: mode [`0x0596f1...4f20fc`](./contracts/mode-34443/0x0596f192b6ede99438004276fa0703245c4f20fc/); mode `0x439253...5e759d`; mode `0x557f46...ff89c0`; mode `0x9f83a0...cb7e5c` | ⚠️ Unaudited |
| SupV3Factory | unknown | mode | n/a | 2 deployments: mode [`0xa0b018...e1f693`](./contracts/mode-34443/0xa0b018fe0d00ed075fb9b0eee26d25cf72e1f693/); mode `0xc33ce0...f38584` | ⚠️ Unaudited |
| SupV3PoolDeployer | unknown | mode | n/a | 2 deployments: mode [`0x835045...46b5bd`](./contracts/mode-34443/0x8350450aaf0f3139609d823f2cda02d39e46b5bd/); mode `0xdd0b32...a25dd7` | ⚠️ Unaudited |
| SwapRouter | unknown | mode | n/a | 3 deployments: mode [`0x0154a8...3ed561`](./contracts/mode-34443/0x0154a890c53e6da95371adbfb9cafc79ae3ed561/); mode `0x668ceb...08948a`; mode `0xc9adff...19ee25` | ⚠️ Unaudited |
| TickLens | unknown | mode | n/a | 2 deployments: mode [`0x43be73...7fd39e`](./contracts/mode-34443/0x43be732a44c6e3c488b1161c6b054658737fd39e/); mode `0xba2453...2362a9` | ⚠️ Unaudited |
| TokenManager | unknown | mode | n/a | 2 deployments: mode [`0xca30f3...325ed3`](./contracts/mode-34443/0xca30f3c499355aa0e86058ec8dd2841c39325ed3/); mode `0xe06cf7...365fce` | ⚠️ Unaudited |
| TokenValidator | unknown | mode | n/a | 4 deployments: mode [`0x1f00b2...492565`](./contracts/mode-34443/0x1f00b2091a7e6327812def3862856c1d4c492565/); mode `0x84be34...696cc7`; mode `0x8b4780...d9f417`; mode `0x95cfa3...b56ee3` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | mode | n/a | 2 deployments: mode [`0x96a6a0...fcd733`](./contracts/mode-34443/0x96a6a0b472dd136950a93e6324e599ce0dfcd733/); mode `0xfd4fcd...34f5ce` | ⚠️ Unaudited |
| V3Migrator | unknown | mode | n/a | 2 deployments: mode [`0xbad004...db932a`](./contracts/mode-34443/0xbad004d1fc7c7da2027421a1478a29ed30db932a/); mode `0xe9739f...e7cd15` | ⚠️ Unaudited |
| VaultErrorController | unknown | mode | n/a | 12 deployments: mode [`0x031b63...d5ec69`](./contracts/mode-34443/0x031b638e939ec03885bdb4b3413d948fcdd5ec69/); mode `0x2c360d...bb949d`; mode `0x2c7e82...4dffab`; mode `0x31c802...0d086d`; mode `0x618ec0...506800`; mode `0x72df43...27df86`; mode `0x7e3153...700a5f`; mode `0x8cc1c2...762ecd`; mode `0x9108e1...fb1372`; mode `0x9502e4...52631d`; mode `0xaa9334...2c226c`; mode `0xabd252...a55e66` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (251)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | mode | n/a | `0x015e93...30c845` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x036816...3545e4` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x041760...b30eb1` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x046cd4...2fa66e` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x0488ee...ca824a` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x05fb85...00fe08` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x06e984...5f3799` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x072be6...56ba1c` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x07ae37...4eef77` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x099fe1...2d5ff7` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x0a04bf...65b50b` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x0b2a9c...c84d80` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x0c94c0...58d968` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x0d7a7d...b2b3d4` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x0e2247...d355f9` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x0edf15...c9fc87` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x0f5907...c5d791` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x0fde37...4d0b4b` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x10f2b4...747fa1` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x11e19a...f718f0` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x12ed17...0cc819` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x13730e...5b2335` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x150353...d89e1d` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x155304...ed0a99` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x1696d5...2fd30b` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x17c7a8...cccd46` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x18b959...a28b1c` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x18d2db...5f2a64` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x192a51...a8a1f3` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x19585c...ef462d` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x1a07a9...7ac081` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x1c66fd...f06fc8` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x1d2f42...eec04b` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x20b81d...90297b` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x2256f5...2a5524` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x22725a...5901fe` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x22e5e5...7b51a1` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x243cd1...1c06bf` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x2540d5...1785ee` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x2549e4...11ff77` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x25a2b9...48393d` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x2653f4...f76869` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x27acdd...de0cc5` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x27b0f9...676e20` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x294d71...9da5e0` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x2a6665...687ccd` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x2c3b94...e6cfa3` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x2f1d69...173f5f` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x2fdbd5...51088b` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x304dd7...e29b32` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x306bfb...b5b8f1` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x31630a...e52add` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x318034...b5f33d` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x339527...c9073f` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x34cc71...455bf0` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x3599ea...b77cfa` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x35ebc8...943be2` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x3623f4...cf5db6` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x392c9e...14effb` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x392e68...6fceec` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x39de2b...bac24f` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x3a8c70...a60c11` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x3db0de...fa4e68` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x3ec4c2...a3c8e5` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x3f686c...44c963` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x3fe6c8...a57d05` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x3fe961...562c97` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x42087c...a35a25` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x421a69...11c512` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x425656...bc0fac` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x42bc05...ba63ed` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x443c87...17e853` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x443f0d...655853` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x4506f6...9d12c0` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x465287...105d51` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x473fb4...e12b41` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x4747ab...e3a166` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x48c358...4ea1ad` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x48fa6e...41368c` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x49ff40...e626f9` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x4be6d1...844a9a` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x4c3c80...6b8f3a` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x4d1ca4...d817d8` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x4d1f2d...be0ca8` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x4ef6a6...a849db` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x4f3486...6adcd1` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x4f5779...7140c5` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x4fe6f8...9233c6` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x50235c...a04334` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x543516...54ef5f` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x545fbb...45d3dc` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x5496eb...898c53` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x55e5c0...30007e` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x56bb63...dc73e6` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x57f88c...9c133a` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x59719c...50f9a4` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x5a1428...dab9ca` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x5ac1b7...7f5648` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x60597f...346a06` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x6162d3...07476f` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x6373ee...4f6824` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x660987...e4276f` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x660df3...9ff36c` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x66e4ba...fbd9bb` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x674868...276164` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x67973f...e6e0ed` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x67e122...3efe68` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x6816bd...1bbb7c` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x6888af...87bf57` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x6d1c93...9dfdcb` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x6e6318...9133b4` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x6e7b81...042539` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x6f4746...19f509` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x6fb645...57e86a` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x6ffe04...cc7746` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x705f70...62db0c` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x70b2c0...1b045f` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x719fb4...c06f85` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x7231f9...8b3ea4` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x7291cf...f4a2a4` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x73ea6f...8b4fcb` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x742c96...772175` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x761645...660f6a` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x7687f2...9e5156` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x7714cc...8d88c1` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x775604...e39a23` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x775f1c...c5aac4` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x77bbd1...170784` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x7855dc...ff9b90` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x793cba...f7af67` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x7abedf...8b4d71` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x7b2428...9087fb` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x7f50ed...84997b` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x807dec...5bc222` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x80d521...d7aa11` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x816a2a...a02ce7` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x824211...c8a64d` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x82b454...7ae137` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x830a13...44acac` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x83852a...879701` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x839489...46177f` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x83b488...4b1252` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x85885e...90bdb5` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x85a315...8a502a` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x85cdb0...dc4939` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x86f341...b47ca3` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x87be02...a12689` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x88ca68...380f04` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x897585...129cd4` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x89a9fd...6e9c28` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x90910e...f47ffd` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x90c525...90cc3a` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x92f278...52dd53` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x945c1c...a6c0e5` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x951546...17ed79` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x959edd...573661` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x95dba6...ff6ff3` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x99461b...76abb7` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x9a1219...b7256e` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x9b931d...70e06b` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x9bf27b...2d3472` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x9dcbe9...6f15fa` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x9ea6b3...7356f6` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x9ee6af...e78d6e` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x9f4292...8e8c27` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x9f667b...3d4080` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xa23da5...135f4e` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xa265bb...bfe99b` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xa2749c...d84a18` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xa3094b...51c918` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xa6ba12...d18fe8` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xa7c37d...cd1f0a` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xaa5225...dec159` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xaa6a8c...d84cf4` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xaadd7a...a14171` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xac0c10...9de6a8` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xac987d...5d2a9a` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xad84eb...8e0f4a` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xae44e2...ec2c38` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xae72d4...e1fef0` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xae898a...30b165` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xb10ba3...041d9c` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xb11176...ecf4d3` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xb777b2...468da1` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xb7a92e...012ffa` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xb8376f...3ac164` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xb9ebde...ed3158` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xba42bc...b7a401` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xba55d2...bf258d` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xbe00fd...43ae61` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xbeeadf...dfc6ca` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xc0662c...a43919` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xc2484f...23e7db` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xc2a172...599cf0` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xc2e0fb...f87177` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xc3f40e...e69243` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xc596ba...9dc1c5` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xc6e67a...6e1ba0` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xc6f923...92c98f` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xc750e2...e51d58` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xc7795e...31d967` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xc8e623...898e97` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xca261e...c97886` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xca6bf3...e57b7f` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xcbdc5e...33a846` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xcbff07...dd9c1f` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xcebc59...1f7c13` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xd0de0b...5dff39` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xd13440...08f670` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xd162a6...d81db7` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xd26cf0...7e6b2c` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xd3cd8b...f60861` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xd3ff6f...6d15c2` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xd6be9c...3ba7da` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xdb1011...bbf9ea` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xdb5634...04d6e9` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xdb7bfe...c17c03` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xddf76d...5d2700` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xde17c8...856253` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xe01db7...cd911e` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xe0ca68...59dc4e` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xe0e767...be2a49` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xe3631b...e4d7e4` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xe52a46...276125` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xe54006...7875e8` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xe55b77...72194b` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xe6899f...99d7b9` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xe6bc88...6c2923` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xe6dc42...62363d` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xe73d6a...4b2204` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xe8147d...ef51c3` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xe874ae...aa4d8c` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xe87542...e628e5` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xea51ec...31eab9` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xeabed9...48c501` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xed0902...597cad` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xf1ac10...163e04` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xf38722...4489a6` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xf46b4e...bf4106` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xf4c6c4...027b00` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xf5da78...3d87be` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xf6dbb4...14137f` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xf8a519...a665b8` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xf8d9ca...89c6d2` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xfa964b...26eeb4` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xfb1d2e...8b345a` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xfba9b8...732993` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xfc66aa...53a26a` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xfe2acd...7d82e7` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xff1517...b970ec` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xffb5c5...e47407` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [SupSwap - Zellic Audit Report.pdf](https://github.com/Zellic/publications/blob/master/SupSwap%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2024-02 | stale | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 287 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=1

Fork inheritance lineage and inherited audits are included when available.
