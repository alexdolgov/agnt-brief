# Agentic Audit Brief: Aera

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 5 (0 matched; 5 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Aera (`aera`)
- Website: [https://www.aera.finance](https://www.aera.finance)
- Lifecycle: active (Tier 0, 22.5% below peak)
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, base, ethereum, polygon
- Contract surface: 240 unique implementations (530 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $126,119,552.00
- On-chain TVL (included contracts): $15,620.29
- TVL by chain: Polygon $11,402.24 | Ethereum $4,104.66 | Base $113.39

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Aera in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x833589fcd6edb6e08f4c7c32d4f71b54bda02913`, chain 8453)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/2 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 239 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 66
- Confirmed-live implementations: 1 of 240 unique; 239 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/163
- Verified + Unaudited implementations: 161
- Verified by bytecode match: 2
- Unverified implementations: 77
- Unique implementations: 240
- Raw deployments: 530
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-06 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (161)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| SecuritizeVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 2 | polygon | n/a | 3 deployments: polygon `0x7cbc5a024fd2dd5099aec235e3a4143cf25b40fc`; polygon `0x9d60947d49911e3c262c108f97fe07cde209f9a7`; polygon `0xa482bec6614f3b923cc0079d5c27ee70b5791c5c` | ⚠️ Unaudited |
| ATokenVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 2 | polygon | n/a | 5 deployments: polygon `0x1408fc049cb4f08b4aa1984f439ba02fc04918be`; polygon `0x24a73dd9c5a66eadaceaf57bb9750b3a11e29e4d`; polygon `0x8ecc82236b85b97cb52b471bb6bba061da3cf102`; polygon `0xb33166e092afc5532c74041fd8793d96541c8c4b`; polygon `0xc163239a0f4e5389f833643116ef6c457dd6dfc2` | ⚠️ Unaudited |
| ATokenVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2e603c8b383cc2da79d9562c5cde43368a273c70`; ethereum `0x2f79d4ceb79ebd26161e51ca0c9300f970ded54d` | ⚠️ Unaudited |
| PoolInstance | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2` | ⚠️ Unaudited |
| ATokenVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 2 | polygon | n/a | 4 deployments: polygon `0x1f1e7b1cc1df05924a6c039b3145a93d76adea61`; polygon `0x5e5057b8d220eb8573bc342136fdf1d869316d18`; polygon `0xbf43743afb822897a5076e62812a504c1338d289`; polygon `0xdcb1bd905a3e4e91994d129f88502554aae5ea7d` | ⚠️ Unaudited |
| L2PoolInstance | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xa238dd80c259a72e81d7e4664a9801593f98d1c5` | ⚠️ Unaudited |
| SecuritizeVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x4c1e5e780269186a4fbb31c913b11b1a8922b830`; polygon `0x6a3187f9b83cd992502760489a6f60fa7d6b754e` | ⚠️ Unaudited |
| PoolInstance | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x794a61358d6845594f94dc1db02a252b5b4814ad` | ⚠️ Unaudited |
| AeraVaultV1 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: ethereum `0x8a7c03e9f037ba096f1fa8b48bfd65c7578327c9`; ethereum `0xbebb92ed09688e64dc38c240b600d0b1d504ee56`; polygon `0x3c14801dc6402e0560d69083f2b238b4c4b4dafe` | ⚠️ Unaudited |
| ATokenVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x2c616f5dc3d482010d870d8a01b72cbb1711254a`; polygon `0xba86650b2c192fb578a61a57a505a43376bb440e` | ⚠️ Unaudited |
| AaveProtocolDataProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: ethereum `0x7b4eb56e7cd4b454ba8ff71e4518426369a138a3`; polygon `0x69fa688f1dc47d4b5d8029d5a35fb7a548310654`; base `0x2d8a3c5677189723c4cb8873cfc9c8976fdf38ac`; arbitrum `0x6b4e260b765b3ca1514e618c0215a6b7839ff93e` | ⚠️ Unaudited |
| AaveV3PositionOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd4237b72d32106206d1659bb1943e95f75d49043` | ⚠️ Unaudited |
| AeraFlashLoanRecipient | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x49342b102ab0a00a41d150ddbd93871251efbade`; polygon `0x54218f30cd1823b47a61b010601659fd7d8e6a19` | ⚠️ Unaudited |
| AeraV2Factory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 10 deployments: ethereum `0x38896b4ac8420b8a2b768001da44d11109f1797d`; ethereum `0x9500948c2beeeb2da4cc3aa21cb05bd2e7c27191`; polygon `0x101aee99652f8b87c3a6c76a270da045c8cb8d82`; polygon `0x49b428ea1cd536e7d103e9729ea14400785e30ec`; polygon `0xa1c908cf7371047649dfca9ece01327dc6db3094`; polygon `0xdd65ca0eda7383e4ff633d58343dbbc79e832ceb`; base `0x5cd0cb0dcdef98a8d07a8d44054a13f2c35c53e1`; arbitrum `0x49b428ea1cd536e7d103e9729ea14400785e30ec`; arbitrum `0xaf2762e1f75decdb8d240576e7a2cec1a365cd46`; arbitrum `0xf626e29bd23d9b82cb2fc792e71e6d93ac80d2fb` | ⚠️ Unaudited |
| AeraVaultModulesFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x0fb6052cc079a4eec277f73e51e0de3411792ff4`; ethereum `0x54438cae8cf263f42e6b868b2acb1bc38fbf04aa`; polygon `0x7744f4d2eab0e2a2a4b48af03d05a59c8f6e40c5`; polygon `0x8c3a80900e25f6dc62c5a0e7c098b9ce5f89e3a8`; polygon `0xaa13c2d2b9120c857050dfa24adc06777eca5795`; base `0x1b76b14b575c9a52fc24065fa6f7d2b34d47ea4f`; arbitrum `0x7744f4d2eab0e2a2a4b48af03d05a59c8f6e40c5`; arbitrum `0xd01517c92da9761d01167ae656348201adfd3c28` | ⚠️ Unaudited |
| AeraVaultV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14c79c24b2a82ce36e3f3d693aeea17e268f5a98` | ⚠️ Unaudited |
| AllowanceLiquiditySource | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4416050563064eaec3210cc0ed65835fbafaa688` | ⚠️ Unaudited |
| ArbitrumBridgeReceiver | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x42480c37b249e33aabaf4c22b20235656bd38068` | ⚠️ Unaudited |
| ArrakisV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | ethereum | n/a | 6 deployments: ethereum `0x1d91f6d917ec51de53a5789c34fff777a58759b6`; ethereum `0x7f346f1eb7a65ff83f51b3fd76dcc70979e6df38`; polygon `0x1d91f6d917ec51de53a5789c34fff777a58759b6`; polygon `0x7f346f1eb7a65ff83f51b3fd76dcc70979e6df38`; arbitrum `0x1d91f6d917ec51de53a5789c34fff777a58759b6`; arbitrum `0x7f346f1eb7a65ff83f51b3fd76dcc70979e6df38` | ⚠️ Unaudited |
| ArrakisV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0xaf0f96e8702cb1b8160e43c8c020c608cd7b134d`; ethereum `0xb5c3b286dd591282fe87dfab0613488e1b6b09ba`; polygon `0xaf0f96e8702cb1b8160e43c8c020c608cd7b134d`; polygon `0xb5c3b286dd591282fe87dfab0613488e1b6b09ba`; arbitrum `0xaf0f96e8702cb1b8160e43c8c020c608cd7b134d`; arbitrum `0xb5c3b286dd591282fe87dfab0613488e1b6b09ba` | ⚠️ Unaudited |
| ArrakisV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x1d91f6d917ec51de53a5789c34fff777a58759b6`; base `0x7f346f1eb7a65ff83f51b3fd76dcc70979e6df38` | ⚠️ Unaudited |
| ArrakisV2Beacon | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x891e7e4baffef0ef7bc4b1e85d122bdd7363b8b3`; polygon `0x891e7e4baffef0ef7bc4b1e85d122bdd7363b8b3`; arbitrum `0x891e7e4baffef0ef7bc4b1e85d122bdd7363b8b3` | ⚠️ Unaudited |
| ArrakisV2Factory | registry | non_address_book | non_address_book_inventory (excluded) | 3 | ethereum | n/a | 6 deployments: ethereum `0x055b6d3919042be29c5f044a55529933e1273a88`; ethereum `0x453f7d013ca100ade3ab77e007ffcfbdf753857c`; polygon `0x055b6d3919042be29c5f044a55529933e1273a88`; polygon `0x453f7d013ca100ade3ab77e007ffcfbdf753857c`; arbitrum `0x055b6d3919042be29c5f044a55529933e1273a88`; arbitrum `0x453f7d013ca100ade3ab77e007ffcfbdf753857c` | ⚠️ Unaudited |
| ArrakisV2Factory | registry | non_address_book | non_address_book_inventory (excluded) | 4 | ethereum | n/a | 12 deployments: ethereum `0x26673a336a720532ebf1d225bfc7092772b3b775`; ethereum `0xecb8ffcb2369ef188a082a662f496126f66c8288`; ethereum `0xf90aafabb1a4c0ce318be12da73f0f31fabe865d`; polygon `0x26673a336a720532ebf1d225bfc7092772b3b775`; polygon `0xecb8ffcb2369ef188a082a662f496126f66c8288`; polygon `0xf90aafabb1a4c0ce318be12da73f0f31fabe865d`; base `0x26673a336a720532ebf1d225bfc7092772b3b775`; base `0xecb8ffcb2369ef188a082a662f496126f66c8288`; base `0xf90aafabb1a4c0ce318be12da73f0f31fabe865d`; arbitrum `0x26673a336a720532ebf1d225bfc7092772b3b775`; arbitrum `0xecb8ffcb2369ef188a082a662f496126f66c8288`; arbitrum `0xf90aafabb1a4c0ce318be12da73f0f31fabe865d` | ⚠️ Unaudited |
| ArrakisV2Helper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 10 deployments: ethereum `0x07d2ceb4869dfe17e8d48c92a71edc3ae564449f`; ethereum `0x89e4be1f999e3a58d16096fbe405fc2a1d7f07d6`; ethereum `0xccee73ea4c7a42491c68fea78b1bddd1a35c8d9c`; polygon `0x07d2ceb4869dfe17e8d48c92a71edc3ae564449f`; polygon `0x89e4be1f999e3a58d16096fbe405fc2a1d7f07d6`; polygon `0xccee73ea4c7a42491c68fea78b1bddd1a35c8d9c`; base `0x89e4be1f999e3a58d16096fbe405fc2a1d7f07d6`; arbitrum `0x07d2ceb4869dfe17e8d48c92a71edc3ae564449f`; arbitrum `0x89e4be1f999e3a58d16096fbe405fc2a1d7f07d6`; arbitrum `0xccee73ea4c7a42491c68fea78b1bddd1a35c8d9c` | ⚠️ Unaudited |
| ArrakisV2Oracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x8897f86a6f765e6248407f5aba201e7587ddf5f5`; arbitrum `0x96b912bf0631b6b5b60898449d7ebb47014ff88c` | ⚠️ Unaudited |
| ArrakisV2Resolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 10 deployments: ethereum `0x4bc385b1ddf0121cc40a0715cfd3befe52f905f5`; ethereum `0x535c5fdf31477f799366df6e4899a12a801cc7b8`; ethereum `0xb11bb8ad710579cc5ed16b1c8587808109c1f193`; polygon `0x4bc385b1ddf0121cc40a0715cfd3befe52f905f5`; polygon `0x535c5fdf31477f799366df6e4899a12a801cc7b8`; polygon `0xb11bb8ad710579cc5ed16b1c8587808109c1f193`; base `0x535c5fdf31477f799366df6e4899a12a801cc7b8`; arbitrum `0x4bc385b1ddf0121cc40a0715cfd3befe52f905f5`; arbitrum `0x535c5fdf31477f799366df6e4899a12a801cc7b8`; arbitrum `0xb11bb8ad710579cc5ed16b1c8587808109c1f193` | ⚠️ Unaudited |
| ArrakisV2Router | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x6ac8bab8b775a03b8b72b2940251432442f61b94`; ethereum `0xfe3d837317d420e9c40c30dcb49892ad9ef15e3d` | ⚠️ Unaudited |
| ArrakisV2Router | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x6ac8bab8b775a03b8b72b2940251432442f61b94`; polygon `0xfe3d837317d420e9c40c30dcb49892ad9ef15e3d` | ⚠️ Unaudited |
| ArrakisV2Router | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x6ac8bab8b775a03b8b72b2940251432442f61b94`; base `0xfe3d837317d420e9c40c30dcb49892ad9ef15e3d` | ⚠️ Unaudited |
| ArrakisV2Router | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x6ac8bab8b775a03b8b72b2940251432442f61b94`; arbitrum `0xfe3d837317d420e9c40c30dcb49892ad9ef15e3d` | ⚠️ Unaudited |
| AToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x1be1798b70aee431c2986f7ff48d9d1fa350786a`; arbitrum `0xe88fb4eaf67ea87bb458e24c94bef0eb02b5f449` | ⚠️ Unaudited |
| BaseBulker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: polygon `0x59e242d352ae13166b4987ae5c990c232f7f7cd6`; base `0x78d0677032a35c63d142a48a2037048871212a8c`; arbitrum `0xbde8f31d2ddda895264e27dd990fab3dc87b372d` | ⚠️ Unaudited |
| BorrowLogic | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0xa25d9f14cfa40d3227ed9a48b124667ddffcfddd`; arbitrum `0xd1b3e25fd7c8ae7caddc6f71b461b79cd4ddcfa3` | ⚠️ Unaudited |
| BridgeLogic | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfe76366a986b72c3f2923e05e6ba07b7de5401e4` | ⚠️ Unaudited |
| BucketTracker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: arbitrum `0x1582e73d95f33e39b421f9224d9e7daf4508408e`; arbitrum `0x653b33ef2acf7b6b0921b2033a616b72f943addb`; arbitrum `0x8a36b7010eaa56951661f775e8770e9550f29c7e`; arbitrum `0xd83672b0d4caa595c5922a0ed4b181267565e0e5` | ⚠️ Unaudited |
| BucketTracker | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x3f5901c841f4d757c7db37ef585475aba7819344`; arbitrum `0xa83825dc4d94513d1c907b319ee8224fa63a29b2` | ⚠️ Unaudited |
| Bulker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x74a81f84268744a40febc48f8b812a1f188d80c3` | ⚠️ Unaudited |
| CapsPlusRiskSteward | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xadf86b537ef08591c2777e144322e8b0ca7e82a7` | ⚠️ Unaudited |
| Comet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x88730d254a2f7e6ac8388c3198afd694ba9f7fae`; polygon `0xb21b06d71c75973babde35b49ffdac3f82ad3775` | ⚠️ Unaudited |
| Comet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: ethereum `0x50cb5e9a07f5c8db997b236761622931364d634e`; polygon `0x27c348936400791b7350d80fb81bc61ad68df4ae`; base `0x1f9d71ef69f502188ec65cebac049fe646b74de4`; base `0xf25212e676d1f7f89cd72ffee66158f541246445` | ⚠️ Unaudited |
| CometExt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x285617313887d43256f852cae0ee4de4b68d45b0`; ethereum `0xe2c1f54aff6b38fd9df7a69f22cb5fd3ba09f030`; polygon `0xa5edbdd9646f8dff606d7448e414884c7d905dca`; polygon `0xbde8f31d2ddda895264e27dd990fab3dc87b372d`; base `0x2f9e3953b2ef89fa265f2a32ed9f80d00229125b`; base `0x8495af03fb797e2965bcb42cb0693e1c15614798`; base `0x88bb8c109640778d3fb1074bb10a66e31f2c9c17` | ⚠️ Unaudited |
| CometFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x1c1853bc7c6bff0d276da53972c0b1a066db1ae7`; polygon `0x2f9e3953b2ef89fa265f2a32ed9f80d00229125b`; polygon `0x8495af03fb797e2965bcb42cb0693e1c15614798`; base `0x27c348936400791b7350d80fb81bc61ad68df4ae` | ⚠️ Unaudited |
| CometProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 5 deployments: ethereum `0x1ec63b5883c3481134fd50d5daebc83ecd2e8779`; polygon `0x14d2c9dd16304e8a95fc8395a37f17b6c15239c6`; polygon `0xd712ace4ca490d4f3e92992ecf3de12251b975f9`; base `0xa5edbdd9646f8dff606d7448e414884c7d905dca`; base `0xbde8f31d2ddda895264e27dd990fab3dc87b372d` | ⚠️ Unaudited |
| CometRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 5 deployments: ethereum `0x1b0e765f6224c21223aea2af16c1c46e38885a40`; polygon `0x45939657d1ca34a8fa39a924b71d28fe8431e581`; polygon `0x8a6ba3c7a192636efd4d4c9aae7e09472a04c6f7`; base `0x123964802e6ababbe1bc9547d72ef1b69b00a6b1`; arbitrum `0x88730d254a2f7e6ac8388c3198afd694ba9f7fae` | ⚠️ Unaudited |
| CometWithExtendedAssetList | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa17581a9e3356d9a858b789d68b4d866e593ae94` | ⚠️ Unaudited |
| CometWithExtendedAssetList | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xc3d688b66703497daa19211eedff47f25384cdc3` | ⚠️ Unaudited |
| CometWithExtendedAssetList | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0xf25212e676d1f7f89cd72ffee66158f541246445` | ⚠️ Unaudited |
| CometWithExtendedAssetList | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x46e6b214b524310239732d51387075e0e70970bf` | ⚠️ Unaudited |
| CometWithExtendedAssetList | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x9c4ec768c28520b50860ea7a15bd7213a9ff58bf` | ⚠️ Unaudited |
| CometWithExtendedAssetList | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xb125e6687d4313864e53df431d5425969c15eb2f` | ⚠️ Unaudited |
| CometWithExtendedAssetList | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x9c4ec768c28520b50860ea7a15bd7213a9ff58bf` | ⚠️ Unaudited |
| CompoundV3PositionOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x77ca117d864229681a72b1b2ee71b7d84f4fb4a0` | ⚠️ Unaudited |
| Configurator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x316f9708bb98af7da9c68c1c3b5e79039cd336e3`; ethereum `0xcfc1fa6b7ca982176529899d99af6473ad80df4f` | ⚠️ Unaudited |
| Configurator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x3b6f1fe07cdab8a43f39c3b99ba8ff26e28db8b4`; polygon `0xf4127474cef367a5fee8eba01725f17acee964f0` | ⚠️ Unaudited |
| Configurator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x83e0f742cacbe66349e3701b171ee2487a26e738`; polygon `0x9c4ec768c28520b50860ea7a15bd7213a9ff58bf` | ⚠️ Unaudited |
| Configurator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x45939657d1ca34a8fa39a924b71d28fe8431e581`; base `0x83e0f742cacbe66349e3701b171ee2487a26e738` | ⚠️ Unaudited |
| ConfiguratorLogic | governance | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaa84d489f71d2a8d71e992143a2de8b3aa54aaa9` | ⚠️ Unaudited |
| ConstantPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: ethereum `0xd72ac1bce9177cfe7aeb5d0516a38c88a64ce0ab`; base `0x9f485610e26b9c0140439f88dc0c7742903bd1cf` | ⚠️ Unaudited |
| EModeLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x70bf6ec6fca41a7d08dcbb9909985ac0a4510b5e` | ⚠️ Unaudited |
| esXai | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8d6c063656b00e5c37ce007c0f99848d58f19d6b` | ⚠️ Unaudited |
| esXai2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x5b41169626452d70928b1d7fe7a3d8b4a24e91c9`; arbitrum `0xb38e2edda6c31d9972cac770f3f404cd0d7b55df` | ⚠️ Unaudited |
| esXai3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x275e6469ba0f86f09404cfe9b7d583d65eed92a3` | ⚠️ Unaudited |
| esXai4 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x4c749d097832de2fecc989ce18fdc5f1bd76700c`; arbitrum `0x4efc7448ac3cb4d3c6c2e3300f66047fea401a62` | ⚠️ Unaudited |
| EsXaiPositionOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x9c003112f682eee9a76d538533e331d1af736efb`; arbitrum `0xf261d618d2bf82b056e292b1e1b4d5bdfb7b871a` | ⚠️ Unaudited |
| FeeCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x537708006061eab80d3c2cf0ae4f78d24787f91d` | ⚠️ Unaudited |
| FlashLoanLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1d69c48a35ddd241e72a31db0e637676d89fc553` | ⚠️ Unaudited |
| GasSubsidy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf208798482f0b12c8767bc03cc0f145d18bece6a` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x794a61358d6845594f94dc1db02a252b5b4814ad` | ⚠️ Unaudited |
| L2Pool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x15196d30bc37d2fc5c718ffcd9d7687d76f3ad1f`; arbitrum `0xbcb167bdcf14a8f791d6f4a6edd964aed2f8813b` | ⚠️ Unaudited |
| LiquidationLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x398808db36da6ba4e30d4fb88d72c3473921bc6e` | ⚠️ Unaudited |
| Liquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb61c66a4d83da8e04f40ca844c0c4b508ca81fa3` | ⚠️ Unaudited |
| LlamaPayRouterOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 7 deployments: arbitrum `0x004e254990fa27c6af52f5f91e8b79c3ecc79a8a`; arbitrum `0x0ad0c8442629e47158106b201a1b58696737cfeb`; arbitrum `0x4a0554f8b56f83438ef2fee3adf00ffbca551778`; arbitrum `0x73d623b1704748860bfcef48cf32746464b9f5d1`; arbitrum `0x9c442d33dbebc8aa33e2d7fc647f0514451905b8`; arbitrum `0xe3e278f3fb61134bbe79173c95470332e2261cab`; arbitrum `0xff8e5a9c3a17099b0d97576ea8e54dd462298df2` | ⚠️ Unaudited |
| MainnetBulker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa397a8c2086c554b531c02e29f3291c9704b00c7` | ⚠️ Unaudited |
| Morpho | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 4 deployments: ethereum `0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb`; polygon `0x1bf0c2541f820e775182832f06c0b7fc27a25f67`; base `0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb`; arbitrum `0x6c247b1f6182318877311737bac0844baa518f5e` | ⚠️ Unaudited |
| MultiDepositorVaultFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x29722cc9a1cacff4a15914f9bc274b46f3b90b4f`; base `0x29722cc9a1cacff4a15914f9bc274b46f3b90b4f` | ⚠️ Unaudited |
| MultiplicativePriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x4687670f5f01716faa382e2356c103bad776752c`; base `0x8a6ba3c7a192636efd4d4c9aae7e09472a04c6f7`; base `0xe2aa5194e45b043afdd6e98f467c0b1c13484ae9` | ⚠️ Unaudited |
| NodeLicense | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf765452e587ad0ae785dc984963897c05d4c8c71` | ⚠️ Unaudited |
| NodeLicense10 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x249b8a8af9152a08ba3cf3e106962566e8343fb6` | ⚠️ Unaudited |
| NodeLicense2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x471f1a92a8099f7011aa3f2e011569618bd754ec` | ⚠️ Unaudited |
| NodeLicense3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: arbitrum `0x60cbd035c7a14e9bf81473faa9c7ca42493dc4a1`; arbitrum `0x6d96103c02702577f77624e38e2a50eb8bbe9f4a`; arbitrum `0x9f314b02caed3d292776b1c5209a7276ee833941`; arbitrum `0xbee74dbc6cc3829e3a4e22dbec2711e132b8a47b`; arbitrum `0xc2b691250fd85bf7ec91dd4f13ef1e76678395b2` | ⚠️ Unaudited |
| NodeLicense4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaed4af101d3e64114051e63f12265403d6cb9b10` | ⚠️ Unaudited |
| NodeLicense5 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfd6bb931d2ee134e70568ca36584c043cb278734` | ⚠️ Unaudited |
| NodeLicense6 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa2815b0f4a99799aeb9d5cb73501e43f5197ddd1` | ⚠️ Unaudited |
| NodeLicense7 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe6e5356423516c9b75d4dfb1fca3973c5b695be8` | ⚠️ Unaudited |
| NodeLicense8 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x14e6e53dc0e4d0d02644a96f4bc1798a7876db49`; arbitrum `0xc6bcca5297cd4511250e2d3241bed586631e2aa0` | ⚠️ Unaudited |
| NodeLicense9 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe72b004fca3a05251c6c8d1bf1482b9308876c7f` | ⚠️ Unaudited |
| OptimismBridgeReceiver | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: base `0x18281dfc4d00905da1aaa6731414eaba843c468a`; base `0xb21b06d71c75973babde35b49ffdac3f82ad3775`; base `0xd10b40ff1d92e2267d099da3509253d9da4d715e`; base `0xf4127474cef367a5fee8eba01725f17acee964f0` | ⚠️ Unaudited |
| PALMManager | governance | non_address_book | non_address_book_inventory (excluded) | 3 | ethereum | n/a | 6 deployments: ethereum `0x0a7d53ff9c56a3bd6a4a369f14ba3ba523b3013e`; ethereum `0xecf6a02a8bfc046ff75e893d8a5ae993b069c38f`; polygon `0x0a7d53ff9c56a3bd6a4a369f14ba3ba523b3013e`; polygon `0xecf6a02a8bfc046ff75e893d8a5ae993b069c38f`; arbitrum `0x0a7d53ff9c56a3bd6a4a369f14ba3ba523b3013e`; arbitrum `0xecf6a02a8bfc046ff75e893d8a5ae993b069c38f` | ⚠️ Unaudited |
| PALMManager | governance | non_address_book | non_address_book_inventory (excluded) | 4 | ethereum | n/a | 8 deployments: ethereum `0x880d0a82dba76b4802f76a509d3aab1d22b1c4e8`; ethereum `0x8eebba5f7f433a8afd2794eabd6a7fc9bb92856e`; ethereum `0xf820692338cf37dd8cdcc20f664f531331862a89`; ethereum `0xf90ec87ba0ba9ac92f5374f112740ce291b8877e`; polygon `0x8eebba5f7f433a8afd2794eabd6a7fc9bb92856e`; polygon `0xf90ec87ba0ba9ac92f5374f112740ce291b8877e`; arbitrum `0x8eebba5f7f433a8afd2794eabd6a7fc9bb92856e`; arbitrum `0xf90ec87ba0ba9ac92f5374f112740ce291b8877e` | ⚠️ Unaudited |
| PALMManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x8e0cfa182425ae40774a4a9a25af25bfe5b3d511`; polygon `0x8e0cfa182425ae40774a4a9a25af25bfe5b3d511`; arbitrum `0x8e0cfa182425ae40774a4a9a25af25bfe5b3d511` | ⚠️ Unaudited |
| PALMManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x0a7d53ff9c56a3bd6a4a369f14ba3ba523b3013e`; base `0x8e0cfa182425ae40774a4a9a25af25bfe5b3d511` | ⚠️ Unaudited |
| PALMTerms | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | ethereum | n/a | 6 deployments: ethereum `0x50763a665dc24692e25ec8e2c203a79e602d2890`; ethereum `0xbd39e85499944556300b93851e01082ca17ce78e`; polygon `0x50763a665dc24692e25ec8e2c203a79e602d2890`; polygon `0xbd39e85499944556300b93851e01082ca17ce78e`; arbitrum `0x50763a665dc24692e25ec8e2c203a79e602d2890`; arbitrum `0xbd39e85499944556300b93851e01082ca17ce78e` | ⚠️ Unaudited |
| PALMTerms | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | ethereum | n/a | 6 deployments: ethereum `0x65b87a8a6c173d9ffde1f4c1d97187820495c515`; ethereum `0xb041f628e961598af9874bcf30cc865f67fad3ee`; polygon `0x65b87a8a6c173d9ffde1f4c1d97187820495c515`; polygon `0xb041f628e961598af9874bcf30cc865f67fad3ee`; arbitrum `0x65b87a8a6c173d9ffde1f4c1d97187820495c515`; arbitrum `0xb041f628e961598af9874bcf30cc865f67fad3ee` | ⚠️ Unaudited |
| PALMTerms | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x65b87a8a6c173d9ffde1f4c1d97187820495c515`; base `0xb041f628e961598af9874bcf30cc865f67fad3ee` | ⚠️ Unaudited |
| ParaSwapDebtSwapAdapterV3 | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcf85ff1c37c594a10195f7a9ab85cbb0a03f69de` | ⚠️ Unaudited |
| PolygonBridgeReceiver | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x18281dfc4d00905da1aaa6731414eaba843c468a`; polygon `0xd10b40ff1d92e2267d099da3509253d9da4d715e` | ⚠️ Unaudited |
| Pool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x4cd41204aa4c7438374256bd7be850ef9fcfab84`; ethereum `0xca0e1b56007df7d22214aa584678618b3be96a25`; polygon `0x4cd41204aa4c7438374256bd7be850ef9fcfab84`; polygon `0xca0e1b56007df7d22214aa584678618b3be96a25`; base `0xca0e1b56007df7d22214aa584678618b3be96a25`; arbitrum `0x4cd41204aa4c7438374256bd7be850ef9fcfab84`; arbitrum `0xca0e1b56007df7d22214aa584678618b3be96a25` | ⚠️ Unaudited |
| PoolBeacon | registry | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x6bc4e6b2c13ba42e933b23afab8a58bbbba5d02b`; arbitrum `0xfb93c2e5e41bd0ffd2e99a88e6d2a8d4f542d39a` | ⚠️ Unaudited |
| PoolConfigurator | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x04a8d477ee202adce1682f5902e1160455205b12`; arbitrum `0x3e05eb6e12a3c9ed5e46a710bcf052efd6d73fbd` | ⚠️ Unaudited |
| PoolFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x21eec6626f15d02a8896ebb7edd68ff3cb61e89e` | ⚠️ Unaudited |
| PoolFactory2 | registry | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x2095fe5cedbe22afc2174dac57cb6831954a560d`; arbitrum `0x5bfd44421b5e0405f8cfcc17463522af6b9e1ab3`; arbitrum `0xec287a91ac0b72ba7f249c08a2c64da317ef9715` | ⚠️ Unaudited |
| PoolFactory3 | registry | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf7f1f9d67a46452da30d4125ff39ed216e975e24` | ⚠️ Unaudited |
| PoolLogic | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8be473dcfa93132658821e67cbeb684ec8ea2e74` | ⚠️ Unaudited |
| PoolProxyDeployer | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb6773d5bf5b908b58ff5b7bd36a7f06da2eeeec7` | ⚠️ Unaudited |
| Position | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x8638fbd429b19249bb3bcf3ec72d07a657e49642`; ethereum `0xf7cb77c8dcb22a1bb4435932f3515319721faf44`; polygon `0x8638fbd429b19249bb3bcf3ec72d07a657e49642`; polygon `0xf7cb77c8dcb22a1bb4435932f3515319721faf44`; base `0x8638fbd429b19249bb3bcf3ec72d07a657e49642`; arbitrum `0x8638fbd429b19249bb3bcf3ec72d07a657e49642`; arbitrum `0xf7cb77c8dcb22a1bb4435932f3515319721faf44` | ⚠️ Unaudited |
| ProductOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 6 deployments: base `0xaf2762e1f75decdb8d240576e7a2cec1a365cd46`; arbitrum `0x1c4322915aff1b163baba5ecadeacfb22b2916b3`; arbitrum `0x22f4219a31aa70391f629e45e7622d6ed05ec6e0`; arbitrum `0x7bfd547d438a17449f09b6b0e45f8f4dd0c267fc`; arbitrum `0xc542ec842a9048acaa58d81a98d16564cfb86470`; arbitrum `0xef599b4e206718f09e7c7c6c4a0676b7ffa75cd0` | ⚠️ Unaudited |
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 23 deployments: ethereum `0x89dc63264dab74a4350d7f44bd62eec3b22c9ca0`; ethereum `0xc00e8acb7d8caaa1a9338cc42875097c319b7b19`; ethereum `0xd0db41560276832c78ea7b8fe0620feeea9c0d8a`; ethereum `0xdf4433a2b8850c49c2ef2cff6447637002d8d8dd`; ethereum `0xe1de7bd72a568f66e60ed17570fbd725205b4baf`; ethereum `0xec0634d79e67ce143b71f0dc8ee74cdf798a6fa7`; polygon `0x89dc63264dab74a4350d7f44bd62eec3b22c9ca0`; polygon `0xc00e8acb7d8caaa1a9338cc42875097c319b7b19`; polygon `0xd0db41560276832c78ea7b8fe0620feeea9c0d8a`; polygon `0xdf4433a2b8850c49c2ef2cff6447637002d8d8dd`; polygon `0xe1de7bd72a568f66e60ed17570fbd725205b4baf`; polygon `0xec0634d79e67ce143b71f0dc8ee74cdf798a6fa7`; base `0x89dc63264dab74a4350d7f44bd62eec3b22c9ca0`; base `0xc00e8acb7d8caaa1a9338cc42875097c319b7b19`; base `0xd0db41560276832c78ea7b8fe0620feeea9c0d8a`; base `0xdf4433a2b8850c49c2ef2cff6447637002d8d8dd`; arbitrum `0x89dc63264dab74a4350d7f44bd62eec3b22c9ca0`; arbitrum `0xc00e8acb7d8caaa1a9338cc42875097c319b7b19`; arbitrum `0xd0db41560276832c78ea7b8fe0620feeea9c0d8a`; arbitrum `0xd88c8e0ae21bea6ade41a41130bb4cd43e6b1723`; arbitrum `0xdf4433a2b8850c49c2ef2cff6447637002d8d8dd`; arbitrum `0xe1de7bd72a568f66e60ed17570fbd725205b4baf`; arbitrum `0xec0634d79e67ce143b71f0dc8ee74cdf798a6fa7` | ⚠️ Unaudited |
| QuotientOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0xc5973f2a05f65ff12da3955918b18afbba8d513e`; base `0xd01517c92da9761d01167ae656348201adfd3c28` | ⚠️ Unaudited |
| Redemption | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x382dfda7d9ba942e88f4c6c84513f28adfa1cdf4` | ⚠️ Unaudited |
| RedStoneNavProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | polygon | n/a | 3 deployments: polygon `0x6336b0c2bda32d283345a78afa588fe5a1533cd9`; polygon `0x6c4bdebf5d6da151d5efc4b6bc1662713a73a161`; polygon `0x72cbe32ec9b8d0a5f0be1f3e8dd6c1d12a6a1097` | ⚠️ Unaudited |
| Referee | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x29a7b907fdf4a9235f46d891b7aa1e7d3d35a3b6` | ⚠️ Unaudited |
| Referee10 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x1f122b41d6740f5de2df93b8b00013e84227955e`; arbitrum `0x4f18941fe5be7a54318989b2c42648914dce47c4` | ⚠️ Unaudited |
| Referee11 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x206cd481ab724ab2f9931bbddffa11ff07eb6c97`; arbitrum `0x9e3e14576ebd9595efb0d71aa9ff51a6dc621baf`; arbitrum `0xf8aaa0c382bc7f667c15e22621a9c0515ab239c7` | ⚠️ Unaudited |
| Referee2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4110251275f1b1f8e6ce7114139d69597fdad474` | ⚠️ Unaudited |
| Referee3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x10eda49fa8c6594cc6783ca5d7a6677d9e3236c1` | ⚠️ Unaudited |
| Referee4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x254954e3f6bd7443444036bea2d8fe88fdf496c1` | ⚠️ Unaudited |
| Referee5 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5538622ad2f14bf781af032542f7f00f080eb4cd` | ⚠️ Unaudited |
| Referee6 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x680f4a9f47e4cfea124a5654e759cb3b0a0c837c` | ⚠️ Unaudited |
| Referee7 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xff38aa9d553be47eee329f968adf0c74a01d021c` | ⚠️ Unaudited |
| Referee8 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 6 deployments: arbitrum `0x23173cd3e4fbeeb9188a1a51191bbd8c60edb9d8`; arbitrum `0x2336b6a52a9160d6e1190546994573ca7661eb6f`; arbitrum `0x609152cb742916e0f7fbc4391be750c458b049fe`; arbitrum `0x7fbbc1b25af3faffdfee1a93d42b0cc5ad225e3b`; arbitrum `0xcd1717cb51d5f3f61f7f127d952a9ede9e1d9c13`; arbitrum `0xf83de48dedb5936d61f8729f88e182e893fec66f` | ⚠️ Unaudited |
| Referee9 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x119b21e962b6c5e57340a3ccecfc3a90385a70dc`; arbitrum `0xfca2657fc4456ac256a78a31aab1128f5e1d2d40` | ⚠️ Unaudited |
| RefereeCalculations | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x1488598b22cc196aa547894493bc2313a8a00c1e`; arbitrum `0x5a195953555a11d2a4b654dca3ae4f9f19ebc3e2` | ⚠️ Unaudited |
| RewardsController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5f4d15d761528c57a5c30c43c1dab26fc5452731` | ⚠️ Unaudited |
| ScalingPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x23a982b74a3236a5f2297856d4391b2edbbb5549`; base `0x59e242d352ae13166b4987ae5c990c232f7f7cd6` | ⚠️ Unaudited |
| SecuritizeInternalNavProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x8636eb99c6675893a7beb1cef5461e31098a14fc`; polygon `0xe3b18d3a49eefe5c8c0fe4b1c6d69e33eed990f2` | ⚠️ Unaudited |
| Settlement | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8f1a7128b15fffd42f7555b655ca3e62ce1ecd6a` | ⚠️ Unaudited |
| SimpleManager | governance | non_address_book | non_address_book_inventory (excluded) | 3 | ethereum | n/a | 6 deployments: ethereum `0x3522df5c13a40dfaa9cec17e12f5fbd29dc811e1`; ethereum `0x64ab6c28423bd60611199a01c6720a0576d9a9fa`; polygon `0x3522df5c13a40dfaa9cec17e12f5fbd29dc811e1`; polygon `0x64ab6c28423bd60611199a01c6720a0576d9a9fa`; arbitrum `0x3522df5c13a40dfaa9cec17e12f5fbd29dc811e1`; arbitrum `0x64ab6c28423bd60611199a01c6720a0576d9a9fa` | ⚠️ Unaudited |
| SimpleManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x3522df5c13a40dfaa9cec17e12f5fbd29dc811e1`; base `0x64ab6c28423bd60611199a01c6720a0576d9a9fa` | ⚠️ Unaudited |
| SingleDepositorVaultFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x8f1fdb45160234d6e7e3653f5af8e09a2ce25aeb`; base `0x8f1fdb45160234d6e7e3653f5af8e09a2ce25aeb`; arbitrum `0xaec4118b98546c00b759726f44cb41ccffde1524`; arbitrum `0xcb437d034415cfae9e18aff43c06c9ddd6f4873c`; arbitrum `0xe658657bf4e5ae10280e6b6646198ee4f86005bb`; arbitrum `0xe8b4b491bb4e85eb75d3a400bd17447ad349b3c1`; arbitrum `0xef997960e29c32dadfdb798665a7156132640d93` | ⚠️ Unaudited |
| StableDebtToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x0c2c95b24529664fe55d4437d7a31175cfe6c4f7`; arbitrum `0x82dccf206ae2ab46e2099e663f70dee77cae7778` | ⚠️ Unaudited |
| StakingPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x599c8489256fb17b66d499d907f30b8022a29443` | ⚠️ Unaudited |
| StakingPool3 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x5f9d168d3435747335b1b3dc7e4d42e3510087c7`; arbitrum `0xdfe8378969dbda9c98fb04254e9e5f2770be6b83` | ⚠️ Unaudited |
| StataOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd61bf98649ea8f8d09e184184777b1867f00e5cb` | ⚠️ Unaudited |
| StataTokenFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xeb4c7182e566e5e692f4c3002029e6ee65ba83c7` | ⚠️ Unaudited |
| StataTokenV2 | token | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x86b752a647db629d6c65e8ca0eb52bfef3a9eb52` | ⚠️ Unaudited |
| StaticATokenFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: arbitrum `0x1f39d9f291026d72e711d6da86c5873c3007521d`; arbitrum `0x764594f8e9757ede877b75716f8077162b251460`; arbitrum `0x79b5e91037ae441de0d9e6fd3fd85b96b83d4e93`; arbitrum `0xe9e52021f4e11dead8661812a0a6c8627aba2a54` | ⚠️ Unaudited |
| StaticATokenLM | token | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: arbitrum `0x4c0633bf70fb2bb984a9eec5d9052bdea451c70a`; arbitrum `0x729b3ea8c005abc58c9150fb57ec161296f06766`; arbitrum `0x9bf9df78b1f7c76a473588c41321b5059b62981e`; arbitrum `0xc026f5dd7869e0ddc44a759ea3dec6d5cd8d996b` | ⚠️ Unaudited |
| SupplyLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb04280b09f47cfd81906817505f24cefe1ba86d2` | ⚠️ Unaudited |
| SwapPermissionsPayload | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x209ad99bd808221293d03827b86cc544bca0023b` | ⚠️ Unaudited |
| TempProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x880d0a82dba76b4802f76a509d3aab1d22b1c4e8` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 6 deployments: polygon `0x1b2e88cc7365d90e7e81392432482925bd8437e9`; polygon `0xcc3e7c85bb0ee4f09380e041fee95a0caedd4a02`; base `0x1b2e88cc7365d90e7e81392432482925bd8437e9`; base `0x3b6f1fe07cdab8a43f39c3b99ba8ff26e28db8b4`; base `0x88730d254a2f7e6ac8388c3198afd694ba9f7fae`; base `0xcc3e7c85bb0ee4f09380e041fee95a0caedd4a02` | ⚠️ Unaudited |
| TinyKeysAirdrop | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x0209a0c0abfe82916df492d121667acca26c7eb0`; arbitrum `0x765fa67f02aaa091f30a78322b9afd6d2faa1577` | ⚠️ Unaudited |
| TinyKeysAirdrop | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa670bb3cf7e9c7d02315003f3efd689cf4d42c5b` | ⚠️ Unaudited |
| TransparentProxyFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9b643d4ac937bee8bfb1ec76401c22e18c318429` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 9 deployments: arbitrum `0x4cb9a7ae498cedcbb5eae9f25736ae7d428c9d66`; arbitrum `0x68d78d1e81379efd9c61f8e9131d52ce571af4fd`; arbitrum `0x94f4abc83eae00b693286b6edca09e1d76183c97`; arbitrum `0x9d9c7d3c7ffe27b8f7b7e6d80aadefec12453a21`; arbitrum `0xa5edbdd9646f8dff606d7448e414884c7d905dca`; arbitrum `0xbc14d8563b248b79689ecbc43bba53290e0b6b66`; arbitrum `0xcd62360854aecf6285fa310d69c5ebaf4cd5e95f`; arbitrum `0xf9e08660223e2dbb1c0b28c82942ab6b5e38b8e5`; arbitrum `0xfd41041180571c5d371bea3d9550e55653671198` | ⚠️ Unaudited |
| UiPoolDataProviderV3 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9a8d4d93deb59e0457f179e6b69a9073d7e2e5db` | ⚠️ Unaudited |
| Underlying | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 10 deployments: ethereum `0x39b9891ba3c5a8fe69c19f54db2fd90a483b780a`; ethereum `0x3b8d59e7048c8efe3492d23e4dae1967fbbc0988`; ethereum `0x92cb4f7e4cb623e73d5ec84a43669adc757c2bd2`; polygon `0x39b9891ba3c5a8fe69c19f54db2fd90a483b780a`; polygon `0x3b8d59e7048c8efe3492d23e4dae1967fbbc0988`; polygon `0x92cb4f7e4cb623e73d5ec84a43669adc757c2bd2`; base `0x39b9891ba3c5a8fe69c19f54db2fd90a483b780a`; arbitrum `0x39b9891ba3c5a8fe69c19f54db2fd90a483b780a`; arbitrum `0x3b8d59e7048c8efe3492d23e4dae1967fbbc0988`; arbitrum `0x92cb4f7e4cb623e73d5ec84a43669adc757c2bd2` | ⚠️ Unaudited |
| UpgradePayload | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 7 deployments: arbitrum `0x13f331258205f948cb6a148afe990145079a9b18`; arbitrum `0x19ed0c564d7818bca61c358b10f017f9239d2df2`; arbitrum `0x4daf1ad67cb9eeb004c338330e09d02125fb371d`; arbitrum `0x713bea8d0e186d80a00a9889e58fa872a0ad0849`; arbitrum `0xaddb96fb6a795faf042dd25bd4710267c41d1f74`; arbitrum `0xb660d9f9745575b19a09fe0556c1b4c160966a32`; arbitrum `0xf5ea8a01d4e0456b605dc0f1ec4e401a8ca6397a` | ⚠️ Unaudited |
| V301UpgradePayload | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3cd1dfb81c50a5300c60a181ed145a7286d81e0a` | ⚠️ Unaudited |
| VariableDebtToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x5e76e98e0963ecdc6a065d1435f84065b7523f39`; arbitrum `0xe427fcbd54169136391cfedf68e96abb13da87a0` | ⚠️ Unaudited |
| Whitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9ab6a9a8638a2c5c835f168fb8fa8adbf0ba0d2d` | ⚠️ Unaudited |
| WrappedTokenGatewayV3 | token | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: arbitrum `0x1401bf602d95a0d52978961644b7bdd117cf6df6`; arbitrum `0x5283beced7adf6d003225c13896e536f2d4264ff`; arbitrum `0x5760e34c4003752329bc77790b1de44c2799f8c3`; arbitrum `0xecd4bd3121f9fd604ffac631bf6d41ec12f1fafb` | ⚠️ Unaudited |
| WstETHPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f67e4d9bd67efa28236013288737d39aef48e79` | ⚠️ Unaudited |
| Xai | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3fb787101dc6be47cfe18aeee15404dcc842e6af` | ⚠️ Unaudited |
| Xai2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd00c1aea5e09d141ff183a269a6c73a6ed969f35` | ⚠️ Unaudited |
| XaiGaslessClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x149107deb70b9514930d8e454fc32e77c5abafe0`; arbitrum `0x3be02253be4504a860d8ccb9c5e9284e0461772d` | ⚠️ Unaudited |
| XaiGaslessClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb13f33925e72778dd0cc836a33e17963388d627d` | ⚠️ Unaudited |
| XaiRedEnvelope | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x080c2e59e963959bbe9ea064d1bcbc881f380ff2`; arbitrum `0xf26af8313cb039a58b86c2ab7aa5c540eceeb70f` | ⚠️ Unaudited |
| XaiVoting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc051f0afecee3dea99443094fa2e5c1cd9b1f84f` | ⚠️ Unaudited |
| XaiVoting2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb5fb7f66702fdf1096fee87bdc467f261bdde7f3` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (2)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| RouterSwapExecutor | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x25e9b0576f92d431882f158bb8fb4ac47bdd7b96`; polygon `0x25e9b0576f92d431882f158bb8fb4ac47bdd7b96`; base `0x25e9b0576f92d431882f158bb8fb4ac47bdd7b96`; arbitrum `0x25e9b0576f92d431882f158bb8fb4ac47bdd7b96` | ⚠️ Unaudited (bytecode match) |
| RouterSwapResolver | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x2ce9e840b69a86c965f4d732e39e389fe69fda51`; polygon `0x2ce9e840b69a86c965f4d732e39e389fe69fda51`; base `0x2ce9e840b69a86c965f4d732e39e389fe69fda51`; arbitrum `0x2ce9e840b69a86c965f4d732e39e389fe69fda51` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (77)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x001b7fafcf72a7a091d93dcc08ed48c87c2e71e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x032c7e7a2bccd3fb74afe8f1dcb5e1349145603e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c1f4982a5dad724c4f86256da845703575e8d5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1395c314782bba704ca984ad41e57275f6e77b09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x277e028e24655792320038e2f8d397654866933c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44b0e03b702741eb9abeaef0432578f8046f6335` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c3c5088382a700c47bc0d0a20649d192d39d124` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5003e957648c5ad3c40a8c9a192dd4e13eb6fa2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x574b5714d0ae2e17b38559a62d81e900630156e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x633715059bb5b6471fe7b4ae35ee699f1359db4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b8d4485e11aae228a32fae5802c6d4ba25ea404` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d2727fe417f15dd7e9f23008dd7babd7bf8a999` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84adef3f428468c73bd1731a81219a64c9d7c527` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8be29e7d87954213d9fb6494ab2cc11178822f7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2c7a7c4e97ca9b5d0a7288b2ab8e0d97b2e9084` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4babdf623a35b422bfacf05c46d0d93e0d9ae15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6149001299f3894fa2554e518b40961da554ee0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1eb7203aa8fe4c2f00e0b39bfa59b625aaa229d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9e4ee15be28b5414d48d9eb0c3eafeee5a1cae6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5f375f508efe42ccd37b423fd89940797c0fa47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xefb8350ba865a21e1fd8c9502da7072d6930ef02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x00be76740759518db9c51bc59ec1993f2ffa4648` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x01bc0c55a0f06f4cb79c24c4013995a4953cf69f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x08fa3234f290294d2b8d3b3007291ab6b59d4ec6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0a241582ff62807488aecb812d79dbbf3055ad25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1a593dfe331bdeb3966001a3348cf37cc04fefae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1a84630fa25f05e29a3d9fc49bd42bf2bab84d16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1bce2505c3102b0c9739b38c02d51b009dec4820` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1e76ba1e747f9f301ff0967145f83b952d447097` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x26722604683cd05fbd5eb297c3fbbeec9141ca2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x27df4528feb3f1701b313d22f63ef483be836097` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x34bd60047231959e37857e75d0bac51bbe0f0c2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x40c7ea7de10fd8647eb664787129c835937c4dbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x482ccfc4c4a36edc4a83903ad18420162d2afa70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x50507925d3407bd44295d480306c58d37532283a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5bc8813ff53b83c9ff83c7146b0635397ebc9436` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6116a7f9e85c81888d2e50e8c7e5aa898c159086` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x655641c0e1e1c657f5c06cc49de463cd314f7529` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x673ff915f56fdec6230f736b797a0911184dfb3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6e9c8819abb5248d53993d71a9e610fea05def12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x787e419d95b44143a45b3d1b155cfe7dcff1c71b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7c580917aa268d87cd364b00c71785f750c2e958` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7dc2a9024174a7cea84a821b27badba854e2bbb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7dc2df181bfce274eda8c61d3a279327164470a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7e5c3bac7ada2e5a16bc8bc6d5436016fea40d61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7f74d323885c2d8f51a4dc26175447c755c47ff6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x83780ec591748fddbce4f26f4ba8f83a32637d1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x83cd3d0e9f027b70cb4833b5c251f6fb62cfd9b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x89eb018931bf7ae1b90c3f212480fad8a1c5607c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x92dbc1dcd0373c5857a9270ba351aa8c99d6af17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x94491d7357097bd55272beebf371b8d74125c233` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x97449b13294d0314c25cf6dcb423e82f3d11f7a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9b7b11b761bc2264d287ceb73f132aa8be0f1852` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xace21f3322982b8fb1b007c050a0f101d0d09e86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb3059c7430af92588e015eb62dd6b12e705db286` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb97b1d7458c78cb369dc7c5a06c1c71eda3b05fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc542ec842a9048acaa58d81a98d16564cfb86470` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc6a2c9e43e2bec2c092df0a36df16461c932e923` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xca4acbe0888c714ea8e5c670ad03fa6c2362a8f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcc7c85cbdf652af67f8027ac7a3143e34293af61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcf9b6c43d4633c8c6d5d2910f2320629ad4aa831` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd1eb7203aa8fe4c2f00e0b39bfa59b625aaa229d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd5afabc40942430df65cb6d0bcb97f5c9c220619` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd9a442856c234a39a81a089c06451ebaa4306a72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe6002e861f832f5b92eacedaf28aae5fee7c9d09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xeaf479adb472fa64f061c74abf75aea8183cb379` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfa6295a04f99815e8fa65240ed2cf9ad383c50ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7e334d4be4a7d42790ecb93f0d975fc3758dd004` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-378464 | `0x833589fcd6edb6e08f4c7c32d4f71b54bda02913` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1b76b14b575c9a52fc24065fa6f7d2b34d47ea4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3d4cfe349e85ca664ef5022cc4ecbcd3e54c81f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5b3400c9d2c55d5a718675e00981537b1f94bdfc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5cd0cb0dcdef98a8d07a8d44054a13f2c35c53e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x85b3a23bb0094aca0fdba1a457326ef62f9d876e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9a3a633b6cc3c5382132581d63b9f63335f44b37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc5973f2a05f65ff12da3955918b18afbba8d513e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xde7c8e63a75dab511b5961a753aa91004bb41a10` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 455
- Live contracts: 0
- Unknown liveness contracts: 455
- Source-verified contracts: 384
- Currently scope-matched contracts retained as-is: 0
- Classification counts: candidate review=248, source verified unclassified=136, unverified unclassified=71

Showing first 200 of 455 contracts. The complete deployer expansion list is in `brief.json`.

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| candidate review | ArrakisV2<br>`0x7f346f1eb7a65ff83f51b3fd76dcc70979e6df38` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | ArrakisV2<br>`0xaf0f96e8702cb1b8160e43c8c020c608cd7b134d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | ArrakisV2<br>`0xb5c3b286dd591282fe87dfab0613488e1b6b09ba` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | ArrakisV2Factory<br>`0x26673a336a720532ebf1d225bfc7092772b3b775` | non_address_book | registry | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | ArrakisV2Factory<br>`0x453f7d013ca100ade3ab77e007ffcfbdf753857c` | non_address_book | registry | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | ArrakisV2Factory<br>`0xf90aafabb1a4c0ce318be12da73f0f31fabe865d` | non_address_book | registry | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | ArrakisV2Helper<br>`0x07d2ceb4869dfe17e8d48c92a71edc3ae564449f` | non_address_book | periphery | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | ArrakisV2Helper<br>`0xccee73ea4c7a42491c68fea78b1bddd1a35c8d9c` | non_address_book | periphery | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | ArrakisV2Resolver<br>`0x4bc385b1ddf0121cc40a0715cfd3befe52f905f5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | ArrakisV2Resolver<br>`0x535c5fdf31477f799366df6e4899a12a801cc7b8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | ArrakisV2Resolver<br>`0xb11bb8ad710579cc5ed16b1c8587808109c1f193` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | Comet<br>`0x50cb5e9a07f5c8db997b236761622931364d634e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x343715fa797b8e9fe48b9efab4b54f01ca860e78` |
| candidate review | CometFactory<br>`0x1c1853bc7c6bff0d276da53972c0b1a066db1ae7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x343715fa797b8e9fe48b9efab4b54f01ca860e78` |
| candidate review | CometProxyAdmin<br>`0x1ec63b5883c3481134fd50d5daebc83ecd2e8779` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x343715fa797b8e9fe48b9efab4b54f01ca860e78` |
| candidate review | Configurator<br>`0xcfc1fa6b7ca982176529899d99af6473ad80df4f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x343715fa797b8e9fe48b9efab4b54f01ca860e78` |
| candidate review | ConfiguratorProxy<br>`0x316f9708bb98af7da9c68c1c3b5e79039cd336e3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x343715fa797b8e9fe48b9efab4b54f01ca860e78` |
| candidate review | Pool<br>`0x4cd41204aa4c7438374256bd7be850ef9fcfab84` | non_address_book | core_logic | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | Pool<br>`0xca0e1b56007df7d22214aa584678618b3be96a25` | non_address_book | core_logic | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | Position<br>`0x8638fbd429b19249bb3bcf3ec72d07a657e49642` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | Position<br>`0xf7cb77c8dcb22a1bb4435932f3515319721faf44` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | ProxyAdmin<br>`0x89dc63264dab74a4350d7f44bd62eec3b22c9ca0` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | ProxyAdmin<br>`0xc00e8acb7d8caaa1a9338cc42875097c319b7b19` | non_address_book | governance | unknown | verified | review: missing_fingerprint | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | ProxyAdmin<br>`0xd0db41560276832c78ea7b8fe0620feeea9c0d8a` | non_address_book | governance | unknown | verified | review: missing_fingerprint | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | ProxyAdmin<br>`0xdf4433a2b8850c49c2ef2cff6447637002d8d8dd` | non_address_book | governance | unknown | verified | review: missing_fingerprint | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | ProxyAdmin<br>`0xe1de7bd72a568f66e60ed17570fbd725205b4baf` | non_address_book | governance | unknown | verified | review: missing_fingerprint | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | ProxyAdmin<br>`0xec0634d79e67ce143b71f0dc8ee74cdf798a6fa7` | non_address_book | governance | unknown | verified | review: missing_fingerprint | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | TransparentUpgradeableProxy<br>`0x055b6d3919042be29c5f044a55529933e1273a88` | non_address_book | registry | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | TransparentUpgradeableProxy<br>`0x0a7d53ff9c56a3bd6a4a369f14ba3ba523b3013e` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | TransparentUpgradeableProxy<br>`0x2f79d4ceb79ebd26161e51ca0c9300f970ded54d` | non_address_book | core_logic | unknown | verified | review: no_fresh_structural_match | `0xa02e24b89fb296a3c347f88c5ff3de3aefaa6b8b` |
| candidate review | TransparentUpgradeableProxy<br>`0x3522df5c13a40dfaa9cec17e12f5fbd29dc811e1` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | TransparentUpgradeableProxy<br>`0x50763a665dc24692e25ec8e2c203a79e602d2890` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | TransparentUpgradeableProxy<br>`0x6ac8bab8b775a03b8b72b2940251432442f61b94` | non_address_book | adapter | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | TransparentUpgradeableProxy<br>`0xb041f628e961598af9874bcf30cc865f67fad3ee` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | TransparentUpgradeableProxy<br>`0xecb8ffcb2369ef188a082a662f496126f66c8288` | non_address_book | registry | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | TransparentUpgradeableProxy<br>`0xf820692338cf37dd8cdcc20f664f531331862a89` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | TransparentUpgradeableProxy<br>`0xf90ec87ba0ba9ac92f5374f112740ce291b8877e` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | Underlying<br>`0x39b9891ba3c5a8fe69c19f54db2fd90a483b780a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | Underlying<br>`0x3b8d59e7048c8efe3492d23e4dae1967fbbc0988` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | Underlying<br>`0x92cb4f7e4cb623e73d5ec84a43669adc757c2bd2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | ArrakisV2<br>`0x7f346f1eb7a65ff83f51b3fd76dcc70979e6df38` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | ArrakisV2<br>`0xaf0f96e8702cb1b8160e43c8c020c608cd7b134d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | ArrakisV2<br>`0xb5c3b286dd591282fe87dfab0613488e1b6b09ba` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | ArrakisV2Factory<br>`0x26673a336a720532ebf1d225bfc7092772b3b775` | non_address_book | registry | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | ArrakisV2Factory<br>`0x453f7d013ca100ade3ab77e007ffcfbdf753857c` | non_address_book | registry | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | ArrakisV2Factory<br>`0xf90aafabb1a4c0ce318be12da73f0f31fabe865d` | non_address_book | registry | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | ArrakisV2Helper<br>`0x07d2ceb4869dfe17e8d48c92a71edc3ae564449f` | non_address_book | periphery | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | ArrakisV2Helper<br>`0xccee73ea4c7a42491c68fea78b1bddd1a35c8d9c` | non_address_book | periphery | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | ArrakisV2Resolver<br>`0x4bc385b1ddf0121cc40a0715cfd3befe52f905f5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | ArrakisV2Resolver<br>`0x535c5fdf31477f799366df6e4899a12a801cc7b8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | ArrakisV2Resolver<br>`0xb11bb8ad710579cc5ed16b1c8587808109c1f193` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | Comet<br>`0x27c348936400791b7350d80fb81bc61ad68df4ae` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6103db328d4864dc16bd2f0ee1b9a92e3f87f915` |
| candidate review | Comet<br>`0xb21b06d71c75973babde35b49ffdac3f82ad3775` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6103db328d4864dc16bd2f0ee1b9a92e3f87f915` |
| candidate review | CometFactory<br>`0x8495af03fb797e2965bcb42cb0693e1c15614798` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6103db328d4864dc16bd2f0ee1b9a92e3f87f915` |
| candidate review | CometProxyAdmin<br>`0x14d2c9dd16304e8a95fc8395a37f17b6c15239c6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6103db328d4864dc16bd2f0ee1b9a92e3f87f915` |
| candidate review | CometProxyAdmin<br>`0xd712ace4ca490d4f3e92992ecf3de12251b975f9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6103db328d4864dc16bd2f0ee1b9a92e3f87f915` |
| candidate review | Configurator<br>`0x9c4ec768c28520b50860ea7a15bd7213a9ff58bf` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6103db328d4864dc16bd2f0ee1b9a92e3f87f915` |
| candidate review | Configurator<br>`0xf4127474cef367a5fee8eba01725f17acee964f0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6103db328d4864dc16bd2f0ee1b9a92e3f87f915` |
| candidate review | ConfiguratorProxy<br>`0x3b6f1fe07cdab8a43f39c3b99ba8ff26e28db8b4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6103db328d4864dc16bd2f0ee1b9a92e3f87f915` |
| candidate review | ConfiguratorProxy<br>`0x83e0f742cacbe66349e3701b171ee2487a26e738` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6103db328d4864dc16bd2f0ee1b9a92e3f87f915` |
| candidate review | ERC1967Proxy<br>`0x4c1e5e780269186a4fbb31c913b11b1a8922b830` | non_address_book | core_logic | unknown | verified | review: no_fresh_structural_match | `0x4e1f11e4a6d6490b8dc05cdcc2e2f74a0fe12712` |
| candidate review | ERC1967Proxy<br>`0x6336b0c2bda32d283345a78afa588fe5a1533cd9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4e1f11e4a6d6490b8dc05cdcc2e2f74a0fe12712` |
| candidate review | ERC1967Proxy<br>`0x72cbe32ec9b8d0a5f0be1f3e8dd6c1d12a6a1097` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4e1f11e4a6d6490b8dc05cdcc2e2f74a0fe12712` |
| candidate review | ERC1967Proxy<br>`0xa482bec6614f3b923cc0079d5c27ee70b5791c5c` | non_address_book | core_logic | unknown | verified | review: no_fresh_structural_match | `0x4e1f11e4a6d6490b8dc05cdcc2e2f74a0fe12712` |
| candidate review | ERC1967Proxy<br>`0xe3b18d3a49eefe5c8c0fe4b1c6d69e33eed990f2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4e1f11e4a6d6490b8dc05cdcc2e2f74a0fe12712` |
| candidate review | Pool<br>`0x4cd41204aa4c7438374256bd7be850ef9fcfab84` | non_address_book | core_logic | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | Pool<br>`0xca0e1b56007df7d22214aa584678618b3be96a25` | non_address_book | core_logic | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | Position<br>`0x8638fbd429b19249bb3bcf3ec72d07a657e49642` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | Position<br>`0xf7cb77c8dcb22a1bb4435932f3515319721faf44` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | ProxyAdmin<br>`0x89dc63264dab74a4350d7f44bd62eec3b22c9ca0` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | ProxyAdmin<br>`0xc00e8acb7d8caaa1a9338cc42875097c319b7b19` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | ProxyAdmin<br>`0xd0db41560276832c78ea7b8fe0620feeea9c0d8a` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | ProxyAdmin<br>`0xdf4433a2b8850c49c2ef2cff6447637002d8d8dd` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | ProxyAdmin<br>`0xe1de7bd72a568f66e60ed17570fbd725205b4baf` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | ProxyAdmin<br>`0xec0634d79e67ce143b71f0dc8ee74cdf798a6fa7` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | TempProxyAdmin<br>`0x880d0a82dba76b4802f76a509d3aab1d22b1c4e8` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | TransparentUpgradeableProxy<br>`0x055b6d3919042be29c5f044a55529933e1273a88` | non_address_book | registry | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | TransparentUpgradeableProxy<br>`0x0a7d53ff9c56a3bd6a4a369f14ba3ba523b3013e` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | TransparentUpgradeableProxy<br>`0x1f1e7b1cc1df05924a6c039b3145a93d76adea61` | non_address_book | core_logic | unknown | verified | review: no_fresh_structural_match | `0x3345261fdae0bc146b2f45484dcceb4708a3fec4` |
| candidate review | TransparentUpgradeableProxy<br>`0x24a73dd9c5a66eadaceaf57bb9750b3a11e29e4d` | non_address_book | core_logic | unknown | verified | review: no_fresh_structural_match | `0xa02e24b89fb296a3c347f88c5ff3de3aefaa6b8b` |
| candidate review | TransparentUpgradeableProxy<br>`0x2c616f5dc3d482010d870d8a01b72cbb1711254a` | non_address_book | core_logic | unknown | verified | review: no_fresh_structural_match | `0x3345261fdae0bc146b2f45484dcceb4708a3fec4` |
| candidate review | TransparentUpgradeableProxy<br>`0x3522df5c13a40dfaa9cec17e12f5fbd29dc811e1` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | TransparentUpgradeableProxy<br>`0x50763a665dc24692e25ec8e2c203a79e602d2890` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | TransparentUpgradeableProxy<br>`0x5e5057b8d220eb8573bc342136fdf1d869316d18` | non_address_book | core_logic | unknown | verified | review: no_fresh_structural_match | `0x3345261fdae0bc146b2f45484dcceb4708a3fec4` |
| candidate review | TransparentUpgradeableProxy<br>`0x6ac8bab8b775a03b8b72b2940251432442f61b94` | non_address_book | adapter | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | TransparentUpgradeableProxy<br>`0x88730d254a2f7e6ac8388c3198afd694ba9f7fae` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6103db328d4864dc16bd2f0ee1b9a92e3f87f915` |
| candidate review | TransparentUpgradeableProxy<br>`0xb041f628e961598af9874bcf30cc865f67fad3ee` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | TransparentUpgradeableProxy<br>`0xb33166e092afc5532c74041fd8793d96541c8c4b` | non_address_book | core_logic | unknown | verified | review: no_fresh_structural_match | `0xa02e24b89fb296a3c347f88c5ff3de3aefaa6b8b` |
| candidate review | TransparentUpgradeableProxy<br>`0xecb8ffcb2369ef188a082a662f496126f66c8288` | non_address_book | registry | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | TransparentUpgradeableProxy<br>`0xf90ec87ba0ba9ac92f5374f112740ce291b8877e` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | Underlying<br>`0x39b9891ba3c5a8fe69c19f54db2fd90a483b780a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | Underlying<br>`0x3b8d59e7048c8efe3492d23e4dae1967fbbc0988` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | Underlying<br>`0x92cb4f7e4cb623e73d5ec84a43669adc757c2bd2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | ArrakisV2<br>`0x7f346f1eb7a65ff83f51b3fd76dcc70979e6df38` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | ArrakisV2Factory<br>`0x26673a336a720532ebf1d225bfc7092772b3b775` | non_address_book | registry | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | ArrakisV2Factory<br>`0xf90aafabb1a4c0ce318be12da73f0f31fabe865d` | non_address_book | registry | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | ArrakisV2Resolver<br>`0x535c5fdf31477f799366df6e4899a12a801cc7b8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | Comet<br>`0x1f9d71ef69f502188ec65cebac049fe646b74de4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6103db328d4864dc16bd2f0ee1b9a92e3f87f915` |
| candidate review | Comet<br>`0xf25212e676d1f7f89cd72ffee66158f541246445` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6103db328d4864dc16bd2f0ee1b9a92e3f87f915` |
| candidate review | CometFactory<br>`0x27c348936400791b7350d80fb81bc61ad68df4ae` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6103db328d4864dc16bd2f0ee1b9a92e3f87f915` |
| candidate review | CometProxyAdmin<br>`0xa5edbdd9646f8dff606d7448e414884c7d905dca` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6103db328d4864dc16bd2f0ee1b9a92e3f87f915` |
| candidate review | CometProxyAdmin<br>`0xbde8f31d2ddda895264e27dd990fab3dc87b372d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6103db328d4864dc16bd2f0ee1b9a92e3f87f915` |
| candidate review | Configurator<br>`0x83e0f742cacbe66349e3701b171ee2487a26e738` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6103db328d4864dc16bd2f0ee1b9a92e3f87f915` |
| candidate review | ConfiguratorProxy<br>`0x45939657d1ca34a8fa39a924b71d28fe8431e581` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6103db328d4864dc16bd2f0ee1b9a92e3f87f915` |
| candidate review | Pool<br>`0xca0e1b56007df7d22214aa584678618b3be96a25` | non_address_book | core_logic | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | Position<br>`0x8638fbd429b19249bb3bcf3ec72d07a657e49642` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | ProxyAdmin<br>`0x89dc63264dab74a4350d7f44bd62eec3b22c9ca0` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | ProxyAdmin<br>`0xc00e8acb7d8caaa1a9338cc42875097c319b7b19` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | ProxyAdmin<br>`0xd0db41560276832c78ea7b8fe0620feeea9c0d8a` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | ProxyAdmin<br>`0xdf4433a2b8850c49c2ef2cff6447637002d8d8dd` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | TransparentUpgradeableProxy<br>`0x0a7d53ff9c56a3bd6a4a369f14ba3ba523b3013e` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | TransparentUpgradeableProxy<br>`0x3522df5c13a40dfaa9cec17e12f5fbd29dc811e1` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | TransparentUpgradeableProxy<br>`0x6ac8bab8b775a03b8b72b2940251432442f61b94` | non_address_book | adapter | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | TransparentUpgradeableProxy<br>`0xb041f628e961598af9874bcf30cc865f67fad3ee` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | TransparentUpgradeableProxy<br>`0xecb8ffcb2369ef188a082a662f496126f66c8288` | non_address_book | registry | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | Underlying<br>`0x39b9891ba3c5a8fe69c19f54db2fd90a483b780a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | AaveV3PositionOracle<br>`0xd4237b72d32106206d1659bb1943e95f75d49043` | non_address_book | operational_periphery | unknown | verified | review: missing_fingerprint | `0xde61092e7d6987c650d086e6276121d91f4cb82f` |
| candidate review | AeraV2Factory<br>`0xf626e29bd23d9b82cb2fc792e71e6d93ac80d2fb` | non_address_book | registry | unknown | verified | review: missing_fingerprint | `0xaf468c302bdaee50acc913b27e5b1222f6b6623a` |
| candidate review | ArrakisV2<br>`0x7f346f1eb7a65ff83f51b3fd76dcc70979e6df38` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | ArrakisV2<br>`0xaf0f96e8702cb1b8160e43c8c020c608cd7b134d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | ArrakisV2<br>`0xb5c3b286dd591282fe87dfab0613488e1b6b09ba` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | ArrakisV2Factory<br>`0x26673a336a720532ebf1d225bfc7092772b3b775` | non_address_book | registry | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | ArrakisV2Factory<br>`0x453f7d013ca100ade3ab77e007ffcfbdf753857c` | non_address_book | registry | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | ArrakisV2Factory<br>`0xf90aafabb1a4c0ce318be12da73f0f31fabe865d` | non_address_book | registry | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | ArrakisV2Helper<br>`0x07d2ceb4869dfe17e8d48c92a71edc3ae564449f` | non_address_book | periphery | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | ArrakisV2Helper<br>`0xccee73ea4c7a42491c68fea78b1bddd1a35c8d9c` | non_address_book | periphery | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | ArrakisV2Oracle<br>`0x8897f86a6f765e6248407f5aba201e7587ddf5f5` | non_address_book | operational_periphery | unknown | verified | review: missing_fingerprint | `0xde61092e7d6987c650d086e6276121d91f4cb82f` |
| candidate review | ArrakisV2Oracle<br>`0x96b912bf0631b6b5b60898449d7ebb47014ff88c` | non_address_book | operational_periphery | unknown | verified | review: missing_fingerprint | `0xde61092e7d6987c650d086e6276121d91f4cb82f` |
| candidate review | ArrakisV2Resolver<br>`0x4bc385b1ddf0121cc40a0715cfd3befe52f905f5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | ArrakisV2Resolver<br>`0x535c5fdf31477f799366df6e4899a12a801cc7b8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | ArrakisV2Resolver<br>`0xb11bb8ad710579cc5ed16b1c8587808109c1f193` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | BeaconProxy<br>`0x3f5901c841f4d757c7db37ef585475aba7819344` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x7c94e07bbf73518b0e25d1be200a5b58f46f9dc7` |
| candidate review | BorrowLogic<br>`0xa25d9f14cfa40d3227ed9a48b124667ddffcfddd` | non_address_book | core_logic | unknown | verified | review: no_fresh_structural_match | `0x076d6da60aaac6c97a8a0fe8057f9564203ee545` |
| candidate review | BorrowLogic<br>`0xd1b3e25fd7c8ae7caddc6f71b461b79cd4ddcfa3` | non_address_book | core_logic | unknown | verified | review: no_fresh_structural_match | `0x076d6da60aaac6c97a8a0fe8057f9564203ee545` |
| candidate review | BridgeLogic<br>`0xfe76366a986b72c3f2923e05e6ba07b7de5401e4` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0x076d6da60aaac6c97a8a0fe8057f9564203ee545` |
| candidate review | BucketTracker<br>`0x1582e73d95f33e39b421f9224d9e7daf4508408e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x7c94e07bbf73518b0e25d1be200a5b58f46f9dc7` |
| candidate review | BucketTracker<br>`0x8a36b7010eaa56951661f775e8770e9550f29c7e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x7c94e07bbf73518b0e25d1be200a5b58f46f9dc7` |
| candidate review | BucketTracker<br>`0xa83825dc4d94513d1c907b319ee8224fa63a29b2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x7c94e07bbf73518b0e25d1be200a5b58f46f9dc7` |
| candidate review | CompoundV3PositionOracle<br>`0x77ca117d864229681a72b1b2ee71b7d84f4fb4a0` | non_address_book | operational_periphery | unknown | verified | review: missing_fingerprint | `0xde61092e7d6987c650d086e6276121d91f4cb82f` |
| candidate review | ConfiguratorLogic<br>`0xaa84d489f71d2a8d71e992143a2de8b3aa54aaa9` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0x076d6da60aaac6c97a8a0fe8057f9564203ee545` |
| candidate review | EModeLogic<br>`0x70bf6ec6fca41a7d08dcbb9909985ac0a4510b5e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x076d6da60aaac6c97a8a0fe8057f9564203ee545` |
| candidate review | esXai<br>`0x8d6c063656b00e5c37ce007c0f99848d58f19d6b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x7c94e07bbf73518b0e25d1be200a5b58f46f9dc7` |
| candidate review | esXai2<br>`0x5b41169626452d70928b1d7fe7a3d8b4a24e91c9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x7c94e07bbf73518b0e25d1be200a5b58f46f9dc7` |
| candidate review | esXai2<br>`0xb38e2edda6c31d9972cac770f3f404cd0d7b55df` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x7c94e07bbf73518b0e25d1be200a5b58f46f9dc7` |
| candidate review | esXai3<br>`0x275e6469ba0f86f09404cfe9b7d583d65eed92a3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x7c94e07bbf73518b0e25d1be200a5b58f46f9dc7` |
| candidate review | esXai4<br>`0x4efc7448ac3cb4d3c6c2e3300f66047fea401a62` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x7c94e07bbf73518b0e25d1be200a5b58f46f9dc7` |
| candidate review | FlashLoanLogic<br>`0x1d69c48a35ddd241e72a31db0e637676d89fc553` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x076d6da60aaac6c97a8a0fe8057f9564203ee545` |
| candidate review | L2Pool<br>`0x15196d30bc37d2fc5c718ffcd9d7687d76f3ad1f` | non_address_book | core_logic | unknown | verified | review: no_fresh_structural_match | `0x076d6da60aaac6c97a8a0fe8057f9564203ee545` |
| candidate review | L2Pool<br>`0xbcb167bdcf14a8f791d6f4a6edd964aed2f8813b` | non_address_book | core_logic | unknown | verified | review: no_fresh_structural_match | `0x076d6da60aaac6c97a8a0fe8057f9564203ee545` |
| candidate review | LiquidationLogic<br>`0x398808db36da6ba4e30d4fb88d72c3473921bc6e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x076d6da60aaac6c97a8a0fe8057f9564203ee545` |
| candidate review | LlamaPayRouterOracle<br>`0x004e254990fa27c6af52f5f91e8b79c3ecc79a8a` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0xde61092e7d6987c650d086e6276121d91f4cb82f` |
| candidate review | LlamaPayRouterOracle<br>`0x0ad0c8442629e47158106b201a1b58696737cfeb` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0xde61092e7d6987c650d086e6276121d91f4cb82f` |
| candidate review | LlamaPayRouterOracle<br>`0x4a0554f8b56f83438ef2fee3adf00ffbca551778` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0xde61092e7d6987c650d086e6276121d91f4cb82f` |
| candidate review | LlamaPayRouterOracle<br>`0x73d623b1704748860bfcef48cf32746464b9f5d1` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0xde61092e7d6987c650d086e6276121d91f4cb82f` |
| candidate review | LlamaPayRouterOracle<br>`0x9c442d33dbebc8aa33e2d7fc647f0514451905b8` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0xde61092e7d6987c650d086e6276121d91f4cb82f` |
| candidate review | LlamaPayRouterOracle<br>`0xe3e278f3fb61134bbe79173c95470332e2261cab` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0xde61092e7d6987c650d086e6276121d91f4cb82f` |
| candidate review | LlamaPayRouterOracle<br>`0xff8e5a9c3a17099b0d97576ea8e54dd462298df2` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0xde61092e7d6987c650d086e6276121d91f4cb82f` |
| candidate review | NodeLicense<br>`0xf765452e587ad0ae785dc984963897c05d4c8c71` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x7c94e07bbf73518b0e25d1be200a5b58f46f9dc7` |
| candidate review | NodeLicense10<br>`0x249b8a8af9152a08ba3cf3e106962566e8343fb6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x7c94e07bbf73518b0e25d1be200a5b58f46f9dc7` |
| candidate review | NodeLicense8<br>`0x14e6e53dc0e4d0d02644a96f4bc1798a7876db49` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x7c94e07bbf73518b0e25d1be200a5b58f46f9dc7` |
| candidate review | NodeLicense8<br>`0xc6bcca5297cd4511250e2d3241bed586631e2aa0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x7c94e07bbf73518b0e25d1be200a5b58f46f9dc7` |
| candidate review | NodeLicense9<br>`0xe72b004fca3a05251c6c8d1bf1482b9308876c7f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x7c94e07bbf73518b0e25d1be200a5b58f46f9dc7` |
| candidate review | Pool<br>`0x4cd41204aa4c7438374256bd7be850ef9fcfab84` | non_address_book | core_logic | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | Pool<br>`0xca0e1b56007df7d22214aa584678618b3be96a25` | non_address_book | core_logic | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | PoolBeacon<br>`0x6bc4e6b2c13ba42e933b23afab8a58bbbba5d02b` | non_address_book | registry | unknown | verified | review: no_fresh_structural_match | `0x7c94e07bbf73518b0e25d1be200a5b58f46f9dc7` |
| candidate review | PoolBeacon<br>`0xfb93c2e5e41bd0ffd2e99a88e6d2a8d4f542d39a` | non_address_book | registry | unknown | verified | review: no_fresh_structural_match | `0x7c94e07bbf73518b0e25d1be200a5b58f46f9dc7` |
| candidate review | PoolConfigurator<br>`0x04a8d477ee202adce1682f5902e1160455205b12` | non_address_book | core_logic | unknown | verified | review: no_fresh_structural_match | `0x076d6da60aaac6c97a8a0fe8057f9564203ee545` |
| candidate review | PoolConfigurator<br>`0x3e05eb6e12a3c9ed5e46a710bcf052efd6d73fbd` | non_address_book | core_logic | unknown | verified | review: no_fresh_structural_match | `0x076d6da60aaac6c97a8a0fe8057f9564203ee545` |
| candidate review | PoolFactory<br>`0x21eec6626f15d02a8896ebb7edd68ff3cb61e89e` | non_address_book | registry | unknown | verified | review: no_fresh_structural_match | `0x7c94e07bbf73518b0e25d1be200a5b58f46f9dc7` |
| candidate review | PoolFactory2<br>`0x2095fe5cedbe22afc2174dac57cb6831954a560d` | non_address_book | registry | unknown | verified | review: no_fresh_structural_match | `0x7c94e07bbf73518b0e25d1be200a5b58f46f9dc7` |
| candidate review | PoolFactory2<br>`0x5bfd44421b5e0405f8cfcc17463522af6b9e1ab3` | non_address_book | registry | unknown | verified | review: no_fresh_structural_match | `0x7c94e07bbf73518b0e25d1be200a5b58f46f9dc7` |
| candidate review | PoolFactory2<br>`0xec287a91ac0b72ba7f249c08a2c64da317ef9715` | non_address_book | registry | unknown | verified | review: no_fresh_structural_match | `0x7c94e07bbf73518b0e25d1be200a5b58f46f9dc7` |
| candidate review | PoolFactory3<br>`0xf7f1f9d67a46452da30d4125ff39ed216e975e24` | non_address_book | registry | unknown | verified | review: no_fresh_structural_match | `0x7c94e07bbf73518b0e25d1be200a5b58f46f9dc7` |
| candidate review | PoolLogic<br>`0x8be473dcfa93132658821e67cbeb684ec8ea2e74` | non_address_book | core_logic | unknown | verified | review: no_fresh_structural_match | `0x076d6da60aaac6c97a8a0fe8057f9564203ee545` |
| candidate review | PoolProxyDeployer<br>`0xb6773d5bf5b908b58ff5b7bd36a7f06da2eeeec7` | non_address_book | core_logic | unknown | verified | review: no_fresh_structural_match | `0x7c94e07bbf73518b0e25d1be200a5b58f46f9dc7` |
| candidate review | Position<br>`0x8638fbd429b19249bb3bcf3ec72d07a657e49642` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | Position<br>`0xf7cb77c8dcb22a1bb4435932f3515319721faf44` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | ProxyAdmin<br>`0x89dc63264dab74a4350d7f44bd62eec3b22c9ca0` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | ProxyAdmin<br>`0xc00e8acb7d8caaa1a9338cc42875097c319b7b19` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | ProxyAdmin<br>`0xd0db41560276832c78ea7b8fe0620feeea9c0d8a` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | ProxyAdmin<br>`0xdf4433a2b8850c49c2ef2cff6447637002d8d8dd` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | ProxyAdmin<br>`0xe1de7bd72a568f66e60ed17570fbd725205b4baf` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | ProxyAdmin<br>`0xec0634d79e67ce143b71f0dc8ee74cdf798a6fa7` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0x8a598f5629d3e6a8747afbfd6b9b982a2d1078a1` |
| candidate review | Referee<br>`0x29a7b907fdf4a9235f46d891b7aa1e7d3d35a3b6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x7c94e07bbf73518b0e25d1be200a5b58f46f9dc7` |
| candidate review | Referee10<br>`0x1f122b41d6740f5de2df93b8b00013e84227955e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x7c94e07bbf73518b0e25d1be200a5b58f46f9dc7` |
| candidate review | Referee10<br>`0x4f18941fe5be7a54318989b2c42648914dce47c4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x7c94e07bbf73518b0e25d1be200a5b58f46f9dc7` |
| candidate review | Referee11<br>`0x206cd481ab724ab2f9931bbddffa11ff07eb6c97` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x7c94e07bbf73518b0e25d1be200a5b58f46f9dc7` |
| candidate review | Referee11<br>`0x9e3e14576ebd9595efb0d71aa9ff51a6dc621baf` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x7c94e07bbf73518b0e25d1be200a5b58f46f9dc7` |
| candidate review | Referee11<br>`0xf8aaa0c382bc7f667c15e22621a9c0515ab239c7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x7c94e07bbf73518b0e25d1be200a5b58f46f9dc7` |
| candidate review | Referee2<br>`0x4110251275f1b1f8e6ce7114139d69597fdad474` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x7c94e07bbf73518b0e25d1be200a5b58f46f9dc7` |
| candidate review | Referee3<br>`0x10eda49fa8c6594cc6783ca5d7a6677d9e3236c1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x7c94e07bbf73518b0e25d1be200a5b58f46f9dc7` |
| candidate review | Referee4<br>`0x254954e3f6bd7443444036bea2d8fe88fdf496c1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x7c94e07bbf73518b0e25d1be200a5b58f46f9dc7` |
| candidate review | Referee5<br>`0x5538622ad2f14bf781af032542f7f00f080eb4cd` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x7c94e07bbf73518b0e25d1be200a5b58f46f9dc7` |
| candidate review | Referee6<br>`0x680f4a9f47e4cfea124a5654e759cb3b0a0c837c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x7c94e07bbf73518b0e25d1be200a5b58f46f9dc7` |
| candidate review | Referee7<br>`0xff38aa9d553be47eee329f968adf0c74a01d021c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x7c94e07bbf73518b0e25d1be200a5b58f46f9dc7` |
| candidate review | Referee8<br>`0x23173cd3e4fbeeb9188a1a51191bbd8c60edb9d8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x7c94e07bbf73518b0e25d1be200a5b58f46f9dc7` |
| candidate review | Referee8<br>`0x2336b6a52a9160d6e1190546994573ca7661eb6f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x7c94e07bbf73518b0e25d1be200a5b58f46f9dc7` |
| candidate review | Referee8<br>`0x609152cb742916e0f7fbc4391be750c458b049fe` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x7c94e07bbf73518b0e25d1be200a5b58f46f9dc7` |
| candidate review | Referee8<br>`0x7fbbc1b25af3faffdfee1a93d42b0cc5ad225e3b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x7c94e07bbf73518b0e25d1be200a5b58f46f9dc7` |
| candidate review | Referee8<br>`0xcd1717cb51d5f3f61f7f127d952a9ede9e1d9c13` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x7c94e07bbf73518b0e25d1be200a5b58f46f9dc7` |
| candidate review | Referee8<br>`0xf83de48dedb5936d61f8729f88e182e893fec66f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x7c94e07bbf73518b0e25d1be200a5b58f46f9dc7` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [2023-09-22.pdf](https://github.com/aera-finance/aera-contracts-public/blob/main/v2/audits/spearbit/2023-09-22.pdf) | Spearbit | Audit | 2023-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [634d46596f6b027c1bb27d92_Aera Report.pdf](https://cdn.prod.website-files.com/62cd150e5e9efc960319c44d/634d46596f6b027c1bb27d92_Aera%20Report.pdf) | Unknown | Audit | 2022-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [652fe9fa1c0d6f6c0e0876d6_Aera-Spearbit-Security-Review-Aug2023.pdf](https://cdn.prod.website-files.com/62cd150e5e9efc960319c44d/652fe9fa1c0d6f6c0e0876d6_Aera-Spearbit-Security-Review-Aug2023.pdf) | Spearbit | Audit | 2023-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view](https://drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view?usp=sharing) | Spearbit | Audit | 2025-06 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 41 | high |
| [2024-05-15.pdf](https://github.com/aera-finance/aera-contracts-public/blob/main/v2/audits/openzeppelin/2024-05-15.pdf) | OpenZeppelin | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [12621] 2023-09-22.pdf — no match: Extracted from Executive Summary and findings context. Audit date from cover page: September 22, 2023.
- [12622] 634d46596f6b027c1bb27d92_Aera Report.pdf — no match: Extracted from executive summary and findings; report date is October 16, 2022.
- [12623] 652fe9fa1c0d6f6c0e0876d6_Aera-Spearbit-Security-Review-Aug2023.pdf — no match: Extracted from Executive Summary and findings context. Audit date from report cover page.
- [12624] drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view — no match: Extracted contract names from findings context, test files, and PoC. No explicit scope section found; audit date from report header.
- [12625] 2024-05-15.pdf — no match: All files listed in the Scope section are extracted. The audit date is from the document header: 'May 15, 2024'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2023-09-22.pdf | AeraVaultV2 | unmatched — not counted | — | listed in scope | no |
| 2023-09-22.pdf | AeraVaultAssetRegistry | unmatched — not counted | — | listed in scope | no |
| 2023-09-22.pdf | AeraVaultHooks | unmatched — not counted | — | listed in scope | no |
| 2023-09-22.pdf | AeraVaultV2Factory | unmatched — not counted | — | listed in scope | no |
| 634d46596f6b027c1bb27d92_Aera Report.pdf | AeraVaultV1 | unmatched — not counted | — | listed in scope and findings | no |
| 634d46596f6b027c1bb27d92_Aera Report.pdf | PermissiveWithdrawalValidator | unmatched — not counted | — | listed in findings | no |
| 634d46596f6b027c1bb27d92_Aera Report.pdf | IWithdrawalValidator | unmatched — not counted | — | listed in findings | no |
| 634d46596f6b027c1bb27d92_Aera Report.pdf | IManagerAPI | unmatched — not counted | — | listed in findings | no |
| 634d46596f6b027c1bb27d92_Aera Report.pdf | IAeraVaultV1 | unmatched — not counted | — | listed in findings | no |
| 652fe9fa1c0d6f6c0e0876d6_Aera-Spearbit-Security-Review-Aug2023.pdf | AeraVaultV2 | unmatched — not counted | — | listed in scope | no |
| 652fe9fa1c0d6f6c0e0876d6_Aera-Spearbit-Security-Review-Aug2023.pdf | AeraVaultAssetRegistry | unmatched — not counted | — | listed in scope | no |
| 652fe9fa1c0d6f6c0e0876d6_Aera-Spearbit-Security-Review-Aug2023.pdf | AeraVaultHooks | unmatched — not counted | — | listed in scope | no |
| 652fe9fa1c0d6f6c0e0876d6_Aera-Spearbit-Security-Review-Aug2023.pdf | AeraVaultV2Factory | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | BaseSlippageHooks | unmatched — not counted | — | mentioned in findings context | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | BaseVault | unmatched — not counted | — | mentioned in findings context | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | CallbackHandler | unmatched — not counted | — | mentioned in findings context | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | CCTPHooks | unmatched — not counted | — | mentioned in findings context | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | OracleRegistry | unmatched — not counted | — | mentioned in findings context | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | Provisioner | unmatched — not counted | — | mentioned in findings context | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | SingleDepositorVault | unmatched — not counted | — | mentioned in findings context | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | FeeVault | unmatched — not counted | — | mentioned in findings context | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | BaseFeeCalculator | unmatched — not counted | — | mentioned in findings context | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | PriceAndFeeCalculator | unmatched — not counted | — | mentioned in findings context | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | DelayedFeeCalculator | unmatched — not counted | — | mentioned in findings context | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | MultiDepositorVault | unmatched — not counted | — | mentioned in findings context | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | Auth2Step | unmatched — not counted | — | mentioned in findings context | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | Auth | unmatched — not counted | — | mentioned in findings context | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | TransferWhitelistHooks | unmatched — not counted | — | mentioned in findings context | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | TransferBlacklistHooks | unmatched — not counted | — | mentioned in findings context | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | BasicMerkleRootProvider | unmatched — not counted | — | mentioned in findings context | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | CalldataReaderLib | unmatched — not counted | — | mentioned in findings context | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | HooksLibrary | unmatched — not counted | — | mentioned in findings context | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | Whitelist | unmatched — not counted | — | mentioned in findings context | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | Forwarder | unmatched — not counted | — | mentioned in findings context | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | Constants | unmatched — not counted | — | mentioned in findings context | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | OracleDataLibrary | unmatched — not counted | — | mentioned in findings context | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | IOracle | unmatched — not counted | — | mentioned in findings context | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | IBaseVault | unmatched — not counted | — | mentioned in findings context | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | Types | unmatched — not counted | — | mentioned in findings context | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | UniswapV3DexHooks | unmatched — not counted | — | mentioned in findings context | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | MockUniswapV3DexHooks | unmatched — not counted | — | mentioned in test file | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | MockFeeVaultFactory | unmatched — not counted | — | mentioned in test file | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | MockERC20 | unmatched — not counted | — | mentioned in test file | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | AttackERC20 | unmatched — not counted | — | mentioned in PoC | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | NestedSwapForkTest | unmatched — not counted | — | mentioned in PoC | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | TestForkBaseHooks | unmatched — not counted | — | mentioned in test file | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | IMetaAggregationRouterV2 | unmatched — not counted | — | mentioned in findings context | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | ISwapRouter | unmatched — not counted | — | mentioned in PoC | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | IUniswapV3Pool | unmatched — not counted | — | mentioned in PoC | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | IUniswapV3Factory | unmatched — not counted | — | mentioned in PoC | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | INonfungiblePositionManager | unmatched — not counted | — | mentioned in PoC | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | ICallee | unmatched — not counted | — | mentioned in PoC | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | MerkleHelper | unmatched — not counted | — | mentioned in PoC | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | Encoder | unmatched — not counted | — | mentioned in PoC | no |
| 2024-05-15.pdf | ILlamaPayRouterOracle | unmatched — not counted | — | listed in scope | no |
| 2024-05-15.pdf | IExecutor | unmatched — not counted | — | listed in scope | no |
| 2024-05-15.pdf | IAeraV2Oracle | unmatched — not counted | — | listed in scope | no |
| 2024-05-15.pdf | ILlamaPayRouterOracleTypes | unmatched — not counted | — | listed in scope | no |
| 2024-05-15.pdf | LlamaPayRouterOracle | unmatched — not counted | — | listed in scope | no |
| 2024-05-15.pdf | Executor | unmatched — not counted | — | listed in scope | no |
| 2024-05-15.pdf | AbstractAssetOracle | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 125 |
| upstream | 22 |
| standard_library | 30 |
| needs_review | 63 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 61 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=5
- Match method counts: n/a

Zero-match audit list:

- [12621] 2023-09-22.pdf
- [12622] 634d46596f6b027c1bb27d92_Aera Report.pdf
- [12623] 652fe9fa1c0d6f6c0e0876d6_Aera-Spearbit-Security-Review-Aug2023.pdf
- [12624] drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view
- [12625] 2024-05-15.pdf

Fork inheritance lineage and inherited audits are included when available.
