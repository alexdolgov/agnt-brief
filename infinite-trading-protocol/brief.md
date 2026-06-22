# Agentic Audit Brief: Infinite Trading Protocol

## Project Overview

- Project: Infinite Trading Protocol (`infinite-trading-protocol`)
- Website: [https://www.infinitetrading.io/](https://www.infinitetrading.io/)
- Lifecycle: active (Tier 0, 48.1% below peak)
- Generated: 2026-06-21T13:58:20.914Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: arbitrum, base, optimism, polygon
- Contract surface: 60 unique implementations (367 raw deployments)
- DeFi Llama TVL: $429,146.76
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Infinite Trading Protocol is a DeFi platform that enables users to create and manage on-chain investment pools, stake tokens, and execute trades across multiple chains. It provides infrastructure for pool management, staking, and asset swapping, with support for AI-driven strategies.

### Architecture

The protocol uses multiple PoolFactory instances (each behind a TransparentUpgradeableProxy) to deploy and manage pools, while ITP token and ItpStakingV1 handle staking incentives. VeloOracle provides price data, and all components are linked through shared proxy patterns and upgradeable infrastructure.

## Contract Surface Quality

- Indexed contracts: 2509; live-surface contracts included: 367 (367 live, 0 unknown).
- Excluded by liveness: 1868 inactive, 274 singleton, 0 uninitialized.
- Deployment units: 0/111 live.
- Detected codebases: aave-v2, compound-v2, uniswap-v3
- Unverified dependencies: 1/50.

## Audit Coverage Summary

- Verified implementations audited: 1/57 (1.8%)
- Verified + Unaudited implementations: 56
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 60
- Raw deployments: 367
- Audits discovered: 1
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-06 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 1.8% | 2024-06 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ItpStakingV1 | unknown | optimism | n/a | [`0x23371a...2b9e37`](./contracts/optimism-10/0x23371aeeaf8718955c93aec726b3cafc772b9e37/) | ✅ Audited |

### ⚠️ Verified + Unaudited (56)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AngleDistributorContractGuard | operational_periphery | arbitrum | n/a | 3 deployments: base `0xcf6019...27ec7a`; arbitrum [`0x443dd0...478cbd`](./contracts/arbitrum-42161/0x443dd00ea148c2434e3d84fc4e6feade64478cbd/); arbitrum `0xccea35...8110d7` | ⚠️ Unaudited |
| AssetHandler | unknown | polygon | n/a | 2 deployments: polygon [`0x3204dd...c717f5`](./contracts/polygon-137/0x3204ddb9d2b061a6840a3c862d7db80defc717f5/); base `0xbbf938...cb3184` | ⚠️ Unaudited |
| ByPassAssetGuard | governance | base | n/a | 2 deployments: base [`0x00bc97...80adee`](./contracts/base-8453/0x00bc9798a926ed2e9031c2870bb7550f9d80adee/); arbitrum `0x615e78...5a642c` | ⚠️ Unaudited |
| DHedgePoolAggregator | core_logic | arbitrum | n/a | 49 deployments: arbitrum [`0x069ea9...f9a847`](./contracts/arbitrum-42161/0x069ea9ae5ee93105bec5550172f73dde8df9a847/); arbitrum `0x08d3eb...745b7e`; arbitrum `0x0dbe14...4a8c70`; arbitrum `0x10d0e5...7de3a7`; arbitrum `0x11e8d1...e460ac`; arbitrum `0x1311e2...ec64bc`; arbitrum `0x1c607c...2fac21`; arbitrum `0x20128e...da9846`; arbitrum `0x22b0f6...dc7c56`; arbitrum `0x25494d...8a3fbb`; arbitrum `0x326d78...84c0f4`; arbitrum `0x3454ed...362844`; arbitrum `0x3d595b...b477fb`; arbitrum `0x3efcfd...916f6c`; arbitrum `0x478a83...652bc7`; arbitrum `0x5109e8...b696ec`; arbitrum `0x5842fb...511a22`; arbitrum `0x5f1bd7...f4750c`; arbitrum `0x609c5b...33856b`; arbitrum `0x6da00d...a2fa32`; arbitrum `0x6fba15...2e561a`; arbitrum `0x7be8ef...9bb3ed`; arbitrum `0x874e0e...959c1e`; arbitrum `0x88e3d4...fd3ed8`; arbitrum `0x89859f...e17750`; arbitrum `0x8f881e...2a0bac`; arbitrum `0x8fe388...7ef304`; arbitrum `0x94c3c1...eda165`; arbitrum `0x99f49d...b32103`; arbitrum `0x9d143f...68192f`; arbitrum `0xa57b52...84a1e2`; arbitrum `0xb9024a...90e873`; arbitrum `0xc69e02...e2f67b`; arbitrum `0xcb09fe...9de442`; arbitrum `0xd0b9ab...cb4923`; arbitrum `0xd1512d...f61486`; arbitrum `0xd35de7...ce56d4`; arbitrum `0xd4c184...1d56d0`; arbitrum `0xd7ec9e...5ebceb`; arbitrum `0xde6701...f1e0fa`; arbitrum `0xe43001...d949a2`; arbitrum `0xe86b74...4943a7`; arbitrum `0xef5cfa...f28131`; arbitrum `0xf60951...4cc3d8`; arbitrum `0xf7457e...6d308c`; arbitrum `0xfd3e17...6e4b5f`; arbitrum `0xfd3eeb...5a1def`; arbitrum `0xfef27e...a0878a`; arbitrum `0xffe7bb...43266c` | ⚠️ Unaudited |
| Disperse | unknown | optimism | n/a | 3 deployments: optimism [`0x0a167d...4b96f0`](./contracts/optimism-10/0x0a167dc9daf2c7c2ec8e3a73c5ff6985414b96f0/); base `0xd8419d...b1ff32`; arbitrum `0xdde09c...84ea0e` | ⚠️ Unaudited |
| DytmOfficeAssetGuard | governance | arbitrum | n/a | 2 deployments: arbitrum [`0x58d039...f9fc0e`](./contracts/arbitrum-42161/0x58d0391adaac5c557d331336fecdd6255ff9fc0e/); arbitrum `0xab4372...0de7a1` | ⚠️ Unaudited |
| DytmOfficeContractGuard | governance | arbitrum | n/a | 2 deployments: arbitrum [`0xb6c380...399d07`](./contracts/arbitrum-42161/0xb6c380514dbfc6d34724a96c33a1df2f1d399d07/); arbitrum `0xecb81d...b3a1ac` | ⚠️ Unaudited |
| DytmWithdrawProcessor | operational_periphery | arbitrum | n/a | [`0xcf5f26...21f540`](./contracts/arbitrum-42161/0xcf5f26d2ad71dae6e98564eed4bdb4f0cd21f540/) | ⚠️ Unaudited |
| EasyLimitBuyManager | governance | arbitrum | n/a | 3 deployments: optimism `0x59c598...09f172`; optimism `0xc8da8a...1ec04f`; arbitrum [`0x40f297...2a69ef`](./contracts/arbitrum-42161/0x40f2978d87348250f085acebd680b387842a69ef/) | ⚠️ Unaudited |
| EasySwapperV2 | adapter | arbitrum | n/a | 7 deployments: optimism `0x655421...a49c38`; polygon `0xa0be04...96e634`; base `0x8c389c...d44228`; arbitrum [`0x2361ff...16cd83`](./contracts/arbitrum-42161/0x2361ffbe98aedcf9c3cc9de0e44b892e3016cd83/); arbitrum `0x287046...dce7e7`; arbitrum `0x305737...b6e4b8`; arbitrum `0x443cee...9a8907` | ⚠️ Unaudited |
| EasySwapperV2ContractGuard | adapter | polygon | n/a | 23 deployments: optimism `0x1b7726...9d9d2b`; optimism `0x242737...ad5969`; optimism `0x90bf4d...d04a82`; optimism `0xa9e462...87ab55`; optimism `0xf3aa3b...d8475e`; polygon [`0x017f18...524aad`](./contracts/polygon-137/0x017f18a12c064d3869356155e443a3e040524aad/); polygon `0x26e20e...481340`; polygon `0x55a5e1...b8caaf`; polygon `0xa39a6e...efd663`; polygon `0xefa645...be5791`; polygon `0xf74dd8...bcc78f`; base `0x0b08a5...fe8115`; base `0x1789da...109823`; base `0x2db0b7...9ef218`; base `0x4defd2...168194`; base `0x6479bc...4acd2c`; base `0xa25409...9ee3e6`; arbitrum `0x427b00...89a786`; arbitrum `0x59128a...3f11c6`; arbitrum `0x66f90a...45d145`; arbitrum `0x67c9f2...d6a87e`; arbitrum `0xbd270c...b0d486`; arbitrum `0xc11379...bbde70` | ⚠️ Unaudited |
| EasySwapperV2UnrolledAssetsGuard | adapter | arbitrum | n/a | 2 deployments: arbitrum [`0x7a6abb...8dceb5`](./contracts/arbitrum-42161/0x7a6abbf5dcd58fe48bff1289b31b497f918dceb5/); arbitrum `0xbf51d0...835fe8` | ⚠️ Unaudited |
| ERC20Guard | governance | arbitrum | n/a | 3 deployments: optimism `0x7389af...3a9e74`; arbitrum [`0x604271...5cf0bb`](./contracts/arbitrum-42161/0x60427184a3c6ff4382a0a189a6857adbae5cf0bb/); arbitrum `0xe8cdcd...f077b0` | ⚠️ Unaudited |
| ETHCrossAggregator | unknown | polygon | n/a | 3 deployments: polygon [`0x3de127...9b7117`](./contracts/polygon-137/0x3de127fcd464601005f3d65577e5239b249b7117/); polygon `0xf24c68...1e1fd1`; base `0xcff295...d9cef4` | ⚠️ Unaudited |
| FlatMoneyCollateralAssetGuard | governance | arbitrum | n/a | 3 deployments: optimism `0xfec316...ef4553`; arbitrum [`0xc2c7e2...cbd7ef`](./contracts/arbitrum-42161/0xc2c7e276cc7b525f7a4a42dbfe5db93626cbd7ef/); arbitrum `0xdc57aa...d8ff19` | ⚠️ Unaudited |
| FlatMoneyDelayedOrderContractGuard | governance | base | n/a | [`0xd12104...2fbaea`](./contracts/base-8453/0xd12104168b1281e2095cf97a57ccddf19b2fbaea/) | ⚠️ Unaudited |
| FlatMoneyOptionsMarketAssetGuard | governance | arbitrum | n/a | [`0x580a94...367866`](./contracts/arbitrum-42161/0x580a949035bab6838765f08f613a842f7e367866/) | ⚠️ Unaudited |
| FlatMoneyOptionsOrderAnnouncementGuard | governance | arbitrum | n/a | 4 deployments: arbitrum [`0x0591aa...3d0bba`](./contracts/arbitrum-42161/0x0591aa3def2f8ccb982fc55f5266f10acb3d0bba/); arbitrum `0x5b1469...598005`; arbitrum `0xb2e336...1e9a9e`; arbitrum `0xd0540b...60d2ad` | ⚠️ Unaudited |
| FlatMoneyOptionsOrderExecutionGuard | governance | arbitrum | n/a | [`0x4779d0...634169`](./contracts/arbitrum-42161/0x4779d0da8e0a8f8355c4d9b7a92a32555a634169/) | ⚠️ Unaudited |
| FlatMoneyUNITPriceAggregator | operational_periphery | arbitrum | n/a | [`0x7d7cfa...6bbc3e`](./contracts/arbitrum-42161/0x7d7cfa76b32548c95300e39f137a2a86d46bbc3e/) | ⚠️ Unaudited |
| FlatMoneyV2UNITAssetGuard | governance | arbitrum | n/a | [`0xb02178...53ad19`](./contracts/arbitrum-42161/0xb021783154442f94020f6a5a49ca378f4553ad19/) | ⚠️ Unaudited |
| FlatMoneyV2UNITOutsideWithdrawalAssetGuard | operational_periphery | arbitrum | n/a | 2 deployments: arbitrum [`0xd7a07e...adb7f6`](./contracts/arbitrum-42161/0xd7a07eaceec039d71ac8d14a87becab182adb7f6/); arbitrum `0xeac545...98b42c` | ⚠️ Unaudited |
| FluidMerkleDistributorContractGuard | operational_periphery | base | n/a | 2 deployments: base [`0x909cf0...7a4286`](./contracts/base-8453/0x909cf0ebb0d4b3451d2c4dc414f36c9aba7a4286/); arbitrum `0xfa104f...b56825` | ⚠️ Unaudited |
| FluidTokenPriceAggregator | operational_periphery | base | n/a | 14 deployments: base [`0x06b32a...93d244`](./contracts/base-8453/0x06b32a4b07ffdc8050801033404f3ef7cb93d244/); base `0x0e55c4...6a1fe6`; base `0x321267...7b7273`; base `0x4c2e88...ca6380`; base `0x6326a7...13ae3c`; base `0x7b9899...0dac3e`; base `0x7c8bb4...572b15`; base `0xce68e2...9873d1`; base `0xdfc827...23bd5c`; base `0xf1c33a...21e146`; arbitrum `0x740003...bd8688`; arbitrum `0x8cd6ce...afa53a`; arbitrum `0xaef2f1...1fea1c`; arbitrum `0xc34f0e...c4d687` | ⚠️ Unaudited |
| GmxAfterExcutionLib | unknown | arbitrum | n/a | 9 deployments: arbitrum [`0x05ea9e...5d4cf7`](./contracts/arbitrum-42161/0x05ea9e0ec473dd3a718854785d921c57d85d4cf7/); arbitrum `0x265a34...0c4b52`; arbitrum `0x85db1c...1b1fe4`; arbitrum `0xb7c13a...03fff1`; arbitrum `0xb870fc...327c71`; arbitrum `0xc4a948...10b81d`; arbitrum `0xde70a7...40e91f`; arbitrum `0xe84553...0e1b30`; arbitrum `0xf16f1b...3cc275` | ⚠️ Unaudited |
| GmxAfterExecutionLib | unknown | arbitrum | n/a | 8 deployments: arbitrum [`0x204de3...942649`](./contracts/arbitrum-42161/0x204de34c130dc670f233ad02a71d36ae20942649/); arbitrum `0x3e7fb2...a2b769`; arbitrum `0x662ac1...9a5a5c`; arbitrum `0x717f24...a65454`; arbitrum `0x9b5411...bf647b`; arbitrum `0x9f0288...2eb0f6`; arbitrum `0xc2c444...c4dde6`; arbitrum `0xe33737...d9359f` | ⚠️ Unaudited |
| GmxAfterTxValidatorLib | unknown | arbitrum | n/a | 18 deployments: arbitrum [`0x25d05c...75cad8`](./contracts/arbitrum-42161/0x25d05c812a337308e20a99b78cf796a23f75cad8/); arbitrum `0x274fba...3a8cae`; arbitrum `0x29d53c...f6c1c6`; arbitrum `0x5c413b...abfb29`; arbitrum `0x66edb9...73cd8a`; arbitrum `0x69b5da...d72720`; arbitrum `0x6e7503...ffa5e0`; arbitrum `0x79b8b7...d6efea`; arbitrum `0x7a87a8...880513`; arbitrum `0x853001...a52c58`; arbitrum `0x8fe787...d9cd82`; arbitrum `0xa7c452...38505e`; arbitrum `0xaf6740...450445`; arbitrum `0xbc96b5...801f5a`; arbitrum `0xd271a7...b86224`; arbitrum `0xdbad0b...914372`; arbitrum `0xe555bd...f22d55`; arbitrum `0xea7736...5e3a7d` | ⚠️ Unaudited |
| GmxClaimableCollateralTrackerLib | unknown | arbitrum | n/a | 4 deployments: arbitrum [`0x01e703...879a0d`](./contracts/arbitrum-42161/0x01e7036e82804aa178a2023e8fbcc0649e879a0d/); arbitrum `0x12c8b9...c5f27d`; arbitrum `0x6d175a...ff3e34`; arbitrum `0xc4c9ba...9af1fa` | ⚠️ Unaudited |
| GmxEventUtils | unknown | arbitrum | n/a | 11 deployments: arbitrum [`0x12606b...47b5e2`](./contracts/arbitrum-42161/0x12606b0b1d36f1036fe2a3453c070569ae47b5e2/); arbitrum `0x192858...3f6356`; arbitrum `0x36deb1...e15710`; arbitrum `0x4e3cc6...fd3244`; arbitrum `0x7551c6...9cffd9`; arbitrum `0x7de53e...77effb`; arbitrum `0xaa0fc6...4e9326`; arbitrum `0xb30627...46045f`; arbitrum `0xe66ed6...5e1a61`; arbitrum `0xea6369...e3302b`; arbitrum `0xff7462...9859e9` | ⚠️ Unaudited |
| GmxExchangeRouterContractGuard | adapter | arbitrum | n/a | 17 deployments: arbitrum [`0x0a89df...bec38c`](./contracts/arbitrum-42161/0x0a89dffac15e82d9ec349172438e119f09bec38c/); arbitrum `0x18a3a0...da9f6f`; arbitrum `0x1e6455...467011`; arbitrum `0x259982...bcb3ae`; arbitrum `0x473565...35d934`; arbitrum `0x555420...8b3242`; arbitrum `0x8842fe...a9e51f`; arbitrum `0x8b885c...b6fdac`; arbitrum `0xa8970c...a80853`; arbitrum `0xabf083...20693b`; arbitrum `0xaf5908...27c5b2`; arbitrum `0xba5599...bf872c`; arbitrum `0xc747fe...417d81`; arbitrum `0xc7a2ad...2549c5`; arbitrum `0xd7546c...818a52`; arbitrum `0xe22f40...dba555`; arbitrum `0xedb6e9...4e733c` | ⚠️ Unaudited |
| GmxHelperLib | periphery | arbitrum | n/a | 17 deployments: arbitrum [`0x15e560...4ca5c1`](./contracts/arbitrum-42161/0x15e560dc40f2d584040d11fab0e53736234ca5c1/); arbitrum `0x2b5fe0...02bbed`; arbitrum `0x410c41...959c56`; arbitrum `0x54f78a...53ac6b`; arbitrum `0x69abd8...46d166`; arbitrum `0x754a1d...9225e2`; arbitrum `0x93b96b...bbfd1f`; arbitrum `0x9996cc...5a66de`; arbitrum `0x9f44c6...c63710`; arbitrum `0xaa135f...42af4e`; arbitrum `0xaf3f02...71b368`; arbitrum `0xb6aa3c...f7530d`; arbitrum `0xb6b40a...2739e5`; arbitrum `0xbd5659...67f09d`; arbitrum `0xf30855...d1c50a`; arbitrum `0xf56619...3e7226`; arbitrum `0xfb1128...d4c4b6` | ⚠️ Unaudited |
| GmxPerpMarketAssetGuard | governance | arbitrum | n/a | 4 deployments: arbitrum [`0x44bfe8...a8be48`](./contracts/arbitrum-42161/0x44bfe8223942761d1870a86d32a159480ea8be48/); arbitrum `0x50232c...567e9a`; arbitrum `0x52b15f...2d6266`; arbitrum `0xa1971b...4f9c8a` | ⚠️ Unaudited |
| GPv2SettlementContractGuard | governance | polygon | n/a | [`0x417c03...24eaa7`](./contracts/polygon-137/0x417c0384551e324d485cd6d7052d29d69e24eaa7/) | ⚠️ Unaudited |
| ITP | unknown | optimism | n/a | [`0x0a7b75...7bf7a0`](./contracts/optimism-10/0x0a7b751fcdbbaa8bb988b9217ad5fb5cfe7bf7a0/) | ⚠️ Unaudited |
| KyberSwapRouterV2ContractGuard | adapter | base | n/a | 4 deployments: optimism `0xeb3981...97859e`; polygon `0xc80700...a609ee`; base [`0x24bd15...d9c20d`](./contracts/base-8453/0x24bd15453bd493361f7985a40d1903346bd9c20d/); arbitrum `0xd585dc...001ff2` | ⚠️ Unaudited |
| OdosV2ContractGuard | governance | base | n/a | 4 deployments: optimism `0xb10a64...0bdb83`; polygon `0xd8f076...6d375b`; base [`0x0a062c...cb6e40`](./contracts/base-8453/0x0a062cf0b4ac5f1d3002bae377ad9e1522cb6e40/); arbitrum `0xb432b1...478d42` | ⚠️ Unaudited |
| OdosV3ContractGuard | governance | polygon | n/a | 4 deployments: optimism `0xd1f1bb...a6893f`; polygon [`0x96d3fb...05996e`](./contracts/polygon-137/0x96d3fbe3ee60cc5b490034ffaf9d9992d605996e/); base `0xf5d88b...cf9ecb`; arbitrum `0xa87b11...e72609` | ⚠️ Unaudited |
| OneInchV6Guard | governance | polygon | n/a | 8 deployments: optimism `0xf1b0df...d865dc`; optimism `0xfa4cf4...74529c`; polygon [`0x2b425d...369b3c`](./contracts/polygon-137/0x2b425d4fa3a85e7555fdf7e103bc734cab369b3c/); polygon `0x539c3a...93e96b`; base `0x9cbed9...4e9258`; base `0xd40042...f113bb`; arbitrum `0x5e4ba5...92b01a`; arbitrum `0xc566f4...a5eaf3` | ⚠️ Unaudited |
| PancakeMasterChefV3Guard | governance | base | n/a | 2 deployments: base [`0x997699...47bb09`](./contracts/base-8453/0x997699f0992b2f5ac94aaa90fcd9c328bc47bb09/); arbitrum `0xbfa716...8edf02` | ⚠️ Unaudited |
| PancakeNonfungiblePositionGuard | governance | base | n/a | 2 deployments: base [`0xa6dde4...bf7dc1`](./contracts/base-8453/0xa6dde4ee891f2e37f711b3e5b103b64046bf7dc1/); arbitrum `0xb3bc81...b826db` | ⚠️ Unaudited |
| PoolFactory | registry | base | n/a | 11 deployments: optimism `0x2935d3...6aa0c8`; optimism `0x44f9a2...9cde2e`; optimism `0xc7ca03...293b1f`; polygon `0x17d253...d6ae83`; polygon `0x445255...26a9a4`; polygon `0xcea50c...380f4d`; base [`0x059458...141733`](./contracts/base-8453/0x059458bd5f6162c446651b01d475309fcd141733/); base `0x4730b5...07a6de`; arbitrum `0x3a8912...ead89c`; arbitrum `0x3e619d...f4b3b5`; arbitrum `0xd35b69...01e977` | ⚠️ Unaudited |
| PoolLimitOrderManager | core_logic | base | n/a | 6 deployments: optimism `0xf0793f...255bb5`; polygon `0x475e52...5a8c0a`; base [`0x1394f8...e0b6db`](./contracts/base-8453/0x1394f8ccebbfd9e63ff37b890c0a863baae0b6db/); arbitrum `0x32281a...03d8d0`; arbitrum `0x877252...59645b`; arbitrum `0x8e43ae...b2d102` | ⚠️ Unaudited |
| PoolLimitOrderManagerGuard | core_logic | arbitrum | n/a | [`0x20f1f9...670f1f`](./contracts/arbitrum-42161/0x20f1f9f2c52f1820020c6641f35890add3670f1f/) | ⚠️ Unaudited |
| PoolLogic | core_logic | base | n/a | 26 deployments: optimism `0x375c80...a1f31e`; optimism `0x468f6e...1961d1`; optimism `0x703fe8...c62d86`; optimism `0x7e5eb8...d79a6a`; optimism `0x9ee8ac...e39e4d`; optimism `0xc856cf...9872ce`; polygon `0x25a057...08cb22`; polygon `0x499c69...c81a41`; polygon `0x5b6138...a3b758`; polygon `0x64dae8...2413a6`; polygon `0xe9c42f...4a6df1`; polygon `0xf4d903...5fa796`; polygon `0xf5a181...b264a7`; base [`0x027248...2c537f`](./contracts/base-8453/0x0272481950604994e503a04635a32ed0c02c537f/); base `0x11fd60...9a46f5`; base `0x2050e0...84195a`; base `0x7e2d17...488b1f`; base `0xbcecef...85716a`; base `0xd3c22f...ed818c`; arbitrum `0x39a079...781e0a`; arbitrum `0x6555e3...75e801`; arbitrum `0x74854e...b06be6`; arbitrum `0xa17fe3...512633`; arbitrum `0xc6822d...685849`; arbitrum `0xd4c062...ce267e`; arbitrum `0xd59a05...b16531` | ⚠️ Unaudited |
| PoolLogicLib | core_logic | arbitrum | n/a | 24 deployments: optimism `0x1824da...4efbd0`; optimism `0x692e04...787d72`; optimism `0x6f5caf...156457`; optimism `0x7ce530...2675ca`; optimism `0xf6611a...216fbf`; polygon `0x1e7562...59a213`; polygon `0x595c06...b2ea4d`; polygon `0x8b2358...c5255a`; polygon `0xc562dd...c33cd0`; polygon `0xe79c54...b98820`; polygon `0xec978c...b9d28e`; polygon `0xff267c...b23732`; base `0x12f2ae...195222`; base `0x23a7fb...e7d0b7`; base `0x3b19aa...4e99ab`; base `0x4477f1...177577`; base `0xa192b1...5255ce`; base `0xf41fd7...719c9c`; arbitrum [`0x053f66...eaadb7`](./contracts/arbitrum-42161/0x053f666a4324831338b5c91de7239c6198eaadb7/); arbitrum `0x2ad4af...ba916f`; arbitrum `0x3725f0...edcde1`; arbitrum `0x55f89d...42fc10`; arbitrum `0x9127ad...73583e`; arbitrum `0xc8da8a...667da4` | ⚠️ Unaudited |
| PoolManagerLogic | core_logic | polygon | n/a | 20 deployments: optimism `0x24a27d...688262`; optimism `0x50e2b7...5bef40`; optimism `0x6e86b9...e5c16b`; optimism `0x84c80d...bffc02`; polygon [`0x13775f...e7d274`](./contracts/polygon-137/0x13775ff3f27ef8225e0d24bfad04d5d61ce7d274/); polygon `0x2930db...2a02a1`; polygon `0x4d1741...b2a46f`; polygon `0x6a36ec...9c9796`; polygon `0xc56817...5a209d`; polygon `0xe4ffe2...c297e4`; base `0x412325...e1cf61`; base `0x4f4611...72e06d`; base `0x8ca064...aeab5d`; base `0xafffc7...569c32`; base `0xc98ae3...883643`; arbitrum `0x419fd6...b63867`; arbitrum `0x934045...0cd3c3`; arbitrum `0xaf111c...c0e05f`; arbitrum `0xbc692d...10de5d`; arbitrum `0xe42a59...0f5362` | ⚠️ Unaudited |
| PriceFetcher | operational_periphery | optimism | n/a | [`0x6777e7...0b4e38`](./contracts/optimism-10/0x6777e70fe05daed585fbed3c2fcd2cd8fb0b4e38/) | ⚠️ Unaudited |
| PythPriceAggregator | operational_periphery | arbitrum | n/a | [`0x8426c1...7753b6`](./contracts/arbitrum-42161/0x8426c1c576689d5a6fbea18102ec7de4e47753b6/) | ⚠️ Unaudited |
| RamsesNonfungiblePositionGuard | governance | arbitrum | n/a | [`0x618e65...0500c7`](./contracts/arbitrum-42161/0x618e6593733e819a63be20f4fdeb61da4b0500c7/) | ⚠️ Unaudited |
| RewardAssetGuard | governance | base | n/a | 2 deployments: base [`0x20e125...ecf799`](./contracts/base-8453/0x20e125da16d93de54d69189f6aa89f0ee8ecf799/); arbitrum `0x61647d...c2713c` | ⚠️ Unaudited |
| SlippageAccumulator | unknown | arbitrum | n/a | 8 deployments: optimism `0x61f2e7...517ee4`; optimism `0xa300c2...932d25`; polygon `0x8e394b...ae64e3`; polygon `0x8fab77...40a4b6`; base `0x9d6eb6...370889`; base `0xcf4279...fba237`; arbitrum [`0x46b06b...318e1d`](./contracts/arbitrum-42161/0x46b06b49b4811a9e8d3403e0716a74e856318e1d/); arbitrum `0x4d4085...0e30be` | ⚠️ Unaudited |
| UniV3TWAPAggregator | unknown | polygon | n/a | [`0x514ac6...73d1b5`](./contracts/polygon-137/0x514ac67cc670dc11f7199c6af17c6b12a373d1b5/) | ⚠️ Unaudited |
| ValueManipulationCheck | unknown | base | n/a | 4 deployments: optimism `0xfc8d50...a64c85`; polygon `0xbb30f5...93db2c`; base [`0x42e8b6...1c2336`](./contracts/base-8453/0x42e8b6cdcd6bff2bc4e30e3faec8a0858e1c2336/); arbitrum `0xa39daa...8f61c4` | ⚠️ Unaudited |
| VelodromeNonfungiblePositionGuard | governance | base | n/a | 2 deployments: optimism `0xec9d3c...04265c`; base [`0x94335f...e99726`](./contracts/base-8453/0x94335fe8c4e31a2b16208a626e0d415c80e99726/) | ⚠️ Unaudited |
| VirtualTokenAssetGuard | governance | arbitrum | n/a | [`0x6b9e18...550746`](./contracts/arbitrum-42161/0x6b9e1831a6477de06ea7838440697853a7550746/) | ⚠️ Unaudited |
| WithdrawalVault | operational_periphery | arbitrum | n/a | 5 deployments: optimism `0xd5a717...aa3caf`; polygon `0xb93954...985f83`; arbitrum [`0x188f21...fba89f`](./contracts/arbitrum-42161/0x188f217457079da89801eb19ed49c38606fba89f/); arbitrum `0x6d69ac...8c8904`; arbitrum `0x89c6a1...c1ccac` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (3)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | optimism | n/a | `0x5ba225...b851d9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2ad03b...f44134` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9d5257...110423` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Infinite Trading Protocol.pdf](https://github.com/0xGuard-com/audit-reports/blob/master/Infinite%20Trading%20Protocol/Infinite%20Trading%20Protocol.pdf) | unknown | Audit | 2024-06 | stale | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | [`0x3204dd...c717f5`](./contracts/polygon-137/0x3204ddb9d2b061a6840a3c862d7db80defc717f5/) | AssetHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x017f18...524aad`](./contracts/polygon-137/0x017f18a12c064d3869356155e443a3e040524aad/) | EasySwapperV2ContractGuard | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x3de127...9b7117`](./contracts/polygon-137/0x3de127fcd464601005f3d65577e5239b249b7117/) | ETHCrossAggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x417c03...24eaa7`](./contracts/polygon-137/0x417c0384551e324d485cd6d7052d29d69e24eaa7/) | GPv2SettlementContractGuard | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x0a7b75...7bf7a0`](./contracts/optimism-10/0x0a7b751fcdbbaa8bb988b9217ad5fb5cfe7bf7a0/) | ITP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2b425d...369b3c`](./contracts/polygon-137/0x2b425d4fa3a85e7555fdf7e103bc734cab369b3c/) | OneInchV6Guard | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x13775f...e7d274`](./contracts/polygon-137/0x13775ff3f27ef8225e0d24bfad04d5d61ce7d274/) | PoolManagerLogic | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x6777e7...0b4e38`](./contracts/optimism-10/0x6777e70fe05daed585fbed3c2fcd2cd8fb0b4e38/) | PriceFetcher | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 51 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=1

Fork inheritance lineage and inherited audits are included when available.
