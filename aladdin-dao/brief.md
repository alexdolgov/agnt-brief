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
| CLeverToken | token | ethereum | n/a | 2 deployments: ethereum [`0x3c20ac688410be8f391be1fb00afc5c212972f86`](./contracts/ethereum-1/0x3c20ac688410be8f391be1fb00afc5c212972f86/); ethereum `0xf05e58fcea29ab4da01a495140b349f8410ba904` | ✅ Audited |
| AutoCompoundingConvexFraxStrategy | core_logic | ethereum | n/a | [`0xc9cfd6205914ab1e209ffe70326d8dd15fc58187`](./contracts/ethereum-1/0xc9cfd6205914ab1e209ffe70326d8dd15fc58187/) | ✅ Audited |
| AladdinConvexVault | core_logic | ethereum | n/a | [`0xc8ff37f7d057df1bb9ad681b53fa4726f268e0e8`](./contracts/ethereum-1/0xc8ff37f7d057df1bb9ad681b53fa4726f268e0e8/) | ✅ Audited |
| AladdinFXSConvexVault | core_logic | ethereum | n/a | [`0xd6e3bb7b1d6fa75a71d48cfb10096d59abbf99e1`](./contracts/ethereum-1/0xd6e3bb7b1d6fa75a71d48cfb10096d59abbf99e1/) | ✅ Audited |
| ALDPlus | unknown | ethereum | n/a | [`0x774e4ee61dfcdba5a574c113abb03a0a6634fbe4`](./contracts/ethereum-1/0x774e4ee61dfcdba5a574c113abb03a0a6634fbe4/) | ✅ Audited |
| CvxCompounder | adapter | ethereum | n/a | [`0xb0903ab70a7467ee5756074b31ac88aebb8fb777`](./contracts/ethereum-1/0xb0903ab70a7467ee5756074b31ac88aebb8fb777/) | ✅ Audited |
| CvxFxnCompounder | adapter | ethereum | n/a | [`0x00bac667a4ccf9089ab1db978238c555c4349545`](./contracts/ethereum-1/0x00bac667a4ccf9089ab1db978238c555c4349545/) | ✅ Audited |
| FxUSD | unknown | ethereum | n/a | [`0x676c359c78f75581ab2da5c353d2577c41cecb43`](./contracts/ethereum-1/0x676c359c78f75581ab2da5c353d2577c41cecb43/) | ✅ Audited |
| FxUSDCompounder4626 | adapter | ethereum | n/a | [`0x07d1718ff05a8c53c8f05adaed57c0d672945f9a`](./contracts/ethereum-1/0x07d1718ff05a8c53c8f05adaed57c0d672945f9a/) | ✅ Audited |
| FxUSDRebalancer | adapter | ethereum | n/a | [`0x78c3af23a4dea2f630c130d2e42717587584bf05`](./contracts/ethereum-1/0x78c3af23a4dea2f630c130d2e42717587584bf05/) | ✅ Audited |
| SdPendleCompounder | adapter | ethereum | n/a | [`0x606462126e4bd5c4d153fe09967e4c46c9c7fecf`](./contracts/ethereum-1/0x606462126e4bd5c4d153fe09967e4c46c9c7fecf/) | ✅ Audited |
| TokenMaster | token | ethereum | n/a | 2 deployments: ethereum [`0x2ab3351b01b5b189d11711b4e6a6e2dd4ca29dba`](./contracts/ethereum-1/0x2ab3351b01b5b189d11711b4e6a6e2dd4ca29dba/); ethereum `0xff4446e9df1c8281ce1d42610c3bc0342f93e4d7` | ✅ Audited |
| Vesting | operational_periphery | ethereum | n/a | 4 deployments: ethereum [`0x2290eefea24a6e43b26c27187742bd1fedc10bdb`](./contracts/ethereum-1/0x2290eefea24a6e43b26c27187742bd1fedc10bdb/); ethereum `0x592e353c5b97356e99eaf6a72b971ba1c9695593`; ethereum `0x8341889905bdef85b87cb7644a93f7a482f28742`; ethereum `0x84c82d43f1cc64730849f3e389fe3f6d776f7a4e` | ✅ Audited |
| WrappedXALD | unknown | ethereum | n/a | [`0xbdc423927e70e4013a7906fe54ad8209643f734c`](./contracts/ethereum-1/0xbdc423927e70e4013a7906fe54ad8209643f734c/) | ✅ Audited |
| XALD | unknown | ethereum | n/a | [`0xb13b85363a25c7361877eebaecced99e353f2af9`](./contracts/ethereum-1/0xb13b85363a25c7361877eebaecced99e353f2af9/) | ✅ Audited |

