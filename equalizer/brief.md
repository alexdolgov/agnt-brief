# Agentic Audit Brief: Equalizer

⚠️ Lifecycle status: DECLINING - TVL changed 4.6% over 90 days

## Project Overview

- Project: Equalizer (`equalizer`)
- Website: [https://equalizer.exchange/](https://equalizer.exchange/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-10T20:59:02.256Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: base, fantom, sonic
- Contract surface: 292 unique implementations (506 raw deployments)
- DeFi Llama TVL: $1,076,070.00
- On-chain TVL (included contracts): $374,839.04
- TVL by chain: Sonic $374,839.04

## Project Description

Equalizer is a decentralized exchange/AMM operating across Sonic, Base, and Fantom. It supports stable and volatile liquidity pools, vote-escrowed EQUAL/ve(3,3) incentive mechanics, liquidity incentives, bribes and fee distribution, and concentrated-liquidity deployments where supported by the deployed contract surface.

### Architecture

The THICK and 2THICK families provide the AMM layer, while the Scale and Deployed Contract Addresses families implement the ve(3,3) tokenomics. The EQUAL token and VotingEscrow from the ve(3,3) families govern emissions directed to liquidity pools created by the PairFactory, with routers bridging user swaps across both layers.

## Audit Coverage Summary

- Verified implementations audited: 0/52 (0.0%)
- Verified + Unaudited implementations: 50
- Verified by bytecode match: 2
- Unverified implementations: 240
- Unique implementations: 292
- Raw deployments: 506
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $374,839.04
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $374,839.04 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (50)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ElitenessERC20 | token | base | 17 deployments: sonic `0x31b59f...afc109`; sonic `0x5e9d25...d11c94`; sonic `0x86112b...e8da63`; sonic `0x88dd90...218c34`; sonic `0xcc835d...2b8fca`; sonic `0xd4aa38...592e22`; sonic `0xd600ec...eaa134`; sonic `0xd8a6f9...3028db`; sonic `0xdac174...951694`; sonic `0xdc2de2...d1a88b`; base [`0x17b9b0...fe24eb`](./contracts/base-8453/0x17b9b0d1d64a26e9380289600231f18e37fe24eb/); base `0x223bfa...5838d7`; base `0x248bb3...ab7c61`; base `0x49d19c...173ac7`; base `0x549a36...da7d7e`; base `0x981b34...1d065b`; base `0xf704d9...d6f754` | ⚠️ Unaudited |
| impermaxBorrowableERC4626Wrapper | core_logic | sonic | 2 deployments: sonic [`0xc7d318...00d083`](./contracts/sonic-146/0xc7d31877e3b1d55ff48a6e3dcfa846fa3e00d083/); sonic `0xffa942...3dccf0` | ⚠️ Unaudited |
| BeaconProxyFactory | registry | sonic | 3 deployments: sonic [`0x0d4e88...212967`](./contracts/sonic-146/0x0d4e88ea618bb5b4bc7f143bd16e4b5640212967/); sonic `0x15864c...b01dfc`; sonic `0x769e38...c6ccdd` | ⚠️ Unaudited |
| BribeFactory | operational_periphery | sonic | 6 deployments: sonic [`0x0f0c34...067160`](./contracts/sonic-146/0x0f0c346dff7ea5d612c67dc3eb06f6166a067160/); sonic `0x3dd53e...cefc2e`; sonic `0xa07662...5de5c4`; sonic `0xded257...6d456e`; sonic `0xfeffd4...d9f60f`; base `0xcb418f...30ae18` | ⚠️ Unaudited |
| Burner | unknown | sonic | [`0xe79ea8...f75f51`](./contracts/sonic-146/0xe79ea8606577fc1a846013e23ff2532919f75f51/) | ⚠️ Unaudited |
| elitenessERC4626 | unknown | sonic | 2 deployments: sonic [`0x8de568...ba1e22`](./contracts/sonic-146/0x8de568691a1a6356b46418fdc12e1694a1ba1e22/); sonic `0xac4bb9...6c8877` | ⚠️ Unaudited |
| ElitenessFarmland | unknown | sonic | 6 deployments: sonic [`0x11cfb3...d75240`](./contracts/sonic-146/0x11cfb329caaca6d7da69734d10c7ec70afd75240/); sonic `0x21c99e...90e006`; sonic `0x381a53...81073e`; sonic `0xd58273...21faa0`; sonic `0xde24d6...966ec7`; sonic `0xfaa72e...b87f40` | ⚠️ Unaudited |
| eliteRingsManager | governance | sonic | 11 deployments: sonic [`0x22cfb3...68893f`](./contracts/sonic-146/0x22cfb3161076a2bf472627127271747d2968893f/); sonic `0x52ce45...fff2a6`; sonic `0x54ec1e...f1a397`; sonic `0x5af02b...d6f0ff`; sonic `0x5f3608...18141a`; sonic `0x6164b6...e9e950`; sonic `0xa5fea6...e190eb`; sonic `0xad27df...3ba57e`; sonic `0xad605d...8d0906`; sonic `0xae1a80...ab8735`; sonic `0xdabb71...8b8773` | ⚠️ Unaudited |
| eLOCK | unknown | sonic | 9 deployments: sonic [`0x18f8ad...25b2db`](./contracts/sonic-146/0x18f8ad653867fc53b4d75bda1b610a5f3325b2db/); sonic `0x23bf56...7ed48f`; sonic `0x5a94c9...1fbe9f`; sonic `0x61bd43...d7f53b`; sonic `0x681f98...cfdc5b`; sonic `0x8f7df1...e59af5`; sonic `0xa25e8e...d6ce7e`; sonic `0xa7678e...1e1abb`; base `0xb212f3...ab5442` | ⚠️ Unaudited |
| eLOCKS | unknown | sonic | 6 deployments: sonic [`0x26d70b...7e35da`](./contracts/sonic-146/0x26d70b26df8619fd3eeec07e22873b9f617e35da/); sonic `0x3518b5...ad89eb`; sonic `0x3e2866...6f308e`; sonic `0x7f7fc8...fffe99`; sonic `0x8ff927...51a430`; base `0xa9a3e3...0d6a6a` | ⚠️ Unaudited |
| ElToken | token | base | 4 deployments: base [`0x1613ab...f58bef`](./contracts/base-8453/0x1613ab1a7cbd35ce942beb6ae857444d78f58bef/); base `0x5301bc...1ffe5c`; base `0x74ebd0...fc3502`; base `0x7e55f9...6c8f62` | ⚠️ Unaudited |
| elTokenZap | adapter | sonic | 4 deployments: sonic [`0x7f142a...d14134`](./contracts/sonic-146/0x7f142a18f1b476809c4994c63811fef4afd14134/); sonic `0xba65aa...d10692`; sonic `0xcc4bae...5ae56c`; sonic `0xe339f4...265055` | ⚠️ Unaudited |
| Equal | unknown | sonic | 13 deployments: sonic [`0x0dd7c0...51fe2c`](./contracts/sonic-146/0x0dd7c089612fcea9a61e30c34983a0934751fe2c/); sonic `0x16641a...0b26c8`; sonic `0x21c785...8b3383`; sonic `0x591e02...11dac4`; sonic `0x5babd5...f52b63`; sonic `0xa821d1...20b5fd`; sonic `0xb934de...fe602c`; sonic `0xcfc8d2...c64f15`; sonic `0xddf26b...0d5f19`; sonic `0xefbf87...f330f2`; sonic `0xfa6d96...dbe89b`; base `0x54016a...d9c32c`; base `0xdf4869...1be136` | ⚠️ Unaudited |
| Equalens_supplyStats | periphery | sonic | 3 deployments: sonic [`0x1b62eb...4b2f89`](./contracts/sonic-146/0x1b62eb66389456187576907b2fce1fe2274b2f89/); sonic `0x6ce928...fde033`; sonic `0xd1cc94...2f13ae` | ⚠️ Unaudited |
| EqualizerLibrary | unknown | base | 3 deployments: base [`0x10b1df...e47d10`](./contracts/base-8453/0x10b1df11a6834ac8afe6efa654fc8c8396e47d10/); base `0x3ba64e...56a481`; base `0x75a1d7...053859` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | sonic | [`0x83291f...3ac4d4`](./contracts/sonic-146/0x83291ffc4831844dbcb5cd31fd8aab39e93ac4d4/) | ⚠️ Unaudited |
| fBOMB | unknown | sonic | 2 deployments: sonic [`0x807c19...08542d`](./contracts/sonic-146/0x807c19badabc848336fe0379bd659e4e4608542d/); sonic `0xedf8b6...c284cb` | ⚠️ Unaudited |
| FeeSynthesizer | unknown | base | 8 deployments: sonic `0x502321...56f04c`; sonic `0x9df999...26c317`; sonic `0xb5aed2...644127`; base [`0x11b3dc...a1218e`](./contracts/base-8453/0x11b3dc196ce5195e0ab82052cb9dfd468da1218e/); base `0x4031fc...4f4cc8`; base `0x8ad889...c78f13`; base `0x9bf40a...83bace`; base `0xbd52ef...fa11d1` | ⚠️ Unaudited |
| FeeTierManager_2Thick | governance | sonic | [`0x5126cb...77dc30`](./contracts/sonic-146/0x5126cbc2597681cdc7c648dd74b19fb12f77dc30/) | ⚠️ Unaudited |
| GaugeFactory | operational_periphery | sonic | 6 deployments: sonic [`0x1c0f3c...6e37b9`](./contracts/sonic-146/0x1c0f3c36c68cf8e12e0abe83f03062bc3d6e37b9/); base `0x7b7faf...8ebd27`; base `0x999740...91885f`; base `0xa4d2b9...8b0c85`; base `0xb136b4...db13d6`; base `0xcc835d...2b8fca` | ⚠️ Unaudited |
| LocklessReceiptMinter | unknown | sonic | 2 deployments: sonic [`0x0d571c...445ca2`](./contracts/sonic-146/0x0d571c1ac1e1d806256d639eef65a017b8445ca2/); sonic `0x8b2d8e...445f6e` | ⚠️ Unaudited |
| Minter | operational_periphery | sonic | 8 deployments: sonic [`0x078c68...dc8ecb`](./contracts/sonic-146/0x078c68189c788f2e1df314276fd5492a32dc8ecb/); sonic `0x1c065b...d303fa`; sonic `0x3fdd8a...68de1e`; sonic `0x7697cc...11147b`; sonic `0xb87119...86322a`; base `0x41c4d6...89a7e4`; base `0x44621c...005685`; base `0xa1b88e...ab54b4` | ⚠️ Unaudited |
| MultiNotify | unknown | sonic | 2 deployments: sonic [`0x990d2c...7fab3b`](./contracts/sonic-146/0x990d2cd2b095fd57d532cf12d9f58dbe3e7fab3b/); base `0xf7d8c4...07d792` | ⚠️ Unaudited |
| multiNotifyEqualToEltokenGauge | operational_periphery | sonic | 10 deployments: sonic [`0x1244a7...b9c92c`](./contracts/sonic-146/0x1244a7a6ee179bbbd332f6f6673259e569b9c92c/); sonic `0x4e552d...ec2463`; sonic `0x608469...baa077`; sonic `0x79f90d...236f49`; sonic `0x8a9690...d83e9a`; sonic `0xac4dbd...19e075`; sonic `0xb959fa...ec8c8b`; sonic `0xe377f2...7cf89c`; sonic `0xfb3e3d...7be6bc`; sonic `0xff1329...62856e` | ⚠️ Unaudited |
| NFP_Staker | core_logic | sonic | 8 deployments: sonic [`0x00a76d...df1306`](./contracts/sonic-146/0x00a76d63cf6a514f1f9038a5afd7fb5b29df1306/); sonic `0x8273ae...780af1`; sonic `0x9a1874...3b8209`; sonic `0xafe7ac...103ad8`; sonic `0xcfa61d...13dca2`; sonic `0xd7a6f1...35c56c`; sonic `0xdc5847...5ee35f`; sonic `0xdf8057...828c09` | ⚠️ Unaudited |
| NFTDescriptor | token | base | [`0x97a7b2...d85073`](./contracts/base-8453/0x97a7b2f95fda7181da16aec3072cd55a58d85073/) | ⚠️ Unaudited |
| NonfungiblePositionManager | operational_periphery | base | 4 deployments: sonic `0x79c26d...516de5`; sonic `0xc90526...23fa0b`; base [`0x2b5229...6d7c2f`](./contracts/base-8453/0x2b52294425a9a229322228de659ede9d146d7c2f/); base `0x79c26d...516de5` | ⚠️ Unaudited |
| PairFactory | registry | sonic | 10 deployments: sonic [`0x312e1f...00572d`](./contracts/sonic-146/0x312e1fd8f3281b8b476030ed1b058f62d800572d/); sonic `0xb6a21a...52f637`; sonic `0xcdc292...6bf6a0`; sonic `0xddd984...528fcc`; sonic `0xfcfa93...4fdf2d`; base `0x39cc81...b1d91c`; base `0x653ce1...ad3414`; base `0xc295f6...197250`; base `0xd7627e...b222e1`; base `0xed8db6...b5ec04` | ⚠️ Unaudited |
| PriceGuru | operational_periphery | base | [`0x02c32e...d98666`](./contracts/base-8453/0x02c32e0a34ab6fa5825565254f79c8c690d98666/) | ⚠️ Unaudited |
| ProxyAdmin4 | governance | sonic | [`0x8eb10e...ebfa10`](./contracts/sonic-146/0x8eb10eb24d258f832f0d6603544b7ab794ebfa10/) | ⚠️ Unaudited |
| QuoterV2 | periphery | sonic | 4 deployments: sonic [`0xc701e9...8db678`](./contracts/sonic-146/0xc701e92db1ef14ab64f66f18536b1e07678db678/); sonic `0xd3c938...366142`; base [`0xc701e9...8db678`](./contracts/base-8453/0xc701e92db1ef14ab64f66f18536b1e07678db678/); base `0xf5b718...beff98` | ⚠️ Unaudited |
| Router02 | adapter | sonic | [`0x7635cd...d27e4b`](./contracts/sonic-146/0x7635cd591cfe965be8bec60da6ea69b6dcd27e4b/) | ⚠️ Unaudited |
| Router03 | adapter | sonic | 6 deployments: sonic [`0x0929b8...d284de`](./contracts/sonic-146/0x0929b85d1bf640e5af61ed97a30ace3058d284de/); sonic `0x571b19...c0d431`; sonic `0x608776...f0189e`; sonic `0xb7861f...a9b268`; sonic `0xc477f0...7cb1e6`; sonic `0xcc6169...d23fad` | ⚠️ Unaudited |
| sAMM_Oracle | operational_periphery | sonic | [`0x0d809f...789048`](./contracts/sonic-146/0x0d809fc015810ce75aa1c939c28e1355ad789048/) | ⚠️ Unaudited |
| ScaleRouter | adapter | base | 2 deployments: base [`0x2f87bf...2be6fa`](./contracts/base-8453/0x2f87bf58d5a9b2efade55cdbd46153a0902be6fa/); base `0x5e9d25...d11c94` | ⚠️ Unaudited |
| SolidlyExtendedRouter03 | adapter | base | 3 deployments: base [`0x641135...66e9bb`](./contracts/base-8453/0x6411350def83147130b26c1e90dc7afbbb66e9bb/); base `0x750281...9e422f`; base `0xa78618...97aaab` | ⚠️ Unaudited |
| solidlyRouterCalcs | adapter | sonic | 2 deployments: sonic [`0x27a2bd...157a80`](./contracts/sonic-146/0x27a2bd2070675ac6b40ecc6ed2ef5bcc25157a80/); sonic `0x442d31...b8db95` | ⚠️ Unaudited |
| SSR2Thick_Factory | registry | sonic | 2 deployments: sonic [`0x25374d...7a1af9`](./contracts/sonic-146/0x25374db31147061cac658af137c4231ac77a1af9/); sonic `0x6ea84b...32525c` | ⚠️ Unaudited |
| SuperVoter | unknown | base | 4 deployments: sonic `0x107240...a0d008`; sonic `0x2792f2...fa62cd`; sonic `0xb6dfc3...fad93f`; base [`0x022566...3c74a0`](./contracts/base-8453/0x0225664e04b25a1eb71a7ad0b93c9aa6ec3c74a0/) | ⚠️ Unaudited |
| SwapRouter02 | adapter | sonic | 3 deployments: sonic [`0x1af947...608bcc`](./contracts/sonic-146/0x1af947b517cb63b1442ced9af215c34efa608bcc/); sonic `0xe4ba08...7500df`; base `0x1f7a12...36d0e8` | ⚠️ Unaudited |
| ThickALMGaugeEquivalentFarmland | operational_periphery | base | 24 deployments: sonic `0x2cb66d...f1d65a`; sonic `0xd057ef...d965ff`; sonic `0xf3e31b...a8bda9`; base [`0x02c88d...3ad6df`](./contracts/base-8453/0x02c88d4067988a0981ffd0bd0c34a6a2ed3ad6df/); base `0x159aef...919ef2`; base `0x17a0d9...112baa`; base `0x1dcdf0...25890c`; base `0x2735a7...f53191`; base `0x338b18...08b5f3`; base `0x3c93f6...f2035a`; base `0x3f4d38...16a13e`; base `0x427141...0eecb6`; base `0x56c90e...7916c2`; base `0x5b5027...f9de7b`; base `0x66a5df...45dcc6`; base `0x8d6afe...0f1733`; base `0x98adfe...44fd1e`; base `0xa7672a...c6ae8e`; base `0xb14862...56e8d3`; base `0xc8eaae...bf6a72`; base `0xdeba7a...7d6327`; base `0xf1580a...444354`; base `0xf26927...e2bf1d`; base `0xfcc85a...b69068` | ⚠️ Unaudited |
| TickLens | periphery | base | [`0xb80a72...e0d757`](./contracts/base-8453/0xb80a72281c76464cc0e1fbf2431a897393e0d757/) | ⚠️ Unaudited |
| TvlGuru_ThickALM | unknown | base | [`0x7b54df...e46f75`](./contracts/base-8453/0x7b54dfec0d532808d23cc24e0035d74557e46f75/) | ⚠️ Unaudited |
| TvlGuru_ThickThickALM | unknown | base | [`0x9a9499...fa59c9`](./contracts/base-8453/0x9a949959057fbbdf1be20b489ceea51994fa59c9/) | ⚠️ Unaudited |
| TvlGuru_v21 | unknown | sonic | [`0x1ff98b...074f7e`](./contracts/sonic-146/0x1ff98b4236c11f3fd2716ff81d5c509dc1074f7e/) | ⚠️ Unaudited |
| UniswapV3Factory | registry | sonic | 4 deployments: sonic [`0x7ca1dc...8f1c40`](./contracts/sonic-146/0x7ca1dccfb4f49564b8f13e18a67747fd428f1c40/); sonic `0xe6da85...bb9d24`; base [`0x7ca1dc...8f1c40`](./contracts/base-8453/0x7ca1dccfb4f49564b8f13e18a67747fd428f1c40/); base `0xe6da85...bb9d24` | ⚠️ Unaudited |
| UpgradeableBeacon | registry | sonic | 2 deployments: sonic [`0x5ebd65...047437`](./contracts/sonic-146/0x5ebd6536a0f8dc9b2aad4a8e750eafff60047437/); sonic `0xb654fa...9beead` | ⚠️ Unaudited |
| Voter | unknown | base | 16 deployments: sonic `0x064e1c...d5b3ae`; sonic `0x16448c...ffe52c`; sonic `0x17fa9d...cb10b4`; sonic `0x240e58...87db9f`; sonic `0x5bce72...663bc3`; sonic `0x5cb8cb...4fc109`; sonic `0xc72d0d...c6858b`; sonic `0xc9a2e4...f26ec3`; sonic `0xe164f4...e1fb47`; base [`0x050b42...d4e842`](./contracts/base-8453/0x050b424b074ae99a8c4fd176aad21fafa8d4e842/); base `0x18c7ad...68845a`; base `0x423278...a325a3`; base `0x46abb8...592687`; base `0xa8bc72...849aa2`; base `0xf79518...5b9d31`; base `0xf88005...1cff21` | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | sonic | 12 deployments: sonic [`0x0a4531...9fbbfd`](./contracts/sonic-146/0x0a4531ded5c360c468b560ffdbce6058e19fbbfd/); sonic `0x304511...f7235a`; sonic `0x58df0d...bbeb03`; sonic `0x8a1eac...b6ff68`; sonic `0xac3323...33325d`; sonic `0xb69d5f...ed339b`; sonic `0xbdc4cc...e02581`; sonic `0xe90f1b...e9893b`; sonic `0xff002f...23b279`; base `0x28c9c7...d51c53`; base `0x3ce7ba...053549`; base `0x88c321...be7db1` | ⚠️ Unaudited |
| weightedMultiTokenBalance | token | sonic | [`0xe41b49...587eae`](./contracts/sonic-146/0xe41b49a03b367ecb41f834801c7f1922d8587eae/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (2)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ProxyAdmin | governance | sonic | 17 deployments: sonic [`0x0be40f...c1d1aa`](./contracts/sonic-146/0x0be40f3289c1a2b7c380086490393e6ef7c1d1aa/); sonic `0x1d864a...ed1f2e`; sonic `0x3ba64e...56a481`; sonic `0x4fdd88...487c6c`; sonic `0x5cfdf3...627db6`; sonic `0x687dad...3f571e`; sonic `0x6d93a9...9f8356`; sonic `0x93b25c...891738`; sonic `0xa543f1...ea7324`; sonic `0xc55ebf...be0979`; sonic `0xcd4f9a...ae0304`; sonic `0xeaa0dc...92125a`; sonic `0xf2d79a...4846ca`; base `0x23c5e5...a4d71e`; base `0x687dad...3f571e`; base `0x7de814...e71c1e`; base `0xfab311...fa888b` | ⚠️ Unaudited (bytecode match) |
| UniswapInterfaceMulticall | periphery | base | 3 deployments: sonic `0x9b500c...e542e7`; base [`0x4c2968...1681e3`](./contracts/base-8453/0x4c29682a07c50dd5f6bdf36eb97fb28f5c1681e3/); base `0x9b500c...e542e7` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (240)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Proxy (impl: 0x6bd73537da943723124c2a50f0f95557f4acc9a2) | proxy | sonic | `0x4bfb39...e047cf` | ❓ Unverified |
| Proxy (impl: 0x6bd73537da943723124c2a50f0f95557f4acc9a2) | proxy | base | `0x4bfb39...e047cf` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x02ea3b...9187cb` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x062ebc...2faaaf` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x069a95...344442` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x09e6c1...c5a4da` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x0b2e36...9ac204` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x0c2b50...b220aa` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x0cb18b...d8a818` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x1448d5...fd08c2` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x154762...4eb361` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x1a61f0...f2ddd2` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x1ae47e...b99293` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x1b1c9a...cd32a4` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x1bf6ad...737ff2` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x1d50eb...4167dc` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x1f60ee...46d5fa` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x1f7a12...36d0e8` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x23072c...8a08f9` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x2453b0...93d69a` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x2696f9...4b9ce7` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x284d3c...903179` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x2b5229...6d7c2f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x2b5cb8...1c00e9` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x2c34a6...8efbf1` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x2cf503...910380` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x2fc787...9e382e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x302e60...f3cbca` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x30f45d...e5ce3b` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x311c25...56198e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x31686c...24699f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x316e8b...d8c165` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x31e812...023392` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x324408...2bcefc` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x326b73...4564af` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x3466dc...54d0d2` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x36fb2d...43b92c` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x3d37f2...399ae8` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x430997...d86dd0` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x430a47...1db6c3` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x43da59...c05f46` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x45482b...46ab66` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x4696ff...21d8bc` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x4b1754...b85db2` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x4c2968...1681e3` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x4cfcc9...1b5a1d` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x4d9c51...77faf1` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x50c244...0f6e97` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x5300db...631dd2` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x54080b...215c04` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x547db6...6e937e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x55936f...ce5810` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x56f863...894f0f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x594230...4b6bbb` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x59c3cb...7f6b56` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x5ae329...3889bd` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x5ea576...6de45d` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x67b0cb...7c931c` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x67ce89...051979` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x6bd735...acc9a2` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x6ec438...68e272` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x70532d...f11262` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x7169b4...a9000d` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x77081d...ef95d4` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x771a99...95a170` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x797195...bede99` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x7a45a5...5b1d29` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x7c9ec9...94c1ae` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x7dde13...41b3e5` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x7ebf10...5b16bd` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x7febd8...ff8d95` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x82f244...4a3de3` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x839494...60c6fc` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x83a4da...6e015e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x85348c...02eff7` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x87ca0b...b4600c` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x8bedd6...7ed2ec` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x8d111f...d470cf` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x8d3413...90e793` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x93590c...361615` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x945763...aa21bf` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x94920b...e566b2` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x955f99...6a83d4` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x97a7b2...d85073` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x985802...029bac` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x994d38...369295` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x9d9682...4663fd` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x9dddb1...f1897c` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xa0abf1...5d1174` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xa17435...41c6fb` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xa2a6a1...916298` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xa3ffc7...0721a8` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xa6faf9...4007e3` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xa72258...b9a636` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xa87f22...15dd41` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xa8e5d9...fcd343` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xab492b...855d56` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xb32f2f...4c02f5` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xb79f47...41ec9b` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xb80a72...e0d757` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xbf4bfe...fb4b4b` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xc218d5...13a61e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xc28ca7...8f1dac` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xc33c20...1aadf0` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xceb494...49926d` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xd2ce72...18fc2d` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xd3b05b...cef7b8` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xd58769...b7a994` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xd6d75f...6811b9` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xd78d00...7bc3f1` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xda0b0e...949911` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xde33b8...868ed2` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xdf4869...1be136` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xe07c87...82b619` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xe188f2...947f5a` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xe38145...cb9fba` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xe63dfb...1f26cc` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xe7313f...350a95` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xe8615b...d0a6d6` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xeae104...daabaa` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xef085d...bbcea1` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xf08413...51453b` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xf2858f...890f16` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xf29754...a1b7f6` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xf2e901...f7b120` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xf3022e...570130` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xf5b6cc...64925f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xf5b718...beff98` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xf726df...c85b94` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xfaad65...68402c` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xfab311...fa888b` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xfe5544...ee7c15` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x07378e...442e60` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x17fa9d...cb10b4` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x180da8...f86180` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x1a05eb...f5a447` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x1c065b...d303fa` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x1f7a12...36d0e8` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x2aa079...23b285` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x2b5229...6d7c2f` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x304511...f7235a` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x30f45d...e5ce3b` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x33da53...aaa470` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x3e8b14...c946f4` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x3fd3a0...4865a6` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x4bebeb...060d5b` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x4bfb39...e047cf` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x4c2968...1681e3` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x547db6...6e937e` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x58be1f...d746b0` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x5b3220...85c157` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x5d4589...9d4308` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x687dad...3f571e` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x6bd735...acc9a2` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x6ef2fa...c34130` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x7635cd...d27e4b` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x777928...54cad8` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x79c26d...516de5` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x7ba9b1...69eb6a` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x7ca1dc...8f1c40` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x8313f3...63ce94` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x85e7f5...80c72d` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x881713...7edb74` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x8b3e5e...f0b4d9` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x8f0235...f05f43` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x8f6666...11b2dc` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x93b973...5041f8` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x97a7b2...d85073` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x9b500c...e542e7` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x9e4105...c91cb8` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0xa83f31...7301b8` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0xaec6d3...22bea9` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0xb6dfc3...fad93f` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0xb80a72...e0d757` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0xbf4bfe...fb4b4b` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0xbf65ca...0c57cb` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0xc6366e...10832a` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0xc701e9...8db678` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0xc8be3d...2be578` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0xcc6169...d23fad` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0xcc82bf...4c8c48` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0xd311fd...70d511` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0xddd984...528fcc` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0xddf26b...0d5f19` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0xe3d1a1...18dac1` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0xe4ba08...7500df` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0xe6da85...bb9d24` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0xe8ca91...4b60e8` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0xf2bfb9...0cc7e1` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0xf5b718...beff98` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0xfb0c0c...156887` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x01d550...f34072` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x0d153a...136dd8` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x163367...7e4884` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x165f11...1bb977` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x16e3ca...19ff3f` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x20cfe3...b8f448` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x24584b...13189a` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x2dcc87...bffa64` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x30e118...2f480c` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x30f45d...e5ce3b` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x3979d8...f55b97` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x39cc1c...f17536` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x3f0458...275489` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x3f34e0...7886c3` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x3f7307...9926e7` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x4046c4...0a40c4` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x480a98...54fbdc` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x4bcb11...12aaf9` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x4d0c30...6e2cda` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x502321...56f04c` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x547db6...6e937e` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x548551...730813` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x54967f...0c67ce` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x6693bc...4e416d` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x68a5d2...f1299f` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x68ea7c...0eb023` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x6bd735...acc9a2` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x6c6018...d20945` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x771a99...95a170` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x7898a0...0ceb08` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x861fe2...5811c7` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x8b7595...c4388d` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x8ddd72...f6c60d` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x931389...327bb7` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x93b25c...891738` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x94ea66...acdb59` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x97dd08...a1f55a` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x9d88ac...c58612` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xa2a6a1...916298` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xb5aed2...644127` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xbe83cd...5f9876` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xbed5a2...2fc3ea` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xcc1eff...5fee93` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xd45f5d...fccf9b` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xe4ba08...7500df` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xee5263...fdfa9d` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xf024aa...7e779b` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xf3e31b...a8bda9` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xf4f5af...29c986` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x17b9b0...fe24eb`](./contracts/base-8453/0x17b9b0d1d64a26e9380289600231f18e37fe24eb/) | ElitenessERC20 | token | $369,904.71 | Verified native implementation with $369,904.71 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x0d4e88...212967`](./contracts/sonic-146/0x0d4e88ea618bb5b4bc7f143bd16e4b5640212967/) | BeaconProxyFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x0f0c34...067160`](./contracts/sonic-146/0x0f0c346dff7ea5d612c67dc3eb06f6166a067160/) | BribeFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xe79ea8...f75f51`](./contracts/sonic-146/0xe79ea8606577fc1a846013e23ff2532919f75f51/) | Burner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x8de568...ba1e22`](./contracts/sonic-146/0x8de568691a1a6356b46418fdc12e1694a1ba1e22/) | elitenessERC4626 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x11cfb3...d75240`](./contracts/sonic-146/0x11cfb329caaca6d7da69734d10c7ec70afd75240/) | ElitenessFarmland | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x22cfb3...68893f`](./contracts/sonic-146/0x22cfb3161076a2bf472627127271747d2968893f/) | eliteRingsManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x18f8ad...25b2db`](./contracts/sonic-146/0x18f8ad653867fc53b4d75bda1b610a5f3325b2db/) | eLOCK | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x26d70b...7e35da`](./contracts/sonic-146/0x26d70b26df8619fd3eeec07e22873b9f617e35da/) | eLOCKS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1613ab...f58bef`](./contracts/base-8453/0x1613ab1a7cbd35ce942beb6ae857444d78f58bef/) | ElToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x7f142a...d14134`](./contracts/sonic-146/0x7f142a18f1b476809c4994c63811fef4afd14134/) | elTokenZap | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x0dd7c0...51fe2c`](./contracts/sonic-146/0x0dd7c089612fcea9a61e30c34983a0934751fe2c/) | Equal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x1b62eb...4b2f89`](./contracts/sonic-146/0x1b62eb66389456187576907b2fce1fe2274b2f89/) | Equalens_supplyStats | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x10b1df...e47d10`](./contracts/base-8453/0x10b1df11a6834ac8afe6efa654fc8c8396e47d10/) | EqualizerLibrary | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x807c19...08542d`](./contracts/sonic-146/0x807c19badabc848336fe0379bd659e4e4608542d/) | fBOMB | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x11b3dc...a1218e`](./contracts/base-8453/0x11b3dc196ce5195e0ab82052cb9dfd468da1218e/) | FeeSynthesizer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x5126cb...77dc30`](./contracts/sonic-146/0x5126cbc2597681cdc7c648dd74b19fb12f77dc30/) | FeeTierManager_2Thick | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x1c0f3c...6e37b9`](./contracts/sonic-146/0x1c0f3c36c68cf8e12e0abe83f03062bc3d6e37b9/) | GaugeFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x0d571c...445ca2`](./contracts/sonic-146/0x0d571c1ac1e1d806256d639eef65a017b8445ca2/) | LocklessReceiptMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x078c68...dc8ecb`](./contracts/sonic-146/0x078c68189c788f2e1df314276fd5492a32dc8ecb/) | Minter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x990d2c...7fab3b`](./contracts/sonic-146/0x990d2cd2b095fd57d532cf12d9f58dbe3e7fab3b/) | MultiNotify | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x1244a7...b9c92c`](./contracts/sonic-146/0x1244a7a6ee179bbbd332f6f6673259e569b9c92c/) | multiNotifyEqualToEltokenGauge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x00a76d...df1306`](./contracts/sonic-146/0x00a76d63cf6a514f1f9038a5afd7fb5b29df1306/) | NFP_Staker | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x97a7b2...d85073`](./contracts/base-8453/0x97a7b2f95fda7181da16aec3072cd55a58d85073/) | NFTDescriptor | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x312e1f...00572d`](./contracts/sonic-146/0x312e1fd8f3281b8b476030ed1b058f62d800572d/) | PairFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x02c32e...d98666`](./contracts/base-8453/0x02c32e0a34ab6fa5825565254f79c8c690d98666/) | PriceGuru | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x7635cd...d27e4b`](./contracts/sonic-146/0x7635cd591cfe965be8bec60da6ea69b6dcd27e4b/) | Router02 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x0929b8...d284de`](./contracts/sonic-146/0x0929b85d1bf640e5af61ed97a30ace3058d284de/) | Router03 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x0d809f...789048`](./contracts/sonic-146/0x0d809fc015810ce75aa1c939c28e1355ad789048/) | sAMM_Oracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2f87bf...2be6fa`](./contracts/base-8453/0x2f87bf58d5a9b2efade55cdbd46153a0902be6fa/) | ScaleRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x641135...66e9bb`](./contracts/base-8453/0x6411350def83147130b26c1e90dc7afbbb66e9bb/) | SolidlyExtendedRouter03 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x27a2bd...157a80`](./contracts/sonic-146/0x27a2bd2070675ac6b40ecc6ed2ef5bcc25157a80/) | solidlyRouterCalcs | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x25374d...7a1af9`](./contracts/sonic-146/0x25374db31147061cac658af137c4231ac77a1af9/) | SSR2Thick_Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x022566...3c74a0`](./contracts/base-8453/0x0225664e04b25a1eb71a7ad0b93c9aa6ec3c74a0/) | SuperVoter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x02c88d...3ad6df`](./contracts/base-8453/0x02c88d4067988a0981ffd0bd0c34a6a2ed3ad6df/) | ThickALMGaugeEquivalentFarmland | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x7b54df...e46f75`](./contracts/base-8453/0x7b54dfec0d532808d23cc24e0035d74557e46f75/) | TvlGuru_ThickALM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x9a9499...fa59c9`](./contracts/base-8453/0x9a949959057fbbdf1be20b489ceea51994fa59c9/) | TvlGuru_ThickThickALM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x1ff98b...074f7e`](./contracts/sonic-146/0x1ff98b4236c11f3fd2716ff81d5c509dc1074f7e/) | TvlGuru_v21 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x050b42...d4e842`](./contracts/base-8453/0x050b424b074ae99a8c4fd176aad21fafa8d4e842/) | Voter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x0a4531...9fbbfd`](./contracts/sonic-146/0x0a4531ded5c360c468b560ffdbce6058e19fbbfd/) | VotingEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xe41b49...587eae`](./contracts/sonic-146/0xe41b49a03b367ecb41f834801c7f1922d8587eae/) | weightedMultiTokenBalance | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 151 |
| upstream | 12 |
| standard_library | 6 |
| needs_review | 123 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
