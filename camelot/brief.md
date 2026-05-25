# Agentic Audit Brief: Camelot

## Project Overview

- Project: Camelot (`camelot`)
- Website: [https://camelot.exchange/](https://camelot.exchange/)
- Lifecycle: active (Tier 0, 81.9% below peak)
- Generated: 2026-05-25T16:57:54.254Z
- Pipeline run: v2-pipeline-2026-05-25-eff36e-79e6
- Chains: arbitrum
- Contract surface: 118 unique implementations (208 raw deployments)
- DeFi Llama TVL: $27,140,357.00
- On-chain TVL (included contracts): $6,402,979.58
- TVL by chain: Arbitrum $6,402,979.58

## Project Description

Camelot is a decentralized exchange (DEX) protocol on Arbitrum One that enables users to swap tokens, provide liquidity, and earn yield through staking and farming. It supports both classic AMM pools and concentrated liquidity (Algebra-based) pools, along with launchpad and yield-boosting features.

### Architecture

The Camelot and Camelot V3 families share a common Algebra-based AMM architecture but use separate factory and periphery contracts. The original Camelot family includes yield farming and staking contracts that interact with the GRAIL token, while Camelot V3 introduces StakedUSDX and its own staking dynamics. Both families rely on shared adapter and router patterns for integration.

## Audit Coverage Summary

- Verified implementations audited: 9/51 (17.6%)
- Verified + Unaudited implementations: 42
- Verified by bytecode match: 0
- Unverified implementations: 67
- Unique implementations: 118
- Raw deployments: 208
- Audits discovered: 1
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $391,936.07
- Latest audit: 2022-11 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Paladin | Tier 2 | 9 | 17.6% | 2022-11 |

## Contract Surface

### ✅ Verified + Audited (9)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| GrailTokenV2 | token | arbitrum | [`0x3d9907...0982d8`](./contracts/arbitrum-42161/0x3d9907f9a368ad0a51be60f7da3b97cf940982d8/) | ✅ Audited |
| CamelotFactory | registry | arbitrum | [`0x6eccab...43a652`](./contracts/arbitrum-42161/0x6eccab422d763ac031210895c81787e87b43a652/) | ✅ Audited |
| CamelotMaster | unknown | arbitrum | [`0x55401a...fc21f4`](./contracts/arbitrum-42161/0x55401a4f396b3655f66bf6948a1a4dc61dfc21f4/) | ✅ Audited |
| CamelotRouter | adapter | arbitrum | 4 deployments: arbitrum [`0x4672f4...35d091`](./contracts/arbitrum-42161/0x4672f4327a099ae5e4bfc42cdf0c2a400535d091/); arbitrum `0xc873fe...b2448d`; arbitrum `0xdd8e1a...d8a453`; arbitrum `0xe45801...1b8175` | ✅ Audited |
| NFTPoolFactory | registry | arbitrum | [`0x6db1ef...1dbf6d`](./contracts/arbitrum-42161/0x6db1ef0df42e30acf139a70c1ed0b7e6c51dbf6d/) | ✅ Audited |
| NitroPoolFactory | registry | arbitrum | [`0xe0a6b3...c24569`](./contracts/arbitrum-42161/0xe0a6b372ac6af4b37c7f3a989fe5d5b194c24569/) | ✅ Audited |
| Presale | unknown | arbitrum | [`0x66ec1e...365d29`](./contracts/arbitrum-42161/0x66ec1ee6c3ad04d7629ce4a6d5d19ba99c365d29/) | ✅ Audited |
| XGrailToken | token | arbitrum | [`0x3caae2...3f496b`](./contracts/arbitrum-42161/0x3caae25ee616f2c8e13c74da0813402eae3f496b/) | ✅ Audited |
| YieldBooster | core_logic | arbitrum | [`0xd27c37...c0b1b1`](./contracts/arbitrum-42161/0xd27c373950e7466c53e5cd6ee3f70b240dc0b1b1/) | ✅ Audited |

### ⚠️ Verified + Unaudited (42)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| StakedUSDX | token | arbitrum | [`0x7788a3...d87d92`](./contracts/arbitrum-42161/0x7788a3538c5fc7f9c7c8a74eac4c898fc8d87d92/) | ⚠️ Unaudited |
| aeWETH | token | arbitrum | [`0x82af49...3fbab1`](./contracts/arbitrum-42161/0x82af49447d8a07e3bd95bd0d56f35241523fbab1/) | ⚠️ Unaudited |
| AlgebraAdapter | adapter | arbitrum | 2 deployments: arbitrum [`0x148688...c893a0`](./contracts/arbitrum-42161/0x1486882e02e6a1037da6afc324b2f911f4c893a0/); arbitrum `0x46fca9...1780aa` | ⚠️ Unaudited |
| AlgebraCommunityVault | core_logic | arbitrum | 2 deployments: arbitrum [`0x971ba9...3a5e5a`](./contracts/arbitrum-42161/0x971ba90018c44ac60d5bb850249b3ec02a3a5e5a/); arbitrum `0xe3c3e2...1da69e` | ⚠️ Unaudited |
| AlgebraCustomPoolEntryPoint | core_logic | arbitrum | [`0xbf1849...aea3ef`](./contracts/arbitrum-42161/0xbf1849090b659505a0d7a75fead3068020aea3ef/) | ⚠️ Unaudited |
| AlgebraEternalFarming | unknown | arbitrum | [`0x0b3538...99db1b`](./contracts/arbitrum-42161/0x0b3538cc8d06e73f26956f81d1a4be513d99db1b/) | ⚠️ Unaudited |
| AlgebraFactory | registry | arbitrum | 9 deployments: arbitrum [`0x1a3c9b...1fd35b`](./contracts/arbitrum-42161/0x1a3c9b1d2f0529d97f2afc5136cc23e58f1fd35b/); arbitrum `0x1e3db3...8455ca`; arbitrum `0x6b692b...4e5bb8`; arbitrum `0x9a8ddc...aed592`; arbitrum `0xbefc4b...7a2f37`; arbitrum `0xd3b4c3...5d6aea`; arbitrum `0xd490f2...f684dd`; arbitrum `0xd97b6e...db61d6`; arbitrum `0xe907d0...994ae3` | ⚠️ Unaudited |
| AlgebraInterfaceMulticall | periphery | arbitrum | [`0x1f9841...61f984`](./contracts/arbitrum-42161/0x1f98415757620b543a52e61c46b32eb19261f984/) | ⚠️ Unaudited |
| AlgebraPoolDeployer | core_logic | arbitrum | 8 deployments: arbitrum [`0x0f9dff...741870`](./contracts/arbitrum-42161/0x0f9dff83d8b1f1b41dfbe340b8d9d75aa1741870/); arbitrum `0x34f74f...c69bd2`; arbitrum `0x5e1e14...45ffe1`; arbitrum `0x6dd3fb...974f65`; arbitrum `0x89aee0...fff226`; arbitrum `0x8b5665...ca6f15`; arbitrum `0xd5143d...c4fa56`; arbitrum `0xf09c08...74af8d` | ⚠️ Unaudited |
| AlgebraStaticQuoter | periphery | arbitrum | 2 deployments: arbitrum [`0x4efc8a...f39e07`](./contracts/arbitrum-42161/0x4efc8a4ceeeeefbb81bfac55a001100b5af39e07/); arbitrum `0xe7a5ce...8204d1` | ⚠️ Unaudited |
| AlgebraV2Adapter | adapter | arbitrum | 3 deployments: arbitrum [`0x28901c...05d947`](./contracts/arbitrum-42161/0x28901cc545bf9dc1b381cbd9da8ea94fc005d947/); arbitrum `0x64c086...2947f3`; arbitrum `0xd15996...db989f` | ⚠️ Unaudited |
| AlgebraV2StaticQuoter | periphery | arbitrum | 2 deployments: arbitrum [`0x26d1e9...7414b6`](./contracts/arbitrum-42161/0x26d1e904047449feeba13bb517f9e731587414b6/); arbitrum `0xe04538...c5594f` | ⚠️ Unaudited |
| AlgebraVaultFactoryStub | registry | arbitrum | 2 deployments: arbitrum [`0x1cb8ee...1333f6`](./contracts/arbitrum-42161/0x1cb8eedc4dcff2da02bfcfbed2456cf2c41333f6/); arbitrum `0x653658...32d540` | ⚠️ Unaudited |
| BasePluginV1Factory | registry | arbitrum | [`0xe3ae84...cbd03d`](./contracts/arbitrum-42161/0xe3ae84a486c737e4e260b48f1173dfcd96cbd03d/) | ⚠️ Unaudited |
| BondWrapper | unknown | arbitrum | [`0xdc1321...af34e5`](./contracts/arbitrum-42161/0xdc132116a76683f5355042e1b67819551aaf34e5/) | ⚠️ Unaudited |
| CamelotAdapter | adapter | arbitrum | 2 deployments: arbitrum [`0x79ab95...b70f9b`](./contracts/arbitrum-42161/0x79ab95b4c112337310ad04d977c5734dd3b70f9b/); arbitrum `0xabc401...688dab` | ⚠️ Unaudited |
| CamelotBasePluginFactory | registry | arbitrum | [`0x222f13...687a71`](./contracts/arbitrum-42161/0x222f135d84bb4852d2cbbdd6fcabafd043687a71/) | ⚠️ Unaudited |
| CamelotExchangeRouter | adapter | arbitrum | [`0x1be46c...268f25`](./contracts/arbitrum-42161/0x1be46c7a40906c19d91d07b3ae69ef5893268f25/) | ⚠️ Unaudited |
| CamelotYakRouter | adapter | arbitrum | 11 deployments: arbitrum [`0x17bcb7...105d5c`](./contracts/arbitrum-42161/0x17bcb7cc86ad107d97511a17e35eee9d15105d5c/); arbitrum `0x728343...e5cc00`; arbitrum `0x762629...bed56d`; arbitrum `0x81e3a6...619cf8`; arbitrum `0x8b3bc3...3d6b74`; arbitrum `0x932235...a1d35a`; arbitrum `0x99d4e8...ddec5e`; arbitrum `0x9c1e97...7922fb`; arbitrum `0xb1562f...662712`; arbitrum `0xe14b4f...adfee1`; arbitrum `0xe9f622...845152` | ⚠️ Unaudited |
| CampaignFactory | registry | arbitrum | 5 deployments: arbitrum [`0x09fa9d...eb3ee1`](./contracts/arbitrum-42161/0x09fa9d4cb408f437442529d9d9daeed914eb3ee1/); arbitrum `0x0afae9...595fe4`; arbitrum `0x44fac3...7feaa4`; arbitrum `0x68c4a7...3b619b`; arbitrum `0xe8c0d2...f3e3c2` | ⚠️ Unaudited |
| DefiEdgeProxyHelper | periphery | arbitrum | [`0xc4eb9f...09c11f`](./contracts/arbitrum-42161/0xc4eb9fff53581130e65e3b60b31295c52509c11f/) | ⚠️ Unaudited |
| Distributor | operational_periphery | arbitrum | 2 deployments: arbitrum [`0xb31263...ac5a01`](./contracts/arbitrum-42161/0xb312638b4c0d7b49e47057ba1e4febf4f6ac5a01/); arbitrum `0xd4f3dc...47880c` | ⚠️ Unaudited |
| DividendsV2 | unknown | arbitrum | [`0x5422aa...ebd3bb`](./contracts/arbitrum-42161/0x5422aa06a38fd9875fc2501380b40659feebd3bb/) | ⚠️ Unaudited |
| FairAuction | operational_periphery | arbitrum | 14 deployments: arbitrum [`0x06b5c1...883362`](./contracts/arbitrum-42161/0x06b5c17857c32f96daa2f43aee465e962c883362/); arbitrum `0x0ca4fc...f6c20b`; arbitrum `0x149ace...87975b`; arbitrum `0x232243...98bbb8`; arbitrum `0x2eb79e...36ffe1`; arbitrum `0x40bf24...4b47d4`; arbitrum `0x4a867f...4adca3`; arbitrum `0x7079ed...b58b66`; arbitrum `0x9c613a...5d7248`; arbitrum `0xb09a74...f6c88d`; arbitrum `0xb955cb...648a0c`; arbitrum `0xdac17c...09e54c`; arbitrum `0xe0e0b0...bbc1ec`; arbitrum `0xea0817...42cc73` | ⚠️ Unaudited |
| FarmingCenter | unknown | arbitrum | [`0x3eee90...342c46`](./contracts/arbitrum-42161/0x3eee90c983e2728ae6d7880064b0c5b055342c46/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | arbitrum | [`0xaf88d0...8e5831`](./contracts/arbitrum-42161/0xaf88d065e77c8cc2239327c5edb3a432268e5831/) | ⚠️ Unaudited |
| GammaUniProxyHelper | periphery | arbitrum | [`0x851b3f...5a30f1`](./contracts/arbitrum-42161/0x851b3fb3c3178cd3fbaa0cdaae0175efa15a30f1/) | ⚠️ Unaudited |
| Launchpad | unknown | arbitrum | [`0x594fb2...c118a5`](./contracts/arbitrum-42161/0x594fb2ec5c7adf3cb68db1e90ace58e643c118a5/) | ⚠️ Unaudited |
| LiquidityManagerFactory | registry | arbitrum | 2 deployments: arbitrum [`0x979bc6...be2520`](./contracts/arbitrum-42161/0x979bc658871368cef694490b24a79c41ddbe2520/); arbitrum `0xf23e24...edf363` | ⚠️ Unaudited |
| NFTDescriptor | token | arbitrum | 2 deployments: arbitrum [`0x1e12aa...781dae`](./contracts/arbitrum-42161/0x1e12aad4b836a9b5edf17367eb8f1cbe3e781dae/); arbitrum `0xff7da6...fb3a62` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | arbitrum | 8 deployments: arbitrum [`0x00c7f3...4dcd15`](./contracts/arbitrum-42161/0x00c7f3082833e796a5b3e4bd59f6642ff44dcd15/); arbitrum `0x197de4...e8d31b`; arbitrum `0x368435...babbc8`; arbitrum `0x5c8d79...8c5905`; arbitrum `0xa602e7...dce9d8`; arbitrum `0xacdcc3...890db3`; arbitrum `0xe6988b...7a5383`; arbitrum `0xf41599...7020f9` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | token | arbitrum | 6 deployments: arbitrum [`0x1ad8c5...e14abc`](./contracts/arbitrum-42161/0x1ad8c5aed1d18cb7c5f30cd2b486251e87e14abc/); arbitrum `0x2d22aa...7606dc`; arbitrum `0x49f598...32067c`; arbitrum `0x52d2eb...b48325`; arbitrum `0x674d07...e7a7ef`; arbitrum `0x89a13b...b8a68a` | ⚠️ Unaudited |
| ProtocolEarnings | unknown | arbitrum | [`0x6a6383...ed1448`](./contracts/arbitrum-42161/0x6a63830e24f9a2f9c295fb2150107d0390ed1448/) | ⚠️ Unaudited |
| Quoter | periphery | arbitrum | 10 deployments: arbitrum [`0x02102b...1b88ac`](./contracts/arbitrum-42161/0x02102bd5b57c128b19d4d4fa4d8f8192ea1b88ac/); arbitrum `0x0fc730...4fa76e`; arbitrum `0x27d3ce...fefe92`; arbitrum `0x32ab0c...54e73c`; arbitrum `0x6c78f2...bbc0bd`; arbitrum `0x9b7a7c...38c063`; arbitrum `0xaaf703...2eb3ac`; arbitrum `0xc50b12...9fe056`; arbitrum `0xd70dd6...63b955`; arbitrum `0xfe24b2...688f7b` | ⚠️ Unaudited |
| QuoterV2 | periphery | arbitrum | [`0x66d756...5e639b`](./contracts/arbitrum-42161/0x66d756335bff276d73a8ab0853c3d336475e639b/) | ⚠️ Unaudited |
| Refund | unknown | arbitrum | [`0x0f31ce...0e36eb`](./contracts/arbitrum-42161/0x0f31ce35169e64e0783a625a594c1df75d0e36eb/) | ⚠️ Unaudited |
| SwapRouter | adapter | arbitrum | 8 deployments: arbitrum [`0x17585d...640b50`](./contracts/arbitrum-42161/0x17585d045eb322d292e0166a4cd643f793640b50/); arbitrum `0x1f721e...339e18`; arbitrum `0x22535b...18ad98`; arbitrum `0x377b58...93c51d`; arbitrum `0x49c98f...1d951a`; arbitrum `0x4ee153...675f53`; arbitrum `0xa55582...839ef5`; arbitrum `0xad3a43...b64e12` | ⚠️ Unaudited |
| TickLens | periphery | arbitrum | 2 deployments: arbitrum [`0x22cb09...9b8034`](./contracts/arbitrum-42161/0x22cb092d904eb13cdaca0ca5d93093fae19b8034/); arbitrum `0x6e39cc...4bde38` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | arbitrum | 4 deployments: arbitrum [`0x903293...594c13`](./contracts/arbitrum-42161/0x903293c1e922a72a95a69c61ede74073c8594c13/); arbitrum `0xa76021...280b5c`; arbitrum `0xd8676f...0e34ae`; arbitrum `0xfecbac...7e4321` | ⚠️ Unaudited |
| USDX | unknown | arbitrum | [`0xf3527e...a66cef`](./contracts/arbitrum-42161/0xf3527ef8de265eaa3716fb312c12847bfba66cef/) | ⚠️ Unaudited |
| VestingWallet | operational_periphery | arbitrum | 2 deployments: arbitrum [`0x8b4ee9...0cb155`](./contracts/arbitrum-42161/0x8b4ee9a030c50fd02c845a171064f8fca90cb155/); arbitrum `0x953bf6...683aaa` | ⚠️ Unaudited |
| VestingWallet2 | operational_periphery | arbitrum | 2 deployments: arbitrum [`0x5a5a7c...294da3`](./contracts/arbitrum-42161/0x5a5a7c0108cef44549b7782495b1df2ad5294da3/); arbitrum `0x770066...df0f45` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (67)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | arbitrum | `0x08dff9...c2c3fd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x105a04...80598e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x1ac737...74959d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x1cf9cf...e98a14` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x1f054c...46d8ec` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x259ba0...85ea3c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x279fa5...ade413` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x2c09fe...f14ec4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x2f2a41...dcf861` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3046cf...942dbd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x30a4bd...c8e230` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x30cea6...f943b1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3fc3f7...d931af` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x400bb7...81e231` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x4548ab...b04574` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x46306b...4d8820` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x48813f...7caf33` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x4b5348...8c72f4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x5822a4...6bc460` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x586496...3b25f2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x590655...553f34` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x599999...80a9fc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x5e11bb...f326ab` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x5e26ba...35897a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x60a186...79e68b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x610934...0bc050` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x61e69f...55c717` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x65fbb3...9efcb3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x67f9e2...abe545` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x6f2ac9...78f09f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x763b38...fb51b3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x77025d...405aec` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x787c1a...1ada48` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x790b6c...f049a8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7d1b59...963389` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7d8c6b...0d2db4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7dbc6c...3fdde7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x83bb60...c0d3e3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8467f8...06eaa8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x84e5ba...06c9a1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8aa8a6...6184fe` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8c0971...33689b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8cc276...39b16e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x9220d0...8b6245` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x92883a...fd8087` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x955a70...2fedca` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x99f28a...28893a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x9a6627...0a1621` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x9dd655...abe2bb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xaedc4e...2025ef` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb0e01e...4606ae` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb2b2a9...273bd6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb6156f...e25ca2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc12987...73ebcf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc216fc...7624b8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc27d4d...5e5657` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc7585c...c60960` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc96ff2...eb338d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xcf8d07...8e0ffa` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd8f185...800ec7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe4331d...304d36` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf22808...a7a21b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf4c88b...e7dd41` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf53b4b...edd8c1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf8644a...243c33` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xfdd069...2eb659` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xfeecfd...680e33` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://paladinsec.co/projects/camelot) | Paladin | Audit | 2022-11 | stale | Direct | contract_name | 12 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x7788a3...d87d92`](./contracts/arbitrum-42161/0x7788a3538c5fc7f9c7c8a74eac4c898fc8d87d92/) | StakedUSDX | token | $391,936.07 | Verified native implementation with $391,936.07 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x148688...c893a0`](./contracts/arbitrum-42161/0x1486882e02e6a1037da6afc324b2f911f4c893a0/) | AlgebraAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x971ba9...3a5e5a`](./contracts/arbitrum-42161/0x971ba90018c44ac60d5bb850249b3ec02a3a5e5a/) | AlgebraCommunityVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xbf1849...aea3ef`](./contracts/arbitrum-42161/0xbf1849090b659505a0d7a75fead3068020aea3ef/) | AlgebraCustomPoolEntryPoint | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x28901c...05d947`](./contracts/arbitrum-42161/0x28901cc545bf9dc1b381cbd9da8ea94fc005d947/) | AlgebraV2Adapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1cb8ee...1333f6`](./contracts/arbitrum-42161/0x1cb8eedc4dcff2da02bfcfbed2456cf2c41333f6/) | AlgebraVaultFactoryStub | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xdc1321...af34e5`](./contracts/arbitrum-42161/0xdc132116a76683f5355042e1b67819551aaf34e5/) | BondWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x79ab95...b70f9b`](./contracts/arbitrum-42161/0x79ab95b4c112337310ad04d977c5734dd3b70f9b/) | CamelotAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x222f13...687a71`](./contracts/arbitrum-42161/0x222f135d84bb4852d2cbbdd6fcabafd043687a71/) | CamelotBasePluginFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1be46c...268f25`](./contracts/arbitrum-42161/0x1be46c7a40906c19d91d07b3ae69ef5893268f25/) | CamelotExchangeRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x17bcb7...105d5c`](./contracts/arbitrum-42161/0x17bcb7cc86ad107d97511a17e35eee9d15105d5c/) | CamelotYakRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x09fa9d...eb3ee1`](./contracts/arbitrum-42161/0x09fa9d4cb408f437442529d9d9daeed914eb3ee1/) | CampaignFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xb31263...ac5a01`](./contracts/arbitrum-42161/0xb312638b4c0d7b49e47057ba1e4febf4f6ac5a01/) | Distributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5422aa...ebd3bb`](./contracts/arbitrum-42161/0x5422aa06a38fd9875fc2501380b40659feebd3bb/) | DividendsV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x06b5c1...883362`](./contracts/arbitrum-42161/0x06b5c17857c32f96daa2f43aee465e962c883362/) | FairAuction | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3eee90...342c46`](./contracts/arbitrum-42161/0x3eee90c983e2728ae6d7880064b0c5b055342c46/) | FarmingCenter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x851b3f...5a30f1`](./contracts/arbitrum-42161/0x851b3fb3c3178cd3fbaa0cdaae0175efa15a30f1/) | GammaUniProxyHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x594fb2...c118a5`](./contracts/arbitrum-42161/0x594fb2ec5c7adf3cb68db1e90ace58e643c118a5/) | Launchpad | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x979bc6...be2520`](./contracts/arbitrum-42161/0x979bc658871368cef694490b24a79c41ddbe2520/) | LiquidityManagerFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1e12aa...781dae`](./contracts/arbitrum-42161/0x1e12aad4b836a9b5edf17367eb8f1cbe3e781dae/) | NFTDescriptor | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6a6383...ed1448`](./contracts/arbitrum-42161/0x6a63830e24f9a2f9c295fb2150107d0390ed1448/) | ProtocolEarnings | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x02102b...1b88ac`](./contracts/arbitrum-42161/0x02102bd5b57c128b19d4d4fa4d8f8192ea1b88ac/) | Quoter | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x66d756...5e639b`](./contracts/arbitrum-42161/0x66d756335bff276d73a8ab0853c3d336475e639b/) | QuoterV2 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0f31ce...0e36eb`](./contracts/arbitrum-42161/0x0f31ce35169e64e0783a625a594c1df75d0e36eb/) | Refund | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x17585d...640b50`](./contracts/arbitrum-42161/0x17585d045eb322d292e0166a4cd643f793640b50/) | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x22cb09...9b8034`](./contracts/arbitrum-42161/0x22cb092d904eb13cdaca0ca5d93093fae19b8034/) | TickLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xf3527e...a66cef`](./contracts/arbitrum-42161/0xf3527ef8de265eaa3716fb312c12847bfba66cef/) | USDX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8b4ee9...0cb155`](./contracts/arbitrum-42161/0x8b4ee9a030c50fd02c845a171064f8fca90cb155/) | VestingWallet | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5a5a7c...294da3`](./contracts/arbitrum-42161/0x5a5a7c0108cef44549b7782495b1df2ad5294da3/) | VestingWallet2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 81 |
| upstream | 10 |
| standard_library | 3 |
| needs_review | 24 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=12

Fork inheritance lineage and inherited audits are included when available.
