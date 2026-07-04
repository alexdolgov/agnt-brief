# Agentic Audit Brief: Aladdin DAO

⚠️ Lifecycle status: DEAD - TVL dropped 21.7% over 90 days

## Project Overview

- Project: Aladdin DAO (`aladdin-dao`)
- Website: [https://www.aladdin.club](https://www.aladdin.club)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-07-04T14:52:58.139Z
- Pipeline run: v2-pipeline-2026-07-01-2b719a-f2f0
- Chains: arbitrum, blast, bsc, ethereum, linea, optimism
- Contract surface: 170 unique implementations (359 raw deployments)
- DeFi Llama TVL: $22,530.88
- On-chain TVL (included contracts): $19,225,967.36
- TVL by chain: Ethereum $19,225,967.36

## Project Description

Yield Aggregator. Structurally: 78 project-authored contract(s) across 6 chain(s); 19 ERC20 tokens, 9 ERC721 NFTs; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 8 functional families. Its contracts share 17 common project-authored base contract(s) (poolconstant, poolerrors, protocolfees). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 371; live-surface contracts included: 359 (263 live, 96 unknown).
- Excluded by liveness: 12 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 9/53 (17.0%)
- Deployed-live implementations: 74 of 170 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 15/74
- Verified + Unaudited implementations: 59
- Verified by bytecode match: 0
- Unverified implementations: 96
- Unique implementations: 170
- Raw deployments: 359
- Audits discovered: 20 (20 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 16
- ASD (verified + unaudited TVL): $18,041,488.51
- Latest audit: 2024-08 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 19 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 14 match-unverified
- Tier 1 coverage: 3.8% (Trail of Bits)
- Note: This protocol is classified as [dead]. ASD of $18,041,488.51 represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SECBIT | Tier 2 | 13 | 17.6% | 2024-08 |
| PeckShield | Tier 2 | 2 | 2.7% | 2022-07 |
| Trail of Bits | Tier 1 | 2 | 2.7% | 2024-03 |
| CertiK | Tier 2 | 1 | 1.4% | 2021-10 |

## Contract Surface

### ✅ Verified + Audited (15)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CLeverToken | token | ethereum | n/a | 2 deployments: ethereum [`0x3c20ac...972f86`](./contracts/ethereum-1/0x3c20ac688410be8f391be1fb00afc5c212972f86/); ethereum `0xf05e58...0ba904` | ✅ Audited |
| AutoCompoundingConvexFraxStrategy | core_logic | ethereum | n/a | [`0xc9cfd6...c58187`](./contracts/ethereum-1/0xc9cfd6205914ab1e209ffe70326d8dd15fc58187/) | ✅ Audited |
| AladdinConvexVault | core_logic | ethereum | n/a | [`0xc8ff37...68e0e8`](./contracts/ethereum-1/0xc8ff37f7d057df1bb9ad681b53fa4726f268e0e8/) | ✅ Audited |
| AladdinFXSConvexVault | core_logic | ethereum | n/a | [`0xd6e3bb...bf99e1`](./contracts/ethereum-1/0xd6e3bb7b1d6fa75a71d48cfb10096d59abbf99e1/) | ✅ Audited |
| ALDPlus | unknown | ethereum | n/a | [`0x774e4e...34fbe4`](./contracts/ethereum-1/0x774e4ee61dfcdba5a574c113abb03a0a6634fbe4/) | ✅ Audited |
| CvxCompounder | adapter | ethereum | n/a | [`0xb0903a...8fb777`](./contracts/ethereum-1/0xb0903ab70a7467ee5756074b31ac88aebb8fb777/) | ✅ Audited |
| CvxFxnCompounder | adapter | ethereum | n/a | [`0x00bac6...349545`](./contracts/ethereum-1/0x00bac667a4ccf9089ab1db978238c555c4349545/) | ✅ Audited |
| FxUSD | unknown | ethereum | n/a | [`0x676c35...cecb43`](./contracts/ethereum-1/0x676c359c78f75581ab2da5c353d2577c41cecb43/) | ✅ Audited |
| FxUSDCompounder4626 | adapter | ethereum | n/a | [`0x07d171...945f9a`](./contracts/ethereum-1/0x07d1718ff05a8c53c8f05adaed57c0d672945f9a/) | ✅ Audited |
| FxUSDRebalancer | adapter | ethereum | n/a | [`0x78c3af...84bf05`](./contracts/ethereum-1/0x78c3af23a4dea2f630c130d2e42717587584bf05/) | ✅ Audited |
| SdPendleCompounder | adapter | ethereum | n/a | [`0x606462...c7fecf`](./contracts/ethereum-1/0x606462126e4bd5c4d153fe09967e4c46c9c7fecf/) | ✅ Audited |
| TokenMaster | token | ethereum | n/a | 2 deployments: ethereum [`0x2ab335...a29dba`](./contracts/ethereum-1/0x2ab3351b01b5b189d11711b4e6a6e2dd4ca29dba/); ethereum `0xff4446...93e4d7` | ✅ Audited |
| Vesting | operational_periphery | ethereum | n/a | 4 deployments: ethereum [`0x2290ee...c10bdb`](./contracts/ethereum-1/0x2290eefea24a6e43b26c27187742bd1fedc10bdb/); ethereum `0x592e35...695593`; ethereum `0x834188...f28742`; ethereum `0x84c82d...6f7a4e` | ✅ Audited |
| WrappedXALD | unknown | ethereum | n/a | [`0xbdc423...3f734c`](./contracts/ethereum-1/0xbdc423927e70e4013a7906fe54ad8209643f734c/) | ✅ Audited |
| XALD | unknown | ethereum | n/a | [`0xb13b85...3f2af9`](./contracts/ethereum-1/0xb13b85363a25c7361877eebaecced99e353f2af9/) | ✅ Audited |

### ⚠️ Verified + Unaudited (59)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Curve DAO Token | token | ethereum | n/a | [`0x365acc...65bb09`](./contracts/ethereum-1/0x365accfca291e7d3914637abf1f7635db165bb09/) | ⚠️ Unaudited |
| ALDToken | token | ethereum | n/a | [`0xb26c4b...702a8d`](./contracts/ethereum-1/0xb26c4b3ca601136daf98593feaeff9e0ca702a8d/) | ⚠️ Unaudited |
| ReservePool | core_logic | ethereum | n/a | [`0xe93f5d...ee45ed`](./contracts/ethereum-1/0xe93f5dd55ec9bdabbba5ea88e4b4f3c253ee45ed/) | ⚠️ Unaudited |
| RevenuePool | core_logic | ethereum | n/a | 5 deployments: ethereum [`0x0e6746...e5521b`](./contracts/ethereum-1/0x0e67460226a71df07115c1f169418dd159e5521b/); ethereum `0x361f88...d5c8be`; ethereum `0x4fb944...a3c285`; ethereum `0x94172e...0e89d6`; ethereum `0xd36845...f44df7` | ⚠️ Unaudited |
| VaultCurve3Pool | core_logic | ethereum | n/a | [`0x5c8dc3...68d9e2`](./contracts/ethereum-1/0x5c8dc3a18761e4f22f7b8d41228970477168d9e2/) | ⚠️ Unaudited |
| VaultSushiETHWBTC | core_logic | ethereum | n/a | [`0x1c7ed6...c4bbfc`](./contracts/ethereum-1/0x1c7ed66abe1ba029c8efceecfbfc4056b8c4bbfc/) | ⚠️ Unaudited |
| VaultCurveRenWBTC | core_logic | ethereum | n/a | [`0x4ee014...e9580b`](./contracts/ethereum-1/0x4ee014060f4816ad294857d29c22fe62b0e9580b/) | ⚠️ Unaudited |
| GeneralTokenConverter | token | ethereum | n/a | [`0x11c907...8a6784`](./contracts/ethereum-1/0x11c907b3aedbd863e551c37f21dd3f36b28a6784/) | ⚠️ Unaudited |
| AaveFundingPool | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x6ecfa3...0122e8`](./contracts/ethereum-1/0x6ecfa38fee8a5277b91efda204c235814f0122e8/); ethereum `0xab709e...952473` | ⚠️ Unaudited |
| AladdinOFTAdapter | adapter | ethereum | n/a | [`0xcad2b9...c73f86`](./contracts/ethereum-1/0xcad2b9c980322f460db51cc8e45539f677c73f86/) | ⚠️ Unaudited |
| CompounderGateway | adapter | ethereum | n/a | [`0x883fd3...f7df1f`](./contracts/ethereum-1/0x883fd355debf417f82aa9a3e2936971487f7df1f/) | ⚠️ Unaudited |
| ConvexFraxCompounderBurner | adapter | ethereum | n/a | [`0x789e72...f1a034`](./contracts/ethereum-1/0x789e729713ddc80cf2db4e59ca064d3770f1a034/) | ⚠️ Unaudited |
| CurveStableSwapNG | operational_periphery | ethereum | n/a | 14 deployments: ethereum [`0x16b54e...36e770`](./contracts/ethereum-1/0x16b54e3ac8e3ba088333985035b869847e36e770/); ethereum `0x189b4e...32c7d0`; ethereum `0x1ee81c...ea341e`; ethereum `0x2116bf...0ccfa5`; ethereum `0x27cb96...303c9d`; ethereum `0x5018be...3fb61f`; ethereum `0x69cf42...c82ccf`; ethereum `0x6fc7ea...5e0557`; ethereum `0x743455...643c5b`; ethereum `0x74c204...e0193f`; ethereum `0x8ffc7b...c2fcb2`; ethereum `0xca554e...9cb5f1`; ethereum `0xd7bf9b...4cbceb`; ethereum `0xf33ab1...9a796f` | ⚠️ Unaudited |
| DAO | unknown | ethereum | n/a | [`0xb5495a...08bef4`](./contracts/ethereum-1/0xb5495a8d85ee18cfd0d2816993658d88af08bef4/) | ⚠️ Unaudited |
| DebtReducer | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2ac0a3...8e7cb4`](./contracts/ethereum-1/0x2ac0a3b5cb25d6071f05e9729922261bdf8e7cb4/); ethereum `0xf32ffd...0961ac` | ⚠️ Unaudited |
| Fee Distributor | operational_periphery | ethereum | n/a | [`0xd11651...245681`](./contracts/ethereum-1/0xd116513eea4efe3908212afbaefc76cb29245681/) | ⚠️ Unaudited |
| FeeDistributorAdmin | operational_periphery | ethereum | n/a | [`0xd8ae02...fa81c6`](./contracts/ethereum-1/0xd8ae026d0abf2379ba0fc79a7bf190268dfa81c6/) | ⚠️ Unaudited |
| FxGateway | unknown | ethereum | n/a | [`0x5c28b9...f06d9b`](./contracts/ethereum-1/0x5c28b966ab37cfb9397bbc04595f91f0fbf06d9b/) | ⚠️ Unaudited |
| FxUSDBasePool | core_logic | ethereum | n/a | [`0x3374b9...c0ce01`](./contracts/ethereum-1/0x3374b9466d571edd695cf5e198f7c89b33c0ce01/) | ⚠️ Unaudited |
| FxUSDOFTAdaptor | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6e6337...5046b6`](./contracts/ethereum-1/0x6e633729bd4c0cc84fd93938f7fbc622975046b6/); ethereum `0xa07d8c...10a438` | ⚠️ Unaudited |
| FxUSDPriceOracle | operational_periphery | ethereum | n/a | [`0x0b9e51...a7a851`](./contracts/ethereum-1/0x0b9e51d9a436b6b78b5e2666f15b2d0666a7a851/) | ⚠️ Unaudited |
| Gauge Controller | operational_periphery | ethereum | n/a | [`0xe60eb8...6d7f37`](./contracts/ethereum-1/0xe60eb8098b34ed775ac44b1dde864e098c6d7f37/) | ⚠️ Unaudited |
| GaugeRewarder | operational_periphery | ethereum | n/a | [`0x5ac1a8...c02956`](./contracts/ethereum-1/0x5ac1a882e6cedc58511b7e42b02bab42e2c02956/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | n/a | 4 deployments: ethereum [`0x26b2ec...e67bbf`](./contracts/ethereum-1/0x26b2ec4e02ebe2f54583af25b647b1d619e67bbf/); ethereum `0xa0fb1b...804e99`; ethereum `0xc40549...afe23f`; ethereum `0xfc0875...9f0c5e` | ⚠️ Unaudited |
| InversePriceOracle | operational_periphery | ethereum | n/a | [`0x5d2c62...964e6a`](./contracts/ethereum-1/0x5d2c6215555b36889ef235c6d5ccde22e9964e6a/) | ⚠️ Unaudited |
| InverseWstETHPriceOracle | operational_periphery | ethereum | n/a | [`0x222786...fdaad1`](./contracts/ethereum-1/0x222786833b5fd5ee21532d8b576391babefdaad1/) | ⚠️ Unaudited |
| LongPositionEmergencyCloseFacet | unknown | ethereum | n/a | 3 deployments: ethereum [`0x231928...4b3f79`](./contracts/ethereum-1/0x2319289e56830b50a282c25af4f0045c724b3f79/); ethereum `0x7e6a12...cde303`; ethereum `0xa5145f...af31e1` | ⚠️ Unaudited |
| MultiMerkleStash | operational_periphery | ethereum | n/a | 3 deployments: ethereum [`0x36ecde...13a1ae`](./contracts/ethereum-1/0x36ecdec1b5e301321166cefd5856a44bfa13a1ae/); ethereum `0xa95ce9...fc2066`; ethereum `0xabc6a4...514e98` | ⚠️ Unaudited |
| MultiStakingRewards | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4c883a...10f73a`](./contracts/ethereum-1/0x4c883ae6ca39c10e692c0a56bc7a50cbb610f73a/); ethereum `0x78dbc6...15ad23` | ⚠️ Unaudited |
| OFT | unknown | arbitrum | n/a | 7 deployments: optimism `0xc608df...b4e763`; bsc `0xa64f68...74b3de`; arbitrum [`0x179f38...cf7cad`](./contracts/arbitrum-42161/0x179f38f78346f5942e95c5c59cb1da7f55cf7cad/); arbitrum `0x55380f...da42c5`; arbitrum `0xc608df...b4e763`; linea `0xc608df...b4e763`; blast `0xc608df...b4e763` | ⚠️ Unaudited |
| PlatformFeeBurner | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6440e2...97c3db`](./contracts/ethereum-1/0x6440e21a3634c319c69cef8d17601dbc4e97c3db/); ethereum `0x695eb5...411403` | ⚠️ Unaudited |
| PlatformFeeSpliter | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0084c2...63d703`](./contracts/ethereum-1/0x0084c2e1b1823564e597ff4848a88d61ac63d703/); ethereum `0x323668...2380c8` | ⚠️ Unaudited |
| PoolConfiguration | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x2be95a...d26f7f`](./contracts/ethereum-1/0x2be95a7c0ad24e2d2876793172d046db05d26f7f/); ethereum `0x69c408...3d7e10`; ethereum `0x9963e0...6f07b2` | ⚠️ Unaudited |
| PoolManager | core_logic | ethereum | n/a | 5 deployments: ethereum [`0x0d73d3...7d4c3a`](./contracts/ethereum-1/0x0d73d31e1e0d4cc266f0805c94f8e2b9b37d4c3a/); ethereum `0x376909...03fbad`; ethereum `0x7bbfe4...bb1462`; ethereum `0x88f9e9...fc62ac`; ethereum `0x9af12d...ef97f9` | ⚠️ Unaudited |
| PositionAirdrop | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x0fdb73...870799`](./contracts/ethereum-1/0x0fdb73ae370a0b3f349dc046cfeb54c0fa870799/); ethereum `0x1359fc...f259a5` | ⚠️ Unaudited |
| PositionOperateFacet | unknown | ethereum | n/a | [`0x155c0c...8b3cff`](./contracts/ethereum-1/0x155c0c3cde438a3d10bd38f3257cd8d17b8b3cff/) | ⚠️ Unaudited |
| PositionOperateFlashLoanFacetV2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1f8444...82ea93`](./contracts/ethereum-1/0x1f844447ecf5b1523bfbadad3d9dea975982ea93/); ethereum `0x21275a...b66b52` | ⚠️ Unaudited |
| ProxyOFT | unknown | ethereum | n/a | 4 deployments: ethereum [`0x37d421...9c9167`](./contracts/ethereum-1/0x37d4216e58de595719eabae603ae4a2d4d9c9167/); ethereum `0x535f7c...5fc833`; ethereum `0x808130...ed3b32`; ethereum `0xc608df...b4e763` | ⚠️ Unaudited |
| QuestInitiative | unknown | ethereum | n/a | [`0x98cd02...0f425e`](./contracts/ethereum-1/0x98cd02d1e2fa496082d7038d1fd96a5f690f425e/) | ⚠️ Unaudited |
| RebalancePoolGaugeClaimer | operational_periphery | ethereum | n/a | 5 deployments: ethereum [`0x05c630...da5653`](./contracts/ethereum-1/0x05c630e9fc8a064f0e8e6fbb9e2b5d2215da5653/); ethereum `0x4ae3be...69c815`; ethereum `0x81243a...cfc428`; ethereum `0x835191...174d7e`; ethereum `0xb25951...daa98b` | ⚠️ Unaudited |
| RewardClaimHelper | periphery | ethereum | n/a | [`0xaf59d1...657a7f`](./contracts/ethereum-1/0xaf59d144357dcc8a852ad601f27bf6310b657a7f/) | ⚠️ Unaudited |
| RewardHarvester | operational_periphery | ethereum | n/a | [`0x0559a1...7b9c30`](./contracts/ethereum-1/0x0559a1b22409eef7559a5c88cbaa4e285e7b9c30/) | ⚠️ Unaudited |
| SavingFxUSDFacet | unknown | ethereum | n/a | [`0x3cfe09...b130f5`](./contracts/ethereum-1/0x3cfe091c9028154cc5cb721258e9360803b130f5/) | ⚠️ Unaudited |
| SdCRVBribeBurnerV2 | operational_periphery | ethereum | n/a | [`0x680f26...476665`](./contracts/ethereum-1/0x680f26dbc8fa2b463607ebb49a68a69c33476665/) | ⚠️ Unaudited |
| SdCrvCompounder | adapter | ethereum | n/a | [`0x43e54c...7b9922`](./contracts/ethereum-1/0x43e54c2e7b3e294de3a155785f52ab49d87b9922/) | ⚠️ Unaudited |
| ShortPool | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x0055e2...be82fa`](./contracts/ethereum-1/0x0055e248ee7feab91969b77ab32f184b72be82fa/); ethereum `0x7aed2b...9e1f70`; ethereum `0xf3d24b...10a098` | ⚠️ Unaudited |
| ShortPoolManager | core_logic | ethereum | n/a | 4 deployments: ethereum [`0x218b68...d99801`](./contracts/ethereum-1/0x218b689a4f4afba497123b4831f58d6379d99801/); ethereum `0x22ba83...b0f3ff`; ethereum `0x6844aa...3f5e45`; ethereum `0x958df8...2ffb3b` | ⚠️ Unaudited |
| ShortPositionOperateFlashLoanFacet | unknown | ethereum | n/a | 3 deployments: ethereum [`0x3d35dc...174a74`](./contracts/ethereum-1/0x3d35dc5948c948f131ddd9e3a341b99e45174a74/); ethereum `0xb0c255...15e8d6`; ethereum `0xce744c...bdd448` | ⚠️ Unaudited |
| SmartWalletWhitelist | unknown | ethereum | n/a | [`0xac94b8...72aa3e`](./contracts/ethereum-1/0xac94b8ea0e3a080f0fa6ae89cc873d956f72aa3e/) | ⚠️ Unaudited |
| StakeDAOCompounderBurner | adapter | ethereum | n/a | [`0xf95420...c05d5b`](./contracts/ethereum-1/0xf954200fd969443b8f853b4083b71cd073c05d5b/) | ⚠️ Unaudited |
| TimelockController | governance | ethereum | n/a | [`0x68863f...e4e61a`](./contracts/ethereum-1/0x68863fb8855b04509a835082478d6e3d0be4e61a/) | ⚠️ Unaudited |
| Token Minter | operational_periphery | ethereum | n/a | [`0xc8b194...f71def`](./contracts/ethereum-1/0xc8b194925d55d5de9555ad1db74c149329f71def/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | 3 deployments: ethereum [`0xaaa2bb...88ec31`](./contracts/ethereum-1/0xaaa2bb0212ec7190dc7142cd730173b0a788ec31/); ethereum `0xceff51...dd3a58`; ethereum `0xed6c2f...01a903` | ⚠️ Unaudited |
| VaultCurveSETH | core_logic | ethereum | n/a | [`0xb17d98...c9aa07`](./contracts/ethereum-1/0xb17d98c36d2238ffcb27bf797ca9967b3cc9aa07/) | ⚠️ Unaudited |
| VeFeeGateway | unknown | ethereum | n/a | [`0x8fc790...6421e9`](./contracts/ethereum-1/0x8fc7906fc6047679dad53c0c3b40e135486421e9/) | ⚠️ Unaudited |
| VestingManagerProxy | operational_periphery | ethereum | n/a | [`0x0e4f31...c54ced`](./contracts/ethereum-1/0x0e4f31a2f48418c90f5e9fa84bf761d832c54ced/) | ⚠️ Unaudited |
| Voting Escrow | operational_periphery | ethereum | n/a | [`0xec6b8a...f1d469`](./contracts/ethereum-1/0xec6b8a3f3605b083f7044c0f31f2cac0caf1d469/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | 124 deployments: ethereum [`0x02d341...1b285c`](./contracts/ethereum-1/0x02d341ccb60faaf662bc0554d13778015d1b285c/); ethereum `0x051d7e...a74301`; ethereum `0x055be5...ca7222`; ethereum `0x063254...faf14e`; ethereum `0x08380a...a3027c`; ethereum `0x08780f...aa95da`; ethereum `0x094d12...bc6332`; ethereum `0x0ce6a5...627caa`; ethereum `0x0f9cb5...bc83e1`; ethereum `0x1005f7...13d546`; ethereum `0x1062fd...10b5e5`; ethereum `0x11137b...040ab1`; ethereum `0x11f419...b3902c`; ethereum `0x182b72...453c28`; ethereum `0x194ebd...8411d1`; ethereum `0x1aef73...c862e6`; ethereum `0x1cebdb...b8a3a6`; ethereum `0x1de7f0...cda1f2`; ethereum `0x261e3a...dcd2de`; ethereum `0x28ca24...844d96`; ethereum `0x2932a8...3423f5`; ethereum `0x2dded6...ecfeaf`; ethereum `0x2fe94e...f9d614`; ethereum `0x3175df...3473cc`; ethereum `0x33e411...7fdab0`; ethereum `0x3a664a...7337b9`; ethereum `0x3b7020...935855`; ethereum `0x3c0fff...e1d238`; ethereum `0x3c8cae...ae4940`; ethereum `0x3e01dd...8af0fb`; ethereum `0x3f0e79...f2e5df`; ethereum `0x410e3e...d93c2a`; ethereum `0x42d702...7f053a`; ethereum `0x462253...22ca39`; ethereum `0x49849c...fb3675`; ethereum `0x4aa2af...18566a`; ethereum `0x4bfb2f...dc8676`; ethereum `0x4f3e8f...811522`; ethereum `0x4fd86c...3a04bc`; ethereum `0x501611...d160aa`; ethereum `0x5282a4...13638c`; ethereum `0x53a901...4669d5`; ethereum `0x571ff5...bb4091`; ethereum `0x58a3c6...70ee47`; ethereum `0x5b5cfe...003858`; ethereum `0x5bc3dd...9c9dca`; ethereum `0x6070fb...74c017`; ethereum `0x61e106...4996d0`; ethereum `0x64448b...b7136e`; ethereum `0x6955a5...c11f15`; ethereum `0x696b5d...72a53d`; ethereum `0x6c280d...5d3620`; ethereum `0x6c3f90...e6e490`; ethereum `0x6d10ed...695707`; ethereum `0x6d65b4...40fb8f`; ethereum `0x6d7871...6e5af3`; ethereum `0x72953a...581bbf`; ethereum `0x742c3c...de9571`; ethereum `0x7e1444...f13be1`; ethereum `0x7eb40e...f55ae6`; ethereum `0x8038c0...ecc10c`; ethereum `0x803a2b...2874c2`; ethereum `0x81c46f...cd3dd7`; ethereum `0x824f13...77a637`; ethereum `0x8474dd...dec9f6`; ethereum `0x86e917...cf114f`; ethereum `0x890f4e...86985f`; ethereum `0x8925d9...a144b9`; ethereum `0x8a5ef9...6bb7ae`; ethereum `0x90e00a...c2d7f5`; ethereum `0x94be07...2e051e`; ethereum `0x94e131...361b53`; ethereum `0x9582c4...b9c477`; ethereum `0x97e276...19b787`; ethereum `0x99a584...b5788f`; ethereum `0x9b0254...7a2fe8`; ethereum `0x9f330d...2109d8`; ethereum `0xa1f8a6...24e577`; ethereum `0xa2d40e...ba628e`; ethereum `0xa3d87f...b74a9c`; ethereum `0xa464e6...8922dc`; ethereum `0xa5d935...a4458c`; ethereum `0xa96a65...f53ae2`; ethereum `0xaa17a2...c0a6cf`; ethereum `0xaa82ca...ddc78c`; ethereum `0xb0a071...f52f2d`; ethereum `0xb3ad64...6890b8`; ethereum `0xb5e7f9...9b42e2`; ethereum `0xbe1751...a0fbd5`; ethereum `0xc2b1df...0bf627`; ethereum `0xc45b2e...93c756`; ethereum `0xc50222...67f2f0`; ethereum `0xc5424b...db4567`; ethereum `0xc5cfad...39b023`; ethereum `0xcee60c...656f3a`; ethereum `0xcfc251...a59503`; ethereum `0xd09216...9d3778`; ethereum `0xd30dd0...225ac8`; ethereum `0xd5bcf5...570c8d`; ethereum `0xd66290...588b5d`; ethereum `0xd7d147...9fa416`; ethereum `0xd81da8...51f8dd`; ethereum `0xd8b712...866ddf`; ethereum `0xdc2431...f67022`; ethereum `0xdcef96...4241a2`; ethereum `0xde5331...6331e8`; ethereum `0xdebf20...8a8eee`; ethereum `0xdefd8f...6b2168`; ethereum `0xe06a65...5960e2`; ethereum `0xe4c099...4b4968`; ethereum `0xe7a24e...d7d171`; ethereum `0xeb16ae...65a733`; ethereum `0xecb456...e9b347`; ethereum `0xf178c0...c623c0`; ethereum `0xf1f85a...236adc`; ethereum `0xf253f8...55a07f`; ethereum `0xf43211...366c7a`; ethereum `0xf5194c...c1949f`; ethereum `0xf9078f...d1a5a6`; ethereum `0xf94409...1de7a8`; ethereum `0xf98450...24cfc4`; ethereum `0xfa9a30...f67e58`; ethereum `0xfd2a8f...c14900`; ethereum `0xfd4d8a...06c87d` | ⚠️ Unaudited |
| WeightedPool | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x69671c...631378`](./contracts/ethereum-1/0x69671c808c8f1c1490a4c9e0145884dfb5631378/); ethereum `0x80a8ea...914e49` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (96)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x04af91...b5303d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x06364f...d6c763` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x075b1b...e70fb3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0cd730...01d222` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0dfdc4...939a9d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x14f9bd...0d7d15` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x179484...19762c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x192092...3b36ef` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1bd65c...ceaace` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1f2a66...62b275` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2088a8...2d8f6c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2146b0...f881b6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2b645a...8d1434` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2e60cf...0ef419` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2ed872...2fc25c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3740fb...06f5fd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3a3060...c183c5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3b3ac5...24333b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x423b5f...f28fef` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x45f783...055f51` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4e680f...357bd4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4f0e0e...053841` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x52ea46...35d85c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x54ee22...68b800` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5c5395...0c013b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5e71f0...cf0e8d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x61dc3c...896e87` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x65b81c...f58ffe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6812c0...50fc74` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6ac9de...53cac8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6ff57e...d4fa00` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x76827f...21f5c7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7771f7...cbc812` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x79a8c4...5a4f27` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7adbf7...4456de` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7b5a09...f5f55b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7fc77b...0a9714` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7fe97b...44ecfd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7fffa7...7dfc7d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x80caaa...c89af2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x845838...37f8a2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8474c1...ba9f4f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x884be2...ceb75c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8dc145...086061` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x930541...f0895b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9726e9...97313e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x97b7e9...b9f86d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9fc689...4a1f23` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa27476...d0eadb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa2b47e...fb7a56` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa50ccc...187287` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa5407e...3efbfd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa9b002...3372f6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaaaeee...0e9c35` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xac795d...747a80` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xac7cf0...9413b5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb10c49...2e23e2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb241a8...e7188f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb527c4...ec5a0b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb6a793...e2eb44` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb6c057...b59edb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb6f3c7...605d58` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbbb805...b35b8c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbbc81d...73a5d3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbc7e83...f40a35` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc25a3a...72917f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc97ef4...0451db` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xced2c6...24cdc7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd133d1...e2f778` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd905e2...1db0d8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdbe281...b1a0a9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdc31f5...96838e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdf5e0e...d806a8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe5fdba...95cba5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe9cb57...fc5a20` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeb2120...b6bc06` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xebdd53...957f20` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xedf54b...16a966` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf0c702...d3f6f9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf129d6...971bab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf32b39...5cc3de` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf79d92...324b8d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfcba3e...f12851` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfd91ae...718bcd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfef6ee...6d1135` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xff1188...7d5b97` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xa7580d...2c4617` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xc752c6...32b991` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x535f7c...5fc833` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x62c686...3beeac` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x808130...ed3b32` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf9e10d...980e94` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x16d88e...14c1a2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x808130...ed3b32` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa7580d...2c4617` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc752c6...32b991` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-AladdinDAO2-v1.0.pdf](https://www.aladdin.club/audits/PeckShield-Audit-Report-AladdinDAO2-v1.0.pdf) | PeckShield | Audit | 2021-08 | stale | Direct | contract_name | 2 | high |
| [skynet.certik.com/projects/aladdindao](https://skynet.certik.com/projects/aladdindao) | CertiK | Audit | 2021-10 | stale | Direct | contract_name | 1 | n/a |
| [2024-03-aladdinfxprotocol-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2024-03-aladdinfxprotocol-securityreview.pdf) | Trail of Bits | Audit | 2024-03 | stale | Direct | contract_name | 2 | n/a |
| [SECBIT-Audit-Report-AladdinDAO-V2.pdf](https://github.com/AladdinDAO/aladdin-v2-contracts/blob/main/audit-reports/SECBIT-Audit-Report-AladdinDAO-V2.pdf) | SECBIT | Audit | 2021-12 | stale | Direct | contract_name | 2 | n/a |
| [SECBIT_Concentrator_Report_v1.1.pdf](https://github.com/AladdinDAO/aladdin-v3-contracts/blob/main/audit-reports/SECBIT_Concentrator_Report_v1.1.pdf) | SECBIT | Audit | 2022-03 | stale | Direct | contract_name | 1 | n/a |
| [SECBIT_CLever_Report_v1.1.pdf](https://github.com/AladdinDAO/aladdin-v3-contracts/blob/main/audit-reports/SECBIT_CLever_Report_v1.1.pdf) | SECBIT | Audit | 2022-04 | stale | Direct | contract_name | 2 | n/a |
| [SECBIT_f(x)_FxUSD_Report_v1.0_20240223.pdf](https://github.com/AladdinDAO/aladdin-v3-contracts/blob/main/audit-reports/SECBIT_f(x)_FxUSD_Report_v1.0_20240223.pdf) | SECBIT | Audit | 2024-02 | stale | Direct | contract_name | 2 | n/a |
| [PeckShield-Audit-Report-AladdinDAOv2-1.0.pdf](https://github.com/AladdinDAO/aladdin-v2-contracts/blob/main/audit-reports/PeckShield-Audit-Report-AladdinDAOv2-1.0.pdf) | PeckShield | Audit | 2021-12 | stale | Direct | n/a | 0 | n/a |
| [PeckShield-Audit-Report-AladdinV3Concentrator-v1.0.pdf](https://github.com/AladdinDAO/aladdin-v3-contracts/blob/main/audit-reports/PeckShield-Audit-Report-AladdinV3Concentrator-v1.0.pdf) | PeckShield | Audit | 2022-04 | stale | Direct | n/a | 0 | n/a |
| [SECBIT_f(x)_Shareable_RebalancePool_Report_20240118.pdf](https://github.com/AladdinDAO/aladdin-v3-contracts/blob/main/audit-reports/SECBIT_f(x)_Shareable_RebalancePool_Report_20240118.pdf) | SECBIT | Audit | 2024-01 | stale | Direct | n/a | 0 | n/a |
| [SECBIT_Concentrator_arUSD_Report_v1.0_20240618.pdf](https://github.com/AladdinDAO/aladdin-v3-contracts/blob/main/audit-reports/SECBIT_Concentrator_arUSD_Report_v1.0_20240618.pdf) | SECBIT | Audit | 2024-06 | stale | Direct | contract_name | 1 | n/a |
| [SECBIT_Concentrator_aFXN_Report_v1.0_20240726.pdf](https://github.com/AladdinDAO/aladdin-v3-contracts/blob/main/audit-reports/SECBIT_Concentrator_aFXN_Report_v1.0_20240726.pdf) | SECBIT | Audit | 2024-07 | stale | Direct | contract_name | 1 | n/a |
| [SECBIT_Concentrator_asdPENDLE_v1.0_20240813.pdf](https://github.com/AladdinDAO/aladdin-v3-contracts/blob/main/audit-reports/SECBIT_Concentrator_asdPENDLE_v1.0_20240813.pdf) | SECBIT | Audit | 2024-08 | aging | Direct | contract_name | 1 | n/a |
| [PeckShield-Audit-Report-AladdinDAO-Concentrator-v1.0-20220704.pdf](https://github.com/AladdinDAO/aladdin-v3-contracts/blob/main/audit-reports/PeckShield-Audit-Report-AladdinDAO-Concentrator-v1.0-20220704.pdf) | PeckShield | Audit | 2022-07 | stale | Direct | contract_name | 1 | n/a |
| [SECBIT_Concentrator_IFO_Report_v1.2_20220701.pdf](https://github.com/AladdinDAO/aladdin-v3-contracts/blob/main/audit-reports/SECBIT_Concentrator_IFO_Report_v1.2_20220701.pdf) | SECBIT | Audit | 2022-07 | stale | Direct | contract_name | 1 | n/a |
| [SECBIT_AladdinDAO_aFXS_Report.pdf](https://github.com/AladdinDAO/aladdin-v3-contracts/blob/main/audit-reports/SECBIT_AladdinDAO_aFXS_Report.pdf) | SECBIT | Audit | 2022-08 | stale | Direct | contract_name | 1 | n/a |
| [AladdinETH_Report_v1.0_2022_12_22.pdf](https://github.com/AladdinDAO/aladdin-v3-contracts/blob/main/audit-reports/AladdinETH_Report_v1.0_2022_12_22.pdf) | SECBIT | Audit | 2022-12 | stale | Direct | contract_name | 1 | n/a |
| [SECBIT_sdCRV_Report_v1.0_20230202.pdf](https://github.com/AladdinDAO/aladdin-v3-contracts/blob/main/audit-reports/SECBIT_sdCRV_Report_v1.0_20230202.pdf) | SECBIT | Audit | 2023-02 | stale | Direct | n/a | 0 | n/a |
| [SECBIT_Aladdin_aCVX_Report_v1.0_20231018.pdf](https://github.com/AladdinDAO/aladdin-v3-contracts/blob/main/audit-reports/SECBIT_Aladdin_aCVX_Report_v1.0_20231018.pdf) | SECBIT | Audit | 2023-10 | stale | Direct | contract_name | 1 | n/a |
| [AladdinDao_V3_Report_Secbit.pdf](https://aladdin.club/audits/AladdinDao_V3_Report_Secbit.pdf) | SECBIT | Audit | 2022-03 | stale | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xb26c4b...702a8d`](./contracts/ethereum-1/0xb26c4b3ca601136daf98593feaeff9e0ca702a8d/) | ALDToken | token | $2,049,177.35 | Verified native implementation with $2,049,177.35 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe93f5d...ee45ed`](./contracts/ethereum-1/0xe93f5dd55ec9bdabbba5ea88e4b4f3c253ee45ed/) | ReservePool | core_logic | $59,194.22 | Verified native implementation with $59,194.22 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0e6746...e5521b`](./contracts/ethereum-1/0x0e67460226a71df07115c1f169418dd159e5521b/) | RevenuePool | core_logic | $401.78 | Verified native implementation with $401.78 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5c8dc3...68d9e2`](./contracts/ethereum-1/0x5c8dc3a18761e4f22f7b8d41228970477168d9e2/) | VaultCurve3Pool | core_logic | $147.60 | Verified native implementation with $147.60 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1c7ed6...c4bbfc`](./contracts/ethereum-1/0x1c7ed66abe1ba029c8efceecfbfc4056b8c4bbfc/) | VaultSushiETHWBTC | core_logic | $26.56 | Verified native implementation with $26.56 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4ee014...e9580b`](./contracts/ethereum-1/0x4ee014060f4816ad294857d29c22fe62b0e9580b/) | VaultCurveRenWBTC | core_logic | $9.04 | Verified native implementation with $9.04 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x11c907...8a6784`](./contracts/ethereum-1/0x11c907b3aedbd863e551c37f21dd3f36b28a6784/) | GeneralTokenConverter | token | $0.04 | Verified native implementation with $0.04 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcad2b9...c73f86`](./contracts/ethereum-1/0xcad2b9c980322f460db51cc8e45539f677c73f86/) | AladdinOFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb5495a...08bef4`](./contracts/ethereum-1/0xb5495a8d85ee18cfd0d2816993658d88af08bef4/) | DAO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2ac0a3...8e7cb4`](./contracts/ethereum-1/0x2ac0a3b5cb25d6071f05e9729922261bdf8e7cb4/) | DebtReducer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd11651...245681`](./contracts/ethereum-1/0xd116513eea4efe3908212afbaefc76cb29245681/) | Fee Distributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd8ae02...fa81c6`](./contracts/ethereum-1/0xd8ae026d0abf2379ba0fc79a7bf190268dfa81c6/) | FeeDistributorAdmin | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5c28b9...f06d9b`](./contracts/ethereum-1/0x5c28b966ab37cfb9397bbc04595f91f0fbf06d9b/) | FxGateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3374b9...c0ce01`](./contracts/ethereum-1/0x3374b9466d571edd695cf5e198f7c89b33c0ce01/) | FxUSDBasePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6e6337...5046b6`](./contracts/ethereum-1/0x6e633729bd4c0cc84fd93938f7fbc622975046b6/) | FxUSDOFTAdaptor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0b9e51...a7a851`](./contracts/ethereum-1/0x0b9e51d9a436b6b78b5e2666f15b2d0666a7a851/) | FxUSDPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5ac1a8...c02956`](./contracts/ethereum-1/0x5ac1a882e6cedc58511b7e42b02bab42e2c02956/) | GaugeRewarder | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5d2c62...964e6a`](./contracts/ethereum-1/0x5d2c6215555b36889ef235c6d5ccde22e9964e6a/) | InversePriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x222786...fdaad1`](./contracts/ethereum-1/0x222786833b5fd5ee21532d8b576391babefdaad1/) | InverseWstETHPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x231928...4b3f79`](./contracts/ethereum-1/0x2319289e56830b50a282c25af4f0045c724b3f79/) | LongPositionEmergencyCloseFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x36ecde...13a1ae`](./contracts/ethereum-1/0x36ecdec1b5e301321166cefd5856a44bfa13a1ae/) | MultiMerkleStash | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4c883a...10f73a`](./contracts/ethereum-1/0x4c883ae6ca39c10e692c0a56bc7a50cbb610f73a/) | MultiStakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6440e2...97c3db`](./contracts/ethereum-1/0x6440e21a3634c319c69cef8d17601dbc4e97c3db/) | PlatformFeeBurner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0084c2...63d703`](./contracts/ethereum-1/0x0084c2e1b1823564e597ff4848a88d61ac63d703/) | PlatformFeeSpliter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2be95a...d26f7f`](./contracts/ethereum-1/0x2be95a7c0ad24e2d2876793172d046db05d26f7f/) | PoolConfiguration | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0d73d3...7d4c3a`](./contracts/ethereum-1/0x0d73d31e1e0d4cc266f0805c94f8e2b9b37d4c3a/) | PoolManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0fdb73...870799`](./contracts/ethereum-1/0x0fdb73ae370a0b3f349dc046cfeb54c0fa870799/) | PositionAirdrop | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x155c0c...8b3cff`](./contracts/ethereum-1/0x155c0c3cde438a3d10bd38f3257cd8d17b8b3cff/) | PositionOperateFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1f8444...82ea93`](./contracts/ethereum-1/0x1f844447ecf5b1523bfbadad3d9dea975982ea93/) | PositionOperateFlashLoanFacetV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x98cd02...0f425e`](./contracts/ethereum-1/0x98cd02d1e2fa496082d7038d1fd96a5f690f425e/) | QuestInitiative | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x05c630...da5653`](./contracts/ethereum-1/0x05c630e9fc8a064f0e8e6fbb9e2b5d2215da5653/) | RebalancePoolGaugeClaimer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaf59d1...657a7f`](./contracts/ethereum-1/0xaf59d144357dcc8a852ad601f27bf6310b657a7f/) | RewardClaimHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0559a1...7b9c30`](./contracts/ethereum-1/0x0559a1b22409eef7559a5c88cbaa4e285e7b9c30/) | RewardHarvester | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3cfe09...b130f5`](./contracts/ethereum-1/0x3cfe091c9028154cc5cb721258e9360803b130f5/) | SavingFxUSDFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x680f26...476665`](./contracts/ethereum-1/0x680f26dbc8fa2b463607ebb49a68a69c33476665/) | SdCRVBribeBurnerV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0055e2...be82fa`](./contracts/ethereum-1/0x0055e248ee7feab91969b77ab32f184b72be82fa/) | ShortPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x218b68...d99801`](./contracts/ethereum-1/0x218b689a4f4afba497123b4831f58d6379d99801/) | ShortPoolManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3d35dc...174a74`](./contracts/ethereum-1/0x3d35dc5948c948f131ddd9e3a341b99e45174a74/) | ShortPositionOperateFlashLoanFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xac94b8...72aa3e`](./contracts/ethereum-1/0xac94b8ea0e3a080f0fa6ae89cc873d956f72aa3e/) | SmartWalletWhitelist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc8b194...f71def`](./contracts/ethereum-1/0xc8b194925d55d5de9555ad1db74c149329f71def/) | Token Minter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb17d98...c9aa07`](./contracts/ethereum-1/0xb17d98c36d2238ffcb27bf797ca9967b3cc9aa07/) | VaultCurveSETH | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8fc790...6421e9`](./contracts/ethereum-1/0x8fc7906fc6047679dad53c0c3b40e135486421e9/) | VeFeeGateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0e4f31...c54ced`](./contracts/ethereum-1/0x0e4f31a2f48418c90f5e9fa84bf761d832c54ced/) | VestingManagerProxy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 54 |
| upstream | 11 |
| standard_library | 10 |
| needs_review | 95 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: contract_name=19, extraction_exact=2

Zero-match audit list:

- [12638] PeckShield-Audit-Report-AladdinDAOv2-1.0.pdf
- [12639] PeckShield-Audit-Report-AladdinV3Concentrator-v1.0.pdf
- [16062] SECBIT_f(x)_Shareable_RebalancePool_Report_20240118.pdf
- [16070] SECBIT_sdCRV_Report_v1.0_20230202.pdf

Fork inheritance lineage and inherited audits are included when available.
