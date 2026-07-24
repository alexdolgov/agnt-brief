# Agentic Audit Brief: Snuggle

## Export Authority

- Production state: **published scope**
- Raw selected rows: 15 across 1 audit(s)
- Eligible audit results: 3 (1 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Snuggle (`snuggle`)
- Website: [https://snuggle.fi/](https://snuggle.fi/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, base
- Contract surface: 112 unique implementations (186 raw deployments)
- Coverage basis: 14/14 confirmed own live verified implementations (100.0%); conservative 100.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,426,344.64
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Snuggle. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 14 contract row(s) across arbitrum, base. Structural roles: 11 supporting, 3 core. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 14
- Structural roles: supporting (11), core (3)
- Contract kinds: contract (14)
- Detected standards: ownable (3), ownable2step (2)
- Frameworks: openzeppelin (11), uniswap-v3 (2), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 16 contracts are derived from known codebases. 16 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x02415b4e29e00cf76b27ab0403e1e1382d0224c0`, chain 8453)
- UnnamedContract (`0xd3923beccb6e1ddb048ed00a0a9bd602d16b7470`, chain 8453)
- AerodromePositionAdapter (`0xe3efa7825b7ace81fa2621d892d95e0048f79589`, chain 8453)
- AerodromeRewardAdapter (`0xcb16cb2cd32768c65418b22385888bd2c8d77306`, chain 8453)
- FeeTransferHelper (`0x613ba880f7695ecba0a3dcad76f99781be28b1f3`, chain 8453)
- KeepersHelper (`0x60431b5b580516817f095534d6d1e3552f563345`, chain 8453)
- PancakeSwapPositionAdapter (`0x0c0ba0b81a4ac60321c2414bdcef24c5851b39e5`, chain 8453)
- PancakeSwapRewardAdapter (`0x63de143eae0f6dfddb3f91110e0db8375918b1cf`, chain 8453)
- ProxyAdmin (`0x269dc2f974abed1c7a55a447758fcaef2dcca86f`, chain 8453)
- ReferralTracker (`0x2536a771111861bc0be61bd986f0c2dc0f68d9ee`, chain 8453)
- SnuggleRebalanceLib (`0xf84b575e4e6d9fc07a3f2b863cb6a23cc11dcddc`, chain 8453)
- SnuggleVaultAdminSatellite (`0x5a332caa3212a1785f64f6bdcb34c727efe4d271`, chain 8453)
- StakingManager (`0x3f928dc834029e90b149269e1244bb85cca270c1`, chain 8453)
- TreasurySplitter (`0x93d0d1216a613ad8745f9320bcb25dc04ea9ec12`, chain 8453)
- UniswapV3Adapter (`0xf757c96463cb5588dc7d8eba464c947b08f33010`, chain 8453)
- ViewHelper (`0x298028007e2aeb04d787c8a8bfa03144cc976a1c`, chain 8453)

## Contract Surface Quality

- Logic-topography rows: 14; live-surface rows included: 14 (14 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 16/16 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 14/14 (100.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 16 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 96 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 13
- Confirmed-live implementations: 16 of 112 unique; 96 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 14/76
- Verified + Unaudited implementations: 62
- Verified by bytecode match: 0
- Unverified implementations: 36
- Unique implementations: 112
- Raw deployments: 186
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-02 (fresh)
- Audit staleness (calendar age): 2 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 15 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 14 | 18.4% | 2026-02 |

## Contract Surface

### ✅ Verified + Audited (14)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AerodromePositionAdapter | adapter | project_anchor | own_supporting | 0 | base | unit-392628 | `0xe3efa7825b7ace81fa2621d892d95e0048f79589` | ✅ Audited |
| AerodromeRewardAdapter | adapter | project_anchor | own_supporting | 0 | base | unit-392626 | `0xcb16cb2cd32768c65418b22385888bd2c8d77306` | ✅ Audited |
| FeeTransferHelper | periphery | project_anchor | own_supporting | 0 | base | unit-392623 | `0x613ba880f7695ecba0a3dcad76f99781be28b1f3` | ✅ Audited |
| KeepersHelper | operational_periphery | project_anchor | own_supporting | 0 | base | unit-392622 | `0x60431b5b580516817f095534d6d1e3552f563345` | ✅ Audited |
| PancakeSwapPositionAdapter | adapter | project_anchor | own_supporting | 0 | base | unit-392616 | `0x0c0ba0b81a4ac60321c2414bdcef24c5851b39e5` | ✅ Audited |
| PancakeSwapRewardAdapter | adapter | project_anchor | own_supporting | 0 | base | unit-392624 | `0x63de143eae0f6dfddb3f91110e0db8375918b1cf` | ✅ Audited |
| ProxyAdmin | governance | project_anchor | own_supporting | 0 | base | unit-392618 | `0x269dc2f974abed1c7a55a447758fcaef2dcca86f` | ✅ Audited |
| ReferralTracker | unknown | project_anchor | own_supporting | 0 | base | unit-392617 | `0x2536a771111861bc0be61bd986f0c2dc0f68d9ee` | ✅ Audited |
| SnuggleRebalanceLib | unknown | project_anchor | own_supporting | 0 | base | unit-392630 | `0xf84b575e4e6d9fc07a3f2b863cb6a23cc11dcddc` | ✅ Audited |
| SnuggleVaultAdminSatellite | core_logic | project_anchor | own_supporting | 0 | base | unit-392621 | `0x5a332caa3212a1785f64f6bdcb34c727efe4d271` | ✅ Audited |
| StakingManager | governance | project_anchor | own_supporting | 0 | base | unit-392620 | `0x3f928dc834029e90b149269e1244bb85cca270c1` | ✅ Audited |
| TreasurySplitter | operational_periphery | project_anchor | own_supporting | 0 | base | unit-392625 | `0x93d0d1216a613ad8745f9320bcb25dc04ea9ec12` | ✅ Audited |
| UniswapV3Adapter | adapter | project_anchor | own_supporting | 0 | base | unit-392629 | `0xf757c96463cb5588dc7d8eba464c947b08f33010` | ✅ Audited |
| ViewHelper | periphery | project_anchor | own_supporting | 0 | base | unit-392619 | `0x298028007e2aeb04d787c8a8bfa03144cc976a1c` | ✅ Audited |

### ⚠️ Verified + Unaudited (62)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AerodromePositionAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0aedeed5ad8d45d3d928fb872161efaa559794d1` | ⚠️ Unaudited |
| AlgebraCommunityVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x971ba90018c44ac60d5bb850249b3ec02a3a5e5a`; arbitrum `0xe3c3e260071ca29231d930bc31654571c51da69e` | ⚠️ Unaudited |
| AlgebraCustomPoolEntryPoint | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbf1849090b659505a0d7a75fead3068020aea3ef` | ⚠️ Unaudited |
| AlgebraEternalFarming | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0b3538cc8d06e73f26956f81d1a4be513d99db1b` | ⚠️ Unaudited |
| AlgebraFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 8 deployments: arbitrum `0x1a3c9b1d2f0529d97f2afc5136cc23e58f1fd35b`; arbitrum `0x1e3db3a221bcf6296fef2c493bb44d09018455ca`; arbitrum `0x6b692b588def775a92a6d0f3b6cccc8a4a4e5bb8`; arbitrum `0x9a8ddc2f8b998de00f7028bd0881bde028aed592`; arbitrum `0xd3b4c3262b7bc4d0ae522f15f48eef8f6b5d6aea`; arbitrum `0xd490f2f6990c0291597fd1247651b4e0dcf684dd`; arbitrum `0xd97b6e6944a7c36cf047f4606875a3fadbdb61d6`; arbitrum `0xe907d0b2b830124d64b11e6416ecf61483994ae3` | ⚠️ Unaudited |
| AlgebraInterfaceMulticall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xac1ce734566f390a94b00eb9bf561c2625bf44ea` | ⚠️ Unaudited |
| AlgebraPoolDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 8 deployments: arbitrum `0x0f9dff83d8b1f1b41dfbe340b8d9d75aa1741870`; arbitrum `0x34f74f5217d57223b51e51245769a89874c69bd2`; arbitrum `0x5e1e14df94ee031c51f41e5ee3a2ad7a1345ffe1`; arbitrum `0x6dd3fb9653b10e806650f107c3b5a0a6ff974f65`; arbitrum `0x89aee07e1dbafc82f089b45ffc763738e9fff226`; arbitrum `0x8b5665ba77ca4e98ba96412061276ad2adca6f15`; arbitrum `0xd5143db853b4af176c2379b6ac48ab3e66c4fa56`; arbitrum `0xf09c0892885ba43d4ba29be7388fc145a174af8d` | ⚠️ Unaudited |
| AlgebraVaultFactoryStub | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x1cb8eedc4dcff2da02bfcfbed2456cf2c41333f6`; arbitrum `0x653658ddb7e4a7a69f0fa4c020f1e7e60732d540` | ⚠️ Unaudited |
| BasePluginV1Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe3ae84a486c737e4e260b48f1173dfcd96cbd03d` | ⚠️ Unaudited |
| BatchAuction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7603a35af5cf10b113f167d424eb75bb7062c8ce` | ⚠️ Unaudited |
| CamelotPositionAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x19ec46eb3cbcec146de2d9b4336187e4f147f217`; arbitrum `0xbfbf7def7547f81a7d79d3e87fb825ee379a8956` | ⚠️ Unaudited |
| ConstantProductPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc79ae87e9f55761c08e346b98dddf070c9872787` | ⚠️ Unaudited |
| ConstantProductPoolFactoryHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x827179dd56d07a7eea32e3873493835da2866976` | ⚠️ Unaudited |
| Crowdsale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x120140d0c1ebc938befc84840575ecdc5fe55afe` | ⚠️ Unaudited |
| DutchAuction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x438a2b1c6c715fb1b051c04ca65755560d8b8d43` | ⚠️ Unaudited |
| FarmingCenter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3eee90c983e2728ae6d7880064b0c5b055342c46` | ⚠️ Unaudited |
| FeeTransferHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x59c2a172e52a61c4f1bb6dbdcab41b76d9349461`; arbitrum `0xbfd8cf8094feee44c314b3d5ec49ccdfd80cabae` | ⚠️ Unaudited |
| FixedToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcaabdd9cf4b61813d4a52f980d6bc1b713fe66f5` | ⚠️ Unaudited |
| KeepersHelper | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: arbitrum `0x0e7edc3856349ed0126f863cc39fc9bc008f9869`; arbitrum `0x40822950decff42a590e577fcb0b39b3fdea716f`; arbitrum `0x71b55e366a0f43260b1138a32c312ba7bb7f30f7`; arbitrum `0xc962c991dc53fd185673546d7467377f708ad7d6` | ⚠️ Unaudited |
| MasterDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf0e1f962e3e6d8e2af8190b2798c1b4f018fe48d` | ⚠️ Unaudited |
| MiniChefV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf4d73326c13a4fc5fd7a064217e12780e9bd62c3` | ⚠️ Unaudited |
| Multicall2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x0769fd68dfb93167989c6f7254cd0d766fb2841f`; arbitrum `0x80c7dd17b01855a6d2347444a0fcc36136a314de` | ⚠️ Unaudited |
| NFTDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x0367a647a68f304f2a6e453c25033a4249d7f2c6`; arbitrum `0x1e12aad4b836a9b5edf17367eb8f1cbe3e781dae`; arbitrum `0xff7da61e7037378da1baf3d40ba8e6e47dfb3a62` | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x00c7f3082833e796a5b3e4bd59f6642ff44dcd15` | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 6 deployments: arbitrum `0x197de4ea3c45eefad1727d7c4858e078f1e8d31b`; arbitrum `0x368435a76b1a855d054d3cdf4c20f5e0b2babbc8`; arbitrum `0x5c8d79b78786a2e9327f2d20910abd6d198c5905`; arbitrum `0xacdcc3c6a2339d08e0ac9f694e4de7c52f890db3`; arbitrum `0xe6988b12753e2f6e1bf84843988a0242b17a5383`; arbitrum `0xf41599ffc71518fd4411941439dae7dee27020f9` | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x46a15b0b27311cedf172ab29e4f4766fbe7f4364` | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xf0cbce1942a68beb3d1b73f0dd86c8dcc363ef49` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x1ad8c5aed1d18cb7c5f30cd2b486251e87e14abc`; arbitrum `0x52d2ebe1fe306c90124d159b59392b6bb1b48325` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x2d22aa1c50433eb018077e4bfc52fadc437606dc`; arbitrum `0x89a13bb0c2315670aadb07b7a0c7067333b8a68a` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x49f5985a122028093c91bb63084eb29a7632067c`; arbitrum `0x674d0794c32f061eeef5ee981fa3b0ee3be7a7ef` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x96e04591579f298681361c6122dc4ef405c19385` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptorOffChain | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x3d00cdb4785f0ef20c903a13596e0b9b2c652227`; arbitrum `0xb099b459887bc759dbf0293e12d3dfcd0c456cff` | ⚠️ Unaudited |
| PancakeSwapPositionAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: base `0xad35ec92507566fc19581ab43a8ec9c6edbf0a71`; arbitrum `0x78bb36003d01ac8449b88150608d9f8dffbd4589`; arbitrum `0xf20bc2825e015be66d26b27ee82988fd4f2b84d9` | ⚠️ Unaudited |
| PancakeSwapRewardAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x4cd1a0b610117a688998325e3779e858ff62a065`; arbitrum `0x6af9c538137c73d6a078788c59232424788d19a8`; arbitrum `0xb668e7701bc5580368cce375da83a09e1f69f7c9` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x427bf5b37357632377ecbec9de3626c71a5396c1`; arbitrum `0x8bca45df8659debdffb4baca911a5b9c84e037df`; arbitrum `0x999a74ddfde1575c4db454a0300d5f0351a891de` | ⚠️ Unaudited |
| Quoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 9 deployments: arbitrum `0x02102bd5b57c128b19d4d4fa4d8f8192ea1b88ac`; arbitrum `0x0fc73040b26e9bc8514fa028d998e73a254fa76e`; arbitrum `0x27d3ce023f34f1e560f9ba4c8616526085fefe92`; arbitrum `0x32ab0c927d2197aebf8e5471ab9db7fd1854e73c`; arbitrum `0x6c78f25cc4fdff99d0c88aab75b3b6e50fbbc0bd`; arbitrum `0x9b7a7c93db745d5f6c679eeda7dd15ccd638c063`; arbitrum `0xaaf703dadca1aae754ad74de643907747d2eb3ac`; arbitrum `0xc50b125beeecb1ad17a893c5d54a0a0e629fe056`; arbitrum `0xd70dd6d5e4226a515f90623213d9aa437b63b955` | ⚠️ Unaudited |
| QuoterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x66d756335bff276d73a8ab0853c3d336475e639b`; arbitrum `0xb048bbc1ee6b733fffcfb9e9cef7375518e25997` | ⚠️ Unaudited |
| ReferralTracker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x6915b555dd117a901b400ccd3fb4aefa1101cd00`; arbitrum `0xb52cca444e459ae8b2d0a6e29df01204e9e4705e` | ⚠️ Unaudited |
| RouteProcessor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x9c6522117e2ed1fe5bdb72bb0ed5e3f2bde7dbe0`; arbitrum `0x9f18658f7206eaa8d885bbfbb95ab6d9f6c6c12f` | ⚠️ Unaudited |
| RouteProcessor3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfc506aaa1340b4dedffd88be278bee058952d674` | ⚠️ Unaudited |
| RouteProcessor3_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3c1fba3bcee7ce410b155a8c71f9ff1312852c82` | ⚠️ Unaudited |
| RouteProcessor3_2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x09bd2a33c47746ff03b86bce4e885d03c74a8e8c` | ⚠️ Unaudited |
| SliverConfig | governance | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe7b13bb95d5fc2ae028187d50e4f083573e299f1` | ⚠️ Unaudited |
| SnuggleHedgeHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x8b3a7989ae94dcf06abe07f5b4b95c63b603ef9f`; arbitrum `0xb1364a423e9b011fd102ffc5011abc158dfeada7` | ⚠️ Unaudited |
| SnuggleVaultAdminSatellite | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x1195c074f898b7644ba732407619c9804dfe6dce`; arbitrum `0x45405901ab9cba6b4a4e60e0c191819bbcd7d3f4` | ⚠️ Unaudited |
| SnuggleVaultUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x0d803966d1a96aca169e203a0c0a8b86acda22da`; arbitrum `0x9da88677e47bd8ead09b6b96d747a00f21bab114` | ⚠️ Unaudited |
| SnuggleVaultUpgradeable | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x1638b6a0477bf09163531279dc535d6c40894f9d`; arbitrum `0x5723513d62efdac6466ec2517c95175c609cd430`; arbitrum `0xa86b814c7e6e4cf7ad56720170ada05f0aa85c68` | ⚠️ Unaudited |
| SnuggleVaultUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x413ca90d38d964546c2fe03cb103df57372630f6`; arbitrum `0x4b1cbd4db47b7a10d4af81a1981d01e61cbcb07d` | ⚠️ Unaudited |
| StablePoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc2fb256aba36852dccea92181ec6b355f09a0288` | ⚠️ Unaudited |
| StakingManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x020ed29a0b1ced89c4309b32709a2a97699948bd`; arbitrum `0xd977c05d002aca0de98cd6bee25753cae1e2b40d` | ⚠️ Unaudited |
| SwapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 7 deployments: arbitrum `0x17585d045eb322d292e0166a4cd643f793640b50`; arbitrum `0x1b81d678ffb9c0263b24a97847620c99d213eb14`; arbitrum `0x22535b3e45c4c3eaed4b3821a0a95eccb518ad98`; arbitrum `0x377b58ffd1d68e2b7815421854bcd1489493c51d`; arbitrum `0x49c98fca16c115fdd341728a869d08f9a51d951a`; arbitrum `0xa555826c9a26e13238f657db06e0a02431839ef5`; arbitrum `0xad3a4361d633a3b9377ce82ad951caad2bb64e12` | ⚠️ Unaudited |
| SwapRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x1f721e2e82f6676fce4ea07a5958cf098d339e18` | ⚠️ Unaudited |
| TickLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: arbitrum `0x22cb092d904eb13cdaca0ca5d93093fae19b8034`; arbitrum `0x6e39ccd0b6d1e91a69d5bdc1d112bfa0d34bde38`; arbitrum `0x8516944e89f296eb6473d79aed1ba12088016c9e`; arbitrum `0x9a489505a00ce272eaa5e07dba6491314cae3796` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x5822a45b05d08028baa3d19626870076d26bc460`; arbitrum `0xd8676fbdfa5b56bb2298d452c9768f51e80e34ae` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x903293c1e922a72a95a69c61ede74073c8594c13` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0xa760212bc60a77b24ba52e889b0dc9d99e280b5c`; arbitrum `0xf4c88bc4585f9de3396774c3f0c8b559a7e7dd41` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0xf53b4b36d9b24e5b0086fe7c4532a3c5ddedd8c1`; arbitrum `0xfecbac90ba3478c24f82c5c142a222e75b7e4321` | ⚠️ Unaudited |
| TreasurySplitter | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x8c7d966b6bee480bf96b41870ccb89559ac176f6`; arbitrum `0xafe51c05e2a4c64217709efd3ee34dcd2f84c92a` | ⚠️ Unaudited |
| TridentRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd9988b4b5bbc53a794240496cfa9bf5b1f8e0523` | ⚠️ Unaudited |
| UniswapV3Adapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: base `0xca4cf963c71234a4f7d44a750b4d3847b4debabd`; arbitrum `0x76bdb43d2ec3b190087076649224f47a58c44ef2`; arbitrum `0xa6e46583b91757f50317f84349610737d9be082c` | ⚠️ Unaudited |
| V3Migrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbc203d7f83677c7ed3f7acec959963e7f4ecc5c2` | ⚠️ Unaudited |
| ViewHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: base `0x286490622bcc7261c0ce794b7166dc67d3ce18bd`; arbitrum `0x0ef66de171293285a8f8ffd0d0d564ca093da5b6`; arbitrum `0x4a14af0a8884d339e0a67f39a66bc0983ba19df9` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (36)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-392615 | `0x02415b4e29e00cf76b27ab0403e1e1382d0224c0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-392627 | `0xd3923beccb6e1ddb048ed00a0a9bd602d16b7470` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x011e52e4e40cf9498c79273329e8827b21e2e581` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x145d82bca93cca2ae057d1c6f26245d1b9522e6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1be211d8da40bc0ae8719c6663307bfc987b1d6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1c5771e96c9d5524fb6e606f5b356d08c40eb194` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1cf9cf377252802780c3c4d61d53432fc4e98a14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1f054ce3254f9e3edd987d897223e0184646d8ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x258f7e97149afd7d7f84fa63b10e4a3f0c38b788` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x259ba0c58bb231c6fe5b71dd928b9d297685ea3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2f686751b19a9d91cc3d57d90150bc767f050066` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3046cf2eef9840aed537598042db3d911b942dbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x30cea63a6b2653c1a50d284a0cc079938ef943b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x351447fc9bd20a917783e159e61e86edda0b0187` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3db923fbab372ab8c796fef9bb8341cdb37cb9ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3fc3f74dbf4c2e9f583d2855a868cc5af2d931af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x400bb79e9651e683300fcb312fc074940381e231` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x48813f00c532d995e8847cf8491fda41d87caf33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4b53488a14b2eef51df8b8b31e6add2f378c72f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5629ce74ddcad7cc72b3ea30444da7172ad851d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x67468e6c4418d58b1b41bc0a795bacb824f70792` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6e9aed2c4cf5ed7e8ab851435225fe1601a1bc56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x790b6cf4429b4407f5227feaa31d798829f049a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8cc27635c3a075d21b332f43440bd177b439b16e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8dacffa7f69ce572992132697252e16254225d38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x92883acd807c0cc086e72f9bf7c0468ff2fd8087` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x93395129bd3fcf49d95730d3c2737c17990ff328` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9dd65541b8cdb69b571cb1f63f72dcca4cabe2bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbd87bef520f8cec45d73b0413b6cbb8b061736d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc27d4dbf4d86c90f63828d2cd2582be67e5e5657` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdcd6a4b673b1c409e4b67f787935865b161232d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe4331da0e97627a04638506770e5d48f6b304d36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xeae23c766a1b25481025a02b2d82a1db3fc130ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf78031cbca409f2fb6876bdfdbc1b2df24cf9bef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf8644abdb47d048e5572836db30d95cf63243c33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfdd06964f8b48725be238524f8e4ea6da42eb659` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 127
- Live contracts: 0
- Unknown liveness contracts: 127
- Source-verified contracts: 90
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: candidate review=13, contamination review=16, source verified unclassified=61, unverified unclassified=37

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| arbitrum | candidate review | ProxyAdmin<br>`0x427bf5b37357632377ecbec9de3626c71a5396c1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x3af75af6f056d4d72c1675da919aebf908a109d6` |
| arbitrum | candidate review | TransparentUpgradeableProxy<br>`0x3d00cdb4785f0ef20c903a13596e0b9b2c652227` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x3af75af6f056d4d72c1675da919aebf908a109d6` |
| arbitrum | contamination review | AlgebraInterfaceMulticall<br>`0xac1ce734566f390a94b00eb9bf561c2625bf44ea` | non_address_book | unknown | unknown | verified | n/a | `0x3af75af6f056d4d72c1675da919aebf908a109d6` |
| arbitrum | source verified unclassified | NonfungiblePositionManager<br>`0x46a15b0b27311cedf172ab29e4f4766fbe7f4364` | non_address_book | unknown | unknown | verified | n/a | `0x3af75af6f056d4d72c1675da919aebf908a109d6` |
| arbitrum | source verified unclassified | NonfungibleTokenPositionDescriptorOffChain<br>`0xb099b459887bc759dbf0293e12d3dfcd0c456cff` | non_address_book | unknown | unknown | verified | n/a | `0x3af75af6f056d4d72c1675da919aebf908a109d6` |
| arbitrum | source verified unclassified | TickLens<br>`0x9a489505a00ce272eaa5e07dba6491314cae3796` | non_address_book | unknown | unknown | verified | n/a | `0x3af75af6f056d4d72c1675da919aebf908a109d6` |
| arbitrum | source verified unclassified | V3Migrator<br>`0xbc203d7f83677c7ed3f7acec959963e7f4ecc5c2` | non_address_book | unknown | unknown | verified | n/a | `0x3af75af6f056d4d72c1675da919aebf908a109d6` |
| arbitrum | candidate review | SnuggleVaultUpgradeable<br>`0x0d803966d1a96aca169e203a0c0a8b86acda22da` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x6ac51a706539d4f5a326da2892520180858e25ff` |
| arbitrum | candidate review | SnuggleVaultUpgradeable<br>`0x4b1cbd4db47b7a10d4af81a1981d01e61cbcb07d` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x6ac51a706539d4f5a326da2892520180858e25ff` |
| arbitrum | candidate review | TransparentUpgradeableProxy<br>`0x413ca90d38d964546c2fe03cb103df57372630f6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6ac51a706539d4f5a326da2892520180858e25ff` |
| arbitrum | candidate review | TransparentUpgradeableProxy<br>`0x9da88677e47bd8ead09b6b96d747a00f21bab114` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6ac51a706539d4f5a326da2892520180858e25ff` |
| arbitrum | candidate review | TransparentUpgradeableProxy<br>`0x1ad8c5aed1d18cb7c5f30cd2b486251e87e14abc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | candidate review | TransparentUpgradeableProxy<br>`0x49f5985a122028093c91bb63084eb29a7632067c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | candidate review | TransparentUpgradeableProxy<br>`0x89a13bb0c2315670aadb07b7a0c7067333b8a68a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | candidate review | TransparentUpgradeableProxy<br>`0x903293c1e922a72a95a69c61ede74073c8594c13` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | candidate review | TransparentUpgradeableProxy<br>`0xa760212bc60a77b24ba52e889b0dc9d99e280b5c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | candidate review | TransparentUpgradeableProxy<br>`0xd8676fbdfa5b56bb2298d452c9768f51e80e34ae` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | candidate review | TransparentUpgradeableProxy<br>`0xfecbac90ba3478c24f82c5c142a222e75b7e4321` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | contamination review | AlgebraCommunityVault<br>`0x971ba90018c44ac60d5bb850249b3ec02a3a5e5a` | non_address_book | unknown | unknown | verified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | contamination review | AlgebraCustomPoolEntryPoint<br>`0xbf1849090b659505a0d7a75fead3068020aea3ef` | non_address_book | unknown | unknown | verified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | contamination review | AlgebraEternalFarming<br>`0x0b3538cc8d06e73f26956f81d1a4be513d99db1b` | non_address_book | unknown | unknown | verified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | contamination review | AlgebraFactory<br>`0x1a3c9b1d2f0529d97f2afc5136cc23e58f1fd35b` | non_address_book | unknown | unknown | verified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | contamination review | AlgebraPoolDeployer<br>`0x0f9dff83d8b1f1b41dfbe340b8d9d75aa1741870` | non_address_book | unknown | unknown | verified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | contamination review | AlgebraVaultFactoryStub<br>`0x1cb8eedc4dcff2da02bfcfbed2456cf2c41333f6` | non_address_book | unknown | unknown | verified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | contamination review | BasePluginV1Factory<br>`0xe3ae84a486c737e4e260b48f1173dfcd96cbd03d` | non_address_book | unknown | unknown | verified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | contamination review | Quoter<br>`0x02102bd5b57c128b19d4d4fa4d8f8192ea1b88ac` | non_address_book | unknown | unknown | verified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | contamination review | TickLens<br>`0x22cb092d904eb13cdaca0ca5d93093fae19b8034` | non_address_book | unknown | unknown | verified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | source verified unclassified | AlgebraCommunityVault<br>`0xe3c3e260071ca29231d930bc31654571c51da69e` | non_address_book | unknown | unknown | verified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | source verified unclassified | AlgebraFactory<br>`0x1e3db3a221bcf6296fef2c493bb44d09018455ca` | non_address_book | unknown | unknown | verified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | source verified unclassified | AlgebraFactory<br>`0x6b692b588def775a92a6d0f3b6cccc8a4a4e5bb8` | non_address_book | unknown | unknown | verified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | source verified unclassified | AlgebraFactory<br>`0x9a8ddc2f8b998de00f7028bd0881bde028aed592` | non_address_book | unknown | unknown | verified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | source verified unclassified | AlgebraFactory<br>`0xd3b4c3262b7bc4d0ae522f15f48eef8f6b5d6aea` | non_address_book | unknown | unknown | verified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | source verified unclassified | AlgebraFactory<br>`0xd490f2f6990c0291597fd1247651b4e0dcf684dd` | non_address_book | unknown | unknown | verified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | source verified unclassified | AlgebraFactory<br>`0xd97b6e6944a7c36cf047f4606875a3fadbdb61d6` | non_address_book | unknown | unknown | verified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | source verified unclassified | AlgebraFactory<br>`0xe907d0b2b830124d64b11e6416ecf61483994ae3` | non_address_book | unknown | unknown | verified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | source verified unclassified | AlgebraPoolDeployer<br>`0x34f74f5217d57223b51e51245769a89874c69bd2` | non_address_book | unknown | unknown | verified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | source verified unclassified | AlgebraPoolDeployer<br>`0x5e1e14df94ee031c51f41e5ee3a2ad7a1345ffe1` | non_address_book | unknown | unknown | verified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | source verified unclassified | AlgebraPoolDeployer<br>`0x6dd3fb9653b10e806650f107c3b5a0a6ff974f65` | non_address_book | unknown | unknown | verified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | source verified unclassified | AlgebraPoolDeployer<br>`0x89aee07e1dbafc82f089b45ffc763738e9fff226` | non_address_book | unknown | unknown | verified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | source verified unclassified | AlgebraPoolDeployer<br>`0x8b5665ba77ca4e98ba96412061276ad2adca6f15` | non_address_book | unknown | unknown | verified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | source verified unclassified | AlgebraPoolDeployer<br>`0xd5143db853b4af176c2379b6ac48ab3e66c4fa56` | non_address_book | unknown | unknown | verified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | source verified unclassified | AlgebraPoolDeployer<br>`0xf09c0892885ba43d4ba29be7388fc145a174af8d` | non_address_book | unknown | unknown | verified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | source verified unclassified | AlgebraVaultFactoryStub<br>`0x653658ddb7e4a7a69f0fa4c020f1e7e60732d540` | non_address_book | unknown | unknown | verified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | source verified unclassified | FarmingCenter<br>`0x3eee90c983e2728ae6d7880064b0c5b055342c46` | non_address_book | unknown | unknown | verified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | source verified unclassified | NFTDescriptor<br>`0x1e12aad4b836a9b5edf17367eb8f1cbe3e781dae` | non_address_book | unknown | unknown | verified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | source verified unclassified | NFTDescriptor<br>`0xff7da61e7037378da1baf3d40ba8e6e47dfb3a62` | non_address_book | unknown | unknown | verified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | source verified unclassified | NonfungiblePositionManager<br>`0x00c7f3082833e796a5b3e4bd59f6642ff44dcd15` | non_address_book | unknown | unknown | verified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | source verified unclassified | NonfungiblePositionManager<br>`0x197de4ea3c45eefad1727d7c4858e078f1e8d31b` | non_address_book | unknown | unknown | verified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | source verified unclassified | NonfungiblePositionManager<br>`0x368435a76b1a855d054d3cdf4c20f5e0b2babbc8` | non_address_book | unknown | unknown | verified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | source verified unclassified | NonfungiblePositionManager<br>`0x5c8d79b78786a2e9327f2d20910abd6d198c5905` | non_address_book | unknown | unknown | verified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | source verified unclassified | NonfungiblePositionManager<br>`0xacdcc3c6a2339d08e0ac9f694e4de7c52f890db3` | non_address_book | unknown | unknown | verified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | source verified unclassified | NonfungiblePositionManager<br>`0xe6988b12753e2f6e1bf84843988a0242b17a5383` | non_address_book | unknown | unknown | verified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | source verified unclassified | NonfungiblePositionManager<br>`0xf41599ffc71518fd4411941439dae7dee27020f9` | non_address_book | unknown | unknown | verified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | source verified unclassified | NonfungibleTokenPositionDescriptor<br>`0x2d22aa1c50433eb018077e4bfc52fadc437606dc` | non_address_book | unknown | unknown | verified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | source verified unclassified | NonfungibleTokenPositionDescriptor<br>`0x52d2ebe1fe306c90124d159b59392b6bb1b48325` | non_address_book | unknown | unknown | verified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | source verified unclassified | NonfungibleTokenPositionDescriptor<br>`0x674d0794c32f061eeef5ee981fa3b0ee3be7a7ef` | non_address_book | unknown | unknown | verified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | source verified unclassified | Quoter<br>`0x27d3ce023f34f1e560f9ba4c8616526085fefe92` | non_address_book | unknown | unknown | verified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | source verified unclassified | Quoter<br>`0x32ab0c927d2197aebf8e5471ab9db7fd1854e73c` | non_address_book | unknown | unknown | verified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | source verified unclassified | Quoter<br>`0x6c78f25cc4fdff99d0c88aab75b3b6e50fbbc0bd` | non_address_book | unknown | unknown | verified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | source verified unclassified | Quoter<br>`0x9b7a7c93db745d5f6c679eeda7dd15ccd638c063` | non_address_book | unknown | unknown | verified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | source verified unclassified | Quoter<br>`0xaaf703dadca1aae754ad74de643907747d2eb3ac` | non_address_book | unknown | unknown | verified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | source verified unclassified | Quoter<br>`0xc50b125beeecb1ad17a893c5d54a0a0e629fe056` | non_address_book | unknown | unknown | verified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | source verified unclassified | Quoter<br>`0xd70dd6d5e4226a515f90623213d9aa437b63b955` | non_address_book | unknown | unknown | verified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | source verified unclassified | QuoterV2<br>`0x66d756335bff276d73a8ab0853c3d336475e639b` | non_address_book | unknown | unknown | verified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | source verified unclassified | SwapRouter<br>`0x17585d045eb322d292e0166a4cd643f793640b50` | non_address_book | unknown | unknown | verified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | source verified unclassified | SwapRouter<br>`0x22535b3e45c4c3eaed4b3821a0a95eccb518ad98` | non_address_book | unknown | unknown | verified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | source verified unclassified | SwapRouter<br>`0x377b58ffd1d68e2b7815421854bcd1489493c51d` | non_address_book | unknown | unknown | verified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | source verified unclassified | SwapRouter<br>`0x49c98fca16c115fdd341728a869d08f9a51d951a` | non_address_book | unknown | unknown | verified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | source verified unclassified | SwapRouter<br>`0xad3a4361d633a3b9377ce82ad951caad2bb64e12` | non_address_book | unknown | unknown | verified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | source verified unclassified | TickLens<br>`0x6e39ccd0b6d1e91a69d5bdc1d112bfa0d34bde38` | non_address_book | unknown | unknown | verified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1cf9cf377252802780c3c4d61d53432fc4e98a14` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1f054ce3254f9e3edd987d897223e0184646d8ec` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x259ba0c58bb231c6fe5b71dd928b9d297685ea3c` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3046cf2eef9840aed537598042db3d911b942dbd` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x30cea63a6b2653c1a50d284a0cc079938ef943b1` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3fc3f74dbf4c2e9f583d2855a868cc5af2d931af` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x400bb79e9651e683300fcb312fc074940381e231` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x48813f00c532d995e8847cf8491fda41d87caf33` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4b53488a14b2eef51df8b8b31e6add2f378c72f4` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5822a45b05d08028baa3d19626870076d26bc460` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x790b6cf4429b4407f5227feaa31d798829f049a8` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8cc27635c3a075d21b332f43440bd177b439b16e` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x92883acd807c0cc086e72f9bf7c0468ff2fd8087` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9dd65541b8cdb69b571cb1f63f72dcca4cabe2bb` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc27d4dbf4d86c90f63828d2cd2582be67e5e5657` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe4331da0e97627a04638506770e5d48f6b304d36` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xf4c88bc4585f9de3396774c3f0c8b559a7e7dd41` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xf53b4b36d9b24e5b0086fe7c4532a3c5ddedd8c1` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xf8644abdb47d048e5572836db30d95cf63243c33` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xfdd06964f8b48725be238524f8e4ea6da42eb659` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | contamination review | ConstantProductPoolFactory<br>`0xc79ae87e9f55761c08e346b98dddf070c9872787` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| arbitrum | contamination review | ConstantProductPoolFactoryHelper<br>`0x827179dd56d07a7eea32e3873493835da2866976` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| arbitrum | contamination review | MiniChefV2<br>`0xf4d73326c13a4fc5fd7a064217e12780e9bd62c3` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| arbitrum | contamination review | NonfungibleTokenPositionDescriptor<br>`0x96e04591579f298681361c6122dc4ef405c19385` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| arbitrum | contamination review | RouteProcessor<br>`0x9c6522117e2ed1fe5bdb72bb0ed5e3f2bde7dbe0` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| arbitrum | contamination review | StablePoolFactory<br>`0xc2fb256aba36852dccea92181ec6b355f09a0288` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| arbitrum | source verified unclassified | BatchAuction<br>`0x7603a35af5cf10b113f167d424eb75bb7062c8ce` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| arbitrum | source verified unclassified | Crowdsale<br>`0x120140d0c1ebc938befc84840575ecdc5fe55afe` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| arbitrum | source verified unclassified | DutchAuction<br>`0x438a2b1c6c715fb1b051c04ca65755560d8b8d43` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| arbitrum | source verified unclassified | FixedToken<br>`0xcaabdd9cf4b61813d4a52f980d6bc1b713fe66f5` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| arbitrum | source verified unclassified | MasterDeployer<br>`0xf0e1f962e3e6d8e2af8190b2798c1b4f018fe48d` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| arbitrum | source verified unclassified | Multicall2<br>`0x0769fd68dfb93167989c6f7254cd0d766fb2841f` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| arbitrum | source verified unclassified | NFTDescriptor<br>`0x0367a647a68f304f2a6e453c25033a4249d7f2c6` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| arbitrum | source verified unclassified | NonfungiblePositionManager<br>`0xf0cbce1942a68beb3d1b73f0dd86c8dcc363ef49` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| arbitrum | source verified unclassified | RouteProcessor<br>`0x9f18658f7206eaa8d885bbfbb95ab6d9f6c6c12f` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| arbitrum | source verified unclassified | RouteProcessor3<br>`0xfc506aaa1340b4dedffd88be278bee058952d674` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| arbitrum | source verified unclassified | RouteProcessor3_1<br>`0x3c1fba3bcee7ce410b155a8c71f9ff1312852c82` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| arbitrum | source verified unclassified | RouteProcessor3_2<br>`0x09bd2a33c47746ff03b86bce4e885d03c74a8e8c` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| arbitrum | source verified unclassified | TickLens<br>`0x8516944e89f296eb6473d79aed1ba12088016c9e` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| arbitrum | source verified unclassified | TridentRouter<br>`0xd9988b4b5bbc53a794240496cfa9bf5b1f8e0523` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x011e52e4e40cf9498c79273329e8827b21e2e581` | non_address_book | unknown | unknown | unverified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x145d82bca93cca2ae057d1c6f26245d1b9522e6f` | non_address_book | unknown | unknown | unverified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1be211d8da40bc0ae8719c6663307bfc987b1d6c` | non_address_book | unknown | unknown | unverified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1c5771e96c9d5524fb6e606f5b356d08c40eb194` | non_address_book | unknown | unknown | unverified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x258f7e97149afd7d7f84fa63b10e4a3f0c38b788` | non_address_book | unknown | unknown | unverified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2f686751b19a9d91cc3d57d90150bc767f050066` | non_address_book | unknown | unknown | unverified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x351447fc9bd20a917783e159e61e86edda0b0187` | non_address_book | unknown | unknown | unverified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3db923fbab372ab8c796fef9bb8341cdb37cb9ec` | non_address_book | unknown | unknown | unverified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5629ce74ddcad7cc72b3ea30444da7172ad851d9` | non_address_book | unknown | unknown | unverified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x67468e6c4418d58b1b41bc0a795bacb824f70792` | non_address_book | unknown | unknown | unverified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6e9aed2c4cf5ed7e8ab851435225fe1601a1bc56` | non_address_book | unknown | unknown | unverified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8dacffa7f69ce572992132697252e16254225d38` | non_address_book | unknown | unknown | unverified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x93395129bd3fcf49d95730d3c2737c17990ff328` | non_address_book | unknown | unknown | unverified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xbd87bef520f8cec45d73b0413b6cbb8b061736d9` | non_address_book | unknown | unknown | unverified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xdcd6a4b673b1c409e4b67f787935865b161232d3` | non_address_book | unknown | unknown | unverified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xeae23c766a1b25481025a02b2d82a1db3fc130ca` | non_address_book | unknown | unknown | unverified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xf78031cbca409f2fb6876bdfdbc1b2df24cf9bef` | non_address_book | unknown | unknown | unverified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Abyss.pdf](https://d3cny4im7ppv5.cloudfront.net/Abyss.pdf) | unknown | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [www.snuggle.fi/security](https://www.snuggle.fi/security) | unknown | Audit | 2026-02 | fresh | Direct | n/a | matched | 15 | 0 | 0 | 1 | n/a |
| [valvessecurity.com](https://valvessecurity.com/) | yAudit | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 1 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3119] Abyss.pdf — no match: Scope table lists 5 source files. Audit dates: 10/11/2025 to 12/11/2025, so end date is 2025-11-12.
- [3121] www.snuggle.fi/security — matched: No reason recorded
- [11989] valvessecurity.com — no match: The document appears to be a marketing page for Valves Security, not an actual audit report. Only one contract name (VaultAudit) is mentioned in a code example, but no formal scope section or audit date is present.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Abyss.pdf | vault | unmatched — not counted | — | listed in scope table | no |
| Abyss.pdf | vault_registry | unmatched — not counted | — | listed in scope table | no |
| Abyss.pdf | fee_manager | unmatched — not counted | — | listed in scope table | no |
| Abyss.pdf | constants | unmatched — not counted | — | listed in scope table | no |
| Abyss.pdf | protocol_config | unmatched — not counted | — | listed in scope table | no |
| www.snuggle.fi/security | AdminSatellite | own contract | SnuggleVaultAdminSatellite (selected) `0x5a332caa3212a1785f64f6bdcb34c727efe4d271` — deployed 2026-02-16 00:07:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.snuggle.fi/security | AerodromePositionAdapter | own contract | AerodromePositionAdapter (selected) `0xe3efa7825b7ace81fa2621d892d95e0048f79589` — deployed 2026-02-16 00:08:13+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.snuggle.fi/security | AerodromeRewardAdapter | own contract | AerodromeRewardAdapter (selected) `0xcb16cb2cd32768c65418b22385888bd2c8d77306` — deployed 2026-02-16 00:08:15+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.snuggle.fi/security | FeeTransferHelper | own contract | FeeTransferHelper (selected) `0x613ba880f7695ecba0a3dcad76f99781be28b1f3` — deployed 2026-02-16 00:07:53+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.snuggle.fi/security | KeepersHelper V3 | own contract | KeepersHelper (selected) `0x60431b5b580516817f095534d6d1e3552f563345` — deployed 2026-02-16 16:29:49+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.snuggle.fi/security | PancakeSwapPositionAdapter | own contract | PancakeSwapPositionAdapter (selected) `0x0c0ba0b81a4ac60321c2414bdcef24c5851b39e5` — deployed 2026-02-16 00:08:17+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.snuggle.fi/security | PancakeSwapRewardAdapter | own contract | PancakeSwapRewardAdapter (selected) `0x63de143eae0f6dfddb3f91110e0db8375918b1cf` — deployed 2026-02-16 00:08:19+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.snuggle.fi/security | ProxyAdmin | own contract | ProxyAdmin (selected) `0x269dc2f974abed1c7a55a447758fcaef2dcca86f` — deployed 2026-02-16 00:07:43+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.snuggle.fi/security | ReferralTracker | own contract | ReferralTracker (selected) `0x2536a771111861bc0be61bd986f0c2dc0f68d9ee` — deployed 2026-02-16 00:07:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.snuggle.fi/security | SnuggleRebalanceLib | own contract | SnuggleRebalanceLib (selected) `0xf84b575e4e6d9fc07a3f2b863cb6a23cc11dcddc` — deployed 2026-02-16 00:07:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.snuggle.fi/security | SnuggleVault | unmatched — not counted | — | — | no |
| www.snuggle.fi/security | SnuggleVault Implementation | own contract | 0x02415b… (selected) `0x02415b4e29e00cf76b27ab0403e1e1382d0224c0` — deployed 2026-02-16 00:07:41+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.snuggle.fi/security | StakingManager | own contract | StakingManager (selected) `0x3f928dc834029e90b149269e1244bb85cca270c1` — deployed 2026-02-16 00:07:51+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.snuggle.fi/security | TreasurySplitter | own contract | TreasurySplitter (selected) `0x93d0d1216a613ad8745f9320bcb25dc04ea9ec12` — deployed 2026-02-16 00:07:39+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.snuggle.fi/security | UniswapV3Adapter | own contract | UniswapV3Adapter (selected) `0xf757c96463cb5588dc7d8eba464c947b08f33010` — deployed 2026-02-16 00:08:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.snuggle.fi/security | ViewHelper | own contract | ViewHelper (selected) `0x298028007e2aeb04d787c8a8bfa03144cc976a1c` — deployed 2026-02-16 00:08:05+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| valvessecurity.com | VaultAudit | unmatched — not counted | — | Mentioned in code snippet as VaultAudit.sol | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 69 |
| upstream | 0 |
| standard_library | 5 |
| needs_review | 38 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 15 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 7 unmatched
- Matched-own operational status: 15 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, low=1
- Match method counts: unique_name=15

Zero-match audit list:

- [3119] Abyss.pdf
- [11989] valvessecurity.com

Fork inheritance lineage and inherited audits are included when available.
