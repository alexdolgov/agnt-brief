# Agentic Audit Brief: Ionic Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Ionic Protocol (`ionic-protocol`)
- Website: [https://ionic.money/](https://ionic.money/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, bob, bsc, fraxtal, lisk, mode, optimism
- Contract surface: 83 unique implementations (178 raw deployments)
- Coverage basis: 0/4 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $2,042,238.81
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Ionic Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 4 contract row(s) across base, bob, bsc, fraxtal, lisk, mode, optimism. Structural roles: 4 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 4
- Structural roles: unclassified (4)
- Contract kinds: contract (4)
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 6 contracts are derived from known codebases. 6 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- Main Pool (`0xafb4a254d125b0395610fdc8f1d022936c7b166b`, chain 10)
- Main Pool (`0xb5141403e811fffe02f4d49ea8d4a7b0b9590658`, chain 252)
- Main Pool (`0xf448a36fefb223b8e46e36ff12091baba97bdf60`, chain 1135)
- Main Pool (`0x05c9c6417f246600f8f5f49fca9ee991bff73d13`, chain 8453)
- Main Pool (`0xfb3323e24743caf4add0fdccfb268565c0685556`, chain 34443)
- Main Pool (`0x9cfee81970aa10cc593b83fb96eaa9880a6df715`, chain 60808)

## Contract Surface Quality

- Logic-topography rows: 4; live-surface rows included: 4 (4 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 6/7 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/4 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 6 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 76 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 6 of 83 unique; 77 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/59
- Verified + Unaudited implementations: 59
- Verified by bytecode match: 0
- Unverified implementations: 24
- Unique implementations: 83
- Raw deployments: 178
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (59)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AddressesProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x8d5b096c99b26d07c7f8d8a8f25be97427687f73` | ⚠️ Unaudited |
| AerodromeV2Liquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x0111f383e756f57037a939c49c9e69ca06846d8a` | ⚠️ Unaudited |
| Airdropper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x521dd84fc4fc715d50549f4913e7eba2eef5dd1f` | ⚠️ Unaudited |
| AlgebraSwapLiquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x5ca3fd2c285c4138185ef1bda7573d415020f3c8` | ⚠️ Unaudited |
| AuthoritiesRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x5d74800e977bfc8e14eca28c9405bacbd091738e` | ⚠️ Unaudited |
| BEP20Token | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c`; bsc `0xe9e7cea3dedca5984780bafc599bd69add087d56` | ⚠️ Unaudited |
| CErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 3 deployments: mode `0x0bf35374fddff73eb48a78328e916fb97a8e6c75`; mode `0x93dac8ad6d2040ef696d8a87c0f576679869bc95`; mode `0xb3788b3c421348e43beea88551acc16d2f6a6332` | ⚠️ Unaudited |
| CErc20PluginDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 3 deployments: mode `0x0effea273a9df3e1436d51822678f24e76224126`; mode `0x726c7bc0c532ae239fb0ea8522e1f982c0aff1d5`; mode `0x8cc7cdebaf4820e8da308f9060fc439802bcb94c` | ⚠️ Unaudited |
| CErc20PluginRewardsDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 3 deployments: mode `0x798ee06eb08151fadf5ffd07b7931b79985884d1`; mode `0x96aaaf62cb1ff5735825afd051086f593d36dbb2`; mode `0xfdd33735c08f38ba9a1d58e58b157613b7832462` | ⚠️ Unaudited |
| CErc20RewardsDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 3 deployments: mode `0x2867039431b712b82f52258e7c6f2b3a43786244`; mode `0x6352b5231de62be60c7adb8250b08ca9ccf7a9a5`; mode `0xb8fb4848d4988919b026218a58c9ebeae3123e5e` | ⚠️ Unaudited |
| CollateralSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 2 deployments: mode `0xc10fd848a764e878b36ef9acb7936dc7fa27ebeb`; mode `0xee02b738d3285756b9c45fe21af4a2d76ecb56f6` | ⚠️ Unaudited |
| Comptroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 4 deployments: mode `0x8b2b6a9dc8cd73309cef8d64920831d4c73f43a7`; mode `0xa2ced0a58ff78b2c6ee8a7e5985976d720272484`; mode `0xa3e43a78cc3b82aaa059fa5ba4f3c8387b4234e9`; mode `0xa855f8697d82f840c511433a36f7c60eff6c6be7` | ⚠️ Unaudited |
| ComptrollerFirstExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 3 deployments: mode `0x6393228b6909ab12413816679ec992778e35f3a0`; mode `0xdc4abe2cd9a276b187200d4896d4b219c0b8920a`; mode `0xe1a3006be645a80f206311d9f18c866c204ba02f` | ⚠️ Unaudited |
| ComptrollerPrudentiaCapsExt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x0a183b983e395bebfa344389ef08250ae987bee4` | ⚠️ Unaudited |
| CTokenFirstExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 5 deployments: mode `0x13b727a6ff1856d27e85cf0c85cb096b8781fa14`; mode `0x8c58ecb9c0050824177f4e1cd71c335421d4aea2`; mode `0xd2fef5e720ee88b3392dc2ab630aed48f69fde16`; mode `0xe419c13f22e4318f87973082675c1ce650ea87ec`; mode `0xf4090e9cc87e0a5c269f7d99f8abe12c134ea2d4` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x18470019bf0e94611f15852f7e93cf5d65bc34ca` | ⚠️ Unaudited |
| FeeDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x9a0af901cae82f309f1047e1026f66a08c6fceec` | ⚠️ Unaudited |
| FixedNativePriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x1d7669b6bdfdb83066dd7c0ada4b630b25cbc28a` | ⚠️ Unaudited |
| GlobalPauser | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 2 deployments: mode `0x5d498338c6e38555020fb24b977f5e2817a50e3f`; mode `0xe646d8be18e545244c5e79f121202f75fa3880c8` | ⚠️ Unaudited |
| IonicFlywheel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 4 deployments: mode `0x4e2dfafc783372bf39986721f9f97f666bbe517e`; mode `0x7c8e413db565463b21f322acb9ed1e7a6939269d`; mode `0x92ce3434f254161178a4b4a786c7be559b752497`; mode `0xa525af96c271bc98c9dee6cef90f238b8865f458` | ⚠️ Unaudited |
| IonicFlywheelBorrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 4 deployments: mode `0x47632638053139307342c086d60b510eb0025996`; mode `0x82e88bc1d17d507ad23d9909ec90c6707ba0fbaf`; mode `0xe259d6910e8a0250cbf2de2781af67f7faf57d13`; mode `0xf9c66dc1c481d487f5ff7a2ece6eb6afde40ae02` | ⚠️ Unaudited |
| IonicFlywheelBorrowBooster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xd2ea2da2c6b0251b1b0436801c2dac6afca29b14` | ⚠️ Unaudited |
| IonicFlywheelDynamicRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 7 deployments: mode `0x02f606ae6016af2c06a4ee50129f3e24c520d11f`; mode `0x23dec9c9a5df017be2c06a841b85b711aef6fd88`; mode `0x3d662de3f1780a4a76406ebb80275a4653ed3dd4`; mode `0x4a003b110162c86fe10cd39822c782eb08c2549c`; mode `0xbfae7571c47a1d42bcead3d57d116ca69495d989`; mode `0xdb93567451cc2d785fab5744a07dbf0c7a90415f`; mode `0xef4aff6c0211c0aefd3921e65bd93fa9278f1fe2` | ⚠️ Unaudited |
| IonicFlywheelLensRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 5 deployments: mode `0x01ab485a0fae0667be36ab876c95adc1a2a5e449`; mode `0x79eb8e77da2621bd368f4cb41f328529b6f5db70`; mode `0xa1b7c312499e2fbe663b4a1bc8c38fced27eade9`; mode `0xa6ba5f1164dc66f9c5bdce33a6d2fc70be8da108`; mode `0xf0ac0f92e7da747e6757379771e5c9e5ea35d85a` | ⚠️ Unaudited |
| IonicToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xd07cd8df6ccdc9228ebced7fa236e1d59c272164` | ⚠️ Unaudited |
| IonicUniV3Liquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 5 deployments: mode `0x0472de8cb207aa872796de41bb1f21c077740a9d`; mode `0x4d7da54bdfc8e68bae4bdbf640ac427184e96b72`; mode `0x79ac787a52b7a82f1173d8902d0d58d25ff5b14c`; mode `0x88911e638f04b5d25242e8b587b3f8c8054b0d8f`; mode `0xe807fec91f6f2c7a1c4881d3b1236c9af23df5b1` | ⚠️ Unaudited |
| JumpRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 6 deployments: mode `0x21a455ced9c79bc523d4e340c2b97521f4217817`; mode `0x223addf725814eac6ec9f29c85a5111a7c09e6ee`; mode `0x22cc2474f1578d7e311f3afa0256fc9f52bc5636`; mode `0x2e06c354dd5f4674fa99d04e8b5df6150ae0595e`; mode `0x413ad59b80b1632988d478115a466bdf9b26743a`; mode `0xa16d99e4133d858e5b73784aa2f65e7edfc49a19` | ⚠️ Unaudited |
| LeveredPositionFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x9b506a03bbff2a842866b10bc6732da72640cd45` | ⚠️ Unaudited |
| LeveredPositionFactoryFirstExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 2 deployments: mode `0x4e20eb2af6be30660323cb25204e071116737fea`; mode `0x4f824616c8b6bc81ed8743710cb69a0929c29b98` | ⚠️ Unaudited |
| LeveredPositionFactorySecondExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 3 deployments: mode `0x14bb1c7293c4e3e28ef4a74c3d73badd5de6d000`; mode `0x2afb71c0fe11a2315eba9a501a48700b83c19e33`; mode `0x5dc08e96372fe1ee3130b05c6a1edcb875562212` | ⚠️ Unaudited |
| LeveredPositionsLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xd9a5677594694819f69d0907c3094eab480f3a28` | ⚠️ Unaudited |
| LiquidatorsRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 2 deployments: mode `0xae2647747e037410ff477e72176ead322d42cd6a`; mode `0xc71b968c6c23e2723bae32957d815c9be3ca1b34` | ⚠️ Unaudited |
| LiquidatorsRegistryExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 4 deployments: mode `0x3fa4bc2fcac5515d5b758d4d580bbd626c93d621`; mode `0x6aa80aa164910a31b2309ea4c00da78c1a03c103`; mode `0x95e4cd4786ede1c0aa42f7dc9aecf32af4ae8294`; mode `0xdd7f712af76074993f05c0d544331792997bd39b` | ⚠️ Unaudited |
| LiquidatorsRegistrySecondExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 2 deployments: mode `0x139bd5cf15a1312bfd165f36c0b88987a9d03900`; mode `0x45a4a3ebb986083597ac3b34ee2d7dcc3be8c5c1` | ⚠️ Unaudited |
| LooplessFlywheelBooster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x1d89e5ba287e67ac0046d2218be5fe1382ce47b4` | ⚠️ Unaudited |
| Main Pool | unknown | project_anchor | own_supporting | 0 | optimism | unit-387724 | `0xafb4a254d125b0395610fdc8f1d022936c7b166b` | ⚠️ Unaudited |
| Main Pool | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-387726 | `0xb5141403e811fffe02f4d49ea8d4a7b0b9590658` | ⚠️ Unaudited |
| Main Pool | unknown | project_anchor | own_supporting | 0 | base | unit-387730 | `0x05c9c6417f246600f8f5f49fca9ee991bff73d13` | ⚠️ Unaudited |
| Main Pool | unknown | project_anchor | own_supporting | 0 | mode | unit-387728 | `0xfb3323e24743caf4add0fdccfb268565c0685556` | ⚠️ Unaudited |
| MasterPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 2 deployments: mode `0x4e7676b20b86beea9c197be756361680fae3c9ae`; mode `0x707a1b661569ebf98da3a115ba20a3d2ee40229f` | ⚠️ Unaudited |
| OptimizedVaultsRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x2ddf3ddfe856d1a4e5dbcb324194e2a622aed83c` | ⚠️ Unaudited |
| PoolDirectory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x20808c1a73737016bbbf8acc6959a30446ea1d2d` | ⚠️ Unaudited |
| PoolLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 4 deployments: mode `0x431c87e08e2636733a945d742d25ba77577ed480`; mode `0x611a68618412c2e15a36e3e59c0b979746d87ab8`; mode `0x70bb19a56bfaec65ae861e6275a90163abdf36a6`; mode `0xbc6d8da615003323b77d442b34976bb9d1124d39` | ⚠️ Unaudited |
| PoolLensSecondary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x7ea7bb80f3bbee9b52e6ed3775ba06c9c80d4154` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 5 deployments: mode `0x30d608929d8b61ff35a4358ca0e9d298d43672c2`; mode `0x4de2d8ef97d19def01f236b7a12e5fb39c087b56`; mode `0x985a323a1ccca8cd5fb8935590ee33fbcfe849d0`; mode `0xaf9cc7599defd86226e0f3a6810c4976e4a10f83`; mode `0xd122669fef7e62aa5df85e945b68dd0b02a42343` | ⚠️ Unaudited |
| PrudentiaInterestRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 8 deployments: mode `0x3fa7f3a4127860c7c9b8130e472315c0a60275e1`; mode `0x50a06be730df06849b15d3df9ec4ef6ae281cd03`; mode `0x6a40d802080a37e210ec87735abf995b5bc636a6`; mode `0xa662dc3095e29990b885cff0b5bfd54585b74414`; mode `0xb0a9b9f6fd960108df5b508da5abe476d8e37f09`; mode `0xb1b4ba18175214589a9cdd2c74b73086388cf382`; mode `0xc58dcc0cbc02355cf1ad6b5398de49152ae72e2e`; mode `0xf2202a89b19c7f395187dc1e374814ef56180af8` | ⚠️ Unaudited |
| PublicSaleTokenVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 3 deployments: mode `0x2f0a2b9dcdf899b34f482ee50137cdf8ed1b72dc`; mode `0x731d22ed440a5bcfc140440af441b76baa536821`; mode `0xda061a5d6fc9f3d40f6505ce38aeb8793a29ede8` | ⚠️ Unaudited |
| PythPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x13fd2701c3017bcc375ad14dd8433c6d7a441794` | ⚠️ Unaudited |
| PythPriceOracleDmBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xac986b9b549ba5e98baeb78919d4e4aa5f4b342e` | ⚠️ Unaudited |
| RedstoneAdapterPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x63a1531a06f0ac597a0dfa5a516a37073c3e1e0a` | ⚠️ Unaudited |
| RedstoneAdapterPriceOracleWeETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x9c0819e3235c8ff74e79f0cabb51ec477603de78` | ⚠️ Unaudited |
| RedstoneAdapterPriceOracleWrsETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xe3643fd41095658cdf063e15f5cb30a5738979e8` | ⚠️ Unaudited |
| SimplePriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xcd4d7c8e2ba627684a9b18f7fe88239341d3ba5c` | ⚠️ Unaudited |
| TokenVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 2 deployments: mode `0x93e63535cb8b85239d4d8f40a571e81dab9409d9`; mode `0xa7bc89f9bcd2e6565c250182767f20e2ac89bc7b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 25 deployments: mode `0x04ffa53a90a8ded9ae83f64596c5783397c1cfb0`; mode `0x151af46d007cb7e60759318ec1553c3bdd8b93db`; mode `0x1a118b250ed0ba690f03877ac46519a4b66f1d44`; mode `0x1dd45c9fb4c8ccb678781982774f006f24b8eac1`; mode `0x2baf3a2b667a5027a83101d218a9e8b73577f117`; mode `0x2dc3f7b18e8f62f7fe7819596d15e521eef3b1ec`; mode `0x39c353cf9041ccf467a04d0e78b63d961e81458a`; mode `0x4e854cde138495a3eb9cfe48e50f12dc352cd834`; mode `0x50f13ec4b68c9522260d3ccd4f19826679b3ce5c`; mode `0x52ee6e740c1785412e51a381b0d87fb1692a7b23`; mode `0x5f0369aa93f36ca6a8b5ed7aac47bf9e76086d03`; mode `0x6afcca37cc93db6bed729d20adf203290d465df5`; mode `0x8d446bfea5af278157e2545d5aa0b66825a87050`; mode `0x8ea3fc79d9e463464c5159578d38870b770f6e57`; mode `0x99e8d6fcb217379c5b8f497123be4efd0983748b`; mode `0x9df3d82d97a4d7b8a0a9587d199b54b64efeb74c`; mode `0xa12c1e460c06b1745efcbfc9a1f666a8749b0e3a`; mode `0xa1917c72e86e8e6db08943e2e6d45cdb87653e0f`; mode `0xa80ff99c82d55dfe893867e25c5c77276dfb23c5`; mode `0xa90f1c28f8bc9c92113e54d0b7d007647ee216a4`; mode `0xacea9bfbd6a1da56a27bada1a8d0e5bb35bff4e7`; mode `0xb0033576a9e444dd801d5b69e1b63dbc459a6115`; mode `0xc3cec17c135d3c5d6badc284aff08f396447daac`; mode `0xcc11fc7048db155f691cc20ac9958fc465fa0062`; mode `0xe9862808362e5cf0e6f814c1a1c7c40678ced3ea` | ⚠️ Unaudited |
| VelodromePriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x9bb6efb9c1c16f4561591fe13ea06af8d1fce2a9` | ⚠️ Unaudited |
| VelodromeV2Liquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xa1abf92ef468464962af1ceffb44631a6ffb33ec` | ⚠️ Unaudited |
| WBNB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c` | ⚠️ Unaudited |
| xERC20Hyperlane | token | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xb81ab95bee03ed655c8a99d484effcfe335319eb` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (24)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Main Pool | unknown | project_anchor | own_supporting | 0 | lisk | unit-387725 | `0xf448a36fefb223b8e46e36ff12091baba97bdf60` | ❓ Unverified |
| Main Pool | unknown | project_anchor | own_supporting | 0 | bob | unit-387729 | `0x9cfee81970aa10cc593b83fb96eaa9880a6df715` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x14699157d5b22d8ba05db18f027f735256198736` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x178d49075c3303207e36d5cade791b8474702fad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x36a84b42fa436dbcb3854e2e46ba26546c651530` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x3ee5e23eee121094f1cfc0ccc79d6c809ebd22e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x462faa7042542c5cf28bc73d8f8c029267ef3e51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x48bf6bd4b3d8b4e75863b5340b977e888bace19a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x5782c512c07f217a8de9611e7ce8c98f13193a46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x6abf23fff01838251a997e2002ad592940c6d3ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x6ac17d406a820fa464ffdc0940fca7e60b3b36b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x75897e286b0fad7e2358774fb7b1b5e8c352c058` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x8cdeb253b126f3866f099b1f1a0d22d5025c020c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x907a178351a0d9628056f76472a1812e8e4d7d5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x917e178e24600e72da012f4530f80362d0d8d4db` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mode | unit-387727 | `0x9a9072302b775ffbd3db79a7766e75cf82bcac0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x9e4f3278098c64529797e21117e4764cc66abd98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xac409691b385fdbb66752ff2d97e50bc23ff2295` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xb08fafc6e8280ce351cf22d2db8abd241e8a5e47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xb48221b8a1137895e384abcaff8120d053be43f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xca41aa7472c8f85c84a8cb03deaf064ab6498dd7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xda8c83808b73f97978d2b838e91bf6429b5f1178` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xe5a4e7c248ac77265d19ec202b683ec83ce810a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xe64e425f7a00fe4a41bd89fa89edfb6d1493c2c4` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [spaces/4L4EczL4rCp3jyJhAxHG/uploads/fkk0363x576TeYPz9Dww/Ionic_Protocol_-_Zellic_Audit_Report.pdf](https://1954749119-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F4L4EczL4rCp3jyJhAxHG%2Fuploads%2Ffkk0363x576TeYPz9Dww%2FIonic_Protocol_-_Zellic_Audit_Report.pdf) | Zellic | Audit | 2022-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 23 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2937] spaces/4L4EczL4rCp3jyJhAxHG/uploads/fkk0363x576TeYPz9Dww/Ionic_Protocol_-_Zellic_Audit_Report.pdf — no match: Extracted 23 contract names from the scope section and findings. Audit date from cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| spaces/4L4EczL4rCp3jyJhAxHG/uploads/fkk0363x576TeYPz9Dww/Ionic_Protocol_-_Zellic_Audit_Report.pdf | FuseFeeDistributor | unmatched — not counted | — | listed in scope | no |
| spaces/4L4EczL4rCp3jyJhAxHG/uploads/fkk0363x576TeYPz9Dww/Ionic_Protocol_-_Zellic_Audit_Report.pdf | FusePoolDirectory | unmatched — not counted | — | listed in scope | no |
| spaces/4L4EczL4rCp3jyJhAxHG/uploads/fkk0363x576TeYPz9Dww/Ionic_Protocol_-_Zellic_Audit_Report.pdf | FusePoolLens | unmatched — not counted | — | listed in scope | no |
| spaces/4L4EczL4rCp3jyJhAxHG/uploads/fkk0363x576TeYPz9Dww/Ionic_Protocol_-_Zellic_Audit_Report.pdf | FusePoolLensSecondary | unmatched — not counted | — | listed in scope | no |
| spaces/4L4EczL4rCp3jyJhAxHG/uploads/fkk0363x576TeYPz9Dww/Ionic_Protocol_-_Zellic_Audit_Report.pdf | FuseSafeLiquidator | unmatched — not counted | — | listed in scope | no |
| spaces/4L4EczL4rCp3jyJhAxHG/uploads/fkk0363x576TeYPz9Dww/Ionic_Protocol_-_Zellic_Audit_Report.pdf | ChainlinkPriceOracleV2 | unmatched — not counted | — | listed in scope | no |
| spaces/4L4EczL4rCp3jyJhAxHG/uploads/fkk0363x576TeYPz9Dww/Ionic_Protocol_-_Zellic_Audit_Report.pdf | CurveLpTokenPriceOracleNoRegistry | unmatched — not counted | — | listed in scope | no |
| spaces/4L4EczL4rCp3jyJhAxHG/uploads/fkk0363x576TeYPz9Dww/Ionic_Protocol_-_Zellic_Audit_Report.pdf | MasterPriceOracle | unmatched — not counted | — | listed in scope | no |
| spaces/4L4EczL4rCp3jyJhAxHG/uploads/fkk0363x576TeYPz9Dww/Ionic_Protocol_-_Zellic_Audit_Report.pdf | UniswapTwapPriceOracleV2 | unmatched — not counted | — | listed in scope | no |
| spaces/4L4EczL4rCp3jyJhAxHG/uploads/fkk0363x576TeYPz9Dww/Ionic_Protocol_-_Zellic_Audit_Report.pdf | BlockVerifier | unmatched — not counted | — | listed in scope | no |
| spaces/4L4EczL4rCp3jyJhAxHG/uploads/fkk0363x576TeYPz9Dww/Ionic_Protocol_-_Zellic_Audit_Report.pdf | MerklePatriciaVerifier | unmatched — not counted | — | listed in scope | no |
| spaces/4L4EczL4rCp3jyJhAxHG/uploads/fkk0363x576TeYPz9Dww/Ionic_Protocol_-_Zellic_Audit_Report.pdf | UniswapOracle | unmatched — not counted | — | listed in scope | no |
| spaces/4L4EczL4rCp3jyJhAxHG/uploads/fkk0363x576TeYPz9Dww/Ionic_Protocol_-_Zellic_Audit_Report.pdf | UQ112x112 | unmatched — not counted | — | listed in scope | no |
| spaces/4L4EczL4rCp3jyJhAxHG/uploads/fkk0363x576TeYPz9Dww/Ionic_Protocol_-_Zellic_Audit_Report.pdf | CurveLpTokenLiquidatorNoRegistry | unmatched — not counted | — | listed in scope | no |
| spaces/4L4EczL4rCp3jyJhAxHG/uploads/fkk0363x576TeYPz9Dww/Ionic_Protocol_-_Zellic_Audit_Report.pdf | JarvisSynthereumLiquidator | unmatched — not counted | — | listed in scope | no |
| spaces/4L4EczL4rCp3jyJhAxHG/uploads/fkk0363x576TeYPz9Dww/Ionic_Protocol_-_Zellic_Audit_Report.pdf | XBombLiquidator | unmatched — not counted | — | listed in scope | no |
| spaces/4L4EczL4rCp3jyJhAxHG/uploads/fkk0363x576TeYPz9Dww/Ionic_Protocol_-_Zellic_Audit_Report.pdf | AlpacaERC4626 | unmatched — not counted | — | listed in scope | no |
| spaces/4L4EczL4rCp3jyJhAxHG/uploads/fkk0363x576TeYPz9Dww/Ionic_Protocol_-_Zellic_Audit_Report.pdf | AutofarmERC4626 | unmatched — not counted | — | listed in scope | no |
| spaces/4L4EczL4rCp3jyJhAxHG/uploads/fkk0363x576TeYPz9Dww/Ionic_Protocol_-_Zellic_Audit_Report.pdf | BeefyERC4626 | unmatched — not counted | — | listed in scope | no |
| spaces/4L4EczL4rCp3jyJhAxHG/uploads/fkk0363x576TeYPz9Dww/Ionic_Protocol_-_Zellic_Audit_Report.pdf | BombERC4626 | unmatched — not counted | — | listed in scope | no |
| spaces/4L4EczL4rCp3jyJhAxHG/uploads/fkk0363x576TeYPz9Dww/Ionic_Protocol_-_Zellic_Audit_Report.pdf | EllipsisERC4626 | unmatched — not counted | — | listed in scope | no |
| spaces/4L4EczL4rCp3jyJhAxHG/uploads/fkk0363x576TeYPz9Dww/Ionic_Protocol_-_Zellic_Audit_Report.pdf | Rlp | unmatched — not counted | — | listed in scope | no |
| spaces/4L4EczL4rCp3jyJhAxHG/uploads/fkk0363x576TeYPz9Dww/Ionic_Protocol_-_Zellic_Audit_Report.pdf | UniswapTwapPriceOracleV2Root | unmatched — not counted | — | mentioned in finding 3.1 as target | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 49 |
| upstream | 3 |
| standard_library | 3 |
| needs_review | 28 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 23 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [2937] spaces/4L4EczL4rCp3jyJhAxHG/uploads/fkk0363x576TeYPz9Dww/Ionic_Protocol_-_Zellic_Audit_Report.pdf

Fork inheritance lineage and inherited audits are included when available.
