# Agentic Audit Brief: Aera

## Project Overview

- Project: Aera (`aera`)
- Website: [https://www.aera.finance](https://www.aera.finance)
- Lifecycle: active (Tier 0, 22.5% below peak)
- Generated: 2026-07-03T21:05:24.426Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-f007
- Chains: arbitrum, base, ethereum, polygon
- Contract surface: 225 unique implementations (435 raw deployments)
- DeFi Llama TVL: $126,119,552.00
- On-chain TVL (included contracts): $15,620.29
- TVL by chain: Polygon $11,402.24 | Ethereum $4,104.66 | Base $113.39

## Project Description

Onchain Capital Allocator. Structurally: 136 project-authored contract(s) across 4 chain(s); 3 ERC4626 vaults, 13 ERC20 tokens, 10 ERC721 NFTs, 9 Chainlink feeds; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 11 functional families. Its contracts share 31 common project-authored base contract(s) (proxy, erc1967upgrade, sweepable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 543; live-surface contracts included: 402 (319 live, 83 unknown).
- Excluded by liveness: 141 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 3/144 (2.1%)
- Deployed-live implementations: 144 of 225 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 3/147
- Verified + Unaudited implementations: 144
- Verified by bytecode match: 0
- Unverified implementations: 78
- Unique implementations: 225
- Raw deployments: 435
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): $15,615.62
- Latest audit: 2024-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 3 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 1.4% (OpenZeppelin, Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| OpenZeppelin | Tier 1 | 1 | 0.7% | 2024-05 |
| Spearbit | Tier 1 | 1 | 0.7% | 2023-09 |
| Unknown | Tier 2 | 1 | 0.7% | 2022-10 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AeraVaultV1 | core_logic | polygon | n/a | 3 deployments: ethereum `0x8a7c03...8327c9`; ethereum `0xbebb92...04ee56`; polygon [`0x3c1480...b4dafe`](./contracts/polygon-137/0x3c14801dc6402e0560d69083f2b238b4c4b4dafe/) | ✅ Audited |
| AeraVaultV2 | unknown | ethereum | n/a | [`0x14c79c...8f5a98`](./contracts/ethereum-1/0x14c79c24b2a82ce36e3f3d693aeea17e268f5a98/) | ✅ Audited |
| LlamaPayRouterOracle | operational_periphery | arbitrum | n/a | 7 deployments: arbitrum [`0x004e25...c79a8a`](./contracts/arbitrum-42161/0x004e254990fa27c6af52f5f91e8b79c3ecc79a8a/); arbitrum `0x0ad0c8...37cfeb`; arbitrum `0x4a0554...551778`; arbitrum `0x73d623...b9f5d1`; arbitrum `0x9c442d...1905b8`; arbitrum `0xe3e278...261cab`; arbitrum `0xff8e5a...298df2` | ✅ Audited |

### ⚠️ Verified + Unaudited (144)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SecuritizeVault | core_logic | polygon | n/a | 3 deployments: polygon [`0x7cbc5a...5b40fc`](./contracts/polygon-137/0x7cbc5a024fd2dd5099aec235e3a4143cf25b40fc/); polygon `0x9d6094...09f9a7`; polygon `0xa482be...791c5c` | ⚠️ Unaudited |
| ATokenVault | core_logic | polygon | n/a | 2 deployments: polygon [`0xb33166...1c8c4b`](./contracts/polygon-137/0xb33166e092afc5532c74041fd8793d96541c8c4b/); polygon `0xc16323...d6dfc2` | ⚠️ Unaudited |
| ATokenVault | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x2e603c...273c70`](./contracts/ethereum-1/0x2e603c8b383cc2da79d9562c5cde43368a273c70/); ethereum `0x2f79d4...ded54d` | ⚠️ Unaudited |
| PoolInstance | core_logic | ethereum | n/a | [`0x87870b...4fa4e2`](./contracts/ethereum-1/0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2/) | ⚠️ Unaudited |
| ATokenVault | core_logic | polygon | n/a | 2 deployments: polygon [`0x5e5057...316d18`](./contracts/polygon-137/0x5e5057b8d220eb8573bc342136fdf1d869316d18/); polygon `0xbf4374...38d289` | ⚠️ Unaudited |
| L2PoolInstance | core_logic | base | n/a | [`0xa238dd...98d1c5`](./contracts/base-8453/0xa238dd80c259a72e81d7e4664a9801593f98d1c5/) | ⚠️ Unaudited |
| SecuritizeVault | core_logic | polygon | n/a | 2 deployments: polygon [`0x4c1e5e...22b830`](./contracts/polygon-137/0x4c1e5e780269186a4fbb31c913b11b1a8922b830/); polygon `0x6a3187...6b754e` | ⚠️ Unaudited |
| PoolInstance | core_logic | polygon | n/a | [`0x794a61...4814ad`](./contracts/polygon-137/0x794a61358d6845594f94dc1db02a252b5b4814ad/) | ⚠️ Unaudited |
| ATokenVault | core_logic | polygon | n/a | 2 deployments: polygon [`0x2c616f...11254a`](./contracts/polygon-137/0x2c616f5dc3d482010d870d8a01b72cbb1711254a/); polygon `0xba8665...bb440e` | ⚠️ Unaudited |
| ATokenVault | core_logic | polygon | n/a | 2 deployments: polygon [`0x1f1e7b...adea61`](./contracts/polygon-137/0x1f1e7b1cc1df05924a6c039b3145a93d76adea61/); polygon `0xdcb1bd...e5ea7d` | ⚠️ Unaudited |
| ATokenVault | core_logic | polygon | n/a | 2 deployments: polygon [`0x24a73d...e29e4d`](./contracts/polygon-137/0x24a73dd9c5a66eadaceaf57bb9750b3a11e29e4d/); polygon `0x8ecc82...3cf102` | ⚠️ Unaudited |
| AaveProtocolDataProvider | unknown | base | n/a | 4 deployments: ethereum `0x7b4eb5...a138a3`; polygon `0x69fa68...310654`; base [`0x2d8a3c...df38ac`](./contracts/base-8453/0x2d8a3c5677189723c4cb8873cfc9c8976fdf38ac/); arbitrum `0x6b4e26...9ff93e` | ⚠️ Unaudited |
| AaveV3PositionOracle | operational_periphery | arbitrum | n/a | [`0xd4237b...d49043`](./contracts/arbitrum-42161/0xd4237b72d32106206d1659bb1943e95f75d49043/) | ⚠️ Unaudited |
| AeraV2Factory | registry | ethereum | n/a | 8 deployments: ethereum [`0x38896b...f1797d`](./contracts/ethereum-1/0x38896b4ac8420b8a2b768001da44d11109f1797d/); ethereum `0x950094...c27191`; polygon `0x49b428...5e30ec`; polygon `0xa1c908...db3094`; base `0x5cd0cb...5c53e1`; arbitrum `0x49b428...5e30ec`; arbitrum `0xaf2762...65cd46`; arbitrum `0xf626e2...80d2fb` | ⚠️ Unaudited |
| ArbitrumBridgeReceiver | operational_periphery | arbitrum | n/a | [`0x42480c...d38068`](./contracts/arbitrum-42161/0x42480c37b249e33aabaf4c22b20235656bd38068/) | ⚠️ Unaudited |
| ArrakisV2 | unknown | ethereum | n/a | 10 deployments: ethereum [`0x7f346f...e6df38`](./contracts/ethereum-1/0x7f346f1eb7a65ff83f51b3fd76dcc70979e6df38/); ethereum `0xaf0f96...7b134d`; ethereum `0xb5c3b2...6b09ba`; polygon [`0x7f346f...e6df38`](./contracts/polygon-137/0x7f346f1eb7a65ff83f51b3fd76dcc70979e6df38/); polygon `0xaf0f96...7b134d`; polygon `0xb5c3b2...6b09ba`; base [`0x7f346f...e6df38`](./contracts/base-8453/0x7f346f1eb7a65ff83f51b3fd76dcc70979e6df38/); arbitrum [`0x7f346f...e6df38`](./contracts/arbitrum-42161/0x7f346f1eb7a65ff83f51b3fd76dcc70979e6df38/); arbitrum `0xaf0f96...7b134d`; arbitrum `0xb5c3b2...6b09ba` | ⚠️ Unaudited |
| ArrakisV2Factory | registry | ethereum | n/a | 2 deployments: ethereum [`0x055b6d...273a88`](./contracts/ethereum-1/0x055b6d3919042be29c5f044a55529933e1273a88/); ethereum `0x453f7d...53857c` | ⚠️ Unaudited |
| ArrakisV2Factory | registry | ethereum | n/a | 4 deployments: ethereum [`0x26673a...b3b775`](./contracts/ethereum-1/0x26673a336a720532ebf1d225bfc7092772b3b775/); polygon [`0x26673a...b3b775`](./contracts/polygon-137/0x26673a336a720532ebf1d225bfc7092772b3b775/); base [`0x26673a...b3b775`](./contracts/base-8453/0x26673a336a720532ebf1d225bfc7092772b3b775/); arbitrum [`0x26673a...b3b775`](./contracts/arbitrum-42161/0x26673a336a720532ebf1d225bfc7092772b3b775/) | ⚠️ Unaudited |
| ArrakisV2Factory | registry | ethereum | n/a | 2 deployments: ethereum [`0xecb8ff...6c8288`](./contracts/ethereum-1/0xecb8ffcb2369ef188a082a662f496126f66c8288/); ethereum `0xf90aaf...be865d` | ⚠️ Unaudited |
| ArrakisV2Factory | registry | polygon | n/a | 2 deployments: polygon [`0x055b6d...273a88`](./contracts/polygon-137/0x055b6d3919042be29c5f044a55529933e1273a88/); polygon `0x453f7d...53857c` | ⚠️ Unaudited |
| ArrakisV2Factory | registry | polygon | n/a | 2 deployments: polygon [`0xecb8ff...6c8288`](./contracts/polygon-137/0xecb8ffcb2369ef188a082a662f496126f66c8288/); polygon `0xf90aaf...be865d` | ⚠️ Unaudited |
| ArrakisV2Factory | registry | base | n/a | 2 deployments: base [`0xecb8ff...6c8288`](./contracts/base-8453/0xecb8ffcb2369ef188a082a662f496126f66c8288/); base `0xf90aaf...be865d` | ⚠️ Unaudited |
| ArrakisV2Factory | registry | arbitrum | n/a | 2 deployments: arbitrum [`0x055b6d...273a88`](./contracts/arbitrum-42161/0x055b6d3919042be29c5f044a55529933e1273a88/); arbitrum `0x453f7d...53857c` | ⚠️ Unaudited |
| ArrakisV2Factory | registry | arbitrum | n/a | 2 deployments: arbitrum [`0xecb8ff...6c8288`](./contracts/arbitrum-42161/0xecb8ffcb2369ef188a082a662f496126f66c8288/); arbitrum `0xf90aaf...be865d` | ⚠️ Unaudited |
| ArrakisV2Helper | periphery | ethereum | n/a | 10 deployments: ethereum [`0x07d2ce...64449f`](./contracts/ethereum-1/0x07d2ceb4869dfe17e8d48c92a71edc3ae564449f/); ethereum `0x89e4be...7f07d6`; ethereum `0xccee73...5c8d9c`; polygon [`0x07d2ce...64449f`](./contracts/polygon-137/0x07d2ceb4869dfe17e8d48c92a71edc3ae564449f/); polygon `0x89e4be...7f07d6`; polygon `0xccee73...5c8d9c`; base `0x89e4be...7f07d6`; arbitrum [`0x07d2ce...64449f`](./contracts/arbitrum-42161/0x07d2ceb4869dfe17e8d48c92a71edc3ae564449f/); arbitrum `0x89e4be...7f07d6`; arbitrum `0xccee73...5c8d9c` | ⚠️ Unaudited |
| ArrakisV2Oracle | operational_periphery | arbitrum | n/a | 2 deployments: arbitrum [`0x8897f8...ddf5f5`](./contracts/arbitrum-42161/0x8897f86a6f765e6248407f5aba201e7587ddf5f5/); arbitrum `0x96b912...4ff88c` | ⚠️ Unaudited |
| ArrakisV2Resolver | unknown | ethereum | n/a | 10 deployments: ethereum [`0x4bc385...f905f5`](./contracts/ethereum-1/0x4bc385b1ddf0121cc40a0715cfd3befe52f905f5/); ethereum `0x535c5f...1cc7b8`; ethereum `0xb11bb8...c1f193`; polygon [`0x4bc385...f905f5`](./contracts/polygon-137/0x4bc385b1ddf0121cc40a0715cfd3befe52f905f5/); polygon `0x535c5f...1cc7b8`; polygon `0xb11bb8...c1f193`; base `0x535c5f...1cc7b8`; arbitrum [`0x4bc385...f905f5`](./contracts/arbitrum-42161/0x4bc385b1ddf0121cc40a0715cfd3befe52f905f5/); arbitrum `0x535c5f...1cc7b8`; arbitrum `0xb11bb8...c1f193` | ⚠️ Unaudited |
| ArrakisV2Router | adapter | ethereum | n/a | 2 deployments: ethereum [`0x6ac8ba...f61b94`](./contracts/ethereum-1/0x6ac8bab8b775a03b8b72b2940251432442f61b94/); ethereum `0xfe3d83...f15e3d` | ⚠️ Unaudited |
| ArrakisV2Router | adapter | polygon | n/a | 2 deployments: polygon [`0x6ac8ba...f61b94`](./contracts/polygon-137/0x6ac8bab8b775a03b8b72b2940251432442f61b94/); polygon `0xfe3d83...f15e3d` | ⚠️ Unaudited |
| ArrakisV2Router | adapter | base | n/a | 2 deployments: base [`0x6ac8ba...f61b94`](./contracts/base-8453/0x6ac8bab8b775a03b8b72b2940251432442f61b94/); base `0xfe3d83...f15e3d` | ⚠️ Unaudited |
| ArrakisV2Router | adapter | arbitrum | n/a | 2 deployments: arbitrum [`0x6ac8ba...f61b94`](./contracts/arbitrum-42161/0x6ac8bab8b775a03b8b72b2940251432442f61b94/); arbitrum `0xfe3d83...f15e3d` | ⚠️ Unaudited |
| BaseBulker | unknown | polygon | n/a | 3 deployments: polygon [`0x59e242...7f7cd6`](./contracts/polygon-137/0x59e242d352ae13166b4987ae5c990c232f7f7cd6/); base `0x78d067...212a8c`; arbitrum `0xbde8f3...7b372d` | ⚠️ Unaudited |
| BorrowLogic | core_logic | arbitrum | n/a | 2 deployments: arbitrum [`0xa25d9f...fcfddd`](./contracts/arbitrum-42161/0xa25d9f14cfa40d3227ed9a48b124667ddffcfddd/); arbitrum `0xd1b3e2...ddcfa3` | ⚠️ Unaudited |
| BridgeLogic | operational_periphery | arbitrum | n/a | [`0xfe7636...5401e4`](./contracts/arbitrum-42161/0xfe76366a986b72c3f2923e05e6ba07b7de5401e4/) | ⚠️ Unaudited |
| BucketTracker | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x1582e7...08408e`](./contracts/arbitrum-42161/0x1582e73d95f33e39b421f9224d9e7daf4508408e/); arbitrum `0x8a36b7...f29c7e` | ⚠️ Unaudited |
| BucketTracker | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x3f5901...819344`](./contracts/arbitrum-42161/0x3f5901c841f4d757c7db37ef585475aba7819344/); arbitrum `0xa83825...3a29b2` | ⚠️ Unaudited |
| Bulker | unknown | ethereum | n/a | [`0x74a81f...8d80c3`](./contracts/ethereum-1/0x74a81f84268744a40febc48f8b812a1f188d80c3/) | ⚠️ Unaudited |
| Comet | unknown | polygon | n/a | 2 deployments: polygon [`0x88730d...9f7fae`](./contracts/polygon-137/0x88730d254a2f7e6ac8388c3198afd694ba9f7fae/); polygon `0xb21b06...ad3775` | ⚠️ Unaudited |
| Comet | unknown | base | n/a | 2 deployments: base [`0x2f9b94...01d3a1`](./contracts/base-8453/0x2f9b94069788f7c71e9daa84314062609501d3a1/); base `0x7bef48...1c1065` | ⚠️ Unaudited |
| Comet | unknown | arbitrum | n/a | 7 deployments: ethereum `0x50cb5e...4d634e`; polygon `0x27c348...8df4ae`; base `0x1f9d71...b74de4`; base `0xf25212...246445`; base `0xfbcbff...bce501`; arbitrum [`0x14d2c9...5239c6`](./contracts/arbitrum-42161/0x14d2c9dd16304e8a95fc8395a37f17b6c15239c6/); arbitrum `0xf25212...246445` | ⚠️ Unaudited |
| CometFactory | unknown | ethereum | n/a | 5 deployments: ethereum [`0x1c1853...db1ae7`](./contracts/ethereum-1/0x1c1853bc7c6bff0d276da53972c0b1a066db1ae7/); polygon `0x2f9e39...29125b`; polygon `0x8495af...614798`; base `0x27c348...8df4ae`; arbitrum `0xe2aa51...484ae9` | ⚠️ Unaudited |
| CometProxyAdmin | unknown | polygon | n/a | 6 deployments: ethereum `0x1ec63b...2e8779`; polygon [`0x14d2c9...5239c6`](./contracts/polygon-137/0x14d2c9dd16304e8a95fc8395a37f17b6c15239c6/); polygon `0xd712ac...b975f9`; base `0xa5edbd...905dca`; base `0xbde8f3...7b372d`; arbitrum `0xd10b40...4d715e` | ⚠️ Unaudited |
| CometRewards | unknown | base | n/a | 4 deployments: ethereum `0x1b0e76...885a40`; polygon `0x459396...31e581`; base [`0x123964...00a6b1`](./contracts/base-8453/0x123964802e6ababbe1bc9547d72ef1b69b00a6b1/); arbitrum `0x88730d...9f7fae` | ⚠️ Unaudited |
| CometWithExtendedAssetList | unknown | ethereum | n/a | [`0xa17581...93ae94`](./contracts/ethereum-1/0xa17581a9e3356d9a858b789d68b4d866e593ae94/) | ⚠️ Unaudited |
| CometWithExtendedAssetList | unknown | ethereum | n/a | [`0xc3d688...84cdc3`](./contracts/ethereum-1/0xc3d688b66703497daa19211eedff47f25384cdc3/) | ⚠️ Unaudited |
| CometWithExtendedAssetList | unknown | polygon | n/a | [`0xf25212...246445`](./contracts/polygon-137/0xf25212e676d1f7f89cd72ffee66158f541246445/) | ⚠️ Unaudited |
| CometWithExtendedAssetList | unknown | base | n/a | [`0x46e6b2...0970bf`](./contracts/base-8453/0x46e6b214b524310239732d51387075e0e70970bf/) | ⚠️ Unaudited |
| CometWithExtendedAssetList | unknown | base | n/a | [`0x9c4ec7...ff58bf`](./contracts/base-8453/0x9c4ec768c28520b50860ea7a15bd7213a9ff58bf/) | ⚠️ Unaudited |
| CometWithExtendedAssetList | unknown | base | n/a | [`0xb125e6...15eb2f`](./contracts/base-8453/0xb125e6687d4313864e53df431d5425969c15eb2f/) | ⚠️ Unaudited |
| CometWithExtendedAssetList | unknown | arbitrum | n/a | [`0x9c4ec7...ff58bf`](./contracts/arbitrum-42161/0x9c4ec768c28520b50860ea7a15bd7213a9ff58bf/) | ⚠️ Unaudited |
| CompoundV3PositionOracle | operational_periphery | arbitrum | n/a | [`0x77ca11...4fb4a0`](./contracts/arbitrum-42161/0x77ca117d864229681a72b1b2ee71b7d84f4fb4a0/) | ⚠️ Unaudited |
| Configurator | unknown | ethereum | n/a | 2 deployments: ethereum [`0x316f97...d336e3`](./contracts/ethereum-1/0x316f9708bb98af7da9c68c1c3b5e79039cd336e3/); ethereum `0xcfc1fa...80df4f` | ⚠️ Unaudited |
| Configurator | unknown | polygon | n/a | 2 deployments: polygon [`0x3b6f1f...8db8b4`](./contracts/polygon-137/0x3b6f1fe07cdab8a43f39c3b99ba8ff26e28db8b4/); polygon `0xf41274...e964f0` | ⚠️ Unaudited |
| Configurator | unknown | polygon | n/a | 2 deployments: polygon [`0x83e0f7...26e738`](./contracts/polygon-137/0x83e0f742cacbe66349e3701b171ee2487a26e738/); polygon `0x9c4ec7...ff58bf` | ⚠️ Unaudited |
| Configurator | unknown | base | n/a | 2 deployments: base [`0x459396...31e581`](./contracts/base-8453/0x45939657d1ca34a8fa39a924b71d28fe8431e581/); base `0x83e0f7...26e738` | ⚠️ Unaudited |
| Configurator | unknown | arbitrum | n/a | [`0x8495af...614798`](./contracts/arbitrum-42161/0x8495af03fb797e2965bcb42cb0693e1c15614798/) | ⚠️ Unaudited |
| ConfiguratorLogic | governance | arbitrum | n/a | [`0xaa84d4...54aaa9`](./contracts/arbitrum-42161/0xaa84d489f71d2a8d71e992143a2de8b3aa54aaa9/) | ⚠️ Unaudited |
| ConfiguratorProxy | unknown | arbitrum | n/a | [`0xb21b06...ad3775`](./contracts/arbitrum-42161/0xb21b06d71c75973babde35b49ffdac3f82ad3775/) | ⚠️ Unaudited |
| EModeLogic | unknown | arbitrum | n/a | [`0x70bf6e...510b5e`](./contracts/arbitrum-42161/0x70bf6ec6fca41a7d08dcbb9909985ac0a4510b5e/) | ⚠️ Unaudited |
| esXai | unknown | arbitrum | n/a | [`0x8d6c06...f19d6b`](./contracts/arbitrum-42161/0x8d6c063656b00e5c37ce007c0f99848d58f19d6b/) | ⚠️ Unaudited |
| esXai2 | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x5b4116...4e91c9`](./contracts/arbitrum-42161/0x5b41169626452d70928b1d7fe7a3d8b4a24e91c9/); arbitrum `0xb38e2e...7b55df` | ⚠️ Unaudited |
| esXai3 | unknown | arbitrum | n/a | [`0x275e64...ed92a3`](./contracts/arbitrum-42161/0x275e6469ba0f86f09404cfe9b7d583d65eed92a3/) | ⚠️ Unaudited |
| esXai4 | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x4c749d...76700c`](./contracts/arbitrum-42161/0x4c749d097832de2fecc989ce18fdc5f1bd76700c/); arbitrum `0x4efc74...401a62` | ⚠️ Unaudited |
| FlashLoanLogic | unknown | arbitrum | n/a | [`0x1d69c4...9fc553`](./contracts/arbitrum-42161/0x1d69c48a35ddd241e72a31db0e637676d89fc553/) | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | arbitrum | n/a | [`0x794a61...4814ad`](./contracts/arbitrum-42161/0x794a61358d6845594f94dc1db02a252b5b4814ad/) | ⚠️ Unaudited |
| L2Pool | core_logic | arbitrum | n/a | 2 deployments: arbitrum [`0x15196d...f3ad1f`](./contracts/arbitrum-42161/0x15196d30bc37d2fc5c718ffcd9d7687d76f3ad1f/); arbitrum `0xbcb167...f8813b` | ⚠️ Unaudited |
| LiquidationLogic | unknown | arbitrum | n/a | [`0x398808...21bc6e`](./contracts/arbitrum-42161/0x398808db36da6ba4e30d4fb88d72c3473921bc6e/) | ⚠️ Unaudited |
| MainnetBulker | unknown | ethereum | n/a | [`0xa397a8...4b00c7`](./contracts/ethereum-1/0xa397a8c2086c554b531c02e29f3291c9704b00c7/) | ⚠️ Unaudited |
| Morpho | unknown | polygon | n/a | 4 deployments: ethereum `0xbbbbbb...eeffcb`; polygon [`0x1bf0c2...a25f67`](./contracts/polygon-137/0x1bf0c2541f820e775182832f06c0b7fc27a25f67/); base `0xbbbbbb...eeffcb`; arbitrum `0x6c247b...518f5e` | ⚠️ Unaudited |
| MultiDepositorVaultFactory | registry | ethereum | n/a | 2 deployments: ethereum [`0x29722c...b90b4f`](./contracts/ethereum-1/0x29722cc9a1cacff4a15914f9bc274b46f3b90b4f/); base [`0x29722c...b90b4f`](./contracts/base-8453/0x29722cc9a1cacff4a15914f9bc274b46f3b90b4f/) | ⚠️ Unaudited |
| NodeLicense | unknown | arbitrum | n/a | [`0xf76545...4c8c71`](./contracts/arbitrum-42161/0xf765452e587ad0ae785dc984963897c05d4c8c71/) | ⚠️ Unaudited |
| NodeLicense10 | unknown | arbitrum | n/a | [`0x249b8a...343fb6`](./contracts/arbitrum-42161/0x249b8a8af9152a08ba3cf3e106962566e8343fb6/) | ⚠️ Unaudited |
| NodeLicense8 | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x14e6e5...76db49`](./contracts/arbitrum-42161/0x14e6e53dc0e4d0d02644a96f4bc1798a7876db49/); arbitrum `0xc6bcca...1e2aa0` | ⚠️ Unaudited |
| NodeLicense9 | unknown | arbitrum | n/a | [`0xe72b00...876c7f`](./contracts/arbitrum-42161/0xe72b004fca3a05251c6c8d1bf1482b9308876c7f/) | ⚠️ Unaudited |
| OptimismBridgeReceiver | operational_periphery | base | n/a | [`0x18281d...3c468a`](./contracts/base-8453/0x18281dfc4d00905da1aaa6731414eaba843c468a/) | ⚠️ Unaudited |
| PALMManager | governance | ethereum | n/a | 2 deployments: ethereum [`0x0a7d53...b3013e`](./contracts/ethereum-1/0x0a7d53ff9c56a3bd6a4a369f14ba3ba523b3013e/); ethereum `0xecf6a0...69c38f` | ⚠️ Unaudited |
| PALMManager | governance | ethereum | n/a | 2 deployments: ethereum [`0x880d0a...b1c4e8`](./contracts/ethereum-1/0x880d0a82dba76b4802f76a509d3aab1d22b1c4e8/); ethereum `0xf82069...862a89` | ⚠️ Unaudited |
| PALMManager | governance | ethereum | n/a | 2 deployments: ethereum [`0x8eebba...92856e`](./contracts/ethereum-1/0x8eebba5f7f433a8afd2794eabd6a7fc9bb92856e/); ethereum `0xf90ec8...b8877e` | ⚠️ Unaudited |
| PALMManager | governance | polygon | n/a | 2 deployments: polygon [`0x0a7d53...b3013e`](./contracts/polygon-137/0x0a7d53ff9c56a3bd6a4a369f14ba3ba523b3013e/); polygon `0xecf6a0...69c38f` | ⚠️ Unaudited |
| PALMManager | governance | polygon | n/a | 2 deployments: polygon [`0x8eebba...92856e`](./contracts/polygon-137/0x8eebba5f7f433a8afd2794eabd6a7fc9bb92856e/); polygon `0xf90ec8...b8877e` | ⚠️ Unaudited |
| PALMManager | governance | base | n/a | 2 deployments: base [`0x0a7d53...b3013e`](./contracts/base-8453/0x0a7d53ff9c56a3bd6a4a369f14ba3ba523b3013e/); base `0x8e0cfa...b3d511` | ⚠️ Unaudited |
| PALMManager | governance | arbitrum | n/a | 2 deployments: arbitrum [`0x0a7d53...b3013e`](./contracts/arbitrum-42161/0x0a7d53ff9c56a3bd6a4a369f14ba3ba523b3013e/); arbitrum `0xecf6a0...69c38f` | ⚠️ Unaudited |
| PALMManager | governance | arbitrum | n/a | 2 deployments: arbitrum [`0x8eebba...92856e`](./contracts/arbitrum-42161/0x8eebba5f7f433a8afd2794eabd6a7fc9bb92856e/); arbitrum `0xf90ec8...b8877e` | ⚠️ Unaudited |
| PALMTerms | unknown | ethereum | n/a | 2 deployments: ethereum [`0x50763a...2d2890`](./contracts/ethereum-1/0x50763a665dc24692e25ec8e2c203a79e602d2890/); ethereum `0xbd39e8...7ce78e` | ⚠️ Unaudited |
| PALMTerms | unknown | ethereum | n/a | 2 deployments: ethereum [`0x65b87a...95c515`](./contracts/ethereum-1/0x65b87a8a6c173d9ffde1f4c1d97187820495c515/); ethereum `0xb041f6...fad3ee` | ⚠️ Unaudited |
| PALMTerms | unknown | polygon | n/a | 2 deployments: polygon [`0x50763a...2d2890`](./contracts/polygon-137/0x50763a665dc24692e25ec8e2c203a79e602d2890/); polygon `0xbd39e8...7ce78e` | ⚠️ Unaudited |
| PALMTerms | unknown | polygon | n/a | 2 deployments: polygon [`0x65b87a...95c515`](./contracts/polygon-137/0x65b87a8a6c173d9ffde1f4c1d97187820495c515/); polygon `0xb041f6...fad3ee` | ⚠️ Unaudited |
| PALMTerms | unknown | base | n/a | 2 deployments: base [`0x65b87a...95c515`](./contracts/base-8453/0x65b87a8a6c173d9ffde1f4c1d97187820495c515/); base `0xb041f6...fad3ee` | ⚠️ Unaudited |
| PALMTerms | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x50763a...2d2890`](./contracts/arbitrum-42161/0x50763a665dc24692e25ec8e2c203a79e602d2890/); arbitrum `0xbd39e8...7ce78e` | ⚠️ Unaudited |
| PALMTerms | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x65b87a...95c515`](./contracts/arbitrum-42161/0x65b87a8a6c173d9ffde1f4c1d97187820495c515/); arbitrum `0xb041f6...fad3ee` | ⚠️ Unaudited |
| ParaSwapDebtSwapAdapterV3 | adapter | arbitrum | n/a | [`0xcf85ff...3f69de`](./contracts/arbitrum-42161/0xcf85ff1c37c594a10195f7a9ab85cbb0a03f69de/) | ⚠️ Unaudited |
| PolygonBridgeReceiver | operational_periphery | polygon | n/a | [`0x18281d...3c468a`](./contracts/polygon-137/0x18281dfc4d00905da1aaa6731414eaba843c468a/) | ⚠️ Unaudited |
| Pool | core_logic | ethereum | n/a | 7 deployments: ethereum [`0x4cd412...cfab84`](./contracts/ethereum-1/0x4cd41204aa4c7438374256bd7be850ef9fcfab84/); ethereum `0xca0e1b...e96a25`; polygon [`0x4cd412...cfab84`](./contracts/polygon-137/0x4cd41204aa4c7438374256bd7be850ef9fcfab84/); polygon `0xca0e1b...e96a25`; base `0xca0e1b...e96a25`; arbitrum [`0x4cd412...cfab84`](./contracts/arbitrum-42161/0x4cd41204aa4c7438374256bd7be850ef9fcfab84/); arbitrum `0xca0e1b...e96a25` | ⚠️ Unaudited |
| PoolBeacon | registry | arbitrum | n/a | 2 deployments: arbitrum [`0x6bc4e6...a5d02b`](./contracts/arbitrum-42161/0x6bc4e6b2c13ba42e933b23afab8a58bbbba5d02b/); arbitrum `0xfb93c2...42d39a` | ⚠️ Unaudited |
| PoolConfigurator | core_logic | arbitrum | n/a | 2 deployments: arbitrum [`0x04a8d4...205b12`](./contracts/arbitrum-42161/0x04a8d477ee202adce1682f5902e1160455205b12/); arbitrum `0x3e05eb...d73fbd` | ⚠️ Unaudited |
| PoolFactory | registry | arbitrum | n/a | [`0x21eec6...61e89e`](./contracts/arbitrum-42161/0x21eec6626f15d02a8896ebb7edd68ff3cb61e89e/) | ⚠️ Unaudited |
| PoolFactory2 | registry | arbitrum | n/a | 3 deployments: arbitrum [`0x2095fe...4a560d`](./contracts/arbitrum-42161/0x2095fe5cedbe22afc2174dac57cb6831954a560d/); arbitrum `0x5bfd44...9e1ab3`; arbitrum `0xec287a...ef9715` | ⚠️ Unaudited |
| PoolFactory3 | registry | arbitrum | n/a | [`0xf7f1f9...975e24`](./contracts/arbitrum-42161/0xf7f1f9d67a46452da30d4125ff39ed216e975e24/) | ⚠️ Unaudited |
| PoolLogic | core_logic | arbitrum | n/a | [`0x8be473...ea2e74`](./contracts/arbitrum-42161/0x8be473dcfa93132658821e67cbeb684ec8ea2e74/) | ⚠️ Unaudited |
| PoolProxyDeployer | core_logic | arbitrum | n/a | [`0xb6773d...eeeec7`](./contracts/arbitrum-42161/0xb6773d5bf5b908b58ff5b7bd36a7f06da2eeeec7/) | ⚠️ Unaudited |
| Position | unknown | ethereum | n/a | 7 deployments: ethereum [`0x8638fb...e49642`](./contracts/ethereum-1/0x8638fbd429b19249bb3bcf3ec72d07a657e49642/); ethereum `0xf7cb77...1faf44`; polygon [`0x8638fb...e49642`](./contracts/polygon-137/0x8638fbd429b19249bb3bcf3ec72d07a657e49642/); polygon `0xf7cb77...1faf44`; base [`0x8638fb...e49642`](./contracts/base-8453/0x8638fbd429b19249bb3bcf3ec72d07a657e49642/); arbitrum [`0x8638fb...e49642`](./contracts/arbitrum-42161/0x8638fbd429b19249bb3bcf3ec72d07a657e49642/); arbitrum `0xf7cb77...1faf44` | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | n/a | 23 deployments: ethereum [`0x89dc63...2c9ca0`](./contracts/ethereum-1/0x89dc63264dab74a4350d7f44bd62eec3b22c9ca0/); ethereum `0xc00e8a...9b7b19`; ethereum `0xd0db41...9c0d8a`; ethereum `0xdf4433...d8d8dd`; ethereum `0xe1de7b...5b4baf`; ethereum `0xec0634...8a6fa7`; polygon [`0x89dc63...2c9ca0`](./contracts/polygon-137/0x89dc63264dab74a4350d7f44bd62eec3b22c9ca0/); polygon `0xc00e8a...9b7b19`; polygon `0xd0db41...9c0d8a`; polygon `0xdf4433...d8d8dd`; polygon `0xe1de7b...5b4baf`; polygon `0xec0634...8a6fa7`; base [`0x89dc63...2c9ca0`](./contracts/base-8453/0x89dc63264dab74a4350d7f44bd62eec3b22c9ca0/); base `0xc00e8a...9b7b19`; base `0xd0db41...9c0d8a`; base `0xdf4433...d8d8dd`; arbitrum [`0x89dc63...2c9ca0`](./contracts/arbitrum-42161/0x89dc63264dab74a4350d7f44bd62eec3b22c9ca0/); arbitrum `0xc00e8a...9b7b19`; arbitrum `0xd0db41...9c0d8a`; arbitrum `0xd88c8e...6b1723`; arbitrum `0xdf4433...d8d8dd`; arbitrum `0xe1de7b...5b4baf`; arbitrum `0xec0634...8a6fa7` | ⚠️ Unaudited |
| RedStoneNavProvider | unknown | polygon | n/a | 3 deployments: polygon [`0x6336b0...533cd9`](./contracts/polygon-137/0x6336b0c2bda32d283345a78afa588fe5a1533cd9/); polygon `0x6c4bde...73a161`; polygon `0x72cbe3...6a1097` | ⚠️ Unaudited |
| Referee | unknown | arbitrum | n/a | [`0x29a7b9...35a3b6`](./contracts/arbitrum-42161/0x29a7b907fdf4a9235f46d891b7aa1e7d3d35a3b6/) | ⚠️ Unaudited |
| Referee10 | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x1f122b...27955e`](./contracts/arbitrum-42161/0x1f122b41d6740f5de2df93b8b00013e84227955e/); arbitrum `0x4f1894...ce47c4` | ⚠️ Unaudited |
| Referee11 | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x206cd4...eb6c97`](./contracts/arbitrum-42161/0x206cd481ab724ab2f9931bbddffa11ff07eb6c97/); arbitrum `0x9e3e14...621baf`; arbitrum `0xf8aaa0...b239c7` | ⚠️ Unaudited |
| Referee2 | unknown | arbitrum | n/a | [`0x411025...dad474`](./contracts/arbitrum-42161/0x4110251275f1b1f8e6ce7114139d69597fdad474/) | ⚠️ Unaudited |
| Referee3 | unknown | arbitrum | n/a | [`0x10eda4...3236c1`](./contracts/arbitrum-42161/0x10eda49fa8c6594cc6783ca5d7a6677d9e3236c1/) | ⚠️ Unaudited |
| Referee4 | unknown | arbitrum | n/a | [`0x254954...f496c1`](./contracts/arbitrum-42161/0x254954e3f6bd7443444036bea2d8fe88fdf496c1/) | ⚠️ Unaudited |
| Referee5 | unknown | arbitrum | n/a | [`0x553862...0eb4cd`](./contracts/arbitrum-42161/0x5538622ad2f14bf781af032542f7f00f080eb4cd/) | ⚠️ Unaudited |
| Referee6 | unknown | arbitrum | n/a | [`0x680f4a...0c837c`](./contracts/arbitrum-42161/0x680f4a9f47e4cfea124a5654e759cb3b0a0c837c/) | ⚠️ Unaudited |
| Referee7 | unknown | arbitrum | n/a | [`0xff38aa...1d021c`](./contracts/arbitrum-42161/0xff38aa9d553be47eee329f968adf0c74a01d021c/) | ⚠️ Unaudited |
| Referee8 | unknown | arbitrum | n/a | 6 deployments: arbitrum [`0x23173c...edb9d8`](./contracts/arbitrum-42161/0x23173cd3e4fbeeb9188a1a51191bbd8c60edb9d8/); arbitrum `0x2336b6...61eb6f`; arbitrum `0x609152...b049fe`; arbitrum `0x7fbbc1...225e3b`; arbitrum `0xcd1717...1d9c13`; arbitrum `0xf83de4...fec66f` | ⚠️ Unaudited |
| Referee9 | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x119b21...5a70dc`](./contracts/arbitrum-42161/0x119b21e962b6c5e57340a3ccecfc3a90385a70dc/); arbitrum `0xfca265...1d2d40` | ⚠️ Unaudited |
| RefereeCalculations | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x148859...a00c1e`](./contracts/arbitrum-42161/0x1488598b22cc196aa547894493bc2313a8a00c1e/); arbitrum `0x5a1959...ebc3e2` | ⚠️ Unaudited |
| SecuritizeInternalNavProvider | unknown | polygon | n/a | 2 deployments: polygon [`0x8636eb...8a14fc`](./contracts/polygon-137/0x8636eb99c6675893a7beb1cef5461e31098a14fc/); polygon `0xe3b18d...d990f2` | ⚠️ Unaudited |
| SimpleManager | governance | ethereum | n/a | 2 deployments: ethereum [`0x3522df...c811e1`](./contracts/ethereum-1/0x3522df5c13a40dfaa9cec17e12f5fbd29dc811e1/); ethereum `0x64ab6c...d9a9fa` | ⚠️ Unaudited |
| SimpleManager | governance | polygon | n/a | 2 deployments: polygon [`0x3522df...c811e1`](./contracts/polygon-137/0x3522df5c13a40dfaa9cec17e12f5fbd29dc811e1/); polygon `0x64ab6c...d9a9fa` | ⚠️ Unaudited |
| SimpleManager | governance | base | n/a | 2 deployments: base [`0x3522df...c811e1`](./contracts/base-8453/0x3522df5c13a40dfaa9cec17e12f5fbd29dc811e1/); base `0x64ab6c...d9a9fa` | ⚠️ Unaudited |
| SimpleManager | governance | arbitrum | n/a | 2 deployments: arbitrum [`0x3522df...c811e1`](./contracts/arbitrum-42161/0x3522df5c13a40dfaa9cec17e12f5fbd29dc811e1/); arbitrum `0x64ab6c...d9a9fa` | ⚠️ Unaudited |
| SingleDepositorVaultFactory | registry | ethereum | n/a | 2 deployments: ethereum [`0x8f1fdb...e25aeb`](./contracts/ethereum-1/0x8f1fdb45160234d6e7e3653f5af8e09a2ce25aeb/); base [`0x8f1fdb...e25aeb`](./contracts/base-8453/0x8f1fdb45160234d6e7e3653f5af8e09a2ce25aeb/) | ⚠️ Unaudited |
| StableDebtToken | token | arbitrum | n/a | [`0x0c2c95...e6c4f7`](./contracts/arbitrum-42161/0x0c2c95b24529664fe55d4437d7a31175cfe6c4f7/) | ⚠️ Unaudited |
| StakingPool | core_logic | arbitrum | n/a | [`0x599c84...a29443`](./contracts/arbitrum-42161/0x599c8489256fb17b66d499d907f30b8022a29443/) | ⚠️ Unaudited |
| StakingPool2 | core_logic | arbitrum | n/a | 2 deployments: arbitrum [`0x653b33...43addb`](./contracts/arbitrum-42161/0x653b33ef2acf7b6b0921b2033a616b72f943addb/); arbitrum `0xd83672...65e0e5` | ⚠️ Unaudited |
| StakingPool3 | core_logic | arbitrum | n/a | 2 deployments: arbitrum [`0x5f9d16...0087c7`](./contracts/arbitrum-42161/0x5f9d168d3435747335b1b3dc7e4d42e3510087c7/); arbitrum `0xdfe837...be6b83` | ⚠️ Unaudited |
| StataTokenFactory | registry | arbitrum | n/a | [`0xeb4c71...ba83c7`](./contracts/arbitrum-42161/0xeb4c7182e566e5e692f4c3002029e6ee65ba83c7/) | ⚠️ Unaudited |
| StataTokenV2 | token | arbitrum | n/a | [`0x86b752...a9eb52`](./contracts/arbitrum-42161/0x86b752a647db629d6c65e8ca0eb52bfef3a9eb52/) | ⚠️ Unaudited |
| StaticATokenFactory | registry | arbitrum | n/a | 4 deployments: arbitrum [`0x1f39d9...07521d`](./contracts/arbitrum-42161/0x1f39d9f291026d72e711d6da86c5873c3007521d/); arbitrum `0x764594...251460`; arbitrum `0x79b5e9...3d4e93`; arbitrum `0xe9e520...ba2a54` | ⚠️ Unaudited |
| StaticATokenLM | token | arbitrum | n/a | 4 deployments: arbitrum [`0x4c0633...51c70a`](./contracts/arbitrum-42161/0x4c0633bf70fb2bb984a9eec5d9052bdea451c70a/); arbitrum `0x729b3e...f06766`; arbitrum `0x9bf9df...62981e`; arbitrum `0xc026f5...8d996b` | ⚠️ Unaudited |
| SupplyLogic | unknown | arbitrum | n/a | [`0xb04280...ba86d2`](./contracts/arbitrum-42161/0xb04280b09f47cfd81906817505f24cefe1ba86d2/) | ⚠️ Unaudited |
| TempProxyAdmin | governance | polygon | n/a | [`0x880d0a...b1c4e8`](./contracts/polygon-137/0x880d0a82dba76b4802f76a509d3aab1d22b1c4e8/) | ⚠️ Unaudited |
| TinyKeysAirdrop | operational_periphery | arbitrum | n/a | 2 deployments: arbitrum [`0x0209a0...6c7eb0`](./contracts/arbitrum-42161/0x0209a0c0abfe82916df492d121667acca26c7eb0/); arbitrum `0x765fa6...aa1577` | ⚠️ Unaudited |
| TinyKeysAirdrop | operational_periphery | arbitrum | n/a | [`0xa670bb...d42c5b`](./contracts/arbitrum-42161/0xa670bb3cf7e9c7d02315003f3efd689cf4d42c5b/) | ⚠️ Unaudited |
| TransparentProxyFactory | registry | arbitrum | n/a | [`0x9b643d...318429`](./contracts/arbitrum-42161/0x9b643d4ac937bee8bfb1ec76401c22e18c318429/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | arbitrum | n/a | 9 deployments: arbitrum [`0x4cb9a7...8c9d66`](./contracts/arbitrum-42161/0x4cb9a7ae498cedcbb5eae9f25736ae7d428c9d66/); arbitrum `0x68d78d...1af4fd`; arbitrum `0x94f4ab...183c97`; arbitrum `0x9d9c7d...453a21`; arbitrum `0xa5edbd...905dca`; arbitrum `0xbc14d8...0b6b66`; arbitrum `0xcd6236...d5e95f`; arbitrum `0xf9e086...38b8e5`; arbitrum `0xfd4104...671198` | ⚠️ Unaudited |
| UiPoolDataProviderV3 | core_logic | arbitrum | n/a | [`0x9a8d4d...e2e5db`](./contracts/arbitrum-42161/0x9a8d4d93deb59e0457f179e6b69a9073d7e2e5db/) | ⚠️ Unaudited |
| Underlying | unknown | ethereum | n/a | 10 deployments: ethereum [`0x39b989...3b780a`](./contracts/ethereum-1/0x39b9891ba3c5a8fe69c19f54db2fd90a483b780a/); ethereum `0x3b8d59...bc0988`; ethereum `0x92cb4f...7c2bd2`; polygon [`0x39b989...3b780a`](./contracts/polygon-137/0x39b9891ba3c5a8fe69c19f54db2fd90a483b780a/); polygon `0x3b8d59...bc0988`; polygon `0x92cb4f...7c2bd2`; base [`0x39b989...3b780a`](./contracts/base-8453/0x39b9891ba3c5a8fe69c19f54db2fd90a483b780a/); arbitrum [`0x39b989...3b780a`](./contracts/arbitrum-42161/0x39b9891ba3c5a8fe69c19f54db2fd90a483b780a/); arbitrum `0x3b8d59...bc0988`; arbitrum `0x92cb4f...7c2bd2` | ⚠️ Unaudited |
| UpgradePayload | unknown | arbitrum | n/a | 4 deployments: arbitrum [`0x13f331...9a9b18`](./contracts/arbitrum-42161/0x13f331258205f948cb6a148afe990145079a9b18/); arbitrum `0x4daf1a...fb371d`; arbitrum `0x713bea...ad0849`; arbitrum `0xb660d9...966a32` | ⚠️ Unaudited |
| WrappedTokenGatewayV3 | token | arbitrum | n/a | 3 deployments: arbitrum [`0x5283be...4264ff`](./contracts/arbitrum-42161/0x5283beced7adf6d003225c13896e536f2d4264ff/); arbitrum `0x5760e3...99f8c3`; arbitrum `0xecd4bd...f1fafb` | ⚠️ Unaudited |
| Xai | unknown | arbitrum | n/a | [`0x3fb787...42e6af`](./contracts/arbitrum-42161/0x3fb787101dc6be47cfe18aeee15404dcc842e6af/) | ⚠️ Unaudited |
| Xai2 | unknown | arbitrum | n/a | [`0xd00c1a...969f35`](./contracts/arbitrum-42161/0xd00c1aea5e09d141ff183a269a6c73a6ed969f35/) | ⚠️ Unaudited |
| XaiGaslessClaim | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x149107...abafe0`](./contracts/arbitrum-42161/0x149107deb70b9514930d8e454fc32e77c5abafe0/); arbitrum `0x3be022...61772d` | ⚠️ Unaudited |
| XaiGaslessClaim | unknown | arbitrum | n/a | [`0xb13f33...8d627d`](./contracts/arbitrum-42161/0xb13f33925e72778dd0cc836a33e17963388d627d/) | ⚠️ Unaudited |
| XaiRedEnvelope | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x080c2e...380ff2`](./contracts/arbitrum-42161/0x080c2e59e963959bbe9ea064d1bcbc881f380ff2/); arbitrum `0xf26af8...eeb70f` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (78)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x001b7f...2e71e8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x032c7e...45603e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0c1f49...5e8d5f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1395c3...e77b09` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x277e02...66933c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x44b0e0...6f6335` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4c3c50...39d124` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5003e9...b6fa2a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x574b57...0156e5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x633715...59db4b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6b8d44...5ea404` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7d2727...f8a999` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x84adef...d7c527` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8be29e...822f7e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb2c7a7...2e9084` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb4babd...d9ae15` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc61490...554ee0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd1eb72...aa229d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd9e4ee...a1cae6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe5f375...c0fa47` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xefb835...30ef02` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x00be76...fa4648` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x01bc0c...3cf69f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x08fa32...9d4ec6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0a2415...55ad25` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1a593d...4fefae` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1a8463...b84d16` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1bce25...ec4820` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1e76ba...447097` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x267226...41ca2d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x27df45...836097` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x34bd60...0f0c2c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x40c7ea...7c4dbf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x482ccf...2afa70` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x505079...32283a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5bc881...bc9436` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6116a7...159086` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x655641...4f7529` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x673ff9...4dfb3b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6e9c88...5def12` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x787e41...f1c71b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7c5809...c2e958` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7dc2a9...e2bbb0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7dc2df...4470a9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7e5c3b...a40d61` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7f74d3...c47ff6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x83780e...637d1b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x83cd3d...cfd9b0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x89eb01...c5607c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x92dbc1...d6af17` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x94491d...25c233` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x97449b...11f7a2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9b7b11...0f1852` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xace21f...d09e86` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb3059c...5db286` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb97b1d...3b05fe` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc542ec...b86470` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc6a2c9...32e923` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xca4acb...62a8f3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xcc7c85...93af61` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xcf9b6c...4aa831` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd1eb72...aa229d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd5afab...220619` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd9a442...306a72` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe6002e...7c9d09` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xeaf479...3cb379` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfa6295...3c50ba` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x25e9b0...dd7b96` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2ce9e8...9fda51` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7e334d...8dd004` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1b76b1...47ea4f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3d4cfe...4c81f3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5b3400...94bdfc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5cd0cb...5c53e1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x85b3a2...9d876e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9a3a63...f44b37` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc5973f...8d513e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xde7c8e...b41a10` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [2023-09-22.pdf](https://github.com/aera-finance/aera-contracts-public/blob/main/v2/audits/spearbit/2023-09-22.pdf) | Spearbit | Audit | 2023-09 | stale | Direct | contract_name | 1 | high |
| [634d46596f6b027c1bb27d92_Aera Report.pdf](https://cdn.prod.website-files.com/62cd150e5e9efc960319c44d/634d46596f6b027c1bb27d92_Aera%20Report.pdf) | Unknown | Audit | 2022-10 | stale | Direct | contract_name | 3 | high |
| [652fe9fa1c0d6f6c0e0876d6_Aera-Spearbit-Security-Review-Aug2023.pdf](https://cdn.prod.website-files.com/62cd150e5e9efc960319c44d/652fe9fa1c0d6f6c0e0876d6_Aera-Spearbit-Security-Review-Aug2023.pdf) | Spearbit | Audit | 2023-09 | stale | Direct | contract_name | 1 | high |
| [drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view](https://drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view?usp=sharing) | Spearbit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [2024-05-15.pdf](https://github.com/aera-finance/aera-contracts-public/blob/main/v2/audits/openzeppelin/2024-05-15.pdf) | OpenZeppelin | Audit | 2024-05 | stale | Direct | contract_name | 7 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | [`0x7cbc5a...5b40fc`](./contracts/polygon-137/0x7cbc5a024fd2dd5099aec235e3a4143cf25b40fc/) | SecuritizeVault | core_logic | $6,457.46 | Verified native implementation with $6,457.46 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2e603c...273c70`](./contracts/ethereum-1/0x2e603c8b383cc2da79d9562c5cde43368a273c70/) | ATokenVault | core_logic | $3,475.49 | Verified native implementation with $3,475.49 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x38896b...f1797d`](./contracts/ethereum-1/0x38896b4ac8420b8a2b768001da44d11109f1797d/) | AeraV2Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x42480c...d38068`](./contracts/arbitrum-42161/0x42480c37b249e33aabaf4c22b20235656bd38068/) | ArbitrumBridgeReceiver | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7f346f...e6df38`](./contracts/ethereum-1/0x7f346f1eb7a65ff83f51b3fd76dcc70979e6df38/) | ArrakisV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x26673a...b3b775`](./contracts/ethereum-1/0x26673a336a720532ebf1d225bfc7092772b3b775/) | ArrakisV2Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x07d2ce...64449f`](./contracts/ethereum-1/0x07d2ceb4869dfe17e8d48c92a71edc3ae564449f/) | ArrakisV2Helper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4bc385...f905f5`](./contracts/ethereum-1/0x4bc385b1ddf0121cc40a0715cfd3befe52f905f5/) | ArrakisV2Resolver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x59e242...7f7cd6`](./contracts/polygon-137/0x59e242d352ae13166b4987ae5c990c232f7f7cd6/) | BaseBulker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xa25d9f...fcfddd`](./contracts/arbitrum-42161/0xa25d9f14cfa40d3227ed9a48b124667ddffcfddd/) | BorrowLogic | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xfe7636...5401e4`](./contracts/arbitrum-42161/0xfe76366a986b72c3f2923e05e6ba07b7de5401e4/) | BridgeLogic | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1582e7...08408e`](./contracts/arbitrum-42161/0x1582e73d95f33e39b421f9224d9e7daf4508408e/) | BucketTracker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x74a81f...8d80c3`](./contracts/ethereum-1/0x74a81f84268744a40febc48f8b812a1f188d80c3/) | Bulker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x70bf6e...510b5e`](./contracts/arbitrum-42161/0x70bf6ec6fca41a7d08dcbb9909985ac0a4510b5e/) | EModeLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8d6c06...f19d6b`](./contracts/arbitrum-42161/0x8d6c063656b00e5c37ce007c0f99848d58f19d6b/) | esXai | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5b4116...4e91c9`](./contracts/arbitrum-42161/0x5b41169626452d70928b1d7fe7a3d8b4a24e91c9/) | esXai2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x275e64...ed92a3`](./contracts/arbitrum-42161/0x275e6469ba0f86f09404cfe9b7d583d65eed92a3/) | esXai3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1d69c4...9fc553`](./contracts/arbitrum-42161/0x1d69c48a35ddd241e72a31db0e637676d89fc553/) | FlashLoanLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x15196d...f3ad1f`](./contracts/arbitrum-42161/0x15196d30bc37d2fc5c718ffcd9d7687d76f3ad1f/) | L2Pool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x398808...21bc6e`](./contracts/arbitrum-42161/0x398808db36da6ba4e30d4fb88d72c3473921bc6e/) | LiquidationLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa397a8...4b00c7`](./contracts/ethereum-1/0xa397a8c2086c554b531c02e29f3291c9704b00c7/) | MainnetBulker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x29722c...b90b4f`](./contracts/ethereum-1/0x29722cc9a1cacff4a15914f9bc274b46f3b90b4f/) | MultiDepositorVaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xf76545...4c8c71`](./contracts/arbitrum-42161/0xf765452e587ad0ae785dc984963897c05d4c8c71/) | NodeLicense | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x249b8a...343fb6`](./contracts/arbitrum-42161/0x249b8a8af9152a08ba3cf3e106962566e8343fb6/) | NodeLicense10 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xe72b00...876c7f`](./contracts/arbitrum-42161/0xe72b004fca3a05251c6c8d1bf1482b9308876c7f/) | NodeLicense9 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x880d0a...b1c4e8`](./contracts/ethereum-1/0x880d0a82dba76b4802f76a509d3aab1d22b1c4e8/) | PALMManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8eebba...92856e`](./contracts/ethereum-1/0x8eebba5f7f433a8afd2794eabd6a7fc9bb92856e/) | PALMManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x65b87a...95c515`](./contracts/ethereum-1/0x65b87a8a6c173d9ffde1f4c1d97187820495c515/) | PALMTerms | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x65b87a...95c515`](./contracts/polygon-137/0x65b87a8a6c173d9ffde1f4c1d97187820495c515/) | PALMTerms | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x65b87a...95c515`](./contracts/base-8453/0x65b87a8a6c173d9ffde1f4c1d97187820495c515/) | PALMTerms | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x65b87a...95c515`](./contracts/arbitrum-42161/0x65b87a8a6c173d9ffde1f4c1d97187820495c515/) | PALMTerms | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x18281d...3c468a`](./contracts/polygon-137/0x18281dfc4d00905da1aaa6731414eaba843c468a/) | PolygonBridgeReceiver | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4cd412...cfab84`](./contracts/ethereum-1/0x4cd41204aa4c7438374256bd7be850ef9fcfab84/) | Pool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6bc4e6...a5d02b`](./contracts/arbitrum-42161/0x6bc4e6b2c13ba42e933b23afab8a58bbbba5d02b/) | PoolBeacon | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x21eec6...61e89e`](./contracts/arbitrum-42161/0x21eec6626f15d02a8896ebb7edd68ff3cb61e89e/) | PoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2095fe...4a560d`](./contracts/arbitrum-42161/0x2095fe5cedbe22afc2174dac57cb6831954a560d/) | PoolFactory2 | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xf7f1f9...975e24`](./contracts/arbitrum-42161/0xf7f1f9d67a46452da30d4125ff39ed216e975e24/) | PoolFactory3 | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8be473...ea2e74`](./contracts/arbitrum-42161/0x8be473dcfa93132658821e67cbeb684ec8ea2e74/) | PoolLogic | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xb6773d...eeeec7`](./contracts/arbitrum-42161/0xb6773d5bf5b908b58ff5b7bd36a7f06da2eeeec7/) | PoolProxyDeployer | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8638fb...e49642`](./contracts/ethereum-1/0x8638fbd429b19249bb3bcf3ec72d07a657e49642/) | Position | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x29a7b9...35a3b6`](./contracts/arbitrum-42161/0x29a7b907fdf4a9235f46d891b7aa1e7d3d35a3b6/) | Referee | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1f122b...27955e`](./contracts/arbitrum-42161/0x1f122b41d6740f5de2df93b8b00013e84227955e/) | Referee10 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x206cd4...eb6c97`](./contracts/arbitrum-42161/0x206cd481ab724ab2f9931bbddffa11ff07eb6c97/) | Referee11 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x411025...dad474`](./contracts/arbitrum-42161/0x4110251275f1b1f8e6ce7114139d69597fdad474/) | Referee2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x254954...f496c1`](./contracts/arbitrum-42161/0x254954e3f6bd7443444036bea2d8fe88fdf496c1/) | Referee4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x553862...0eb4cd`](./contracts/arbitrum-42161/0x5538622ad2f14bf781af032542f7f00f080eb4cd/) | Referee5 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x680f4a...0c837c`](./contracts/arbitrum-42161/0x680f4a9f47e4cfea124a5654e759cb3b0a0c837c/) | Referee6 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xff38aa...1d021c`](./contracts/arbitrum-42161/0xff38aa9d553be47eee329f968adf0c74a01d021c/) | Referee7 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x23173c...edb9d8`](./contracts/arbitrum-42161/0x23173cd3e4fbeeb9188a1a51191bbd8c60edb9d8/) | Referee8 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8f1fdb...e25aeb`](./contracts/ethereum-1/0x8f1fdb45160234d6e7e3653f5af8e09a2ce25aeb/) | SingleDepositorVaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x599c84...a29443`](./contracts/arbitrum-42161/0x599c8489256fb17b66d499d907f30b8022a29443/) | StakingPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5f9d16...0087c7`](./contracts/arbitrum-42161/0x5f9d168d3435747335b1b3dc7e4d42e3510087c7/) | StakingPool3 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xeb4c71...ba83c7`](./contracts/arbitrum-42161/0xeb4c7182e566e5e692f4c3002029e6ee65ba83c7/) | StataTokenFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x86b752...a9eb52`](./contracts/arbitrum-42161/0x86b752a647db629d6c65e8ca0eb52bfef3a9eb52/) | StataTokenV2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1f39d9...07521d`](./contracts/arbitrum-42161/0x1f39d9f291026d72e711d6da86c5873c3007521d/) | StaticATokenFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4c0633...51c70a`](./contracts/arbitrum-42161/0x4c0633bf70fb2bb984a9eec5d9052bdea451c70a/) | StaticATokenLM | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xb04280...ba86d2`](./contracts/arbitrum-42161/0xb04280b09f47cfd81906817505f24cefe1ba86d2/) | SupplyLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xa670bb...d42c5b`](./contracts/arbitrum-42161/0xa670bb3cf7e9c7d02315003f3efd689cf4d42c5b/) | TinyKeysAirdrop | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x39b989...3b780a`](./contracts/ethereum-1/0x39b9891ba3c5a8fe69c19f54db2fd90a483b780a/) | Underlying | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3fb787...42e6af`](./contracts/arbitrum-42161/0x3fb787101dc6be47cfe18aeee15404dcc842e6af/) | Xai | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xd00c1a...969f35`](./contracts/arbitrum-42161/0xd00c1aea5e09d141ff183a269a6c73a6ed969f35/) | Xai2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xb13f33...8d627d`](./contracts/arbitrum-42161/0xb13f33925e72778dd0cc836a33e17963388d627d/) | XaiGaslessClaim | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 97 |
| upstream | 16 |
| standard_library | 46 |
| needs_review | 66 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=4
- Match method counts: extraction_exact=12

Zero-match audit list:

- [12624] drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view

Fork inheritance lineage and inherited audits are included when available.
