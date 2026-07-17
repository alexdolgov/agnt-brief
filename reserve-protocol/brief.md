# Agentic Audit Brief: Reserve Protocol

## Project Overview

- Project: Reserve Protocol (`reserve-protocol`)
- Website: [https://reserve.org](https://reserve.org)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:44.700Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-0679
- Chains: arbitrum, base, bsc, ethereum
- Contract surface: 610 unique implementations (1022 raw deployments)
- DeFi Llama TVL: $47,742,955.72
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Indexes. Structurally: 87 project-authored contract(s) across 4 chain(s); 4 ERC4626 vaults, 13 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 9 functional families. Its contracts share 11 common project-authored base contract(s) (icollateral, iasset, asset). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 1022; live-surface contracts included: 1022 (497 live, 525 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 50/85 (58.8%)
- Deployed-live implementations: 86 of 610 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 50/85
- Verified + Unaudited implementations: 35
- Verified by bytecode match: 0
- Unverified implementations: 525
- Unique implementations: 610
- Raw deployments: 1022
- Audits discovered: 27 (27 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 24
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Audit staleness (calendar age): 3 fresh, 7 aging, 17 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 51 match-unverified
- Tier 1 coverage: 30.6% (Code4rena, Spearbit, Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 37 | 43.5% | 2026-03 |
| Code4rena | Tier 1 | 18 | 21.2% | 2024-08 |
| Pashov Audit Group | Tier 2 | 8 | 9.4% | 2025-06 |
| Trail of Bits | Tier 1 | 8 | 9.4% | 2025-06 |
| Trust Security | Tier 2 | 6 | 7.1% | 2024-12 |
| Ackee Blockchain | Tier 2 | 1 | 1.2% | 2022-10 |
| Halborn | Tier 2 | 1 | 1.2% | 2022-10 |
| Spearbit | Tier 1 | 1 | 1.2% | 2025-01 |

## Contract Surface

### ✅ Verified + Audited (50)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ActFacet | unknown | ethereum | n/a | [`0xcab3d3d0d5544145a6bcb47e58f61368bccae2db`](./contracts/ethereum-1/0xcab3d3d0d5544145a6bcb47e58f61368bccae2db/) | ✅ Audited |
| ActFacet | unknown | base | n/a | 5 deployments: ethereum `0x8578538eb08b39f3ae363757b30afb5a12ddcf0c`; ethereum `0xca60954e8819827b0c56e1ec313175fe68712d98`; base [`0x72be467048a4d9cbcc599251243f3ed9f46a42f5`](./contracts/base-8453/0x72be467048a4d9cbcc599251243f3ed9f46a42f5/); base `0xadfb9bcda981136c83076a52ef8fe4d8b2b520e7`; arbitrum `0xe774ccf1431c3dee7fa4c20f67534b61289caa45` | ✅ Audited |
| AerodromeGaugeWrapper | operational_periphery | base | n/a | 6 deployments: base [`0x03b8e7dbeb8ea61d30594b445a1987cfc0f214bb`](./contracts/base-8453/0x03b8e7dbeb8ea61d30594b445a1987cfc0f214bb/); base `0x15f06b2907594905d820a4ab3631f4b097a0be07`; base `0x5550b940575b9d7f8445e54a4e25f54c7fd16568`; base `0xa4362fb74bdec615a612cee725f88c4afa306033`; base `0xc770a60ec58007c133a51f08be918e4168524527`; base `0xd5be0aec2b537481a4fe2ecf52422a24644e1ef3` | ✅ Audited |
| AerodromeStableCollateral | unknown | base | n/a | 4 deployments: base [`0x1bd20253c49515d348dad1af70ff2c0473fea358`](./contracts/base-8453/0x1bd20253c49515d348dad1af70ff2c0473fea358/); base `0x1cca3fbb11c4b734183f997679d52defa74b613a`; base `0x50ead4eff1262d2f83855aa9d12ba0272687bc0d`; base `0x97f9d5ed17a0c99b279887cad5254d15fb1b619b` | ✅ Audited |
| AerodromeVolatileCollateral | unknown | base | n/a | 10 deployments: base [`0x171034efca7349e4d1944d179ccf52277d1ca6c9`](./contracts/base-8453/0x171034efca7349e4d1944d179ccf52277d1ca6c9/); base `0x339c1509b980d80a0b50858518531edbe2940da1`; base `0x5cb6656970b21d51c0885c3831a14010d3fbf5ed`; base `0x6647c880eb8f57948af50ab45fca8fe86c154d24`; base `0x719fbae9e2dcd525bcf060a8d5dbc6c9fe104a50`; base `0xb56aa995ab51f32885c72aa825bea7559c06a72f`; base `0xc98eafc9f249d90e3e35e729e3679dd75a899c10`; base `0xcfa67f42a0fde4f0fb612ea5e66170b0465b84c1`; base `0xdaacee75c863a79f07699b094db07793d3a52d6d`; base `0xee587c5c262824b9423e73303dff270ece5074c9` | ✅ Audited |
| ApxEthCollateral | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5a78da62a85099a3da30e56f5da8db95afc63920`](./contracts/ethereum-1/0x5a78da62a85099a3da30e56f5da8db95afc63920/); ethereum `0x6f7edae52dd7e45f470c327788249a2812a259d8` | ✅ Audited |
| Asset | unknown | base | n/a | 14 deployments: ethereum `0xbcb71ee9c3372f3444cbbe3e1b263204967edbe3`; base [`0x0d61ce1801a460eb683b5ed1b6c7965d31b769fd`](./contracts/base-8453/0x0d61ce1801a460eb683b5ed1b6c7965d31b769fd/); base `0x0e8439a17ba5cbb2d9823c03a02566b9dd5d96ac`; base `0x1b05624bd47d0c69cff2a4ae7ef139a8166213ed`; base `0x22018d85bfda9e2673fb4101e957562a1e952cdf`; base `0x3962695acce0efce11cff997890f3d1d7467ec40`; base `0x7f7b77e49d5b30445f222764a794afe14af062eb`; base `0x99bd63bf7e2a69822cd73a82d42cf4b5501e5e50`; base `0xab0610dd88ad72605ce045e4ea3f5b835eb9d7b9`; base `0xc1b538cdb177bd910e19c974c6fdd050aae1d169`; base `0xc9c37fc53682207844b058026024853a9c0b8c7b`; base `0xe0e1d3c6f09da01399e84699722b11308607bbfc`; base `0xf535cab96457558ee3eeaf1402fca6441e832f08`; base `0xf7d1c6ee4c0d84c6b530d53a897daa1e9eb56833` | ✅ Audited |
| AssetPluginRegistry | registry | base | n/a | 11 deployments: ethereum `0x15a9e0cf2fd9842b99e015e05073b5f0f58a1c29`; ethereum `0x4a818c41131cb9fe65badf2bb8671dde4d117135`; ethereum `0x6cf05ea2a94a101ce6a44ec2a2995b43f1b0958f`; ethereum `0xa9145a22537b39b04fe91aa479c1b8e7a3569c98`; base [`0x093c07787920eb34a0a0c7a09823510725aee4af`](./contracts/base-8453/0x093c07787920eb34a0a0c7a09823510725aee4af/); base `0x3312507bc3f22430b34d5841a472c767dc5c36e4`; base `0x66a3b432f77123e418cdbed35fbaddb0eb9576b0`; base `0x70c635bf4972259f2358db5e431db9592a2745a2`; base `0x72ba23683cbc1a3fa5b3129b1335327a32c2ce8c`; base `0x7ac954307356301a10addb0db4f61b4a475d3551`; base `0x87a959e0377c68a50b08a91ae5ab3afa7f41aca4` | ✅ Audited |
| ATokenFiatCollateral | token | ethereum | n/a | 11 deployments: ethereum [`0x0d346e98ceca2fd7de7be3f53737d82bde932117`](./contracts/ethereum-1/0x0d346e98ceca2fd7de7be3f53737d82bde932117/); ethereum `0x1645dd4b47d7fbbfdf876061a9e7fe0eb3c72eb1`; ethereum `0x3a395c1bc233d43d126a971b15d8c2b6eb803ca6`; ethereum `0x431a19b1f331be3ebf32ea5acc11aabe3da422d6`; ethereum `0x4615c29bba8b2fa32906a594e922285a09301f42`; ethereum `0x695980209248264ff7fcd19f7cc217376feae163`; ethereum `0x723e269d178e887e1691f3cee71c840b5c5b9f76`; ethereum `0x7b0e0081bf89e3307b3734d821d4297b33911c44`; ethereum `0x9ea621376455b88e4022633399bcd1ffd7844210`; ethereum `0xd1a2a985a18ddf30299cf2bdd0592b29e0aa3e84`; ethereum `0xe790225a6eb067bf98c9bb291883100f79e70a37` | ✅ Audited |
| BackingManagerP1 | governance | ethereum | n/a | 5 deployments: ethereum [`0x3e6cd7c1ae9e575552a1aad774017a6a6345ad21`](./contracts/ethereum-1/0x3e6cd7c1ae9e575552a1aad774017a6a6345ad21/); ethereum `0xc501c9074ce15a4b00dd0b51b3c372518e6d3ba2`; base `0x6446189fd250d96517c119dd9929c24bf825fb4e`; base `0x7dee4dbef75f93cca06823ac915df990be3f1538`; base `0xf73eb45d83ac86f8a6f75a6252ca1a59a9a3aed3` | ✅ Audited |
| BasketLibP1 | unknown | ethereum | n/a | 4 deployments: ethereum [`0x2fdd94f363644fede5106b22b1706e45d4dd9bea`](./contracts/ethereum-1/0x2fdd94f363644fede5106b22b1706e45d4dd9bea/); ethereum `0x61b4f7bb71088db6a1601cf9b02098581d77c1bc`; base `0x3700b22c742980be9d22740933d4a041a64f7314`; base `0xfa21cd6eede080fdb1c79c1bdbc0c593c8cd08a5` | ✅ Audited |
| CBEthCollateral | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5ff1120487ee5668d224c8c28ca3d548de3d1417`](./contracts/ethereum-1/0x5ff1120487ee5668d224c8c28ca3d548de3d1417/); ethereum `0xdcee056a2feb893eb1a1c3e3f103ac8ab098ce2e` | ✅ Audited |
| CBEthCollateralL2 | unknown | base | n/a | 7 deployments: base [`0x02d6d4e2bc351c8ac06730b3f82abf9e2f9118f2`](./contracts/base-8453/0x02d6d4e2bc351c8ac06730b3f82abf9e2f9118f2/); base `0x14c443d8bdbe9a65f3a23fa4e199d8741d5b38fa`; base `0x8dc1750b1fe69e940f570c021d658c14d8041834`; base `0xa0d16856cf76e13c42a20e35e0b7127ee821957f`; base `0xa87e9dae6e9ea5b2be858686cc6c21b953bfe0b8`; base `0xcb40f908cf525d37d434c42b959e1021f7efb9f4`; base `0xf18ea8041f25df5eedd75ffdb8245d715dc3ca45` | ✅ Audited |
| CowSwapFiller | unknown | ethereum | n/a | 13 deployments: ethereum [`0x0d3bfcfcbe9b626c4f4e19d02de4933bd92d1f40`](./contracts/ethereum-1/0x0d3bfcfcbe9b626c4f4e19d02de4933bd92d1f40/); ethereum `0x2b37282c54e5daf5648848ba949742b3f5136bba`; ethereum `0xe7e0aee64561075af48a3e4bee1ea95f0842158e`; bsc `0x33008c6683f91be58c6aa47842cb5ade13331484`; bsc `0x4d201a6e5bf975e2cee9e5cbdfc803c0ff122073`; bsc `0xbe3b47587ceeff7d48008a0114f51cd571bec63a`; base [`0x0d3bfcfcbe9b626c4f4e19d02de4933bd92d1f40`](./contracts/base-8453/0x0d3bfcfcbe9b626c4f4e19d02de4933bd92d1f40/); base `0x1011ffd4c0aa024a5c5f2d2212aed90bd3beccbd`; base `0x20ff4fc402b6092b921904d5b1999b4c6e74b1bc`; base `0x6a4ca1ff9adadc6bf19db625d1e9a8519bd1d531`; base `0x82b70fe5e1f25ac3c9af3b522f4c6b64cc82386f`; base `0x99e02f3f1e2d20f07ec9fe22781212f63d4720f2`; base `0xe9ca9a505228bad500152ba680d7066f01292c8c` | ✅ Audited |
| CTokenFiatCollateral | token | ethereum | n/a | 18 deployments: ethereum [`0x0072118c321181168e6643919074a0b518488637`](./contracts/ethereum-1/0x0072118c321181168e6643919074a0b518488637/); ethereum `0x097b09fd6932cec8cf47d5ec0b0b7defb0c97b02`; ethereum `0x0c82efbbd9b0f47fda04b83226dbfbc04ec728b8`; ethereum `0x169544b6422c6690457931259fad8c0a76540a2e`; ethereum `0x6394fe4995d03a2a463bae2c3a4406043df760e8`; ethereum `0x73073c75ddaec9ce917f326e8fa860b8a773e5a3`; ethereum `0x79ed64e67b846e483594c496f05b25835e53c614`; ethereum `0x7a58646a44dc460fe627f2fd76142b99832f0de6`; ethereum `0x8487278d9262b9dcca4bec85b125a45608d0067a`; ethereum `0x8cfb48b594d54c5bc122f3c4374e16fcf1050a43`; ethereum `0x9a84c6f204209957dda0064eaeaaf6138fdb8cea`; ethereum `0xbb7b4caa808c9fa262095221299dbc873071caf4`; ethereum `0xc802729132841f8d891e6a740776a9493db76ac5`; ethereum `0xcaf032d20d09cea9727aa1ddf6f4e4367155d05e`; ethereum `0xcc0c0c376cebd701d9126228510f31f9096b836a`; ethereum `0xd3f81fc6c575ce44283fd48da7f0337d8d3d24fb`; ethereum `0xf35fbe1576e9d52c20b7ef8626477dcfb939d9ef`; ethereum `0xf8b09c5b3a1eacd095627fb1354665432dc1d077` | ✅ Audited |
| CTokenNonFiatCollateral | token | ethereum | n/a | 3 deployments: ethereum [`0x32ab9216188f24434dc629acfa1554ab7623f300`](./contracts/ethereum-1/0x32ab9216188f24434dc629acfa1554ab7623f300/); ethereum `0x3484efb04a54bf376da091f4364f4961f7a01b74`; ethereum `0xa58053d343299bd8818a70d5bfea0318ca5ebec5` | ✅ Audited |
| CTokenSelfReferentialCollateral | token | ethereum | n/a | 3 deployments: ethereum [`0x00a07ac1b3f9c5f7ad4c6935b1cb2028debb6555`](./contracts/ethereum-1/0x00a07ac1b3f9c5f7ad4c6935b1cb2028debb6555/); ethereum `0x07b2b41037d89f91dc91ad1ddcca3e8515ff049e`; ethereum `0xe3da655331649b86bfe3356bed99258083599543` | ✅ Audited |
| CTokenV3Collateral | token | ethereum | n/a | 9 deployments: ethereum [`0x309e7d2df4fc528f8fd58be6ecf73293dd2e7e7f`](./contracts/ethereum-1/0x309e7d2df4fc528f8fd58be6ecf73293dd2e7e7f/); ethereum `0x4adf4c9b985a743d9fef14ae4b3e79661f73c78b`; ethereum `0x4d6f9a0f0f57a8179a146f37dd93d558073b814f`; ethereum `0x8e24283ef5f6fe85fed48ac3a3d4248b5ba29668`; ethereum `0xa52f93e61edf1b77b2d680945f3ea4e84bb825d3`; base `0x3d08ef64830137fbd426cbe3153a404104e4b103`; base `0x41edaffb50ca1c2fec86c629f845b8490ced8a2c`; base `0xdebe74dc2a415e00be8b4b9d1e6e0007153d006a`; base `0xf5366f67ff66a3cefcb18809a762d5b5931febf8` | ✅ Audited |
| CTokenWrapper | token | ethereum | n/a | [`0x6d05cb2cb647b58189fa16f81784c05b4bcd4fe9`](./contracts/ethereum-1/0x6d05cb2cb647b58189fa16f81784c05b4bcd4fe9/) | ✅ Audited |
| CusdcV3Wrapper | unknown | ethereum | n/a | 8 deployments: ethereum [`0x093c07787920eb34a0a0c7a09823510725aee4af`](./contracts/ethereum-1/0x093c07787920eb34a0a0c7a09823510725aee4af/); ethereum `0x27f2f159fe990ba83d57f39fd69661764bebf37a`; ethereum `0x7e1e077b289c0153b5cead9f264d66215341c9ab`; base `0x53f1df4e5591ae35bf738742981669c3767241fa`; base `0xa694f7177c6c839c951c74c797283b35d0a486c8`; base `0xa8d818c719c1034e731feba2088f4f011d44acb3`; base `0xbc0033679aef41fb9feb553fdf55a8bb2fc5b29e`; arbitrum `0xd54804250e9c561aea9dee34e9cf2342f767acc5` | ✅ Audited |
| DAOFeeRegistry | registry | base | n/a | 7 deployments: ethereum `0x6f477a92929c4f062b3a90b79045bd4c34d48208`; ethereum `0xec716ded4eaba060937d1a915f166e237039342b`; base [`0x11c9ca7a43b76a5d9604e7441eb41a49e2084723`](./contracts/base-8453/0x11c9ca7a43b76a5d9604e7441eb41a49e2084723/); base `0x3513d2c7d2f51c678889cec083e7d7ae27b219ad`; base `0x6b87142c7e6ca80aa3e6ead0351673c45c8990e3`; base `0x7f9999b2c9d310a5f48dfd070eb5129e1e8565e2`; base `0xebd07ce38e2f46031c982136012472a4d24ae070` | ✅ Audited |
| DeployerRegistry | registry | base | n/a | 2 deployments: ethereum `0xd85fac03804a3e44d29c494f3761d11a2262cbbe`; base [`0x1265ec05fd621d82f224814902c925a600307fb3`](./contracts/base-8453/0x1265ec05fd621d82f224814902c925a600307fb3/) | ✅ Audited |
| DutchTrade | unknown | ethereum | n/a | 4 deployments: ethereum [`0x4b15dd87dac24dd94633ecc1889d180809fbe4ae`](./contracts/ethereum-1/0x4b15dd87dac24dd94633ecc1889d180809fbe4ae/); ethereum `0xcc3cb888dea5948bbeb7747aed31128b71b7689d`; base `0x5757ff814da66a2b4f9d11d48570d742e246cfd9`; base `0x8a9f74d40c5323e73b63a80c4282658fd43f3aa2` | ✅ Audited |
| FacadeWrite | unknown | ethereum | n/a | 17 deployments: ethereum [`0x0a9d3d35055481bb67e5e145b07f6fb6cbef9d4b`](./contracts/ethereum-1/0x0a9d3d35055481bb67e5e145b07f6fb6cbef9d4b/); ethereum `0x1d94290f82d0b417b088d9f5db316b11c9cf220c`; ethereum `0x2536025a5c6f41879d07dbfe7f4c07c1ab9575c9`; ethereum `0x33085243714de9d2640a5ba86ee85c1a722d69bd`; ethereum `0x46cf884c423e35947b27440fc0bc77d968c74f49`; ethereum `0x71a45dda7ead764510d9a78a58220d7b52ebd838`; ethereum `0xa8ea6cf7beab5e4395d437ae37d696e007739357`; ethereum `0xe18131bd99127b6601c4a78db25ff963006060e2`; base `0x1639fab05649b719d4fa541322c69f6e9811923f`; base `0x357d4db0c2179886334cc33b8528048f7e1d3fe3`; base `0x3c8cd9fca9925780598eb097d9718df3da482c2f`; base `0x43e205a805c4be5a62c71d49de68df60200548a0`; base `0x53d8d5b20607bf04b238463f28b222b0cc47df4f`; base `0x5fb4e33e7952ed4b1dc6c08966d797c61bbff021`; base `0x7906238833bb9e4fec24a1735c94f47cb194f678`; base `0x7f946356c26043326aeb2597703a8ae05561d8c8`; base `0xcbe084c44e7a2223f76362dcc4ebdaca5fb1cba7` | ✅ Audited |
| FacadeWriteLib | unknown | base | n/a | 25 deployments: ethereum `0x2988ad777b02763190b7432f4bd766076edd53f2`; ethereum `0x2e749f12ae9e71f41c69cbab1623f0359aa4f740`; ethereum `0x35925f044027877150fe9a1e62e74df968bef1c1`; ethereum `0x55c6d388ee70b454dc1c39457c357817cecf83c9`; ethereum `0x9081a2c18dabde9be178d50ed310cd027a82368a`; ethereum `0x97da66da09986a460753ac3189998e8c78edc292`; ethereum `0x99268ad5808bdfc64ae4c8d95dd8b61b1bef32bb`; ethereum `0xe4db7da0b89365a6ed954594638d21fb19661eb6`; ethereum `0xe8f9df9fa0a7d40f75e26105aa0f748ea17c9dfe`; base [`0x1103851d1fcdd3f88096fbed812c8ff01949cf9d`](./contracts/base-8453/0x1103851d1fcdd3f88096fbed812c8ff01949cf9d/); base `0x33c1665eb1b3673213daa5f068ae1026fc8d5875`; base `0x3c0a9143063fc306f7d3cbb923ff4879d70cf1ea`; base `0x4e9b97957a0d1f4c25e42ccc69e4d2665433fea3`; base `0x5a4f2ffc4ad066152b344ceb2fc2275275b1a9c7`; base `0x5e3e13d3d2a0adfe16f8ef5e7a2992a88e9e65af`; base `0x62c394620f674e85768a7618a6c202bae7fb8dd1`; base `0x79190ad7bb1ae9c25f3fe7abcfcece52a8f34a0a`; base `0x85b256e9051b781a0bc0a987857ad6166c94040a`; base `0x97e1586daf469ced46a956516bc5d2a4bbb34356`; base `0xaaef84f6ffde4d0390e14da9c527d1a1abf28b92`; base `0xbe6fb2b2908d85179e34ee0d996e32fa2bf4410a`; base `0xbf6e8f64547bdec55bc3fbb0664722465fcc2f0f`; base `0xc9291ef2f81dbc9b412381abe83b28954220565e`; base `0xd248a031ad28ad3ad724a88f5a710cd48b2d23b7`; base `0xe39188ddd4eb27d1d25f5f58cc6a5fd9228eedef` | ✅ Audited |
| FiatCollateral | unknown | base | n/a | 33 deployments: ethereum `0x3a078799a9823cbda084a79c7caf47f499c6ea09`; ethereum `0x3efbb2470f4ea11056d8404758efb6cd7bdd7e02`; ethereum `0x4c0b21acb267f1fae4aefa977a26c4a63c9b35e6`; ethereum `0x70792567e6ddf6e2314bcc6541ac0e9b188cf25f`; ethereum `0x7504ed02f3f151df241ec2eb0bf1a9601fcb012a`; ethereum `0x8a782e182eee2299b3db733659ea764a5a97adc5`; ethereum `0x9a65173df5d5b86e26300cc9ca5ff378be6daea5`; ethereum `0xb90fe39cb47c4401a941528769f107dee8e49488`; ethereum `0xbbf50a582cc03cbbc7e228dc3196091301348b0e`; ethereum `0xbc0dc981001b6673f615978b63818fd1f6b0ff98`; ethereum `0xd2d1c32785a9a820d0d1dccaf9676e491f9b9c87`; ethereum `0xd717d722074c8dbfd0a29f73e4638ccc49c7d53d`; ethereum `0xd8a1b8e73dc025c527493436057f0d8fc01e1973`; ethereum `0xdb665809ef5e2d8015c05504c242ddc2932acdee`; ethereum `0xdeade351539d670ee78afae701e3d36443538d61`; ethereum `0xe0941a6e0dfc823cf44e95664a5b151041c13d42`; base [`0x05b5fc630ef8f4a9116dc627fa8156ad3e7ac8b3`](./contracts/base-8453/0x05b5fc630ef8f4a9116dc627fa8156ad3e7ac8b3/); base `0x1289a753e0bae82cf7f87747f22eaf8e4eb7c216`; base `0x18a26902126154437322fe01fba04a36b093906f`; base `0x27f672aaf061cb0b2640a4dfccbd799cd1a7309a`; base `0x33e840e5711549358f6d4d11f9ab2896b36e9822`; base `0x37a425b059423dce9def655da0d6a0ad05f179fc`; base `0x3879c820c3cc4547cb76f8dc842005946cedb385`; base `0x39e19d88f3d5c25b5a684e8a500dbec2e2c46327`; base `0x484533dbe91a9b38d50779e6da2f8754b4da276f`; base `0x49a44d50d3b1e098dac9402c4af8d0c0e499f250`; base `0xbe70970a10c186185b1bc1be980ea09bd68fd97a`; base `0xd0ad998084509e4b97f2c6a848afe4a8db8f311a`; base `0xd2270a3e17dbea5cb491e0120441bfd0177da913`; base `0xd31eec6679dd18d5d42a92f32f01ed98d4e91941`; base `0xdeaafe561d866a81b772d1e67d8e18625ab75437`; base `0xeacaf85ea2df99e56053fd0250330c148d582547`; base `0xf003b8a8200f14db13f5f712ec8e76c41e7e9a7a` | ✅ Audited |
| Folio | unknown | base | n/a | 6 deployments: ethereum `0x089357a774151ffdd24269204cb789e298e31f09`; ethereum `0xb6b35b2c7032e00baa2535ba480d461321b7e0a6`; bsc `0xd58b270159bd0d51cef1cb2a950c7f71804d45e7`; base [`0x03d27e00e98d107a9d2523144c2adec7cf214dfb`](./contracts/base-8453/0x03d27e00e98d107a9d2523144c2adec7cf214dfb/); base `0x0479999e166c470251c6bf0b08fad1a147589f37`; base `0x6368e66a38bab5a03c4f1be64b9d890305959a10` | ✅ Audited |
| FolioDAOFeeRegistry | registry | bsc | n/a | [`0x135437333990f799293f6ad19fe45032ba68285e`](./contracts/bsc-56/0x135437333990f799293f6ad19fe45032ba68285e/) | ✅ Audited |
| FolioDeployer | unknown | bsc | n/a | 11 deployments: ethereum `0x4d201a6e5bf975e2cee9e5cbdfc803c0ff122073`; ethereum `0xbe3b47587ceeff7d48008a0114f51cd571bec63a`; bsc [`0x100e0efdd7a4f67825e1be5f0493f8d2aeac00bb`](./contracts/bsc-56/0x100e0efdd7a4f67825e1be5f0493f8d2aeac00bb/); bsc `0x5bed18aca50e6057e6658fe8498004092eedcdcf`; bsc `0x72f87239981159ed23673012ee3806ca6114ab2a`; base `0x3451fd177e9a8bb4eb8271e627a804bd22a816f9`; base `0x4d201a6e5bf975e2cee9e5cbdfc803c0ff122073`; base `0x50896d4af3d17af0ce4ef6b8e94694f714d35795`; base `0x86fe463ab6aaae10e24e451f928307700ecd4bce`; base `0xa203aa351723cf943f91684e9f5efca7175ae7ea`; base `0xb8469986840bc9b7bb101c274950c02842755911` | ✅ Audited |
| FolioGovernor | governance | bsc | n/a | 8 deployments: ethereum `0x52f809f635c78eec703c1d0da9fee3e2071b8b48`; ethereum `0x78bd8dd0ad8fb867ca9dda747c93de5a9846a54b`; bsc [`0x279ccf56441fc74f1aac39e7fac165dec5a88b3a`](./contracts/bsc-56/0x279ccf56441fc74f1aac39e7fac165dec5a88b3a/); bsc `0xa265114d662dcbf40bd2ea4dffc1fdcc2468dce4`; bsc `0xbe8a1a7aed854c83359f6e114d6805d0f64f8d94`; base `0x40a0cbab429059de64fb5bbbc412baa329faeec5`; base `0x52f809f635c78eec703c1d0da9fee3e2071b8b48`; base `0xbf1fa29142c9c453966df07e4df805397510df9f` | ✅ Audited |
| GnosisTrade | unknown | base | n/a | 4 deployments: ethereum `0x7e7d81d54b5478d4d707be1f2b6875b7955ff8c7`; ethereum `0xda1631d6dbe9c20cd748f4043f01aefa7163e227`; base [`0x1ffa5955d64ee32cb1bf7104167b81bb085b0c8d`](./contracts/base-8453/0x1ffa5955d64ee32cb1bf7104167b81bb085b0c8d/); base `0x4be33630f92661afd646081bc29079a38b879aa0` | ✅ Audited |
| Governance | unknown | base | n/a | 6 deployments: ethereum `0x3f26ef1460d21a99425569ef3148ca6059a7eeae`; ethereum `0x441808e20e625e0094b01b40f84af89436229279`; ethereum `0x868fe81c276d730a1995dc84b642e795dfb8f753`; ethereum `0xf4a9288d5deb0eae987e5926795094bf6f4662f8`; base [`0x21fba52da03e1f964fa521532f8b8951fc212055`](./contracts/base-8453/0x21fba52da03e1f964fa521532f8b8951fc212055/); base `0xffef97179f58a582def73e6d2e4bcd2bdc8ca128` | ✅ Audited |
| GovernanceDeployer | unknown | base | n/a | 11 deployments: ethereum `0x5bed18aca50e6057e6658fe8498004092eedcdcf`; ethereum `0x72f87239981159ed23673012ee3806ca6114ab2a`; bsc `0x270d928b9ee38bad93601d197256390b3c3c13ec`; bsc `0x2f616b82022874519cb4bb795b8b931d65564825`; bsc `0xa7bc1265c37a8d285cd2b10c842efb8415a7bf9f`; bsc `0xbd49ceac629d7131b8a975b582acdaeb5c049bad`; base [`0x1a7d043c84fe781b6df046fefcf673f71110208d`](./contracts/base-8453/0x1a7d043c84fe781b6df046fefcf673f71110208d/); base `0x5bed18aca50e6057e6658fe8498004092eedcdcf`; base `0x6a66e6e209c7120819cc033d9397e5022c22c872`; base `0x72f87239981159ed23673012ee3806ca6114ab2a`; base `0xeca52a5bdbad98a5b4b6b944c4c9cc636d4d7461` | ✅ Audited |
| MathLib | unknown | base | n/a | [`0x4edeb80ce684a890dd58ae0d9762c38731b11b99`](./contracts/base-8453/0x4edeb80ce684a890dd58ae0d9762c38731b11b99/) | ✅ Audited |
| NonFiatCollateral | unknown | ethereum | n/a | 4 deployments: ethereum [`0x7437047523dae8116a94ef5ffaab3a657e5dc60e`](./contracts/ethereum-1/0x7437047523dae8116a94ef5ffaab3a657e5dc60e/); ethereum `0xcab9805b012460c4e176fb6b521c20d7bc43419f`; ethereum `0xcc07ef5fdafa6298b276f14a6f4198317d0d20c3`; ethereum `0xe2633b3a223579f138b21ebd56d054f366a9a280` | ✅ Audited |
| RebalancingLib | unknown | base | n/a | [`0x093cb4f405924a0c468b43209d5e466f1dd0ac7d`](./contracts/base-8453/0x093cb4f405924a0c468b43209d5e466f1dd0ac7d/) | ✅ Audited |
| RecollateralizationLibP1 | unknown | base | n/a | 4 deployments: ethereum `0xd595456ac36aab96cf9d10d1adf8c3b4576c7937`; ethereum `0xe84c5963da12a46db929b6cb44f5663526610478`; base [`0x0e6d6cbda4629fb2d82b4b4af0d5c887f21f3bc7`](./contracts/base-8453/0x0e6d6cbda4629fb2d82b4b4af0d5c887f21f3bc7/); base `0x50a9d529ea175cde72525eaa809f5c3c47daa1bb` | ✅ Audited |
| RethCollateral | unknown | ethereum | n/a | 2 deployments: ethereum [`0x02d960943e1dd3b2c4d621dd8b72489fa4d7ce49`](./contracts/ethereum-1/0x02d960943e1dd3b2c4d621dd8b72489fa4d7ce49/); ethereum `0x81283be7ad5a6d6c4a085b4d694b127ccf7e652e` | ✅ Audited |
| RoleRegistry | registry | ethereum | n/a | 2 deployments: ethereum [`0x11879d12ea0f1423240b7ef9c11084c1375e324b`](./contracts/ethereum-1/0x11879d12ea0f1423240b7ef9c11084c1375e324b/); bsc `0xe1ec57c8ee970280f237863910b606059e9641c9` | ✅ Audited |
| RSR | unknown | ethereum | n/a | [`0x320623b8e4ff03373931769a31fc52a4e78b5d70`](./contracts/ethereum-1/0x320623b8e4ff03373931769a31fc52a4e78b5d70/) | ✅ Audited |
| RTokenP1 | token | base | n/a | 5 deployments: ethereum `0xb20909fd35c548069d1cc0ff38337e6b362ca8a0`; ethereum `0xd1e0a59953ae2ae13ac31748dfd6fffad774ae04`; base [`0x5ce95fadb880b6a0ba5ffb0d76ed58d97f2a0dc0`](./contracts/base-8453/0x5ce95fadb880b6a0ba5ffb0d76ed58d97f2a0dc0/); base `0x8b06c065b4b44b310442d4ee98777bf7a1ebc6e3`; base `0xe19ae8d1f3fff987aaeaa65248bab3a0d1fdc809` | ✅ Audited |
| SDaiCollateral | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2fe50f96cd61a3056d497fe88cea8441244d5d5e`](./contracts/ethereum-1/0x2fe50f96cd61a3056d497fe88cea8441244d5d5e/); ethereum `0xeb11916a884342ef772ef2941f586c9a42fd6db4` | ✅ Audited |
| SelfReferentialCollateral | unknown | base | n/a | 6 deployments: ethereum `0x868dbbd8b7d1aed1fec4c13cc4a15f50965e2fb9`; ethereum `0x90c26f98cbe23666ed1e59186e1e4888512be58d`; base [`0x2387c22727acb91519b80a15aef393ad40dfdb2f`](./contracts/base-8453/0x2387c22727acb91519b80a15aef393ad40dfdb2f/); base `0x5f471bde4950cdb00714a6dd033ca7f912a4f9ee`; base `0x6a0fc14d21247d4fdf7e12ebe22307687b7750fb`; base `0x98f292e6bb4722664feffb81448ccfb5b7211469` | ✅ Audited |
| StakingVault | core_logic | ethereum | n/a | 6 deployments: ethereum [`0x02578bdd4cc437d12ba6c9d4fc0eec2c28b2af07`](./contracts/ethereum-1/0x02578bdd4cc437d12ba6c9d4fc0eec2c28b2af07/); ethereum `0xd5aa2eed65841687eb6bc40ff94f744965e8ce0f`; base `0x276de78548c4d7946c63785b0e1419326d1367f1`; base `0x410563d9427f1db0f1574a6ecfd74b23f528a914`; base `0x426ad39c7ccf2f3872abb16c0291eb40c0f44d23`; base `0xfbd1a538f5707c0d67a16ca4e3fc711b80bd931a` | ✅ Audited |
| StaticATokenLM | token | ethereum | n/a | 4 deployments: ethereum [`0x21fe646d1ed0733336f2d4d9b2fe67790a6099d9`](./contracts/ethereum-1/0x21fe646d1ed0733336f2d4d9b2fe67790a6099d9/); ethereum `0x60c384e226b120d93f3e0f4c502957b2b9c32b15`; ethereum `0x89816368ea75157ce1a7d2eeeab9fdc5cc10afe2`; ethereum `0x958db6d19cd29da1678bc143fa5473ae0f295b07` | ✅ Audited |
| StaticATokenV3LM | token | arbitrum | n/a | 11 deployments: ethereum `0x0adc69041a2b086f8772acce2a754f410f211bed`; ethereum `0x1576b2d7ef15a2ebe9c22c8765dd9c1efea8797b`; ethereum `0x3a7949464e074da5f707efedff75414c83c0f5fc`; ethereum `0xde554e8f0f045a4707ff7d0f386c01c8dd566e4c`; base `0x14548a0aeca46418cd9cfd08c6bf8e02fbe53b5e`; base `0x184460704886f9f2a7f3a0c2887680867954dc6e`; base `0x308447562442cc43978f8274fa722c9c14baff8b`; base `0x6f6f81e5e66f503184f2202d83a79650c3285759`; base `0xd34ef4cdfc066ce8ec7257bbe891f40b75b3a9ef`; base `0xf68f5cde346729adb14a89402605a26c5c8bf028`; arbitrum [`0x030cdecbdca6a34e8de3f49d1798d5f70e3a3414`](./contracts/arbitrum-42161/0x030cdecbdca6a34e8de3f49d1798d5f70e3a3414/) | ✅ Audited |
| StRSRP1Votes | unknown | base | n/a | 4 deployments: ethereum `0x8e594ffb702c48a9ff8ae56faec795d83a69b387`; ethereum `0xd6d40df79c7bc1e3dc5c0d957d6da74a4860960b`; base [`0x05fa0c857dd8aa7716801fc59eb6c6d5653c774e`](./contracts/base-8453/0x05fa0c857dd8aa7716801fc59eb6c6d5653c774e/); base `0xb3dccef35647a8821c76f796be8b5426cc953412` | ✅ Audited |
| TrustedFillerRegistry | registry | bsc | n/a | 4 deployments: ethereum `0x279ccf56441fc74f1aac39e7fac165dec5a88b3a`; bsc [`0x08424d7c52bf9edd4070701591ea3fe6dca6449b`](./contracts/bsc-56/0x08424d7c52bf9edd4070701591ea3fe6dca6449b/); base `0x279ccf56441fc74f1aac39e7fac165dec5a88b3a`; base `0x72db5f49d0599c314e2f2fedf6fe33e1ba6c7a18` | ✅ Audited |
| Upgrade4_2_0 | unknown | ethereum | n/a | 12 deployments: ethereum [`0x0e6e791a5f7a104085f7b6d3e9de53f6c76625b9`](./contracts/ethereum-1/0x0e6e791a5f7a104085f7b6d3e9de53f6c76625b9/); ethereum `0x133c3eb12b06c647a887804b20f3b597096f6a24`; ethereum `0x80953b6df90068cbf75d3e42f531d7485c9884a1`; ethereum `0x977208238b1da8e0e9027261c09c95a93bea55c3`; ethereum `0xbff761d367291281f3c4db4bda2c591d6dde3601`; ethereum `0xc76ebb342aa08e82c12486a90b06ad8489ff753d`; base `0x43587caa7de69c3c2ad0fb73d4c9da67a8e35b0b`; base `0x890faa00c16ead6aa76f18a1a7fe9c40838f9122`; base `0x908cd3b4b4b6c60d5eb7d1ca7ecda0e7cecd6db1`; base `0xb57db893c95e50f67a62b8dce411d8e06ff224e1`; base `0xbf121c8a390a2b5c896c0e35419aeadac1cbe66b`; base `0xcae063f8a94cc7a3447753892b383a92c9235a75` | ✅ Audited |
| VersionRegistry | registry | ethereum | n/a | 15 deployments: ethereum [`0x121c34fbedcc125cc13782008e2530a5610c5676`](./contracts/ethereum-1/0x121c34fbedcc125cc13782008e2530a5610c5676/); ethereum `0x1895b15b3d0a70962be86af0e337018ad63464e0`; ethereum `0x37c8646139cf69863ca8c6f09be09300d4dc10bf`; ethereum `0x67f77878012909c7870169bfda4f91bc7220562e`; ethereum `0xb031d7742367b92ccbed0653b9a6341efa47dd04`; ethereum `0xba8cd83f793aa046fe5ab7ba01f855742f2d6a30`; base `0x2261c428624c1a50df5c101af2afcc3c8926021c`; base `0x2f98ba77a8ca1c630255c4517b1b3878f6e60c89`; base `0x35e6756b92daf6ae2cf2156d479e8a806898971b`; base `0x3bece5ec596331033726e5c6c188c313ff4e3fe5`; base `0x58d7bf13d3572b08de5d96373b8097d94b1325ad`; base `0x7cd9ca6401f743b38b3b16ea314bbab8e9c1ac51`; base `0xbbc532a80dd141449330c1232c953da6801aed01`; base `0xbd769ea5e93a4b232cee08ed4c2a67ff5ba692df`; base `0xbe9d23040fe22e8bd8a88bf5101061557355ca04` | ✅ Audited |

### ⚠️ Verified + Unaudited (35)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AssetRegistryP1 | registry | base | n/a | 10 deployments: ethereum `0x1acff3eb9e4250fb75526ceb3ff3b05c0ccfa42d`; ethereum `0x43feb1ff2da2539aec1b45db293b2a4fe3e3497c`; ethereum `0x718bd96b607cfa71517fa52777302fb5fe40199f`; ethereum `0xcb7e10000de0dace5a79c620191cab2517693637`; ethereum `0xf683e671a7bd91257a32079ca219cc8398088aec`; base [`0x159af360d99b3dd6c4a47cd08b730ff7c9d113cc`](./contracts/base-8453/0x159af360d99b3dd6c4a47cd08b730ff7c9d113cc/); base `0x2837f952c1fd773b3ce02631a90f95e4b9ce2cf7`; base `0x29f2eb4a0d3dc211bb488e9abe12740cafbcc49c`; base `0x63be601cde1121c987b885cc319b44e0a9d707a2`; base `0xabd7e7a5c846ed497681a590febed99e7157b6a3` | ⚠️ Unaudited |
| BasketHandlerP1 | unknown | ethereum | n/a | 4 deployments: ethereum [`0x2b3c7516564261fff2190f5496c53c1155790857`](./contracts/ethereum-1/0x2b3c7516564261fff2190f5496c53c1155790857/); ethereum `0x54a8fa5217970e2040590ddd7c16f72b1fb57a3c`; base `0x5c83ca710e72d130e3b74aec5b739676ef5737c2`; base `0xf69c995129cc16d0f577c303091a400cc1879ffa` | ⚠️ Unaudited |
| BrokerP1 | unknown | base | n/a | 4 deployments: ethereum `0x63c61086418406ebb062c5c6df80f46c6d052d4c`; ethereum `0x9ce1e9c0595796e897d4596cbeac4046bbc7e095`; base [`0x07cdea861b2a231e249e220a553d9a38ba7383d6`](./contracts/base-8453/0x07cdea861b2a231e249e220a553d9a38ba7383d6/); base `0x714341800ad1913b5fccbfd5d136553ad1c314d6` | ⚠️ Unaudited |
| DeployerP1 | unknown | ethereum | n/a | 16 deployments: ethereum [`0x08638a2efe63d3a4e5056860e4292b6c059d3bad`](./contracts/ethereum-1/0x08638a2efe63d3a4e5056860e4292b6c059d3bad/); ethereum `0x087ac594713dcf03a85a0d3ca10ace81f47d4526`; ethereum `0x30dbbe1969a357e46b640f1c5276569db4af9b84`; ethereum `0x40cd76e78af4aac744d1fa443359e7e26c982f9d`; ethereum `0x8fcbd0baaeb442f1f3f374fcb63933e6d4cb8710`; ethereum `0x97c0d2f08355393286221849da444d2768a0b1e3`; ethereum `0xd01d00c99a750329412909c02cd9c9e45ffe34ee`; ethereum `0xd5fcf4795877ad0084ffc554b71d61bb660255ac`; base `0x1142ad5e5a082077a7d79d211726c1bd39b0d5fa`; base `0x25a99457fbe10e21fff9f722dd873ca882cfba99`; base `0x5574ed38ceafb537b274e3562414dca057d8ff41`; base `0x5705f85a05c8b57818663c7ab6a11f88323a1a57`; base `0x7e1e077b289c0153b5cead9f264d66215341c9ab`; base `0x7e4650af145f6a9146b91e8b363df49ee32b0a58`; base `0x9e50605e02483c273f7b5a5826f363f3a46dca79`; base `0x9ff9c353136e86efe02add177e7c9769f8a5a77f` | ⚠️ Unaudited |
| DistributorP1 | operational_periphery | base | n/a | 4 deployments: ethereum `0x5593f9d1141e2dcae50a5315fa9ee0ad64d88f32`; ethereum `0xe569926d0faafe00ba6ee696b8c61ef3e9201151`; base [`0x504e15ca74ffe0791a7fc2c069dda486d9f1805f`](./contracts/base-8453/0x504e15ca74ffe0791a7fc2c069dda486d9f1805f/); base `0xe1fccf8e23713ed0497ed1a0e6ae2b19ed443ecd` | ⚠️ Unaudited |
| ETHxCollateral | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1c0a14a44c4a6834fe23632da2f493cc4cf87dba`](./contracts/ethereum-1/0x1c0a14a44c4a6834fe23632da2f493cc4cf87dba/); ethereum `0x9fc417439d8c12159a89962c28d8a8ded9ea9dde` | ⚠️ Unaudited |
| Facade | unknown | base | n/a | [`0x688c95461d611ecfc423a8c87cace163c6b40384`](./contracts/base-8453/0x688c95461d611ecfc423a8c87cace163c6b40384/) | ⚠️ Unaudited |
| FolioLens | periphery | bsc | n/a | 9 deployments: ethereum `0x6f57fbb400b933401debd47d303a11c21700e9de`; ethereum `0xe8e67a366e5166c442b6d376adc772b93cde7825`; bsc [`0x0d3bfcfcbe9b626c4f4e19d02de4933bd92d1f40`](./contracts/bsc-56/0x0d3bfcfcbe9b626c4f4e19d02de4933bd92d1f40/); bsc `0x6acb6f241d5ca0a048da3d324c06b98f237ebd7b`; bsc `0xe7e0aee64561075af48a3e4bee1ea95f0842158e`; base `0x25eb2fc8b86f7e72051de990c68047bc1140ac23`; base `0x64213ed066d255f82f09af26e86d0a72e81b63bf`; base `0x803a52c5dab69b78419bb160051071ef2f9fd227`; base `0xe8e67a366e5166c442b6d376adc772b93cde7825` | ⚠️ Unaudited |
| FurnaceP1 | unknown | base | n/a | 4 deployments: ethereum `0x518fca5e31eeea484276a68ad5f7e5838f74f03f`; ethereum `0xa8da82f29581250c5613fa8c2857191efc65a6e9`; base [`0x280eb3b16a95a2f3cedc2bdc4e6f91b43a3c396d`](./contracts/base-8453/0x280eb3b16a95a2f3cedc2bdc4e6f91b43a3c396d/); base `0x2caf7bb8c9651377cc7dbd8dc297b58f67d8a816` | ⚠️ Unaudited |
| GenericTokenJar | token | base | n/a | 4 deployments: ethereum `0x9811e38b57ad9bc498f60090eb8d0c68436d037e`; base [`0x1f55b89d575d531446a2569158f880768686b3b8`](./contracts/base-8453/0x1f55b89d575d531446a2569158f880768686b3b8/); base `0x490c31f0ac5c34ca7d6de03925e3b89a899d1ecd`; base `0xfa2ac56b32c829d26c89c6efc47e157958d4e2a6` | ⚠️ Unaudited |
| GovernanceSpell_04_17_2026 | unknown | ethereum | n/a | 8 deployments: ethereum [`0x082e701456cd702fbe5797ab515e6b00580e5a14`](./contracts/ethereum-1/0x082e701456cd702fbe5797ab515e6b00580e5a14/); ethereum `0x23e50ae16cb3b63816a898a5dbe7fa5951930b58`; ethereum `0xd7238463494fdd4b103c2ad9d229b3985b5bc6f1`; base `0x0adc69041a2b086f8772acce2a754f410f211bed`; base `0x4da79d89482737381e90d2a7005b21cd11eaee5c`; base `0xc5e940d69a4b1ade449381d7dc29ce9bfd48f220`; base `0xe176a5ebfb873d5b3cf1909d0edae4fe095f5bc7`; base `0xe9ae2cb2b5e5658035617f92efa1878429f9cd3f` | ⚠️ Unaudited |
| Guardian | governance | base | n/a | [`0x3519918e2918b59f3b29bed16dc77174dec6707b`](./contracts/base-8453/0x3519918e2918b59f3b29bed16dc77174dec6707b/) | ⚠️ Unaudited |
| ImmutableTokenJar | token | base | n/a | [`0x8c8841d771eef8d61eff7e6f82db7f7f31701504`](./contracts/base-8453/0x8c8841d771eef8d61eff7e6f82db7f7f31701504/) | ⚠️ Unaudited |
| MainP1 | unknown | ethereum | n/a | 4 deployments: ethereum [`0x090e88bc794cce2d622738cafb5b8ba0cae37661`](./contracts/ethereum-1/0x090e88bc794cce2d622738cafb5b8ba0cae37661/); ethereum `0xc5bf686cfb85786fcfff557297d4aff8f4e15e44`; base `0x6d05cb2cb647b58189fa16f81784c05b4bcd4fe9`; base `0x7a14687999335289240a15ca714237ebb85ef18e` | ⚠️ Unaudited |
| MockRoleRegistry | registry | base | n/a | [`0x8ad3055286f4e59b399616bd6befe24f64573928`](./contracts/base-8453/0x8ad3055286f4e59b399616bd6befe24f64573928/) | ⚠️ Unaudited |
| OETHCollateral | unknown | ethereum | n/a | 2 deployments: ethereum [`0xa4d38731434e875d7e30e13d8b65befed7d47ac2`](./contracts/ethereum-1/0xa4d38731434e875d7e30e13d8b65befed7d47ac2/); ethereum `0xbfac3e99263b7ae9704ec1c879f7c0a57c6b53e1` | ⚠️ Unaudited |
| OETHCollateralL2Base | unknown | base | n/a | 2 deployments: base [`0x4024c00bbd0c420e719527d88781bc1543e63dd5`](./contracts/base-8453/0x4024c00bbd0c420e719527d88781bc1543e63dd5/); base `0x878b995bdd2d9900bee896bd78add877672e1637` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | base | n/a | [`0xab36452dbac151be02b16ca17d8919826072f64a`](./contracts/base-8453/0xab36452dbac151be02b16ca17d8919826072f64a/) | ⚠️ Unaudited |
| OptimisticSelectorRegistry | registry | base | n/a | 8 deployments: ethereum `0x9eb27bf4a095e459111f6e5f6631ccaecc817f5a`; ethereum `0xb627d57318b0f66a8003cf46f11bdbf6fab34281`; base [`0x1f6ed108092579076be34057a0a84d96c48f2b8c`](./contracts/base-8453/0x1f6ed108092579076be34057a0a84d96c48f2b8c/); base `0x6e14943224d6e4f7607943512ba17dbba9524b8e`; base `0x823110a13eb26cb09c4bb118dbfe4ff5f96d5526`; base `0x8d6e0402a3e3ad1b43575b05905f9468447013cf`; base `0x8e33d5ac344f9f2fc1f2670d45194c280d4fbcf1`; base `0xfbefbe5d4f45c541e2cdd038fcc90391560efa0d` | ⚠️ Unaudited |
| OracleFactory | operational_periphery | ethereum | n/a | [`0xa9952a5a8e3da79b028c46e117d26349c0cd6a56`](./contracts/ethereum-1/0xa9952a5a8e3da79b028c46e117d26349c0cd6a56/) | ⚠️ Unaudited |
| ReserveOptimisticGovernanceVersionRegistry | registry | base | n/a | [`0x32738d2813441ea0cdb839ae97e97874ed1150d5`](./contracts/base-8453/0x32738d2813441ea0cdb839ae97e97874ed1150d5/) | ⚠️ Unaudited |
| ReserveOptimisticGovernor | governance | base | n/a | 8 deployments: ethereum `0x94a45f808fc9e27405f37f22b0595439cc33ca0f`; ethereum `0xc13471f099ebf04479e8424acb2c560a5453a8e3`; base [`0x087d0fe8827af9c25cc360a5c27ad8599dae545f`](./contracts/base-8453/0x087d0fe8827af9c25cc360a5c27ad8599dae545f/); base `0x29edbbbe7415cb8637e0f62d5d19dcb3a5bc3229`; base `0xa3f994235a3b42f71e5f8aba9a4190e47cd34ee8`; base `0xcab3d3d0d5544145a6bcb47e58f61368bccae2db`; base `0xcdc049c955287dcb68c56640e6d2290953b5bdb0`; base `0xf0fb23485057fd88c80b9cec8b433fda47e0a07a` | ⚠️ Unaudited |
| ReserveOptimisticGovernorDeployer | governance | base | n/a | 8 deployments: ethereum `0x92dc80242f6aaba9dce1b8ffb88427560e77e5f3`; ethereum `0xd4627fe1879c1add3028a230063c1a9697295f79`; base [`0x1262f9dd085fe3360acf2dc364669207d958cc7b`](./contracts/base-8453/0x1262f9dd085fe3360acf2dc364669207d958cc7b/); base `0x2d74007d1459cfc4fd10b2fb13a1f1ca6c753d8e`; base `0x35783e7e3e1d4c85da162eececd1d4176acce909`; base `0x6de4c064362fd3971333b240c550ed8f5d5c31ff`; base `0x81da746a54efaf67ca97950bbbcfd4e048ef3cd6`; base `0x9257a1307a72603b7916d0c97fcabc6351c3482e` | ⚠️ Unaudited |
| RevenueTraderP1 | unknown | base | n/a | 6 deployments: ethereum `0x9e240cb60627b49088c2e6152c4447f7181dc0eb`; ethereum `0xbaa47e33ab0d41024e9f271e29154d9688eb16ac`; ethereum `0xe5fee6464f90e38e54c68c63aadf7120b534aa6c`; base [`0x2377f1817461b2994c7dfd7596fd3cbfdce4435d`](./contracts/base-8453/0x2377f1817461b2994c7dfd7596fd3cbfdce4435d/); base `0x55590a1bf90fbf7352a46c4af652a231aa5cbf13`; base `0xf8cae97837f79b7ea4dbacc14c4f547718cac8be` | ⚠️ Unaudited |
| RewardTokenRegistry | registry | base | n/a | [`0x2418e1e9a7f7663e8b97b57d4e4aa506a3fb7105`](./contracts/base-8453/0x2418e1e9a7f7663e8b97b57d4e4aa506a3fb7105/) | ⚠️ Unaudited |
| StandardArbERC20 | token | arbitrum | n/a | [`0xca5ca9083702c56b481d1eec86f1776fdbd2e594`](./contracts/arbitrum-42161/0xca5ca9083702c56b481d1eec86f1776fdbd2e594/) | ⚠️ Unaudited |
| SUSDSCollateral | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4fd189996b5344eb4cf9c749b97c7424d399d24e`](./contracts/ethereum-1/0x4fd189996b5344eb4cf9c749b97c7424d399d24e/); ethereum `0x8a1a3b46749b81cf91d56df6042e12ce50e1b08a` | ⚠️ Unaudited |
| TimelockControllerOptimistic | governance | base | n/a | 8 deployments: ethereum `0x5ee539986a06cc93e3a25aa433d848b6dac94e41`; ethereum `0x628336e22bd345f7ce15901da17c7c0034f0c560`; base [`0x29dc6f79750020d77c6391629101bdc0f0d16ecb`](./contracts/base-8453/0x29dc6f79750020d77c6391629101bdc0f0d16ecb/); base `0x2c7ca56342177343a2954c250702fd464f4d0613`; base `0x5c6968ce0c049fb6e65f762eb53248eac02aaf59`; base `0x99f7027407bdd2d3b28b0d579f22c7cfebc922fc`; base `0xb582fee78a0edba125c041bd86dcc01f9e294219`; base `0xc39e3cea89265fde810f7325c79c6ddc9ad13927` | ⚠️ Unaudited |
| TimelockControllerUpgradeable | governance | ethereum | n/a | 8 deployments: ethereum [`0x270d928b9ee38bad93601d197256390b3c3c13ec`](./contracts/ethereum-1/0x270d928b9ee38bad93601d197256390b3c3c13ec/); ethereum `0xa7bc1265c37a8d285cd2b10c842efb8415a7bf9f`; bsc `0x52f809f635c78eec703c1d0da9fee3e2071b8b48`; bsc `0x7589908f156b660f19809a674276587233d58f31`; bsc `0x78bd8dd0ad8fb867ca9dda747c93de5a9846a54b`; base `0x3326012ced86f751cb149c15f9d6c38847ae649e`; base `0x80fd61148b5c03aa4e0939cb9ebbff67fe076ad2`; base `0xa7bc1265c37a8d285cd2b10c842efb8415a7bf9f` | ⚠️ Unaudited |
| TokenImplementation | token | bsc | n/a | [`0x23f72a3db61d6cb8abe5d9af1ac4b6c99327bfee`](./contracts/bsc-56/0x23f72a3db61d6cb8abe5d9af1ac4b6c99327bfee/) | ⚠️ Unaudited |
| TradeHelperFacet | periphery | ethereum | n/a | 2 deployments: ethereum [`0x9c09e506e00ac87e2413b7501702faca690201fb`](./contracts/ethereum-1/0x9c09e506e00ac87e2413b7501702faca690201fb/); base `0xc1e16ad7844da1aeffa6c3932ad02b823de12d3f` | ⚠️ Unaudited |
| UpgradeSpell_4_0_0 | unknown | base | n/a | 2 deployments: ethereum `0x7498c6ab0669a09de7b9185ba72a98fa3ca39cc9`; base [`0x4720dbcaeef5834aef590781f93d70fd1e3acadb`](./contracts/base-8453/0x4720dbcaeef5834aef590781f93d70fd1e3acadb/) | ⚠️ Unaudited |
| UpgradeSpell_5_0_0 | unknown | ethereum | n/a | 3 deployments: ethereum [`0x044b6f685fb8d0c3fd56d92fcbe5f0ad947d2d53`](./contracts/ethereum-1/0x044b6f685fb8d0c3fd56d92fcbe5f0ad947d2d53/); bsc `0xe8e67a366e5166c442b6d376adc772b93cde7825`; base `0x04b3ed311c68dfb0649d9faf695115f23dcbb540` | ⚠️ Unaudited |
| USDeFiatCollateral | unknown | ethereum | n/a | 2 deployments: ethereum [`0x403623175656ed0cdf1f9efe54867761f1ebf1d8`](./contracts/ethereum-1/0x403623175656ed0cdf1f9efe54867761f1ebf1d8/); ethereum `0x4f30165072351923a1a4bc3926050986318f9b34` | ⚠️ Unaudited |
| USDP | unknown | ethereum | n/a | [`0x8e870d67f660d95d5be530380d0ec0bd388289e1`](./contracts/ethereum-1/0x8e870d67f660d95d5be530380d0ec0bd388289e1/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (525)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x01191cfb73becf1e4ff2b2ccc56eabef385b3b72` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0262e3e15ccfd2221b35d05909222f1f5fcdcd80` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x060a29eb023778384231c51255195e9ded3e23bb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x08424d7c52bf9edd4070701591ea3fe6dca6449b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x08ac3b6c05410434a9790875bc635acaffe90610` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x124d6ba4d5a6edb8ed008d8ea0648d30733f358a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x14ccb0ffd40cb9bebda4a0f8334d467fad5786c0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1942270ac94e6c6041c7f7c87562ba8ddb1bdffc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1c5ed660ef1def4c792e33ae7ad04f944981e83a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2362a9b237e4f06491b7e3827ee179b77f2b22c6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x244b798afefd17a9f0b504bc68e520011276d109` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2635c3b92c8451f9d1e75bd61fcf87d1ecdf0ad0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x28352c17e387caf18e513ced86b4f55bbe74c604` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x309740e46f08fa963e5317a3b9dae84e7b2ba4c0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3679c2af9522d89a1f08980aa182fab88320e258` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x38190e1737ffd795508fae387e4e893109423dd2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x399fefd40bca3213b05cb7d5442d50e60188dec4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3bee3f160528735c70401104989ffe5d86ced0bf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4abd7f3db2de08628baf4cae3a7c791d2d98f1e5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4bfe6e50d799096a87bda5d2f4fa4a62ed50c3b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4c64ef51cb057867e40114dcfa3702c2955d3644` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4dde116cf8641f2de3b3713ebac798e9c9f6530c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x57987f3f235d6cfe060e1d788f0a66d4ee5bdbb6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5d6cfccb48d69f912bbc85cbdcfba21316793ba8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5e9cfceeaf12241b5707e9b36a603faacbdd1286` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x61c0b61b89b7ffcc1b070a24dff3c174150e8e56` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x672303af7726b0afe336c1110c2101ea622b2c79` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x69841ba9e09019aca0d16ae9c9724d25d51f6956` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6b94e59907564e8bb5ef9c9005b72e81835d28d9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6e3425c706c61690476c1e89257cb8bd65d84422` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6ffcb0f00c3ad2575e443152d8861aec1bda9ce6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x70c8611f5e34266c09c896f3547d1f7fccf44d54` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x79a4e963378ae34fc6c796a24c764322fc6c9390` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x79d80b7ac41b5bf737e50728d7cbac3e9705132a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7a993aff39ab3047ef2777cfedd89f7dfd6d4f9a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7b05d3602ae08ec26cefc24a6fe91de601546bfe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7c8f29d6479aaa9b9ad6c26b3d76933614060e6a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x82431a024dd31c37cf13c355776d0dda1002248c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x86eee0422322710866af89e9cae3f7383d55310a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x87d79de69e0fe5b80c400a4fbb60df0ce0a89715` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x880f6ef00d13baf60f3b99099451432f502eda15` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x88b224e9196984f878ba9f7e58ad0d43377a9e52` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8c38784733aa15427b23610f658628d196e9c586` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9104bea4442cd27846cd4dc84b0b07dd2782f072` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x917db50fda75bed36163982cf6959a9390bf8868` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x997272e432c47f307cea1d9d004d96738fe6853b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9ba7f58b1a39d0c6a1c2e9af33642d3e63127edc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa29a30307ff1ff2a071e74ba7d07c59a37b46d56` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa32a92073feb7ed31081656deff34518fb5194b9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa403a341812c8e412967841fad67c21ac09413e0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa665b273997f70b647b66fa7ed021287544849db` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa73980c34cb2c091454dbfcf7bcdbca052fe6ff7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa8931731b738de352f45c1cc17605aaea5853b6a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaafb13a3df7ce70c140e40c959d58fd5cc443cba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xab2b07d482983b96074fefb366fbc4ac0bdfc07c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb0983cd34abf135906e37d833b4726891543c6d5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb80bb3028aab34520ee6ce6175bf2990095bae19` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb8469986840bc9b7bb101c274950c02842755911` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbe4fd60c7484dad36f88a2edc5df9c7732b41f23` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc2f865cfd8cd357bb2ce919aff62b7858572ba1c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc3bf92bc922e9e7447e34328db429dac85705f87` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc724c8890b5fe2460ff2fb06534fd3eb4ce2611d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcb061c96ff76e027ea99f73ddee9108dd6f0c212` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcbd661a5d1d44c86a553bd4fa1773ca0be576722` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd2b4e39ac1e52af6070a798ccbcf4290f2c1fdfd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd2db4f4fd2e17e63883b20cde7b4fb515f46bb07` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd422f6dc418acd8a8996d1e828c080cfd4c15c47` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd492fc8db10dcdad59aa962f46e5815131728d08` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd7bf467b0400d857dd9e8b5a591232d0c51fc721` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdbd9c5a83a3684e80d51fd1c00af4a1fbfe03d14` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdec77d8367c28d48dda10c9c86a34a984458653f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe1ec57c8ee970280f237863910b606059e9641c9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe4227ed382a6e5e3001201635de76b7120b13295` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe4c7e0d8777d20218242b0075d7d9932f778e9a7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe8f62c8141617b1f981a4128f08354c07795c4aa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe926577a152ffd5f5036f88bf7e8e8d3652b558c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf5733751c0b6ffa63ddb2e3ebe98fbbb691c399e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf58192ead92f54e4df28662accba87bc6750795b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf9b554aede1d7eb8ceba3f0e9409c899ada18b88` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfa025df685ba0a09b2c767f4cc1a1972f140d421` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfb56b651f882f8f90d35dd7ca181a7f4d889ecac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfd0cb54d72b4631a37150c07d903db9e2c43cbea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfde702794298db19e2a235782b82ad88053f7335` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x002835840a6cb5dd3f73e78a21ef41db4c66948e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x02062c16c28a169d1f2f5efa7eedc42c3311ec23` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0262e3e15ccfd2221b35d05909222f1f5fcdcd80` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x02ab5b6df2c17d060ee3e95d08225ff3a42504a5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x030cdecbdca6a34e8de3f49d1798d5f70e3a3414` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x03bd4e58669e9af254e2da6db946819192b231bd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x042d85e9eb1f4372ffa362240e0630229caa1904` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0626b712775ab417f93d3401283d71b14ff45e7e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x06f7d10f5842fc5816df9a9dd65f84481b1490e3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x073bd162bbd05cd2cf631b90d44239b8a367276e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0903048fd4e948c60451b41a48b35e0bafc0967f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0908a3193d14064f5831cbafc47703f001313ff6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0ad231aedc090f15522ef8e2f9e2f4d07b5b50e4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0defa46e5e7258c9a776add56e6875a9323b9998` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0eac15b9fe585432e48cf175571d75d111861f43` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0ef3c7fe9c1cf7352d52e2867652b7547defdbe5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0f53aba2a7354c86b64dcaee0ab9bf852846baa5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x100e0efdd7a4f67825e1be5f0493f8d2aeac00bb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1093b934ec8f3468298fd92b2c7f4eeb1429578f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x10d7a1ed1c431ced12888fe90acefd898efaf2ba` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x126f28230833a1c48019cf2089f797f580aeaf76` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x12c3bb1b0da85fdae0137ae8fde901f7d0e106ba` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x135437333990f799293f6ad19fe45032ba68285e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x13b63e7094b61ccbe79cae3fb602dfd12d59314a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x143c35bfe04720394ebd18abeca83ea9d8bede2f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x143d74048b35a73bdad3297ee3eaa743cb4a8235` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x15175d35f3d88548b49600b4ee8067253a2e4e66` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1656d8aad7ee892582b9d5c2e9992d9f94ff3629` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x16e20526b51ef6229fba685e570dac44388bdb90` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x16fc605eee1ece04792b563586ad530c9d535054` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1744c9933feb8e76563fce63d5c95a4e7f967c2a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x182e86ad4a6139ced4f9fa4ed3f1cd9e4f7449e7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x186d05580e6b7195323b5dc8c3ee9179ad086d4c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x199e12d58b36dee2d2b3dd2b91ad7bb25c787a71` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x19e3d9fbd121a13bb55bcb6b50f9cb44f9306ce0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1bd9eaeb0ed1ab51da1ff8d437892488790bbde7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1cddc45cb390c3b4a739861155e8ee95b7321ed6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1d6d0b74e7a701ae5c2e11967b242e9861275143` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1e313e48d6e24e01b1f4e2d1651c2bea3e35b2dd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1f1941ee0b3ccb4ff2135d31103c59f2e53c34b5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1f59e25af6ebc107b0c409784ac261de16318877` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1f7e90dd8d4e272634011241947d8c6e34cbd0cf` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2117cb9b173077a5efd0e4ce0a21c6b3add65a26` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x212dc556816e39dfaa6abdf9995351a18ab463f8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x21e8417b1f38fbfd14efc00af3c22e002a69a9d8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x21fe646d1ed0733336f2d4d9b2fe67790a6099d9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x22d28452b506efd909e9fc1d446a27061c4bda7b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x23b57479327f9bcce6a1f6be65f3daa3c9db797b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x23f7757fcd688ba06313ded03defa9cacef4e5e4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x243105ac960cdc1fae10ffe446f7a61eab570e98` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x24d0aaac80a457be7843c59d45a1b90fbb02ed8e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x256b89658bd831cc40283f42e85b1fa8973db0c9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x25aa9878a97948f9908db4325dc20e5635023ee2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x25e92785c1ac01b397224e0534f3d626868a1cbf` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x26efbe70738fc09b2d0b28cb3c98dbc71067b473` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x270284ecb6af0dc521d2c8f9d77b03eed2aace90` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x270d928b9ee38bad93601d197256390b3c3c13ec` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x277fd5f51fe53a9b3707a0383bf930b149c74abf` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x27bb9158a6727abdcaf6a1b983ffca94e41d5616` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x281edd83b9b3c7cd05e260ef7e17a9734731a52b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x28f29fc91f831fb99af9e15c24dfbcdd37c4aef0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x29e9740275d26fdedbb0aba8129c74c15c393027` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2a00a95dc311eb96fef922b8418c998f86d2c464` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2a2a842dda2da2170a531dff4bd4a821321e4485` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2b28364a0e9c37bfb0685cb441f11d686f1a9b6c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2c312da96f98a5b7822270f69afd2d7ae8e748dc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2c5293c1708c6f9c0bf73cfeddb6f0a034402582` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2f616b82022874519cb4bb795b8b931d65564825` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3043be171e846c33d5f06864cc045d9fc799af52` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x30b29539b5302ebce52479275dfc9dfabb66a047` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x311a3c2c62a3dfa6007f4a5709fd9f3e6c01bb72` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x315402672e47caf2519ef40ac1077eb5bf715097` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x33b2a7216e3fc4ea33d8a69ed80ba65d626ead50` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3611dee69b306634dea9aea7fe755255fcfef062` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x36a43e13f0c8d8612ae3978a8e7a58bb58000923` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3712ddcf9ae516dd01042948b76a76901a84cd36` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3752098adf2c9e1e17e48d9ce2ea48961905064a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x37bb29213ed9bd0cd08508bf3ff09c19891c82e9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x382ee5dbaca900211d0b64d2fdb180c4b276e5ce` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x384d709000ad5a42e84bd40dcd0fffbd94aa9517` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x387a0c36681a22f728ab54426356f4caa6bb48a9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x38c7e9427960e427f6c84b3a096021f47a9afb82` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x38e6c0573f325c2ab5644df1e08ad84c997d5748` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x393002573ea4a3d74a80f3b1af436a3ee3a30c96` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3a30b3a3ced24ef21608bd0e000070b16b0b9e4d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3a55cee81eadab7f64430ff0148f547bafd993fb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3a86024d6cb7db96daefc013ff92cde469d6a1dd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3af43b15c2a274fb737bfdc85993665dc13ccc25` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3c2460aca70bedf096f71cf91ffbc0789f08503f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3d3226c68b1425fdaa273f2a6295d5c40462327c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3d6d679c863858e89e35c925f937f5814ca687f3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3ddc60c2dfa57f78972466ca805c9da69795fdb7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3dde17cfd36e740cb7452cb2f59fc925eacb91ab` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3e40840d0282c9f9cc7d17094b5239f87fcf18e5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3f65133f232915226206791d23182285ed2e9387` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3f6fd3c18397a25a0763c38a4c4cecfe98eadf6a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3f83aa355ae31ecbb4d8378f0aa671614dfa4941` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4284d76a03f9b398ff7aec58c9dec94b289070cf` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x42d0fa25d6d5bff01ac050c0f5ab0b2c9d01b4a3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x42e274accd54847c10c224a9d36fbf37356ba75f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x42f2f6161f3db61947bbfbbb9b12216cbff188c9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x437b525f96a2da0a4b165efe27c61bea5c8d3cd4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x43c771c2cc2f33f882eddc2330325bc8248f764c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x43dca440bc160562173cb24e87f6fe39c62e9f0b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x440a634ddcfb890bcf8b0bf07ef2aabb37dd5f8c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x44ab1cb3c9f25a928e39a4ede3ca08b52b4cde24` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x451c1702d95877a51a816489315b8cb1c6c0367a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x45b9bcc340aff7497e6f06de763b6a69644b4645` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x45d7dfe976cdf80962d863a66918346a457b87bd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x46c600cb3fb7bf386f8f53952d64ac028e289afb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x47df1465672bfc4dc83f712531f7eb1d658c0b66` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x48d1447f24ac3eff8d059c164ac9b66ce122d759` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x48f4ea2c10e6665a7b77ad6b9bd928b21cbe176f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4a2fd11d296f1c41c8b6ab016fce8ac08aed11f4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4c175e9499d08b0ca8206bbfa035f8228a74ac6f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4c2fca94163355a5b81f4d924bce8ccbacc15406` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4c64ef51cb057867e40114dcfa3702c2955d3644` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4cf200d7fa568611dd8b4bd85053ba9419982c7d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4e01677488384b851eeaa09c8b8f6dd0b16d7e9b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4e2792e29ee1d04c966f3e376f8ac47a960f0e62` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x50f4991be43a631f5bedb5c39e45ff3e57fa783e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x520cf948147c3df196b8a21cd3687e7f17555032` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x53321f03a7cce52413515dfd0527e0163ec69a46` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x536308b71a0aa70e14dccb4c4250055286b8483b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5429cdb660037fcb2e211c6ef9d32f7677caad77` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5472778c537755c7fbb6c738d0d87c39f91330d9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5643d5ac6b79ae8467cf2f416da6d465d8e7d9c1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x586bb254ebd82bc2a244531dfd61d91064a45881` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x587cefb69473ad467993c6dd3a8f202bf1ef5e2a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5a004f70b2450e909b4048050c585549ab8afeb8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5a0f5e19e963206ec78fe8bf5fa53108918dd898` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5af543d6f95a98200dd770f39a902fe793baeb27` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5bfc6df700ef23741b2e01bd45826e4c9735ae60` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5c46b718cd79f2bba6869a3bec13401b9a4b69bb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5caf60bf01a5ecd436b2cd0b68e4c04547ecb872` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5d7906a1e865dcc6f57ddcbaa0af698fb306b3f1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5e0116b2b2724b3520beb9c9928cda84f4129715` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5ebe8927e5495e0a7731888c81af463cd63602fb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5ef74a083ac932b5f050bf41cde1f67c659b4b88` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5f053dbcf37e31250f15787e1577f7a6a07d486b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5fe248625ac2ab0e17a115fef288f17af1952402` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x60c384e226b120d93f3e0f4c502957b2b9c32b15` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6144985d053f6364bdd8d12a0dab9962804780c8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x615d92faf203faa9ea7a4d8cddc49b2ad0702a1f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6356f6876d781795660cd2f6410b5a78636df5c1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x63e12c3b2dbcaef1835bb99ac1fdb0ebe1be69be` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x63fdcb1e8ee5c4b64a5c4ce0fb97597917920cb6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6419fe6cf428150e2d8ed38a3316b1bb468f79a7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6490d66b17a1e9a460ab54131165c8f921accdeb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x65d41084b9c3ff3dcf911542dd28b1ec3d6d6eb6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x67168bbfca477f28bc44d0a148e51a0698105b03` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6795ebb91582f1fc11186ed973b8b7c0bcdbf682` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6816ceea904ddc412e4fb6937b0849a991bd249e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6983356580516ea6be654d89d43c2da58cf16deb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x69bd37b82794d64dc0c8c9652a6151f8954fd378` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x69c20ad99eb1054cd7da2809572205186975da17` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6acb6f241d5ca0a048da3d324c06b98f237ebd7b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6affde0ba2d1f8fde8da8f296e7efc991d807515` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6d84bb0f1b25c84c7bf85f7810ca6426b7694dd1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6ec09bd7d32f1023626aaea1090e178d81c7701a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6fe56a3eea3fec93601a94d26bea1876bd48192f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x71199c358db8408e2af315551536d52719f8f94c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7182e3a6e29936c8b14c4fa6f63a62d0b1d0f767` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x725055aac1ea74c5d1b45f2cd047208c7955e079` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7284c53824b9a242125e7f56b66b7e1754edf642` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x72f0857544ab7060588730b6ace5d32b38c6539b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7321485aa1d0439296b882bbc85eb0bd350f8381` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x743063e627d375f0a21bb92d07598edc7d6f3a2d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x748aba85bfe143078faf7516e51d17e04f743162` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7498c6ab0669a09de7b9185ba72a98fa3ca39cc9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x756ef55e3092d0e69ee3fa2fa93227793e962aac` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7589908f156b660f19809a674276587233d58f31` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7600cda692679df4928a883a8f1c5687b2991df4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x77cfe9fe00d45df94a18ab34af451199aaab2b5e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x77e9cbdd675d44ac11ab3682aab52b29cea9241b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x78bd8dd0ad8fb867ca9dda747c93de5a9846a54b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x79a4e963378ae34fc6c796a24c764322fc6c9390` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7c50c26d969ca106be01f76a8da6e59ce25acad8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7d45524b9c3d7d77940fdda4a59be05f2efc6c7a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7d85d8eef8448a1c3442a978224339df4d79e834` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7e963345072067f852263aefd183e48876e0f359` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7fc1c34782888a076d3c88c0cce27b75892ee85d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7fdbe32980861cc63751a0aea5a5b3ecb5119acd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x805bd2fde1c5269f6c5d6e74394f21651a9c2c7c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x80a574cc2b369dc496af6655f57a16a4f180bfaf` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x80b24e984e4fc92a4846b044286dcccd66564db9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x81b19af39ab589d0ca211dc3dee4cff7072eb478` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x81c24765e4fa988c122f32fa010cb2b9ee4644e6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x83dac0593bd7de8fa7137d65fb898b7b7ff6ede6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x83e22b14c567efa1e263a0256edb1a8e66a65e4e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x851b461a9744f4c9e996c03072cab6f44fa04d0d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8569d60df34354cdd1115b90de832845b31c28d2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x87f0ec2f8c9c595612ec3534c7517b55277b811e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x883d5e0d72f0772f04b6867178daccb73bb333bf` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x88cf647f1ce5a83e699157b9d84b5a39266f010d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x89209a52d085d975b14555f3e828f43fb7eaf3b7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8960ae89c8fee76515c1fa5dabc100996e143798` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x89b2ef0dd1422f482617ee8b01e57ef5f778e612` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8a01936b12bcbeec394ed497600ede41d409a83f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8a11d590b32186e1236b5e75f2d8d72c280dc880` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8a8a1a7e0c1939234aef25bde7cb554e64bf0133` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8b906361048d277452506d3f791020a1ca798af3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8d5995efb0b52c7a60664cf28e6b30d75083acad` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8d68d450a33ea275ede80efc82d8cd208dae4402` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8f471832c6d35f2a51606a60f482bcfae055d986` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x90b8cfcb8645e2e518a20060daf7c482ec7d0971` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x91bc364b47992981a7a05c22c3f48b67de8aa61c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x91fa9a7457bff96505de8182cbc4434c1b07cea4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x933c5dbda80f03c102c560e9ed0c29812998fa78` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x93de153ba104d15785c8d8af01ae9425960de49e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x95171c5c8602f889fd052e978b4b2a8d56e357a5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x951d32b449d5d5ce53da3a5c1e22b37ec0f2e387` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x97c75046ce7ea5253d20a35b3138699865e8813f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x97d7659ad79b2dcc89ace4a6e0a11a7455975a39` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9837ce9825d52672ca02533b5a160212bf901963` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9c387fc258061bd3e02c851f36ae227db03a396c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9c75314afd011f22648ca9c655b61674e27ba4ac` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9ccc7b600f80ed6f3d997698e01301d9016f8656` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9cd0f8387672feaaf7c269b62c34c53590d7e948` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9f99f37fe0b419b3661403decea09bc44f615d46` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa0d4b6ad503e776457dbf4695d462ddf8621a1cc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa24e0d3e77ec4849a288c72f9d9bc4df84b26558` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa29a30307ff1ff2a071e74ba7d07c59a37b46d56` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa372ec846131fbf9ae8b589efa3d041d9a94df41` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa3fcb8921d2ed62136ef925e29ed4757ed19b040` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa42850a760151bb3acf17e7f8643eb4d864bf7a6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa4cf5376bfc5d745cec01e0274fa2804a04cef33` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa4f1fc88eff9a72bcc278a2d3b79cafcc1551fb5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa665b273997f70b647b66fa7ed021287544849db` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa6e159b274e00848322b9fa89f0783876884cedd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa6fa215ab89e24310dc27ad86111803c443186eb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa70e7f86c56bf63befee3ef76ca0d392acab8ef2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa9c7ae7a71355e5d7a901fb5153d7339f7195a13` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xaa85216187f92a781d8f9bcb40825e356ee2635a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xab084e4bd6f12359bcc1d20a7b8f3dfe17858664` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xac543ee89a2238945f7d7ad4d9cf958721f9757c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xad4b0b11b041bb1342fea16fc9c12ef2a6443439` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xad76b12aeee90b745f0c62110cf1e261fc5a06bb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xaea6bd7b231c0ec7f35c2bdf47a76053d09dbd09` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xaeca35f0cb9d12d68adc4d734d4383593f109654` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xafd16afde22d42038223a6ffdf00ee49c8fda985` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb03a029ff70d7c4c53bb3c4288a87acfea0ee8fe` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb05e15145655ef793f5ebf8389d3974729889fc0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb14502af75c79efc89f9eb2af5fa2e8ff0fb2105` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb262e541302189bf724c0003a40dd4c64c75b6ad` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb3522270b6d8a02aa6d789ea887b1d34af35a193` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb3b8e289c1e0ca80be7ef05bd31af51f9f363e01` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb410e13c263bb773cf908bb85773561cc3846ee2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb4eb87250ecd8f32bea775da6d164d92a398d05b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb54409d3d9a2427fd92ae2dd401cc71f211bc7ee` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb5bdff1fb47635383abf13b78a79c8a21aa1b23e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb5cf3238b6eddf8e264d44593099c5faafc3f96d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb60a2dc7b1745ac00314c238ad2bba05022ec1d1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb80cb6068f743868d38b7abc2c55a720c06c44d0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb8794fb1ccd62bfe631293163f4a3fc2d22e37e0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb8bd312454f0b0dd264072a1f9e0a0d2e776855f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xba748faf1a94b5c8de5c8ca8d87a0906c5b0300c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbab530fe8afa58299a927131174d47452a89a0a4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbc30941320d855c93682594a091abb8d2b7bb1cd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbd16daf9b2d18faa32953978846ff9b9c6ccb297` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbd49ceac629d7131b8a975b582acdaeb5c049bad` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbe301280e593d1665a2d54da65687e92f46d5c44` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbe3b47587ceeff7d48008a0114f51cd571bec63a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbe54a0638502ee32611659589cb64c932c087945` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbea06b57bfb769401407676e816f343761ee31d7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbeaa894c5a3a5f95150c34f71b2fc14124b861a0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbefb78358eaaacaa083c2dff5d2ed6e7e32b2d3a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbf52efbbcad1d0f35e555f16461401dbcfeb8182` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc03c0d30cb49aa3f30a528fd553635d5399479b3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc17ad209634a468e2a9d58ebb070004a6a748df0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc58ec75be5a5417db54610cbe28ab5ece4f4c256` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc6e5cf6a9d215d2d3d4d433fabaea44d5f396c43` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc74ee9176d43c708ff99e6401de98cbfe4c7039a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc78c5a84f30317b5f7d87170ec21dc73df38d569` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc8f487b34251eb76761168b70dc10fa38b0bd90b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcb061c96ff76e027ea99f73ddee9108dd6f0c212` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcb6d5c6fea718b7b303f0bdb176c7ce2350c29b0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcbcd605088d5a5da9ceeb3618bc01bfb87387423` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcbd013dc8387b69620ee3c44c665826852686f24` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xccc18b21be01a37ebfa5c932ed09574752f88c15` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcd033976a011f41d2ab6ef47984041568f818e73` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcd77df48e548dda056f8563f2520ffd94ad147ee` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcdd48539b123401ba003218ef5ae2116100d0f2e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcdf32e323e69090eca17addef058a6a921c3e75a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xce038741dd0105f9509070a717d70e55f58e5faa` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd0ecc33064f467516739a2659b0be60570718e94` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd0ff3aa130a34eac0c448950ca8fe662330cb065` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd126741474b0348d9b0f4911573d8f543c01c2c4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd3025304c6487fc5c39010bea0b46cc0690ab229` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd3072be7bd27aec0ccb4fd2462ab181bc1d2f2f6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd31de64957b79435bfc702044590ac417e02c19b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd42643eb8b313e3e73f51b8f0af4f0246a66e3a2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd45a441f334f6f27cdda3728414fd26cc5798e66` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd4e1d5b1311c992b2735710d46a10284bcd7d39f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd5cc2875bbc53afbcc41bf04e7ba37f2894cbfa1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd85fac03804a3e44d29c494f3761d11a2262cbbe` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd9438b058ce83925e4ac0834744fc0b573a7afbb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd97c868f4b52030d444c62b88facb6007c61b4c9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdb4bee68d5eae18adc943ace106d7a623276ee8b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdbd9c5a83a3684e80d51fd1c00af4a1fbfe03d14` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xddb74ee1ce4fa8185217e73fd0666703f58c424c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xde0e2f0c9792617d3908d92a024caa846354cea2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdf99cca98349def0eab8ec37c1a0b270de38e682` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdfcc89cf76ac93d113a21da8fbfa63365b1e3dc7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe0b810bd674132b553770064fc90440c5a5f518d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe11b8943b6c9abfc9d729306029f7401205baa9b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe1aa15da8b993c6312baed91e0b470ae405f91bf` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe1ec57c8ee970280f237863910b606059e9641c9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe2b652e538543d02f985a5e422645a704633956d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe33cef9f56f0d8d2b683c6e1f6afcd1e43b77ea8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe352b0ae3114c57f56258f73277f825e643268d0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe41416d8dc94ac1f6d12282d6d46b714f39a87d9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe4c0ba009782a8908a3821b4950d9d75ecdb2da6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe5a1da41af2919a43dac3ea22c2bdd230a3e19f5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe5bd2249118b6a4b39be195951579dc9af05029a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe639d53aa860757d7fe9cd4ebf9c8b92b8dede7d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe664d294824c2a8c952a10c4034e1105d2907f46` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe7187cc63c72fe0920668b547852bdd0517c4e86` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe7e0aee64561075af48a3e4bee1ea95f0842158e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe898790455f6ac247782484acc8508f72348d262` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe90457dd23c27cd4955bfc056744e1c9d790f771` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe926577a152ffd5f5036f88bf7e8e8d3652b558c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xea525dc6ca85c051915ac125d889086185ff5c90` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xeb1a036e83ad95f0a28d0c8e2f20bf7f1b299f05` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xeb2071e9b542555e90e6e4e1f83fa17423583991` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xecbba78d8cd654dfc582cb7fcf31d8a2a0b7a6cc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xed67e489e7aa622380288557fabfa6be246de776` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xee516ff5b5fcfa200433ee5a2bcd23773496e9c3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xee527cc63122732532d0f1ad33ec035d30f3050f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xeedc6eac6d21067d71b50d532dc8e8979174a66a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xeee5fb059c6b9fb8ab431c7e4c2b7d77e687478b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf1b06c2305445e34cf0147466352249724c2eac1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf3458200ede2c5a592757dc0ba9a915e9cca77c6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf4c5d33dabb9d4681ed9b83618d629ba1006ae16` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf507cc01cdb392c53effaf9650d2ab7428b142bf` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf5733751c0b6ffa63ddb2e3ebe98fbbb691c399e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf579f9885f1aea0d3f8be0f18afed28c92a43022` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf584f06759d0e32f74c5b18c9dcbd03503936518` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf6147b4b44ae6240f7955803b2fd5e15c77bd7ea` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf64a5c1329ad224b0e50c4640f4bbd677a5cb391` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf7a9d27c3b60c78c6f6e2c2d6ed6e8b94b352461` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf8ad2522c049a03c5e6ab56427449162c0502f02` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf8cc32e8159c0bed61f947251d6d07e577d21314` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf934c3dbd394e3d24db539ef6c044a03090cd702` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfd18ba9b2f9241ce40cde14079c1cda1502a8d0a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfd43416a930014d7a0fc9ead4b6864d5a2c68010` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfd6cc4f251eae6d02f9f7b41d1e80464d3d2f377` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfd7eb6b208e1fa7b14e26a1fb10ffc17cf695d68` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfdc36294af736122456687d14de7d42598319b7c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xff635846942fb0f1212180fd9a63a65231a23bcb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x02062c16c28a169d1f2f5efa7eedc42c3311ec23` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x02ab5b6df2c17d060ee3e95d08225ff3a42504a5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x02ee6862cf431d7ceaa78112d635d2be7ddfc178` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x03bf3b408045e4268afae9e2d1513b8132c8a8c1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x042d85e9eb1f4372ffa362240e0630229caa1904` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x073bd162bbd05cd2cf631b90d44239b8a367276e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x09108763270a8eb0d0ca30906fec49fa0944bfe6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0eac15b9fe585432e48cf175571d75d111861f43` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0f345f57ee2b395e23390f8e1f1869d7e6c0f70e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x13b63e7094b61ccbe79cae3fb602dfd12d59314a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x143d74048b35a73bdad3297ee3eaa743cb4a8235` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x15175d35f3d88548b49600b4ee8067253a2e4e66` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x157b0c032192f5714bd68bf33df96c122ea5e1d6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x182e86ad4a6139ced4f9fa4ed3f1cd9e4f7449e7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x184460704886f9f2a7f3a0c2887680867954dc6e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x186d05580e6b7195323b5dc8c3ee9179ad086d4c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x19927e8bf2db907bad30cc974dde2b13ac2fb65e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1cddc45cb390c3b4a739861155e8ee95b7321ed6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x21fba52da03e1f964fa521532f8b8951fc212055` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x270284ecb6af0dc521d2c8f9d77b03eed2aace90` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2b5ca65e7e423b36f7b185b4e116a6fd0e6c4ce2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x348644f24fa34c40a8e3c4cf9af14f8a96ad63fc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x37c8ebd57864d38c8f7987b6762e0301b0baff6d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x387a0c36681a22f728ab54426356f4caa6bb48a9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x38ef27d791cd60074fa0345e8f82df25e1f80b41` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3a86024d6cb7db96daefc013ff92cde469d6a1dd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3ac8f000d75a2ea4a9a36c6844410926bc0c32f7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3c2460aca70bedf096f71cf91ffbc0789f08503f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3dde17cfd36e740cb7452cb2f59fc925eacb91ab` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3e40840d0282c9f9cc7d17094b5239f87fcf18e5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x437b525f96a2da0a4b165efe27c61bea5c8d3cd4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x43e205a805c4be5a62c71d49de68df60200548a0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x46c600cb3fb7bf386f8f53952d64ac028e289afb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4cf200d7fa568611dd8b4bd85053ba9419982c7d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x520cf948147c3df196b8a21cd3687e7f17555032` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x53f1df4e5591ae35bf738742981669c3767241fa` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5af543d6f95a98200dd770f39a902fe793baeb27` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5ef74a083ac932b5f050bf41cde1f67c659b4b88` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x63fdcb1e8ee5c4b64a5c4ce0fb97597917920cb6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x65d41084b9c3ff3dcf911542dd28b1ec3d6d6eb6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6882560a919714a742afd2a2a0af6b4d8d20cf22` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6bae9be78cbe3cd93fc02d974a66f9700e4a299c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6f6f81e5e66f503184f2202d83a79650c3285759` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6fe56a3eea3fec93601a94d26bea1876bd48192f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7182e3a6e29936c8b14c4fa6f63a62d0b1d0f767` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x73094d84683d712e02f47eddeff70a6edf6d59ed` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7cceab3f7fe10897ad43d40a8370e26ed16be444` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x851b461a9744f4c9e996c03072cab6f44fa04d0d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8569d60df34354cdd1115b90de832845b31c28d2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x88cf647f1ce5a83e699157b9d84b5a39266f010d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8a11d590b32186e1236b5e75f2d8d72c280dc880` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8a5dfea5cda35ab374ac558951a3df1437a6fca6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8b4374005291b8fcd14c4e947604b2fb3c660a73` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8d5995efb0b52c7a60664cf28e6b30d75083acad` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x93de153ba104d15785c8d8af01ae9425960de49e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9c75314afd011f22648ca9c655b61674e27ba4ac` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa185a9fd314b61f33f740760a59cc46b31297e30` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa24e0d3e77ec4849a288c72f9d9bc4df84b26558` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa4f1fc88eff9a72bcc278a2d3b79cafcc1551fb5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa6fa215ab89e24310dc27ad86111803c443186eb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa8d818c719c1034e731feba2088f4f011d44acb3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa96ae05dfa869f4fcc4142e8d4e4f2706fee2b57` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa9df960af018178c0138cd5780c768a0a0a7e61f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xaa85216187f92a781d8f9bcb40825e356ee2635a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xab6b734b618a4824fcca63014cfac30cdb41db2a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xaeca35f0cb9d12d68adc4d734d4383593f109654` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb48a407e225b4764fd3bcc2a2329ff7745af7e64` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb5bdff1fb47635383abf13b78a79c8a21aa1b23e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb7f55aa5c7d09c091c1bd22b3352e8cb3facf289` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb8794fb1ccd62bfe631293163f4a3fc2d22e37e0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xba748faf1a94b5c8de5c8ca8d87a0906c5b0300c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc19f5d60e2aca1174f3d5fe189f0a69afab76f50` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc8f487b34251eb76761168b70dc10fa38b0bd90b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcd033976a011f41d2ab6ef47984041568f818e73` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcd77df48e548dda056f8563f2520ffd94ad147ee` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd126741474b0348d9b0f4911573d8f543c01c2c4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd3025304c6487fc5c39010bea0b46cc0690ab229` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd42620d04fce65b1f5e8facc894a2e34d764fec9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd85fac03804a3e44d29c494f3761d11a2262cbbe` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdf99cca98349def0eab8ec37c1a0b270de38e682` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe0b810bd674132b553770064fc90440c5a5f518d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe2b652e538543d02f985a5e422645a704633956d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe7187cc63c72fe0920668b547852bdd0517c4e86` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xeb2071e9b542555e90e6e4e1f83fa17423583991` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf4c5d33dabb9d4681ed9b83618d629ba1006ae16` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf67454a5e8081f52768cd350a4ac9e832c5101b6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf7a9d27c3b60c78c6f6e2c2d6ed6e8b94b352461` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfa93538ed210486bfde01b7e2295392fe7153106` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfd18ba9b2f9241ce40cde14079c1cda1502a8d0a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfd529fa21fbd569bcf7c7f49694568fd66e8d1e9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfd7eb6b208e1fa7b14e26a1fb10ffc17cf695d68` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xffef97179f58a582def73e6d2e4bcd2bdc8ca128` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Ackee - abch-reserve-protocol-report-1.1.pdf](https://github.com/reserve-protocol/protocol/blob/master/audits/Ackee%20-%20abch-reserve-protocol-report-1.1.pdf) | Ackee Blockchain | Audit | 2022-10 | stale | Direct | contract_name | 1 | n/a |
| [Certora Formal Verification FixLib.pdf](https://github.com/reserve-protocol/protocol/blob/master/audits/Certora%20Formal%20Verification%20FixLib.pdf) | unknown | Audit | 2026-01 | fresh | Direct | n/a | 0 | n/a |
| [Code4rena - Reserve Audit Report - Release 2.1.0.md](https://github.com/reserve-protocol/protocol/blob/master/audits/Code4rena%20-%20Reserve%20Audit%20Report%20-%20Release%202.1.0.md) | Code4rena | Contest | 2023-01 | stale | Direct | contract_name | 7 | n/a |
| [Code4rena - Reserve Audit Report - Release 3.0.0 (collaterals).md](https://github.com/reserve-protocol/protocol/blob/master/audits/Code4rena%20-%20Reserve%20Audit%20Report%20-%20Release%203.0.0%20(collaterals).md) | Code4rena | Contest | 2023-08 | stale | Direct | contract_name | 8 | n/a |
| [Code4rena - Reserve Audit Report - Release 3.0.0 (core).md](https://github.com/reserve-protocol/protocol/blob/master/audits/Code4rena%20-%20Reserve%20Audit%20Report%20-%20Release%203.0.0%20(core).md) | Code4rena | Contest | 2023-06 | stale | Direct | contract_name | 2 | n/a |
| [Code4rena - Reserve Audit Report - Release 4.0.0.md](https://github.com/reserve-protocol/protocol/blob/master/audits/Code4rena%20-%20Reserve%20Audit%20Report%20-%20Release%204.0.0.md) | Code4rena | Contest | 2024-08 | aging | Direct | contract_name | 5 | n/a |
| [Halborn - Reserve_Protocol_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://github.com/reserve-protocol/protocol/blob/master/audits/Halborn%20-%20Reserve_Protocol_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2022-10 | stale | Direct | contract_name | 1 | n/a |
| [Oak Security - 2026-03-12 Audit Report - Reserve Updates.pdf](https://github.com/reserve-protocol/protocol/blob/master/audits/Oak%20Security%20-%202026-03-12%20Audit%20Report%20-%20Reserve%20Updates.pdf) | unknown | Audit | 2026-03 | fresh | Direct | contract_name | 10 | n/a |
| [Reserve_June_Plugins_v1.pdf](https://github.com/reserve-protocol/protocol/blob/master/audits/Reserve_June_Plugins_v1.pdf) | unknown | Audit | 2024-11 | aging | Direct | contract_name | 1 | n/a |
| [Reserve_PR_4_0_0_v1.pdf](https://github.com/reserve-protocol/protocol/blob/master/audits/Reserve_PR_4_0_0_v1.pdf) | unknown | Audit | 2024-07 | stale | Direct | contract_name | 6 | n/a |
| [Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf](https://github.com/reserve-protocol/protocol/blob/master/audits/Solidified%20-%20Audit%20Report%20-%20Reserve%20Protocol%20-%20April%2025%202024.pdf) | unknown | Audit | 2024-04 | stale | Direct | contract_name | 23 | n/a |
| [Solidified - Audit Report - Reserve Protocol 3.4.0.pdf](https://github.com/reserve-protocol/protocol/blob/master/audits/Solidified%20-%20Audit%20Report%20-%20Reserve%20Protocol%203.4.0.pdf) | unknown | Audit | 2024-06 | stale | Direct | contract_name | 25 | n/a |
| [Solidified - Audit Report - Reserve Protocol.pdf](https://github.com/reserve-protocol/protocol/blob/master/audits/Solidified%20-%20Audit%20Report%20-%20Reserve%20Protocol.pdf) | unknown | Audit | 2022-10 | stale | Direct | contract_name | 14 | n/a |
| [Trust Security - Reserve Audit 3.4.0 Spell.pdf](https://github.com/reserve-protocol/protocol/blob/master/audits/Trust%20Security%20-%20Reserve%20Audit%203.4.0%20Spell.pdf) | unknown | Audit | 2024-05 | stale | Direct | contract_name | 1 | n/a |
| [Trust Security - Reserve Audit Report 3_1_0.pdf](https://github.com/reserve-protocol/protocol/blob/master/audits/Trust%20Security%20-%20Reserve%20Audit%20Report%203_1_0.pdf) | unknown | Audit | 2024-01 | stale | Direct | contract_name | 18 | n/a |
| [Trust Security - Reserve Audit Report 3_2_0.pdf](https://github.com/reserve-protocol/protocol/blob/master/audits/Trust%20Security%20-%20Reserve%20Audit%20Report%203_2_0.pdf) | unknown | Audit | 2024-02 | stale | Direct | contract_name | 3 | n/a |
| [Trust Security - Reserve Audit Report 4_2_0.pdf](https://github.com/reserve-protocol/protocol/blob/master/audits/Trust%20Security%20-%20Reserve%20Audit%20Report%204_2_0.pdf) | unknown | Audit | 2026-01 | fresh | Direct | contract_name | 7 | n/a |
| [Reserve_ETH_Plus_LP_v1.pdf](https://github.com/reserve-protocol/protocol/blob/master/audits/individual-plugins/Reserve_ETH_Plus_LP_v1.pdf) | unknown | Audit | 2024-03 | stale | Direct | n/a | 0 | n/a |
| [Reserve_MetaMorpho_plugins_v2.pdf](https://github.com/reserve-protocol/protocol/blob/master/audits/individual-plugins/Reserve_MetaMorpho_plugins_v2.pdf) | unknown | Audit | 2024-05 | stale | Direct | n/a | 0 | n/a |
| [trail-of-bits-2022-08-reserve-protocol-fixreview.pdf](https://github.com/reserve-protocol/protocol/blob/master/audits/trail-of-bits-2022-08-reserve-protocol-fixreview.pdf) | unknown | Audit | 2022-08 | stale | Direct | contract_name | 1 | n/a |
| [trail-of-bits-2022-08-reserve-protocol-securityreview.pdf](https://github.com/reserve-protocol/protocol/blob/master/audits/trail-of-bits-2022-08-reserve-protocol-securityreview.pdf) | unknown | Audit | 2022-08 | stale | Direct | contract_name | 3 | n/a |
| [report-competition-reserve-jan2025.pdf](https://github.com/reserve-protocol/reserve-index-dtf/blob/main/audits/cantina/report-competition-reserve-jan2025.pdf) | Spearbit | Audit | 2025-01 | aging | Direct | contract_name | 1 | n/a |
| [reserve-security-review_2025-06-02.pdf](https://github.com/reserve-protocol/reserve-index-dtf/blob/main/audits/pashov/reserve-security-review_2025-06-02.pdf) | Pashov Audit Group | Audit | 2025-06 | aging | Direct | contract_name | 8 | n/a |
| [2025-04-reserve-folio-solidity-2.0.0.pdf](https://github.com/reserve-protocol/reserve-index-dtf/blob/main/audits/trail-of-bits/2025-04-reserve-folio-solidity-2.0.0.pdf) | Trail of Bits | Audit | 2025-04 | aging | Direct | contract_name | 6 | n/a |
| [2025-06-reserve-folio-solidity-4.0.0.pdf](https://github.com/reserve-protocol/reserve-index-dtf/blob/main/audits/trail-of-bits/2025-06-reserve-folio-solidity-4.0.0.pdf) | Trail of Bits | Audit | 2025-06 | aging | Direct | contract_name | 3 | n/a |
| [v1-audit-dec-2024.pdf](https://github.com/reserve-protocol/reserve-index-dtf/blob/main/audits/trust-security/v1-audit-dec-2024.pdf) | Trust Security | Audit | 2024-12 | aging | Direct | contract_name | 6 | n/a |
| [Audit Report - Reserve Token [3 Jan 2022]-2.pdf](https://github.com/reserve-protocol/rsr-mainnet/blob/master/audits/solidified/Audit%20Report%20-%20Reserve%20Token%20%5B3%20Jan%202022%5D-2.pdf) | unknown | Audit | 2022-01 | stale | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x159af360d99b3dd6c4a47cd08b730ff7c9d113cc`](./contracts/base-8453/0x159af360d99b3dd6c4a47cd08b730ff7c9d113cc/) | AssetRegistryP1 | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2b3c7516564261fff2190f5496c53c1155790857`](./contracts/ethereum-1/0x2b3c7516564261fff2190f5496c53c1155790857/) | BasketHandlerP1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x07cdea861b2a231e249e220a553d9a38ba7383d6`](./contracts/base-8453/0x07cdea861b2a231e249e220a553d9a38ba7383d6/) | BrokerP1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x08638a2efe63d3a4e5056860e4292b6c059d3bad`](./contracts/ethereum-1/0x08638a2efe63d3a4e5056860e4292b6c059d3bad/) | DeployerP1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x504e15ca74ffe0791a7fc2c069dda486d9f1805f`](./contracts/base-8453/0x504e15ca74ffe0791a7fc2c069dda486d9f1805f/) | DistributorP1 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1c0a14a44c4a6834fe23632da2f493cc4cf87dba`](./contracts/ethereum-1/0x1c0a14a44c4a6834fe23632da2f493cc4cf87dba/) | ETHxCollateral | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x688c95461d611ecfc423a8c87cace163c6b40384`](./contracts/base-8453/0x688c95461d611ecfc423a8c87cace163c6b40384/) | Facade | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0d3bfcfcbe9b626c4f4e19d02de4933bd92d1f40`](./contracts/bsc-56/0x0d3bfcfcbe9b626c4f4e19d02de4933bd92d1f40/) | FolioLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x280eb3b16a95a2f3cedc2bdc4e6f91b43a3c396d`](./contracts/base-8453/0x280eb3b16a95a2f3cedc2bdc4e6f91b43a3c396d/) | FurnaceP1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1f55b89d575d531446a2569158f880768686b3b8`](./contracts/base-8453/0x1f55b89d575d531446a2569158f880768686b3b8/) | GenericTokenJar | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x082e701456cd702fbe5797ab515e6b00580e5a14`](./contracts/ethereum-1/0x082e701456cd702fbe5797ab515e6b00580e5a14/) | GovernanceSpell_04_17_2026 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3519918e2918b59f3b29bed16dc77174dec6707b`](./contracts/base-8453/0x3519918e2918b59f3b29bed16dc77174dec6707b/) | Guardian | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x8c8841d771eef8d61eff7e6f82db7f7f31701504`](./contracts/base-8453/0x8c8841d771eef8d61eff7e6f82db7f7f31701504/) | ImmutableTokenJar | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x090e88bc794cce2d622738cafb5b8ba0cae37661`](./contracts/ethereum-1/0x090e88bc794cce2d622738cafb5b8ba0cae37661/) | MainP1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x8ad3055286f4e59b399616bd6befe24f64573928`](./contracts/base-8453/0x8ad3055286f4e59b399616bd6befe24f64573928/) | MockRoleRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa4d38731434e875d7e30e13d8b65befed7d47ac2`](./contracts/ethereum-1/0xa4d38731434e875d7e30e13d8b65befed7d47ac2/) | OETHCollateral | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4024c00bbd0c420e719527d88781bc1543e63dd5`](./contracts/base-8453/0x4024c00bbd0c420e719527d88781bc1543e63dd5/) | OETHCollateralL2Base | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xab36452dbac151be02b16ca17d8919826072f64a`](./contracts/base-8453/0xab36452dbac151be02b16ca17d8919826072f64a/) | OptimismMintableERC20 | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1f6ed108092579076be34057a0a84d96c48f2b8c`](./contracts/base-8453/0x1f6ed108092579076be34057a0a84d96c48f2b8c/) | OptimisticSelectorRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa9952a5a8e3da79b028c46e117d26349c0cd6a56`](./contracts/ethereum-1/0xa9952a5a8e3da79b028c46e117d26349c0cd6a56/) | OracleFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x32738d2813441ea0cdb839ae97e97874ed1150d5`](./contracts/base-8453/0x32738d2813441ea0cdb839ae97e97874ed1150d5/) | ReserveOptimisticGovernanceVersionRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x087d0fe8827af9c25cc360a5c27ad8599dae545f`](./contracts/base-8453/0x087d0fe8827af9c25cc360a5c27ad8599dae545f/) | ReserveOptimisticGovernor | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1262f9dd085fe3360acf2dc364669207d958cc7b`](./contracts/base-8453/0x1262f9dd085fe3360acf2dc364669207d958cc7b/) | ReserveOptimisticGovernorDeployer | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2377f1817461b2994c7dfd7596fd3cbfdce4435d`](./contracts/base-8453/0x2377f1817461b2994c7dfd7596fd3cbfdce4435d/) | RevenueTraderP1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2418e1e9a7f7663e8b97b57d4e4aa506a3fb7105`](./contracts/base-8453/0x2418e1e9a7f7663e8b97b57d4e4aa506a3fb7105/) | RewardTokenRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xca5ca9083702c56b481d1eec86f1776fdbd2e594`](./contracts/arbitrum-42161/0xca5ca9083702c56b481d1eec86f1776fdbd2e594/) | StandardArbERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4fd189996b5344eb4cf9c749b97c7424d399d24e`](./contracts/ethereum-1/0x4fd189996b5344eb4cf9c749b97c7424d399d24e/) | SUSDSCollateral | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x29dc6f79750020d77c6391629101bdc0f0d16ecb`](./contracts/base-8453/0x29dc6f79750020d77c6391629101bdc0f0d16ecb/) | TimelockControllerOptimistic | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x270d928b9ee38bad93601d197256390b3c3c13ec`](./contracts/ethereum-1/0x270d928b9ee38bad93601d197256390b3c3c13ec/) | TimelockControllerUpgradeable | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x23f72a3db61d6cb8abe5d9af1ac4b6c99327bfee`](./contracts/bsc-56/0x23f72a3db61d6cb8abe5d9af1ac4b6c99327bfee/) | TokenImplementation | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9c09e506e00ac87e2413b7501702faca690201fb`](./contracts/ethereum-1/0x9c09e506e00ac87e2413b7501702faca690201fb/) | TradeHelperFacet | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4720dbcaeef5834aef590781f93d70fd1e3acadb`](./contracts/base-8453/0x4720dbcaeef5834aef590781f93d70fd1e3acadb/) | UpgradeSpell_4_0_0 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x044b6f685fb8d0c3fd56d92fcbe5f0ad947d2d53`](./contracts/ethereum-1/0x044b6f685fb8d0c3fd56d92fcbe5f0ad947d2d53/) | UpgradeSpell_5_0_0 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x403623175656ed0cdf1f9efe54867761f1ebf1d8`](./contracts/ethereum-1/0x403623175656ed0cdf1f9efe54867761f1ebf1d8/) | USDeFiatCollateral | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8e870d67f660d95d5be530380d0ec0bd388289e1`](./contracts/ethereum-1/0x8e870d67f660d95d5be530380d0ec0bd388289e1/) | USDP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 85 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 525 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=161

Zero-match audit list:

- [5383] Certora Formal Verification FixLib.pdf
- [5399] Reserve_ETH_Plus_LP_v1.pdf
- [5400] Reserve_MetaMorpho_plugins_v2.pdf

Fork inheritance lineage and inherited audits are included when available.
