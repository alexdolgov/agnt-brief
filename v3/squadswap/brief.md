# Agentic Audit Brief: SquadSwap

## Project Overview

- Project: SquadSwap (`squadswap`)
- Website: [https://squadswap.com/](https://squadswap.com/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:56.546Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-f007
- Chains: base, blast, bsc
- Contract surface: 217 unique implementations (359 raw deployments)
- DeFi Llama TVL: $1,281,098.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 43 project-authored contract(s) across 3 chain(s); 2 ERC20 tokens, 1 ERC721 NFT; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 8 functional families. Its contracts share 10 common project-authored base contract(s) (peripheryimmutablestate, peripheryvalidation, blocktimestamp). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 602; live-surface contracts included: 351 (174 live, 177 unknown).
- Excluded by liveness: 251 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 18/42 (42.9%)
- Deployed-live implementations: 42 of 217 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 18/42
- Verified + Unaudited implementations: 24
- Verified by bytecode match: 0
- Unverified implementations: 175
- Unique implementations: 217
- Raw deployments: 359
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-02 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 18 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 17 | 40.5% | 2023-12 |
| PeckShield | Tier 2 | 5 | 11.9% | 2025-02 |

## Contract Surface

### ✅ Verified + Audited (18)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| FeeManager | governance | bsc | n/a | 3 deployments: bsc [`0x5af85b...424b00`](./contracts/bsc-56/0x5af85b993645af4e530f93721653fb9b6a424b00/); bsc `0x9d8b42...cafb3c`; base `0xc639f1...8d90e2` | ✅ Audited |
| MasterChefV2 | unknown | bsc | n/a | 5 deployments: bsc [`0x2e881a...4879b4`](./contracts/bsc-56/0x2e881a10f682a3b2cbaaf8fc5a9a94e98d4879b4/); bsc `0xec6743...7a76ca`; base `0xb3a209...dd529e`; base `0xb61715...2ebb48`; base `0xc49f63...71d25c` | ✅ Audited |
| MasterChefV3 | unknown | bsc | n/a | 3 deployments: bsc [`0x2ca14a...f96868`](./contracts/bsc-56/0x2ca14af00e6847c0600067f94a8b7cbfaff96868/); base `0x87b104...749d09`; base `0x89c061...266711` | ✅ Audited |
| NonfungiblePositionManager | governance | bsc | n/a | [`0x501535...1db7b4`](./contracts/bsc-56/0x501535ef0b92ee1df5c12f47720f1e479b1db7b4/) | ✅ Audited |
| NonfungiblePositionManager | governance | blast | n/a | 3 deployments: bsc `0x4f0ece...eda1b8`; base `0x933f97...a409b9`; blast [`0x03439c...c8f7bb`](./contracts/blast-81457/0x03439c1f8161c37e37202ab7fa9f390e01c8f7bb/) | ✅ Audited |
| QuoterV2 | periphery | base | n/a | 9 deployments: bsc `0x57e621...036bee`; bsc `0x72992f...2eab6e`; base [`0x144403...cf27fc`](./contracts/base-8453/0x1444037d01234cb4d0c36dadb0cd0534b7cf27fc/); base `0x6785dc...10ed4c`; base `0xb00152...288fa2`; blast `0x59378a...c9ae42`; blast `0x7e9832...7c9a88`; blast `0x7ea21a...4a14bb`; blast `0x829ce7...464aee` | ✅ Audited |
| SmartChefFactory | registry | bsc | n/a | 2 deployments: bsc [`0x642782...52ec16`](./contracts/bsc-56/0x6427824d446e5be25326ab1b88c8102f0d52ec16/); base `0x7171ea...fea1a7` | ✅ Audited |
| SmartRouter | adapter | blast | n/a | 8 deployments: bsc `0x8b0c61...cc727b`; bsc `0xfb96f5...0b8b5b`; base `0xe55d12...524377`; base `0xf48d22...facacc`; blast [`0x152176...2c53dd`](./contracts/blast-81457/0x152176a1e3c112d96aa305fa1f5ac6997b2c53dd/); blast `0x5fbd88...a234c9`; blast `0x95e801...9fe902`; blast `0xdeb0bf...2870c0` | ✅ Audited |
| SmartRouterHelper | unknown | blast | n/a | 8 deployments: bsc `0x5ba247...0d6ed3`; bsc `0xf1a0c1...79a811`; base `0x369967...78d279`; base `0x7ea21a...4a14bb`; blast [`0x1bc323...bb70e7`](./contracts/blast-81457/0x1bc323a5a87e6c7f463b805112db39507fbb70e7/); blast `0x5dbbf7...53312f`; blast `0xbee320...543365`; blast `0xdfc40e...ef090f` | ✅ Audited |
| SquadInterfaceMulticall | periphery | base | n/a | [`0xdee103...673063`](./contracts/base-8453/0xdee10310e729c36a560c72c0e8e3be0e46673063/) | ✅ Audited |
| SquadswapFactory | registry | base | n/a | 8 deployments: bsc `0x1d9f43...3b6ac1`; bsc `0x918adf...653dba`; base [`0x11b701...be7d99`](./contracts/base-8453/0x11b7018204cb458741b56725422bc64cf7be7d99/); base `0x1bc323...bb70e7`; base `0x4b599f...ad6551`; base `0xba34aa...35eef9`; base `0xd6bd39...a83e64`; blast `0x4b599f...ad6551` | ✅ Audited |
| SquadswapRouter02 | adapter | base | n/a | 6 deployments: bsc `0x850774...55611c`; bsc `0xcf870c...5ee48d`; base [`0x3767e2...66aa9f`](./contracts/base-8453/0x3767e2bc3e9c5ceb8be25513ae2e6937df66aa9f/); base `0x95e801...9fe902`; base `0xd60507...b713aa`; blast `0xa3f309...4e395c` | ✅ Audited |
| SquadToken | token | bsc | n/a | [`0x2d2567...2e310c`](./contracts/bsc-56/0x2d2567dec25c9795117228adc7fd58116d2e310c/) | ✅ Audited |
| SquadV3Factory | registry | bsc | n/a | 2 deployments: bsc [`0x10d861...6bc07b`](./contracts/bsc-56/0x10d8612d9d8269e322ab551c18a307cb4d6bc07b/); base `0x829ce7...464aee` | ✅ Audited |
| SquadV3PoolDeployer | unknown | bsc | n/a | 40 deployments: bsc [`0x031e47...75ae9f`](./contracts/bsc-56/0x031e47c7abceb6703eeac7033274696a8675ae9f/); bsc `0x092f47...d43135`; bsc `0x127aa9...9144a4`; bsc `0x18b762...f2dd10`; bsc `0x2360f5...ed70c3`; bsc `0x2d9577...ef0097`; bsc `0x346821...1b1653`; bsc `0x38e09d...3b75ea`; bsc `0x3edaf9...90e5e7`; bsc `0x439430...084741`; bsc `0x45352e...fa96d1`; bsc `0x47cab1...3a90e2`; bsc `0x498e10...416e34`; bsc `0x4ee6a2...bfb1ea`; bsc `0x502cbb...fb61ad`; bsc `0x51cfd3...9d52e9`; bsc `0x53f10a...a3035e`; bsc `0x5a6f8e...3e646c`; bsc `0x6ce6cd...2e321a`; bsc `0x754489...b65bfa`; bsc `0x7cd988...c76a22`; bsc `0x7cf7f5...d7ff81`; bsc `0x7ddb13...3ecba7`; bsc `0xa7f93f...fd8e92`; bsc `0xb20049...95015c`; bsc `0xb65ce8...d7f659`; bsc `0xbf24ca...a11b81`; bsc `0xc28e76...8ca944`; bsc `0xd3f800...470692`; bsc `0xe156a7...e3cfdd`; bsc `0xe2973d...021cce`; bsc `0xf747c5...b10f76`; bsc `0xf89aa6...27e821`; bsc `0xfc8641...4b1617`; base `0x110909...bc1abf`; base `0x53616b...1dd62a`; blast `0x03ae53...4009f8`; blast `0x29626c...c2af09`; blast `0xf99185...dd4a35`; blast `0xfefa8e...710c08` | ✅ Audited |
| SwapRouter | adapter | bsc | n/a | 3 deployments: bsc [`0x56956a...38ef70`](./contracts/bsc-56/0x56956af389c6bc07f4c57837b49dd03b4238ef70/); bsc `0xaf4b33...0bcbc0`; base `0x6daafc...acf576` | ✅ Audited |
| TickLens | periphery | base | n/a | [`0x633faf...4714dc`](./contracts/base-8453/0x633faf3dac3677b51ea7a53a81b79aee944714dc/) | ✅ Audited |
| V3Migrator | periphery | base | n/a | [`0x6d3a3a...c8fd75`](./contracts/base-8453/0x6d3a3ac01e7adad98480b5d4951a83b141c8fd75/) | ✅ Audited |

### ⚠️ Verified + Unaudited (24)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BinFeeManagerHook | governance | bsc | n/a | 4 deployments: bsc [`0x0ec6a9...60ab86`](./contracts/bsc-56/0x0ec6a90be27728272796d456656e05989860ab86/); bsc `0x73e5fd...a58113`; base `0xd4db07...c6abdd`; base `0xda3eb4...019426` | ⚠️ Unaudited |
| CLFeeManagerHook | governance | bsc | n/a | 4 deployments: bsc [`0x73c5c8...255c0a`](./contracts/bsc-56/0x73c5c84703540ed1f1f279614853a302cc255c0a/); bsc `0x79a4be...4b0b18`; base `0x84863e...0a2598`; base `0xf397f1...e86c97` | ⚠️ Unaudited |
| FarmBooster | core_logic | bsc | n/a | 4 deployments: bsc [`0x52e2f8...cda89e`](./contracts/bsc-56/0x52e2f8f52e27918aeb3995b5e49da38ce9cda89e/); bsc `0x672d60...08c9ca`; base `0x7f5f5a...6fd4cf`; base `0xc589b6...c6061e` | ⚠️ Unaudited |
| IFODeployerV10 | unknown | bsc | n/a | 2 deployments: bsc [`0x05fff7...c5fb39`](./contracts/bsc-56/0x05fff74251a29dac98e10a4314ecf05031c5fb39/); base `0x143bc7...7d94d9` | ⚠️ Unaudited |
| MixedRouteQuoterV1 | unknown | blast | n/a | [`0x84ff9b...9f3898`](./contracts/blast-81457/0x84ff9b09b56c3858c38cc7aa678fabb73b9f3898/) | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptorOffChain | unknown | bsc | n/a | 13 deployments: bsc [`0x0a4224...377778`](./contracts/bsc-56/0x0a4224cbecec4a8337f722ed105916544e377778/); bsc `0x20dcd7...4c0274`; bsc `0x2f314b...93d3b2`; bsc `0x3109db...5bfb4c`; bsc `0x35b936...2266fb`; bsc `0x4546db...bdb7a2`; bsc `0x5e4edd...52e377`; bsc `0x816e5d...c15f8b`; bsc `0x92008f...f88317`; bsc `0xa149f9...ddd4f8`; bsc `0xa4a858...d6b362`; bsc `0xa5fc80...3d0ba2`; bsc `0xd01a4a...0d071a` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptorOffChain | unknown | bsc | n/a | 7 deployments: bsc [`0x26583d...792df4`](./contracts/bsc-56/0x26583d87f43e09258955605e92e63fe40e792df4/); bsc `0x2bcb99...2cfdc4`; bsc `0x38197c...99727b`; bsc `0x499138...370360`; bsc `0x504eba...893295`; bsc `0xbb2731...9e310d`; bsc `0xdc3dd3...aa9be6` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptorOffChain | unknown | bsc | n/a | 2 deployments: bsc [`0x32d4a7...1d5c86`](./contracts/bsc-56/0x32d4a74ed5b7b62ce2e60d14ca8bfffb381d5c86/); bsc `0xac9240...18a7e1` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptorOffChain | unknown | bsc | n/a | 4 deployments: bsc [`0x388a6f...829150`](./contracts/bsc-56/0x388a6fa2c1b6551c92adf631f4b6ddbe6b829150/); bsc `0x5a547c...6d8d59`; bsc `0x6967cb...9ed648`; bsc `0x80ff20...cf17ed` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptorOffChain | unknown | bsc | n/a | 2 deployments: bsc [`0xcbdf56...968a00`](./contracts/bsc-56/0xcbdf563ec6fe9662273a9aa085d5897323968a00/); bsc `0xe5200b...cd915b` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptorOffChain | unknown | base | n/a | 3 deployments: base [`0xac5b61...6f72f3`](./contracts/base-8453/0xac5b61a34b41292d1e6db6bf3c909ff0b66f72f3/); base `0xcf2a34...80ae3b`; base `0xea6fd4...a68eed` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptorOffChain | unknown | blast | n/a | 5 deployments: blast [`0x295f6a...1649c5`](./contracts/blast-81457/0x295f6ad2fd02ef9fa87a30bb337f0a40221649c5/); blast `0x64d6f4...ce3693`; blast `0x7b7a8f...cb8172`; blast `0x7da1ec...f9f620`; blast `0xd43261...905b6a` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptorOffChainV2 | unknown | bsc | n/a | 2 deployments: bsc [`0x9cbbb3...00e365`](./contracts/bsc-56/0x9cbbb360867fe5b10d143f870ffb699b3300e365/); bsc `0xfa0c02...6c24d3` | ⚠️ Unaudited |
| ProxyAdmin | unknown | base | n/a | 7 deployments: bsc `0x17f24a...b107f7`; bsc `0x622122...921769`; bsc `0x6c8d43...f1448a`; bsc `0xa313c4...41bf13`; bsc `0xa4af76...b3d7bf`; base [`0x07fd20...838251`](./contracts/base-8453/0x07fd20b71e3ea3e2cbe21070a042e58b42838251/); blast `0x2149e9...9e1a9c` | ⚠️ Unaudited |
| SquadLimitOrder | unknown | bsc | n/a | [`0x62490b...56aab9`](./contracts/bsc-56/0x62490b11b335f3b27fc3fbadc29ccdaf7b56aab9/) | ⚠️ Unaudited |
| SquadOFT | unknown | base | n/a | 2 deployments: base [`0x08ccb8...a68b7e`](./contracts/base-8453/0x08ccb86a31270fd97d927a4e17934c6262a68b7e/); blast [`0x08ccb8...a68b7e`](./contracts/blast-81457/0x08ccb86a31270fd97d927a4e17934c6262a68b7e/) | ⚠️ Unaudited |
| SquadswapInterfaceMulticallV2 | periphery | bsc | n/a | [`0xa4843b...67592d`](./contracts/bsc-56/0xa4843b1247460dd9a66a70386cb9a5934f67592d/) | ⚠️ Unaudited |
| SquadSwapNftStake | token | bsc | n/a | [`0xb216ab...ac7e41`](./contracts/bsc-56/0xb216abd79263ec6c85dd243928c7beaaffac7e41/) | ⚠️ Unaudited |
| SquadswapPair | unknown | bsc | n/a | [`0xa773b9...4440d1`](./contracts/bsc-56/0xa773b9f08643816524fd614db7f8a74f674440d1/) | ⚠️ Unaudited |
| SquadV3Pool | core_logic | bsc | n/a | 5 deployments: bsc [`0x606d6f...534955`](./contracts/bsc-56/0x606d6f19081fe3db277c3400cdbfed2ea0534955/); bsc `0x9fb981...d0bd33`; bsc `0xa95d87...746dae`; bsc `0xb6bb74...3b577f`; bsc `0xefcb55...839f0d` | ⚠️ Unaudited |
| SquadV3PoolManager | core_logic | bsc | n/a | 2 deployments: bsc [`0x391eaa...782ef5`](./contracts/bsc-56/0x391eaa90f931c6330132efe6c73ebdf77d782ef5/); base `0x9cbb06...a41691` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x3c577f...376ffb`](./contracts/bsc-56/0x3c577f2edf2f6bd580a9c5ba537f779a8d376ffb/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | base | n/a | 2 deployments: base [`0x58fea8...178dc7`](./contracts/base-8453/0x58fea80fbdc1612d0de866a63c7787c5f4178dc7/); base `0xc4e896...7ace3d` | ⚠️ Unaudited |
| UnsupportedProtocol | unknown | base | n/a | 2 deployments: bsc `0x27f233...d8cfaa`; base [`0x13efb0...41560b`](./contracts/base-8453/0x13efb07140ce67f45256f8ceb230563fc041560b/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (175)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Proxy (impl: 0xc49355f78858b4143a25a4ad7e57e48d9f5e217f) | unknown | base | n/a | 2 deployments: base `0x29fb8f...fab69c`; base `0xc49355...5e217f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x056ca1...ead913` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x08c39e...85828d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x098ca9...4b988f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0a7048...b031c0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0de41b...50ea1f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0e6a57...d59bb6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0eea7b...d3b9e8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x10fd1f...df5d41` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x120bc1...844fd9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x129790...0d387d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x12b57e...e38a29` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x139ca0...2c0237` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x19bfb8...0b4b5a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1a0ce3...2de6aa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1ae30b...8e05bb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1c3fa0...6423fd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1d8027...040784` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x24b70e...506b95` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x252b2a...e720cf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x27ee18...812965` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x286c0d...161bc8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2ca692...ac2db8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2cb040...57f6d0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2d7230...0e1618` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2edc98...548e5e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2fa963...e2aca3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2fe498...dce453` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x32780b...8f3a4b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x329e3e...512a70` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x32c9a3...969740` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x32d735...b12697` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x336be6...e2d11c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x354c87...27e4de` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x36cdb4...290cd5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x37a76e...aafd07` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x37ddd0...8b6b23` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x386c4f...4ac655` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x395f4b...d3d5a1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3ccbf5...07ed78` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x40ada5...ccb51d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4123e9...53126a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x41953d...695820` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x44d4ef...cf789f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x46680d...dbcc6b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x48470d...8d6ddb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4962a1...05755f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4b937c...81a94b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4d77ef...6aea6c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x511530...aaeac1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5d7fab...d7e7d2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5f9341...91d0a3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x60efb4...99d0f3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x61ef63...a348c6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x630f58...16c08b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6698e3...66c8a4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x671d58...ec1294` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x68a5c7...05d821` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6b2663...4463ff` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6fd3de...080981` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x739d61...24ef08` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x73b7e7...1d3cf1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7473fa...d21313` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x77d373...903929` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x799d14...bd2030` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7cafae...11e924` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7dc292...1f45fe` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x810c5d...3a5f23` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x82847d...133758` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x831355...18c9d0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x86eb5e...0ce9bf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x870ab6...479450` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8788d1...095b5c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x896002...7e2431` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8973db...52dfef` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8b2e09...cc4855` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8e3169...5e06a9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9070b5...3279fc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x92e56d...83c388` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x936a39...152246` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x956208...d52ff2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9603e2...7253ab` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x983942...94f740` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa10d28...e59e94` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa1551c...6e128e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa9712b...fb2e4a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xade16f...8c08b6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaee2b8...db16cc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb1d753...108183` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb3ba27...188c22` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb651b2...f078a3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb6d43d...2b1198` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb793db...089955` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb951c0...0ada88` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb9b1a1...6b8f0b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb9f43d...20235e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xba2a8b...0f1a6c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbc9e03...d06dae` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc1fa2a...e217b9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc2c434...4ef5a4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc3fe3d...e591a3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcbe6b9...6494b2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcd6f94...b0e7a6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcd9511...677442` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xce03c2...bb5847` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcfbb55...0a9666` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd108e1...2918b6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd3d678...f3328a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd58ccf...cb62de` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd5ddc0...c7652c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd669fe...85bd2e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd67021...2d482b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd6ceae...1374a7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd71dcd...326fa8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd74848...17b3a9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd81414...54082f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdc946e...af6dfa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe10a60...53de69` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe27875...620acf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe3ca07...72098b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf1fbb8...8d426f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf2c8a9...b479de` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf58290...afbec0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf6dcd5...8b9a87` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf9b3a7...82d695` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfa7fc5...0c780f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfc600b...b129fc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfcfc67...52b13d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfd399f...7852bd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfd3bc2...545a2e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfdde3e...b61000` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfea79d...3306fc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x061856...186a3d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0bd703...6dcfbc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x145e6b...874b76` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x16fbb3...058788` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1f2436...bed21f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1f8939...773b7e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x202de6...b794a3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2ec163...e12e10` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x31b8c6...662841` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x340a67...d7b911` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x344913...079639` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x34bc76...61f2b9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x35e49c...500fff` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3a5800...982286` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x51c97e...fe03a5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x579da7...1867ac` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x58f001...1c1374` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5d202a...122f5c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5dbbf7...53312f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x67ccdf...3a9538` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8496f2...581964` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8b39a3...ce2b0e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x93c8b2...119f1a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9627ea...236a0a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x97f426...169fc7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9caf9c...89fd75` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9f4b97...1fdf5c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa2a1e6...482878` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xac47c0...cfed58` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb124a8...83212e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcc6c58...4596eb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcd32cd...e1c49b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd39f3c...8659e3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd9d71b...f5d10f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdeb0bf...2870c0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xff29b1...27c261` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x110909...bc1abf` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x29fb8f...fab69c` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x87048e...e7e36a` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x9ab779...02014a` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x9c486d...dfa96a` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xa37843...b7a111` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xf48d22...facacc` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-SquadSwap-Dynamo-Wow-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-SquadSwap-Dynamo-Wow-v1.0.pdf) | PeckShield | Audit | 2025-02 | aging | Direct | contract_name | 3 | n/a |
| [www.cyberscope.io/audits/squadswap](https://www.cyberscope.io/audits/squadswap) | unknown | Audit | 2023-11 | stale | Direct | contract_name | 2 | n/a |
| [squadswap.pdf](https://github.com/cyberscope-io/audits/blob/main/squadswap/squadswap.pdf) | unknown | Audit | 2023-12 | stale | Direct | contract_name | 2 | n/a |
| [audit.pdf](https://github.com/cyberscope-io/audits/blob/main/squadswap/v1/audit.pdf) | unknown | Audit | 2023-11 | stale | Direct | contract_name | 15 | n/a |
| [PeckShield-Audit-Report-SquadSwap-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-SquadSwap-v1.0.pdf) | PeckShield | Audit | 2024-02 | stale | Direct | contract_name | 3 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 217 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=25

Fork inheritance lineage and inherited audits are included when available.
