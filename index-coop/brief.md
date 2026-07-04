# Agentic Audit Brief: Index Coop

## Project Overview

- Project: Index Coop (`index-coop`)
- Website: [https://www.indexcoop.com/](https://www.indexcoop.com/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:21.942Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-f007
- Chains: arbitrum, base, ethereum, polygon
- Contract surface: 180 unique implementations (389 raw deployments)
- DeFi Llama TVL: $8,716,769.23
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Indexes. Structurally: 136 project-authored contract(s) across 4 chain(s); 10 ERC20 tokens, 2 ERC721 NFTs; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 7 functional families. Its contracts share 10 common project-authored base contract(s) (baseextension, timelockupgrade, mutualupgrade). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 578; live-surface contracts included: 389 (265 live, 124 unknown).
- Excluded by liveness: 189 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 20/51 (39.2%)
- Deployed-live implementations: 56 of 180 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 20/56
- Verified + Unaudited implementations: 36
- Verified by bytecode match: 0
- Unverified implementations: 124
- Unique implementations: 180
- Raw deployments: 389
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 6
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/indexcoop/information))
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-09 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 5 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 17 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: 17.6% (Code4rena, OpenZeppelin)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 11 | 19.6% | 2024-09 |
| OpenZeppelin | Tier 1 | 8 | 14.3% | 2020-09 |
| Code4rena | Tier 1 | 1 | 1.8% | 2022-06 |
| iosiro | Tier 2 | 1 | 1.8% | 2021-09 |

## Contract Surface

