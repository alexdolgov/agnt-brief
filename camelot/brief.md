# Agentic Audit Brief: Camelot

## Project Overview

- Project: Camelot (`camelot`)
- Website: [https://camelot.exchange/](https://camelot.exchange/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:10.032Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-b097
- Chains: arbitrum
- Contract surface: 100 unique implementations (129 raw deployments)
- DeFi Llama TVL: $22,479,494.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 67 project-authored contract(s) across 1 chain(s); 1 ERC4626 vault, 9 ERC20 tokens, 3 ERC721 NFTs; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 9 functional families. Its contracts share 14 common project-authored base contract(s) (multicall, blocktimestamp, peripheryimmutablestate). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 212; live-surface contracts included: 124 (58 live, 66 unknown).
- Excluded by liveness: 88 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 3/36 (8.3%)
- Deployed-live implementations: 37 of 100 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 3/37
- Verified + Unaudited implementations: 34
- Verified by bytecode match: 0
- Unverified implementations: 63
- Unique implementations: 100
- Raw deployments: 129
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-11 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Paladin | Tier 2 | 3 | 8.1% | 2022-11 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CamelotFactory | registry | arbitrum | n/a | [`0x6eccab422d763ac031210895c81787e87b43a652`](./contracts/arbitrum-42161/0x6eccab422d763ac031210895c81787e87b43a652/) | ✅ Audited |
| GrailTokenV2 | token | arbitrum | n/a | [`0x3d9907f9a368ad0a51be60f7da3b97cf940982d8`](./contracts/arbitrum-42161/0x3d9907f9a368ad0a51be60f7da3b97cf940982d8/) | ✅ Audited |
| XGrailToken | token | arbitrum | n/a | [`0x3caae25ee616f2c8e13c74da0813402eae3f496b`](./contracts/arbitrum-42161/0x3caae25ee616f2c8e13c74da0813402eae3f496b/) | ✅ Audited |

### ⚠️ Verified + Unaudited (34)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| aeWETH | token | arbitrum | n/a | [`0x82af49447d8a07e3bd95bd0d56f35241523fbab1`](./contracts/arbitrum-42161/0x82af49447d8a07e3bd95bd0d56f35241523fbab1/) | ⚠️ Unaudited |
| AlgebraAdapter | adapter | arbitrum | n/a | 2 deployments: arbitrum [`0x1486882e02e6a1037da6afc324b2f911f4c893a0`](./contracts/arbitrum-42161/0x1486882e02e6a1037da6afc324b2f911f4c893a0/); arbitrum `0x46fca952fe399b6bafbf55c4b5b1929b6e1780aa` | ⚠️ Unaudited |
| AlgebraCommunityVault | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x971ba90018c44ac60d5bb850249b3ec02a3a5e5a`](./contracts/arbitrum-42161/0x971ba90018c44ac60d5bb850249b3ec02a3a5e5a/); arbitrum `0xe3c3e260071ca29231d930bc31654571c51da69e` | ⚠️ Unaudited |
| AlgebraFactory | registry | arbitrum | n/a | 7 deployments: arbitrum [`0x1a3c9b1d2f0529d97f2afc5136cc23e58f1fd35b`](./contracts/arbitrum-42161/0x1a3c9b1d2f0529d97f2afc5136cc23e58f1fd35b/); arbitrum `0x1e3db3a221bcf6296fef2c493bb44d09018455ca`; arbitrum `0x6b692b588def775a92a6d0f3b6cccc8a4a4e5bb8`; arbitrum `0xbefc4b405041c5833f53412ff997ed2f697a2f37`; arbitrum `0xd3b4c3262b7bc4d0ae522f15f48eef8f6b5d6aea`; arbitrum `0xd490f2f6990c0291597fd1247651b4e0dcf684dd`; arbitrum `0xe907d0b2b830124d64b11e6416ecf61483994ae3` | ⚠️ Unaudited |
| AlgebraStaticQuoter | periphery | arbitrum | n/a | [`0x4efc8a4ceeeeefbb81bfac55a001100b5af39e07`](./contracts/arbitrum-42161/0x4efc8a4ceeeeefbb81bfac55a001100b5af39e07/) | ⚠️ Unaudited |
| AlgebraV2Adapter | adapter | arbitrum | n/a | 3 deployments: arbitrum [`0x28901cc545bf9dc1b381cbd9da8ea94fc005d947`](./contracts/arbitrum-42161/0x28901cc545bf9dc1b381cbd9da8ea94fc005d947/); arbitrum `0x64c0861a141a7f80ac0b3a32312acad3c62947f3`; arbitrum `0xd1599679b891f35f833317b39e822f82acdb989f` | ⚠️ Unaudited |
| AlgebraV2StaticQuoter | periphery | arbitrum | n/a | [`0xe04538e23c58022cb8bce506e7d01e04fac5594f`](./contracts/arbitrum-42161/0xe04538e23c58022cb8bce506e7d01e04fac5594f/) | ⚠️ Unaudited |
| CamelotAdapter | adapter | arbitrum | n/a | 2 deployments: arbitrum [`0x79ab95b4c112337310ad04d977c5734dd3b70f9b`](./contracts/arbitrum-42161/0x79ab95b4c112337310ad04d977c5734dd3b70f9b/); arbitrum `0xabc401a16595077881964683450ad63ab3688dab` | ⚠️ Unaudited |
| CamelotYakRouter | adapter | arbitrum | n/a | 3 deployments: arbitrum [`0x17bcb7cc86ad107d97511a17e35eee9d15105d5c`](./contracts/arbitrum-42161/0x17bcb7cc86ad107d97511a17e35eee9d15105d5c/); arbitrum `0x99d4e80db0c023eff8d25d8155e0dcfb5addec5e`; arbitrum `0xe9f6226f173706a96021d8e11474a216da845152` | ⚠️ Unaudited |
| CampaignFactory | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x09fa9d4cb408f437442529d9d9daeed914eb3ee1`](./contracts/arbitrum-42161/0x09fa9d4cb408f437442529d9d9daeed914eb3ee1/); arbitrum `0x0afae9fa2954d1f850627df688f0bf09bd595fe4`; arbitrum `0x44fac3aceb8836338d0a4902b183d8bb777feaa4` | ⚠️ Unaudited |
| CampaignFactory | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x68c4a79bb793c354614a798b70aff3ae623b619b`](./contracts/arbitrum-42161/0x68c4a79bb793c354614a798b70aff3ae623b619b/); arbitrum `0xe8c0d29c696624c4f628506f90280640e5f3e3c2` | ⚠️ Unaudited |
| Distributor | operational_periphery | arbitrum | n/a | 2 deployments: arbitrum [`0xb312638b4c0d7b49e47057ba1e4febf4f6ac5a01`](./contracts/arbitrum-42161/0xb312638b4c0d7b49e47057ba1e4febf4f6ac5a01/); arbitrum `0xd4f3dce6b616e5283d5c288b287bd8beea47880c` | ⚠️ Unaudited |
| DividendsV2 | unknown | arbitrum | n/a | [`0x5422aa06a38fd9875fc2501380b40659feebd3bb`](./contracts/arbitrum-42161/0x5422aa06a38fd9875fc2501380b40659feebd3bb/) | ⚠️ Unaudited |
| EXCLegacyToken | token | arbitrum | n/a | [`0x83bbc9c4c436bd7a4b4a1c5d42b00caae113c3b5`](./contracts/arbitrum-42161/0x83bbc9c4c436bd7a4b4a1c5d42b00caae113c3b5/) | ⚠️ Unaudited |
| FairAuction | operational_periphery | arbitrum | n/a | 3 deployments: arbitrum [`0x0ca4fc142e3b0a26f34b52faa1a022fc70f6c20b`](./contracts/arbitrum-42161/0x0ca4fc142e3b0a26f34b52faa1a022fc70f6c20b/); arbitrum `0x149ace96c59639df1b83cfe5c574cf9d1b87975b`; arbitrum `0x2eb79edc1533d39d0f7ab3983650eb76ce36ffe1` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | arbitrum | n/a | [`0xaf88d065e77c8cc2239327c5edb3a432268e5831`](./contracts/arbitrum-42161/0xaf88d065e77c8cc2239327c5edb3a432268e5831/) | ⚠️ Unaudited |
| Launchpad | unknown | arbitrum | n/a | [`0x594fb2ec5c7adf3cb68db1e90ace58e643c118a5`](./contracts/arbitrum-42161/0x594fb2ec5c7adf3cb68db1e90ace58e643c118a5/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | arbitrum | n/a | [`0x00c7f3082833e796a5b3e4bd59f6642ff44dcd15`](./contracts/arbitrum-42161/0x00c7f3082833e796a5b3e4bd59f6642ff44dcd15/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | arbitrum | n/a | 3 deployments: arbitrum [`0x368435a76b1a855d054d3cdf4c20f5e0b2babbc8`](./contracts/arbitrum-42161/0x368435a76b1a855d054d3cdf4c20f5e0b2babbc8/); arbitrum `0xa602e7195fcc9364210181dffa33482b5adce9d8`; arbitrum `0xacdcc3c6a2339d08e0ac9f694e4de7c52f890db3` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x1ad8c5aed1d18cb7c5f30cd2b486251e87e14abc`](./contracts/arbitrum-42161/0x1ad8c5aed1d18cb7c5f30cd2b486251e87e14abc/); arbitrum `0x52d2ebe1fe306c90124d159b59392b6bb1b48325` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x2d22aa1c50433eb018077e4bfc52fadc437606dc`](./contracts/arbitrum-42161/0x2d22aa1c50433eb018077e4bfc52fadc437606dc/); arbitrum `0x89a13bb0c2315670aadb07b7a0c7067333b8a68a` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x49f5985a122028093c91bb63084eb29a7632067c`](./contracts/arbitrum-42161/0x49f5985a122028093c91bb63084eb29a7632067c/); arbitrum `0x674d0794c32f061eeef5ee981fa3b0ee3be7a7ef` | ⚠️ Unaudited |
| ProtocolEarnings | unknown | arbitrum | n/a | [`0x6a63830e24f9a2f9c295fb2150107d0390ed1448`](./contracts/arbitrum-42161/0x6a63830e24f9a2f9c295fb2150107d0390ed1448/) | ⚠️ Unaudited |
| Quoter | periphery | arbitrum | n/a | 2 deployments: arbitrum [`0x0fc73040b26e9bc8514fa028d998e73a254fa76e`](./contracts/arbitrum-42161/0x0fc73040b26e9bc8514fa028d998e73a254fa76e/); arbitrum `0xfe24b2cdff01b644995bc248ba8497467d688f7b` | ⚠️ Unaudited |
| StakedUSDX | token | arbitrum | n/a | [`0x7788a3538c5fc7f9c7c8a74eac4c898fc8d87d92`](./contracts/arbitrum-42161/0x7788a3538c5fc7f9c7c8a74eac4c898fc8d87d92/) | ⚠️ Unaudited |
| SwapRouter | adapter | arbitrum | n/a | [`0x1f721e2e82f6676fce4ea07a5958cf098d339e18`](./contracts/arbitrum-42161/0x1f721e2e82f6676fce4ea07a5958cf098d339e18/) | ⚠️ Unaudited |
| SwapRouter | adapter | arbitrum | n/a | 2 deployments: arbitrum [`0x4ee15342d6deb297c3a2aa7cffd451f788675f53`](./contracts/arbitrum-42161/0x4ee15342d6deb297c3a2aa7cffd451f788675f53/); arbitrum `0xa555826c9a26e13238f657db06e0a02431839ef5` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x5822a45b05d08028baa3d19626870076d26bc460`](./contracts/arbitrum-42161/0x5822a45b05d08028baa3d19626870076d26bc460/); arbitrum `0xd8676fbdfa5b56bb2298d452c9768f51e80e34ae` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0x903293c1e922a72a95a69c61ede74073c8594c13`](./contracts/arbitrum-42161/0x903293c1e922a72a95a69c61ede74073c8594c13/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xa760212bc60a77b24ba52e889b0dc9d99e280b5c`](./contracts/arbitrum-42161/0xa760212bc60a77b24ba52e889b0dc9d99e280b5c/); arbitrum `0xf4c88bc4585f9de3396774c3f0c8b559a7e7dd41` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xf53b4b36d9b24e5b0086fe7c4532a3c5ddedd8c1`](./contracts/arbitrum-42161/0xf53b4b36d9b24e5b0086fe7c4532a3c5ddedd8c1/); arbitrum `0xfecbac90ba3478c24f82c5c142a222e75b7e4321` | ⚠️ Unaudited |
| USDX | unknown | arbitrum | n/a | [`0xf3527ef8de265eaa3716fb312c12847bfba66cef`](./contracts/arbitrum-42161/0xf3527ef8de265eaa3716fb312c12847bfba66cef/) | ⚠️ Unaudited |
| USDXRedeem | unknown | arbitrum | n/a | [`0x0eaf6fe1aed8631114d1de78317982ce73d82f7b`](./contracts/arbitrum-42161/0x0eaf6fe1aed8631114d1de78317982ce73d82f7b/) | ⚠️ Unaudited |
| USDXSales | unknown | arbitrum | n/a | [`0xb45c42fbf8af8df5a1fa080a351e9b2f8e0a56d1`](./contracts/arbitrum-42161/0xb45c42fbf8af8df5a1fa080a351e9b2f8e0a56d1/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (63)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | arbitrum | n/a | `0x08dff9bb0c9cf33d75a7b01cc19a9979ddc2c3fd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x105a04979f42a07d99625cee58de42ec3980598e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1ac737bad04a643bf3205a6764b964c4a574959d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1cf9cf377252802780c3c4d61d53432fc4e98a14` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1f054ce3254f9e3edd987d897223e0184646d8ec` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x259ba0c58bb231c6fe5b71dd928b9d297685ea3c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x279fa58e8b2d52683c0a65733e9825102dade413` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2c09fea2abb20158dc7c66ee84f5484ccff14ec4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2f2a410ccaeb4e877abe5a6253f42062bcdcf861` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3046cf2eef9840aed537598042db3d911b942dbd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x30a4bd5b1a9e9c0d80e9a45ef486bc1f1bc8e230` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x30cea63a6b2653c1a50d284a0cc079938ef943b1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3fc3f74dbf4c2e9f583d2855a868cc5af2d931af` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x400bb79e9651e683300fcb312fc074940381e231` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4548ab9f211d10e511f37f3bcab0fe96e8b04574` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x46306b241773e5e8fdfbb5455fcb0482c54d8820` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x48813f00c532d995e8847cf8491fda41d87caf33` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4b53488a14b2eef51df8b8b31e6add2f378c72f4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5864962ae89b700f44e0552930da9455da3b25f2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5906554049fa61b474006d77257ee5cf55553f34` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5999991f4f85dcaac14689d5bb2909627380a9fc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5e11bb1a4b4b00ad195f04e6c2987ab643f326ab` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5e26ba756e1e39429c8b2620263c20295535897a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x60a186019f81bfd04afc16c9c01804a04e79e68b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x610934febc44be225adecd888eaf7dff3b0bc050` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x61e69f55d9cccca940126abe2ae09c2b4d55c717` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x65fbb381e3f598742ffb0390e8d50484b79efcb3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x67f9e20862cb0e12f09396ac4a07584114abe545` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6f2ac974397d0f2ea43186402668a88c8378f09f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x763b382ba5fbbc697f58b327c2bac05fa1fb51b3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x77025d4c9b6cfeec9f224c592dafdfc64f405aec` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x787c1a09c6a9a58aa3ee791e54ea9c59f51ada48` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x790b6cf4429b4407f5227feaa31d798829f049a8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7d1b59e7df0244b66a966d250627193396963389` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7d8c6b58ba2d40fc6e34c25f9a488067fe0d2db4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7dbc6ca53e4f717425fbb7c0ddabc64fc63fdde7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x83bb6048d55ea0a84795a939531fdc1314c0d3e3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x84e5ba51c158c9f70684f93b6cf9d6aae506c9a1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8aa8a6f0138880e687289941da0738548f6184fe` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8c0971be6a98dcc61958ffdec4259e5ee833689b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8cc27635c3a075d21b332f43440bd177b439b16e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9220d07c1e8b5c170fa6011db8a729e9898b6245` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x92883acd807c0cc086e72f9bf7c0468ff2fd8087` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x955a7043b0c904170cc16b70afb878dbac2fedca` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x99f28a1ac137f1a484d137567040b20a2b28893a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9a662758d72f004d2b49c1b4a518b3bc0f0a1621` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9dd65541b8cdb69b571cb1f63f72dcca4cabe2bb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xaedc4e73cddd8e3af091bba0a959cbf36a2025ef` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb0e01e985c5f0da8a07bbaecff00272a964606ae` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb2b2a946be40054be345610878f8da3076273bd6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb6156fc9a0ea2068a6c6fae6e6713517e5e25ca2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc129870bafcc9f6f021de94c8abbf0ecb873ebcf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc216fcdeb961eef95657cb45dee20e379c7624b8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc27d4dbf4d86c90f63828d2cd2582be67e5e5657` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc7585c2528f7785b848f6d4800d26bd353c60960` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc96ff2c8503f1658f3b2f1d3884d548968eb338d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcf8d0723e69c6215523253a190eb9bc3f68e0ffa` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd8f185769b6e2918b759e83f7ec268c882800ec7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe4331da0e97627a04638506770e5d48f6b304d36` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf22808b31854b534d4a52fc64ea6003a3ca7a21b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf8644abdb47d048e5572836db30d95cf63243c33` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfdd06964f8b48725be238524f8e4ea6da42eb659` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfeecfdf5ea3061c82e6c502a9320c88f26680e33` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [paladinsec.co/projects/camelot](https://paladinsec.co/projects/camelot) | Paladin | Audit | 2022-11 | stale | Direct | contract_name | 3 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x82af49447d8a07e3bd95bd0d56f35241523fbab1`](./contracts/arbitrum-42161/0x82af49447d8a07e3bd95bd0d56f35241523fbab1/) | aeWETH | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1486882e02e6a1037da6afc324b2f911f4c893a0`](./contracts/arbitrum-42161/0x1486882e02e6a1037da6afc324b2f911f4c893a0/) | AlgebraAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x971ba90018c44ac60d5bb850249b3ec02a3a5e5a`](./contracts/arbitrum-42161/0x971ba90018c44ac60d5bb850249b3ec02a3a5e5a/) | AlgebraCommunityVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1a3c9b1d2f0529d97f2afc5136cc23e58f1fd35b`](./contracts/arbitrum-42161/0x1a3c9b1d2f0529d97f2afc5136cc23e58f1fd35b/) | AlgebraFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4efc8a4ceeeeefbb81bfac55a001100b5af39e07`](./contracts/arbitrum-42161/0x4efc8a4ceeeeefbb81bfac55a001100b5af39e07/) | AlgebraStaticQuoter | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x28901cc545bf9dc1b381cbd9da8ea94fc005d947`](./contracts/arbitrum-42161/0x28901cc545bf9dc1b381cbd9da8ea94fc005d947/) | AlgebraV2Adapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xe04538e23c58022cb8bce506e7d01e04fac5594f`](./contracts/arbitrum-42161/0xe04538e23c58022cb8bce506e7d01e04fac5594f/) | AlgebraV2StaticQuoter | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x79ab95b4c112337310ad04d977c5734dd3b70f9b`](./contracts/arbitrum-42161/0x79ab95b4c112337310ad04d977c5734dd3b70f9b/) | CamelotAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x17bcb7cc86ad107d97511a17e35eee9d15105d5c`](./contracts/arbitrum-42161/0x17bcb7cc86ad107d97511a17e35eee9d15105d5c/) | CamelotYakRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x09fa9d4cb408f437442529d9d9daeed914eb3ee1`](./contracts/arbitrum-42161/0x09fa9d4cb408f437442529d9d9daeed914eb3ee1/) | CampaignFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x68c4a79bb793c354614a798b70aff3ae623b619b`](./contracts/arbitrum-42161/0x68c4a79bb793c354614a798b70aff3ae623b619b/) | CampaignFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xb312638b4c0d7b49e47057ba1e4febf4f6ac5a01`](./contracts/arbitrum-42161/0xb312638b4c0d7b49e47057ba1e4febf4f6ac5a01/) | Distributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5422aa06a38fd9875fc2501380b40659feebd3bb`](./contracts/arbitrum-42161/0x5422aa06a38fd9875fc2501380b40659feebd3bb/) | DividendsV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x83bbc9c4c436bd7a4b4a1c5d42b00caae113c3b5`](./contracts/arbitrum-42161/0x83bbc9c4c436bd7a4b4a1c5d42b00caae113c3b5/) | EXCLegacyToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0ca4fc142e3b0a26f34b52faa1a022fc70f6c20b`](./contracts/arbitrum-42161/0x0ca4fc142e3b0a26f34b52faa1a022fc70f6c20b/) | FairAuction | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xaf88d065e77c8cc2239327c5edb3a432268e5831`](./contracts/arbitrum-42161/0xaf88d065e77c8cc2239327c5edb3a432268e5831/) | FiatTokenV2_2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x594fb2ec5c7adf3cb68db1e90ace58e643c118a5`](./contracts/arbitrum-42161/0x594fb2ec5c7adf3cb68db1e90ace58e643c118a5/) | Launchpad | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x00c7f3082833e796a5b3e4bd59f6642ff44dcd15`](./contracts/arbitrum-42161/0x00c7f3082833e796a5b3e4bd59f6642ff44dcd15/) | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x368435a76b1a855d054d3cdf4c20f5e0b2babbc8`](./contracts/arbitrum-42161/0x368435a76b1a855d054d3cdf4c20f5e0b2babbc8/) | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1ad8c5aed1d18cb7c5f30cd2b486251e87e14abc`](./contracts/arbitrum-42161/0x1ad8c5aed1d18cb7c5f30cd2b486251e87e14abc/) | NonfungibleTokenPositionDescriptor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2d22aa1c50433eb018077e4bfc52fadc437606dc`](./contracts/arbitrum-42161/0x2d22aa1c50433eb018077e4bfc52fadc437606dc/) | NonfungibleTokenPositionDescriptor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x49f5985a122028093c91bb63084eb29a7632067c`](./contracts/arbitrum-42161/0x49f5985a122028093c91bb63084eb29a7632067c/) | NonfungibleTokenPositionDescriptor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6a63830e24f9a2f9c295fb2150107d0390ed1448`](./contracts/arbitrum-42161/0x6a63830e24f9a2f9c295fb2150107d0390ed1448/) | ProtocolEarnings | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0fc73040b26e9bc8514fa028d998e73a254fa76e`](./contracts/arbitrum-42161/0x0fc73040b26e9bc8514fa028d998e73a254fa76e/) | Quoter | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x7788a3538c5fc7f9c7c8a74eac4c898fc8d87d92`](./contracts/arbitrum-42161/0x7788a3538c5fc7f9c7c8a74eac4c898fc8d87d92/) | StakedUSDX | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1f721e2e82f6676fce4ea07a5958cf098d339e18`](./contracts/arbitrum-42161/0x1f721e2e82f6676fce4ea07a5958cf098d339e18/) | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4ee15342d6deb297c3a2aa7cffd451f788675f53`](./contracts/arbitrum-42161/0x4ee15342d6deb297c3a2aa7cffd451f788675f53/) | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xf3527ef8de265eaa3716fb312c12847bfba66cef`](./contracts/arbitrum-42161/0xf3527ef8de265eaa3716fb312c12847bfba66cef/) | USDX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0eaf6fe1aed8631114d1de78317982ce73d82f7b`](./contracts/arbitrum-42161/0x0eaf6fe1aed8631114d1de78317982ce73d82f7b/) | USDXRedeem | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xb45c42fbf8af8df5a1fa080a351e9b2f8e0a56d1`](./contracts/arbitrum-42161/0xb45c42fbf8af8df5a1fa080a351e9b2f8e0a56d1/) | USDXSales | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 33 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 65 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=3

Fork inheritance lineage and inherited audits are included when available.
