# Agentic Audit Brief: SquadSwap

## Project Overview

- Project: SquadSwap (`squadswap`)
- Website: [https://squadswap.com/](https://squadswap.com/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:58.582Z
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

- Coverage of deployed-live implementations: 18/40 (45.0%)
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
| FeeManager | governance | bsc | n/a | 3 deployments: bsc [`0x5af85b993645af4e530f93721653fb9b6a424b00`](./contracts/bsc-56/0x5af85b993645af4e530f93721653fb9b6a424b00/); bsc `0x9d8b42760655a0ccd51f3153ee5f6b828ecafb3c`; base `0xc639f1a10c10df80500713dd8b7e2ef85f8d90e2` | ✅ Audited |
| MasterChefV2 | unknown | bsc | n/a | 5 deployments: bsc [`0x2e881a10f682a3b2cbaaf8fc5a9a94e98d4879b4`](./contracts/bsc-56/0x2e881a10f682a3b2cbaaf8fc5a9a94e98d4879b4/); bsc `0xec6743618f18ba97b1973c476feab0da387a76ca`; base `0xb3a2090ac9202da7948634f6e603ada179dd529e`; base `0xb6171582c75421a740dcc15e4d873a34cb2ebb48`; base `0xc49f63335c1e648ea2a4a75e8067241ff271d25c` | ✅ Audited |
| MasterChefV3 | unknown | bsc | n/a | 3 deployments: bsc [`0x2ca14af00e6847c0600067f94a8b7cbfaff96868`](./contracts/bsc-56/0x2ca14af00e6847c0600067f94a8b7cbfaff96868/); base `0x87b10463f06767611e26ff33b7b82434a0749d09`; base `0x89c0619e7a798309193438b3cff11f1f31266711` | ✅ Audited |
| NonfungiblePositionManager | governance | bsc | n/a | [`0x501535ef0b92ee1df5c12f47720f1e479b1db7b4`](./contracts/bsc-56/0x501535ef0b92ee1df5c12f47720f1e479b1db7b4/) | ✅ Audited |
| NonfungiblePositionManager | governance | blast | n/a | 3 deployments: bsc `0x4f0ece46362310ae93aee49c3713e77455eda1b8`; base `0x933f979e46552e776772d0cfd5794de833a409b9`; blast [`0x03439c1f8161c37e37202ab7fa9f390e01c8f7bb`](./contracts/blast-81457/0x03439c1f8161c37e37202ab7fa9f390e01c8f7bb/) | ✅ Audited |
| QuoterV2 | periphery | base | n/a | 9 deployments: bsc `0x57e621abdd6d90e535d3b16401974d6129036bee`; bsc `0x72992fb83ef818d35ad1de32a29087193a2eab6e`; base [`0x1444037d01234cb4d0c36dadb0cd0534b7cf27fc`](./contracts/base-8453/0x1444037d01234cb4d0c36dadb0cd0534b7cf27fc/); base `0x6785dcce80e1adb0efaa602867d0f3127210ed4c`; base `0xb00152041c98a5547252f411ebc8b39637288fa2`; blast `0x59378af882fd1873446560af83000ef3eac9ae42`; blast `0x7e983287600aeb2f88943a1f01ed9c1b407c9a88`; blast `0x7ea21af2920e0d1e17ef82ea9531762f504a14bb`; blast `0x829ce74128ea95c72aa379168df529feaa464aee` | ✅ Audited |
| SmartChefFactory | registry | bsc | n/a | 2 deployments: bsc [`0x6427824d446e5be25326ab1b88c8102f0d52ec16`](./contracts/bsc-56/0x6427824d446e5be25326ab1b88c8102f0d52ec16/); base `0x7171ea998e068ab490c7c4f3afb86a146dfea1a7` | ✅ Audited |
| SmartRouter | adapter | blast | n/a | 8 deployments: bsc `0x8b0c61843dc450637e88e524666f5fe18ccc727b`; bsc `0xfb96f59a63c60dfc8e13547b3e9e366a3c0b8b5b`; base `0xe55d12a1326eaa5d54e6fca257a0c0fcdf524377`; base `0xf48d22968e87c52743f9052d8e608ecd41facacc`; blast [`0x152176a1e3c112d96aa305fa1f5ac6997b2c53dd`](./contracts/blast-81457/0x152176a1e3c112d96aa305fa1f5ac6997b2c53dd/); blast `0x5fbd88f04963c25e51ccae20951f815577a234c9`; blast `0x95e8014d86af94e6abea38822082da728b9fe902`; blast `0xdeb0bf2d02f9fe9f20f3dd62b73bddbd4c2870c0` | ✅ Audited |
| SmartRouterHelper | unknown | blast | n/a | 8 deployments: bsc `0x5ba2470b3b771f3bc31b75cf72dcfc9d9f0d6ed3`; bsc `0xf1a0c1ce6d2f3ef752b97765f28f6c0cda79a811`; base `0x369967bd0bd3b7550b16d251d42def66fc78d279`; base `0x7ea21af2920e0d1e17ef82ea9531762f504a14bb`; blast [`0x1bc323a5a87e6c7f463b805112db39507fbb70e7`](./contracts/blast-81457/0x1bc323a5a87e6c7f463b805112db39507fbb70e7/); blast `0x5dbbf70e0f50fb89e48b946e9efa2a906453312f`; blast `0xbee3209e04f926ce9df2a22c457d44303e543365`; blast `0xdfc40e4aa84acb09a55e7cb5428c38ee41ef090f` | ✅ Audited |
| SquadInterfaceMulticall | periphery | base | n/a | [`0xdee10310e729c36a560c72c0e8e3be0e46673063`](./contracts/base-8453/0xdee10310e729c36a560c72c0e8e3be0e46673063/) | ✅ Audited |
| SquadswapFactory | registry | base | n/a | 8 deployments: bsc `0x1d9f43a6195054313ac1ae423b1f810f593b6ac1`; bsc `0x918adf1f2c03b244823cd712e010b6e3cd653dba`; base [`0x11b7018204cb458741b56725422bc64cf7be7d99`](./contracts/base-8453/0x11b7018204cb458741b56725422bc64cf7be7d99/); base `0x1bc323a5a87e6c7f463b805112db39507fbb70e7`; base `0x4b599f3425d54afbf94bfd41ea9931ff92ad6551`; base `0xba34aa640b8be02a439221bcbea1f48c1035eef9`; base `0xd6bd395fca868071edc79fe6242176a48ca83e64`; blast `0x4b599f3425d54afbf94bfd41ea9931ff92ad6551` | ✅ Audited |
| SquadswapRouter02 | adapter | base | n/a | 6 deployments: bsc `0x8507743c30ae007ab2ad8523b52f6a1d5155611c`; bsc `0xcf870c78b7985a5b67a6f3f547678387015ee48d`; base [`0x3767e2bc3e9c5ceb8be25513ae2e6937df66aa9f`](./contracts/base-8453/0x3767e2bc3e9c5ceb8be25513ae2e6937df66aa9f/); base `0x95e8014d86af94e6abea38822082da728b9fe902`; base `0xd605072c79c4e7d85174600f59c335420cb713aa`; blast `0xa3f309e9691d44aca3344a0f08c6bf30ee4e395c` | ✅ Audited |
| SquadToken | token | bsc | n/a | [`0x2d2567dec25c9795117228adc7fd58116d2e310c`](./contracts/bsc-56/0x2d2567dec25c9795117228adc7fd58116d2e310c/) | ✅ Audited |
| SquadV3Factory | registry | bsc | n/a | 2 deployments: bsc [`0x10d8612d9d8269e322ab551c18a307cb4d6bc07b`](./contracts/bsc-56/0x10d8612d9d8269e322ab551c18a307cb4d6bc07b/); base `0x829ce74128ea95c72aa379168df529feaa464aee` | ✅ Audited |
| SquadV3PoolDeployer | unknown | bsc | n/a | 40 deployments: bsc [`0x031e47c7abceb6703eeac7033274696a8675ae9f`](./contracts/bsc-56/0x031e47c7abceb6703eeac7033274696a8675ae9f/); bsc `0x092f473849c2022dd7b88780610a2ff213d43135`; bsc `0x127aa917ace4a3880fa5e193947f2190829144a4`; bsc `0x18b7620b3415126d06263f16b7046810a8f2dd10`; bsc `0x2360f565bf03178f2badd91d2425fe1911ed70c3`; bsc `0x2d957799e10bc7122c0c11039db05a60ebef0097`; bsc `0x3468218a3b6340708a3238c2cf9776e5171b1653`; bsc `0x38e09d9444b41cfda398dd31eb2713ca5c3b75ea`; bsc `0x3edaf90a8e001e4cd5ace90a5562c8c59a90e5e7`; bsc `0x4394300e82059a20299264684b1f25e46c084741`; bsc `0x45352e92ba2d32a97c82231575792ca83ffa96d1`; bsc `0x47cab11e9ec8c12fe5af9525cdc44892ab3a90e2`; bsc `0x498e102cd1e18083e56037ccc6d216c939416e34`; bsc `0x4ee6a28e84279b0bded555ae594cb1e2b7bfb1ea`; bsc `0x502cbb0597bb84e1415276cef8f9d0a06efb61ad`; bsc `0x51cfd362eae038e050e9d65beba603c0c69d52e9`; bsc `0x53f10aaf656a6e48b6f84fb83e8f22b2caa3035e`; bsc `0x5a6f8e3dcd278ab13c459fa110eaa31ecb3e646c`; bsc `0x6ce6cd8f12a2a3ba15bbb673897a0c275d2e321a`; bsc `0x754489c5c63d64c839135efb0dde23f469b65bfa`; bsc `0x7cd988771dd811c6fc0b879b9a26ed45ffc76a22`; bsc `0x7cf7f5cebc7ae93a1c31a816cd64380d6ed7ff81`; bsc `0x7ddb1388c3eebb8becd8aa05635179e7663ecba7`; bsc `0xa7f93f9e1ed4d8e1d4ea931978ca4f9adafd8e92`; bsc `0xb20049e55cc5e49002f6315d4e21beebab95015c`; bsc `0xb65ce8e19244de2c9882aab53a12fcd7aed7f659`; bsc `0xbf24cac8a728f4c8af49409d0beebc1777a11b81`; bsc `0xc28e76269457e92912a0f7b0b5125542768ca944`; bsc `0xd3f8001ff237026fafe9c25841c58ddea8470692`; bsc `0xe156a7748faf2ae1e238e6259e1056811de3cfdd`; bsc `0xe2973d9855bce0d200f8905fd2920db35c021cce`; bsc `0xf747c50ba841e2e99bb5326794adf49cc5b10f76`; bsc `0xf89aa68949595fe7249a942fc786b0f2bc27e821`; bsc `0xfc86417e95947f9a488cecb5a84347c1ea4b1617`; base `0x110909bc7d16465d1d0fa76c3fcd498830bc1abf`; base `0x53616b1baa9e224092bbaf64f2fb5da2b11dd62a`; blast `0x03ae536d3a7f0d7a4316107e6242a162ca4009f8`; blast `0x29626c367d4f334f92fa21b1c5958bbe1dc2af09`; blast `0xf99185c93274e5de2dc8d52d3b9fd917b1dd4a35`; blast `0xfefa8e964a95950eb9c5a0362ed69b3b0d710c08` | ✅ Audited |
| SwapRouter | adapter | bsc | n/a | 3 deployments: bsc [`0x56956af389c6bc07f4c57837b49dd03b4238ef70`](./contracts/bsc-56/0x56956af389c6bc07f4c57837b49dd03b4238ef70/); bsc `0xaf4b332ddba499b6116235a095cee2f2030bcbc0`; base `0x6daafc12f65801afb2f0b0212a8229f224acf576` | ✅ Audited |
| TickLens | periphery | base | n/a | [`0x633faf3dac3677b51ea7a53a81b79aee944714dc`](./contracts/base-8453/0x633faf3dac3677b51ea7a53a81b79aee944714dc/) | ✅ Audited |
| V3Migrator | periphery | base | n/a | [`0x6d3a3ac01e7adad98480b5d4951a83b141c8fd75`](./contracts/base-8453/0x6d3a3ac01e7adad98480b5d4951a83b141c8fd75/) | ✅ Audited |

### ⚠️ Verified + Unaudited (24)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BinFeeManagerHook | governance | bsc | n/a | 4 deployments: bsc [`0x0ec6a90be27728272796d456656e05989860ab86`](./contracts/bsc-56/0x0ec6a90be27728272796d456656e05989860ab86/); bsc `0x73e5fd3b64c59f1e1a1cab159656444f16a58113`; base `0xd4db07c5998d26cb5e653781f232fbe9dfc6abdd`; base `0xda3eb4017f761f9d57c749f8c4ec18364a019426` | ⚠️ Unaudited |
| CLFeeManagerHook | governance | bsc | n/a | 4 deployments: bsc [`0x73c5c84703540ed1f1f279614853a302cc255c0a`](./contracts/bsc-56/0x73c5c84703540ed1f1f279614853a302cc255c0a/); bsc `0x79a4be88afed3fc8cf331905cd6dd404ab4b0b18`; base `0x84863ed76def209dceca9f8ba703366c550a2598`; base `0xf397f14acf5a0e2810c382d15d633c0308e86c97` | ⚠️ Unaudited |
| FarmBooster | core_logic | bsc | n/a | 4 deployments: bsc [`0x52e2f8f52e27918aeb3995b5e49da38ce9cda89e`](./contracts/bsc-56/0x52e2f8f52e27918aeb3995b5e49da38ce9cda89e/); bsc `0x672d6081d56be6874577a8c521c47394e508c9ca`; base `0x7f5f5a9542a61fd6948f08966b89396fbf6fd4cf`; base `0xc589b6e676a7e716da944b73bf4ae4e75bc6061e` | ⚠️ Unaudited |
| IFODeployerV10 | unknown | bsc | n/a | 2 deployments: bsc [`0x05fff74251a29dac98e10a4314ecf05031c5fb39`](./contracts/bsc-56/0x05fff74251a29dac98e10a4314ecf05031c5fb39/); base `0x143bc7691c777f608fb0d91d777dd4d6f57d94d9` | ⚠️ Unaudited |
| MixedRouteQuoterV1 | unknown | blast | n/a | [`0x84ff9b09b56c3858c38cc7aa678fabb73b9f3898`](./contracts/blast-81457/0x84ff9b09b56c3858c38cc7aa678fabb73b9f3898/) | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptorOffChain | unknown | bsc | n/a | 13 deployments: bsc [`0x0a4224cbecec4a8337f722ed105916544e377778`](./contracts/bsc-56/0x0a4224cbecec4a8337f722ed105916544e377778/); bsc `0x20dcd7f1a7f94ad89127a3941dfba7caf74c0274`; bsc `0x2f314b0677014bdbac0f7b6accc9e2bf3393d3b2`; bsc `0x3109db9514d4efc08724905638cf58ab2d5bfb4c`; bsc `0x35b936aee0acb004db068d4e657f3c828f2266fb`; bsc `0x4546db365234e69257184265a521a27fffbdb7a2`; bsc `0x5e4eddf5156a44cd2e3645161d2664f7f252e377`; bsc `0x816e5dffbd15d38258ebf7e9be7b089952c15f8b`; bsc `0x92008f34e659f6380d5d01d858a2e7089cf88317`; bsc `0xa149f97cc2afa9e8d1f598d722b9e9375bddd4f8`; bsc `0xa4a858cd8cb232bea53f6cc65709d74487d6b362`; bsc `0xa5fc801a1fc399096f21f6f2a6e5599b003d0ba2`; bsc `0xd01a4a289feda4b26ded842f5abc6dd3740d071a` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptorOffChain | unknown | bsc | n/a | 7 deployments: bsc [`0x26583d87f43e09258955605e92e63fe40e792df4`](./contracts/bsc-56/0x26583d87f43e09258955605e92e63fe40e792df4/); bsc `0x2bcb99de533c698183629ca0b1db61533e2cfdc4`; bsc `0x38197c62bf976de90858b7e2d3eb4f213299727b`; bsc `0x4991384d71bd8138ef6da70cb4b8ba8185370360`; bsc `0x504eba353d66490de319df4e1f08334ceb893295`; bsc `0xbb27310c711b63d4b3f87f864b40ab28e39e310d`; bsc `0xdc3dd3a66b0974324098f7e8991f9b83f3aa9be6` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptorOffChain | unknown | bsc | n/a | 2 deployments: bsc [`0x32d4a74ed5b7b62ce2e60d14ca8bfffb381d5c86`](./contracts/bsc-56/0x32d4a74ed5b7b62ce2e60d14ca8bfffb381d5c86/); bsc `0xac9240e776b1141b77740390ad199122bb18a7e1` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptorOffChain | unknown | bsc | n/a | 4 deployments: bsc [`0x388a6fa2c1b6551c92adf631f4b6ddbe6b829150`](./contracts/bsc-56/0x388a6fa2c1b6551c92adf631f4b6ddbe6b829150/); bsc `0x5a547c636c40246b53423e45861ecc28b06d8d59`; bsc `0x6967cbfb72048a7efeb23b6dbb5aee51d89ed648`; bsc `0x80ff20176610b4b796c78c8aa456efbf19cf17ed` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptorOffChain | unknown | bsc | n/a | 2 deployments: bsc [`0xcbdf563ec6fe9662273a9aa085d5897323968a00`](./contracts/bsc-56/0xcbdf563ec6fe9662273a9aa085d5897323968a00/); bsc `0xe5200b8b42a98ba3af9cb7f7b1566887d9cd915b` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptorOffChain | unknown | base | n/a | 3 deployments: base [`0xac5b61a34b41292d1e6db6bf3c909ff0b66f72f3`](./contracts/base-8453/0xac5b61a34b41292d1e6db6bf3c909ff0b66f72f3/); base `0xcf2a34727c53be4ae5f6fed10a00a64e6f80ae3b`; base `0xea6fd462b72cdd0f535125cacbc33b9b7ba68eed` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptorOffChain | unknown | blast | n/a | 5 deployments: blast [`0x295f6ad2fd02ef9fa87a30bb337f0a40221649c5`](./contracts/blast-81457/0x295f6ad2fd02ef9fa87a30bb337f0a40221649c5/); blast `0x64d6f44907ac087d97315899bdcc35151ace3693`; blast `0x7b7a8f7d1966cd6ebb60fc11bd69b7c903cb8172`; blast `0x7da1ec4d785120eafb290a9882268b6bdef9f620`; blast `0xd432617a31807c531116c2e39c251759ac905b6a` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptorOffChainV2 | unknown | bsc | n/a | 2 deployments: bsc [`0x9cbbb360867fe5b10d143f870ffb699b3300e365`](./contracts/bsc-56/0x9cbbb360867fe5b10d143f870ffb699b3300e365/); bsc `0xfa0c021cec037b3baf9fbc1776b8803ce36c24d3` | ⚠️ Unaudited |
| ProxyAdmin | unknown | base | n/a | 7 deployments: bsc `0x17f24a87a6ca5788ef4c65c81a034c8bfeb107f7`; bsc `0x6221221c86e87905f1fa9b317e616e81ad921769`; bsc `0x6c8d432ff748cc3b28dcb5edac5e8b95b9f1448a`; bsc `0xa313c4e4f3c52707ba84e936d809340fce41bf13`; bsc `0xa4af76f9ebc9064915836c4c6d7e5275b1b3d7bf`; base [`0x07fd20b71e3ea3e2cbe21070a042e58b42838251`](./contracts/base-8453/0x07fd20b71e3ea3e2cbe21070a042e58b42838251/); blast `0x2149e9083a9440c74062eff56cc012651b9e1a9c` | ⚠️ Unaudited |
| SquadLimitOrder | unknown | bsc | n/a | [`0x62490b11b335f3b27fc3fbadc29ccdaf7b56aab9`](./contracts/bsc-56/0x62490b11b335f3b27fc3fbadc29ccdaf7b56aab9/) | ⚠️ Unaudited |
| SquadOFT | unknown | base | n/a | 2 deployments: base [`0x08ccb86a31270fd97d927a4e17934c6262a68b7e`](./contracts/base-8453/0x08ccb86a31270fd97d927a4e17934c6262a68b7e/); blast [`0x08ccb86a31270fd97d927a4e17934c6262a68b7e`](./contracts/blast-81457/0x08ccb86a31270fd97d927a4e17934c6262a68b7e/) | ⚠️ Unaudited |
| SquadswapInterfaceMulticallV2 | periphery | bsc | n/a | [`0xa4843b1247460dd9a66a70386cb9a5934f67592d`](./contracts/bsc-56/0xa4843b1247460dd9a66a70386cb9a5934f67592d/) | ⚠️ Unaudited |
| SquadSwapNftStake | token | bsc | n/a | [`0xb216abd79263ec6c85dd243928c7beaaffac7e41`](./contracts/bsc-56/0xb216abd79263ec6c85dd243928c7beaaffac7e41/) | ⚠️ Unaudited |
| SquadswapPair | unknown | bsc | n/a | [`0xa773b9f08643816524fd614db7f8a74f674440d1`](./contracts/bsc-56/0xa773b9f08643816524fd614db7f8a74f674440d1/) | ⚠️ Unaudited |
| SquadV3Pool | core_logic | bsc | n/a | 5 deployments: bsc [`0x606d6f19081fe3db277c3400cdbfed2ea0534955`](./contracts/bsc-56/0x606d6f19081fe3db277c3400cdbfed2ea0534955/); bsc `0x9fb9815ca1417b06466aaa86521a28ba83d0bd33`; bsc `0xa95d87b443e1929465931611b7951b92c1746dae`; bsc `0xb6bb744fb59fa399d09f67ae3634942f533b577f`; bsc `0xefcb55270c5fe85fc8eb6a311dc5aa9479839f0d` | ⚠️ Unaudited |
| SquadV3PoolManager | core_logic | bsc | n/a | 2 deployments: bsc [`0x391eaa90f931c6330132efe6c73ebdf77d782ef5`](./contracts/bsc-56/0x391eaa90f931c6330132efe6c73ebdf77d782ef5/); base `0x9cbb069efbd193e239b66540cf43d5b022a41691` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x3c577f2edf2f6bd580a9c5ba537f779a8d376ffb`](./contracts/bsc-56/0x3c577f2edf2f6bd580a9c5ba537f779a8d376ffb/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | base | n/a | 2 deployments: base [`0x58fea80fbdc1612d0de866a63c7787c5f4178dc7`](./contracts/base-8453/0x58fea80fbdc1612d0de866a63c7787c5f4178dc7/); base `0xc4e896271165faab8b8f44f415044d1f787ace3d` | ⚠️ Unaudited |
| UnsupportedProtocol | unknown | base | n/a | 2 deployments: bsc `0x27f233059ee83406a67730fb7ca31af27ad8cfaa`; base [`0x13efb07140ce67f45256f8ceb230563fc041560b`](./contracts/base-8453/0x13efb07140ce67f45256f8ceb230563fc041560b/) | ⚠️ Unaudited |

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
| Proxy (impl: 0xc49355f78858b4143a25a4ad7e57e48d9f5e217f) | unknown | base | n/a | 2 deployments: base `0x29fb8f97dbec6b3ee3504b556c008df9e0fab69c`; base `0xc49355f78858b4143a25a4ad7e57e48d9f5e217f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x056ca1619c16f9184f13ed484cc8bff94eead913` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x08c39e24ffc156930a5e636c926f12ce8785828d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x098ca9c8793a8ffe2e18d50c528d0be7ae4b988f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0a704871fcd41c90e98730ea0ae4e699a4b031c0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0de41ba4e1b7dbd27d2103f63dfc4985eb50ea1f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0e6a576e2093c80452dde04ce5e0d6d236d59bb6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0eea7b29f38ea358d9bca023ea31fa8edcd3b9e8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x10fd1f8beff8cfe0ba9c24bcbf61b111e3df5d41` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x120bc159b0f616c2fc899f213cc97d73d5844fd9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1297904117c526d24fbb17d268e927a2f90d387d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x12b57ec4eadc72dde2cbffd2afdd005131e38a29` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x139ca0379a667396709b5545a334b33ff52c0237` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x19bfb88b728b5f46e6901d75f7a29fdbe50b4b5a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1a0ce3782a8baf2179cb8d5f84942f94102de6aa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1ae30b0fd16d22cdd7ab444e150d896ae58e05bb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1c3fa03f2c3e22e79981d7b270debdc26f6423fd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1d8027d6cfc9f03fa36c4090925b24d775040784` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x24b70e4a34b4442cc4d16c847ee517ce5f506b95` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x252b2a4cfe60829a2ea0aa77ebf473d415e720cf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x27ee18f88e18b0f6ce788abf364bcbe87b812965` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x286c0ddf7ee840ef43d33de3f836e9bdbb161bc8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2ca6922539cd3fcec03f8fb7b23da8e39bac2db8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2cb040fa4ee634fe19864579b02dae28fb57f6d0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2d72301c181c78659a9f69725ca2105e520e1618` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2edc981337b90b35049a5002ef33a0708a548e5e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2fa96378f761acc871a6811f5d9c8f25bde2aca3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2fe4984fd8e2afc798d58e9cc3db4ebebbdce453` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x32780b0c96ee57cdb02a543c2a800297d68f3a4b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x329e3eefcf36333e07fa2b4bbbf49938ee512a70` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x32c9a3d3ff30832a5286e5e670f13169ae969740` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x32d73546af68c423a3bbdd520be728fd1ab12697` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x336be6bdbd3318c10296ea0e0de4def374e2d11c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x354c8718345417a4e86e804d11778f0f6c27e4de` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x36cdb4ea18ee99cba3b7d019c7e7db7bcd290cd5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x37a76ebd1bec646deb96c86a94e91e71dfaafd07` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x37ddd0f0577bf97ba2bf7acb972ba063238b6b23` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x386c4f3814d84ecf5d23ebc9a40cf8d2154ac655` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x395f4bbd7356523553c317b21e4836bd5cd3d5a1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3ccbf55fc1277f1b8235eb1bb1465ca71207ed78` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x40ada5acaba5771e28102fe2d7451652baccb51d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4123e988d5d79458c2e75be7ce7e02733d53126a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x41953dcd1fa555c73f56d5d89476389768695820` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x44d4efbd0f802b6a843b1bc659d17ec13fcf789f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x46680db798765f37de467c79086c665261dbcc6b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x48470d8b60067d004796823fce21ed9df18d6ddb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4962a1a551d9f15908c66716ee755467d805755f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4b937c4d9febbdd0cb364731e8b3f4b18e81a94b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4d77ef99e996ea15d2268b1f46cc7d77b86aea6c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5115303cbd6ecb7ec6bea3d336d1f1f853aaeac1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5d7fab31dc8d71870b4e7d0f587282874ed7e7d2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5f9341fb458227f67786de1d6063bb09c191d0a3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x60efb4a9ef6563b073f6d7435f8a0cf88f99d0f3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x61ef63c7d78204f3fa69eb651d6b151bc4a348c6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x630f588d3145b95c9ea6646bf7a94596bc16c08b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6698e38ce5cd79788323a0f416972f143e66c8a4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x671d58e28f087bd3720d1b6e9f1df01f48ec1294` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x68a5c738c5f8c001b331055522cebd623905d821` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6b2663f676936bc10d3af3614666131e2c4463ff` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6fd3decff2e3ed0824aa0474d75b3b83dc080981` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x739d61433e13dde0f1e5716eb85b3407d824ef08` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x73b7e7667b4dd0ac13fdff1577a3c44dfa1d3cf1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7473faa7c75f3803d06a39a737b052bc2fd21313` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x77d373d9f2eedfc515474e3e836db475c8903929` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x799d14077ee998e67373eb9582b57ea4ebbd2030` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7cafae8a5a90a8039d2edb6f6e712737de11e924` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7dc292bdd309c97ddf93a5cd2d3408e8c71f45fe` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x810c5d5c6c06312a4ef3aae9c3db0c7a273a5f23` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x82847d8dcc8f89516748b6cfa947f06148133758` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x831355278f5ffe50eea001ae08477b909a18c9d0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x86eb5e82a1690acf8d905fbc6bbca49c990ce9bf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x870ab60d89e06e9d156614da3fd6e99956479450` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8788d194b55badc1d2b3d62101df40f2e3095b5c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x896002e7ba63321dc4510bfde90f79e08d7e2431` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8973dbdb4ef50622eaa995baec07c3e82752dfef` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8b2e09e3011721143a22f1f1f89887cfcdcc4855` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8e3169ca24b468f2f92da49126020596725e06a9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9070b566765c3d69f999ac6947d8e28ef03279fc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x92e56db94d6304d4ee085f10393f98c63b83c388` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x936a39c6af9ef6c9ced8d0d66fd3d33592152246` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x956208d8a9a085fc71883e997077b98116d52ff2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9603e2e8a80533abfc0b0e3c49019385f37253ab` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9839426a8de5b5ee1e50dc0020c2db5e1594f740` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa10d28e26a75c124e65df5d682db4d899ce59e94` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa1551c8fc7aca2375e2de50bd9bf0fde516e128e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa9712bc605bfedf37742e8ce41a9e57e50fb2e4a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xade16fe695e3e31d47f67dccbd03cca48a8c08b6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaee2b8aff749fdb329d01a3f30fd40b6f0db16cc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb1d7535493afcb1e9318ae83707d404ef8108183` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb3ba27a637badab7430def29004745d417188c22` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb651b2a25f8e20519a42cc8422a767753df078a3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb6d43d356313628bb70d292da2215126552b1198` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb793db1a2e2280998432aa035262af70f9089955` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb951c0f30b5f75979b02b6bda82e4487540ada88` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb9b1a195de1773355ad7c477962ad8b83f6b8f0b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb9f43d25df722954b0f12fc3b2a06688a420235e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xba2a8b457b73d8a076766d3a899063a9320f1a6c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbc9e03e22fd1a06d62ffef7840337e429ed06dae` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc1fa2a15e19c62b2cf771a7c6c270ef194e217b9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc2c4342e82410836af2e0b77fe68bc2ccf4ef5a4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc3fe3d395bf0681c833d236f363e174e9ae591a3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcbe6b9802d5a88bb75d7c3040eebf71a006494b2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcd6f94803f9e5980b46068963daec5c057b0e7a6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcd951163b8ae8f2362e00256ac9f22571c677442` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xce03c21ab5bbfb3b26d499d625d0441675bb5847` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcfbb55026d11f95cfdebd741eaad43ea6d0a9666` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd108e1dc6cd196c6c25fd8db0492bedba22918b6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd3d678c1cab8bf09b79a93df115de44207f3328a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd58ccf2a20f98c5edb072dbf000e74e61ccb62de` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd5ddc0db12c9329c66ebb97944a2ac1939c7652c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd669fef0accee0e5025f78ba06bb84c41585bd2e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd67021125e407ccb43d52a7203f790bb7f2d482b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd6ceae2a1db8508cda2209db9e05e7edf81374a7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd71dcdb551fd08200b4a96f90288748bdd326fa8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd748486f15ff27edc32476ea0120bc98ea17b3a9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd814146d1028a3f89c2f6e6e3a6fcc5b5854082f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdc946e1daddc29515bf657e75f74d1bba5af6dfa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe10a6066214ef4449da73309803fb701e053de69` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe2787506ca9b5f17b64a4e1bb789c017c3620acf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe3ca07186b8167eec7e2eb88c4745e4f0472098b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf1fbb85fc60999f4b3b56e1a5d44e1fd0f8d426f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf2c8a9f6c19d60195f060f6af50a45e140b479de` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf582903149d9bcd0f0e612b74ffc317c54afbec0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf6dcd58e71ba7d3fbcb37ca166f4c53ffd8b9a87` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf9b3a7b40b36042c1ecf4192724a7dfd0a82d695` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfa7fc5ac4fbb12dbd98c0ad3a445185c640c780f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfc600bc7ffe6e4a330527fccb2e09c2574b129fc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfcfc677470fc09b16bc2f99f4becc0298852b13d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfd399f9b1281feec2a1bff0a89372020187852bd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfd3bc260a026bf2a2eedb3ad3194b81a35545a2e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfdde3e8595252d7b392106e2b442fa5b6cb61000` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfea79d26e56e455d0d240ed579a5079cb53306fc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x061856959b3bbfe9353b2cc157a44ddba5186a3d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0bd7037f741e28b4e8eaa63bf16b1d25216dcfbc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x145e6b6964df83ea7e3172c7c389710e45874b76` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x16fbb33001d74e4fb6d1423189a74f89da058788` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1f2436712027f374034dec89b2527f293dbed21f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1f8939d8b22ad85096de6af52a36012042773b7e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x202de677e39616691b8493e36e2c739276b794a3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2ec163056d5f1864c5c9d7a95c97a6ff13e12e10` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x31b8c63d7561f4ab13870a041f3c691d63662841` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x340a67d2aa92008d581a1d04ecd4161125d7b911` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x344913d17fe98fbe0ff9ce810bab2d86f6079639` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x34bc76f2b5ae25dbe56270a73fbab17a1361f2b9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x35e49cf7936ce51ce28bfbba1eba6b4309500fff` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3a58002d40f5aabef676291e17be464bb3982286` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x51c97e09de0b256c4e8b2ec56477181e05fe03a5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x579da740a99aca213aba94801635f807761867ac` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x58f00110b69c5b3a7a2fab8588c832c00a1c1374` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5d202a477be428bfc24862b7219acdb2cd122f5c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5dbbf70e0f50fb89e48b946e9efa2a906453312f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x67ccdf172d144779bd6524d67c9a3b5aa93a9538` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8496f22d539500025c146ff387c30f73fb581964` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8b39a3994ce871e3aaee4611b7dafd065ace2b0e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x93c8b21be7bea0e21e19b3f495ad88cefa119f1a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9627ea9988c250e954d67c4943ad60e529236a0a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x97f426ffd0083f7bb158b70d7853125a67169fc7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9caf9c90782229fef80cf01ebabf2ead1789fd75` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9f4b9773874eab969cdbfa4d46837282921fdf5c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa2a1e60dc0742b43512bb3d67a148523ae482878` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xac47c088e8ee9b30f1138eee52cb9ef001cfed58` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb124a847306f695e3ad44bd62a6356e75683212e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcc6c58943973f9e6cb2e24f10e183e87bd4596eb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcd32cd3dc5f6bdbd9a65ba5bbd5af3673ee1c49b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd39f3c76263ff016ccacb4302c799362ab8659e3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd9d71bd49c9415ca14eda20ecdc0263e19f5d10f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdeb0bf2d02f9fe9f20f3dd62b73bddbd4c2870c0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xff29b10e249bd4c9e6cf3a1cd4bb77c33627c261` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x110909bc7d16465d1d0fa76c3fcd498830bc1abf` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x29fb8f97dbec6b3ee3504b556c008df9e0fab69c` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x87048e29c149577266331792bc4537201ce7e36a` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x9ab779878e7698778268906c72e92e4dd302014a` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x9c486d5ce53ef6fc152594d51be70b80ffdfa96a` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xa3784343254e15adb7fa1bca3a3876ef34b7a111` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xf48d22968e87c52743f9052d8e608ecd41facacc` | ❓ Unverified |

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

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x0ec6a90be27728272796d456656e05989860ab86`](./contracts/bsc-56/0x0ec6a90be27728272796d456656e05989860ab86/) | BinFeeManagerHook | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x73c5c84703540ed1f1f279614853a302cc255c0a`](./contracts/bsc-56/0x73c5c84703540ed1f1f279614853a302cc255c0a/) | CLFeeManagerHook | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x52e2f8f52e27918aeb3995b5e49da38ce9cda89e`](./contracts/bsc-56/0x52e2f8f52e27918aeb3995b5e49da38ce9cda89e/) | FarmBooster | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x05fff74251a29dac98e10a4314ecf05031c5fb39`](./contracts/bsc-56/0x05fff74251a29dac98e10a4314ecf05031c5fb39/) | IFODeployerV10 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x84ff9b09b56c3858c38cc7aa678fabb73b9f3898`](./contracts/blast-81457/0x84ff9b09b56c3858c38cc7aa678fabb73b9f3898/) | MixedRouteQuoterV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0a4224cbecec4a8337f722ed105916544e377778`](./contracts/bsc-56/0x0a4224cbecec4a8337f722ed105916544e377778/) | NonfungibleTokenPositionDescriptorOffChain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x26583d87f43e09258955605e92e63fe40e792df4`](./contracts/bsc-56/0x26583d87f43e09258955605e92e63fe40e792df4/) | NonfungibleTokenPositionDescriptorOffChain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x32d4a74ed5b7b62ce2e60d14ca8bfffb381d5c86`](./contracts/bsc-56/0x32d4a74ed5b7b62ce2e60d14ca8bfffb381d5c86/) | NonfungibleTokenPositionDescriptorOffChain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x388a6fa2c1b6551c92adf631f4b6ddbe6b829150`](./contracts/bsc-56/0x388a6fa2c1b6551c92adf631f4b6ddbe6b829150/) | NonfungibleTokenPositionDescriptorOffChain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xcbdf563ec6fe9662273a9aa085d5897323968a00`](./contracts/bsc-56/0xcbdf563ec6fe9662273a9aa085d5897323968a00/) | NonfungibleTokenPositionDescriptorOffChain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xac5b61a34b41292d1e6db6bf3c909ff0b66f72f3`](./contracts/base-8453/0xac5b61a34b41292d1e6db6bf3c909ff0b66f72f3/) | NonfungibleTokenPositionDescriptorOffChain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x295f6ad2fd02ef9fa87a30bb337f0a40221649c5`](./contracts/blast-81457/0x295f6ad2fd02ef9fa87a30bb337f0a40221649c5/) | NonfungibleTokenPositionDescriptorOffChain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x9cbbb360867fe5b10d143f870ffb699b3300e365`](./contracts/bsc-56/0x9cbbb360867fe5b10d143f870ffb699b3300e365/) | NonfungibleTokenPositionDescriptorOffChainV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x62490b11b335f3b27fc3fbadc29ccdaf7b56aab9`](./contracts/bsc-56/0x62490b11b335f3b27fc3fbadc29ccdaf7b56aab9/) | SquadLimitOrder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x08ccb86a31270fd97d927a4e17934c6262a68b7e`](./contracts/base-8453/0x08ccb86a31270fd97d927a4e17934c6262a68b7e/) | SquadOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xa4843b1247460dd9a66a70386cb9a5934f67592d`](./contracts/bsc-56/0xa4843b1247460dd9a66a70386cb9a5934f67592d/) | SquadswapInterfaceMulticallV2 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xb216abd79263ec6c85dd243928c7beaaffac7e41`](./contracts/bsc-56/0xb216abd79263ec6c85dd243928c7beaaffac7e41/) | SquadSwapNftStake | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xa773b9f08643816524fd614db7f8a74f674440d1`](./contracts/bsc-56/0xa773b9f08643816524fd614db7f8a74f674440d1/) | SquadswapPair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x606d6f19081fe3db277c3400cdbfed2ea0534955`](./contracts/bsc-56/0x606d6f19081fe3db277c3400cdbfed2ea0534955/) | SquadV3Pool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x391eaa90f931c6330132efe6c73ebdf77d782ef5`](./contracts/bsc-56/0x391eaa90f931c6330132efe6c73ebdf77d782ef5/) | SquadV3PoolManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x13efb07140ce67f45256f8ceb230563fc041560b`](./contracts/base-8453/0x13efb07140ce67f45256f8ceb230563fc041560b/) | UnsupportedProtocol | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 39 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 176 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=25

Fork inheritance lineage and inherited audits are included when available.