### ✅ Verified + Audited (20)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BasicIssuanceModule | unknown | polygon | n/a | 5 deployments: ethereum `0x508910...5ba35b`; ethereum `0xd8ef3c...32f94d`; polygon [`0x000711...00439c`](./contracts/polygon-137/0x000711e852a9b735b1813ebf367b75969c00439c/); polygon `0x055c8b...6404db`; polygon `0x7903f3...686c60` | ✅ Audited |
| Controller | unknown | polygon | n/a | 7 deployments: ethereum `0xa4c8d2...21a349`; ethereum `0xd24636...66603a`; ethereum `0xf1b12a...d3c329`; polygon [`0x3bb631...d5a8ce`](./contracts/polygon-137/0x3bb631604c802da5234784ec5c720f7942d5a8ce/); polygon `0x57b31c...da0267`; polygon `0x8908ea...0b9259`; polygon `0xdd8454...4b152f` | ✅ Audited |
| CustomOracleNavIssuanceModule | unknown | ethereum | n/a | 2 deployments: ethereum [`0x234467...8a1ba3`](./contracts/ethereum-1/0x2344674b23ad076908fd2396373cfe9cd48a1ba3/); polygon `0xeb3826...0cd606` | ✅ Audited |
| DebtIssuanceModuleV2 | unknown | ethereum | n/a | 6 deployments: ethereum [`0x04b59f...85f0f3`](./contracts/ethereum-1/0x04b59f9f09750c044d7cfbc177561e409085f0f3/); ethereum `0x515a09...58381c`; ethereum `0xa0a98e...a8fd59`; polygon `0x53e6dc...808cb4`; polygon `0x663bc1...737e51`; polygon `0x767bd2...e87e66` | ✅ Audited |
| DebtIssuanceModuleV3 | unknown | ethereum | n/a | [`0x86b7c6...875193`](./contracts/ethereum-1/0x86b7c605c03b9bbb0f6a25fbbb63baf15d875193/) | ✅ Audited |
| ERC4626Oracle | unknown | ethereum | n/a | 3 deployments: ethereum [`0x304a77...f51573`](./contracts/ethereum-1/0x304a77c58607dd182a30288e7ef6c16cf2f51573/); ethereum `0x911b6b...46d9c9`; ethereum `0xd3ddc9...2f09c8` | ✅ Audited |
| IntegrationRegistry | unknown | ethereum | n/a | 10 deployments: ethereum [`0x0b95e9...22473c`](./contracts/ethereum-1/0x0b95e9976eda9b0403ad31bd57be29adef22473c/); ethereum `0x3e8939...db0c2d`; ethereum `0x665519...6e2e5a`; ethereum `0x80c286...2ddae9`; ethereum `0x8a4795...c49763`; ethereum `0x9e0d34...2abbc6`; ethereum `0xb9083d...6b28d3`; polygon `0x2152f9...d66abb`; polygon `0x5678dc...6283bb`; polygon `0xded5a5...bb9057` | ✅ Audited |
| NotionalTradeModule | unknown | ethereum | n/a | [`0x600d99...c43416`](./contracts/ethereum-1/0x600d9950c6ecaef98cc42fa207e92397a6c43416/) | ✅ Audited |
| PreciseUnitOracle | unknown | ethereum | n/a | [`0x868568...059453`](./contracts/ethereum-1/0x86856845e974df562975d0ef62ec34b2ff059453/) | ✅ Audited |
| PriceOracle | unknown | polygon | n/a | 8 deployments: ethereum `0x6a663b...ec5a75`; ethereum `0xa60f9e...e92b0a`; ethereum `0xc3da3e...ff2447`; ethereum `0xff31e9...4acf1c`; polygon [`0x449b67...0f0799`](./contracts/polygon-137/0x449b6745bc85c7bf69ddf662a226d246d30f0799/); polygon `0x84c2fd...3c4184`; polygon `0x984d92...24516f`; polygon `0xd915e2...c6751d` | ✅ Audited |
| Prt | unknown | ethereum | n/a | [`0x99f653...d7a773`](./contracts/ethereum-1/0x99f6539df9840592a862ab916ddc3258a1d7a773/) | ✅ Audited |
| RebasingComponentModule | unknown | ethereum | n/a | [`0x14f47d...f5a69e`](./contracts/ethereum-1/0x14f47d2808155d30a1297586f4c3f6aab4f5a69e/) | ✅ Audited |
| SetToken | unknown | ethereum | n/a | 49 deployments: ethereum [`0x02ec0c...bc36a6`](./contracts/ethereum-1/0x02ec0c9e6d3c08b8fb12fec51ccba048afbc36a6/); ethereum `0x0b498f...801c2b`; ethereum `0x1494ca...ba3c2b`; ethereum `0x1d86fb...68bb08`; ethereum `0x23c3e5...adefd8`; ethereum `0x2af1df...0c7dc6`; ethereum `0x33d63b...4cf5f1`; ethereum `0x341c05...0bb3be`; ethereum `0x36c833...36065e`; ethereum `0x47110d...7eb44f`; ethereum `0x48ccc6...3bbd0f`; ethereum `0x58222d...163a4a`; ethereum `0x65c4c0...d148a2`; ethereum `0x72e364...d634d7`; ethereum `0x7c07f7...256a84`; ethereum `0xaa6e81...5665bd`; ethereum `0xada0a1...f3ed42`; ethereum `0xc45060...9b99ee`; ethereum `0xc70686...ff6de5`; ethereum `0xd2ac55...fde759`; ethereum `0xf860f9...bbf1bc`; ethereum `0xfa10e1...3e4e37`; polygon `0x130ce4...0bb8d2`; polygon `0x340f41...ae6abc`; polygon `0x3ad707...d66473`; polygon `0x4f0258...f1e609`; polygon `0xd6ca86...dbbc14`; polygon `0xf287d9...2c7976`; base `0x0a0fbd...cdc9c6`; base `0x16c469...043571`; base `0x186f3d...c39cde`; base `0x1f4609...685699`; base `0x2f67e4...208d40`; base `0x329f66...272acb`; base `0x32bb8f...d392fc`; base `0x5c6005...a48f73`; base `0x8d08ce...a2dc22`; base `0xc88464...3e35a6`; base `0xc8df82...e739fd`; arbitrum `0x26d7d3...bca43c`; arbitrum `0x3bdd0d...bec0e6`; arbitrum `0x749654...b1c89b`; arbitrum `0x77f691...7712c3`; arbitrum `0x80e58a...c087fc`; arbitrum `0xa0a17b...dfa543`; arbitrum `0xaf0408...878913`; arbitrum `0xe7b1ce...e43ed1`; arbitrum `0xeb5be6...4f59d7`; arbitrum `0xfc01f2...90d6cb` | ✅ Audited |
| SetTokenCreator | token | ethereum | n/a | 5 deployments: ethereum [`0x2758bf...47b75e`](./contracts/ethereum-1/0x2758bf6af0ec63f1710d3d7890e1c263a247b75e/); ethereum `0x86a73e...14ef43`; polygon `0x2b44c2...7627f7`; polygon `0x2e45e7...82e9a3`; polygon `0xc8657a...83dbd8` | ✅ Audited |
| SetValuer | unknown | polygon | n/a | 5 deployments: ethereum `0xb647ac...bb485b`; ethereum `0xddf4f0...1f555f`; polygon [`0x48cf49...e71a22`](./contracts/polygon-137/0x48cf49701028cfbbce18a963c9134f7a86e71a22/); polygon `0x4e9290...f24389`; polygon `0xdfcd0b...f29e46` | ✅ Audited |
| SignedSnapshotStakingPool | core_logic | ethereum | n/a | [`0xbe0302...09a9c6`](./contracts/ethereum-1/0xbe03026716a4d5e0992f22a3e6494b4f2809a9c6/) | ✅ Audited |
| StreamingFeeModule | unknown | ethereum | n/a | 6 deployments: ethereum [`0x08f866...10cdec`](./contracts/ethereum-1/0x08f866c74205617b6f3903ef481798eced10cdec/); ethereum `0x165edf...b9a186`; ethereum `0x3d8d14...eb901b`; polygon `0x53f9f5...2c373f`; polygon `0xc6955b...885bd8`; polygon `0xcd79a0...1cb2d7` | ✅ Audited |
| TargetWeightWrapExtension | unknown | ethereum | n/a | [`0xc9a8ae...e56ff2`](./contracts/ethereum-1/0xc9a8ae9f29c1e77bb05a8a4d3576998a9de56ff2/) | ✅ Audited |
| TradeModule | unknown | ethereum | n/a | [`0x90f765...41c129`](./contracts/ethereum-1/0x90f765f63e7dc5ae97d6c576bf693fb6af41c129/) | ✅ Audited |
| WrapModuleV2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x660446...b7b809`](./contracts/ethereum-1/0x6604468512b3b85c58c4d818ccb69fba5bb7b809/); ethereum `0xbfe0f7...99a075` | ✅ Audited |

### ⚠️ Verified + Unaudited (36)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AaveLeverageModule | unknown | ethereum | n/a | [`0x251bd1...5f51dc`](./contracts/ethereum-1/0x251bd1d42df1f153d86a5ba2305faade4d5f51dc/) | ⚠️ Unaudited |
| AaveLeverageStrategyExtension | adapter | ethereum | n/a | [`0xe6484a...2cbc2b`](./contracts/ethereum-1/0xe6484a64e2ea165943c734dc498070b5902cbc2b/) | ⚠️ Unaudited |
| AaveV3LeverageModule | unknown | arbitrum | n/a | 3 deployments: ethereum `0x9d08cc...e9f74f`; base `0xc06a6e...672699`; arbitrum [`0x6d1b74...f2a4ae`](./contracts/arbitrum-42161/0x6d1b74e18064172d028c5ee7af5d0ccc26f2a4ae/) | ⚠️ Unaudited |
| AirdropExtension | unknown | ethereum | n/a | 6 deployments: ethereum [`0x07a578...8c03c9`](./contracts/ethereum-1/0x07a578e02db4e1d518ee1856580c7ac0058c03c9/); ethereum `0x0fba2b...e59183`; ethereum `0x102829...655fa3`; ethereum `0x2cf29f...cbcac1`; ethereum `0x63bf66...8cc0eb`; ethereum `0xea381e...21df5f` | ⚠️ Unaudited |
| AuctionRebalanceExtension | unknown | ethereum | n/a | 6 deployments: ethereum [`0x2b5990...58d01b`](./contracts/ethereum-1/0x2b5990df9212de51c6f6ccd2d651e6ba5158d01b/); ethereum `0x418a29...f2092b`; ethereum `0x94caea...37ff4a`; ethereum `0xa985e6...09ba84`; ethereum `0xacce49...2597dc`; ethereum `0xeafb43...d72d26` | ⚠️ Unaudited |
| BaseManagerV2 | governance | ethereum | n/a | 10 deployments: ethereum [`0x386034...4db5a3`](./contracts/ethereum-1/0x386034fa078ca1022865f41bdd7d016aae4db5a3/); ethereum `0x3f74f9...573f5f`; ethereum `0x555699...50940b`; ethereum `0x688488...6bdace`; ethereum `0xa29628...098e2f`; ethereum `0xcd483f...918220`; ethereum `0xdfb1e5...22b895`; ethereum `0xe7736b...6b2e03`; ethereum `0xef754f...585769`; ethereum `0xfdb765...fd89f3` | ⚠️ Unaudited |
| DelegatedManager | unknown | ethereum | n/a | [`0xb04d1d...bee140`](./contracts/ethereum-1/0xb04d1dae75c0764e8ff5f835d2f0771101bee140/) | ⚠️ Unaudited |
| DelegatedManagerFactory | unknown | ethereum | n/a | [`0x38d8fa...a3b235`](./contracts/ethereum-1/0x38d8fa043913e8ef6466d01bef4af42cafa3b235/) | ⚠️ Unaudited |
| DEXAdapter | unknown | ethereum | n/a | 2 deployments: ethereum [`0x25a880...3f6fca`](./contracts/ethereum-1/0x25a8803b9b611cc13d807829d73049cd803f6fca/); ethereum `0xb7cc88...b74598` | ⚠️ Unaudited |
| DEXAdapter | adapter | ethereum | n/a | 5 deployments: ethereum [`0x3026eb...a0a860`](./contracts/ethereum-1/0x3026eb2097468fcdc5387af73379948f8aa0a860/); ethereum `0x6408e1...ed8044`; ethereum `0xc43ee8...3f2eb9`; polygon `0x3b7547...f7b3cb`; polygon `0x8a64b8...efd31a` | ⚠️ Unaudited |
| DEXAdapterV2 | unknown | ethereum | n/a | [`0x888589...d5de8d`](./contracts/ethereum-1/0x88858930b3f1946a5c41a5ded7b5335431d5de8d/) | ⚠️ Unaudited |
| DEXAdapterV3 | unknown | ethereum | n/a | [`0x28764a...8e50ef`](./contracts/ethereum-1/0x28764a27139d7241c9198c43720a0df1c18e50ef/) | ⚠️ Unaudited |
| ExchangeIssuanceIcEth | unknown | ethereum | n/a | 2 deployments: ethereum [`0x40e8e5...2fe8a3`](./contracts/ethereum-1/0x40e8e58052272496dcf42953cf7e699b522fe8a3/); ethereum `0x945db3...f4e2d1` | ⚠️ Unaudited |
| ExchangeIssuanceLeveraged | unknown | polygon | n/a | 8 deployments: ethereum `0x2f2c59...538d64`; ethereum `0x981b21...a794e1`; polygon [`0x2e785f...fa8bb6`](./contracts/polygon-137/0x2e785f33540b5fb6a820ca4bae975d6279fa8bb6/); polygon `0x453420...d73425`; polygon `0x563127...d690c7`; polygon `0x600d99...c43416`; polygon `0x783f29...01b16e`; polygon `0xe86636...e419db` | ⚠️ Unaudited |
| ExchangeIssuanceZeroEx | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8760fc...07d7d1`](./contracts/ethereum-1/0x8760fcd90c82e1e95e55047b6b6a0f22dc07d7d1/); ethereum `0xf42ecd...6e4b25` | ⚠️ Unaudited |
| FeeSplitExtension | unknown | ethereum | n/a | 44 deployments: ethereum [`0x026aa0...135518`](./contracts/ethereum-1/0x026aa079c4f9cff80b0521b64f8f2d8ccf135518/); ethereum `0x04d58e...b2c08b`; ethereum `0x0d5f4c...ecdfca`; ethereum `0x0daf2d...077ffd`; ethereum `0x0e716b...cc3d5f`; ethereum `0x1554a6...5070c9`; ethereum `0x1b7d68...c54e74`; ethereum `0x1d8e28...33d185`; ethereum `0x23aa81...990a8b`; ethereum `0x2573f2...cc28aa`; ethereum `0x5d6476...39372c`; ethereum `0x5e568e...f85bf1`; ethereum `0x623c7b...6e7dee`; ethereum `0x7ec2ac...d6b41c`; ethereum `0x7febfc...d299d0`; ethereum `0x83adee...0b4491`; ethereum `0x87a120...49e6ca`; ethereum `0x978177...cd373c`; ethereum `0xa8a23b...2cfaec`; ethereum `0xa9c13c...f97bc3`; ethereum `0xab7eba...06b82e`; ethereum `0xac761f...4ab05a`; ethereum `0xafe68a...995814`; ethereum `0xb9a238...e51987`; ethereum `0xc62e39...bf9563`; ethereum `0xcb63b9...4bfdaf`; ethereum `0xd17300...4775dd`; ethereum `0xd5a152...fd6bb9`; ethereum `0xe833c9...c1ec3a`; ethereum `0xf1872a...8e8f51`; polygon `0x2ce6d7...1b00e8`; polygon `0x460ef6...722812`; polygon `0x5295e1...a39fb0`; polygon `0x5e38f8...efe121`; polygon `0x996d0a...60a487`; polygon `0xa08ad2...bbc022`; polygon `0xadfb2f...95554e`; polygon `0xb994cf...8a5164`; polygon `0xc6b3b4...e42194`; polygon `0xd24636...66603a`; polygon `0xdeb6ab...f74269`; polygon `0xe6484a...2cbc2b`; polygon `0xea381e...21df5f`; polygon `0xf8db58...08e549` | ⚠️ Unaudited |
| FixedRebalanceExtension | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5f98cb...48efbb`](./contracts/ethereum-1/0x5f98cbb7ac52fa5ef3660b7ab34e03398b48efbb/); ethereum `0x9fe734...26ad84` | ⚠️ Unaudited |
| FlashMint4626 | unknown | ethereum | n/a | 2 deployments: ethereum [`0xe48370...127f53`](./contracts/ethereum-1/0xe483701d4f8c3b9b7b662fee2543503d6d127f53/); ethereum `0xf5cf95...79aca9` | ⚠️ Unaudited |
| FlashMintDex | unknown | ethereum | n/a | [`0xcde265...6d277e`](./contracts/ethereum-1/0xcde2657a980a8e2b7c5957d30b2ac768cb6d277e/) | ⚠️ Unaudited |
| FlashMintHyETH | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1c19c6...28d7ad`](./contracts/ethereum-1/0x1c19c605cb071e22a0a46bc9e24b5ce64a28d7ad/); ethereum `0xc290c3...20109a` | ⚠️ Unaudited |
| FlashMintHyETHV2 | unknown | ethereum | n/a | [`0x940ecb...aa6a7e`](./contracts/ethereum-1/0x940ecb16416fe52856e8653b2958bfd556aa6a7e/) | ⚠️ Unaudited |
| FlashMintHyETHV3 | unknown | ethereum | n/a | [`0xcb1eea...dddf49`](./contracts/ethereum-1/0xcb1eea349f25288627f008c5e2a69b684bdddf49/) | ⚠️ Unaudited |
| FlashMintLeveraged | unknown | ethereum | n/a | 5 deployments: ethereum [`0x45c005...ca45d0`](./contracts/ethereum-1/0x45c00508c14601fd1c1e296eb3c0e3eeedca45d0/); ethereum `0x63bcc1...bf863e`; ethereum `0x766304...ef055d`; ethereum `0x9d116b...1d46ed`; ethereum `0xb4354d...96db48` | ⚠️ Unaudited |
| FlashMintNAV | unknown | ethereum | n/a | [`0x62f160...2ea1cf`](./contracts/ethereum-1/0x62f160391d2f1e3a176f32f51ade6ed8bb2ea1cf/) | ⚠️ Unaudited |
| FlashMintNotional | unknown | ethereum | n/a | [`0x9da999...7bd476`](./contracts/ethereum-1/0x9da9992b5d01bd0efb1ee8310e8011dc837bd476/) | ⚠️ Unaudited |
| FlashMintWrapped | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5c0d0a...69faa2`](./contracts/ethereum-1/0x5c0d0a9a0c3a0a5b591496ff894686893b69faa2/); ethereum `0x7dde62...207801` | ⚠️ Unaudited |
| FlexibleLeverageStrategyExtension | unknown | ethereum | n/a | 4 deployments: ethereum [`0x097afa...d2911f`](./contracts/ethereum-1/0x097afae7b0e0ea0880c8dba7475c12a1f3d2911f/); ethereum `0x9ba41a...0c00a1`; ethereum `0xc0584e...85c610`; ethereum `0xfd4ea5...37e9ad` | ⚠️ Unaudited |
| FLIRebalanceViewer | unknown | ethereum | n/a | 4 deployments: ethereum [`0x14d9f0...4e37eb`](./contracts/ethereum-1/0x14d9f0d529e80747b128ac2b145e4208e44e37eb/); ethereum `0x463215...e763ee`; ethereum `0x517f76...90efa7`; ethereum `0x8f4517...536217` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | arbitrum | n/a | 2 deployments: arbitrum [`0x19fa87...0ef7b4`](./contracts/arbitrum-42161/0x19fa8783f2b57f3ec6c9542926a06698e30ef7b4/); arbitrum `0x40fb52...e61d32` | ⚠️ Unaudited |
| IntermediateMigrationExtension | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x9da195...77d907`](./contracts/ethereum-1/0x9da195dbd9446c649b6cb6196d6cc460f277d907/); ethereum `0xa02a2f...1c7a5e` | ⚠️ Unaudited |
| MorphoLeverageModule | unknown | base | n/a | [`0x9534b6...65b8d7`](./contracts/base-8453/0x9534b6ec541ad182fbee2b0b01d1e4404765b8d7/) | ⚠️ Unaudited |
| OptimisticAuctionRebalanceExtensionV1 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4677f9...510732`](./contracts/ethereum-1/0x4677f9eac72e10469949d73d8ef71883ce510732/); ethereum `0xf0d343...c2cec7` | ⚠️ Unaudited |
| ProtocolViewer | unknown | ethereum | n/a | [`0x6b65c4...6ef2e5`](./contracts/ethereum-1/0x6b65c4760f56ea89a21193af5b909395766ef2e5/) | ⚠️ Unaudited |
| PrtFeeSplitExtension | unknown | ethereum | n/a | [`0x43c3ef...f90613`](./contracts/ethereum-1/0x43c3ef32e52f17777789c71002ef4a887df90613/) | ⚠️ Unaudited |
| SupplyCapIssuanceHook | unknown | ethereum | n/a | 19 deployments: ethereum [`0x011095...c0e5c6`](./contracts/ethereum-1/0x0110959c718f70fd2dc01e86566e694391c0e5c6/); ethereum `0x053f22...53fa79`; ethereum `0x245290...bfebe0`; ethereum `0x2c2ab8...1c98ec`; ethereum `0x30e9e6...ee53a3`; ethereum `0x5bca85...830ee5`; ethereum `0x5f22e5...c1cf67`; ethereum `0x64c8e6...862d91`; ethereum `0x97d151...bcc691`; ethereum `0xa727a1...029867`; ethereum `0xa8b29e...f7902d`; ethereum `0xb08089...2c69f5`; ethereum `0xba3bbb...6aff29`; ethereum `0xbc29ac...222cbf`; ethereum `0xca2754...a77220`; ethereum `0xd59fc2...152555`; ethereum `0xe2ea6b...4cd1e6`; ethereum `0xec5a28...cafd82`; ethereum `0xefc5ec...e06f83` | ⚠️ Unaudited |
| VariableDebtToken | token | ethereum | n/a | [`0xf63b34...e33ecf`](./contracts/ethereum-1/0xf63b34710400cad3e044cffdcab00a0f32e33ecf/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (124)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x0156ab...84e5c2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x06da99...66f012` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0e6020...336b28` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x12951b...d9bd45` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1434f1...5c4b25` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x14f032...04c53d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x172620...b13b5d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x17efe2...1509fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x186485...b0a706` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x18b739...7372af` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x19ab95...606992` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1d763b...b9e4d0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1d8ab7...774c9a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1db929...f60467` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1f6ee9...3165e0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x22d3f7...db2771` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x25c499...7b305c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x263c23...ec1c05` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x26de33...135b03` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x285c5b...efb95e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x289178...44358c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x293dcc...158151` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2ba59e...72937a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2c2c21...ec9d00` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2f5076...208d9a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x328967...140010` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x365beb...a36861` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x370041...ea59ec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x38e546...34a92b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3d9da9...da045e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3e262d...73dc39` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3fec72...1600a8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x460031...9a4d19` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x468905...3d886c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4737ed...21046c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x48c985...b4dad3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4c4c64...f0cefa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4d2147...9e90ca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4f08ee...f520ee` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4f7028...f0de4f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4fee5d...4ee034` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x504e22...3bf061` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x50711c...76d154` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x510cae...a919ff` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5188fc...ad4805` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5374e7...a6c787` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5ecd8e...8972ff` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5efda1...8fc85f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6169c6...6f1d9e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x616dad...a4ff54` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6462ff...d962a0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x653d46...c93a36` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x65d103...e30d46` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x678292...732f88` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x680228...2573ad` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6f76cf...528742` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x71a254...c5802a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x75fbbd...adcfb2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x77116a...23fdd1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x79cfd6...4436a0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7b17dc...2718c3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7b4c75...d4002a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x818c63...dd5d40` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8440f6...3e21c0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x85fa4e...cf6b77` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x864fea...574c17` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x89bfd8...d17a41` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8d5cf8...659c69` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8ddf05...195117` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8de07c...2a9abe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8ffc4f...8924a1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x931a80...d37d1e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9378ad...48fead` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9865f7...e1ed3b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9a56e2...d9f778` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9cfe76...70919b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9d2e0b...bd27ea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9daae5...36ddf6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9e49d7...369aa7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9e9a0a...b097d1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa26191...24d7fc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa361f9...d8ca96` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa65579...3bbb25` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa71978...81ec66` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xadcfd8...6f5bfb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xadd948...00c79c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaee656...b7117c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb2aa87...61f218` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb2d113...3f1ddb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb5f100...495a2f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbcad60...67bf53` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc0aafe...6365ca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc19a26...42c1da` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc5d964...21097e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc6e977...cf5e7e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc8dba7...2425d3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc91410...b7c118` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd04aab...cdac82` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd50f2f...9d2487` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd629f4...648348` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd7937c...400852` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd88e46...fdede8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdad75a...3fdd15` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdd5825...6d5382` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe7a8f8...c61478` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xedc75f...15d053` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf00ff2...2a4ed7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf04ff1...b3c581` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf2c421...1846ae` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf3055e...d7bd37` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf3be07...3d43be` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf8ba20...e6b448` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0dc65c...d4e762` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x26cb12...f6eff7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x37e7c0...a537aa` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x42bf8b...022310` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x773c46...b61f23` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x87e28b...8ab399` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9737c6...54f500` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa84900...24ed38` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xafbd1f...755f92` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb84924...4277cc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc132f9...8a4792` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf4df24...f2c385` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [IndexIcUSDAuditReport.md](https://github.com/IndexCoop/audits/blob/main/audits/IndexIcUSDAuditReport.md) | unknown | Audit | 2024-09 | aging | Direct | contract_name | 23 | high |
| [IndexPRTAuditReport.md](https://github.com/IndexCoop/audits/blob/main/audits/IndexPRTAuditReport.md) | unknown | Audit | 2024-07 | stale | Direct | contract_name | 2 | n/a |
| [IndexDIMv3AuditReport.md](https://github.com/IndexCoop/audits/blob/main/audits/IndexDIMv3AuditReport.md) | unknown | Audit | 2024-05 | stale | Direct | contract_name | 1 | high |
| [8a96ae7b9746ba8394dc6c16202a6b64 (GitHub directory)](https://gist.github.com/bernard-wagner/8a96ae7b9746ba8394dc6c16202a6b64) | iosiro | Audit | 2021-09 | stale | Direct | contract_name | 1 | n/a |
| [code4rena.com/reports/2022-06-notional-coop](https://code4rena.com/reports/2022-06-notional-coop) | Code4rena | Contest | 2022-06 | stale | Direct | contract_name | 1 | high |
| [immunefi.com/bug-bounty/indexcoop/information](https://immunefi.com/bug-bounty/indexcoop/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a |
| [www.openzeppelin.com/news/set-protocol-audit](https://www.openzeppelin.com/news/set-protocol-audit) | OpenZeppelin | Audit | 2020-09 | stale | Direct | contract_name | 91 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x07a578...8c03c9`](./contracts/ethereum-1/0x07a578e02db4e1d518ee1856580c7ac0058c03c9/) | AirdropExtension | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2b5990...58d01b`](./contracts/ethereum-1/0x2b5990df9212de51c6f6ccd2d651e6ba5158d01b/) | AuctionRebalanceExtension | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x386034...4db5a3`](./contracts/ethereum-1/0x386034fa078ca1022865f41bdd7d016aae4db5a3/) | BaseManagerV2 | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb04d1d...bee140`](./contracts/ethereum-1/0xb04d1dae75c0764e8ff5f835d2f0771101bee140/) | DelegatedManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x38d8fa...a3b235`](./contracts/ethereum-1/0x38d8fa043913e8ef6466d01bef4af42cafa3b235/) | DelegatedManagerFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x25a880...3f6fca`](./contracts/ethereum-1/0x25a8803b9b611cc13d807829d73049cd803f6fca/) | DEXAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3026eb...a0a860`](./contracts/ethereum-1/0x3026eb2097468fcdc5387af73379948f8aa0a860/) | DEXAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x888589...d5de8d`](./contracts/ethereum-1/0x88858930b3f1946a5c41a5ded7b5335431d5de8d/) | DEXAdapterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x28764a...8e50ef`](./contracts/ethereum-1/0x28764a27139d7241c9198c43720a0df1c18e50ef/) | DEXAdapterV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x40e8e5...2fe8a3`](./contracts/ethereum-1/0x40e8e58052272496dcf42953cf7e699b522fe8a3/) | ExchangeIssuanceIcEth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2e785f...fa8bb6`](./contracts/polygon-137/0x2e785f33540b5fb6a820ca4bae975d6279fa8bb6/) | ExchangeIssuanceLeveraged | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8760fc...07d7d1`](./contracts/ethereum-1/0x8760fcd90c82e1e95e55047b6b6a0f22dc07d7d1/) | ExchangeIssuanceZeroEx | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x026aa0...135518`](./contracts/ethereum-1/0x026aa079c4f9cff80b0521b64f8f2d8ccf135518/) | FeeSplitExtension | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5f98cb...48efbb`](./contracts/ethereum-1/0x5f98cbb7ac52fa5ef3660b7ab34e03398b48efbb/) | FixedRebalanceExtension | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe48370...127f53`](./contracts/ethereum-1/0xe483701d4f8c3b9b7b662fee2543503d6d127f53/) | FlashMint4626 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcde265...6d277e`](./contracts/ethereum-1/0xcde2657a980a8e2b7c5957d30b2ac768cb6d277e/) | FlashMintDex | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1c19c6...28d7ad`](./contracts/ethereum-1/0x1c19c605cb071e22a0a46bc9e24b5ce64a28d7ad/) | FlashMintHyETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x940ecb...aa6a7e`](./contracts/ethereum-1/0x940ecb16416fe52856e8653b2958bfd556aa6a7e/) | FlashMintHyETHV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcb1eea...dddf49`](./contracts/ethereum-1/0xcb1eea349f25288627f008c5e2a69b684bdddf49/) | FlashMintHyETHV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x45c005...ca45d0`](./contracts/ethereum-1/0x45c00508c14601fd1c1e296eb3c0e3eeedca45d0/) | FlashMintLeveraged | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x62f160...2ea1cf`](./contracts/ethereum-1/0x62f160391d2f1e3a176f32f51ade6ed8bb2ea1cf/) | FlashMintNAV | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9da999...7bd476`](./contracts/ethereum-1/0x9da9992b5d01bd0efb1ee8310e8011dc837bd476/) | FlashMintNotional | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5c0d0a...69faa2`](./contracts/ethereum-1/0x5c0d0a9a0c3a0a5b591496ff894686893b69faa2/) | FlashMintWrapped | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x097afa...d2911f`](./contracts/ethereum-1/0x097afae7b0e0ea0880c8dba7475c12a1f3d2911f/) | FlexibleLeverageStrategyExtension | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x14d9f0...4e37eb`](./contracts/ethereum-1/0x14d9f0d529e80747b128ac2b145e4208e44e37eb/) | FLIRebalanceViewer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9da195...77d907`](./contracts/ethereum-1/0x9da195dbd9446c649b6cb6196d6cc460f277d907/) | IntermediateMigrationExtension | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4677f9...510732`](./contracts/ethereum-1/0x4677f9eac72e10469949d73d8ef71883ce510732/) | OptimisticAuctionRebalanceExtensionV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6b65c4...6ef2e5`](./contracts/ethereum-1/0x6b65c4760f56ea89a21193af5b909395766ef2e5/) | ProtocolViewer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x43c3ef...f90613`](./contracts/ethereum-1/0x43c3ef32e52f17777789c71002ef4a887df90613/) | PrtFeeSplitExtension | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x011095...c0e5c6`](./contracts/ethereum-1/0x0110959c718f70fd2dc01e86566e694391c0e5c6/) | SupplyCapIssuanceHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf63b34...e33ecf`](./contracts/ethereum-1/0xf63b34710400cad3e044cffdcab00a0f32e33ecf/) | VariableDebtToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 51 |
| upstream | 4 |
| standard_library | 1 |
| needs_review | 124 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=4
- Match method counts: contract_name=3, extraction_exact=116

Fork inheritance lineage and inherited audits are included when available.
