# Agentic Audit Brief: Equalizer

⚠️ Lifecycle status: DECLINING - TVL changed 4.6% over 90 days

## Project Overview

- Project: Equalizer (`equalizer`)
- Website: [https://equalizer.exchange/](https://equalizer.exchange/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-17T07:00:49.536Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: base, fantom, sonic
- Contract surface: 176 unique implementations (278 raw deployments)
- DeFi Llama TVL: $861,049.00
- On-chain TVL (included contracts): $374,839.04
- TVL by chain: Sonic $374,839.04

## Project Description

Equalizer is a decentralized exchange/AMM operating across Sonic, Base, and Fantom. It supports stable and volatile liquidity pools, vote-escrowed EQUAL/ve(3,3) incentive mechanics, liquidity incentives, bribes and fee distribution, and concentrated-liquidity deployments where supported by the deployed contract surface.

### Architecture

The THICK and 2THICK families provide the AMM layer, while the Scale and Deployed Contract Addresses families implement the ve(3,3) tokenomics. The EQUAL token and VotingEscrow from the ve(3,3) families govern emissions directed to liquidity pools created by the PairFactory, with routers bridging user swaps across both layers.

## Contract Surface Quality

- Indexed contracts: 516; live-surface contracts included: 278 (78 live, 200 unknown).
- Excluded by liveness: 210 inactive, 28 singleton, 0 uninitialized.
- Deployment units: 0/16 live.
- Detected codebases: uniswap-v2, uniswap-v3
- Unverified dependencies: 1/23.

## Audit Coverage Summary

- Verified implementations audited: 0/50 (0.0%)
- Verified + Unaudited implementations: 49
- Verified by bytecode match: 1
- Unverified implementations: 126
- Unique implementations: 176
- Raw deployments: 278
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

### ⚠️ Verified + Unaudited (49)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ElitenessERC20 | token | base | n/a | 12 deployments: sonic `0x31b59f...afc109`; sonic `0xcc835d...2b8fca`; sonic `0xd4aa38...592e22`; sonic `0xd8a6f9...3028db`; sonic `0xdc2de2...d1a88b`; base [`0x17b9b0...fe24eb`](./contracts/base-8453/0x17b9b0d1d64a26e9380289600231f18e37fe24eb/); base `0x223bfa...5838d7`; base `0x248bb3...ab7c61`; base `0x49d19c...173ac7`; base `0x549a36...da7d7e`; base `0x981b34...1d065b`; base `0xf704d9...d6f754` | ⚠️ Unaudited |
| impermaxBorrowableERC4626Wrapper | core_logic | sonic | n/a | 2 deployments: sonic [`0xc7d318...00d083`](./contracts/sonic-146/0xc7d31877e3b1d55ff48a6e3dcfa846fa3e00d083/); sonic `0xffa942...3dccf0` | ⚠️ Unaudited |
| BeaconProxyFactory | registry | sonic | n/a | 3 deployments: sonic [`0x0d4e88...212967`](./contracts/sonic-146/0x0d4e88ea618bb5b4bc7f143bd16e4b5640212967/); sonic `0x15864c...b01dfc`; sonic `0x769e38...c6ccdd` | ⚠️ Unaudited |
| Burner | unknown | sonic | n/a | [`0xe79ea8...f75f51`](./contracts/sonic-146/0xe79ea8606577fc1a846013e23ff2532919f75f51/) | ⚠️ Unaudited |
| elitenessERC4626 | unknown | sonic | n/a | 2 deployments: sonic [`0x8de568...ba1e22`](./contracts/sonic-146/0x8de568691a1a6356b46418fdc12e1694a1ba1e22/); sonic `0xac4bb9...6c8877` | ⚠️ Unaudited |
| ElitenessFarmland | unknown | sonic | n/a | 5 deployments: sonic [`0x11cfb3...d75240`](./contracts/sonic-146/0x11cfb329caaca6d7da69734d10c7ec70afd75240/); sonic `0x21c99e...90e006`; sonic `0x381a53...81073e`; sonic `0xd58273...21faa0`; sonic `0xfaa72e...b87f40` | ⚠️ Unaudited |
| eliteRingsManager | governance | sonic | n/a | 6 deployments: sonic [`0x22cfb3...68893f`](./contracts/sonic-146/0x22cfb3161076a2bf472627127271747d2968893f/); sonic `0x5af02b...d6f0ff`; sonic `0xa5fea6...e190eb`; sonic `0xad605d...8d0906`; sonic `0xae1a80...ab8735`; sonic `0xdabb71...8b8773` | ⚠️ Unaudited |
| eLOCK | unknown | base | n/a | [`0xb212f3...ab5442`](./contracts/base-8453/0xb212f32270177c820330fe1e9493ec00ceab5442/) | ⚠️ Unaudited |
| eLOCKS | unknown | base | n/a | [`0xa9a3e3...0d6a6a`](./contracts/base-8453/0xa9a3e305955bc462768483249e785c5e5a0d6a6a/) | ⚠️ Unaudited |
| ElToken | token | base | n/a | 4 deployments: base [`0x1613ab...f58bef`](./contracts/base-8453/0x1613ab1a7cbd35ce942beb6ae857444d78f58bef/); base `0x5301bc...1ffe5c`; base `0x74ebd0...fc3502`; base `0x7e55f9...6c8f62` | ⚠️ Unaudited |
| elTokenZap | adapter | sonic | n/a | 3 deployments: sonic [`0x7f142a...d14134`](./contracts/sonic-146/0x7f142a18f1b476809c4994c63811fef4afd14134/); sonic `0xba65aa...d10692`; sonic `0xe339f4...265055` | ⚠️ Unaudited |
| Equal | unknown | base | n/a | [`0xdf4869...1be136`](./contracts/base-8453/0xdf486980df72446a5eff76263efb2fa9391be136/) | ⚠️ Unaudited |
| EqualizerLibrary | unknown | base | n/a | 3 deployments: base [`0x10b1df...e47d10`](./contracts/base-8453/0x10b1df11a6834ac8afe6efa654fc8c8396e47d10/); base `0x3ba64e...56a481`; base `0x75a1d7...053859` | ⚠️ Unaudited |
| FeeSynthesizer | unknown | base | n/a | 5 deployments: base [`0x11b3dc...a1218e`](./contracts/base-8453/0x11b3dc196ce5195e0ab82052cb9dfd468da1218e/); base `0x4031fc...4f4cc8`; base `0x8ad889...c78f13`; base `0x9bf40a...83bace`; base `0xbd52ef...fa11d1` | ⚠️ Unaudited |
| FeeTierManager_2Thick | governance | sonic | n/a | [`0x5126cb...77dc30`](./contracts/sonic-146/0x5126cbc2597681cdc7c648dd74b19fb12f77dc30/) | ⚠️ Unaudited |
| GaugeFactory | operational_periphery | base | n/a | 4 deployments: base [`0x7b7faf...8ebd27`](./contracts/base-8453/0x7b7faf5f614f8c13f80a8775b61d1c22f48ebd27/); base `0x999740...91885f`; base `0xa4d2b9...8b0c85`; base `0xcc835d...2b8fca` | ⚠️ Unaudited |
| GaugeFactory | operational_periphery | base | unit-29901 | [`0xb136b4...db13d6`](./contracts/base-8453/0xb136b45e3e241bb0d0c037395446cf42e4db13d6/) | ⚠️ Unaudited |
| Minter | operational_periphery | base | n/a | 2 deployments: base [`0x41c4d6...89a7e4`](./contracts/base-8453/0x41c4d6e7d3ea574bc1c8b2b34544cb2e3789a7e4/); base `0xa1b88e...ab54b4` | ⚠️ Unaudited |
| MultiNotify | unknown | sonic | n/a | 2 deployments: sonic [`0x990d2c...7fab3b`](./contracts/sonic-146/0x990d2cd2b095fd57d532cf12d9f58dbe3e7fab3b/); base `0xf7d8c4...07d792` | ⚠️ Unaudited |
| multiNotifyEqualToEltokenGauge | operational_periphery | sonic | n/a | 6 deployments: sonic [`0x608469...baa077`](./contracts/sonic-146/0x608469806c0845dd9fa1568480c34c2c68baa077/); sonic `0x79f90d...236f49`; sonic `0x8a9690...d83e9a`; sonic `0xe377f2...7cf89c`; sonic `0xfb3e3d...7be6bc`; sonic `0xff1329...62856e` | ⚠️ Unaudited |
| NFP_Staker | core_logic | sonic | n/a | 8 deployments: sonic [`0x00a76d...df1306`](./contracts/sonic-146/0x00a76d63cf6a514f1f9038a5afd7fb5b29df1306/); sonic `0x8273ae...780af1`; sonic `0x9a1874...3b8209`; sonic `0xafe7ac...103ad8`; sonic `0xcfa61d...13dca2`; sonic `0xd7a6f1...35c56c`; sonic `0xdc5847...5ee35f`; sonic `0xdf8057...828c09` | ⚠️ Unaudited |
| NFTDescriptor | token | base | n/a | [`0x97a7b2...d85073`](./contracts/base-8453/0x97a7b2f95fda7181da16aec3072cd55a58d85073/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | base | n/a | 3 deployments: sonic `0x79c26d...516de5`; base [`0x2b5229...6d7c2f`](./contracts/base-8453/0x2b52294425a9a229322228de659ede9d146d7c2f/); base `0x79c26d...516de5` | ⚠️ Unaudited |
| Pair | unknown | base | n/a | [`0x83240b...6aac84`](./contracts/base-8453/0x83240b049fa89b65be714aed68e5b074df6aac84/) | ⚠️ Unaudited |
| PairFactory | registry | base | n/a | 4 deployments: base [`0x39cc81...b1d91c`](./contracts/base-8453/0x39cc812e698a61f1883f7b9dba54159aa7b1d91c/); base `0x653ce1...ad3414`; base `0xc295f6...197250`; base `0xd7627e...b222e1` | ⚠️ Unaudited |
| PriceGuru | operational_periphery | base | n/a | [`0x02c32e...d98666`](./contracts/base-8453/0x02c32e0a34ab6fa5825565254f79c8c690d98666/) | ⚠️ Unaudited |
| ProxyAdmin | governance | base | n/a | 4 deployments: base [`0x23c5e5...a4d71e`](./contracts/base-8453/0x23c5e56183371e1fead04674730be924f1a4d71e/); base `0x687dad...3f571e`; base `0x7de814...e71c1e`; base `0xfab311...fa888b` | ⚠️ Unaudited |
| ProxyAdmin4 | governance | sonic | n/a | [`0x8eb10e...ebfa10`](./contracts/sonic-146/0x8eb10eb24d258f832f0d6603544b7ab794ebfa10/) | ⚠️ Unaudited |
| QuoterV2 | periphery | base | n/a | 2 deployments: base [`0xc701e9...8db678`](./contracts/base-8453/0xc701e92db1ef14ab64f66f18536b1e07678db678/); base `0xf5b718...beff98` | ⚠️ Unaudited |
| Router02 | adapter | sonic | n/a | [`0x7635cd...d27e4b`](./contracts/sonic-146/0x7635cd591cfe965be8bec60da6ea69b6dcd27e4b/) | ⚠️ Unaudited |
| Router03 | adapter | sonic | n/a | [`0xcc6169...d23fad`](./contracts/sonic-146/0xcc6169aa1e879d3a4227536671f85afdb2d23fad/) | ⚠️ Unaudited |
| sAMM_Oracle | operational_periphery | sonic | n/a | [`0x0d809f...789048`](./contracts/sonic-146/0x0d809fc015810ce75aa1c939c28e1355ad789048/) | ⚠️ Unaudited |
| Scalepounder | unknown | base | n/a | 3 deployments: base [`0x659aa8...12b9e9`](./contracts/base-8453/0x659aa8d33caaba3e178551af4e439f99dd12b9e9/); base `0x74a022...dbc272`; base `0xde0ec1...d61606` | ⚠️ Unaudited |
| ScaleRouter | adapter | base | n/a | 2 deployments: base [`0x2f87bf...2be6fa`](./contracts/base-8453/0x2f87bf58d5a9b2efade55cdbd46153a0902be6fa/); base `0x5e9d25...d11c94` | ⚠️ Unaudited |
| SolidlyExtendedRouter03 | adapter | base | n/a | 3 deployments: base [`0x641135...66e9bb`](./contracts/base-8453/0x6411350def83147130b26c1e90dc7afbbb66e9bb/); base `0x750281...9e422f`; base `0xa78618...97aaab` | ⚠️ Unaudited |
| SSR2Thick_Factory | registry | sonic | n/a | 2 deployments: sonic [`0x25374d...7a1af9`](./contracts/sonic-146/0x25374db31147061cac658af137c4231ac77a1af9/); sonic `0x6ea84b...32525c` | ⚠️ Unaudited |
| SuperVoter | unknown | base | n/a | 2 deployments: sonic `0xb6dfc3...fad93f`; base [`0x022566...3c74a0`](./contracts/base-8453/0x0225664e04b25a1eb71a7ad0b93c9aa6ec3c74a0/) | ⚠️ Unaudited |
| SwapRouter02 | adapter | base | n/a | 2 deployments: sonic `0xe4ba08...7500df`; base [`0x1f7a12...36d0e8`](./contracts/base-8453/0x1f7a12b40bfc8e8561008bc2ca1fbdc71a36d0e8/) | ⚠️ Unaudited |
| ThickALMGaugeEquivalentFarmland | operational_periphery | base | n/a | 21 deployments: base [`0x02c88d...3ad6df`](./contracts/base-8453/0x02c88d4067988a0981ffd0bd0c34a6a2ed3ad6df/); base `0x159aef...919ef2`; base `0x17a0d9...112baa`; base `0x1dcdf0...25890c`; base `0x2735a7...f53191`; base `0x338b18...08b5f3`; base `0x3c93f6...f2035a`; base `0x3f4d38...16a13e`; base `0x427141...0eecb6`; base `0x56c90e...7916c2`; base `0x5b5027...f9de7b`; base `0x66a5df...45dcc6`; base `0x8d6afe...0f1733`; base `0x98adfe...44fd1e`; base `0xa7672a...c6ae8e`; base `0xb14862...56e8d3`; base `0xc8eaae...bf6a72`; base `0xdeba7a...7d6327`; base `0xf1580a...444354`; base `0xf26927...e2bf1d`; base `0xfcc85a...b69068` | ⚠️ Unaudited |
| TickLens | periphery | base | n/a | [`0xb80a72...e0d757`](./contracts/base-8453/0xb80a72281c76464cc0e1fbf2431a897393e0d757/) | ⚠️ Unaudited |
| TvlGuru_ThickALM | unknown | base | n/a | [`0x7b54df...e46f75`](./contracts/base-8453/0x7b54dfec0d532808d23cc24e0035d74557e46f75/) | ⚠️ Unaudited |
| TvlGuru_ThickThickALM | unknown | base | n/a | [`0x9a9499...fa59c9`](./contracts/base-8453/0x9a949959057fbbdf1be20b489ceea51994fa59c9/) | ⚠️ Unaudited |
| TvlGuru_v21 | unknown | sonic | n/a | [`0x1ff98b...074f7e`](./contracts/sonic-146/0x1ff98b4236c11f3fd2716ff81d5c509dc1074f7e/) | ⚠️ Unaudited |
| UniswapV3Factory | registry | sonic | n/a | 3 deployments: sonic [`0x7ca1dc...8f1c40`](./contracts/sonic-146/0x7ca1dccfb4f49564b8f13e18a67747fd428f1c40/); base [`0x7ca1dc...8f1c40`](./contracts/base-8453/0x7ca1dccfb4f49564b8f13e18a67747fd428f1c40/); base `0xe6da85...bb9d24` | ⚠️ Unaudited |
| UpgradeableBeacon | registry | sonic | n/a | 2 deployments: sonic [`0x5ebd65...047437`](./contracts/sonic-146/0x5ebd6536a0f8dc9b2aad4a8e750eafff60047437/); sonic `0xb654fa...9beead` | ⚠️ Unaudited |
| Voter | unknown | base | n/a | 8 deployments: sonic `0x5bce72...663bc3`; sonic `0xe164f4...e1fb47`; base [`0x050b42...d4e842`](./contracts/base-8453/0x050b424b074ae99a8c4fd176aad21fafa8d4e842/); base `0x18c7ad...68845a`; base `0x423278...a325a3`; base `0xa8bc72...849aa2`; base `0xf79518...5b9d31`; base `0xf88005...1cff21` | ⚠️ Unaudited |
| Voter | unknown | base | unit-29898 | [`0x46abb8...592687`](./contracts/base-8453/0x46abb88ae1f2a35ea559925d99fdc5441b592687/) | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | base | n/a | 2 deployments: base [`0x3ce7ba...053549`](./contracts/base-8453/0x3ce7ba8ad19fe33ae2ce20a4cc1b0d91c5053549/); base `0x88c321...be7db1` | ⚠️ Unaudited |
| weightedMultiTokenBalance | token | sonic | n/a | [`0xe41b49...587eae`](./contracts/sonic-146/0xe41b49a03b367ecb41f834801c7f1922d8587eae/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UniswapInterfaceMulticall | periphery | base | n/a | 3 deployments: sonic `0x9b500c...e542e7`; base [`0x4c2968...1681e3`](./contracts/base-8453/0x4c29682a07c50dd5f6bdf36eb97fb28f5c1681e3/); base `0x9b500c...e542e7` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (126)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | sonic | n/a | `0x09e6c1...c5a4da` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x0cb18b...d8a818` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x1a61f0...f2ddd2` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x1d50eb...4167dc` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x2453b0...93d69a` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x2c34a6...8efbf1` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x31e812...023392` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x3d37f2...399ae8` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x430997...d86dd0` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x43da59...c05f46` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x4b1754...b85db2` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x55936f...ce5810` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x594230...4b6bbb` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x945763...aa21bf` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xa0abf1...5d1174` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xab492b...855d56` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xe188f2...947f5a` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xfaad65...68402c` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x07378e...442e60` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x17fa9d...cb10b4` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x180da8...f86180` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x1a05eb...f5a447` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x1c065b...d303fa` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x1f7a12...36d0e8` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x2aa079...23b285` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x2b5229...6d7c2f` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x304511...f7235a` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x30f45d...e5ce3b` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x33da53...aaa470` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x3e8b14...c946f4` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x3fd3a0...4865a6` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x4bebeb...060d5b` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x4bfb39...e047cf` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x4c2968...1681e3` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x547db6...6e937e` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x58be1f...d746b0` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x5b3220...85c157` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x5d4589...9d4308` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x687dad...3f571e` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x6bd735...acc9a2` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x6ef2fa...c34130` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x7635cd...d27e4b` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x777928...54cad8` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x79c26d...516de5` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x7ba9b1...69eb6a` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x7ca1dc...8f1c40` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x8313f3...63ce94` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x85e7f5...80c72d` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x881713...7edb74` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x8b3e5e...f0b4d9` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x8f0235...f05f43` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x8f6666...11b2dc` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x93b973...5041f8` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x97a7b2...d85073` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x9b500c...e542e7` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x9e4105...c91cb8` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xa83f31...7301b8` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xaec6d3...22bea9` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xb6dfc3...fad93f` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xb80a72...e0d757` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xbf4bfe...fb4b4b` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xbf65ca...0c57cb` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xc6366e...10832a` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xc701e9...8db678` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xc8be3d...2be578` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xcc6169...d23fad` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xcc82bf...4c8c48` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xd311fd...70d511` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xddd984...528fcc` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xddf26b...0d5f19` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xe3d1a1...18dac1` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xe4ba08...7500df` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xe6da85...bb9d24` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xe8ca91...4b60e8` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xf2bfb9...0cc7e1` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xf5b718...beff98` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xfb0c0c...156887` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x01d550...f34072` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0d153a...136dd8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x163367...7e4884` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x165f11...1bb977` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x16e3ca...19ff3f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x20cfe3...b8f448` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x24584b...13189a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2dcc87...bffa64` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x30e118...2f480c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x30f45d...e5ce3b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3979d8...f55b97` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x39cc1c...f17536` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3f0458...275489` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3f34e0...7886c3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3f7307...9926e7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4046c4...0a40c4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x480a98...54fbdc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4bcb11...12aaf9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4d0c30...6e2cda` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x502321...56f04c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x547db6...6e937e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x548551...730813` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x54967f...0c67ce` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6693bc...4e416d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x68a5d2...f1299f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x68ea7c...0eb023` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6c6018...d20945` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x771a99...95a170` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7898a0...0ceb08` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x861fe2...5811c7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8b7595...c4388d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8ddd72...f6c60d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x931389...327bb7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x93b25c...891738` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x94ea66...acdb59` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x97dd08...a1f55a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9d88ac...c58612` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa2a6a1...916298` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb5aed2...644127` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbe83cd...5f9876` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbed5a2...2fc3ea` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcc1eff...5fee93` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd45f5d...fccf9b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd467b1...574075` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe4ba08...7500df` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xee5263...fdfa9d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf024aa...7e779b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf3e31b...a8bda9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf4f5af...29c986` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x17b9b0...fe24eb`](./contracts/base-8453/0x17b9b0d1d64a26e9380289600231f18e37fe24eb/) | ElitenessERC20 | token | $369,904.71 | Verified native implementation with $369,904.71 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x0d4e88...212967`](./contracts/sonic-146/0x0d4e88ea618bb5b4bc7f143bd16e4b5640212967/) | BeaconProxyFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xe79ea8...f75f51`](./contracts/sonic-146/0xe79ea8606577fc1a846013e23ff2532919f75f51/) | Burner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x8de568...ba1e22`](./contracts/sonic-146/0x8de568691a1a6356b46418fdc12e1694a1ba1e22/) | elitenessERC4626 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x11cfb3...d75240`](./contracts/sonic-146/0x11cfb329caaca6d7da69734d10c7ec70afd75240/) | ElitenessFarmland | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x22cfb3...68893f`](./contracts/sonic-146/0x22cfb3161076a2bf472627127271747d2968893f/) | eliteRingsManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xb212f3...ab5442`](./contracts/base-8453/0xb212f32270177c820330fe1e9493ec00ceab5442/) | eLOCK | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xa9a3e3...0d6a6a`](./contracts/base-8453/0xa9a3e305955bc462768483249e785c5e5a0d6a6a/) | eLOCKS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1613ab...f58bef`](./contracts/base-8453/0x1613ab1a7cbd35ce942beb6ae857444d78f58bef/) | ElToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x7f142a...d14134`](./contracts/sonic-146/0x7f142a18f1b476809c4994c63811fef4afd14134/) | elTokenZap | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xdf4869...1be136`](./contracts/base-8453/0xdf486980df72446a5eff76263efb2fa9391be136/) | Equal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x10b1df...e47d10`](./contracts/base-8453/0x10b1df11a6834ac8afe6efa654fc8c8396e47d10/) | EqualizerLibrary | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x11b3dc...a1218e`](./contracts/base-8453/0x11b3dc196ce5195e0ab82052cb9dfd468da1218e/) | FeeSynthesizer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x5126cb...77dc30`](./contracts/sonic-146/0x5126cbc2597681cdc7c648dd74b19fb12f77dc30/) | FeeTierManager_2Thick | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x7b7faf...8ebd27`](./contracts/base-8453/0x7b7faf5f614f8c13f80a8775b61d1c22f48ebd27/) | GaugeFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x41c4d6...89a7e4`](./contracts/base-8453/0x41c4d6e7d3ea574bc1c8b2b34544cb2e3789a7e4/) | Minter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x990d2c...7fab3b`](./contracts/sonic-146/0x990d2cd2b095fd57d532cf12d9f58dbe3e7fab3b/) | MultiNotify | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x608469...baa077`](./contracts/sonic-146/0x608469806c0845dd9fa1568480c34c2c68baa077/) | multiNotifyEqualToEltokenGauge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x00a76d...df1306`](./contracts/sonic-146/0x00a76d63cf6a514f1f9038a5afd7fb5b29df1306/) | NFP_Staker | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x97a7b2...d85073`](./contracts/base-8453/0x97a7b2f95fda7181da16aec3072cd55a58d85073/) | NFTDescriptor | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x83240b...6aac84`](./contracts/base-8453/0x83240b049fa89b65be714aed68e5b074df6aac84/) | Pair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x39cc81...b1d91c`](./contracts/base-8453/0x39cc812e698a61f1883f7b9dba54159aa7b1d91c/) | PairFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x02c32e...d98666`](./contracts/base-8453/0x02c32e0a34ab6fa5825565254f79c8c690d98666/) | PriceGuru | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x7635cd...d27e4b`](./contracts/sonic-146/0x7635cd591cfe965be8bec60da6ea69b6dcd27e4b/) | Router02 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xcc6169...d23fad`](./contracts/sonic-146/0xcc6169aa1e879d3a4227536671f85afdb2d23fad/) | Router03 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x0d809f...789048`](./contracts/sonic-146/0x0d809fc015810ce75aa1c939c28e1355ad789048/) | sAMM_Oracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x659aa8...12b9e9`](./contracts/base-8453/0x659aa8d33caaba3e178551af4e439f99dd12b9e9/) | Scalepounder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2f87bf...2be6fa`](./contracts/base-8453/0x2f87bf58d5a9b2efade55cdbd46153a0902be6fa/) | ScaleRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x641135...66e9bb`](./contracts/base-8453/0x6411350def83147130b26c1e90dc7afbbb66e9bb/) | SolidlyExtendedRouter03 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x25374d...7a1af9`](./contracts/sonic-146/0x25374db31147061cac658af137c4231ac77a1af9/) | SSR2Thick_Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x022566...3c74a0`](./contracts/base-8453/0x0225664e04b25a1eb71a7ad0b93c9aa6ec3c74a0/) | SuperVoter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x02c88d...3ad6df`](./contracts/base-8453/0x02c88d4067988a0981ffd0bd0c34a6a2ed3ad6df/) | ThickALMGaugeEquivalentFarmland | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x7b54df...e46f75`](./contracts/base-8453/0x7b54dfec0d532808d23cc24e0035d74557e46f75/) | TvlGuru_ThickALM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x9a9499...fa59c9`](./contracts/base-8453/0x9a949959057fbbdf1be20b489ceea51994fa59c9/) | TvlGuru_ThickThickALM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x1ff98b...074f7e`](./contracts/sonic-146/0x1ff98b4236c11f3fd2716ff81d5c509dc1074f7e/) | TvlGuru_v21 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x050b42...d4e842`](./contracts/base-8453/0x050b424b074ae99a8c4fd176aad21fafa8d4e842/) | Voter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3ce7ba...053549`](./contracts/base-8453/0x3ce7ba8ad19fe33ae2ce20a4cc1b0d91c5053549/) | VotingEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xe41b49...587eae`](./contracts/sonic-146/0xe41b49a03b367ecb41f834801c7f1922d8587eae/) | weightedMultiTokenBalance | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 89 |
| upstream | 7 |
| standard_library | 5 |
| needs_review | 75 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
