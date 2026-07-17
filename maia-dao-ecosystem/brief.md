# Agentic Audit Brief: Maia DAO Ecosystem

## Project Overview

- Project: Maia DAO Ecosystem (`maia-dao-ecosystem`)
- Website: [https://maiadao.io](https://maiadao.io)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:30.329Z
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
| BoostAggregatorFactory | registry | arbitrum | n/a | [`0x223f3862f28848784432dc48346d133aba94fbd4`](./contracts/arbitrum-42161/0x223f3862f28848784432dc48346d133aba94fbd4/) | ✅ Audited |
| FlywheelCore | unknown | metis | n/a | 18 deployments: metis [`0x02707dbe94175ed43ffb5db06d6a600f807a7c1a`](./contracts/metis-1088/0x02707dbe94175ed43ffb5db06d6a600f807a7c1a/); metis `0x34a3eb1e7c15f0a671fb465c35339a07340c62dd`; metis `0x3e68b8bd10a1ac1a0bd329b1e2ef8af691d388ce`; metis `0x471cae0aa27cdef793b5bb7100b9155164aad52d`; metis `0x50477f757676dc42c41203948cdfb00c4859d3a3`; metis `0x607a8a55a63d6f27f6cf1958f2734c69849d131b`; metis `0x6ac56ac0219e85eb6d0739c9ef4fc31b927df638`; metis `0x79fa3a6bfadf5cd0c1505532e29d8fef937383e4`; metis `0x7ab001a3e126151d2002ed3f179f92e77cc4efd8`; metis `0x81685ee4fcaf4e02b81a46c05aa315a99c9586aa`; metis `0x91bc0842f66e632e3b1b0857199b8b19e66fe837`; metis `0xa695577151f2ce8e49a87e4ecc2b1ebb0feb0b43`; metis `0xb8cfd3e99a2caa971a363539c1983cf234ff3e88`; metis `0xbc1907663ae06e858dc38e3208f944f4d50c097b`; metis `0xc136b62e3f16b7cfee1bfd5e82ca096471ac6762`; metis `0xc3a3c357b9c7ea1a16b02b1d66c2fd333116dd10`; metis `0xe555743ced6d2818a1207b837e69d2c57dd282b4`; metis `0xebb5565ffe2f5122110fba6c7c8bfdd85de4b8db` | ✅ Audited |
| HERMES | unknown | arbitrum | n/a | [`0x45940000009600102a1c002f0097c4a500fa00ab`](./contracts/arbitrum-42161/0x45940000009600102a1c002f0097c4a500fa00ab/) | ✅ Audited |
| Maia | unknown | arbitrum | n/a | [`0x00000000ea00f3f4000e7ed5ed91965b19f1009b`](./contracts/arbitrum-42161/0x00000000ea00f3f4000e7ed5ed91965b19f1009b/) | ✅ Audited |
| RewardsDepot | unknown | metis | n/a | 4 deployments: metis [`0x1e5a3dc1413ed59b961d17b6af643d0bd5bed31c`](./contracts/metis-1088/0x1e5a3dc1413ed59b961d17b6af643d0bd5bed31c/); metis `0x4312163bd0dffc3d12f97b462307b7eaa1b1117e`; metis `0x5ab5e78184542ac68638db0dd5e23599e8a24761`; metis `0xf2a8d927038646b1fb2e6354fdafa1feeb0c1015` | ✅ Audited |
| RootPort | unknown | arbitrum | n/a | [`0xd3e3599517f2036fa314e468d62135714fc03c56`](./contracts/arbitrum-42161/0xd3e3599517f2036fa314e468d62135714fc03c56/) | ✅ Audited |

### ⚠️ Verified + Unaudited (39)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BaseV1 | unknown | metis | n/a | 4 deployments: metis [`0x0ac0478017d3d38dc7f703fc1be0d10dad85fffb`](./contracts/metis-1088/0x0ac0478017d3d38dc7f703fc1be0d10dad85fffb/); metis `0x5873adcc66448e9006d51e1df2e21c9c0ed55eb4`; metis `0x94fab903c7585b03171c8e845fcbaefa008c0d8b`; metis `0xb27bbeaaca2c00d6258c3118bab6b5b6975161c8` | ⚠️ Unaudited |
| BaseV1BribeFactory | operational_periphery | metis | n/a | 9 deployments: metis [`0x27f7bdc4efb93056d195ee0b9d976ce828731a7e`](./contracts/metis-1088/0x27f7bdc4efb93056d195ee0b9d976ce828731a7e/); metis `0x2b723ed4491c5e0e9dfe647bc7d6b44dfb572be1`; metis `0x2f2ab7d7d9f5a38521c92b7e2204588c52e87f26`; metis `0x4a3e7f7e2b53441f7fed2813261f981911f7e253`; metis `0x5722bb45981b7d35fcb46dc02c5227c656a61c69`; metis `0x78c7036e6327a32258bb035ca6ee86ab4d212021`; metis `0x89b5902c2521d0d2a8fe55c0ea054fd030f34652`; metis `0x970c6991a10e6dd4eea7726518ed3cd71b87f906`; metis `0xf9fd7666949aaa6d5b3666ceb7ecb47529a327ee` | ⚠️ Unaudited |
| BaseV1Factory | registry | metis | n/a | 6 deployments: metis [`0x068233c5ceb836f0a5f0ec57ceac9cd9fb46509f`](./contracts/metis-1088/0x068233c5ceb836f0a5f0ec57ceac9cd9fb46509f/); metis `0x449315748f7d9326acd084f79f292768a04b5a8f`; metis `0x546c81cc29d95fcc48a956e71e6b885969e6c9f1`; metis `0x633a093c9e94f64500fc8fcbb48e90dd52f6668f`; metis `0x87eeb75d45ba14e111c77ae9dcef246623161deb`; metis `0xf5c4def9b17745337706c6edd91fcdf34c003a0e` | ⚠️ Unaudited |
| BaseV1GaugeFactory | operational_periphery | metis | n/a | 9 deployments: metis [`0x3c5436f1c7703451fb2dd8aa198f1019bcf9bd3f`](./contracts/metis-1088/0x3c5436f1c7703451fb2dd8aa198f1019bcf9bd3f/); metis `0x5e209c7eb7479bb98cfa9ce4e32306f2f3d550da`; metis `0x7cb109f969aee28525a4139f5d0efe30e8865004`; metis `0x81497c49d002ae2cde6b976dca56714123a018f6`; metis `0x844bf39cf0e81c250ab9a16845c60a25329a0aa6`; metis `0x9c27e8fa887073f991bd726be34be83adcb68778`; metis `0xdcf7438ccbe4bf7a6b1787cf92c98971dd52f956`; metis `0xf648f8ef87c5a15196355ff7b66dd0d6098de8b0`; metis `0xf70289835668762c1b615f7a6f5a8c0525bd92df` | ⚠️ Unaudited |
| BaseV1Minter | unknown | metis | n/a | 3 deployments: metis [`0xe6868a326db48e1e5d38bc2696e2bda8ae0005da`](./contracts/metis-1088/0xe6868a326db48e1e5d38bc2696e2bda8ae0005da/); metis `0xeb4562979a9820aefd44d4e6e724ef644def5cd1`; metis `0xf031bc60924e32af54976b78325af4d04acc4730` | ⚠️ Unaudited |
| BaseV1Router01 | adapter | metis | n/a | 7 deployments: metis [`0x10afc114105858a3911d16f33acc1ef7a98d7e3c`](./contracts/metis-1088/0x10afc114105858a3911d16f33acc1ef7a98d7e3c/); metis `0x2d4f788fdb262a25161aa6d6e8e1f18458da8441`; metis `0x50f0771194a531aaa0efc1334be7597a087beb4b`; metis `0x6bc8994ad01292d65ee6979a8c9105edcfbd91fb`; metis `0xbf9d63a5a2cb8d4892996097f213a5e355022c36`; metis `0xccbf835bac562464e6fd456cb36d5e6b8250191d`; metis `0xdfb3d497d14efbaf4a9fe50d2b66b8717b1c75a4` | ⚠️ Unaudited |
| BaseV1Voter | unknown | metis | n/a | 3 deployments: metis [`0x45ee37b64f9a23b54c72d1c3710a8c1252151b0c`](./contracts/metis-1088/0x45ee37b64f9a23b54c72d1c3710a8c1252151b0c/); metis `0x695fa60d8e32afe073c901636ad8b7039e3cd85e`; metis `0x879828da3a678d349a3c8d6b3d9c78e9ee31137f` | ⚠️ Unaudited |
| BaseV2GaugeManager | unknown | arbitrum | n/a | [`0x6560a407df42acf92e63ef08b676c422e6c74612`](./contracts/arbitrum-42161/0x6560a407df42acf92e63ef08b676c422e6c74612/) | ⚠️ Unaudited |
| BaseV2Minter | unknown | arbitrum | n/a | [`0x49283af8c7b4bfe4b716672d2989109e7e4d411e`](./contracts/arbitrum-42161/0x49283af8c7b4bfe4b716672d2989109e7e4d411e/) | ⚠️ Unaudited |
| BoringVault | core_logic | sonic | n/a | 2 deployments: sonic [`0x455d5f11fea33a8fa9d3e285930b478b6bf85265`](./contracts/sonic-146/0x455d5f11fea33a8fa9d3e285930b478b6bf85265/); sonic `0x4d85ba8c3918359c78ed09581e5bc7578ba932ba` | ⚠️ Unaudited |
| Brush | unknown | sonic | n/a | [`0xe51ee9868c1f0d6cd968a8b8c8376dc2991bfe44`](./contracts/sonic-146/0xe51ee9868c1f0d6cd968a8b8c8376dc2991bfe44/) | ⚠️ Unaudited |
| BurntHermes | unknown | arbitrum | n/a | [`0x3a0000000000e1007ceb00351f65a1806ecd937c`](./contracts/arbitrum-42161/0x3a0000000000e1007ceb00351f65a1806ecd937c/) | ⚠️ Unaudited |
| ClaimHelper | periphery | metis | n/a | 7 deployments: metis [`0x14c51bf8ef19c1bcfd9c0d075b4680c0bbb1e3c6`](./contracts/metis-1088/0x14c51bf8ef19c1bcfd9c0d075b4680c0bbb1e3c6/); metis `0x29c6850143cfca22fb76db2e33690524a1ea9017`; metis `0x3aa56d0afded4be626fffc18b9a97920dcd2cc55`; metis `0x7ce2d554b8b83ba82ed6236bc56895ce27845a2a`; metis `0x80184481270ba19d514746d59d793e196a6fd344`; metis `0x943aa393546fa20e9647f574e5b07e9ffd6f2955`; metis `0xeb6392f918a5309c241e1065ce2256b587cd7e66` | ⚠️ Unaudited |
| Distributor | operational_periphery | metis | n/a | 2 deployments: metis [`0x252f7818231486380e1d853baedffd42015a5120`](./contracts/metis-1088/0x252f7818231486380e1d853baedffd42015a5120/); metis `0xd1cf3aad25981b36686140b93ed4246317bb3048` | ⚠️ Unaudited |
| ERC20sMAIA | token | metis | n/a | [`0xd7a586ce5250befab2cc2239f7226b9602536e6a`](./contracts/metis-1088/0xd7a586ce5250befab2cc2239f7226b9602536e6a/) | ⚠️ Unaudited |
| FlywheelGaugeRewards | unknown | arbitrum | n/a | [`0x5174fa3cd4a9fd8113d8ab55975d4d1b079afabb`](./contracts/arbitrum-42161/0x5174fa3cd4a9fd8113d8ab55975d4d1b079afabb/) | ⚠️ Unaudited |
| GOGGLES | unknown | sonic | n/a | [`0x9fdbc3f8abc05fa8f3ad3c17d2f806c1230c4564`](./contracts/sonic-146/0x9fdbc3f8abc05fa8f3ad3c17d2f806c1230c4564/) | ⚠️ Unaudited |
| Hermes250 | unknown | metis | n/a | 2 deployments: metis [`0x44f9f257c341298de53abd2b85b00fa1456d3f15`](./contracts/metis-1088/0x44f9f257c341298de53abd2b85b00fa1456d3f15/); metis `0xcbcc9ac48aced0f4ae6d816fb9e7843990d4b4c2` | ⚠️ Unaudited |
| HeyAnon | unknown | sonic | n/a | [`0x79bbf4508b1391af3a0f4b30bb5fc4aa9ab0e07c`](./contracts/sonic-146/0x79bbf4508b1391af3a0f4b30bb5fc4aa9ab0e07c/) | ⚠️ Unaudited |
| MaiaBondDepository | unknown | metis | n/a | 14 deployments: metis [`0x3212c7f0d2f07707786dfe5e0a64aeffb4f072ac`](./contracts/metis-1088/0x3212c7f0d2f07707786dfe5e0a64aeffb4f072ac/); metis `0x3245f49dda5e717a69356e53fd407060e34dae69`; metis `0x5c89dcfb4b319b3878e2cfbffea75e681c24c2b6`; metis `0x8037603aa8a69b2b02615048c06f600255c7f30a`; metis `0x83de931543ba68fe9c2684ab350985f2c10e501a`; metis `0x89fef02c281cd1dcb4371dc9a32931e3dc8777c9`; metis `0xa67af8fc9ba71d6d031488a0465df2480b2b853c`; metis `0xb9791d1d5c33f79ca97f72fcd4c707da589ee28f`; metis `0xd1395b72350ec98887dc3d9b388fcc92fb778183`; metis `0xd211a32199f9a36a9a75a506ee17c4808f9353f1`; metis `0xddc272987d8db3584e48ef74761afaf5ecaa5297`; metis `0xec69ecd8d6f1301e4bd9de5a4e91364b01cdc963`; metis `0xee67fea89b6e165854fb8bcce0daee0e3a6cf980`; metis `0xf4d84c68c8a02530deddf5b67134b4d6f7c41a76` | ⚠️ Unaudited |
| MaiaDynamicRewards | unknown | metis | n/a | 5 deployments: metis [`0x010284f0f01344d22d3fec366a5f85dec16b4453`](./contracts/metis-1088/0x010284f0f01344d22d3fec366a5f85dec16b4453/); metis `0x2851a6c4e5d1704758bbd082f8b5c9b0d14ac04d`; metis `0x3ef1b87570fcf0d8ea3b4a053f4519c31c5f55b5`; metis `0x77fa1e788f5922aae35ca4780c25ed3648c01d89`; metis `0x8e4813d444c49844904f6c9875448abc2a3543cc` | ⚠️ Unaudited |
| MaiaERC20Token | token | metis | n/a | 2 deployments: metis [`0x31ba70a4a17b311f4d2beed181c89f1f909da00b`](./contracts/metis-1088/0x31ba70a4a17b311f4d2beed181c89f1f909da00b/); metis `0x72c232d56542ba082592dee7c77b1c6cfa758bcd` | ⚠️ Unaudited |
| MarathonLocker | unknown | metis | n/a | [`0x6efda282691ca242ee565d3acf8bf8ca9fa0243e`](./contracts/metis-1088/0x6efda282691ca242ee565d3acf8bf8ca9fa0243e/) | ⚠️ Unaudited |
| Multicall | periphery | metis | n/a | 3 deployments: metis [`0x0a889038442c8a1d6ebc6a5a4d07e98cf3ae5956`](./contracts/metis-1088/0x0a889038442c8a1d6ebc6a5a4d07e98cf3ae5956/); metis `0x4dba32437af93ce6b1740d44492978702b159afe`; metis `0xf14c98d45c55de0ece47d192638e2a5118bb85e6` | ⚠️ Unaudited |
| Permit2 | unknown | metis | n/a | [`0x9e339e1a98fb8d3df16edde78652cfa98cf916dc`](./contracts/metis-1088/0x9e339e1a98fb8d3df16edde78652cfa98cf916dc/) | ⚠️ Unaudited |
| sDOG | unknown | sonic | n/a | [`0x50bc6e1dff8039a4b967c1bf507ba5ea13fa18b6`](./contracts/sonic-146/0x50bc6e1dff8039a4b967c1bf507ba5ea13fa18b6/) | ⚠️ Unaudited |
| sMaia | unknown | metis | n/a | 2 deployments: metis [`0x54ccc76091fe30bcce8b0dae102d264d24e1ea1c`](./contracts/metis-1088/0x54ccc76091fe30bcce8b0dae102d264d24e1ea1c/); metis `0x559119275a8a862edbd2cde21196f4c758d5ab84` | ⚠️ Unaudited |
| StakingHelper | periphery | metis | n/a | 2 deployments: metis [`0x1c86afe9f9af4afc23bd1f50191c5c0192d47802`](./contracts/metis-1088/0x1c86afe9f9af4afc23bd1f50191c5c0192d47802/); metis `0xcee8b8d4c2bf24d44aff418bc113ea022d291533` | ⚠️ Unaudited |
| StakingWarmup | unknown | metis | n/a | [`0x94af219709867091ab0038466203856179035cea`](./contracts/metis-1088/0x94af219709867091ab0038466203856179035cea/) | ⚠️ Unaudited |
| TimeBondDepository | unknown | metis | n/a | 9 deployments: metis [`0x15ac5940d9805fa7d7e57e2e931f4f2e32e3fe70`](./contracts/metis-1088/0x15ac5940d9805fa7d7e57e2e931f4f2e32e3fe70/); metis `0x4c1bbb3c8a495c40108461fb97ec022405acd315`; metis `0x5c6b075e347695f23cfb5831e5f9b563afdbbf75`; metis `0x62c90f32e05776d811fd7dc1c2206413893078c5`; metis `0x63e132328138c0ae0287f679876c59b29d6c4afc`; metis `0x6e23a7981a7918b7b825a073dd20a4cfc9c1f578`; metis `0xcebd1cda107cb6f60daf6578433137925928ac74`; metis `0xd39f300731ad59ee755300d00e77ae2711bce5ca`; metis `0xea0415b511a1199f7e0822b8641ab49a44c74a1d` | ⚠️ Unaudited |
| TimeBondingCalculator | unknown | metis | n/a | 3 deployments: metis [`0xd23d70eec1f7ba5c4842a9c124bdb6189e46a0be`](./contracts/metis-1088/0xd23d70eec1f7ba5c4842a9c124bdb6189e46a0be/); metis `0xf1c8d77d345f4e4cb8457434e4fd3a677e505031`; metis `0xfcc66d3ad5b9fe0cb785b7d51dd08425397c0fa1` | ⚠️ Unaudited |
| TimeStaking | unknown | metis | n/a | 2 deployments: metis [`0xd1d003804b08572cafcf2ba2729b49369e9b2b81`](./contracts/metis-1088/0xd1d003804b08572cafcf2ba2729b49369e9b2b81/); metis `0xe2546b144efc3f8bd85d84b6ca64cc4f033c9be1` | ⚠️ Unaudited |
| TimeTreasury | operational_periphery | metis | n/a | 2 deployments: metis [`0x3d183e4f3eef0191ecffafd7ffc5df8d38520fa9`](./contracts/metis-1088/0x3d183e4f3eef0191ecffafd7ffc5df8d38520fa9/); metis `0x9d99ad8f5f9ce04253a31e3e31f9a438bd894285` | ⚠️ Unaudited |
| UniswapInterfaceMulticall | periphery | metis | n/a | [`0xd5c532676c96029d5188b5bf5c5ff959b8f444b5`](./contracts/metis-1088/0xd5c532676c96029d5188b5bf5c5ff959b8f444b5/) | ⚠️ Unaudited |
| UnsupportedProtocol | unknown | metis | n/a | [`0xccf19f7a90167b13c377db89ab6e8f5c8e4b2a1e`](./contracts/metis-1088/0xccf19f7a90167b13c377db89ab6e8f5c8e4b2a1e/) | ⚠️ Unaudited |
| ve | unknown | metis | n/a | 3 deployments: metis [`0x7d9767e65612527beb51e0228f7ce17870c3ab3f`](./contracts/metis-1088/0x7d9767e65612527beb51e0228f7ce17870c3ab3f/); metis `0xa4c546c8f3ca15aa537d2ac3f62ee808d915b65b`; metis `0xdff00310eeaec7a04b0808f266a57742c734808f` | ⚠️ Unaudited |
| ve_dist | unknown | metis | n/a | 9 deployments: metis [`0x04f783ff9664be99ae6fc8c8aec379a287b27f67`](./contracts/metis-1088/0x04f783ff9664be99ae6fc8c8aec379a287b27f67/); metis `0x305ba5aa6ce6d5a260a00d1e924edaa020cae851`; metis `0x5dbda704f368d4e5b67f19e706e16e9f20fa14c5`; metis `0xbf779daccd1704c736e6cb8c5a53138bef27c982`; metis `0xc6fed9712a7f1a25e4eb9fb1777ba40aa5eeec6d`; metis `0xccb2f438b2e9f5b129b6395e1685074a4f276cf9`; metis `0xe9da187a7987a15ddee08456800b0cc9f5b18cd5`; metis `0xeb23b0d96acb349de4a2de0fbb6f2ce31e5cab03`; metis `0xf271eea81053e1c25e51764edb004a03d37ff3e8` | ⚠️ Unaudited |
| VoteMaia | unknown | arbitrum | n/a | [`0x000000f0c01c6200354f240000b7003668b4d080`](./contracts/arbitrum-42161/0x000000f0c01c6200354f240000b7003668b4d080/) | ⚠️ Unaudited |
| ZeusToken | token | metis | n/a | 4 deployments: metis [`0x89dedf49b43817ae4e54449e02ad2580504e8b28`](./contracts/metis-1088/0x89dedf49b43817ae4e54449e02ad2580504e8b28/); metis `0xaf0358dc42c0869aadfff4000f6f1b5f0c710d13`; metis `0xb29adb169788e556a6076f12ae825948505db458`; metis `0xe43375f414b14e8a7fa8b8e32df4e6fa1bfc4cfe` | ⚠️ Unaudited |

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
| Proxy (impl: 0x54de3b7b5d1993db4b2a93c897b5272fbd60e99e) | proxy | arbitrum | n/a | `0x54de3b7b5d1993db4b2a93c897b5272fbd60e99e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x00fdfef33d8f101b556d2833b9d9797d36a3de0a` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x07fa011ccd2a732385ff7b267d4abd679f4c6652` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x09e1dfdceecf07332da707a0df3f76638fb6b1e3` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x0ce4b9946d9d03ec02753043f5717ce10814dba7` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x0f63c5b1d7949e8fcc7dc6ef3ffec58f4e622224` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x0fb7659f13f8c7d03c9147a02343c47545a25ac7` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x11fce669a83c164fd1882558ce35f04ca981f6f8` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x13898224e6b5968369bd9267a257735f808c6ada` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x15c286d003f939ea0ba0f0295be8c7058d2e1727` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x17d464ce6ffc973928b1e13c0e5af43cc8558ef2` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x195b95f6997a6194f18319d07372fa1b34197f2c` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x1c2efb3629167c4022a2c1dd70f92fa1e8d21958` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x1c565039b50dc330dff15f4f2e9d94af439ecd33` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x1cd66a649fc455d0942f8fbb8eebc950f1811043` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x22b4575a1289b5257e98666d211a8dd00ee45c54` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x25356d3669c4371e817493f298ab94bd48ec9950` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x2759e7891421c10eafa76c6c1be54a33454469ba` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x291342897cf97753af4bee51322e592aa87d3e4e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x2a4f01301e0dee705a6e7b45310967a3181f988d` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x2fa2c57111467ab758292916633ba30e374353ef` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x3159e0009ee509200e7023a700d2f09664a40038` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x329fe9889f3b42841a07be46542ad46690fa0743` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x38fbd8c77af018bc2395a76324767f8fea6483cb` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x40b4ddc439a21735ddd007d9757343b748705655` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x461c09c784ad83d076192fecc1c739126e5a5011` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x4fa8521a76880f8b4a88c4dcab39ee93e6bfde33` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x4fae94e57d1e02635b763d1511b08eb90d92d8b3` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x51d05dde07fe4afad25de49610bffa4b21145106` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x54f25d7bc05601cec0e3d0aa76bbb681cc0bf847` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x56c8e7c1f187b96eb25eeb0fef6d2bb8e9826a85` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x5bc377c7cc3348e8fcdbc8e38443299d0ff24166` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x5e000b54c35cdf9ee7dad58d12eca9458ddf2c9f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x64bd97c056aec2e31258e4c5f0548659b71ec814` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x66ca5243be232edd5ea3d4b9c7fb2a07556963a6` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x692ee35aebe1a9c43e320073fb7c9fee049dc6d7` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x69830412574917fe3fe52d18430dfb4fb6e44972` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x6a560783a786294ae287ab6cad043647a048e191` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x6aea33c56efc446d877cd84d813cff02a3af4867` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x6b1a32e7c183166c3e51daea8cebbf091ea1294d` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x6b850937b1b3a4b1ae89db32485b79281c1ef457` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x6ddd6dfb798ecb59f4ede160d00c5a7a4d03ebb0` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x749da4bea381fafcd093b996160976ea00ca5cac` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x763f5cceac9df10c082e84fe5e09141f1365e845` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x76991a67bf582966b2a8ef6e00bec8c58e841ad2` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x7705d358e6558c4dbddfa70eac7000ef08790544` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x77c3418a1c7b95cbe49084b07b9047ff9ce86a51` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x7a11c3211dcf4c81a3531b5fa2b7447c9aaa657c` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x7e24d08a62c26a6adf087a39c5c945d9d6970123` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x7f61a71d3e7e422831a5aea8f47d052c63a096fb` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x832e8cc6bd70b65912f5a1e8daf1b716af15bb9b` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x83962023d431c3921978c95d08d7a259cd508940` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x84ca55acb36f75e306b3ea0c0292e8540ccd3f2d` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x85169bfde96b55e3e816be96bf4e14433decd92f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x8bd88148c75c4dbfec6fc0c805a94dd6eeb5f5af` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x8ca294dffd8a865093dfc3c9e41f0be1205fe354` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x8d765a010fa57526c5b39484e05841e1aaf438d5` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x8e2ba6df9e70b9b0e6d6b816597edd607cd57ef0` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x98dbc0365febb5112d50957176dfb5aed296875f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xa2c36773ed49cc7abd490374c4243658991cc127` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xa8262a6a80539c5c0cbe9c11b6d0f4d15db2dbdc` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xaa151a57e7244d9d20028d1f501ccb8fa60edd94` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xaa557c9c5e8439947295d841c459a97fcbd5081e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xac25dca233ddbee5d343d1358524d81e38000909` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xacce5906e2901590ef5261a19f5a2381c8d2fa2a` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xadeacea32f09c6de5671c5150ec57fa12ee25db3` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xaf4fc278f8a1d12c5d48f48abe179ca2285a7778` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xb0970f86020298183b1a357424d221436c03d536` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xb1f9d786592495b8385434426330622fe9df7726` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xb313e6548bc69d9d9362d7996939c11b671e86fa` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xb5feb84f36b273b2981f609f2ea3963b6190c12f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xb62c9d350431a464b4e3c8e2b639b28a4b5a21a8` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xb947549916f490a77a564c320675cbb29cf5cb11` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xb9601006c5c0326fe1267a3a6882d01629a38dc2` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xbcc0716d72dad001ff518a1390b85db3664b2e9d` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xbe31bb1088927a43b74860f3dc4e8e48757ccd23` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xbe7551d9b0a7a913ef7bf3f08a9f142eee6717cf` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xbf2aca1c98d6c84fd3d80eac9004cc38988647ac` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc31409980b4a1af929448d71c57e56e91b1636d5` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc3a9c37f953fc7c651c833c1e3026fd6f5cd00df` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc66a15c837dff4994bcfc6e0c2b588f0d0a82ef7` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc7c5f05e612798c336b74be0625ca887e060689e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xd643b7203a1878234f322dee5be22995142e0c07` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xd9e379ff2c548e193cb0e814da535e8303f5d323` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xdfd1056c3bacb701cb0eb04f02d57bea456e34d7` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xe192605ecc8bd1748939100d8807922c915de72b` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xe1c434508b2d75d065d54321dd6d0918accdf217` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xe6f020f0ba0cea7156b9821c8fddedb59c77a137` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xe7ca2a4057a832e74cd143112392aaf27a9f41a7` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xe854fb4b44713f68d06ab54c4a6d484087b89a29` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xe8a092a21f8f59c15be03ee4856e5970ed7489e8` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xeafc2b46de46f8c18df6e578e7075e3ade436b51` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xf67cf8528dc2d8d59f4395dce51f25c74da573fc` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xf7af13be0a5ac0c94105415bdcd1e88a74872b4f` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x03574b098f144ce725cba98413d884030cab173f` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x0395a1f9d84f264fab6d313f5f7ee2b495ac7625` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x03e12a438d2fc849bc7531a1f2834bdb303fe775` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x0b0a0a228756400bb5175847e2683e8f0ec916f6` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x0b8fd13806c75480991ffaf1c5d5808cfdbb08e9` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x0f7528c20445d735d18535a627ee1ebd5a64cabf` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x1082fc0d12c8e5c45b803ff62128b68515f58143` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x1091fc55d0a928aa03987c1749f6e871b3d39959` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x17019336ff338fbbd6a9dc1787a3eba36f028381` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x184732bbc3646496019b8ba7088c96c96c4cafda` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x1963ba4ccaa07e5d3d2b39b60131b9efa591e6e6` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x1db38a4ccc1fc633b3d5bbf1b15934928dbe787c` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x1fa4083501c9e94c4f1eb14fe745f9a20550f020` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x2235342de9cc43cb43f9cfe58fe3fff77b62660b` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x264cd3f9e6204523a0dc9db2e2c331bad73ada4d` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x2bf4a7c67249fc4a49569dc68ef760b0001ec933` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x35d212970137329342a4c591cdf3e65eb6ef69b2` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x371bd1e2cb335fa4b400c8243f06f1a9ddc5eafc` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x39516310faf49a62b9fb40d6cf8e4995a861a58c` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x3a773efc27a173230ad3c0d66b58e478f96dc22c` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x3ad1e196c9e6d6e9616e20bd7fd0291959f59db4` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x3d6c69b74efb08dbaedf1ee9779c1f49911a9de8` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x3ff382c414a9d8fe97a5c8eeb850c859823b77ab` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x4433be92dfc2ee2e5cb958bddf89d722496f73a3` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x4547cd3dafbae435a53c3954dce0bfc32b501e5a` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x46650dddc1ab2b4b99fbf9f54679c9b0631d289e` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x48c3946f8df0db554b8d4d74cdea01f93900462e` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x4a0a47f0783038e2c2590874c765fc0b2b2aac78` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x4eb03e32603c51294f42f66cd51b4f1b59db3f64` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x4f52dc48b0a7cdc7d69903cace4ef860fa510a43` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x525b020e09b83ab7bca425efa4f4efc57cb7eb21` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x53840754427f9a672493289fd3ad5252f05d53ad` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x55df51dea18d717b396ea4c21d9f4bba770aee14` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x59a1c813b9d82a687d72f6fab16ca6a5f4069795` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x5abf65e465bdbd97a83d969ae89af781c65b9b71` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x5b8564d9d1d9ace3eaa798446818a08e47e6668e` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x5c6e25d3617dbff44d33dbeaacd93f61ddfa6be4` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x5dccc51d347005e229c30afdfebe0c274b071369` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x5f1961a1c8ca1797e393ba9d92e48ec886455767` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x5f2b4c136d45777effca1216a2a2c693b27618a4` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x5f9c4c8ae8156c08c6a3682102cff1f9db42f145` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x604e898636e3dfb5075dd1c10dc7d93c80804cf9` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x615a8bbfcd3882246febec89efc5c53b668fc79b` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x673ec421e0d068027f8fd89585f8d6e68899ac7f` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x68985350ca36f40ae3b081e27d2dcf4dcfa1ef5f` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x6e11b11265e3346369fe7a990db6421dc6d62276` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x6f94d3823f9803a9a9e01cb33edbbcb6d6bf9613` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x703d718d67f38219868113272ced32d7e735095d` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x7186c732063883fecfe42e82aaebfd47f8e74f35` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x749e46034618c6cbf64938b8de10092523228235` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x74e26fe58952ec9c18f6378a97fd71414198c852` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x76eae1061664e32f7ef85d612c9b5dbe7be1c378` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x79d65a8930b83485a34031251f0a41b954fc2ae9` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x79d80c321f4d2e53499168bdce42048e024d2a88` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x7b9a407af88c8aaa2c70a02fa0b09e8444aa1f48` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x7c1a606ed32777079dcd73b0fc768d3ec6548661` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x7d41fcac970ab1940dab70f9abc6538cc67354ee` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x8199467298e138ed69d6380b6f884bd0066bcd9d` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x82f1d2e44678af2d16792ed9cc5e0aaf8227eafa` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x82f93c0c822155ad07882ba2a76707a5abe986c9` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x83983682f54d12d0c78d2883caa9203acec46fe1` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x8560bc4e149dea4594ebe385b7f827216af64c40` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x8623afa4912673abe87d1f042916e1a94a70e884` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x883bf9a9a0a23ee006ff904d32f457391fbf72da` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x897e8c53e8d5b52d934d820cbb2bfdf44437fb96` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x8a44e189d05bc1b9e9b2334db3621b041a462c82` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x8c0da096d3e8caa6a670a7312605068ef141418e` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x8c15c6e175a4508034b804b4ce49023b0dda7c47` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x8e1f22d41b73c5b73d18cd8eb67128ad9b38e871` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x8e6fefd8d569b49b63e8216d546ee1b65d0052ac` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x8fcafd1375fdaffdb9cd007719d915d17195440b` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x90b02a384b6a6a1de5559c4c7056ffe8982f49f4` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x92315aaf5c8fa6f677b076b22a8712fec21f14d5` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x948fbe5a7123ee59dd6838b2c17b7effbfd21342` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x978dd6d297bf68565a3f7fd24d0cf0bf19dc9881` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x9965427afe27ff035ba8124e468f30f648879b39` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x99e88485941ec4ef442854bcfecfed7e4e901cd9` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x9b816263d9d4d87c1f1d7cf7845cd6aadf5ed56a` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x9bc7abd30b91c9b987f4e7216ff365cfef882b67` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x9d2dbe6fc1671c0e47a8e71e734431822087dcc6` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xa2bb184de113e96f56acf6799e1214ef686c1e44` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xa3c90e9708349767552c1ae35302130a246d10ca` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xa43f8a320bd0e60a0acd87ff5bf47143318a4d0a` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xa70352bb13a1097c0797834f971f87013536f1f4` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xa90c54a79dee89ffb6f834d5856b60cc8be1bfd5` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xab65c51aa3e71fcfa61c8e88ed26982d9c69ad4e` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xabed04966050497f6f979944b7576a7bc6091e7b` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xae642a1701e003129b6d965ef451c5fc8dd82292` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xaee878a3e0897da0cfb36f8efdace48bfb27e8df` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xb01df7be2efafbbe8ec48f42ce9cc0b99e76ce22` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xb0b2a8f758b0d0436f115c019b28a605411317e9` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xb8f281bf5cdd43155b98ecb0af07289fa8277b3a` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xbbdc4dc02496c2879a50dae2a457cf2902384cba` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xbc739ce0e937062c28e0730c4af7412096b050c7` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xbd45b5328fefce2b95f84177ce5d5087b331b5f6` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xbe66187ab4e33ce292235bddb79ac0c43296422f` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xbf27d359c64baaec598cf0769eaf4edea8512df8` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xc1ef689a266b32477de5f071bc08ee076b2f025f` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xc2c33894be6ed2dc690606179360095f7678c851` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xc6a465a95cee2414b8fc41997d0fce8e6942f8d6` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xc82f82c59b7efbaa3251f2164628fcc5241a57ec` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xc9631fc195d2f7e824a4839b836d013352112a2d` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xca8365b82907801f0c00d39485cc62060e82707b` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xcd0bd17223341718f4530b33665855590bb7329a` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xce93f03aff01ba9a23b8424380516668abee6ae7` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xcf5fb6ac308b5dba1eb16650867ef54475851742` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xd0b30a51257810d90ff0d2de61233a858144a46c` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xd20a0de47ad6f1fb4ad18c8d1d07afb3e89d6f6f` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xd3e0e29188f7267c7051be698953d08013da65a3` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xd5a11c40d5322f6ff26ebd20116c363773c9905a` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xd5bb730dab33f4ef9f003ea10578596beef2b5d3` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xd87beb1147323ba95a76c9ec391a2a50cd0c2f81` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xd983e54968862b1193f1d361b3d05a601d92ec76` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xdd104c4fe69b7ed7dc8a6c74a7e6a7fa6f4d0c92` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xe3ff2de25ec939da143e9a6c4bfe67f88f7eab9a` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xe55ae769e7f9da5a89085fed01faa879e64708a2` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xe5bf71302315504c3621c832101e1f94e667b56c` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xe95d8f7f0b73fbc3e4153507fb37d21bbda022a1` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xecfbefcf7210ff2667637b877ec806efc30a4df9` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xf019570184d868c1812bf7351c1060cdb92a2baf` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xf063ee819668d86c6246338eeaf01da368499d5c` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xf10abb3133e889c07bce253a63d8edf5dd804b8a` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xf235c60bfaa81cd5a6dfa9e8264bbb1cb37926bd` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xf3628b88177bf2eb5050b357619a710536ec724a` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xf55544f5cb36d4c65508343bfcb0c457af1a66f0` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xf78af946c8985312f3d25109b39baa70de729369` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xf7b5e9e122d1224a6f7e78d0411a84b1e5b905ff` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3a516edf6158d5bf1dd0b51337053c4acdf644d9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8547116635a062ffe4aba581eb4a61e516c5ea73` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc57f0dc8cc99d532ddf0ebcd59e02e2e4819427a` | ❓ Unverified |

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

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| metis | [`0x0ac0478017d3d38dc7f703fc1be0d10dad85fffb`](./contracts/metis-1088/0x0ac0478017d3d38dc7f703fc1be0d10dad85fffb/) | BaseV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x27f7bdc4efb93056d195ee0b9d976ce828731a7e`](./contracts/metis-1088/0x27f7bdc4efb93056d195ee0b9d976ce828731a7e/) | BaseV1BribeFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x068233c5ceb836f0a5f0ec57ceac9cd9fb46509f`](./contracts/metis-1088/0x068233c5ceb836f0a5f0ec57ceac9cd9fb46509f/) | BaseV1Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x3c5436f1c7703451fb2dd8aa198f1019bcf9bd3f`](./contracts/metis-1088/0x3c5436f1c7703451fb2dd8aa198f1019bcf9bd3f/) | BaseV1GaugeFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0xe6868a326db48e1e5d38bc2696e2bda8ae0005da`](./contracts/metis-1088/0xe6868a326db48e1e5d38bc2696e2bda8ae0005da/) | BaseV1Minter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x10afc114105858a3911d16f33acc1ef7a98d7e3c`](./contracts/metis-1088/0x10afc114105858a3911d16f33acc1ef7a98d7e3c/) | BaseV1Router01 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x45ee37b64f9a23b54c72d1c3710a8c1252151b0c`](./contracts/metis-1088/0x45ee37b64f9a23b54c72d1c3710a8c1252151b0c/) | BaseV1Voter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6560a407df42acf92e63ef08b676c422e6c74612`](./contracts/arbitrum-42161/0x6560a407df42acf92e63ef08b676c422e6c74612/) | BaseV2GaugeManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x49283af8c7b4bfe4b716672d2989109e7e4d411e`](./contracts/arbitrum-42161/0x49283af8c7b4bfe4b716672d2989109e7e4d411e/) | BaseV2Minter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x455d5f11fea33a8fa9d3e285930b478b6bf85265`](./contracts/sonic-146/0x455d5f11fea33a8fa9d3e285930b478b6bf85265/) | BoringVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xe51ee9868c1f0d6cd968a8b8c8376dc2991bfe44`](./contracts/sonic-146/0xe51ee9868c1f0d6cd968a8b8c8376dc2991bfe44/) | Brush | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3a0000000000e1007ceb00351f65a1806ecd937c`](./contracts/arbitrum-42161/0x3a0000000000e1007ceb00351f65a1806ecd937c/) | BurntHermes | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x14c51bf8ef19c1bcfd9c0d075b4680c0bbb1e3c6`](./contracts/metis-1088/0x14c51bf8ef19c1bcfd9c0d075b4680c0bbb1e3c6/) | ClaimHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x252f7818231486380e1d853baedffd42015a5120`](./contracts/metis-1088/0x252f7818231486380e1d853baedffd42015a5120/) | Distributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0xd7a586ce5250befab2cc2239f7226b9602536e6a`](./contracts/metis-1088/0xd7a586ce5250befab2cc2239f7226b9602536e6a/) | ERC20sMAIA | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5174fa3cd4a9fd8113d8ab55975d4d1b079afabb`](./contracts/arbitrum-42161/0x5174fa3cd4a9fd8113d8ab55975d4d1b079afabb/) | FlywheelGaugeRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x9fdbc3f8abc05fa8f3ad3c17d2f806c1230c4564`](./contracts/sonic-146/0x9fdbc3f8abc05fa8f3ad3c17d2f806c1230c4564/) | GOGGLES | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x44f9f257c341298de53abd2b85b00fa1456d3f15`](./contracts/metis-1088/0x44f9f257c341298de53abd2b85b00fa1456d3f15/) | Hermes250 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x79bbf4508b1391af3a0f4b30bb5fc4aa9ab0e07c`](./contracts/sonic-146/0x79bbf4508b1391af3a0f4b30bb5fc4aa9ab0e07c/) | HeyAnon | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x3212c7f0d2f07707786dfe5e0a64aeffb4f072ac`](./contracts/metis-1088/0x3212c7f0d2f07707786dfe5e0a64aeffb4f072ac/) | MaiaBondDepository | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x010284f0f01344d22d3fec366a5f85dec16b4453`](./contracts/metis-1088/0x010284f0f01344d22d3fec366a5f85dec16b4453/) | MaiaDynamicRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x31ba70a4a17b311f4d2beed181c89f1f909da00b`](./contracts/metis-1088/0x31ba70a4a17b311f4d2beed181c89f1f909da00b/) | MaiaERC20Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x6efda282691ca242ee565d3acf8bf8ca9fa0243e`](./contracts/metis-1088/0x6efda282691ca242ee565d3acf8bf8ca9fa0243e/) | MarathonLocker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x50bc6e1dff8039a4b967c1bf507ba5ea13fa18b6`](./contracts/sonic-146/0x50bc6e1dff8039a4b967c1bf507ba5ea13fa18b6/) | sDOG | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x54ccc76091fe30bcce8b0dae102d264d24e1ea1c`](./contracts/metis-1088/0x54ccc76091fe30bcce8b0dae102d264d24e1ea1c/) | sMaia | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x1c86afe9f9af4afc23bd1f50191c5c0192d47802`](./contracts/metis-1088/0x1c86afe9f9af4afc23bd1f50191c5c0192d47802/) | StakingHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x94af219709867091ab0038466203856179035cea`](./contracts/metis-1088/0x94af219709867091ab0038466203856179035cea/) | StakingWarmup | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x15ac5940d9805fa7d7e57e2e931f4f2e32e3fe70`](./contracts/metis-1088/0x15ac5940d9805fa7d7e57e2e931f4f2e32e3fe70/) | TimeBondDepository | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0xd23d70eec1f7ba5c4842a9c124bdb6189e46a0be`](./contracts/metis-1088/0xd23d70eec1f7ba5c4842a9c124bdb6189e46a0be/) | TimeBondingCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0xd1d003804b08572cafcf2ba2729b49369e9b2b81`](./contracts/metis-1088/0xd1d003804b08572cafcf2ba2729b49369e9b2b81/) | TimeStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x3d183e4f3eef0191ecffafd7ffc5df8d38520fa9`](./contracts/metis-1088/0x3d183e4f3eef0191ecffafd7ffc5df8d38520fa9/) | TimeTreasury | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0xccf19f7a90167b13c377db89ab6e8f5c8e4b2a1e`](./contracts/metis-1088/0xccf19f7a90167b13c377db89ab6e8f5c8e4b2a1e/) | UnsupportedProtocol | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x7d9767e65612527beb51e0228f7ce17870c3ab3f`](./contracts/metis-1088/0x7d9767e65612527beb51e0228f7ce17870c3ab3f/) | ve | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x04f783ff9664be99ae6fc8c8aec379a287b27f67`](./contracts/metis-1088/0x04f783ff9664be99ae6fc8c8aec379a287b27f67/) | ve_dist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x000000f0c01c6200354f240000b7003668b4d080`](./contracts/arbitrum-42161/0x000000f0c01c6200354f240000b7003668b4d080/) | VoteMaia | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x89dedf49b43817ae4e54449e02ad2580504e8b28`](./contracts/metis-1088/0x89dedf49b43817ae4e54449e02ad2580504e8b28/) | ZeusToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 42 |
| upstream | 1 |
| standard_library | 2 |
| needs_review | 224 |

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
