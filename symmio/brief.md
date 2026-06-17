# Agentic Audit Brief: SYMMIO

## Project Overview

- Project: SYMMIO (`symmio`)
- Website: [https://www.symm.io/](https://www.symm.io/)
- Lifecycle: active (Tier 0, 63.3% below peak)
- Generated: 2026-06-17T07:00:52.377Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, base, berachain, bsc, mantle, mode, polygon, sonic
- Contract surface: 166 unique implementations (631 raw deployments)
- DeFi Llama TVL: $3,354,144.16
- On-chain TVL (included contracts): $1.00
- TVL by chain: Base $1.00

## Project Description

SYMMIO is a hybrid, intent-based derivatives clearing protocol for OTC and derivatives markets. It enables frontend builders and users to express trading intents that can be matched or serviced by solver-enabled counterparties, creating bilateral agreements between traders and hedgers/liquidity providers. Its on-chain architecture handles collateral, settlement, risk management, liquidations, fee distribution, and multi-account workflows across supported deployments. The PartyA/PartyB model and Diamond/facet contracts are implementation details of this bilateral clearing system rather than the full product scope.

### Architecture

The Core Trading Engine relies on the Diamond proxy to integrate facets for trading, accounts, and liquidations, while PartyB contracts (SymmioPartyB, HedgerPartyBV7) act as counterparties. Fee Distributors collect fees from trading activity and distribute them according to protocol rules. Depositor and Account Management contracts interface with the trading engine to manage user funds and sub-accounts, and Incentive contracts like Rakeback and RFL reward users based on their trading and liquidity activity.

## Contract Surface Quality

- Indexed contracts: 1106; live-surface contracts included: 631 (59 live, 572 unknown).
- Excluded by liveness: 210 inactive, 265 singleton, 0 uninitialized.
- Deployment units: 2/121 live.
- Detected codebases: none
- Unverified dependencies: 4/12.

## Audit Coverage Summary

- Verified implementations audited: 0/83 (0.0%)
- Verified + Unaudited implementations: 78
- Verified by bytecode match: 5
- Unverified implementations: 83
- Unique implementations: 166
- Raw deployments: 631
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $1.00
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (78)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MultiAccount | core_logic | base | unit-31853 | [`0x8ab178...3f3b86`](./contracts/base-8453/0x8ab178c07184ffd44f0adff4ea2ce6cfc33f3b86/) | ⚠️ Unaudited |
| AccountFacet | unknown | base | n/a | 26 deployments: bsc `0x1a4fc5...19e05f`; bsc `0x78eb97...2f5d42`; bsc `0x9ceb86...02d6af`; polygon `0x2ecc7d...0838b5`; polygon `0x58066f...8eac2a`; polygon `0x9f8f9d...92c2cb`; polygon `0x9ff6f7...781355`; polygon `0xa90b7e...fa91c8`; polygon `0xe53f37...cb63cc`; polygon `0xe55ff3...70593d`; polygon `0xfac8bf...8841ae`; base [`0x038971...c2155d`](./contracts/base-8453/0x038971fc4480f022156de26d6ca27fa1adc2155d/); base `0x042aa1...6d3534`; base `0x20328c...1f2fa0`; base `0x245ea9...9335c4`; base `0x40e3f6...1a4f27`; base `0x435643...68b863`; base `0x5d9c42...7b2361`; base `0x8df7da...4218d7`; base `0x9be79d...b9b932`; base `0xad8e10...19711e`; base `0xd1315a...0e770b`; arbitrum `0x356ecc...da19a1`; arbitrum `0x3adc81...ae6cde`; arbitrum `0xbd80e1...85f989`; arbitrum `0xca9056...2030c7` | ⚠️ Unaudited |
| AirdropHelper | operational_periphery | base | n/a | 2 deployments: base [`0x5a25cc...fef671`](./contracts/base-8453/0x5a25cc94d628fedba715064bf101f24a81fef671/); base `0xec8d99...d43c69` | ⚠️ Unaudited |
| BaseSwapper | adapter | base | n/a | 4 deployments: base [`0x2a4563...40415f`](./contracts/base-8453/0x2a456340793675dc1c8f4ca540013f0c7440415f/); base `0x2df447...ac6807`; base `0x5d389c...4ffda0`; base `0xe877d6...a7a6ce` | ⚠️ Unaudited |
| BatchSetForceCloseGapRatio | periphery | base | n/a | 5 deployments: bsc `0x7643f6...8815c4`; bsc `0x91813a...ddcc87`; polygon `0x66584f...20115b`; base [`0x361808...1e1320`](./contracts/base-8453/0x361808047235cddeb87482508b3ccc043d1e1320/); arbitrum `0x7b914c...8af701` | ⚠️ Unaudited |
| BatchSymbolTradingFee | periphery | arbitrum | n/a | [`0x2e7540...58a306`](./contracts/arbitrum-42161/0x2e7540325a4a0ebfe46ad9ab35ddd7a91d58a306/) | ⚠️ Unaudited |
| BitmapViewFacet | unknown | bsc | n/a | [`0x6e5499...6d2064`](./contracts/bsc-56/0x6e54994f60f5e0e3d0dd5d173831b43a7e6d2064/) | ⚠️ Unaudited |
| BridgeFacet | operational_periphery | base | n/a | 14 deployments: bsc `0x69fce0...6a194c`; bsc `0x8cae94...73d43d`; polygon `0x8083e5...288e29`; polygon `0x8e75d5...20e8e1`; polygon `0xc82637...27f8d2`; polygon `0xd41b66...66a2b3`; base [`0x2948d2...a78469`](./contracts/base-8453/0x2948d25814fc0d58e94af32a3173613b9aa78469/); base `0x594982...15f310`; base `0x9ea0a1...db9370`; base `0xc1f913...884717`; base `0xdc8429...00c9ee`; arbitrum `0x5485af...7a5660`; arbitrum `0xc9a868...81d52f`; arbitrum `0xdc983b...aef179` | ⚠️ Unaudited |
| ClearingHouseFacet | unknown | polygon | n/a | 3 deployments: polygon [`0x77e706...d876b6`](./contracts/polygon-137/0x77e7067c23d992e5d76e571d543626167bd876b6/); polygon `0xaa6902...284cfa`; polygon `0xcccd87...4a37ab` | ⚠️ Unaudited |
| ControlFacet | unknown | polygon | n/a | 26 deployments: bsc `0x169953...ae452f`; bsc `0x296700...356875`; bsc `0xdddf59...cbf543`; bsc `0xf2ef83...155cc3`; polygon [`0x06e98c...70d604`](./contracts/polygon-137/0x06e98c28e70c54279170844be279b4647c70d604/); polygon `0x0e35fa...3f39ac`; polygon `0x19b368...3bd0fc`; polygon `0x1f3451...595039`; polygon `0x5f6de4...8f1a98`; polygon `0x72b245...bc2ecd`; polygon `0xb74629...a4c395`; polygon `0xc4855e...d39e6f`; polygon `0xe7f67c...324794`; polygon `0xf0ab04...217e28`; base `0x2c1c49...3e2358`; base `0x6f93ca...ae054a`; base `0x8e2747...ad6b72`; base `0x924674...43ecba`; base `0x99eba3...91d574`; base `0xa2a7d5...499e92`; base `0xd5063b...ab6fac`; base `0xe1e3b7...5b5296`; arbitrum `0x50b127...f4e691`; arbitrum `0x91834f...4c634d`; arbitrum `0xb5076d...c6f33a`; arbitrum `0xecbd07...26e456` | ⚠️ Unaudited |
| Create2Factory | registry | base | n/a | [`0x671b52...cd7160`](./contracts/base-8453/0x671b527046163b025aa30bf5cf506c8ec2cd7160/) | ⚠️ Unaudited |
| DiamondCutFacet | unknown | polygon | n/a | 16 deployments: bsc `0xf91382...739c7c`; polygon [`0x12fed7...2d2ec6`](./contracts/polygon-137/0x12fed7daa1375a96bee0e0d291cbc18cb82d2ec6/); polygon `0x1d5a4f...289335`; polygon `0x322072...91c5c1`; polygon `0x57be05...f48ef0`; polygon `0x59b00d...4608f4`; polygon `0x7da6f2...23dd92`; polygon `0x8a5010...40d4fd`; polygon `0x8ee0ef...4e0bc8`; polygon `0xdf5eae...4ef3c0`; polygon `0xe92ff6...b2c80d`; polygon `0xf3e94e...2efb6a`; base `0x6d87fb...23a300`; base `0x74aa0c...3ef2bc`; arbitrum `0x7143e6...6dc9cb`; arbitrum `0xf39352...86684e` | ⚠️ Unaudited |
| DiamondInit | unknown | polygon | n/a | 9 deployments: bsc `0xda7e34...b4a369`; polygon [`0x464873...c688f0`](./contracts/polygon-137/0x464873026877c9d947e2778a1b4cb4a3cbc688f0/); polygon `0xa06967...b24d43`; polygon `0xa4e81e...49f604`; polygon `0xbd1c63...33c97e`; base `0x7c3cff...1cc665`; base `0xe516f0...9fbf5a`; arbitrum `0x663db7...dbcbbc`; arbitrum `0xd6ee1f...f02a5e` | ⚠️ Unaudited |
| DiamondLoupeFacet | unknown | polygon | n/a | 18 deployments: bsc `0x30b78d...07795d`; bsc `0x7195d6...b2323d`; polygon [`0x0b6014...61d50a`](./contracts/polygon-137/0x0b60140dcc98a6a9e9985ab165dc54903861d50a/); polygon `0x50658f...fca89d`; polygon `0x62077a...1d2dbf`; polygon `0x6a9536...91cad2`; polygon `0x99886d...d95519`; polygon `0xc02c6f...256d15`; polygon `0xdea508...4b2eec`; polygon `0xf7a0ba...4902fb`; polygon `0xfbadc2...da7c0a`; base `0x0f1299...083aee`; base `0x262839...ac63bb`; base `0x8d3abb...9cbefc`; base `0xa0e786...48bb2b`; arbitrum `0x45c3e2...552ba9`; arbitrum `0x504423...d56648`; arbitrum `0xa7f7c8...692342` | ⚠️ Unaudited |
| FakeOracle | operational_periphery | polygon | n/a | [`0xc230ad...11b048`](./contracts/polygon-137/0xc230ad3823eeccdcfeb2addfa4f99a0a1c11b048/) | ⚠️ Unaudited |
| FakeStablecoin | token | polygon | n/a | 3 deployments: polygon [`0x50e88c...e0d5ba`](./contracts/polygon-137/0x50e88c692b137b8a51b6017026ef414651e0d5ba/); base `0xf666e0...6c7c8e`; arbitrum `0x5aee30...6de896` | ⚠️ Unaudited |
| FundingRateFacet | unknown | bsc | n/a | 19 deployments: bsc [`0x0b7884...a57798`](./contracts/bsc-56/0x0b7884a7caa481e5a87d45251e57e38614a57798/); bsc `0x8d4e3e...925c1c`; bsc `0xa90b7e...fa91c8`; bsc `0xf6f18b...a22f2f`; polygon `0x4d8e97...bbec55`; polygon `0x8c466c...3114f2`; polygon `0x9ae5ae...598ec2`; polygon `0xbd4375...3bf4b3`; polygon `0xdfdba8...c0d70d`; polygon `0xe0274e...6a6508`; base `0x3e7031...2af1ab`; base `0x64f6bc...796842`; base `0x7d6ea8...5a206b`; base `0xe2e705...a28b7b`; base `0xf8e5ef...3467cb`; arbitrum `0x0fb857...87904e`; arbitrum `0x34ca2e...daf361`; arbitrum `0x5d51e7...12c079`; arbitrum `0xe6a62c...09259d` | ⚠️ Unaudited |
| HedgerPartyBV2 | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xaf3e73...48c52b`](./contracts/arbitrum-42161/0xaf3e73934137e0d749e349e3788d3cea0348c52b/); arbitrum `0xfc52ce...5b4d2c` | ⚠️ Unaudited |
| HedgerPartyBV3 | unknown | base | n/a | 4 deployments: base [`0x7cb60d...bfe4d7`](./contracts/base-8453/0x7cb60df8803057f5d6a64f75d8d06121dcbfe4d7/); base `0xeb7bd7...27ca80`; arbitrum `0xf1d4d9...ec1707`; arbitrum `0xff97a4...586d8f` | ⚠️ Unaudited |
| HedgerPartyBV4 | unknown | sonic | n/a | 6 deployments: sonic [`0x00c069...742421`](./contracts/sonic-146/0x00c069d68bc7420740460dbc3cc3fff9b3742421/); sonic `0xdfed11...1ed432`; base `0x7c2c40...2d69c3`; base `0xb74d58...93f254`; arbitrum `0xb72e1e...7cc315`; arbitrum `0xcc8742...d61bce` | ⚠️ Unaudited |
| HedgerPartyBV6 | unknown | bsc | unit-31788 | [`0xd5a075...2982da`](./contracts/bsc-56/0xd5a075c88a4188d666fa1e4051913be6782982da/) | ⚠️ Unaudited |
| HedgerPartyBV7 | unknown | mode | n/a | 2 deployments: mode [`0x2473a1...4a342f`](./contracts/mode-34443/0x2473a1fe81b1077348c008c8d4ef2d1f6d4a342f/); mode `0x87fc46...536eb7` | ⚠️ Unaudited |
| InstantActionsCloseFacet | unknown | polygon | n/a | [`0x61f007...3d8c11`](./contracts/polygon-137/0x61f007c2fc4f81916ab7d4b2a3345e14aa3d8c11/) | ⚠️ Unaudited |
| InstantActionsOpenFacet | unknown | polygon | n/a | [`0x8f4c80...fb5510`](./contracts/polygon-137/0x8f4c80bb159d58f0476524a15e3925111afb5510/) | ⚠️ Unaudited |
| InterdealerFacet | unknown | polygon | n/a | [`0x6ae54f...c53e30`](./contracts/polygon-137/0x6ae54f95bdd54b006366239fea74a61d17c53e30/) | ⚠️ Unaudited |
| LimitedSymbolAdder | unknown | bsc | n/a | 10 deployments: bsc [`0x064f88...f8f557`](./contracts/bsc-56/0x064f8833093cd61cc7bce4541123b7b0b9f8f557/); bsc `0x08ffa4...87bcbe`; bsc `0xa91ddf...7fb7da`; polygon `0x273f42...346d9a`; polygon `0x3716bd...351fd5`; base `0xa3d2b4...1ac4c8`; base `0xcf40fb...14051d`; arbitrum `0x082611...ccf3a2`; arbitrum `0x75bd49...096f71`; arbitrum `0xeb1462...69c974` | ⚠️ Unaudited |
| LiquidationFacet | unknown | base | n/a | 17 deployments: bsc `0x4d00ad...d5698f`; bsc `0x56116b...74694e`; bsc `0xaa7afc...ac5e36`; polygon `0x50154e...b8b1c6`; polygon `0x599f39...dcc730`; polygon `0x5ec162...91e71c`; polygon `0x61662e...28f5f4`; polygon `0x6ae148...e32403`; polygon `0x8a3079...35e83a`; polygon `0xf395ad...ce81ed`; base [`0x15df9a...ac5f11`](./contracts/base-8453/0x15df9aacdc65e5a4cab2d89211145dadc8ac5f11/); base `0x36dc7c...c3924e`; base `0xb558fc...c8588c`; base `0xedf731...c9f85d`; arbitrum `0xaeca7c...bcaae6`; arbitrum `0xd8b5f4...fe0d57`; arbitrum `0xd9d234...4493d2` | ⚠️ Unaudited |
| MagnusSymmioPartyB | unknown | base | n/a | 2 deployments: base [`0x2ca101...84cf2d`](./contracts/base-8453/0x2ca101e49956548f493beab1b4615113a084cf2d/); base `0xfa1b8e...48243e` | ⚠️ Unaudited |
| MagSymSymmioPartyB | unknown | base | n/a | 3 deployments: base [`0xa5bce2...bfbce3`](./contracts/base-8453/0xa5bce25b4dbd7fdf2b241ba9440dd07590bfbce3/); base `0xc56ab2...025f27`; base `0xfb3314...2459d6` | ⚠️ Unaudited |
| MultiAccount | core_logic | mantle | unit-31819 | [`0xecbd07...26e456`](./contracts/mantle-5000/0xecbd0788bb5a72f9dfdac1ffeaaf9b7c2b26e456/) | ⚠️ Unaudited |
| MultiAccount | core_logic | base | n/a | 25 deployments: bsc `0x5573b1...158d1d`; bsc `0xd41b66...66a2b3`; polygon `0x8f0645...b39395`; polygon `0xaeac16...4486df`; sonic `0x1ecabf...0592cf`; sonic `0x8a67b0...3fb2ae`; base [`0x017218...f6859a`](./contracts/base-8453/0x0172181763f2accab3e5284ea42bb6c1ccf6859a/); base `0x21052b...ca988a`; base `0x244189...9a1cc2`; base `0x27a239...3ca141`; base `0x2e7c86...02ca3e`; base `0x3bc0cd...83c2d5`; base `0x4133bc...25158e`; base `0x47c73a...8f1190`; base `0x4a85fa...935129`; base `0x8ccaa9...44ac8a`; base `0x925342...f8278a`; base `0xc6268e...aa5e0d`; base `0xc8320d...1e8f2b`; base `0xd62778...f7e764`; base `0xdfcd68...c265a8`; base `0xe597ca...c26a99`; base `0xec2947...6b8bf5`; base `0xf24d94...b38afb`; base `0xf3a293...2fcb0c` | ⚠️ Unaudited |
| MultiAccount | core_logic | base | unit-31828 | [`0x1c03b6...78b780`](./contracts/base-8453/0x1c03b6480a4efc2d4123ba90d7857f0e1878b780/) | ⚠️ Unaudited |
| MultiAccount | core_logic | base | unit-31844 | [`0x6d6392...719ddd`](./contracts/base-8453/0x6d63921d8203044f6abad8f346d3aea9a2719ddd/) | ⚠️ Unaudited |
| MultiAccount | core_logic | arbitrum | unit-31877 | [`0x141269...f20109`](./contracts/arbitrum-42161/0x141269e29a770644c34e05b127ab621511f20109/) | ⚠️ Unaudited |
| MultiAccount | core_logic | berachain | unit-31890 | [`0x703c49...aaddb6`](./contracts/berachain-80094/0x703c4927945aac2b5a76f4c1d85bc85e6faaddb6/) | ⚠️ Unaudited |
| MultiAccountV2 | core_logic | berachain | n/a | 11 deployments: sonic `0xce932c...3bf2fa`; sonic `0xfca1a8...29acc6`; mantle `0x4b8233...6b6c30`; mantle `0x908bd6...0ef95e`; base `0x15c41e...b4168c`; mode `0xb430bc...6595bd`; mode `0xdacddd...ff0d13`; arbitrum `0xb0eb34...3bfb0b`; arbitrum `0xcf6a14...b372a1`; berachain [`0x05198f...e25ba7`](./contracts/berachain-80094/0x05198fab85c3b1fbd06729fe6bfc6edaf3e25ba7/); berachain `0xb53f33...695059` | ⚠️ Unaudited |
| MultiCall | periphery | base | n/a | 5 deployments: bsc `0x1a131a...e5c3f7`; base [`0x0fc53f...a50cc4`](./contracts/base-8453/0x0fc53fc604709a763a0cf6ff5dd3943cc6a50cc4/); arbitrum `0x5ba275...d1d597`; arbitrum `0x8aa3b1...2219dd`; arbitrum `0x94641e...76efe7` | ⚠️ Unaudited |
| MultiCall | periphery | base | unit-31862 | [`0xaa4756...1cfa21`](./contracts/base-8453/0xaa47566551e032ca2a847abf8da29c7a331cfa21/) | ⚠️ Unaudited |
| Multicall3 | periphery | base | n/a | [`0xc943c7...e3fcfb`](./contracts/base-8453/0xc943c7c06eb871f4b86dec9f2132d5e3cce3fcfb/) | ⚠️ Unaudited |
| MuonClient | unknown | base | n/a | [`0xa153be...da0463`](./contracts/base-8453/0xa153bec5630db1dc2c0b4919204f7a0f22da0463/) | ⚠️ Unaudited |
| PartyACloseFacet | governance | polygon | n/a | [`0x3f0602...3ac70f`](./contracts/polygon-137/0x3f0602138441a1379bf090e604a6ff3ca73ac70f/) | ⚠️ Unaudited |
| PartyAFacet | unknown | polygon | n/a | 29 deployments: bsc `0x3716bd...351fd5`; bsc `0x760c1c...b110f8`; bsc `0x993bc0...59ff5f`; bsc `0xd896a3...bd933d`; polygon [`0x0532c5...e6fb22`](./contracts/polygon-137/0x0532c5008a9214e669c41ce782c0e64095e6fb22/); polygon `0x30e54c...765915`; polygon `0x62fe73...ec1c2b`; polygon `0x68fbcb...128c40`; polygon `0x820263...3af972`; polygon `0x8452ed...258538`; polygon `0x864fc7...600898`; polygon `0x8f00a4...946953`; polygon `0x9fa01a...2ed2d6`; polygon `0xc10d7e...ba8b5c`; polygon `0xda1e4f...56fa8a`; polygon `0xeb1462...69c974`; polygon `0xf1a281...b80e2b`; polygon `0xf8ae53...4b550d`; base `0x07139b...5e0d78`; base `0x6caee2...278fba`; base `0x831a02...41d67a`; base `0x878de0...c2cb5c`; base `0xa04672...ab31cd`; base `0xb3d411...93c9e1`; base `0xc3ce7a...b7ab9c`; arbitrum `0x6ea2ef...b628b2`; arbitrum `0x803de3...7a72e3`; arbitrum `0x87a1f9...965168`; arbitrum `0xd6bddf...39aa8d` | ⚠️ Unaudited |
| PartyAOpenFacet | unknown | polygon | n/a | [`0x40e70a...78db31`](./contracts/polygon-137/0x40e70a60fd45f9f61030ff8d4ec4d475b678db31/) | ⚠️ Unaudited |
| PartyBCloseFacet | unknown | polygon | n/a | [`0xa0452c...419774`](./contracts/polygon-137/0xa0452cb1b952782325e11e99929e561797419774/) | ⚠️ Unaudited |
| PartyBFacet | unknown | polygon | n/a | 13 deployments: bsc `0x273f42...346d9a`; bsc `0x8fd07a...1a532d`; bsc `0x9c8fe7...aa2653`; polygon [`0x080dd3...2cce19`](./contracts/polygon-137/0x080dd3a713dd13a732efbcfbfe7c1ba45c2cce19/); polygon `0x50732b...1ad98f`; polygon `0x5e0663...069934`; polygon `0xa46e5d...d381b4`; polygon `0xbc7204...4b88c2`; polygon `0xc2d984...d34e84`; base `0x727133...5f33cd`; base `0x91ba24...38f2ef`; arbitrum `0x1a521c...8d38b4`; arbitrum `0xcccda5...4b9ad8` | ⚠️ Unaudited |
| PartyBGroupActionsFacet | unknown | arbitrum | n/a | 10 deployments: bsc `0x1bf566...551e6e`; bsc `0x64e4d3...3b2855`; bsc `0xacc129...7a1a29`; bsc `0xf10984...8d959a`; polygon `0xd86727...20cca2`; base `0x397e99...dda35c`; base `0x4e360c...0d6a74`; base `0x7049f4...92c8de`; arbitrum [`0x13cfd2...04a60b`](./contracts/arbitrum-42161/0x13cfd2dfe11092a755ff2d6aecd33b3ea204a60b/); arbitrum `0xcf78ea...6665a2` | ⚠️ Unaudited |
| PartyBOpenFacet | unknown | polygon | n/a | [`0xb59251...fda98d`](./contracts/polygon-137/0xb592517201a6eb4343cf7adc270e8e0b53fda98d/) | ⚠️ Unaudited |
| PartyBPositionActionsFacet | unknown | bsc | n/a | 4 deployments: bsc [`0x0131fd...b6cc28`](./contracts/bsc-56/0x0131fdf62e1de497b536876d5fb5298d91b6cc28/); base `0x1052f9...3667c3`; base `0xa17617...8a01f4`; arbitrum `0x211541...f627eb` | ⚠️ Unaudited |
| PartyBQuoteActionsFacet | unknown | arbitrum | n/a | 8 deployments: bsc `0xcf8226...8c84e5`; polygon `0xaf1297...fe5f8a`; base `0x0ee043...55d305`; base `0x24e332...f3528e`; base `0x9f116f...80cd18`; base `0xe9d7b5...1c77bd`; arbitrum [`0x017474...5a3e56`](./contracts/arbitrum-42161/0x017474144617c8082f0182a241f1bcb9265a3e56/); arbitrum `0x45f0d4...935a04` | ⚠️ Unaudited |
| PayDence | unknown | base | n/a | 2 deployments: base [`0x2fb0ad...555645`](./contracts/base-8453/0x2fb0ad005c093447f802c050728bb14758555645/); base `0xfa827f...9310a4` | ⚠️ Unaudited |
| PrivateStorage | unknown | base | n/a | 2 deployments: base [`0xac401e...371589`](./contracts/base-8453/0xac401ebc212dd5ec3960c14c66ce4ebc52371589/); base `0xb9e6f1...73d308` | ⚠️ Unaudited |
| ProxyAdmin | governance | arbitrum | n/a | 56 deployments: bsc `0x32c130...c1c3fd`; bsc `0x3d4e59...f5989c`; bsc `0x592296...c6bd9e`; bsc `0x599f39...dcc730`; bsc `0xb2bb8b...5bbad6`; bsc `0xed6fee...014db2`; bsc `0xf0df46...1c76dd`; polygon `0x32a3f1...2c5dd9`; polygon `0xb924c1...4683d1`; polygon `0xd6ee1f...f02a5e`; sonic `0x3e09db...5849d3`; sonic `0x3e864a...ace120`; sonic `0x6255ab...8b8909`; sonic `0x6b44c8...09716e`; sonic `0x84da34...f3f191`; sonic `0x87fc46...536eb7`; sonic `0x8f3718...ea5787`; sonic `0x9303e1...75802c`; sonic `0xae16f9...c7f16a`; sonic `0xb6e3b4...8d62db`; sonic `0xccde63...d37f77`; sonic `0xd7a652...8c7133`; sonic `0xdb91d2...604426`; sonic `0xfc3f16...ee4864`; sonic `0xfc4ac3...dc6873`; base `0x30ce19...333efa`; base `0x333422...084969`; base `0x3b3c0b...1970db`; base `0x3b6037...434aca`; base `0x511839...366164`; base `0x5acd59...a44b1b`; base `0x5db3c6...be3157`; base `0x7ae785...a4d68c`; base `0x84da34...f3f191`; base `0x8a67b0...3fb2ae`; base `0x8f3718...ea5787`; base `0x942dd3...26d89f`; base `0xba2c07...d0dcf9`; base `0xfd661e...75f195`; mode `0xbc2683...5918e9`; mode `0xdfed11...1ed432`; mode `0xf25f5a...48ae4c`; arbitrum [`0x0392e9...1d7375`](./contracts/arbitrum-42161/0x0392e9cf758cd1566dab547fdaf3ddcfed1d7375/); arbitrum `0x12de03...4346e2`; arbitrum `0x3e864a...ace120`; arbitrum `0x6987f4...5d4e49`; arbitrum `0x700e21...66caf6`; arbitrum `0x87fc46...536eb7`; arbitrum `0x9f6d3e...83399e`; arbitrum `0xb32cef...2c9c8c`; arbitrum `0xe7502f...489808`; berachain `0x12de03...4346e2`; berachain `0x57c85e...8c0b27`; berachain `0x6b44c8...09716e`; berachain `0x729d9e...e0591f`; berachain `0x98a4b7...c80203` | ⚠️ Unaudited |
| Rakeback | unknown | base | n/a | 10 deployments: base [`0x1ddc70...5f61ed`](./contracts/base-8453/0x1ddc7038ed32c1137ef79e892c0b7d69485f61ed/); base `0x1f1a1c...6fd3af`; base `0x353842...bf77d0`; base `0x80d77d...701725`; base `0x868ca9...f5b82f`; base `0x878e74...fa2ab3`; base `0x954639...6e7d3c`; base `0xcee0da...be3646`; base `0xe5c360...a9f8b5`; base `0xeb806a...615f69` | ⚠️ Unaudited |
| RasaOffChainSymmioDepositor | unknown | base | n/a | 2 deployments: base [`0x44fd0b...fccd6d`](./contracts/base-8453/0x44fd0b2a4a358e72f011e240794d899480fccd6d/); base `0x5fe05d...afacae` | ⚠️ Unaudited |
| RewardNotifier | unknown | base | n/a | [`0xf7bad6...1b1b83`](./contracts/base-8453/0xf7bad65e10fb993fe7b8c0569f9d46556b1b1b83/) | ⚠️ Unaudited |
| RFL | unknown | base | n/a | 4 deployments: base [`0x3835c8...ede5e8`](./contracts/base-8453/0x3835c81a64ed1f17043b9b3f6534208027ede5e8/); base `0x97e352...f19a3e`; base `0xcc42a8...0332ca`; base `0xd66e4f...09104e` | ⚠️ Unaudited |
| SettlementFacet | unknown | arbitrum | n/a | 7 deployments: bsc `0x4f77a2...20a8e2`; polygon `0xd3102d...f6f9ef`; base `0x1cb8a3...f1eb48`; base `0x9afc2b...d3ecf9`; base `0xf1cb50...1aa6f0`; arbitrum [`0x185cb4...1e147c`](./contracts/arbitrum-42161/0x185cb4c923a9eefa9945989eb951005ab71e147c/); arbitrum `0x75c539...86e8b4` | ⚠️ Unaudited |
| SignatureStore | unknown | bsc | n/a | 9 deployments: bsc [`0x0592fe...9706c3`](./contracts/bsc-56/0x0592fef3c90b58a20212c1bdaf7c0f70c59706c3/); bsc `0x17edcb...e6002b`; bsc `0x1c1d04...46a117`; bsc `0x6ea2ef...b628b2`; bsc `0xcf8d72...eb5991`; base `0xc19e66...fb4996`; arbitrum `0x94eea5...e403e2`; arbitrum `0xb3b72f...f14fed`; arbitrum `0xebef48...9b5c4d` | ⚠️ Unaudited |
| SignatureVerifier | periphery | base | n/a | [`0x54b4c0...2b1482`](./contracts/base-8453/0x54b4c02ce6938c16fb19c0318fe8964ff12b1482/) | ⚠️ Unaudited |
| SymmAllocationClaimer | operational_periphery | base | n/a | 2 deployments: base [`0x232b72...e31f80`](./contracts/base-8453/0x232b72527e3692e78d7f6d73634fc4e100e31f80/); base `0x8377c2...b79634` | ⚠️ Unaudited |
| SymmBriber | operational_periphery | base | n/a | [`0xa25022...728b06`](./contracts/base-8453/0xa2502290b7a004359ed8364b47531f4067728b06/) | ⚠️ Unaudited |
| Symmio | unknown | base | n/a | 2 deployments: base [`0x800822...5b605f`](./contracts/base-8453/0x800822d361335b4d5f352dac293ca4128b5b605f/); base `0x8b551d...7b41cc` | ⚠️ Unaudited |
| SymmioDepositorLpToken | token | base | n/a | 4 deployments: bsc `0x8ff61b...4b1b3b`; bsc `0xff4486...f84bc0`; base [`0x1e1d00...de3153`](./contracts/base-8453/0x1e1d004ba6c37f3dfe24b8020e2d9b741dde3153/); base `0x7beca8...457020` | ⚠️ Unaudited |
| SymmioFeeDistributor | operational_periphery | arbitrum | n/a | [`0x82895a...e5081d`](./contracts/arbitrum-42161/0x82895a2e3d5cc74f76694edcaeec1da0e0e5081d/) | ⚠️ Unaudited |
| SymmioPartyB | unknown | base | n/a | 5 deployments: bsc `0x50658f...fca89d`; polygon `0xe9bdc2...a5b15c`; polygon `0xecbd07...26e456`; base [`0x26c572...a294d2`](./contracts/base-8453/0x26c572b793196b5bfc17042eb1caa9f904a294d2/); base `0xbc6823...031334` | ⚠️ Unaudited |
| SymmioPartyB | unknown | base | unit-31872 | [`0xecd1d9...2b20db`](./contracts/base-8453/0xecd1d9dc751316831d893b1ab3ef0d36392b20db/) | ⚠️ Unaudited |
| SymmioSwapHelper | periphery | arbitrum | n/a | 3 deployments: arbitrum [`0x5618c7...1a3ee2`](./contracts/arbitrum-42161/0x5618c747f4877f3c39689f6777156d0b831a3ee2/); arbitrum `0x9c9138...5c308f`; arbitrum `0xd2d78e...f3b62b` | ⚠️ Unaudited |
| SymmioTimelockController | governance | arbitrum | n/a | 8 deployments: bsc `0x3db312...68b0f5`; bsc `0x974bf2...273153`; bsc `0xcb8503...d6e3a1`; base `0x62d68c...1ccf2c`; base `0x8cf650...ee5ba4`; base `0x92e89b...7b014d`; arbitrum [`0x0cbf07...dacd95`](./contracts/arbitrum-42161/0x0cbf07176e67671c99222bebdb166efc58dacd95/); arbitrum `0xffe2c2...daf4af` | ⚠️ Unaudited |
| TargetRebalancer | adapter | mode | n/a | [`0x3e09db...5849d3`](./contracts/mode-34443/0x3e09dbfe0f6e82b8448a11fb082d44cd575849d3/) | ⚠️ Unaudited |
| TestViewFacet | unknown | bsc | n/a | 4 deployments: bsc [`0x0b946f...b7c23b`](./contracts/bsc-56/0x0b946fc3be1548934cf5d891cbf5fbd890b7c23b/); bsc `0x7a4cd2...898701`; bsc `0x8e95ce...3f2986`; bsc `0xe5f346...0dc600` | ⚠️ Unaudited |
| TokenLaunchOnAerodrome | token | base | n/a | [`0x8aa3d3...295af9`](./contracts/base-8453/0x8aa3d366c49674bed84e6adce52ca11e48295af9/) | ⚠️ Unaudited |
| TradeFacet | unknown | polygon | n/a | [`0x2c6381...5e7903`](./contracts/polygon-137/0x2c6381a398a96f8c5eb6cf9a6c62188caa5e7903/) | ⚠️ Unaudited |
| TradeSettlementFacet | unknown | polygon | n/a | [`0xaf10a9...8bed73`](./contracts/polygon-137/0xaf10a99d35354b8d07b7f2ea1ea334f6228bed73/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | bsc | n/a | 8 deployments: bsc [`0x3aad3e...4b4c4f`](./contracts/bsc-56/0x3aad3e54e2a08b96b9f19f51f4e9489e694b4c4f/); bsc `0x3ff5d2...2c85fa`; bsc `0xacdd6a...b3f839`; sonic `0x960bdc...e3a020`; mode `0x3f1913...4373e0`; mode `0x78e76a...890543`; mode `0xc0ff4b...a2a904`; mode `0xde6446...757377` | ⚠️ Unaudited |
| UserPowers | unknown | base | n/a | 4 deployments: base [`0x6eb41d...760aa4`](./contracts/base-8453/0x6eb41d755dc71bd7e9e6a6a78513cdc726760aa4/); base `0xb93475...1080f2`; base `0xed259a...7cc20a`; arbitrum `0x99c430...c5c69b` | ⚠️ Unaudited |
| ViewFacet | unknown | base | n/a | 20 deployments: bsc `0x2e0d2f...d82737`; bsc `0x6ee495...d73753`; bsc `0xaf0d00...7e876f`; polygon `0x240fcc...3c11e6`; polygon `0x650a2d...5a1cf3`; polygon `0x739691...5e4ead`; polygon `0x7e8b57...dd98d3`; polygon `0x832036...67dd02`; polygon `0xa30bf8...c8a858`; polygon `0xa532e4...86d015`; polygon `0xf9ab8b...432c8c`; base [`0x13ed7b...dcf95e`](./contracts/base-8453/0x13ed7bf7686d9d57c62b466e6110b0d9d1dcf95e/); base `0x8dd419...0980bb`; base `0xa4f237...e79451`; base `0xdb96fd...4a4b56`; base `0xf79f27...941611`; arbitrum `0x48b9a8...2a237a`; arbitrum `0x5b5c7b...53be63`; arbitrum `0x67d3bb...1b9054`; arbitrum `0xcb7c88...227a14` | ⚠️ Unaudited |
| ZenithSymmioPartyB | unknown | base | n/a | 3 deployments: base [`0x1844c0...c9c9b5`](./contracts/base-8453/0x1844c0a3c403139d36d4dfe80cbf9e3b49c9c9b5/); base `0x1bdff5...4eac91`; base `0xfec6d2...91d0cf` | ⚠️ Unaudited |
| ZenithTestSymmioPartyB | unknown | base | n/a | [`0x94d2c4...b40d09`](./contracts/base-8453/0x94d2c48821f7667923d7656acc3529b953b40d09/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (5)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Diamond | unknown | berachain | n/a | 7 deployments: polygon `0x7bdc80...bc808b`; polygon `0x91009d...d5d603`; polygon `0x976c87...54537b`; polygon `0xb2b17c...f250b3`; sonic `0x803de3...7a72e3`; arbitrum `0x509980...552b58`; berachain [`0x3d17f0...77d266`](./contracts/berachain-80094/0x3d17f073ccb9c3764f105550b0bcf9550477d266/) | ⚠️ Unaudited (bytecode match) |
| ForceActionsFacet | unknown | base | n/a | 19 deployments: bsc `0x644449...97b09d`; bsc `0x9f6a21...95445c`; bsc `0xa352b7...c9813a`; bsc `0xa8dca2...25441a`; bsc `0xdde104...0815b6`; bsc `0xf201ad...25d8a0`; polygon `0x4fa415...a96dc9`; polygon `0x574434...10f0f1`; polygon `0x693ace...ce1a67`; polygon `0x72a915...df4cd3`; polygon `0xc1d9b2...67ca26`; base [`0x2491a9...3bc1fc`](./contracts/base-8453/0x2491a9a56b13b1403d5d790b50406c2fdd3bc1fc/); base `0x6d1e85...4ad1b5`; base `0x7331e3...2813aa`; base `0x8d0a7a...fa11db`; arbitrum `0x2a26a2...273284`; arbitrum `0x4a17c9...d2496c`; arbitrum `0xe64223...0e1dd3`; arbitrum `0xf0df46...1c76dd` | ⚠️ Unaudited (bytecode match) |
| HedgerPartyBV5 | unknown | mantle | n/a | 6 deployments: sonic `0x6b2903...d1576e`; mantle [`0x1b5893...c0a7fe`](./contracts/mantle-5000/0x1b58936910d5ee8228b20e104d61594df8c0a7fe/); base `0x29a69b...eedf86`; mode `0x93953c...a5a593`; arbitrum `0x6e9753...ac443c`; berachain `0xa801ea...e6840c` | ⚠️ Unaudited (bytecode match) |
| HedgerPartyBV6 | unknown | base | n/a | 6 deployments: sonic `0x2e7b7f...0de684`; mantle `0x47bac7...171530`; base [`0x2487bb...3c163b`](./contracts/base-8453/0x2487bb7dd1bb0d7d736b4c8c7dc32dbe643c163b/); mode `0xc2cee5...a17afc`; arbitrum `0xe53197...d829f6`; berachain `0xf27f94...02ba1f` | ⚠️ Unaudited (bytecode match) |
| SymmioSymbolManager | governance | bsc | n/a | 28 deployments: bsc [`0x055369...ec9d7f`](./contracts/bsc-56/0x055369013f50b9f8a088a4202e5f1c125cec9d7f/); bsc `0x0df0ef...a555a6`; bsc `0x1f5771...5ea0e0`; bsc `0x285a77...d41667`; bsc `0x2e7f92...e1f3cd`; bsc `0x657a15...e6ff4b`; bsc `0x971b61...ec762b`; bsc `0xb1ed3a...5acb74`; bsc `0xb69e53...2a6b15`; bsc `0xf0aea5...80a13f`; polygon `0x505016...d62e01`; polygon `0x9a09fb...e469c9`; polygon `0xd99778...a559d7`; sonic `0x3cce95...9c2776`; base `0x1060e8...012292`; base `0x4525af...c3f4c9`; base `0x9a13a3...aa268d`; base `0xc51efe...d91332`; base `0xc88edf...05f8d3`; base `0xcd740b...9ebe20`; base `0xe07f8a...37c730`; mode `0xfd9b6b...a027f3`; arbitrum `0x2f374c...5f1a12`; arbitrum `0x5d55d6...32700b`; arbitrum `0x644d05...727738`; arbitrum `0xba45a0...32363c`; arbitrum `0xe07e63...efaa3c`; berachain `0x152a8e...53e6d6` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (83)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x048028...a32ed4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0ef600...ec2c80` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x19ff76...695763` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1b2a94...912abe` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x246f81...4d21b2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x32bfb8...404fef` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x51429c...b0f44b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x52dab1...e14942` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x540598...952638` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x586860...d4ef4a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6a36a8...1d905a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9b79e9...1e014d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa3f2bc...a1ef66` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb084a3...d47b2f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd92def...04192f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe5e140...e880c8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe5ef21...752c61` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf3c6c0...801fc4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x182657...5b151d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3d17f0...77d266` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x49e682...3b8f28` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4ffe33...92d369` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x528044...c37bba` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x562cfc...24cf48` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9d4c16...dffb05` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xba5d20...c369fa` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc126ce...b75770` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc818f5...8f853e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xcf74c4...ba69d9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd503a8...7f21e3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xda7011...34a992` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x02ca85...1949ee` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x02d2ca...f34f9a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x034b7d...77ea5b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x061489...392ff8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0624d9...ea0145` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x10926a...25d664` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x116598...76920b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1ed014...f5de54` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x222591...45e8f2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x27c46e...d7d303` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2b0dda...e230e2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2fa7dc...58cb83` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x398ffb...2b2c59` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3af3f9...21d6a4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5dbef4...49897c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x68d3a7...4cd8eb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x72662d...d4143e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7a15ff...bb3c78` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x82d342...579581` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8a52a3...c24a07` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8c7b58...01e515` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9a831c...6f1601` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa4387d...c12e77` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa49bc3...5ae3bc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb3181d...63dfec` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb6492a...7b0da3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbc6927...5669a0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc317ca...23cbef` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcd3b3d...1b2c9f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd132df...c30c45` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe42578...54a2e7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe5c49c...0c1c6f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe63c2e...010b13` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe84c00...1fbc8f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf04422...f5d72f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf12c1b...75b0eb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf8ca10...7c2018` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfb1970...126003` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xff3b46...16f710` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xc25853...488309` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x00e158...7a33f4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x09f917...da80d6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1c6b14...3420ac` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4cf142...c22185` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x628233...e0a7a6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8bf928...36d3af` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x90d563...392a9b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x940ac5...ef77fc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9c1d3b...3bdd1e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc2a1fc...f045b6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe067ab...c423a9` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x48f9a6...72a2fe` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x038971...c2155d`](./contracts/base-8453/0x038971fc4480f022156de26d6ca27fa1adc2155d/) | AccountFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x5a25cc...fef671`](./contracts/base-8453/0x5a25cc94d628fedba715064bf101f24a81fef671/) | AirdropHelper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2a4563...40415f`](./contracts/base-8453/0x2a456340793675dc1c8f4ca540013f0c7440415f/) | BaseSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x361808...1e1320`](./contracts/base-8453/0x361808047235cddeb87482508b3ccc043d1e1320/) | BatchSetForceCloseGapRatio | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2e7540...58a306`](./contracts/arbitrum-42161/0x2e7540325a4a0ebfe46ad9ab35ddd7a91d58a306/) | BatchSymbolTradingFee | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6e5499...6d2064`](./contracts/bsc-56/0x6e54994f60f5e0e3d0dd5d173831b43a7e6d2064/) | BitmapViewFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2948d2...a78469`](./contracts/base-8453/0x2948d25814fc0d58e94af32a3173613b9aa78469/) | BridgeFacet | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x77e706...d876b6`](./contracts/polygon-137/0x77e7067c23d992e5d76e571d543626167bd876b6/) | ClearingHouseFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x06e98c...70d604`](./contracts/polygon-137/0x06e98c28e70c54279170844be279b4647c70d604/) | ControlFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x3d17f0...77d266`](./contracts/berachain-80094/0x3d17f073ccb9c3764f105550b0bcf9550477d266/) | Diamond | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x12fed7...2d2ec6`](./contracts/polygon-137/0x12fed7daa1375a96bee0e0d291cbc18cb82d2ec6/) | DiamondCutFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x464873...c688f0`](./contracts/polygon-137/0x464873026877c9d947e2778a1b4cb4a3cbc688f0/) | DiamondInit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xc230ad...11b048`](./contracts/polygon-137/0xc230ad3823eeccdcfeb2addfa4f99a0a1c11b048/) | FakeOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x50e88c...e0d5ba`](./contracts/polygon-137/0x50e88c692b137b8a51b6017026ef414651e0d5ba/) | FakeStablecoin | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2491a9...3bc1fc`](./contracts/base-8453/0x2491a9a56b13b1403d5d790b50406c2fdd3bc1fc/) | ForceActionsFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0b7884...a57798`](./contracts/bsc-56/0x0b7884a7caa481e5a87d45251e57e38614a57798/) | FundingRateFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x7cb60d...bfe4d7`](./contracts/base-8453/0x7cb60df8803057f5d6a64f75d8d06121dcbfe4d7/) | HedgerPartyBV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x00c069...742421`](./contracts/sonic-146/0x00c069d68bc7420740460dbc3cc3fff9b3742421/) | HedgerPartyBV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x1b5893...c0a7fe`](./contracts/mantle-5000/0x1b58936910d5ee8228b20e104d61594df8c0a7fe/) | HedgerPartyBV5 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2487bb...3c163b`](./contracts/base-8453/0x2487bb7dd1bb0d7d736b4c8c7dc32dbe643c163b/) | HedgerPartyBV6 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x61f007...3d8c11`](./contracts/polygon-137/0x61f007c2fc4f81916ab7d4b2a3345e14aa3d8c11/) | InstantActionsCloseFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x8f4c80...fb5510`](./contracts/polygon-137/0x8f4c80bb159d58f0476524a15e3925111afb5510/) | InstantActionsOpenFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x6ae54f...c53e30`](./contracts/polygon-137/0x6ae54f95bdd54b006366239fea74a61d17c53e30/) | InterdealerFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x064f88...f8f557`](./contracts/bsc-56/0x064f8833093cd61cc7bce4541123b7b0b9f8f557/) | LimitedSymbolAdder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x15df9a...ac5f11`](./contracts/base-8453/0x15df9aacdc65e5a4cab2d89211145dadc8ac5f11/) | LiquidationFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2ca101...84cf2d`](./contracts/base-8453/0x2ca101e49956548f493beab1b4615113a084cf2d/) | MagnusSymmioPartyB | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x017218...f6859a`](./contracts/base-8453/0x0172181763f2accab3e5284ea42bb6c1ccf6859a/) | MultiAccount | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x3f0602...3ac70f`](./contracts/polygon-137/0x3f0602138441a1379bf090e604a6ff3ca73ac70f/) | PartyACloseFacet | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0532c5...e6fb22`](./contracts/polygon-137/0x0532c5008a9214e669c41ce782c0e64095e6fb22/) | PartyAFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x40e70a...78db31`](./contracts/polygon-137/0x40e70a60fd45f9f61030ff8d4ec4d475b678db31/) | PartyAOpenFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xa0452c...419774`](./contracts/polygon-137/0xa0452cb1b952782325e11e99929e561797419774/) | PartyBCloseFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x080dd3...2cce19`](./contracts/polygon-137/0x080dd3a713dd13a732efbcfbfe7c1ba45c2cce19/) | PartyBFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x13cfd2...04a60b`](./contracts/arbitrum-42161/0x13cfd2dfe11092a755ff2d6aecd33b3ea204a60b/) | PartyBGroupActionsFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xb59251...fda98d`](./contracts/polygon-137/0xb592517201a6eb4343cf7adc270e8e0b53fda98d/) | PartyBOpenFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0131fd...b6cc28`](./contracts/bsc-56/0x0131fdf62e1de497b536876d5fb5298d91b6cc28/) | PartyBPositionActionsFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x017474...5a3e56`](./contracts/arbitrum-42161/0x017474144617c8082f0182a241f1bcb9265a3e56/) | PartyBQuoteActionsFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xac401e...371589`](./contracts/base-8453/0xac401ebc212dd5ec3960c14c66ce4ebc52371589/) | PrivateStorage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1ddc70...5f61ed`](./contracts/base-8453/0x1ddc7038ed32c1137ef79e892c0b7d69485f61ed/) | Rakeback | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x44fd0b...fccd6d`](./contracts/base-8453/0x44fd0b2a4a358e72f011e240794d899480fccd6d/) | RasaOffChainSymmioDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xf7bad6...1b1b83`](./contracts/base-8453/0xf7bad65e10fb993fe7b8c0569f9d46556b1b1b83/) | RewardNotifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3835c8...ede5e8`](./contracts/base-8453/0x3835c81a64ed1f17043b9b3f6534208027ede5e8/) | RFL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x185cb4...1e147c`](./contracts/arbitrum-42161/0x185cb4c923a9eefa9945989eb951005ab71e147c/) | SettlementFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0592fe...9706c3`](./contracts/bsc-56/0x0592fef3c90b58a20212c1bdaf7c0f70c59706c3/) | SignatureStore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x54b4c0...2b1482`](./contracts/base-8453/0x54b4c02ce6938c16fb19c0318fe8964ff12b1482/) | SignatureVerifier | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x232b72...e31f80`](./contracts/base-8453/0x232b72527e3692e78d7f6d73634fc4e100e31f80/) | SymmAllocationClaimer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xa25022...728b06`](./contracts/base-8453/0xa2502290b7a004359ed8364b47531f4067728b06/) | SymmBriber | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x800822...5b605f`](./contracts/base-8453/0x800822d361335b4d5f352dac293ca4128b5b605f/) | Symmio | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1e1d00...de3153`](./contracts/base-8453/0x1e1d004ba6c37f3dfe24b8020e2d9b741dde3153/) | SymmioDepositorLpToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x82895a...e5081d`](./contracts/arbitrum-42161/0x82895a2e3d5cc74f76694edcaeec1da0e0e5081d/) | SymmioFeeDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x26c572...a294d2`](./contracts/base-8453/0x26c572b793196b5bfc17042eb1caa9f904a294d2/) | SymmioPartyB | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5618c7...1a3ee2`](./contracts/arbitrum-42161/0x5618c747f4877f3c39689f6777156d0b831a3ee2/) | SymmioSwapHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x055369...ec9d7f`](./contracts/bsc-56/0x055369013f50b9f8a088a4202e5f1c125cec9d7f/) | SymmioSymbolManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0cbf07...dacd95`](./contracts/arbitrum-42161/0x0cbf07176e67671c99222bebdb166efc58dacd95/) | SymmioTimelockController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x3e09db...5849d3`](./contracts/mode-34443/0x3e09dbfe0f6e82b8448a11fb082d44cd575849d3/) | TargetRebalancer | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0b946f...b7c23b`](./contracts/bsc-56/0x0b946fc3be1548934cf5d891cbf5fbd890b7c23b/) | TestViewFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2c6381...5e7903`](./contracts/polygon-137/0x2c6381a398a96f8c5eb6cf9a6c62188caa5e7903/) | TradeFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xaf10a9...8bed73`](./contracts/polygon-137/0xaf10a99d35354b8d07b7f2ea1ea334f6228bed73/) | TradeSettlementFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x6eb41d...760aa4`](./contracts/base-8453/0x6eb41d755dc71bd7e9e6a6a78513cdc726760aa4/) | UserPowers | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x13ed7b...dcf95e`](./contracts/base-8453/0x13ed7bf7686d9d57c62b466e6110b0d9d1dcf95e/) | ViewFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1844c0...c9c9b5`](./contracts/base-8453/0x1844c0a3c403139d36d4dfe80cbf9e3b49c9c9b5/) | ZenithSymmioPartyB | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x94d2c4...b40d09`](./contracts/base-8453/0x94d2c48821f7667923d7656acc3529b953b40d09/) | ZenithTestSymmioPartyB | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 136 |
| upstream | 2 |
| standard_library | 11 |
| needs_review | 17 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
