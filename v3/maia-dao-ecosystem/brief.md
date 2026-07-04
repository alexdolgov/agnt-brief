# Agentic Audit Brief: Maia DAO Ecosystem

## Project Overview

- Project: Maia DAO Ecosystem (`maia-dao-ecosystem`)
- Website: [https://maiadao.io](https://maiadao.io)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:21.865Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-b097
- Chains: arbitrum, metis, sonic
- Contract surface: 269 unique implementations (379 raw deployments)
- DeFi Llama TVL: $391,825.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 61 project-authored contract(s) across 3 chain(s); 8 ERC20 tokens, 2 ERC721 NFTs; role-gated via AccessControl; built on solmate.

### Architecture

The protocol comprises 7 functional families. Its contracts share 14 common project-authored base contract(s) (oft, oftcore, oapp). Dominant framework: solmate.

## Contract Surface Quality

- Indexed contracts: 403; live-surface contracts included: 379 (37 live, 342 unknown).
- Excluded by liveness: 24 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 6/16 (37.5%)
- Deployed-live implementations: 16 of 269 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 6/45
- Verified + Unaudited implementations: 39
- Verified by bytecode match: 0
- Unverified implementations: 224
- Unique implementations: 269
- Raw deployments: 379
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-12 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 8 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 6 match-unverified
- Tier 1 coverage: 6.3% (Code4rena)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Zellic | Tier 2 | 6 | 13.3% | 2023-12 |
| Code4rena | Tier 1 | 1 | 2.2% | 2023-09 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BoostAggregatorFactory | registry | arbitrum | n/a | [`0x223f38...94fbd4`](./contracts/arbitrum-42161/0x223f3862f28848784432dc48346d133aba94fbd4/) | ✅ Audited |
| FlywheelCore | unknown | metis | n/a | 18 deployments: metis [`0x02707d...7a7c1a`](./contracts/metis-1088/0x02707dbe94175ed43ffb5db06d6a600f807a7c1a/); metis `0x34a3eb...0c62dd`; metis `0x3e68b8...d388ce`; metis `0x471cae...aad52d`; metis `0x50477f...59d3a3`; metis `0x607a8a...9d131b`; metis `0x6ac56a...7df638`; metis `0x79fa3a...7383e4`; metis `0x7ab001...c4efd8`; metis `0x81685e...9586aa`; metis `0x91bc08...6fe837`; metis `0xa69557...eb0b43`; metis `0xb8cfd3...ff3e88`; metis `0xbc1907...0c097b`; metis `0xc136b6...ac6762`; metis `0xc3a3c3...16dd10`; metis `0xe55574...d282b4`; metis `0xebb556...e4b8db` | ✅ Audited |
| HERMES | unknown | arbitrum | n/a | [`0x459400...fa00ab`](./contracts/arbitrum-42161/0x45940000009600102a1c002f0097c4a500fa00ab/) | ✅ Audited |
| Maia | unknown | arbitrum | n/a | [`0x000000...f1009b`](./contracts/arbitrum-42161/0x00000000ea00f3f4000e7ed5ed91965b19f1009b/) | ✅ Audited |
| RewardsDepot | unknown | metis | n/a | 4 deployments: metis [`0x1e5a3d...bed31c`](./contracts/metis-1088/0x1e5a3dc1413ed59b961d17b6af643d0bd5bed31c/); metis `0x431216...b1117e`; metis `0x5ab5e7...a24761`; metis `0xf2a8d9...0c1015` | ✅ Audited |
| RootPort | unknown | arbitrum | n/a | [`0xd3e359...c03c56`](./contracts/arbitrum-42161/0xd3e3599517f2036fa314e468d62135714fc03c56/) | ✅ Audited |

### ⚠️ Verified + Unaudited (39)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BaseV1 | unknown | metis | n/a | 4 deployments: metis [`0x0ac047...85fffb`](./contracts/metis-1088/0x0ac0478017d3d38dc7f703fc1be0d10dad85fffb/); metis `0x5873ad...d55eb4`; metis `0x94fab9...8c0d8b`; metis `0xb27bbe...5161c8` | ⚠️ Unaudited |
| BaseV1BribeFactory | operational_periphery | metis | n/a | 9 deployments: metis [`0x27f7bd...731a7e`](./contracts/metis-1088/0x27f7bdc4efb93056d195ee0b9d976ce828731a7e/); metis `0x2b723e...572be1`; metis `0x2f2ab7...e87f26`; metis `0x4a3e7f...f7e253`; metis `0x5722bb...a61c69`; metis `0x78c703...212021`; metis `0x89b590...f34652`; metis `0x970c69...87f906`; metis `0xf9fd76...a327ee` | ⚠️ Unaudited |
| BaseV1Factory | registry | metis | n/a | 6 deployments: metis [`0x068233...46509f`](./contracts/metis-1088/0x068233c5ceb836f0a5f0ec57ceac9cd9fb46509f/); metis `0x449315...4b5a8f`; metis `0x546c81...e6c9f1`; metis `0x633a09...f6668f`; metis `0x87eeb7...161deb`; metis `0xf5c4de...003a0e` | ⚠️ Unaudited |
| BaseV1GaugeFactory | operational_periphery | metis | n/a | 9 deployments: metis [`0x3c5436...f9bd3f`](./contracts/metis-1088/0x3c5436f1c7703451fb2dd8aa198f1019bcf9bd3f/); metis `0x5e209c...d550da`; metis `0x7cb109...865004`; metis `0x81497c...a018f6`; metis `0x844bf3...9a0aa6`; metis `0x9c27e8...b68778`; metis `0xdcf743...52f956`; metis `0xf648f8...8de8b0`; metis `0xf70289...bd92df` | ⚠️ Unaudited |
| BaseV1Minter | unknown | metis | n/a | 3 deployments: metis [`0xe6868a...0005da`](./contracts/metis-1088/0xe6868a326db48e1e5d38bc2696e2bda8ae0005da/); metis `0xeb4562...ef5cd1`; metis `0xf031bc...cc4730` | ⚠️ Unaudited |
| BaseV1Router01 | adapter | metis | n/a | 7 deployments: metis [`0x10afc1...8d7e3c`](./contracts/metis-1088/0x10afc114105858a3911d16f33acc1ef7a98d7e3c/); metis `0x2d4f78...da8441`; metis `0x50f077...7beb4b`; metis `0x6bc899...bd91fb`; metis `0xbf9d63...022c36`; metis `0xccbf83...50191d`; metis `0xdfb3d4...1c75a4` | ⚠️ Unaudited |
| BaseV1Voter | unknown | metis | n/a | 3 deployments: metis [`0x45ee37...151b0c`](./contracts/metis-1088/0x45ee37b64f9a23b54c72d1c3710a8c1252151b0c/); metis `0x695fa6...3cd85e`; metis `0x879828...31137f` | ⚠️ Unaudited |
| BaseV2GaugeManager | unknown | arbitrum | n/a | [`0x6560a4...c74612`](./contracts/arbitrum-42161/0x6560a407df42acf92e63ef08b676c422e6c74612/) | ⚠️ Unaudited |
| BaseV2Minter | unknown | arbitrum | n/a | [`0x49283a...4d411e`](./contracts/arbitrum-42161/0x49283af8c7b4bfe4b716672d2989109e7e4d411e/) | ⚠️ Unaudited |
| BoringVault | core_logic | sonic | n/a | 2 deployments: sonic [`0x455d5f...f85265`](./contracts/sonic-146/0x455d5f11fea33a8fa9d3e285930b478b6bf85265/); sonic `0x4d85ba...a932ba` | ⚠️ Unaudited |
| Brush | unknown | sonic | n/a | [`0xe51ee9...1bfe44`](./contracts/sonic-146/0xe51ee9868c1f0d6cd968a8b8c8376dc2991bfe44/) | ⚠️ Unaudited |
| BurntHermes | unknown | arbitrum | n/a | [`0x3a0000...cd937c`](./contracts/arbitrum-42161/0x3a0000000000e1007ceb00351f65a1806ecd937c/) | ⚠️ Unaudited |
| ClaimHelper | periphery | metis | n/a | 7 deployments: metis [`0x14c51b...b1e3c6`](./contracts/metis-1088/0x14c51bf8ef19c1bcfd9c0d075b4680c0bbb1e3c6/); metis `0x29c685...ea9017`; metis `0x3aa56d...d2cc55`; metis `0x7ce2d5...845a2a`; metis `0x801844...6fd344`; metis `0x943aa3...6f2955`; metis `0xeb6392...cd7e66` | ⚠️ Unaudited |
| Distributor | operational_periphery | metis | n/a | 2 deployments: metis [`0x252f78...5a5120`](./contracts/metis-1088/0x252f7818231486380e1d853baedffd42015a5120/); metis `0xd1cf3a...bb3048` | ⚠️ Unaudited |
| ERC20sMAIA | token | metis | n/a | [`0xd7a586...536e6a`](./contracts/metis-1088/0xd7a586ce5250befab2cc2239f7226b9602536e6a/) | ⚠️ Unaudited |
| FlywheelGaugeRewards | unknown | arbitrum | n/a | [`0x5174fa...9afabb`](./contracts/arbitrum-42161/0x5174fa3cd4a9fd8113d8ab55975d4d1b079afabb/) | ⚠️ Unaudited |
| GOGGLES | unknown | sonic | n/a | [`0x9fdbc3...0c4564`](./contracts/sonic-146/0x9fdbc3f8abc05fa8f3ad3c17d2f806c1230c4564/) | ⚠️ Unaudited |
| Hermes250 | unknown | metis | n/a | 2 deployments: metis [`0x44f9f2...6d3f15`](./contracts/metis-1088/0x44f9f257c341298de53abd2b85b00fa1456d3f15/); metis `0xcbcc9a...d4b4c2` | ⚠️ Unaudited |
| HeyAnon | unknown | sonic | n/a | [`0x79bbf4...b0e07c`](./contracts/sonic-146/0x79bbf4508b1391af3a0f4b30bb5fc4aa9ab0e07c/) | ⚠️ Unaudited |
| MaiaBondDepository | unknown | metis | n/a | 14 deployments: metis [`0x3212c7...f072ac`](./contracts/metis-1088/0x3212c7f0d2f07707786dfe5e0a64aeffb4f072ac/); metis `0x3245f4...4dae69`; metis `0x5c89dc...24c2b6`; metis `0x803760...c7f30a`; metis `0x83de93...0e501a`; metis `0x89fef0...8777c9`; metis `0xa67af8...2b853c`; metis `0xb9791d...9ee28f`; metis `0xd1395b...778183`; metis `0xd211a3...9353f1`; metis `0xddc272...aa5297`; metis `0xec69ec...cdc963`; metis `0xee67fe...6cf980`; metis `0xf4d84c...c41a76` | ⚠️ Unaudited |
| MaiaDynamicRewards | unknown | metis | n/a | 5 deployments: metis [`0x010284...6b4453`](./contracts/metis-1088/0x010284f0f01344d22d3fec366a5f85dec16b4453/); metis `0x2851a6...4ac04d`; metis `0x3ef1b8...5f55b5`; metis `0x77fa1e...c01d89`; metis `0x8e4813...3543cc` | ⚠️ Unaudited |
| MaiaERC20Token | token | metis | n/a | 2 deployments: metis [`0x31ba70...9da00b`](./contracts/metis-1088/0x31ba70a4a17b311f4d2beed181c89f1f909da00b/); metis `0x72c232...758bcd` | ⚠️ Unaudited |
| MarathonLocker | unknown | metis | n/a | [`0x6efda2...a0243e`](./contracts/metis-1088/0x6efda282691ca242ee565d3acf8bf8ca9fa0243e/) | ⚠️ Unaudited |
| Multicall | periphery | metis | n/a | 3 deployments: metis [`0x0a8890...ae5956`](./contracts/metis-1088/0x0a889038442c8a1d6ebc6a5a4d07e98cf3ae5956/); metis `0x4dba32...159afe`; metis `0xf14c98...bb85e6` | ⚠️ Unaudited |
| Permit2 | unknown | metis | n/a | [`0x9e339e...f916dc`](./contracts/metis-1088/0x9e339e1a98fb8d3df16edde78652cfa98cf916dc/) | ⚠️ Unaudited |
| sDOG | unknown | sonic | n/a | [`0x50bc6e...fa18b6`](./contracts/sonic-146/0x50bc6e1dff8039a4b967c1bf507ba5ea13fa18b6/) | ⚠️ Unaudited |
| sMaia | unknown | metis | n/a | 2 deployments: metis [`0x54ccc7...e1ea1c`](./contracts/metis-1088/0x54ccc76091fe30bcce8b0dae102d264d24e1ea1c/); metis `0x559119...d5ab84` | ⚠️ Unaudited |
| StakingHelper | periphery | metis | n/a | 2 deployments: metis [`0x1c86af...d47802`](./contracts/metis-1088/0x1c86afe9f9af4afc23bd1f50191c5c0192d47802/); metis `0xcee8b8...291533` | ⚠️ Unaudited |
| StakingWarmup | unknown | metis | n/a | [`0x94af21...035cea`](./contracts/metis-1088/0x94af219709867091ab0038466203856179035cea/) | ⚠️ Unaudited |
| TimeBondDepository | unknown | metis | n/a | 9 deployments: metis [`0x15ac59...e3fe70`](./contracts/metis-1088/0x15ac5940d9805fa7d7e57e2e931f4f2e32e3fe70/); metis `0x4c1bbb...acd315`; metis `0x5c6b07...dbbf75`; metis `0x62c90f...3078c5`; metis `0x63e132...6c4afc`; metis `0x6e23a7...c1f578`; metis `0xcebd1c...28ac74`; metis `0xd39f30...bce5ca`; metis `0xea0415...c74a1d` | ⚠️ Unaudited |
| TimeBondingCalculator | unknown | metis | n/a | 3 deployments: metis [`0xd23d70...46a0be`](./contracts/metis-1088/0xd23d70eec1f7ba5c4842a9c124bdb6189e46a0be/); metis `0xf1c8d7...505031`; metis `0xfcc66d...7c0fa1` | ⚠️ Unaudited |
| TimeStaking | unknown | metis | n/a | 2 deployments: metis [`0xd1d003...9b2b81`](./contracts/metis-1088/0xd1d003804b08572cafcf2ba2729b49369e9b2b81/); metis `0xe2546b...3c9be1` | ⚠️ Unaudited |
| TimeTreasury | operational_periphery | metis | n/a | 2 deployments: metis [`0x3d183e...520fa9`](./contracts/metis-1088/0x3d183e4f3eef0191ecffafd7ffc5df8d38520fa9/); metis `0x9d99ad...894285` | ⚠️ Unaudited |
| UniswapInterfaceMulticall | periphery | metis | n/a | [`0xd5c532...f444b5`](./contracts/metis-1088/0xd5c532676c96029d5188b5bf5c5ff959b8f444b5/) | ⚠️ Unaudited |
| UnsupportedProtocol | unknown | metis | n/a | [`0xccf19f...4b2a1e`](./contracts/metis-1088/0xccf19f7a90167b13c377db89ab6e8f5c8e4b2a1e/) | ⚠️ Unaudited |
| ve | unknown | metis | n/a | 3 deployments: metis [`0x7d9767...c3ab3f`](./contracts/metis-1088/0x7d9767e65612527beb51e0228f7ce17870c3ab3f/); metis `0xa4c546...15b65b`; metis `0xdff003...34808f` | ⚠️ Unaudited |
| ve_dist | unknown | metis | n/a | 9 deployments: metis [`0x04f783...b27f67`](./contracts/metis-1088/0x04f783ff9664be99ae6fc8c8aec379a287b27f67/); metis `0x305ba5...cae851`; metis `0x5dbda7...fa14c5`; metis `0xbf779d...27c982`; metis `0xc6fed9...eeec6d`; metis `0xccb2f4...276cf9`; metis `0xe9da18...b18cd5`; metis `0xeb23b0...5cab03`; metis `0xf271ee...7ff3e8` | ⚠️ Unaudited |
| VoteMaia | unknown | arbitrum | n/a | [`0x000000...b4d080`](./contracts/arbitrum-42161/0x000000f0c01c6200354f240000b7003668b4d080/) | ⚠️ Unaudited |
| ZeusToken | token | metis | n/a | 4 deployments: metis [`0x89dedf...4e8b28`](./contracts/metis-1088/0x89dedf49b43817ae4e54449e02ad2580504e8b28/); metis `0xaf0358...710d13`; metis `0xb29adb...5db458`; metis `0xe43375...fc4cfe` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (224)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Proxy (impl: 0x54de3b7b5d1993db4b2a93c897b5272fbd60e99e) | proxy | arbitrum | n/a | `0x54de3b...60e99e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x00fdfe...a3de0a` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x07fa01...4c6652` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x09e1df...b6b1e3` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x0ce4b9...14dba7` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x0f63c5...622224` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x0fb765...a25ac7` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x11fce6...81f6f8` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x138982...8c6ada` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x15c286...2e1727` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x17d464...558ef2` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x195b95...197f2c` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x1c2efb...d21958` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x1c5650...9ecd33` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x1cd66a...811043` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x22b457...e45c54` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x25356d...ec9950` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x2759e7...4469ba` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x291342...7d3e4e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x2a4f01...1f988d` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x2fa2c5...4353ef` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x3159e0...a40038` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x329fe9...fa0743` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x38fbd8...6483cb` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x40b4dd...705655` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x461c09...5a5011` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x4fa852...bfde33` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x4fae94...92d8b3` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x51d05d...145106` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x54f25d...0bf847` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x56c8e7...826a85` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x5bc377...f24166` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x5e000b...df2c9f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x64bd97...1ec814` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x66ca52...6963a6` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x692ee3...9dc6d7` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x698304...e44972` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x6a5607...48e191` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x6aea33...af4867` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x6b1a32...a1294d` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x6b8509...1ef457` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x6ddd6d...03ebb0` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x749da4...ca5cac` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x763f5c...65e845` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x76991a...841ad2` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x7705d3...790544` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x77c341...e86a51` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x7a11c3...aa657c` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x7e24d0...970123` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x7f61a7...a096fb` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x832e8c...15bb9b` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x839620...508940` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x84ca55...cd3f2d` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x85169b...ecd92f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x8bd881...b5f5af` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x8ca294...5fe354` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x8d765a...f438d5` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x8e2ba6...d57ef0` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x98dbc0...96875f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xa2c367...1cc127` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xa8262a...b2dbdc` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xaa151a...0edd94` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xaa557c...d5081e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xac25dc...000909` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xacce59...d2fa2a` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xadeace...e25db3` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xaf4fc2...5a7778` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xb0970f...03d536` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xb1f9d7...df7726` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xb313e6...1e86fa` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xb5feb8...90c12f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xb62c9d...5a21a8` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xb94754...f5cb11` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xb96010...a38dc2` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xbcc071...4b2e9d` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xbe31bb...7ccd23` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xbe7551...6717cf` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xbf2aca...8647ac` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc31409...1636d5` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc3a9c3...cd00df` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc66a15...a82ef7` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc7c5f0...60689e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xd643b7...2e0c07` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xd9e379...f5d323` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xdfd105...6e34d7` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xe19260...5de72b` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xe1c434...cdf217` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xe6f020...77a137` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xe7ca2a...9f41a7` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xe854fb...b89a29` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xe8a092...7489e8` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xeafc2b...436b51` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xf67cf8...a573fc` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xf7af13...872b4f` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x03574b...ab173f` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x0395a1...ac7625` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x03e12a...3fe775` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x0b0a0a...c916f6` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x0b8fd1...bb08e9` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x0f7528...64cabf` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x1082fc...f58143` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x1091fc...d39959` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x170193...028381` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x184732...4cafda` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x1963ba...91e6e6` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x1db38a...be787c` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x1fa408...50f020` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x223534...62660b` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x264cd3...3ada4d` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x2bf4a7...1ec933` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x35d212...ef69b2` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x371bd1...c5eafc` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x395163...61a58c` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x3a773e...6dc22c` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x3ad1e1...f59db4` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x3d6c69...1a9de8` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x3ff382...3b77ab` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x4433be...6f73a3` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x4547cd...501e5a` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x46650d...1d289e` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x48c394...00462e` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x4a0a47...2aac78` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x4eb03e...db3f64` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x4f52dc...510a43` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x525b02...b7eb21` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x538407...5d53ad` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x55df51...0aee14` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x59a1c8...069795` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x5abf65...5b9b71` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x5b8564...e6668e` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x5c6e25...fa6be4` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x5dccc5...071369` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x5f1961...455767` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x5f2b4c...7618a4` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x5f9c4c...42f145` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x604e89...804cf9` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x615a8b...8fc79b` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x673ec4...99ac7f` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x689853...a1ef5f` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x6e11b1...d62276` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x6f94d3...bf9613` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x703d71...35095d` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x7186c7...e74f35` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x749e46...228235` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x74e26f...98c852` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x76eae1...e1c378` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x79d65a...fc2ae9` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x79d80c...4d2a88` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x7b9a40...aa1f48` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x7c1a60...548661` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x7d41fc...7354ee` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x819946...6bcd9d` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x82f1d2...27eafa` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x82f93c...e986c9` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x839836...c46fe1` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x8560bc...f64c40` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x8623af...70e884` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x883bf9...bf72da` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x897e8c...37fb96` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x8a44e1...462c82` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x8c0da0...41418e` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x8c15c6...da7c47` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x8e1f22...38e871` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x8e6fef...0052ac` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x8fcafd...95440b` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x90b02a...2f49f4` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x92315a...1f14d5` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x948fbe...d21342` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x978dd6...dc9881` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x996542...879b39` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x99e884...901cd9` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x9b8162...5ed56a` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x9bc7ab...882b67` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x9d2dbe...87dcc6` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xa2bb18...6c1e44` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xa3c90e...6d10ca` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xa43f8a...8a4d0a` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xa70352...36f1f4` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xa90c54...e1bfd5` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xab65c5...69ad4e` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xabed04...091e7b` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xae642a...d82292` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xaee878...27e8df` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xb01df7...76ce22` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xb0b2a8...1317e9` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xb8f281...277b3a` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xbbdc4d...384cba` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xbc739c...b050c7` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xbd45b5...31b5f6` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xbe6618...96422f` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xbf27d3...512df8` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xc1ef68...2f025f` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xc2c338...78c851` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xc6a465...42f8d6` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xc82f82...1a57ec` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xc9631f...112a2d` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xca8365...82707b` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xcd0bd1...b7329a` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xce93f0...ee6ae7` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xcf5fb6...851742` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xd0b30a...44a46c` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xd20a0d...9d6f6f` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xd3e0e2...da65a3` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xd5a11c...c9905a` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xd5bb73...f2b5d3` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xd87beb...0c2f81` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xd983e5...92ec76` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xdd104c...4d0c92` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xe3ff2d...7eab9a` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xe55ae7...4708a2` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xe5bf71...67b56c` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xe95d8f...a022a1` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xecfbef...0a4df9` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xf01957...2a2baf` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xf063ee...499d5c` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xf10abb...804b8a` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xf235c6...7926bd` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xf3628b...ec724a` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xf55544...1a66f0` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xf78af9...729369` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xf7b5e9...b905ff` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3a516e...f644d9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x854711...c5ea73` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc57f0d...19427a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Maia DAO February 2023 - Zellic Audit Report.pdf](https://github.com/Zellic/publications/blob/master/Maia%20DAO%20February%202023%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2023-02 | stale | Direct | contract_name | 5 | n/a |
| [code4rena.com/audits/2023-05-maia-dao-ecosystem](https://code4rena.com/audits/2023-05-maia-dao-ecosystem) | Code4rena | Contest | 2023-05 | stale | Direct | n/a | 0 | n/a |
| [code4rena.com/reports/2023-05-maia](https://code4rena.com/reports/2023-05-maia) | Code4rena | Contest | 2023-05 | stale | Direct | contract_name | 1 | n/a |
| [Ulysses Protocol May 2023 - Zellic Audit Report.pdf](https://github.com/code-423n4/2023-05-maia/blob/main/audits/Ulysses%20Protocol%20May%202023%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2023-05 | stale | Direct | contract_name | 1 | n/a |
| [Maia DAO V2 Ecosystem - Zellic Audit Report.pdf](https://github.com/Zellic/publications/blob/master/Maia%20DAO%20V2%20Ecosystem%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2023-09 | stale | Direct | n/a | 0 | n/a |
| [Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf](https://github.com/Zellic/publications/blob/master/Maia%20DAO%20Ulysses%20Protocol%20May%202023%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2023-05 | stale | Direct | contract_name | 1 | n/a |
| [code4rena.com/audits/2023-09-maia-dao-ulysses](https://code4rena.com/audits/2023-09-maia-dao-ulysses) | Code4rena | Contest | 2023-09 | stale | Direct | n/a | 0 | n/a |
| [Maia DAO Ulysses Protocol - Zellic Audit Report.pdf](https://github.com/Zellic/publications/blob/master/Maia%20DAO%20Ulysses%20Protocol%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2023-12 | stale | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 269 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=9

Zero-match audit list:

- [13450] code4rena.com/audits/2023-05-maia-dao-ecosystem
- [13454] Maia DAO V2 Ecosystem - Zellic Audit Report.pdf
- [13456] code4rena.com/audits/2023-09-maia-dao-ulysses

Fork inheritance lineage and inherited audits are included when available.