### ⚠️ Verified + Unaudited (59)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Curve DAO Token | token | ethereum | n/a | [`0x365accfca291e7d3914637abf1f7635db165bb09`](./contracts/ethereum-1/0x365accfca291e7d3914637abf1f7635db165bb09/) | ⚠️ Unaudited |
| ALDToken | token | ethereum | n/a | [`0xb26c4b3ca601136daf98593feaeff9e0ca702a8d`](./contracts/ethereum-1/0xb26c4b3ca601136daf98593feaeff9e0ca702a8d/) | ⚠️ Unaudited |
| ReservePool | core_logic | ethereum | n/a | [`0xe93f5dd55ec9bdabbba5ea88e4b4f3c253ee45ed`](./contracts/ethereum-1/0xe93f5dd55ec9bdabbba5ea88e4b4f3c253ee45ed/) | ⚠️ Unaudited |
| RevenuePool | core_logic | ethereum | n/a | 5 deployments: ethereum [`0x0e67460226a71df07115c1f169418dd159e5521b`](./contracts/ethereum-1/0x0e67460226a71df07115c1f169418dd159e5521b/); ethereum `0x361f88157073b8522def857761484ca7b1d5c8be`; ethereum `0x4fb9445019ba1e3a39bd1dfbe9cc7815e0a3c285`; ethereum `0x94172e0b1714792c54f0b077b64e37c8050e89d6`; ethereum `0xd36845bd3ce4ea0d60aefa6a902ebfd23cf44df7` | ⚠️ Unaudited |
| VaultCurve3Pool | core_logic | ethereum | n/a | [`0x5c8dc3a18761e4f22f7b8d41228970477168d9e2`](./contracts/ethereum-1/0x5c8dc3a18761e4f22f7b8d41228970477168d9e2/) | ⚠️ Unaudited |
| VaultSushiETHWBTC | core_logic | ethereum | n/a | [`0x1c7ed66abe1ba029c8efceecfbfc4056b8c4bbfc`](./contracts/ethereum-1/0x1c7ed66abe1ba029c8efceecfbfc4056b8c4bbfc/) | ⚠️ Unaudited |
| VaultCurveRenWBTC | core_logic | ethereum | n/a | [`0x4ee014060f4816ad294857d29c22fe62b0e9580b`](./contracts/ethereum-1/0x4ee014060f4816ad294857d29c22fe62b0e9580b/) | ⚠️ Unaudited |
| GeneralTokenConverter | token | ethereum | n/a | [`0x11c907b3aedbd863e551c37f21dd3f36b28a6784`](./contracts/ethereum-1/0x11c907b3aedbd863e551c37f21dd3f36b28a6784/) | ⚠️ Unaudited |
| AaveFundingPool | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x6ecfa38fee8a5277b91efda204c235814f0122e8`](./contracts/ethereum-1/0x6ecfa38fee8a5277b91efda204c235814f0122e8/); ethereum `0xab709e26fa6b0a30c119d8c55b887ded24952473` | ⚠️ Unaudited |
| AladdinOFTAdapter | adapter | ethereum | n/a | [`0xcad2b9c980322f460db51cc8e45539f677c73f86`](./contracts/ethereum-1/0xcad2b9c980322f460db51cc8e45539f677c73f86/) | ⚠️ Unaudited |
| CompounderGateway | adapter | ethereum | n/a | [`0x883fd355debf417f82aa9a3e2936971487f7df1f`](./contracts/ethereum-1/0x883fd355debf417f82aa9a3e2936971487f7df1f/) | ⚠️ Unaudited |
| ConvexFraxCompounderBurner | adapter | ethereum | n/a | [`0x789e729713ddc80cf2db4e59ca064d3770f1a034`](./contracts/ethereum-1/0x789e729713ddc80cf2db4e59ca064d3770f1a034/) | ⚠️ Unaudited |
| CurveStableSwapNG | operational_periphery | ethereum | n/a | 14 deployments: ethereum [`0x16b54e3ac8e3ba088333985035b869847e36e770`](./contracts/ethereum-1/0x16b54e3ac8e3ba088333985035b869847e36e770/); ethereum `0x189b4e49b5caf33565095097b4b960f14032c7d0`; ethereum `0x1ee81c56e42ec34039d993d12410d437ddea341e`; ethereum `0x2116bfad62b383043230501f6a124c6ea60ccfa5`; ethereum `0x27cb9629ae3ee05cb266b99ca4124ec999303c9d`; ethereum `0x5018be882dcce5e3f2f3b0913ae2096b9b3fb61f`; ethereum `0x69cf42f15f9325986154b61a013da6e8fec82ccf`; ethereum `0x6fc7ea6ca8cd2759803eb78159c931a8ff5e0557`; ethereum `0x74345504eaea3d9408fc69ae7eb2d14095643c5b`; ethereum `0x74c204520c9e88aa3eb9d61788aba11be1e0193f`; ethereum `0x8ffc7b89412efd0d17edea2018f6634ea4c2fcb2`; ethereum `0xca554e2e2948a211d4650fe0f4e271f01f9cb5f1`; ethereum `0xd7bf9bb6bd088317effd116e2b70ea3a054cbceb`; ethereum `0xf33ab11e5c4e55dacb13644f0c0a9d1e199a796f` | ⚠️ Unaudited |
| DAO | unknown | ethereum | n/a | [`0xb5495a8d85ee18cfd0d2816993658d88af08bef4`](./contracts/ethereum-1/0xb5495a8d85ee18cfd0d2816993658d88af08bef4/) | ⚠️ Unaudited |
| DebtReducer | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2ac0a3b5cb25d6071f05e9729922261bdf8e7cb4`](./contracts/ethereum-1/0x2ac0a3b5cb25d6071f05e9729922261bdf8e7cb4/); ethereum `0xf32ffd90133c7ec15e1519b9f7de8143310961ac` | ⚠️ Unaudited |
| Fee Distributor | operational_periphery | ethereum | n/a | [`0xd116513eea4efe3908212afbaefc76cb29245681`](./contracts/ethereum-1/0xd116513eea4efe3908212afbaefc76cb29245681/) | ⚠️ Unaudited |
| FeeDistributorAdmin | operational_periphery | ethereum | n/a | [`0xd8ae026d0abf2379ba0fc79a7bf190268dfa81c6`](./contracts/ethereum-1/0xd8ae026d0abf2379ba0fc79a7bf190268dfa81c6/) | ⚠️ Unaudited |
| FxGateway | unknown | ethereum | n/a | [`0x5c28b966ab37cfb9397bbc04595f91f0fbf06d9b`](./contracts/ethereum-1/0x5c28b966ab37cfb9397bbc04595f91f0fbf06d9b/) | ⚠️ Unaudited |
| FxUSDBasePool | core_logic | ethereum | n/a | [`0x3374b9466d571edd695cf5e198f7c89b33c0ce01`](./contracts/ethereum-1/0x3374b9466d571edd695cf5e198f7c89b33c0ce01/) | ⚠️ Unaudited |
| FxUSDOFTAdaptor | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6e633729bd4c0cc84fd93938f7fbc622975046b6`](./contracts/ethereum-1/0x6e633729bd4c0cc84fd93938f7fbc622975046b6/); ethereum `0xa07d8cc424421cc2bce0544a65481376f010a438` | ⚠️ Unaudited |
| FxUSDPriceOracle | operational_periphery | ethereum | n/a | [`0x0b9e51d9a436b6b78b5e2666f15b2d0666a7a851`](./contracts/ethereum-1/0x0b9e51d9a436b6b78b5e2666f15b2d0666a7a851/) | ⚠️ Unaudited |
| Gauge Controller | operational_periphery | ethereum | n/a | [`0xe60eb8098b34ed775ac44b1dde864e098c6d7f37`](./contracts/ethereum-1/0xe60eb8098b34ed775ac44b1dde864e098c6d7f37/) | ⚠️ Unaudited |
| GaugeRewarder | operational_periphery | ethereum | n/a | [`0x5ac1a882e6cedc58511b7e42b02bab42e2c02956`](./contracts/ethereum-1/0x5ac1a882e6cedc58511b7e42b02bab42e2c02956/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | n/a | 4 deployments: ethereum [`0x26b2ec4e02ebe2f54583af25b647b1d619e67bbf`](./contracts/ethereum-1/0x26b2ec4e02ebe2f54583af25b647b1d619e67bbf/); ethereum `0xa0fb1b11cca5871fb0225b64308e249b97804e99`; ethereum `0xc40549aa1d05c30af23a1c4a5af6ba11fcafe23f`; ethereum `0xfc08757c505ea28709df66e54870fb6de09f0c5e` | ⚠️ Unaudited |
| InversePriceOracle | operational_periphery | ethereum | n/a | [`0x5d2c6215555b36889ef235c6d5ccde22e9964e6a`](./contracts/ethereum-1/0x5d2c6215555b36889ef235c6d5ccde22e9964e6a/) | ⚠️ Unaudited |
| InverseWstETHPriceOracle | operational_periphery | ethereum | n/a | [`0x222786833b5fd5ee21532d8b576391babefdaad1`](./contracts/ethereum-1/0x222786833b5fd5ee21532d8b576391babefdaad1/) | ⚠️ Unaudited |
| LongPositionEmergencyCloseFacet | unknown | ethereum | n/a | 3 deployments: ethereum [`0x2319289e56830b50a282c25af4f0045c724b3f79`](./contracts/ethereum-1/0x2319289e56830b50a282c25af4f0045c724b3f79/); ethereum `0x7e6a12dce12bc1c57bdf5829f7b40b113acde303`; ethereum `0xa5145ff1e321b717d5f137961fe2dc8ec5af31e1` | ⚠️ Unaudited |
| MultiMerkleStash | operational_periphery | ethereum | n/a | 3 deployments: ethereum [`0x36ecdec1b5e301321166cefd5856a44bfa13a1ae`](./contracts/ethereum-1/0x36ecdec1b5e301321166cefd5856a44bfa13a1ae/); ethereum `0xa95ce9eefd6965296722890bb5fb977363fc2066`; ethereum `0xabc6a4e345801cb5f57629e79cd5eb2e9e514e98` | ⚠️ Unaudited |
| MultiStakingRewards | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4c883ae6ca39c10e692c0a56bc7a50cbb610f73a`](./contracts/ethereum-1/0x4c883ae6ca39c10e692c0a56bc7a50cbb610f73a/); ethereum `0x78dbc6888f6cca11cac3d4b0027557f25d15ad23` | ⚠️ Unaudited |
| OFT | unknown | arbitrum | n/a | 7 deployments: optimism `0xc608dfb90a430df79a8a1edbc8be7f1a0eb4e763`; bsc `0xa64f68c089b3e69d48f6047d3be513349e74b3de`; arbitrum [`0x179f38f78346f5942e95c5c59cb1da7f55cf7cad`](./contracts/arbitrum-42161/0x179f38f78346f5942e95c5c59cb1da7f55cf7cad/); arbitrum `0x55380fe7a1910dff29a47b622057ab4139da42c5`; arbitrum `0xc608dfb90a430df79a8a1edbc8be7f1a0eb4e763`; linea `0xc608dfb90a430df79a8a1edbc8be7f1a0eb4e763`; blast `0xc608dfb90a430df79a8a1edbc8be7f1a0eb4e763` | ⚠️ Unaudited |
| PlatformFeeBurner | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6440e21a3634c319c69cef8d17601dbc4e97c3db`](./contracts/ethereum-1/0x6440e21a3634c319c69cef8d17601dbc4e97c3db/); ethereum `0x695eb50a92ad2aebb89c6dd1f3c7546a28411403` | ⚠️ Unaudited |
| PlatformFeeSpliter | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0084c2e1b1823564e597ff4848a88d61ac63d703`](./contracts/ethereum-1/0x0084c2e1b1823564e597ff4848a88d61ac63d703/); ethereum `0x32366846354db5c08e92b4ab0d2a510b2a2380c8` | ⚠️ Unaudited |
| PoolConfiguration | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x2be95a7c0ad24e2d2876793172d046db05d26f7f`](./contracts/ethereum-1/0x2be95a7c0ad24e2d2876793172d046db05d26f7f/); ethereum `0x69c40892c814fbb6fcdcbeb034e3dc854f3d7e10`; ethereum `0x9963e06c9d3fe874b944c5bf63729bd4ae6f07b2` | ⚠️ Unaudited |
| PoolManager | core_logic | ethereum | n/a | 5 deployments: ethereum [`0x0d73d31e1e0d4cc266f0805c94f8e2b9b37d4c3a`](./contracts/ethereum-1/0x0d73d31e1e0d4cc266f0805c94f8e2b9b37d4c3a/); ethereum `0x376909c828fa57d271e6b208036d24943503fbad`; ethereum `0x7bbfe4090675689bf78cdb6a1eb4705418bb1462`; ethereum `0x88f9e901487b635d1403eaabcb97fc1935fc62ac`; ethereum `0x9af12dabd518a6da606caac455b2d0efb3ef97f9` | ⚠️ Unaudited |
| PositionAirdrop | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x0fdb73ae370a0b3f349dc046cfeb54c0fa870799`](./contracts/ethereum-1/0x0fdb73ae370a0b3f349dc046cfeb54c0fa870799/); ethereum `0x1359fce197cf743016cd1a620939a1a80df259a5` | ⚠️ Unaudited |
| PositionOperateFacet | unknown | ethereum | n/a | [`0x155c0c3cde438a3d10bd38f3257cd8d17b8b3cff`](./contracts/ethereum-1/0x155c0c3cde438a3d10bd38f3257cd8d17b8b3cff/) | ⚠️ Unaudited |
| PositionOperateFlashLoanFacetV2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1f844447ecf5b1523bfbadad3d9dea975982ea93`](./contracts/ethereum-1/0x1f844447ecf5b1523bfbadad3d9dea975982ea93/); ethereum `0x21275a57cf7592a1bb41e75497c070efc8b66b52` | ⚠️ Unaudited |
| ProxyOFT | unknown | ethereum | n/a | 4 deployments: ethereum [`0x37d4216e58de595719eabae603ae4a2d4d9c9167`](./contracts/ethereum-1/0x37d4216e58de595719eabae603ae4a2d4d9c9167/); ethereum `0x535f7ca9637a5099db568b79a3624cfd6b5fc833`; ethereum `0x808130d89fc067a7a8d9ddf4ca2abf6eb5ed3b32`; ethereum `0xc608dfb90a430df79a8a1edbc8be7f1a0eb4e763` | ⚠️ Unaudited |
| QuestInitiative | unknown | ethereum | n/a | [`0x98cd02d1e2fa496082d7038d1fd96a5f690f425e`](./contracts/ethereum-1/0x98cd02d1e2fa496082d7038d1fd96a5f690f425e/) | ⚠️ Unaudited |
| RebalancePoolGaugeClaimer | operational_periphery | ethereum | n/a | 5 deployments: ethereum [`0x05c630e9fc8a064f0e8e6fbb9e2b5d2215da5653`](./contracts/ethereum-1/0x05c630e9fc8a064f0e8e6fbb9e2b5d2215da5653/); ethereum `0x4ae3be52c411cc08434d28645fd391497c69c815`; ethereum `0x81243a88dd9fb963c643bd3f2194c2ca9ccfc428`; ethereum `0x835191186745e63f9e325e741b273ff925174d7e`; ethereum `0xb259515748c75a7216a4849e67ceb166b0daa98b` | ⚠️ Unaudited |
| RewardClaimHelper | periphery | ethereum | n/a | [`0xaf59d144357dcc8a852ad601f27bf6310b657a7f`](./contracts/ethereum-1/0xaf59d144357dcc8a852ad601f27bf6310b657a7f/) | ⚠️ Unaudited |
| RewardHarvester | operational_periphery | ethereum | n/a | [`0x0559a1b22409eef7559a5c88cbaa4e285e7b9c30`](./contracts/ethereum-1/0x0559a1b22409eef7559a5c88cbaa4e285e7b9c30/) | ⚠️ Unaudited |
| SavingFxUSDFacet | unknown | ethereum | n/a | [`0x3cfe091c9028154cc5cb721258e9360803b130f5`](./contracts/ethereum-1/0x3cfe091c9028154cc5cb721258e9360803b130f5/) | ⚠️ Unaudited |
| SdCRVBribeBurnerV2 | operational_periphery | ethereum | n/a | [`0x680f26dbc8fa2b463607ebb49a68a69c33476665`](./contracts/ethereum-1/0x680f26dbc8fa2b463607ebb49a68a69c33476665/) | ⚠️ Unaudited |
| SdCrvCompounder | adapter | ethereum | n/a | [`0x43e54c2e7b3e294de3a155785f52ab49d87b9922`](./contracts/ethereum-1/0x43e54c2e7b3e294de3a155785f52ab49d87b9922/) | ⚠️ Unaudited |
| ShortPool | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x0055e248ee7feab91969b77ab32f184b72be82fa`](./contracts/ethereum-1/0x0055e248ee7feab91969b77ab32f184b72be82fa/); ethereum `0x7aed2bb6facaf6f843a7b758053573a4ea9e1f70`; ethereum `0xf3d24bb506038f6639b34b5175e0fcf2d610a098` | ⚠️ Unaudited |
| ShortPoolManager | core_logic | ethereum | n/a | 4 deployments: ethereum [`0x218b689a4f4afba497123b4831f58d6379d99801`](./contracts/ethereum-1/0x218b689a4f4afba497123b4831f58d6379d99801/); ethereum `0x22ba83dd069ffe4c8731b1fdac34287231b0f3ff`; ethereum `0x6844aaab4131041b563e6217eb0ba218123f5e45`; ethereum `0x958df8f124509d45a1c39bc4aedbe486ff2ffb3b` | ⚠️ Unaudited |
| ShortPositionOperateFlashLoanFacet | unknown | ethereum | n/a | 3 deployments: ethereum [`0x3d35dc5948c948f131ddd9e3a341b99e45174a74`](./contracts/ethereum-1/0x3d35dc5948c948f131ddd9e3a341b99e45174a74/); ethereum `0xb0c25521fb7dc1eead2f99132c852ac9c715e8d6`; ethereum `0xce744c8b9069776f3367e5ad3585c9e5a7bdd448` | ⚠️ Unaudited |
| SmartWalletWhitelist | unknown | ethereum | n/a | [`0xac94b8ea0e3a080f0fa6ae89cc873d956f72aa3e`](./contracts/ethereum-1/0xac94b8ea0e3a080f0fa6ae89cc873d956f72aa3e/) | ⚠️ Unaudited |
| StakeDAOCompounderBurner | adapter | ethereum | n/a | [`0xf954200fd969443b8f853b4083b71cd073c05d5b`](./contracts/ethereum-1/0xf954200fd969443b8f853b4083b71cd073c05d5b/) | ⚠️ Unaudited |
| TimelockController | governance | ethereum | n/a | [`0x68863fb8855b04509a835082478d6e3d0be4e61a`](./contracts/ethereum-1/0x68863fb8855b04509a835082478d6e3d0be4e61a/) | ⚠️ Unaudited |
| Token Minter | operational_periphery | ethereum | n/a | [`0xc8b194925d55d5de9555ad1db74c149329f71def`](./contracts/ethereum-1/0xc8b194925d55d5de9555ad1db74c149329f71def/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | 3 deployments: ethereum [`0xaaa2bb0212ec7190dc7142cd730173b0a788ec31`](./contracts/ethereum-1/0xaaa2bb0212ec7190dc7142cd730173b0a788ec31/); ethereum `0xceff51756c56ceffca006cd410b03ffc46dd3a58`; ethereum `0xed6c2f053af48cba6cbc0958124671376f01a903` | ⚠️ Unaudited |
| VaultCurveSETH | core_logic | ethereum | n/a | [`0xb17d98c36d2238ffcb27bf797ca9967b3cc9aa07`](./contracts/ethereum-1/0xb17d98c36d2238ffcb27bf797ca9967b3cc9aa07/) | ⚠️ Unaudited |
| VeFeeGateway | unknown | ethereum | n/a | [`0x8fc7906fc6047679dad53c0c3b40e135486421e9`](./contracts/ethereum-1/0x8fc7906fc6047679dad53c0c3b40e135486421e9/) | ⚠️ Unaudited |
| VestingManagerProxy | operational_periphery | ethereum | n/a | [`0x0e4f31a2f48418c90f5e9fa84bf761d832c54ced`](./contracts/ethereum-1/0x0e4f31a2f48418c90f5e9fa84bf761d832c54ced/) | ⚠️ Unaudited |
| Voting Escrow | operational_periphery | ethereum | n/a | [`0xec6b8a3f3605b083f7044c0f31f2cac0caf1d469`](./contracts/ethereum-1/0xec6b8a3f3605b083f7044c0f31f2cac0caf1d469/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | 124 deployments: ethereum [`0x02d341ccb60faaf662bc0554d13778015d1b285c`](./contracts/ethereum-1/0x02d341ccb60faaf662bc0554d13778015d1b285c/); ethereum `0x051d7e5609917bd9b73f04bac0ded8dd46a74301`; ethereum `0x055be5ddb7a925bfef3417fc157f53ca77ca7222`; ethereum `0x06325440d014e39736583c165c2963ba99faf14e`; ethereum `0x08380a4999be1a958e2abba07968d703c7a3027c`; ethereum `0x08780fb7e580e492c1935bee4fa5920b94aa95da`; ethereum `0x094d12e5b541784701fd8d65f11fc0598fbc6332`; ethereum `0x0ce6a5ff5217e38315f87032cf90686c96627caa`; ethereum `0x0f9cb53ebe405d49a0bbdbd291a65ff571bc83e1`; ethereum `0x1005f7406f32a61bd760cfa14accd2737913d546`; ethereum `0x1062fd8ed633c1f080754c19317cb3912810b5e5`; ethereum `0x11137b10c210b579405c21a07489e28f3c040ab1`; ethereum `0x11f419adabbff8d595e7d5b223eee3863bb3902c`; ethereum `0x182b723a58739a9c974cfdb385ceadb237453c28`; ethereum `0x194ebd173f6cdace046c53eacce9b953f28411d1`; ethereum `0x1aef73d49dedc4b1778d0706583995958dc862e6`; ethereum `0x1cebdb0856dd985fae9b8fea2262469360b8a3a6`; ethereum `0x1de7f0866e2c4adac7b457c58cc25c8688cda1f2`; ethereum `0x261e3aeb4cd1ebfd0fa532d6acdd4b21ebdcd2de`; ethereum `0x28ca243dc0ac075dd012fcf9375c25d18a844d96`; ethereum `0x2932a86df44fe8d2a706d8e9c5d51c24883423f5`; ethereum `0x2dded6da1bf5dbdf597c45fcfaa3194e53ecfeaf`; ethereum `0x2fe94ea3d5d4a175184081439753de15aef9d614`; ethereum `0x3175df0976dfa876431c2e9ee6bc45b65d3473cc`; ethereum `0x33e411ebe366d72d058f3ef22f1d0cf8077fdab0`; ethereum `0x3a664ab939fd8482048609f652f9a0b0677337b9`; ethereum `0x3b7020743bc2a4ca9eaf9d0722d42e20d6935855`; ethereum `0x3c0ffff15ea30c35d7a85b85c0782d6c94e1d238`; ethereum `0x3c8caee4e09296800f8d29a68fa3837e2dae4940`; ethereum `0x3e01dd8a5e1fb3481f0f589056b428fc308af0fb`; ethereum `0x3f0e7916681452d23cd36b1281457da721f2e5df`; ethereum `0x410e3e86ef427e30b9235497143881f717d93c2a`; ethereum `0x42d7025938bec20b69cbae5a77421082407f053a`; ethereum `0x462253b8f74b72304c145db0e4eebd326b22ca39`; ethereum `0x49849c98ae39fff122806c06791fa73784fb3675`; ethereum `0x4aa2afd5616beec2321a9efd7349400d4f18566a`; ethereum `0x4bfb2fa13097e5312b19585042fdbf3562dc8676`; ethereum `0x4f3e8f405cf5afc05d68142f3783bdfe13811522`; ethereum `0x4fd86ce7ecea88f7e0aa78dc12625996fb3a04bc`; ethereum `0x50161102a240b1456d770dbb55c76d8dc2d160aa`; ethereum `0x5282a4ef67d9c33135340fb3289cc1711c13638c`; ethereum `0x53a901d48795c58f485cbb38df08fa96a24669d5`; ethereum `0x571ff5b7b346f706aa48d696a9a4a288e9bb4091`; ethereum `0x58a3c68e2d3aaf316239c003779f71acb870ee47`; ethereum `0x5b5cfe992adac0c9d48e05854b2d91c73a003858`; ethereum `0x5bc3dd6e6b4e5dd811d558843da6a1bfbb9c9dca`; ethereum `0x6070fbd4e608ee5391189e7205d70cc4a274c017`; ethereum `0x61e10659fe3aa93d036d099405224e4ac24996d0`; ethereum `0x64448b78561690b70e17cbe8029a3e5c1bb7136e`; ethereum `0x6955a55416a06839309018a8b0cb72c4ddc11f15`; ethereum `0x696b5d296a8aef7482b726fcf0616e32fe72a53d`; ethereum `0x6c280db098db673d30d5b34ec04b6387185d3620`; ethereum `0x6c3f90f043a72fa612cbac8115ee7e52bde6e490`; ethereum `0x6d10ed2cf043e6fcf51a0e7b4c2af3fa06695707`; ethereum `0x6d65b498cb23deaba52db31c93da9bffb340fb8f`; ethereum `0x6d787113f23bed1d5e1530402b3f364d0a6e5af3`; ethereum `0x72953a5c32413614d24c29c84a66ae4b59581bbf`; ethereum `0x742c3cf9af45f91b109a81efeaf11535ecde9571`; ethereum `0x7e1444ba99dcdffe8fbdb42c02f0005d14f13be1`; ethereum `0x7eb40e450b9655f4b3cc4259bcc731c63ff55ae6`; ethereum `0x8038c01a0390a8c547446a0b2c18fc9aefecc10c`; ethereum `0x803a2b40c5a9bb2b86dd630b274fa2a9202874c2`; ethereum `0x81c46feca27b31f3adc2b91ee4be9717d1cd3dd7`; ethereum `0x824f13f1a2f29cfeea81154b46c0fc820677a637`; ethereum `0x8474ddbe98f5aa3179b3b3f5942d724afcdec9f6`; ethereum `0x86e917ad6cb44f9e6c8d9fa012acf0d0cfcf114f`; ethereum `0x890f4e345b1daed0367a877a1612f86a1f86985f`; ethereum `0x8925d9d9b4569d737a48499def3f67baa5a144b9`; ethereum `0x8a5ef9095795e9740afc91c5bd23b0e48d6bb7ae`; ethereum `0x90e00ace148ca3b23ac1bc8c240c2a7dd9c2d7f5`; ethereum `0x94be07d45d57c7973a535c1c517bd79e602e051e`; ethereum `0x94e131324b6054c0d789b190b2dac504e4361b53`; ethereum `0x9582c4adacb3bce56fea3e590f05c3ca2fb9c477`; ethereum `0x97e2768e8e73511ca874545dc5ff8067eb19b787`; ethereum `0x99a58482bd75cbab83b27ec03ca68ff489b5788f`; ethereum `0x9b02548de409d7aaee228bfa3ff2bca70e7a2fe8`; ethereum `0x9f330db38caaae5b61b410e2f0aad63fff2109d8`; ethereum `0xa1f8a6807c402e4a15ef4eba36528a3fed24e577`; ethereum `0xa2d40edbf76c6c0701ba8899e2d059798eba628e`; ethereum `0xa3d87fffce63b53e0d54faa1cc983b7eb0b74a9c`; ethereum `0xa464e6dcda8ac41e03616f95f4bc98a13b8922dc`; ethereum `0xa5d9358c60fc9bd2b508eda17c78c67a43a4458c`; ethereum `0xa96a65c051bf88b4095ee1f2451c2a9d43f53ae2`; ethereum `0xaa17a236f2badc98ddc0cf999abb47d47fc0a6cf`; ethereum `0xaa82ca713d94bba7a89ceab55314f9effeddc78c`; ethereum `0xb0a0716841f2fc03fba72a891b8bb13584f52f2d`; ethereum `0xb3ad645db386d7f6d753b2b9c3f4b853da6890b8`; ethereum `0xb5e7f9cb9d3897808658f1991ad32912959b42e2`; ethereum `0xbe175115bf33e12348ff77ccfee4726866a0fbd5`; ethereum `0xc2b1df84112619d190193e48148000e3990bf627`; ethereum `0xc45b2eee6e09ca176ca3bb5f7eee7c47bf93c756`; ethereum `0xc5022291ca8281745d173bb855dcd34dda67f2f0`; ethereum `0xc5424b857f758e906013f3555dad202e4bdb4567`; ethereum `0xc5cfada84e902ad92dd40194f0883ad49639b023`; ethereum `0xcee60cfa923170e4f8204ae08b4fa6a3f5656f3a`; ethereum `0xcfc25170633581bf896cb6cdee170e3e3aa59503`; ethereum `0xd0921691c7debc698e6e372c6f74dc01fc9d3778`; ethereum `0xd30dd0b919cb4012b3add78f6dcb6eb7ef225ac8`; ethereum `0xd5bcf53e2c81e1991570f33fa881c49eea570c8d`; ethereum `0xd662908ada2ea1916b3318327a97eb18ad588b5d`; ethereum `0xd7d147c6bb90a718c3de8c0568f9b560c79fa416`; ethereum `0xd81da8d904b52208541bade1bd6595d8a251f8dd`; ethereum `0xd8b712d29381748db89c36bca0138d7c75866ddf`; ethereum `0xdc24316b9ae028f1497c275eb9192a3ea0f67022`; ethereum `0xdcef968d416a41cdac0ed8702fac8128a64241a2`; ethereum `0xde5331ac4b3630f94853ff322b66407e0d6331e8`; ethereum `0xdebf20617708857ebe4f679508e7b7863a8a8eee`; ethereum `0xdefd8fdd20e0f34115c7018ccfb655796f6b2168`; ethereum `0xe06a65e09ae18096b99770a809ba175fa05960e2`; ethereum `0xe4c09928d834cd58d233cd77b5af3545484b4968`; ethereum `0xe7a24ef0c5e95ffb0f6684b813a78f2a3ad7d171`; ethereum `0xeb16ae0052ed37f479f7fe63849198df1765a733`; ethereum `0xecb456ea5365865ebab8a2661b0c503410e9b347`; ethereum `0xf178c0b5bb7e7abf4e12a4838c7b7c5ba2c623c0`; ethereum `0xf1f85a74ad6c64315f85af52d3d46bf715236adc`; ethereum `0xf253f83aca21aabd2a20553ae0bf7f65c755a07f`; ethereum `0xf43211935c781d5ca1a41d2041f397b8a7366c7a`; ethereum `0xf5194c3325202f456c95c1cf0ca36f8475c1949f`; ethereum `0xf9078fb962a7d13f55d40d49c8aa6472abd1a5a6`; ethereum `0xf9440930043eb3997fc70e1339dbb11f341de7a8`; ethereum `0xf98450b5602fa59cc66e1379dffb6fddc724cfc4`; ethereum `0xfa9a30350048b2bf66865ee20363067c66f67e58`; ethereum `0xfd2a8fa60abd58efe3eee34dd494cd491dc14900`; ethereum `0xfd4d8a17df4c27c1dd245d153ccf4499e806c87d` | ⚠️ Unaudited |
| WeightedPool | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x69671c808c8f1c1490a4c9e0145884dfb5631378`](./contracts/ethereum-1/0x69671c808c8f1c1490a4c9e0145884dfb5631378/); ethereum `0x80a8ea2f9ebfc2db9a093bd46e01471267914e49` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | ethereum | n/a | `0x04af91bf6c6452c9f998a7270027ae9b11b5303d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x06364f10b501e868329afbc005b3492902d6c763` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x075b1bb99792c9e1041ba13afef80c91a1e70fb3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0cd730bdc145fb116d2b2328c0baca40d801d222` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0dfdc4d5390bea4d19e4cb797153bbb559939a9d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x14f9bdc901dc1f64e0f6bea6824883e56b0d7d15` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1794841fccdb7880a81f0cb4a43dd36bfd19762c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x192092425296da5c4cd2e5365bc656f0553b36ef` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1bd65cbc53ddb0fe988172d41015fba3b8ceaace` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1f2a662fb513441f06b8db91ebd9a1466462b275` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2088a86f60d2504ca47961577628aff8202d8f6c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2146b07c9c9fc7b4bfc31d29ef59e2a179f881b6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2b645a6a426f22fb7954dc15e583e3737b8d1434` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2e60cf74d81ac34eb21eeff58db4d385920ef419` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2ed8727881a07bb8192c94d1a21ac827d22fc25c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3740fb63ab7a09891d7c0d4299442a551d06f5fd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3a3060074fc936803ec9c40caba0b1c583c183c5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3b3ac5386837dc563660fb6a0937dfaa5924333b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x423b5fa2dc16e06b36666a4bbb00c95fa5f28fef` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x45f783cce6b7ff23b2ab2d70e416cdb7d6055f51` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4e680fba9b795c9988ae51ea398332a066357bd4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4f0e0ed4ee48f253ac92490ce851712fcf053841` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x52ea46506b9cc5ef470c5bf89f17dc28bb35d85c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x54ee22d5593fc76fb20eafab66c45aab3268b800` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5c53956d4743e4e1ba5881fee27357c5670c013b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5e71f075dbd4172f7145c774ea8534fdc3cf0e8d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x61dc3c6da3f97f544c5352fd0508d0b849896e87` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x65b81c6b2c474a94cc56e6b8b0e42b59b1f58ffe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6812c0de3097d022a76dbd229ec003ee6f50fc74` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6ac9de58a9cbc012e10cd3d2543f596de153cac8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6ff57ec11498e67b0195be1a93c2e56fcad4fa00` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x76827f977dc1f6a02c3296636ed6d13c7421f5c7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7771f704490f9c0c3b06afe8960dbb6c58cbc812` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x79a8c46dea5ada233abaffd40f3a0a2b1e5a4f27` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7adbf700919ab95ab4c444b9525b020ceb4456de` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7b5a0905cbed0e96c062dbf0f921726db1f5f55b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7fc77b5c7614e1533320ea6ddc2eb61fa00a9714` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7fe97bdc3b8b32e1cdc77d0666023ececc44ecfd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7fffa79fe475565098951fd187148782337dfc7d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x80caaad7a0e977f3e93a86f4acf5db70b4c89af2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x845838df265dcd2c412a1dc9e959c7d08537f8a2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8474c1236f0bc23830a23a41abb81b2764ba9f4f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x884be299afdb00dfc1dfe183f1a064eb05ceb75c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8dc1453ab8b122678b6454b5e1713a8dee086061` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x93054188d876f558f4a66b2ef1d97d16edf0895b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9726e9314ef1b96e45f40056bed61a088897313e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x97b7e9c880ced70c125982b97654a56bffb9f86d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9fc689ccada600b6df723d9e47d84d76664a1f23` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa274761e1a926d071188cb1aa55dcddfd7d0eadb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa2b47e3d5c44877cca798226b7b8118f9bfb7a56` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa50ccc70b6a011cffddf45057e39679379187287` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa5407eae9ba41422680e2e00537571bcc53efbfd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa9b0021907dc5842466e9b3d8909c77aee3372f6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaaaeee508b9a779c53a50b749fc8a7c8d00e9c35` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xac795d2c97e60df6a99ff1c814727302fd747a80` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xac7cf005622ca6a540632a14152fc2a9379413b5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb10c49fd2983f55fcfaa9a7a64a943d2852e23e2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb241a8c2fa87de870c7cbb29bebe70ec1ee7188f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb527c418c3eff31a88a6818c7953014ff9ec5a0b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb6a7935f8bc7b9822a6b05e2e0c7e32ba6e2eb44` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb6c057591e073249f2d9d88ba59a46cfc9b59edb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb6f3c72a1c44824dceafe63bbbc4f33d57605d58` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbbb8055914657195a795bb4fc127877ceab35b8c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbbc81d23ea2c3ec7e56d39296f0cbb648873a5d3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbc7e832426005669fa8a37fdad13884bc4f40a35` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc25a3a3b969415c80451098fa907ec722572917f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc97ef40140a09eb60149c9051e52931a1c0451db` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xced2c6f8680bf4da2a429b04bdf528619e24cdc7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd133d1f0359dfeadf1fa7bb655e2e1c76be2f778` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd905e2eaebe188fc92179b6350807d8bd91db0d8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdbe281e17540da5305eb2aefb8cef70e6db1a0a9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdc31f5c17254a89d53a1248195f239618c96838e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdf5e0e81dff6faf3a7e52ba697820c5e32d806a8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe5fdbab9ad428bbb469dee4cb6608c0a8895cba5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe9cb575988196fda18aa4fe70a7ffa0f3bfc5a20` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeb21209ae4c2c9ff2a86aca31e123764a3b6bc06` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xebdd536b55a66484e356be84c07d7f1632957f20` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xedf54bc005bc2df0cc6a675596e843d28b16a966` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf0c702a1cf8438db6c00c654e7081f3ad1d3f6f9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf129d674e042a112d4644858a9be73d15a971bab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf32b39a518e099f93aaaba7eb6892d53255cc3de` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf79d9242d3b12ea1a69aeafe4e19c8a03f324b8d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfcba3e75865d2d561be8d220616520c171f12851` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfd91aee8dbf0d8f62dd8638a3f78e596b9718bcd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfef6ee493a60fc7cb496fef54512d465646d1135` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xff11887275cac956a651fe6523fc773e027d5b97` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xa7580d4adc6d302d2d4c7c3db93e9ae3f82c4617` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xc752c6daa143e1a0ba3e7df06f3117182432b991` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x535f7ca9637a5099db568b79a3624cfd6b5fc833` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x62c6867e4f2e63302b15cbf9b8540214a13beeac` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x808130d89fc067a7a8d9ddf4ca2abf6eb5ed3b32` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf9e10daa647e540bf3d1334377a88361ab980e94` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x16d88e5785612d864ff089761082ef8b1914c1a2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x808130d89fc067a7a8d9ddf4ca2abf6eb5ed3b32` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa7580d4adc6d302d2d4c7c3db93e9ae3f82c4617` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc752c6daa143e1a0ba3e7df06f3117182432b991` | ❓ Unverified |

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
| ethereum | [`0xb26c4b3ca601136daf98593feaeff9e0ca702a8d`](./contracts/ethereum-1/0xb26c4b3ca601136daf98593feaeff9e0ca702a8d/) | ALDToken | token | $2,049,177.35 | Verified native implementation with $2,049,177.35 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe93f5dd55ec9bdabbba5ea88e4b4f3c253ee45ed`](./contracts/ethereum-1/0xe93f5dd55ec9bdabbba5ea88e4b4f3c253ee45ed/) | ReservePool | core_logic | $59,194.22 | Verified native implementation with $59,194.22 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0e67460226a71df07115c1f169418dd159e5521b`](./contracts/ethereum-1/0x0e67460226a71df07115c1f169418dd159e5521b/) | RevenuePool | core_logic | $401.78 | Verified native implementation with $401.78 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5c8dc3a18761e4f22f7b8d41228970477168d9e2`](./contracts/ethereum-1/0x5c8dc3a18761e4f22f7b8d41228970477168d9e2/) | VaultCurve3Pool | core_logic | $147.60 | Verified native implementation with $147.60 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1c7ed66abe1ba029c8efceecfbfc4056b8c4bbfc`](./contracts/ethereum-1/0x1c7ed66abe1ba029c8efceecfbfc4056b8c4bbfc/) | VaultSushiETHWBTC | core_logic | $26.56 | Verified native implementation with $26.56 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4ee014060f4816ad294857d29c22fe62b0e9580b`](./contracts/ethereum-1/0x4ee014060f4816ad294857d29c22fe62b0e9580b/) | VaultCurveRenWBTC | core_logic | $9.04 | Verified native implementation with $9.04 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x11c907b3aedbd863e551c37f21dd3f36b28a6784`](./contracts/ethereum-1/0x11c907b3aedbd863e551c37f21dd3f36b28a6784/) | GeneralTokenConverter | token | $0.04 | Verified native implementation with $0.04 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcad2b9c980322f460db51cc8e45539f677c73f86`](./contracts/ethereum-1/0xcad2b9c980322f460db51cc8e45539f677c73f86/) | AladdinOFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb5495a8d85ee18cfd0d2816993658d88af08bef4`](./contracts/ethereum-1/0xb5495a8d85ee18cfd0d2816993658d88af08bef4/) | DAO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2ac0a3b5cb25d6071f05e9729922261bdf8e7cb4`](./contracts/ethereum-1/0x2ac0a3b5cb25d6071f05e9729922261bdf8e7cb4/) | DebtReducer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd116513eea4efe3908212afbaefc76cb29245681`](./contracts/ethereum-1/0xd116513eea4efe3908212afbaefc76cb29245681/) | Fee Distributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd8ae026d0abf2379ba0fc79a7bf190268dfa81c6`](./contracts/ethereum-1/0xd8ae026d0abf2379ba0fc79a7bf190268dfa81c6/) | FeeDistributorAdmin | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5c28b966ab37cfb9397bbc04595f91f0fbf06d9b`](./contracts/ethereum-1/0x5c28b966ab37cfb9397bbc04595f91f0fbf06d9b/) | FxGateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3374b9466d571edd695cf5e198f7c89b33c0ce01`](./contracts/ethereum-1/0x3374b9466d571edd695cf5e198f7c89b33c0ce01/) | FxUSDBasePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6e633729bd4c0cc84fd93938f7fbc622975046b6`](./contracts/ethereum-1/0x6e633729bd4c0cc84fd93938f7fbc622975046b6/) | FxUSDOFTAdaptor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0b9e51d9a436b6b78b5e2666f15b2d0666a7a851`](./contracts/ethereum-1/0x0b9e51d9a436b6b78b5e2666f15b2d0666a7a851/) | FxUSDPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5ac1a882e6cedc58511b7e42b02bab42e2c02956`](./contracts/ethereum-1/0x5ac1a882e6cedc58511b7e42b02bab42e2c02956/) | GaugeRewarder | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5d2c6215555b36889ef235c6d5ccde22e9964e6a`](./contracts/ethereum-1/0x5d2c6215555b36889ef235c6d5ccde22e9964e6a/) | InversePriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x222786833b5fd5ee21532d8b576391babefdaad1`](./contracts/ethereum-1/0x222786833b5fd5ee21532d8b576391babefdaad1/) | InverseWstETHPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2319289e56830b50a282c25af4f0045c724b3f79`](./contracts/ethereum-1/0x2319289e56830b50a282c25af4f0045c724b3f79/) | LongPositionEmergencyCloseFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x36ecdec1b5e301321166cefd5856a44bfa13a1ae`](./contracts/ethereum-1/0x36ecdec1b5e301321166cefd5856a44bfa13a1ae/) | MultiMerkleStash | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4c883ae6ca39c10e692c0a56bc7a50cbb610f73a`](./contracts/ethereum-1/0x4c883ae6ca39c10e692c0a56bc7a50cbb610f73a/) | MultiStakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6440e21a3634c319c69cef8d17601dbc4e97c3db`](./contracts/ethereum-1/0x6440e21a3634c319c69cef8d17601dbc4e97c3db/) | PlatformFeeBurner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0084c2e1b1823564e597ff4848a88d61ac63d703`](./contracts/ethereum-1/0x0084c2e1b1823564e597ff4848a88d61ac63d703/) | PlatformFeeSpliter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2be95a7c0ad24e2d2876793172d046db05d26f7f`](./contracts/ethereum-1/0x2be95a7c0ad24e2d2876793172d046db05d26f7f/) | PoolConfiguration | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0d73d31e1e0d4cc266f0805c94f8e2b9b37d4c3a`](./contracts/ethereum-1/0x0d73d31e1e0d4cc266f0805c94f8e2b9b37d4c3a/) | PoolManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0fdb73ae370a0b3f349dc046cfeb54c0fa870799`](./contracts/ethereum-1/0x0fdb73ae370a0b3f349dc046cfeb54c0fa870799/) | PositionAirdrop | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x155c0c3cde438a3d10bd38f3257cd8d17b8b3cff`](./contracts/ethereum-1/0x155c0c3cde438a3d10bd38f3257cd8d17b8b3cff/) | PositionOperateFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1f844447ecf5b1523bfbadad3d9dea975982ea93`](./contracts/ethereum-1/0x1f844447ecf5b1523bfbadad3d9dea975982ea93/) | PositionOperateFlashLoanFacetV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x98cd02d1e2fa496082d7038d1fd96a5f690f425e`](./contracts/ethereum-1/0x98cd02d1e2fa496082d7038d1fd96a5f690f425e/) | QuestInitiative | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x05c630e9fc8a064f0e8e6fbb9e2b5d2215da5653`](./contracts/ethereum-1/0x05c630e9fc8a064f0e8e6fbb9e2b5d2215da5653/) | RebalancePoolGaugeClaimer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaf59d144357dcc8a852ad601f27bf6310b657a7f`](./contracts/ethereum-1/0xaf59d144357dcc8a852ad601f27bf6310b657a7f/) | RewardClaimHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0559a1b22409eef7559a5c88cbaa4e285e7b9c30`](./contracts/ethereum-1/0x0559a1b22409eef7559a5c88cbaa4e285e7b9c30/) | RewardHarvester | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3cfe091c9028154cc5cb721258e9360803b130f5`](./contracts/ethereum-1/0x3cfe091c9028154cc5cb721258e9360803b130f5/) | SavingFxUSDFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x680f26dbc8fa2b463607ebb49a68a69c33476665`](./contracts/ethereum-1/0x680f26dbc8fa2b463607ebb49a68a69c33476665/) | SdCRVBribeBurnerV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0055e248ee7feab91969b77ab32f184b72be82fa`](./contracts/ethereum-1/0x0055e248ee7feab91969b77ab32f184b72be82fa/) | ShortPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x218b689a4f4afba497123b4831f58d6379d99801`](./contracts/ethereum-1/0x218b689a4f4afba497123b4831f58d6379d99801/) | ShortPoolManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3d35dc5948c948f131ddd9e3a341b99e45174a74`](./contracts/ethereum-1/0x3d35dc5948c948f131ddd9e3a341b99e45174a74/) | ShortPositionOperateFlashLoanFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xac94b8ea0e3a080f0fa6ae89cc873d956f72aa3e`](./contracts/ethereum-1/0xac94b8ea0e3a080f0fa6ae89cc873d956f72aa3e/) | SmartWalletWhitelist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc8b194925d55d5de9555ad1db74c149329f71def`](./contracts/ethereum-1/0xc8b194925d55d5de9555ad1db74c149329f71def/) | Token Minter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb17d98c36d2238ffcb27bf797ca9967b3cc9aa07`](./contracts/ethereum-1/0xb17d98c36d2238ffcb27bf797ca9967b3cc9aa07/) | VaultCurveSETH | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8fc7906fc6047679dad53c0c3b40e135486421e9`](./contracts/ethereum-1/0x8fc7906fc6047679dad53c0c3b40e135486421e9/) | VeFeeGateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0e4f31a2f48418c90f5e9fa84bf761d832c54ced`](./contracts/ethereum-1/0x0e4f31a2f48418c90f5e9fa84bf761d832c54ced/) | VestingManagerProxy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
