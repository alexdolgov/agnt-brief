# Agentic Audit Brief: SYMMIO

## Project Overview

- Project: SYMMIO (`symmio`)
- Website: [https://www.symm.io/](https://www.symm.io/)
- Lifecycle: active (Tier 0, 63.3% below peak)
- Generated: 2026-06-10T20:59:16.993Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: arbitrum, base, berachain, bsc, mantle, mode, polygon, sonic
- Contract surface: 168 unique implementations (1064 raw deployments)
- DeFi Llama TVL: $3,505,989.77
- On-chain TVL (included contracts): $24.48
- TVL by chain: Base $24.48 | Bsc $0.00

## Project Description

SYMMIO is a hybrid, intent-based derivatives clearing protocol for OTC and derivatives markets. It enables frontend builders and users to express trading intents that can be matched or serviced by solver-enabled counterparties, creating bilateral agreements between traders and hedgers/liquidity providers. Its on-chain architecture handles collateral, settlement, risk management, liquidations, fee distribution, and multi-account workflows across supported deployments. The PartyA/PartyB model and Diamond/facet contracts are implementation details of this bilateral clearing system rather than the full product scope.

### Architecture

The Core Trading Engine relies on the Diamond proxy to integrate facets for trading, accounts, and liquidations, while PartyB contracts (SymmioPartyB, HedgerPartyBV7) act as counterparties. Fee Distributors collect fees from trading activity and distribute them according to protocol rules. Depositor and Account Management contracts interface with the trading engine to manage user funds and sub-accounts, and Incentive contracts like Rakeback and RFL reward users based on their trading and liquidity activity.

## Audit Coverage Summary

- Verified implementations audited: 0/85 (0.0%)
- Verified + Unaudited implementations: 60
- Verified by bytecode match: 25
- Unverified implementations: 83
- Unique implementations: 168
- Raw deployments: 1064
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $24.48
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (60)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| MultiAccountV2 | core_logic | berachain | 13 deployments: mantle `0x4b8233...6b6c30`; mantle `0x908bd6...0ef95e`; base `0x0b4779...b47b26`; base `0x15c41e...b4168c`; base `0x5b903e...61d766`; base `0x72b03e...8352f3`; base `0xf67954...ad7f3f`; mode `0xb430bc...6595bd`; mode `0xdacddd...ff0d13`; arbitrum `0xb0eb34...3bfb0b`; arbitrum `0xcf6a14...b372a1`; berachain [`0x05198f...e25ba7`](./contracts/berachain-80094/0x05198fab85c3b1fbd06729fe6bfc6edaf3e25ba7/); berachain `0xb53f33...695059` | ⚠️ Unaudited |
| AirdropHelper | operational_periphery | base | 2 deployments: base [`0x5a25cc...fef671`](./contracts/base-8453/0x5a25cc94d628fedba715064bf101f24a81fef671/); base `0xec8d99...d43c69` | ⚠️ Unaudited |
| BaseSwapper | adapter | base | 4 deployments: base [`0x2a4563...40415f`](./contracts/base-8453/0x2a456340793675dc1c8f4ca540013f0c7440415f/); base `0x2df447...ac6807`; base `0x5d389c...4ffda0`; base `0xe877d6...a7a6ce` | ⚠️ Unaudited |
| BatchSetForceCloseGapRatio | periphery | mantle | 7 deployments: bsc `0x7643f6...8815c4`; bsc `0x91813a...ddcc87`; polygon `0x66584f...20115b`; mantle [`0x078b56...54b222`](./contracts/mantle-5000/0x078b56db7a1e61ac76a2865d9ef5ff546754b222/); base `0x361808...1e1320`; mode `0x1a521c...8d38b4`; arbitrum `0x7b914c...8af701` | ⚠️ Unaudited |
| BatchSymbolTradingFee | periphery | arbitrum | [`0x2e7540...58a306`](./contracts/arbitrum-42161/0x2e7540325a4a0ebfe46ad9ab35ddd7a91d58a306/) | ⚠️ Unaudited |
| BitmapViewFacet | unknown | bsc | [`0x6e5499...6d2064`](./contracts/bsc-56/0x6e54994f60f5e0e3d0dd5d173831b43a7e6d2064/) | ⚠️ Unaudited |
| CallProxy | unknown | base | 11 deployments: bsc `0x6b6679...9d9cee`; bsc `0x9c5d01...bc1d7a`; polygon `0xd0e8bd...174579`; polygon `0xfd1e03...13a816`; base [`0x33493a...7ef2c2`](./contracts/base-8453/0x33493a9f666bd60ec069615634fe8027c37ef2c2/); base `0xbfdea5...11f95e`; mode `0x6268cb...5b1e07`; arbitrum `0x5640af...c91cb1`; arbitrum `0xb7a912...b3e866`; berachain `0x663109...a298eb`; berachain `0xa0886e...b90af9` | ⚠️ Unaudited |
| ClearingHouseFacet | unknown | polygon | 2 deployments: polygon [`0xaa6902...284cfa`](./contracts/polygon-137/0xaa69027769715aba7e219cf5db5c9ca7ae284cfa/); polygon `0xcccd87...4a37ab` | ⚠️ Unaudited |
| ContestManager | governance | base | 3 deployments: base [`0x54e656...88ae12`](./contracts/base-8453/0x54e656cc94a111306f54f5c4434e32d1e188ae12/); base `0xa054fd...5569c5`; base `0xde8b53...f62d74` | ⚠️ Unaudited |
| Create2Factory | registry | base | [`0x671b52...cd7160`](./contracts/base-8453/0x671b527046163b025aa30bf5cf506c8ec2cd7160/) | ⚠️ Unaudited |
| Diamond | unknown | mode | 8 deployments: polygon `0x7bdc80...bc808b`; polygon `0x91009d...d5d603`; polygon `0x976c87...54537b`; polygon `0xb2b17c...f250b3`; sonic `0x464873...c688f0`; sonic `0x803de3...7a72e3`; mode [`0x3d17f0...77d266`](./contracts/mode-34443/0x3d17f073ccb9c3764f105550b0bcf9550477d266/); arbitrum `0x509980...552b58` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | base | [`0x001816...43f403`](./contracts/base-8453/0x001816cf2f27accc18418faa59405ce5cd43f403/) | ⚠️ Unaudited |
| FakeOracle | operational_periphery | polygon | [`0xc230ad...11b048`](./contracts/polygon-137/0xc230ad3823eeccdcfeb2addfa4f99a0a1c11b048/) | ⚠️ Unaudited |
| FakeStablecoin | token | polygon | 3 deployments: polygon [`0x50e88c...e0d5ba`](./contracts/polygon-137/0x50e88c692b137b8a51b6017026ef414651e0d5ba/); base `0xf666e0...6c7c8e`; arbitrum `0x5aee30...6de896` | ⚠️ Unaudited |
| HedgerPartyBV1 | unknown | arbitrum | 6 deployments: mantle `0xa3cbdd...51f2a9`; mantle `0xca03f6...d6998b`; mantle `0xcf751c...0e459f`; mantle `0xd211e5...1cd655`; arbitrum [`0x5d6337...1fef99`](./contracts/arbitrum-42161/0x5d63378ca604bbcb051fd8aaed1a6abce71fef99/); arbitrum `0xdfed11...1ed432` | ⚠️ Unaudited |
| HedgerPartyBV2 | unknown | mode | 6 deployments: mantle `0xbbae97...f08d64`; mantle `0xdf0c56...4bcc98`; mantle `0xf1d4d9...ec1707`; mode [`0x5d6337...1fef99`](./contracts/mode-34443/0x5d63378ca604bbcb051fd8aaed1a6abce71fef99/); arbitrum `0xaf3e73...48c52b`; arbitrum `0xfc52ce...5b4d2c` | ⚠️ Unaudited |
| InstantActionsCloseFacet | unknown | polygon | [`0x61f007...3d8c11`](./contracts/polygon-137/0x61f007c2fc4f81916ab7d4b2a3345e14aa3d8c11/) | ⚠️ Unaudited |
| InstantActionsOpenFacet | unknown | polygon | [`0x8f4c80...fb5510`](./contracts/polygon-137/0x8f4c80bb159d58f0476524a15e3925111afb5510/) | ⚠️ Unaudited |
| InterdealerFacet | unknown | polygon | [`0x6ae54f...c53e30`](./contracts/polygon-137/0x6ae54f95bdd54b006366239fea74a61d17c53e30/) | ⚠️ Unaudited |
| LimitedSymbolAdder | unknown | bsc | 12 deployments: bsc [`0x064f88...f8f557`](./contracts/bsc-56/0x064f8833093cd61cc7bce4541123b7b0b9f8f557/); bsc `0x08ffa4...87bcbe`; bsc `0xa91ddf...7fb7da`; polygon `0x273f42...346d9a`; polygon `0x3716bd...351fd5`; mantle `0x1b86fa...34327b`; mantle `0x598913...6f3348`; base `0xa3d2b4...1ac4c8`; base `0xcf40fb...14051d`; arbitrum `0x082611...ccf3a2`; arbitrum `0x75bd49...096f71`; arbitrum `0xeb1462...69c974` | ⚠️ Unaudited |
| MagnusSymmioPartyB | unknown | base | 2 deployments: base [`0x2ca101...84cf2d`](./contracts/base-8453/0x2ca101e49956548f493beab1b4615113a084cf2d/); base `0xfa1b8e...48243e` | ⚠️ Unaudited |
| MagSymSymmioPartyB | unknown | base | 3 deployments: base [`0xa5bce2...bfbce3`](./contracts/base-8453/0xa5bce25b4dbd7fdf2b241ba9440dd07590bfbce3/); base `0xc56ab2...025f27`; base `0xfb3314...2459d6` | ⚠️ Unaudited |
| MultiCall | periphery | base | 13 deployments: bsc `0x1a131a...e5c3f7`; bsc `0x7e0bb7...05b6c6`; bsc `0xbb321f...1f214f`; mantle `0x2fddfb...75cb57`; mantle `0x679a9c...afc7e0`; mantle `0xfb515c...b57919`; base [`0x0fc53f...a50cc4`](./contracts/base-8453/0x0fc53fc604709a763a0cf6ff5dd3943cc6a50cc4/); base `0xaa4756...1cfa21`; arbitrum `0x1224b4...17cc75`; arbitrum `0x5ba275...d1d597`; arbitrum `0x8aa3b1...2219dd`; arbitrum `0x94641e...76efe7`; arbitrum `0x94e313...e187cc` | ⚠️ Unaudited |
| Multicall3 | periphery | base | [`0xc943c7...e3fcfb`](./contracts/base-8453/0xc943c7c06eb871f4b86dec9f2132d5e3cce3fcfb/) | ⚠️ Unaudited |
| MuonClient | unknown | base | [`0xa153be...da0463`](./contracts/base-8453/0xa153bec5630db1dc2c0b4919204f7a0f22da0463/) | ⚠️ Unaudited |
| PartyACloseFacet | governance | polygon | [`0x3f0602...3ac70f`](./contracts/polygon-137/0x3f0602138441a1379bf090e604a6ff3ca73ac70f/) | ⚠️ Unaudited |
| PartyAOpenFacet | unknown | polygon | [`0x40e70a...78db31`](./contracts/polygon-137/0x40e70a60fd45f9f61030ff8d4ec4d475b678db31/) | ⚠️ Unaudited |
| PartyBCloseFacet | unknown | polygon | [`0xa0452c...419774`](./contracts/polygon-137/0xa0452cb1b952782325e11e99929e561797419774/) | ⚠️ Unaudited |
| PartyBFacet | unknown | polygon | 16 deployments: bsc `0x273f42...346d9a`; bsc `0x8fd07a...1a532d`; bsc `0x9c8fe7...aa2653`; polygon [`0x080dd3...2cce19`](./contracts/polygon-137/0x080dd3a713dd13a732efbcfbfe7c1ba45c2cce19/); polygon `0x50732b...1ad98f`; polygon `0x5e0663...069934`; polygon `0xa46e5d...d381b4`; polygon `0xbc7204...4b88c2`; polygon `0xc2d984...d34e84`; mantle `0x4d8e97...bbec55`; mantle `0xa46e5d...d381b4`; base `0x727133...5f33cd`; base `0x91ba24...38f2ef`; mode `0xcf74c4...ba69d9`; arbitrum `0x1a521c...8d38b4`; arbitrum `0xcccda5...4b9ad8` | ⚠️ Unaudited |
| PartyBOpenFacet | unknown | polygon | [`0xb59251...fda98d`](./contracts/polygon-137/0xb592517201a6eb4343cf7adc270e8e0b53fda98d/) | ⚠️ Unaudited |
| PayDence | unknown | base | 2 deployments: base [`0x2fb0ad...555645`](./contracts/base-8453/0x2fb0ad005c093447f802c050728bb14758555645/); base `0xfa827f...9310a4` | ⚠️ Unaudited |
| PrivateStorage | unknown | base | 2 deployments: base [`0xac401e...371589`](./contracts/base-8453/0xac401ebc212dd5ec3960c14c66ce4ebc52371589/); base `0xb9e6f1...73d308` | ⚠️ Unaudited |
| ProxyAdmin | governance | arbitrum | 53 deployments: bsc `0x32c130...c1c3fd`; bsc `0x3d4e59...f5989c`; bsc `0x592296...c6bd9e`; bsc `0x599f39...dcc730`; bsc `0xb2bb8b...5bbad6`; bsc `0xed6fee...014db2`; bsc `0xf0df46...1c76dd`; polygon `0x32a3f1...2c5dd9`; polygon `0xb924c1...4683d1`; polygon `0xd6ee1f...f02a5e`; mantle `0x3adc81...ae6cde`; mantle `0x4b9693...d65865`; mantle `0x5b4e92...afc089`; base `0x30ce19...333efa`; base `0x333422...084969`; base `0x3b3c0b...1970db`; base `0x3b6037...434aca`; base `0x511839...366164`; base `0x5acd59...a44b1b`; base `0x5db3c6...be3157`; base `0x7ae785...a4d68c`; base `0x84da34...f3f191`; base `0x8a67b0...3fb2ae`; base `0x8f3718...ea5787`; base `0x942dd3...26d89f`; base `0xba2c07...d0dcf9`; base `0xfd661e...75f195`; mode `0x12de03...4346e2`; mode `0x3e864a...ace120`; mode `0xa08e1c...cbd667`; mode `0xb32cef...2c9c8c`; mode `0xbc2683...5918e9`; mode `0xd6ee1f...f02a5e`; mode `0xdfed11...1ed432`; mode `0xf25f5a...48ae4c`; arbitrum [`0x0392e9...1d7375`](./contracts/arbitrum-42161/0x0392e9cf758cd1566dab547fdaf3ddcfed1d7375/); arbitrum `0x12de03...4346e2`; arbitrum `0x3e864a...ace120`; arbitrum `0x6987f4...5d4e49`; arbitrum `0x700e21...66caf6`; arbitrum `0x87fc46...536eb7`; arbitrum `0x9f6d3e...83399e`; arbitrum `0xb32cef...2c9c8c`; arbitrum `0xe7502f...489808`; berachain `0x12de03...4346e2`; berachain `0x57c85e...8c0b27`; berachain `0x6b44c8...09716e`; berachain `0x729d9e...e0591f`; berachain `0x87fc46...536eb7`; berachain `0x98a4b7...c80203`; berachain `0xd35ce6...95773a`; berachain `0xdb91d2...604426`; berachain `0xfc52ce...5b4d2c` | ⚠️ Unaudited |
| Rakeback | unknown | base | 16 deployments: base [`0x0ea981...a98829`](./contracts/base-8453/0x0ea981d1490ae86bff48e8eb5ace756663a98829/); base `0x1ddc70...5f61ed`; base `0x1f1a1c...6fd3af`; base `0x3502c7...45ed81`; base `0x353842...bf77d0`; base `0x4db628...6d8d58`; base `0x577886...b0051a`; base `0x80d77d...701725`; base `0x868ca9...f5b82f`; base `0x878e74...fa2ab3`; base `0x954639...6e7d3c`; base `0xcee0da...be3646`; base `0xdf969d...ea45a5`; base `0xe5c360...a9f8b5`; base `0xeb806a...615f69`; base `0xfe2ef6...caebc8` | ⚠️ Unaudited |
| RasaOffChainSymmioDepositor | unknown | base | 9 deployments: bsc `0x7f632d...cba6ee`; bsc `0x97ddc3...bfa4b6`; mantle `0x578489...f37ea3`; mantle `0xac0f19...d629da`; mantle `0xf8c1cb...72b9bb`; base [`0x00afef...4fef94`](./contracts/base-8453/0x00afefa66ff775ae1c407fec613faab5e64fef94/); base `0x10ed5f...1e345d`; base `0x44fd0b...fccd6d`; base `0x5fe05d...afacae` | ⚠️ Unaudited |
| RasaOnChainSymmioDepositor | unknown | bsc | 6 deployments: bsc [`0x0379e4...7583bd`](./contracts/bsc-56/0x0379e4f69dd7d6898d7e4e879ee7a4f4df7583bd/); bsc `0x44503c...35135d`; mantle `0x1f050a...62c320`; mantle `0xb814fd...04f6f0`; base `0x392083...419a81`; base `0x891bab...75a941` | ⚠️ Unaudited |
| RewardNotifier | unknown | base | [`0xf7bad6...1b1b83`](./contracts/base-8453/0xf7bad65e10fb993fe7b8c0569f9d46556b1b1b83/) | ⚠️ Unaudited |
| RFL | unknown | base | 12 deployments: base [`0x335579...db5e0a`](./contracts/base-8453/0x3355798f4a7eaf59eca336d8b51f404aa0db5e0a/); base `0x3835c8...ede5e8`; base `0x6394cd...b4a215`; base `0x91d40f...ce7b1d`; base `0x97e352...f19a3e`; base `0xb4fb72...aa5f5d`; base `0xc37909...4e1585`; base `0xcc42a8...0332ca`; base `0xd08a4c...6a0853`; base `0xd3413a...f63200`; base `0xd48d12...9d941c`; base `0xd66e4f...09104e` | ⚠️ Unaudited |
| SignatureStore | unknown | bsc | 11 deployments: bsc [`0x0592fe...9706c3`](./contracts/bsc-56/0x0592fef3c90b58a20212c1bdaf7c0f70c59706c3/); bsc `0x17edcb...e6002b`; bsc `0x1c1d04...46a117`; bsc `0x6ea2ef...b628b2`; bsc `0xcf8d72...eb5991`; mantle `0x1c1d04...46a117`; base `0xc19e66...fb4996`; mode `0x657101...a587f2`; arbitrum `0x94eea5...e403e2`; arbitrum `0xb3b72f...f14fed`; arbitrum `0xebef48...9b5c4d` | ⚠️ Unaudited |
| SignatureVerifier | periphery | base | [`0x54b4c0...2b1482`](./contracts/base-8453/0x54b4c02ce6938c16fb19c0318fe8964ff12b1482/) | ⚠️ Unaudited |
| SwapEngine | unknown | base | 9 deployments: base [`0x1c9791...926820`](./contracts/base-8453/0x1c97915ee48b4a35f9fb128171a9dd2819926820/); base `0x57429c...ddb83b`; base `0xa03bf9...78a542`; base `0xa06fb9...ccaa1b`; base `0xa0ec51...b76880`; base `0xc4b0c2...ec3778`; base `0xeb544b...19218e`; base `0xeb9ec4...1c9db2`; base `0xfef6e5...364de3` | ⚠️ Unaudited |
| SymmAllocationClaimer | operational_periphery | base | 2 deployments: base [`0x232b72...e31f80`](./contracts/base-8453/0x232b72527e3692e78d7f6d73634fc4e100e31f80/); base `0x8377c2...b79634` | ⚠️ Unaudited |
| SymmCoreCaller | unknown | berachain | 10 deployments: mantle `0x82261f...7d86d6`; mantle `0x9b6a8d...3e3701`; base `0x6c4823...90779f`; base `0x885277...3866d4`; base `0xabc0d9...afa180`; mode `0xf8dd18...da3db3`; arbitrum `0x7ecbeb...21918c`; arbitrum `0x9e9d46...b652e8`; berachain [`0x3d6404...1a5ae8`](./contracts/berachain-80094/0x3d6404bdf55db6d1a29f0bb818026302ec1a5ae8/); berachain `0xaf3e73...48c52b` | ⚠️ Unaudited |
| Symmio | unknown | base | 2 deployments: base [`0x800822...5b605f`](./contracts/base-8453/0x800822d361335b4d5f352dac293ca4128b5b605f/); base `0x8b551d...7b41cc` | ⚠️ Unaudited |
| SymmioBridgeHelper | operational_periphery | mantle | 2 deployments: mantle [`0x8aa3b1...2219dd`](./contracts/mantle-5000/0x8aa3b1be39d11d90ab66dec6d6c112d5bf2219dd/); mantle `0x940546...2375b5` | ⚠️ Unaudited |
| SymmioDepositorLpToken | token | mantle | 6 deployments: bsc `0x8ff61b...4b1b3b`; bsc `0xff4486...f84bc0`; mantle [`0x074849...b0b182`](./contracts/mantle-5000/0x074849c3f9f9a948c07fe141d0520df9a7b0b182/); mantle `0x14ef4f...56f1e9`; base `0x1e1d00...de3153`; base `0x7beca8...457020` | ⚠️ Unaudited |
| SymmioFeeDistributor | operational_periphery | base | 63 deployments: bsc `0x1bc2b0...5542c4`; bsc `0x472b72...de1c74`; bsc `0x6d4174...0c4acd`; bsc `0xcd97db...5355f1`; bsc `0xd889bf...ea140f`; bsc `0xecdc2e...956837`; sonic `0x61662e...28f5f4`; sonic `0x99886d...d95519`; mantle `0x471806...8a1a4a`; mantle `0x488290...b72e85`; mantle `0x8952f2...1aeb3c`; mantle `0xa2c779...b29c19`; mantle `0xc19e66...fb4996`; base [`0x02d27b...71d7ec`](./contracts/base-8453/0x02d27b868f07c7202a8b981e44497ad66171d7ec/); base `0x039626...63f08f`; base `0x0ec978...4d745f`; base `0x127965...1d4f99`; base `0x239e30...d981c8`; base `0x25e060...689741`; base `0x410f01...dbf34a`; base `0x41b9fa...c6243c`; base `0x4ee4a8...c36ba1`; base `0x500137...9d6178`; base `0x5555dc...b28975`; base `0x61649a...c5e305`; base `0x6332b2...c37403`; base `0x65b19b...07f60f`; base `0x68aefe...0a8aaf`; base `0x75171e...24b36c`; base `0x7547da...d45030`; base `0x76bc58...a95122`; base `0x79e20f...c387ed`; base `0x86aac3...bc62e1`; base `0x8c217c...19c10b`; base `0x8cc788...177098`; base `0x9240c0...2e8b99`; base `0x936ef7...79d676`; base `0x97f1dc...66e1b0`; base `0xa234f3...2648e1`; base `0xc2c7d0...629766`; base `0xc72fa7...69b638`; base `0xc89795...b1ff2f`; base `0xc9577c...9505a4`; base `0xcf173c...b82c53`; base `0xdaa78e...d55592`; base `0xe5ccf4...888060`; base `0xebec8d...f9c38d`; base `0xf31873...53ca3b`; base `0xf403a1...cd07c4`; base `0xfeb4e8...f4f8d8`; mode `0x08a8b4...555e95`; mode `0x71db5e...83e6b2`; arbitrum `0x0532c5...e6fb22`; arbitrum `0x196a2b...f0c1c1`; arbitrum `0x59b00d...4608f4`; arbitrum `0x82895a...e5081d`; arbitrum `0x8452ed...258538`; arbitrum `0x940546...2375b5`; arbitrum `0x96af9f...c8f74b`; arbitrum `0xaf2abc...67989a`; arbitrum `0xb71954...086ed8`; berachain `0x4047bf...41c91f`; berachain `0xfa323f...9f57a0` | ⚠️ Unaudited |
| SymmioGlobalRelayer | unknown | base | 2 deployments: base [`0x1db0d8...a42e28`](./contracts/base-8453/0x1db0d8bea13772d567091950a9835ec1e6a42e28/); base `0xe33775...d81d82` | ⚠️ Unaudited |
| SymmioPartyA | unknown | mantle | [`0xbd047c...67032b`](./contracts/mantle-5000/0xbd047c4f108282745e0c4dfe2f97ffaf2e67032b/) | ⚠️ Unaudited |
| SymmioPartyBProxy | unknown | base | 2 deployments: base [`0x1de093...bdcc63`](./contracts/base-8453/0x1de09355907249e18eed89557a2c7fbd58bdcc63/); base `0x56c811...8d5709` | ⚠️ Unaudited |
| SymmioPartyBV2 | unknown | base | 2 deployments: base [`0x12de03...4346e2`](./contracts/base-8453/0x12de0352dd4187af5797f5147c4179f9624346e2/); base `0x5d6337...1fef99` | ⚠️ Unaudited |
| SymmioSwapHelper | periphery | arbitrum | 3 deployments: arbitrum [`0x5618c7...1a3ee2`](./contracts/arbitrum-42161/0x5618c747f4877f3c39689f6777156d0b831a3ee2/); arbitrum `0x9c9138...5c308f`; arbitrum `0xd2d78e...f3b62b` | ⚠️ Unaudited |
| TargetRebalancer | adapter | mode | [`0x3e09db...5849d3`](./contracts/mode-34443/0x3e09dbfe0f6e82b8448a11fb082d44cd575849d3/) | ⚠️ Unaudited |
| TestViewFacet | unknown | bsc | 4 deployments: bsc [`0x0b946f...b7c23b`](./contracts/bsc-56/0x0b946fc3be1548934cf5d891cbf5fbd890b7c23b/); bsc `0x7a4cd2...898701`; bsc `0x8e95ce...3f2986`; bsc `0xe5f346...0dc600` | ⚠️ Unaudited |
| TokenLaunchOnAerodrome | token | base | [`0x8aa3d3...295af9`](./contracts/base-8453/0x8aa3d366c49674bed84e6adce52ca11e48295af9/) | ⚠️ Unaudited |
| TradeSettlementFacet | unknown | polygon | [`0xaf10a9...8bed73`](./contracts/polygon-137/0xaf10a99d35354b8d07b7f2ea1ea334f6228bed73/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | berachain | 22 deployments: bsc `0x3aad3e...4b4c4f`; bsc `0x3ff5d2...2c85fa`; bsc `0xacdd6a...b3f839`; polygon `0xd4220d...a9bf56`; mode `0x3adc81...ae6cde`; mode `0x3f1913...4373e0`; mode `0x46b776...145f9b`; mode `0x5d51a2...1ceba4`; mode `0x69ebb4...6e58fe`; mode `0x78c7fa...1b9df5`; mode `0x78e76a...890543`; mode `0x7d3877...0825d0`; mode `0xc39d1f...456ee8`; mode `0xdb91d2...604426`; mode `0xfda411...95b023`; berachain [`0x00c069...742421`](./contracts/berachain-80094/0x00c069d68bc7420740460dbc3cc3fff9b3742421/); berachain `0x78b1b8...2c3001`; berachain `0x8141c1...999b12`; berachain `0xb71a0e...94cdbc`; berachain `0xbb1ad4...9a0596`; berachain `0xdfed11...1ed432`; berachain `0xf25f5a...48ae4c` | ⚠️ Unaudited |
| UserPowers | unknown | base | 4 deployments: base [`0x6eb41d...760aa4`](./contracts/base-8453/0x6eb41d755dc71bd7e9e6a6a78513cdc726760aa4/); base `0xb93475...1080f2`; base `0xed259a...7cc20a`; arbitrum `0x99c430...c5c69b` | ⚠️ Unaudited |
| ZenithSymmioPartyB | unknown | base | 5 deployments: base [`0x0510fc...7e14b3`](./contracts/base-8453/0x0510fc47f90d557c6f57717361356a58cd7e14b3/); base `0x1844c0...c9c9b5`; base `0x1bdff5...4eac91`; base `0x5f3525...3feb2f`; base `0xfec6d2...91d0cf` | ⚠️ Unaudited |
| ZenithTestSymmioPartyB | unknown | base | [`0x94d2c4...b40d09`](./contracts/base-8453/0x94d2c48821f7667923d7656acc3529b953b40d09/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (25)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| MultiAccount | core_logic | base | 77 deployments: bsc `0x0fb857...87904e`; bsc `0x1d82de...7c6be0`; bsc `0x3425cc...0ed8ca`; bsc `0x50b127...f4e691`; bsc `0x5573b1...158d1d`; bsc `0x650a2d...5a1cf3`; bsc `0x6ff53a...a2c5a3`; bsc `0x75c539...86e8b4`; bsc `0xccc8cc...703eb8`; bsc `0xd41b66...66a2b3`; bsc `0xd9d234...4493d2`; polygon `0x0f1fa5...0a574d`; polygon `0x3adc81...ae6cde`; polygon `0x452c54...8d62ae`; polygon `0x488c15...de71c1`; polygon `0x504477...4dc188`; polygon `0x8f0645...b39395`; polygon `0xaeac16...4486df`; polygon `0xb6908e...e3438a`; polygon `0xec8eb7...0c7c17`; polygon `0xffe2c2...daf4af`; mantle `0x359ffa...6dd262`; mantle `0xd6ee1f...f02a5e`; mantle `0xecbd07...26e456`; mantle `0xfa8a07...2f369e`; base [`0x017218...f6859a`](./contracts/base-8453/0x0172181763f2accab3e5284ea42bb6c1ccf6859a/); base `0x1c03b6...78b780`; base `0x1ebcf9...e8934d`; base `0x21052b...ca988a`; base `0x244189...9a1cc2`; base `0x264b9e...47c9fc`; base `0x27a239...3ca141`; base `0x2a8e61...47bc11`; base `0x2e7c86...02ca3e`; base `0x3bc0cd...83c2d5`; base `0x4133bc...25158e`; base `0x47c73a...8f1190`; base `0x4a85fa...935129`; base `0x57e79c...3dec90`; base `0x6d6392...719ddd`; base `0x724796...b8cc98`; base `0x846f27...05d469`; base `0x8a98f6...73cd63`; base `0x8ab178...3f3b86`; base `0x8b0119...ce29e7`; base `0x8ccaa9...44ac8a`; base `0x925342...f8278a`; base `0x94af0e...4ccc5f`; base `0x95605c...7a2059`; base `0x996e4a...4799bd`; base `0xa5ddc7...928e92`; base `0xa63c2d...8d254d`; base `0xb5c682...88244b`; base `0xbfd645...b28c82`; base `0xc6268e...aa5e0d`; base `0xc6ecf3...0bb774`; base `0xc8320d...1e8f2b`; base `0xd62778...f7e764`; base `0xdad41b...43d74f`; base `0xdc6ad9...dd7f7a`; base `0xdfcd68...c265a8`; base `0xe597ca...c26a99`; base `0xec2947...6b8bf5`; base `0xf24d94...b38afb`; base `0xf3a293...2fcb0c`; base `0xf7f56d...ef4580`; mode `0x8f0645...b39395`; arbitrum `0x152a8e...53e6d6`; arbitrum `0x1e9455...72924e`; arbitrum `0x221350...abb305`; arbitrum `0x45850f...c06715`; arbitrum `0x627324...caafe4`; arbitrum `0x6a3c63...6602d6`; arbitrum `0xb057dc...05d99c`; arbitrum `0xb27691...810346`; arbitrum `0xc25853...488309`; berachain `0x750e9f...3b167d` | ⚠️ Unaudited (bytecode match) |
| AccountFacet | unknown | base | 37 deployments: bsc `0x1a4fc5...19e05f`; bsc `0x78eb97...2f5d42`; bsc `0x9ceb86...02d6af`; polygon `0x237c4b...0bd6a1`; polygon `0x2dd45a...ccce4d`; polygon `0x2ecc7d...0838b5`; polygon `0x58066f...8eac2a`; polygon `0x9f8f9d...92c2cb`; polygon `0x9ff6f7...781355`; polygon `0xa90b7e...fa91c8`; polygon `0xe55ff3...70593d`; polygon `0xfac8bf...8841ae`; sonic `0x5b5c7b...53be63`; sonic `0xb74629...a4c395`; mantle `0x0b6014...61d50a`; mantle `0x66df9f...3f6484`; mantle `0x9f8f9d...92c2cb`; mantle `0xa06791...d4760c`; base [`0x038971...c2155d`](./contracts/base-8453/0x038971fc4480f022156de26d6ca27fa1adc2155d/); base `0x042aa1...6d3534`; base `0x20328c...1f2fa0`; base `0x245ea9...9335c4`; base `0x40e3f6...1a4f27`; base `0x435643...68b863`; base `0x5d9c42...7b2361`; base `0x8df7da...4218d7`; base `0x9be79d...b9b932`; base `0xad8e10...19711e`; base `0xd1315a...0e770b`; mode `0x464873...c688f0`; mode `0x86ccae...ebf914`; arbitrum `0x356ecc...da19a1`; arbitrum `0x3adc81...ae6cde`; arbitrum `0xbd80e1...85f989`; arbitrum `0xca9056...2030c7`; berachain `0x464873...c688f0`; berachain `0x803de3...7a72e3` | ⚠️ Unaudited (bytecode match) |
| BridgeFacet | operational_periphery | mantle | 22 deployments: bsc `0x69fce0...6a194c`; bsc `0x8cae94...73d43d`; polygon `0x8083e5...288e29`; polygon `0x8e75d5...20e8e1`; polygon `0xc82637...27f8d2`; polygon `0xd41b66...66a2b3`; sonic `0x627324...caafe4`; sonic `0x9d4c16...dffb05`; mantle [`0x20dd47...541a5a`](./contracts/mantle-5000/0x20dd479c8210ca675f9351b8daaf439026541a5a/); mantle `0xaf7c79...2adf59`; base `0x2948d2...a78469`; base `0x594982...15f310`; base `0x9ea0a1...db9370`; base `0xc1f913...884717`; base `0xdc8429...00c9ee`; mode `0x4047bf...41c91f`; mode `0x5e0663...069934`; arbitrum `0x5485af...7a5660`; arbitrum `0xc9a868...81d52f`; arbitrum `0xdc983b...aef179`; berachain `0xc25853...488309`; berachain `0xcf74c4...ba69d9` | ⚠️ Unaudited (bytecode match) |
| ControlFacet | unknown | polygon | 36 deployments: bsc `0x169953...ae452f`; bsc `0x296700...356875`; bsc `0xdddf59...cbf543`; bsc `0xf2ef83...155cc3`; polygon [`0x06e98c...70d604`](./contracts/polygon-137/0x06e98c28e70c54279170844be279b4647c70d604/); polygon `0x0e35fa...3f39ac`; polygon `0x19b368...3bd0fc`; polygon `0x1f3451...595039`; polygon `0x5f6de4...8f1a98`; polygon `0x72b245...bc2ecd`; polygon `0xb74629...a4c395`; polygon `0xc4855e...d39e6f`; polygon `0xe7f67c...324794`; polygon `0xf0ab04...217e28`; sonic `0x0b6014...61d50a`; sonic `0xe6a62c...09259d`; mantle `0x0e35fa...3f39ac`; mantle `0x16ed71...a40b5c`; mantle `0x4d5be5...fd8be2`; mantle `0x6ae148...e32403`; base `0x2c1c49...3e2358`; base `0x6f93ca...ae054a`; base `0x8e2747...ad6b72`; base `0x924674...43ecba`; base `0x99eba3...91d574`; base `0xa2a7d5...499e92`; base `0xd5063b...ab6fac`; base `0xe1e3b7...5b5296`; mode `0x2ecc7d...0838b5`; mode `0xb0dfde...0ff250`; arbitrum `0x50b127...f4e691`; arbitrum `0x91834f...4c634d`; arbitrum `0xb5076d...c6f33a`; arbitrum `0xecbd07...26e456`; berachain `0x1a521c...8d38b4`; berachain `0x2ecc7d...0838b5` | ⚠️ Unaudited (bytecode match) |
| DiamondCutFacet | unknown | polygon | 22 deployments: bsc `0xf91382...739c7c`; polygon [`0x12fed7...2d2ec6`](./contracts/polygon-137/0x12fed7daa1375a96bee0e0d291cbc18cb82d2ec6/); polygon `0x1d5a4f...289335`; polygon `0x322072...91c5c1`; polygon `0x3d17f0...77d266`; polygon `0x57be05...f48ef0`; polygon `0x59b00d...4608f4`; polygon `0x7da6f2...23dd92`; polygon `0x8a5010...40d4fd`; polygon `0x8ee0ef...4e0bc8`; polygon `0xdf5eae...4ef3c0`; polygon `0xe92ff6...b2c80d`; polygon `0xf3e94e...2efb6a`; sonic `0x6b0d9f...91a83d`; mantle `0x464873...c688f0`; base `0x6d87fb...23a300`; base `0x74aa0c...3ef2bc`; mode `0x7e6dc8...785237`; arbitrum `0x7143e6...6dc9cb`; arbitrum `0xf39352...86684e`; berachain `0x7e6dc8...785237`; berachain `0xecbd07...26e456` | ⚠️ Unaudited (bytecode match) |
| DiamondInit | unknown | sonic | 15 deployments: bsc `0xda7e34...b4a369`; polygon `0x464873...c688f0`; polygon `0xa06967...b24d43`; polygon `0xa4e81e...49f604`; polygon `0xbd1c63...33c97e`; sonic [`0x1a521c...8d38b4`](./contracts/sonic-146/0x1a521c6a05d56a52b9203b6f5d86dd0f2e8d38b4/); sonic `0x2ecc7d...0838b5`; mantle `0xb74629...a4c395`; base `0x7c3cff...1cc665`; base `0xe516f0...9fbf5a`; mode `0x6b0d9f...91a83d`; arbitrum `0x663db7...dbcbbc`; arbitrum `0xd6ee1f...f02a5e`; berachain `0x50e88c...e0d5ba`; berachain `0x6b0d9f...91a83d` | ⚠️ Unaudited (bytecode match) |
| DiamondLoupeFacet | unknown | sonic | 26 deployments: bsc `0x30b78d...07795d`; bsc `0x7195d6...b2323d`; polygon `0x0b6014...61d50a`; polygon `0x50658f...fca89d`; polygon `0x62077a...1d2dbf`; polygon `0x6a9536...91cad2`; polygon `0x99886d...d95519`; polygon `0xc02c6f...256d15`; polygon `0xdea508...4b2eec`; polygon `0xf7a0ba...4902fb`; polygon `0xfbadc2...da7c0a`; sonic [`0x01e822...bc6e3b`](./contracts/sonic-146/0x01e822aae6d2cc456804ccd36aa4d3830dbc6e3b/); sonic `0x6ae148...e32403`; mantle `0xcf74c4...ba69d9`; mantle `0xd1559b...05fc01`; mantle `0xdea508...4b2eec`; base `0x0f1299...083aee`; base `0x262839...ac63bb`; base `0x8d3abb...9cbefc`; base `0xa0e786...48bb2b`; mode `0xb74629...a4c395`; arbitrum `0x45c3e2...552ba9`; arbitrum `0x504423...d56648`; arbitrum `0xa7f7c8...692342`; berachain `0x5b5c7b...53be63`; berachain `0xb74629...a4c395` | ⚠️ Unaudited (bytecode match) |
| ForceActionsFacet | unknown | berachain | 25 deployments: bsc `0x644449...97b09d`; bsc `0x9f6a21...95445c`; bsc `0xa352b7...c9813a`; bsc `0xa8dca2...25441a`; bsc `0xdde104...0815b6`; bsc `0xf201ad...25d8a0`; polygon `0x4fa415...a96dc9`; polygon `0x574434...10f0f1`; polygon `0x693ace...ce1a67`; polygon `0x72a915...df4cd3`; polygon `0xc1d9b2...67ca26`; sonic `0xf39352...86684e`; mantle `0x7d8691...928de0`; mantle `0x94b346...109a48`; base `0x2491a9...3bc1fc`; base `0x6d1e85...4ad1b5`; base `0x7331e3...2813aa`; base `0x8d0a7a...fa11db`; mode `0xbec5b1...deeb24`; arbitrum `0x2a26a2...273284`; arbitrum `0x4a17c9...d2496c`; arbitrum `0xe64223...0e1dd3`; arbitrum `0xf0df46...1c76dd`; berachain [`0x1347a8...8cf8d1`](./contracts/berachain-80094/0x1347a83d1eb2121b15f944b21ddbe22ebf8cf8d1/); berachain `0x4d8e97...bbec55` | ⚠️ Unaudited (bytecode match) |
| FundingRateFacet | unknown | mantle | 28 deployments: bsc `0x0b7884...a57798`; bsc `0x8d4e3e...925c1c`; bsc `0xa90b7e...fa91c8`; bsc `0xf6f18b...a22f2f`; polygon `0x4d8e97...bbec55`; polygon `0x8c466c...3114f2`; polygon `0x9ae5ae...598ec2`; polygon `0xbd4375...3bf4b3`; polygon `0xdfdba8...c0d70d`; polygon `0xe0274e...6a6508`; sonic `0x0eb92f...fc2dec`; sonic `0x359ae1...b6ce76`; mantle [`0x04abd9...eeb771`](./contracts/mantle-5000/0x04abd9b019dce47d7b05b4c672fa41ee54eeb771/); mantle `0x8c466c...3114f2`; mantle `0xf39352...86684e`; base `0x3e7031...2af1ab`; base `0x64f6bc...796842`; base `0x7d6ea8...5a206b`; base `0xe2e705...a28b7b`; base `0xf8e5ef...3467cb`; mode `0x4d8e97...bbec55`; mode `0x85c021...1cbef9`; arbitrum `0x0fb857...87904e`; arbitrum `0x34ca2e...daf361`; arbitrum `0x5d51e7...12c079`; arbitrum `0xe6a62c...09259d`; berachain `0x627324...caafe4`; berachain `0x9d4c16...dffb05` | ⚠️ Unaudited (bytecode match) |
| HedgerPartyBV3 | unknown | mantle | 16 deployments: mantle [`0x122847...7f31fb`](./contracts/mantle-5000/0x122847de828c49b54d5b05994ad2696d567f31fb/); mantle `0x4a8807...207a94`; mantle `0x7e8413...eca61e`; mantle `0x81a794...76e383`; mantle `0xd26be7...96dbe2`; mantle `0xf0154c...f74397`; base `0x7cb60d...bfe4d7`; base `0xeb7bd7...27ca80`; mode `0x513ead...49f5c3`; mode `0x538fa7...10d132`; mode `0xce1b31...bec7e1`; arbitrum `0xf1d4d9...ec1707`; arbitrum `0xff97a4...586d8f`; berachain `0x5d6337...1fef99`; berachain `0x78e76a...890543`; berachain `0xae11db...ee7286` | ⚠️ Unaudited (bytecode match) |
| HedgerPartyBV4 | unknown | berachain | 10 deployments: mantle `0x8ea2e4...9c8b45`; base `0x7c2c40...2d69c3`; base `0xb74d58...93f254`; mode `0xdee1d4...9efccc`; arbitrum `0xb72e1e...7cc315`; arbitrum `0xcc8742...d61bce`; berachain [`0x3e09db...5849d3`](./contracts/berachain-80094/0x3e09dbfe0f6e82b8448a11fb082d44cd575849d3/); berachain `0x4bd822...1310d8`; berachain `0xb32cef...2c9c8c`; berachain `0xbb69a8...921d47` | ⚠️ Unaudited (bytecode match) |
| HedgerPartyBV5 | unknown | mantle | 5 deployments: mantle [`0x1b5893...c0a7fe`](./contracts/mantle-5000/0x1b58936910d5ee8228b20e104d61594df8c0a7fe/); base `0x29a69b...eedf86`; mode `0x93953c...a5a593`; arbitrum `0x6e9753...ac443c`; berachain `0xa801ea...e6840c` | ⚠️ Unaudited (bytecode match) |
| HedgerPartyBV6 | unknown | base | 6 deployments: bsc `0xd5a075...2982da`; mantle `0x47bac7...171530`; base [`0x2487bb...3c163b`](./contracts/base-8453/0x2487bb7dd1bb0d7d736b4c8c7dc32dbe643c163b/); mode `0xc2cee5...a17afc`; arbitrum `0xe53197...d829f6`; berachain `0xf27f94...02ba1f` | ⚠️ Unaudited (bytecode match) |
| HedgerPartyBV7 | unknown | arbitrum | 16 deployments: sonic `0x7d3877...0825d0`; mantle `0x12de03...4346e2`; mantle `0x614bb1...77312c`; mantle `0xe12d30...3f3515`; mantle `0xf9e39b...efe46b`; base `0x1ecabf...0592cf`; base `0xb6e3b4...8d62db`; base `0xb8fbfe...71c332`; base `0xfc4ac3...dc6873`; mode `0x2473a1...4a342f`; mode `0x87fc46...536eb7`; arbitrum [`0x00c069...742421`](./contracts/arbitrum-42161/0x00c069d68bc7420740460dbc3cc3fff9b3742421/); arbitrum `0x7b6fa4...a7113c`; arbitrum `0x7d3877...0825d0`; arbitrum `0xdb91d2...604426`; berachain `0xf3fdd7...1900b9` | ⚠️ Unaudited (bytecode match) |
| LiquidationFacet | unknown | mode | 37 deployments: bsc `0x4d00ad...d5698f`; bsc `0x56116b...74694e`; bsc `0x97919f...25aa23`; bsc `0x9a9f48...fc2c8f`; bsc `0xaa7afc...ac5e36`; polygon `0x50154e...b8b1c6`; polygon `0x599f39...dcc730`; polygon `0x5ec162...91e71c`; polygon `0x61662e...28f5f4`; polygon `0x6ae148...e32403`; polygon `0x8a3079...35e83a`; polygon `0xf395ad...ce81ed`; sonic `0xc25853...488309`; sonic `0xcf74c4...ba69d9`; mantle `0x2ecc7d...0838b5`; mantle `0x50154e...b8b1c6`; mantle `0x5e0663...069934`; mantle `0x619805...b7476d`; base `0x15df9a...ac5f11`; base `0x36dc7c...c3924e`; base `0x7a041a...527ba3`; base `0x91cf2d...2dbe43`; base `0xb558fc...c8588c`; base `0xc6a7cc...793025`; base `0xddbac9...686c7d`; base `0xedf731...c9f85d`; mode [`0x0b6014...61d50a`](./contracts/mode-34443/0x0b60140dcc98a6a9e9985ab165dc54903861d50a/); mode `0x722fb8...744a72`; arbitrum `0x50e88c...e0d5ba`; arbitrum `0x8f0645...b39395`; arbitrum `0xaeca7c...bcaae6`; arbitrum `0xd8b5f4...fe0d57`; arbitrum `0xd9d234...4493d2`; berachain [`0x0b6014...61d50a`](./contracts/berachain-80094/0x0b60140dcc98a6a9e9985ab165dc54903861d50a/); berachain `0x3d17f0...77d266`; berachain `0x504423...d56648`; berachain `0xe6a62c...09259d` | ⚠️ Unaudited (bytecode match) |
| PartyAFacet | unknown | berachain | 40 deployments: bsc `0x3716bd...351fd5`; bsc `0x760c1c...b110f8`; bsc `0x993bc0...59ff5f`; bsc `0xd896a3...bd933d`; polygon `0x0532c5...e6fb22`; polygon `0x2c350d...1be36d`; polygon `0x30e54c...765915`; polygon `0x62fe73...ec1c2b`; polygon `0x68fbcb...128c40`; polygon `0x6b0d9f...91a83d`; polygon `0x820263...3af972`; polygon `0x8452ed...258538`; polygon `0x864fc7...600898`; polygon `0x8f00a4...946953`; polygon `0x9fa01a...2ed2d6`; polygon `0xc10d7e...ba8b5c`; polygon `0xda1e4f...56fa8a`; polygon `0xeb1462...69c974`; polygon `0xf1a281...b80e2b`; polygon `0xf8ae53...4b550d`; sonic `0x0392e9...1d7375`; sonic `0x5e0663...069934`; mantle `0x79d706...f0b06d`; mantle `0x8f00a4...946953`; mantle `0x9d4c16...dffb05`; base `0x07139b...5e0d78`; base `0x6caee2...278fba`; base `0x831a02...41d67a`; base `0x878de0...c2cb5c`; base `0xa04672...ab31cd`; base `0xb3d411...93c9e1`; base `0xc3ce7a...b7ab9c`; mode `0x6ae148...e32403`; mode `0x856582...dda03e`; arbitrum `0x6ea2ef...b628b2`; arbitrum `0x803de3...7a72e3`; arbitrum `0x87a1f9...965168`; arbitrum `0xd6bddf...39aa8d`; berachain [`0x01e822...bc6e3b`](./contracts/berachain-80094/0x01e822aae6d2cc456804ccd36aa4d3830dbc6e3b/); berachain `0x6ae148...e32403` | ⚠️ Unaudited (bytecode match) |
| PartyBGroupActionsFacet | unknown | arbitrum | 15 deployments: bsc `0x1bf566...551e6e`; bsc `0x64e4d3...3b2855`; bsc `0xacc129...7a1a29`; bsc `0xf10984...8d959a`; polygon `0xd86727...20cca2`; sonic `0x8768ff...6c7001`; mantle `0xceb9c2...ea98ea`; base `0x397e99...dda35c`; base `0x4e360c...0d6a74`; base `0x7049f4...92c8de`; mode `0x3d05e0...a9cd39`; arbitrum [`0x13cfd2...04a60b`](./contracts/arbitrum-42161/0x13cfd2dfe11092a755ff2d6aecd33b3ea204a60b/); arbitrum `0xcf78ea...6665a2`; berachain `0xc4bae6...359fcf`; berachain `0xd6ee1f...f02a5e` | ⚠️ Unaudited (bytecode match) |
| PartyBPositionActionsFacet | unknown | bsc | 20 deployments: bsc [`0x0131fd...b6cc28`](./contracts/bsc-56/0x0131fdf62e1de497b536876d5fb5298d91b6cc28/); sonic `0xc4bae6...359fcf`; sonic `0xd6ee1f...f02a5e`; mantle `0x410cd8...3b8991`; mantle `0x68f6a3...d4dd03`; mantle `0xa64012...f911ac`; base `0x1052f9...3667c3`; base `0x222591...45e8f2`; base `0xa17617...8a01f4`; base `0xa49bc3...5ae3bc`; base `0xcd3b3d...1b2c9f`; base `0xe63c2e...010b13`; base `0xe84c00...1fbc8f`; base `0xff3b46...16f710`; mode `0x04580a...ecf7e0`; arbitrum `0x211541...f627eb`; arbitrum `0x90d563...392a9b`; arbitrum `0xe067ab...c423a9`; berachain `0x44ca93...864676`; berachain `0xf39352...86684e` | ⚠️ Unaudited (bytecode match) |
| PartyBQuoteActionsFacet | unknown | arbitrum | 14 deployments: bsc `0xcf8226...8c84e5`; polygon `0xaf1297...fe5f8a`; sonic `0x0188b5...afb8a1`; sonic `0x3adc81...ae6cde`; mantle `0x0734f4...43f3fb`; base `0x0ee043...55d305`; base `0x24e332...f3528e`; base `0x9f116f...80cd18`; base `0xe9d7b5...1c77bd`; mode `0xcbc660...739792`; arbitrum [`0x017474...5a3e56`](./contracts/arbitrum-42161/0x017474144617c8082f0182a241f1bcb9265a3e56/); arbitrum `0x45f0d4...935a04`; berachain `0x1037b5...c8ead7`; berachain `0x8f0645...b39395` | ⚠️ Unaudited (bytecode match) |
| SettlementFacet | unknown | berachain | 13 deployments: bsc `0x4f77a2...20a8e2`; polygon `0xd3102d...f6f9ef`; sonic `0x1037b5...c8ead7`; sonic `0x8f0645...b39395`; mantle `0x5618cd...c657db`; base `0x1cb8a3...f1eb48`; base `0x9afc2b...d3ecf9`; base `0xf1cb50...1aa6f0`; mode `0xb71a0e...94cdbc`; arbitrum `0x185cb4...1e147c`; arbitrum `0x75c539...86e8b4`; berachain [`0x0eb92f...fc2dec`](./contracts/berachain-80094/0x0eb92f476a9a74b15a9fdcc6c252b2013afc2dec/); berachain `0x359ae1...b6ce76` | ⚠️ Unaudited (bytecode match) |
| SymmBriber | operational_periphery | base | 4 deployments: polygon `0xbd6548...7212d6`; base [`0x604f86...8379ce`](./contracts/base-8453/0x604f861dc9fc6d5e685e4701d5668b16c08379ce/); base `0x6ec1e5...c752bd`; base `0xa25022...728b06` | ⚠️ Unaudited (bytecode match) |
| SymmioPartyB | unknown | bsc | 33 deployments: bsc [`0x02ea21...5b69c8`](./contracts/bsc-56/0x02ea21c901cca8760ab298ba81fdb436aa5b69c8/); bsc `0x50658f...fca89d`; bsc `0x59898a...713383`; bsc `0x62b0db...2037f3`; bsc `0x644d05...727738`; bsc `0x99c430...c5c69b`; bsc `0x9fa01a...2ed2d6`; bsc `0xa734eb...1e3ff7`; bsc `0xb03915...a4779d`; bsc `0xef07e1...5305fa`; polygon `0x42c547...b9ff61`; polygon `0x504423...d56648`; polygon `0x6f3e7c...86378d`; polygon `0x7ae0d9...e9029a`; polygon `0x7eed73...ebad18`; polygon `0xe5ef21...752c61`; polygon `0xe9bdc2...a5b15c`; polygon `0xecbd07...26e456`; polygon `0xf339ac...30069a`; polygon `0xfcae76...f258bc`; mantle `0x4dd3c0...f404f5`; mantle `0x504423...d56648`; mantle `0x50e88c...e0d5ba`; base `0x26c572...a294d2`; base `0x4afb48...844e8f`; base `0x7a15ff...bb3c78`; base `0x8299aa...86b5d0`; base `0x9206d9...a23c59`; base `0x958cae...71d954`; base `0xbc6823...031334`; base `0xecd1d9...2b20db`; arbitrum `0x0eb92f...fc2dec`; arbitrum `0x1347a8...8cf8d1` | ⚠️ Unaudited (bytecode match) |
| SymmioSymbolManager | governance | bsc | 39 deployments: bsc [`0x055369...ec9d7f`](./contracts/bsc-56/0x055369013f50b9f8a088a4202e5f1c125cec9d7f/); bsc `0x0df0ef...a555a6`; bsc `0x1f5771...5ea0e0`; bsc `0x285a77...d41667`; bsc `0x2e7f92...e1f3cd`; bsc `0x657a15...e6ff4b`; bsc `0x971b61...ec762b`; bsc `0xb1ed3a...5acb74`; bsc `0xb69e53...2a6b15`; bsc `0xf0aea5...80a13f`; polygon `0x505016...d62e01`; polygon `0x9a09fb...e469c9`; polygon `0xd99778...a559d7`; sonic `0x2071a8...637be3`; sonic `0x3cce95...9c2776`; sonic `0xf73865...424a9e`; mantle `0x1786ac...d6dedd`; mantle `0x4d9a1d...ade1a1`; mantle `0x551c90...7e2b1a`; mantle `0x9ab075...436844`; mantle `0xb4d660...e7aa53`; base `0x1060e8...012292`; base `0x4525af...c3f4c9`; base `0x9a13a3...aa268d`; base `0xc51efe...d91332`; base `0xc88edf...05f8d3`; base `0xcd740b...9ebe20`; base `0xe07f8a...37c730`; mode `0x0ef600...ec2c80`; mode `0x6923f9...2acf07`; mode `0xab2a20...99e534`; mode `0xfd9b6b...a027f3`; arbitrum `0x2f374c...5f1a12`; arbitrum `0x5d55d6...32700b`; arbitrum `0x644d05...727738`; arbitrum `0xba45a0...32363c`; arbitrum `0xe07e63...efaa3c`; berachain `0x152a8e...53e6d6`; berachain `0xcd7c1d...c6e820` | ⚠️ Unaudited (bytecode match) |
| SymmioTimelockController | governance | arbitrum | 14 deployments: bsc `0x3db312...68b0f5`; bsc `0x974bf2...273153`; bsc `0xcb8503...d6e3a1`; mantle `0xa75fba...92ce63`; mantle `0xd02f2c...86ebde`; base `0x62d68c...1ccf2c`; base `0x8cf650...ee5ba4`; base `0x92e89b...7b014d`; mode `0x1da7a3...dcf68d`; mode `0xeccfbb...270fab`; arbitrum [`0x0cbf07...dacd95`](./contracts/arbitrum-42161/0x0cbf07176e67671c99222bebdb166efc58dacd95/); arbitrum `0xffe2c2...daf4af`; berachain `0x3d05e0...a9cd39`; berachain `0xcbc660...739792` | ⚠️ Unaudited (bytecode match) |
| ViewFacet | unknown | berachain | 30 deployments: bsc `0x2e0d2f...d82737`; bsc `0x6ee495...d73753`; bsc `0xaf0d00...7e876f`; polygon `0x240fcc...3c11e6`; polygon `0x650a2d...5a1cf3`; polygon `0x739691...5e4ead`; polygon `0x7e8b57...dd98d3`; polygon `0x832036...67dd02`; polygon `0xa30bf8...c8a858`; polygon `0xa532e4...86d015`; polygon `0xf9ab8b...432c8c`; sonic `0x1347a8...8cf8d1`; sonic `0x4d8e97...bbec55`; mantle `0x27e3de...6d641b`; mantle `0x359ae1...b6ce76`; mantle `0x7e8b57...dd98d3`; mantle `0x9f6d3e...83399e`; base `0x13ed7b...dcf95e`; base `0x8dd419...0980bb`; base `0xa4f237...e79451`; base `0xdb96fd...4a4b56`; base `0xf79f27...941611`; mode `0x9d4c16...dffb05`; mode `0xfa323f...9f57a0`; arbitrum `0x48b9a8...2a237a`; arbitrum `0x5b5c7b...53be63`; arbitrum `0x67d3bb...1b9054`; arbitrum `0xcb7c88...227a14`; berachain [`0x0392e9...1d7375`](./contracts/berachain-80094/0x0392e9cf758cd1566dab547fdaf3ddcfed1d7375/); berachain `0x5e0663...069934` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (83)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | bsc | `0x048028...a32ed4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x0ef600...ec2c80` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x19ff76...695763` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x1b2a94...912abe` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x246f81...4d21b2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x32bfb8...404fef` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x51429c...b0f44b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x52dab1...e14942` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x540598...952638` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x586860...d4ef4a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x6a36a8...1d905a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x9b79e9...1e014d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa3f2bc...a1ef66` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb084a3...d47b2f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd92def...04192f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe5e140...e880c8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe5ef21...752c61` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf3c6c0...801fc4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x182657...5b151d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x49e682...3b8f28` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x4ffe33...92d369` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x528044...c37bba` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x562cfc...24cf48` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x9d4c16...dffb05` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xba5d20...c369fa` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xc126ce...b75770` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xc818f5...8f853e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xcf74c4...ba69d9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xd503a8...7f21e3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xda7011...34a992` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x44ca93...864676` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x50e88c...e0d5ba` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xecbd07...26e456` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x1221da...550586` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x3683f0...214a0e` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x46c397...563656` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x4951f0...bede3d` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x93c9bf...edbbb3` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x02ca85...1949ee` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x02d2ca...f34f9a` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x034b7d...77ea5b` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x061489...392ff8` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x0624d9...ea0145` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x10926a...25d664` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x116598...76920b` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x1ed014...f5de54` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x27c46e...d7d303` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x2b0dda...e230e2` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x2fa7dc...58cb83` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x398ffb...2b2c59` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x3af3f9...21d6a4` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x5dbef4...49897c` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x68d3a7...4cd8eb` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x72662d...d4143e` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x82d342...579581` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x8a52a3...c24a07` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x8c7b58...01e515` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x9a831c...6f1601` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xa3ba80...968709` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xa4387d...c12e77` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xb3181d...63dfec` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xb6492a...7b0da3` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xbc6927...5669a0` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xc317ca...23cbef` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xd132df...c30c45` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xe42578...54a2e7` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xe5c49c...0c1c6f` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xf04422...f5d72f` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xf12c1b...75b0eb` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xf8ca10...7c2018` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xfb1970...126003` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0xc25853...488309` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x00e158...7a33f4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x09f917...da80d6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x1c6b14...3420ac` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x4cf142...c22185` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x628233...e0a7a6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8bf928...36d3af` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x940ac5...ef77fc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x9c1d3b...3bdd1e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc2a1fc...f045b6` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x48f9a6...72a2fe` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xbec5b1...deeb24` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x017218...f6859a`](./contracts/base-8453/0x0172181763f2accab3e5284ea42bb6c1ccf6859a/) | MultiAccount | core_logic | $2.25 | Verified native implementation with $2.25 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x038971...c2155d`](./contracts/base-8453/0x038971fc4480f022156de26d6ca27fa1adc2155d/) | AccountFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x5a25cc...fef671`](./contracts/base-8453/0x5a25cc94d628fedba715064bf101f24a81fef671/) | AirdropHelper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2a4563...40415f`](./contracts/base-8453/0x2a456340793675dc1c8f4ca540013f0c7440415f/) | BaseSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x078b56...54b222`](./contracts/mantle-5000/0x078b56db7a1e61ac76a2865d9ef5ff546754b222/) | BatchSetForceCloseGapRatio | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6e5499...6d2064`](./contracts/bsc-56/0x6e54994f60f5e0e3d0dd5d173831b43a7e6d2064/) | BitmapViewFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x20dd47...541a5a`](./contracts/mantle-5000/0x20dd479c8210ca675f9351b8daaf439026541a5a/) | BridgeFacet | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xaa6902...284cfa`](./contracts/polygon-137/0xaa69027769715aba7e219cf5db5c9ca7ae284cfa/) | ClearingHouseFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x06e98c...70d604`](./contracts/polygon-137/0x06e98c28e70c54279170844be279b4647c70d604/) | ControlFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x671b52...cd7160`](./contracts/base-8453/0x671b527046163b025aa30bf5cf506c8ec2cd7160/) | Create2Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x3d17f0...77d266`](./contracts/mode-34443/0x3d17f073ccb9c3764f105550b0bcf9550477d266/) | Diamond | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x12fed7...2d2ec6`](./contracts/polygon-137/0x12fed7daa1375a96bee0e0d291cbc18cb82d2ec6/) | DiamondCutFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x1a521c...8d38b4`](./contracts/sonic-146/0x1a521c6a05d56a52b9203b6f5d86dd0f2e8d38b4/) | DiamondInit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xc230ad...11b048`](./contracts/polygon-137/0xc230ad3823eeccdcfeb2addfa4f99a0a1c11b048/) | FakeOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x50e88c...e0d5ba`](./contracts/polygon-137/0x50e88c692b137b8a51b6017026ef414651e0d5ba/) | FakeStablecoin | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x04abd9...eeb771`](./contracts/mantle-5000/0x04abd9b019dce47d7b05b4c672fa41ee54eeb771/) | FundingRateFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x122847...7f31fb`](./contracts/mantle-5000/0x122847de828c49b54d5b05994ad2696d567f31fb/) | HedgerPartyBV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x1b5893...c0a7fe`](./contracts/mantle-5000/0x1b58936910d5ee8228b20e104d61594df8c0a7fe/) | HedgerPartyBV5 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2487bb...3c163b`](./contracts/base-8453/0x2487bb7dd1bb0d7d736b4c8c7dc32dbe643c163b/) | HedgerPartyBV6 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x61f007...3d8c11`](./contracts/polygon-137/0x61f007c2fc4f81916ab7d4b2a3345e14aa3d8c11/) | InstantActionsCloseFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x8f4c80...fb5510`](./contracts/polygon-137/0x8f4c80bb159d58f0476524a15e3925111afb5510/) | InstantActionsOpenFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x6ae54f...c53e30`](./contracts/polygon-137/0x6ae54f95bdd54b006366239fea74a61d17c53e30/) | InterdealerFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x064f88...f8f557`](./contracts/bsc-56/0x064f8833093cd61cc7bce4541123b7b0b9f8f557/) | LimitedSymbolAdder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2ca101...84cf2d`](./contracts/base-8453/0x2ca101e49956548f493beab1b4615113a084cf2d/) | MagnusSymmioPartyB | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xa5bce2...bfbce3`](./contracts/base-8453/0xa5bce25b4dbd7fdf2b241ba9440dd07590bfbce3/) | MagSymSymmioPartyB | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0fc53f...a50cc4`](./contracts/base-8453/0x0fc53fc604709a763a0cf6ff5dd3943cc6a50cc4/) | MultiCall | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x3f0602...3ac70f`](./contracts/polygon-137/0x3f0602138441a1379bf090e604a6ff3ca73ac70f/) | PartyACloseFacet | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x40e70a...78db31`](./contracts/polygon-137/0x40e70a60fd45f9f61030ff8d4ec4d475b678db31/) | PartyAOpenFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xa0452c...419774`](./contracts/polygon-137/0xa0452cb1b952782325e11e99929e561797419774/) | PartyBCloseFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x080dd3...2cce19`](./contracts/polygon-137/0x080dd3a713dd13a732efbcfbfe7c1ba45c2cce19/) | PartyBFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xb59251...fda98d`](./contracts/polygon-137/0xb592517201a6eb4343cf7adc270e8e0b53fda98d/) | PartyBOpenFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0131fd...b6cc28`](./contracts/bsc-56/0x0131fdf62e1de497b536876d5fb5298d91b6cc28/) | PartyBPositionActionsFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2fb0ad...555645`](./contracts/base-8453/0x2fb0ad005c093447f802c050728bb14758555645/) | PayDence | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xac401e...371589`](./contracts/base-8453/0xac401ebc212dd5ec3960c14c66ce4ebc52371589/) | PrivateStorage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xf7bad6...1b1b83`](./contracts/base-8453/0xf7bad65e10fb993fe7b8c0569f9d46556b1b1b83/) | RewardNotifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0592fe...9706c3`](./contracts/bsc-56/0x0592fef3c90b58a20212c1bdaf7c0f70c59706c3/) | SignatureStore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x54b4c0...2b1482`](./contracts/base-8453/0x54b4c02ce6938c16fb19c0318fe8964ff12b1482/) | SignatureVerifier | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x232b72...e31f80`](./contracts/base-8453/0x232b72527e3692e78d7f6d73634fc4e100e31f80/) | SymmAllocationClaimer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x604f86...8379ce`](./contracts/base-8453/0x604f861dc9fc6d5e685e4701d5668b16c08379ce/) | SymmBriber | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x800822...5b605f`](./contracts/base-8453/0x800822d361335b4d5f352dac293ca4128b5b605f/) | Symmio | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x8aa3b1...2219dd`](./contracts/mantle-5000/0x8aa3b1be39d11d90ab66dec6d6c112d5bf2219dd/) | SymmioBridgeHelper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x074849...b0b182`](./contracts/mantle-5000/0x074849c3f9f9a948c07fe141d0520df9a7b0b182/) | SymmioDepositorLpToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x02d27b...71d7ec`](./contracts/base-8453/0x02d27b868f07c7202a8b981e44497ad66171d7ec/) | SymmioFeeDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1db0d8...a42e28`](./contracts/base-8453/0x1db0d8bea13772d567091950a9835ec1e6a42e28/) | SymmioGlobalRelayer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0xbd047c...67032b`](./contracts/mantle-5000/0xbd047c4f108282745e0c4dfe2f97ffaf2e67032b/) | SymmioPartyA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x02ea21...5b69c8`](./contracts/bsc-56/0x02ea21c901cca8760ab298ba81fdb436aa5b69c8/) | SymmioPartyB | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x055369...ec9d7f`](./contracts/bsc-56/0x055369013f50b9f8a088a4202e5f1c125cec9d7f/) | SymmioSymbolManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0b946f...b7c23b`](./contracts/bsc-56/0x0b946fc3be1548934cf5d891cbf5fbd890b7c23b/) | TestViewFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x8aa3d3...295af9`](./contracts/base-8453/0x8aa3d366c49674bed84e6adce52ca11e48295af9/) | TokenLaunchOnAerodrome | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xaf10a9...8bed73`](./contracts/polygon-137/0xaf10a99d35354b8d07b7f2ea1ea334f6228bed73/) | TradeSettlementFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x6eb41d...760aa4`](./contracts/base-8453/0x6eb41d755dc71bd7e9e6a6a78513cdc726760aa4/) | UserPowers | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0510fc...7e14b3`](./contracts/base-8453/0x0510fc47f90d557c6f57717361356a58cd7e14b3/) | ZenithSymmioPartyB | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x94d2c4...b40d09`](./contracts/base-8453/0x94d2c48821f7667923d7656acc3529b953b40d09/) | ZenithTestSymmioPartyB | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 108 |
| upstream | 1 |
| standard_library | 13 |
| needs_review | 46 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
