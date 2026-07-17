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
| BasicIssuanceModule | unknown | polygon | n/a | 5 deployments: ethereum `0x508910aa6ff3d029dc358dd0f775877a355ba35b`; ethereum `0xd8ef3cace8b4907117a45b0b125c68560532f94d`; polygon [`0x000711e852a9b735b1813ebf367b75969c00439c`](./contracts/polygon-137/0x000711e852a9b735b1813ebf367b75969c00439c/); polygon `0x055c8bd48ad3d2d3d486453c32a6fbeba86404db`; polygon `0x7903f301b95708b3e960cb151afe9052a4686c60` | ✅ Audited |
| Controller | unknown | polygon | n/a | 7 deployments: ethereum `0xa4c8d221d8bb851f83aadd0223a8900a6921a349`; ethereum `0xd2463675a099101e36d85278494268261a66603a`; ethereum `0xf1b12a7b1f0af744ed21eec7d3e891c48fd3c329`; polygon [`0x3bb631604c802da5234784ec5c720f7942d5a8ce`](./contracts/polygon-137/0x3bb631604c802da5234784ec5c720f7942d5a8ce/); polygon `0x57b31c8818c375dee5f96542daaae71f74da0267`; polygon `0x8908ea1682c05c928e309d3edb977cfa940b9259`; polygon `0xdd84546f43c949e369460a3ca1241ca8e94b152f` | ✅ Audited |
| CustomOracleNavIssuanceModule | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2344674b23ad076908fd2396373cfe9cd48a1ba3`](./contracts/ethereum-1/0x2344674b23ad076908fd2396373cfe9cd48a1ba3/); polygon `0xeb3826bfc2fa9baf56ea3ea9771ecbfe5b0cd606` | ✅ Audited |
| DebtIssuanceModuleV2 | unknown | ethereum | n/a | 6 deployments: ethereum [`0x04b59f9f09750c044d7cfbc177561e409085f0f3`](./contracts/ethereum-1/0x04b59f9f09750c044d7cfbc177561e409085f0f3/); ethereum `0x515a09825228cf6c68a35fe9275fa38add58381c`; ethereum `0xa0a98eb7af028be00d04e46e1316808a62a8fd59`; polygon `0x53e6dce67765c11d3380840529da725cda808cb4`; polygon `0x663bc1be0ca08d5d5f88ccae5ce97ffdee737e51`; polygon `0x767bd21fff3ef3a3e6e4c5142962280e61e87e66` | ✅ Audited |
| DebtIssuanceModuleV3 | unknown | ethereum | n/a | [`0x86b7c605c03b9bbb0f6a25fbbb63baf15d875193`](./contracts/ethereum-1/0x86b7c605c03b9bbb0f6a25fbbb63baf15d875193/) | ✅ Audited |
| ERC4626Oracle | unknown | ethereum | n/a | 3 deployments: ethereum [`0x304a77c58607dd182a30288e7ef6c16cf2f51573`](./contracts/ethereum-1/0x304a77c58607dd182a30288e7ef6c16cf2f51573/); ethereum `0x911b6bd3a85c3ef798580b09fc305dc7b846d9c9`; ethereum `0xd3ddc923f672c7b28f78d0a39e8385148d2f09c8` | ✅ Audited |
| IntegrationRegistry | unknown | ethereum | n/a | 10 deployments: ethereum [`0x0b95e9976eda9b0403ad31bd57be29adef22473c`](./contracts/ethereum-1/0x0b95e9976eda9b0403ad31bd57be29adef22473c/); ethereum `0x3e8939a2ab27d79a21ed86ef56bba62d82db0c2d`; ethereum `0x6655194c95d24b8b10b156dffce22a2c126e2e5a`; ethereum `0x80c286a99506d4e967cac83e22a28f5cd62ddae9`; ethereum `0x8a4795165214c5f0799623f67f20fb7361c49763`; ethereum `0x9e0d3430ae0389c1f0c55ec3740618f0fa2abbc6`; ethereum `0xb9083dee5e8273e54b9db4c31ba9d4ab7c6b28d3`; polygon `0x2152f99cca0d908696462d69bdca8a8df3d66abb`; polygon `0x5678dcbd8961032d94c669986097b1c0556283bb`; polygon `0xded5a5bea1f161bca071d97ab86fc7dcd1bb9057` | ✅ Audited |
| NotionalTradeModule | unknown | ethereum | n/a | [`0x600d9950c6ecaef98cc42fa207e92397a6c43416`](./contracts/ethereum-1/0x600d9950c6ecaef98cc42fa207e92397a6c43416/) | ✅ Audited |
| PreciseUnitOracle | unknown | ethereum | n/a | [`0x86856845e974df562975d0ef62ec34b2ff059453`](./contracts/ethereum-1/0x86856845e974df562975d0ef62ec34b2ff059453/) | ✅ Audited |
| PriceOracle | unknown | polygon | n/a | 8 deployments: ethereum `0x6a663b74b9ea021099649320c4042af289ec5a75`; ethereum `0xa60f9e1641747762ade7fd5f881b90b691e92b0a`; ethereum `0xc3da3ed5ed032baec5465f6f0e87a22a5aff2447`; ethereum `0xff31e9acbc9d42b4f964f54f9752d2f74e4acf1c`; polygon [`0x449b6745bc85c7bf69ddf662a226d246d30f0799`](./contracts/polygon-137/0x449b6745bc85c7bf69ddf662a226d246d30f0799/); polygon `0x84c2fdc15e70cbc09a874f2501f7744a673c4184`; polygon `0x984d92dd094561c4ec4e994c7b4e089b3824516f`; polygon `0xd915e2c8280d9317dc8f096805e5f378c4c6751d` | ✅ Audited |
| Prt | unknown | ethereum | n/a | [`0x99f6539df9840592a862ab916ddc3258a1d7a773`](./contracts/ethereum-1/0x99f6539df9840592a862ab916ddc3258a1d7a773/) | ✅ Audited |
| RebasingComponentModule | unknown | ethereum | n/a | [`0x14f47d2808155d30a1297586f4c3f6aab4f5a69e`](./contracts/ethereum-1/0x14f47d2808155d30a1297586f4c3f6aab4f5a69e/) | ✅ Audited |
| SetToken | unknown | ethereum | n/a | 49 deployments: ethereum [`0x02ec0c9e6d3c08b8fb12fec51ccba048afbc36a6`](./contracts/ethereum-1/0x02ec0c9e6d3c08b8fb12fec51ccba048afbc36a6/); ethereum `0x0b498ff89709d3838a063f1dfa463091f9801c2b`; ethereum `0x1494ca1f11d487c2bbe4543e90080aeba4ba3c2b`; ethereum `0x1d86fbad389068e19fa665eba12a0ebd4c68bb08`; ethereum `0x23c3e5b3d001e17054603269edfc703603adefd8`; ethereum `0x2af1df3ab0ab157e1e2ad8f88a7d04fbea0c7dc6`; ethereum `0x33d63ba1e57e54779f7ddaeaa7109349344cf5f1`; ethereum `0x341c05c0e9b33c0e38d64de76516b2ce970bb3be`; ethereum `0x36c833eed0d376f75d1ff9dfdee260191336065e`; ethereum `0x47110d43175f7f2c2425e7d15792acc5817eb44f`; ethereum `0x48ccc6937c62609f20376901535e00980e3bbd0f`; ethereum `0x58222dd0a3d6de911b067b52c45f974d03163a4a`; ethereum `0x65c4c0517025ec0843c9146af266a2c5a2d148a2`; ethereum `0x72e364f2abdc788b7e918bc238b21f109cd634d7`; ethereum `0x7c07f7abe10ce8e33dc6c5ad68fe033085256a84`; ethereum `0xaa6e8127831c9de45ae56bb1b0d4d4da6e5665bd`; ethereum `0xada0a1202462085999652dc5310a7a9e2bf3ed42`; ethereum `0xc4506022fb8090774e8a628d5084eed61d9b99ee`; ethereum `0xc7068657fd7ec85ea8db928af980fc088aff6de5`; ethereum `0xd2ac55ca3bbd2dd1e9936ec640dcb4b745fde759`; ethereum `0xf860f90e1f55e3528682e18850612cbb45bbf1bc`; ethereum `0xfa10e13fe555760a5297dc14eb6562a1a53e4e37`; polygon `0x130ce4e4f76c2265f94a961d70618562de0bb8d2`; polygon `0x340f412860da7b7823df372a2b59ff78b7ae6abc`; polygon `0x3ad707da309f3845cd602059901e39c4dcd66473`; polygon `0x4f025829c4b13df652f38abd2ab901185ff1e609`; polygon `0xd6ca869a4ec9ed2c7e618062cdc45306d8dbbc14`; polygon `0xf287d97b6345bad3d88856b26fb7c0ab3f2c7976`; base `0x0a0fbd86d2deb53d7c65fecf8622c2fa0dcdc9c6`; base `0x16c469f88979e19a53ea522f0c77afad9a043571`; base `0x186f3d8bb80dff50750babc5a4bcc33134c39cde`; base `0x1f4609133b6dacc88f2fa85c2d26635554685699`; base `0x2f67e4be7fbf53db88881324aac99e9d85208d40`; base `0x329f6656792c7d34d0fbb9762fa9a8f852272acb`; base `0x32bb8ff692a2f14c05fe7a5ae78271741bd392fc`; base `0x5c600527d2835f3021734504e53181e54fa48f73`; base `0x8d08ce52e217ad61deb96dfdcf416b901ca2dc22`; base `0xc884646e6c88d9b172a23051b38b0732cc3e35a6`; base `0xc8df827157adaf693fcb0c6f305610c28de739fd`; arbitrum `0x26d7d3728c6bb762a5043a1d0cef660988bca43c`; arbitrum `0x3bdd0d5c0c795b2bf076f5c8f177c58e42bec0e6`; arbitrum `0x749654601a286833ad30357246400d2933b1c89b`; arbitrum `0x77f69104145f94a81cec55747c7a0fc9cb7712c3`; arbitrum `0x80e58aea88bccaae19bca7f0e420c1387cc087fc`; arbitrum `0xa0a17b2a015c14be846c5d309d076379ccdfa543`; arbitrum `0xaf0408c1cc4b41cf878143423015937032878913`; arbitrum `0xe7b1ce8dfee3d7417397cd4f56dbfc0d49e43ed1`; arbitrum `0xeb5be62e6770137beaa0cc712741165c594f59d7`; arbitrum `0xfc01f273126b3d515e6ce6cab9e53d5c6990d6cb` | ✅ Audited |
| SetTokenCreator | token | ethereum | n/a | 5 deployments: ethereum [`0x2758bf6af0ec63f1710d3d7890e1c263a247b75e`](./contracts/ethereum-1/0x2758bf6af0ec63f1710d3d7890e1c263a247b75e/); ethereum `0x86a73e16d2dece40b378b6af645a93678214ef43`; polygon `0x2b44c227d95b8fda1c8750986d3adff0e67627f7`; polygon `0x2e45e774334d974beccab9ff6e21a1ecea82e9a3`; polygon `0xc8657a70236f19085e99428875045ce2cd83dbd8` | ✅ Audited |
| SetValuer | unknown | polygon | n/a | 5 deployments: ethereum `0xb647acd2f7e43c33b2d8b4e1042d352b63bb485b`; ethereum `0xddf4f0775ff69c73619a4dbb42ba61b0ac1f555f`; polygon [`0x48cf49701028cfbbce18a963c9134f7a86e71a22`](./contracts/polygon-137/0x48cf49701028cfbbce18a963c9134f7a86e71a22/); polygon `0x4e9290b32b817d42128ac13450848adbb7f24389`; polygon `0xdfcd0b065e828cec30d7918576b918eb47f29e46` | ✅ Audited |
| SignedSnapshotStakingPool | core_logic | ethereum | n/a | [`0xbe03026716a4d5e0992f22a3e6494b4f2809a9c6`](./contracts/ethereum-1/0xbe03026716a4d5e0992f22a3e6494b4f2809a9c6/) | ✅ Audited |
| StreamingFeeModule | unknown | ethereum | n/a | 6 deployments: ethereum [`0x08f866c74205617b6f3903ef481798eced10cdec`](./contracts/ethereum-1/0x08f866c74205617b6f3903ef481798eced10cdec/); ethereum `0x165edf07bb61904f47800e13f5120e64c4b9a186`; ethereum `0x3d8d14b7efb8e342189ee14c3d40dce005eb901b`; polygon `0x53f9f58c74866b759eadb78c4f90bb19892c373f`; polygon `0xc6955b85b622369a54cc8c6dbecb8e03c0885bd8`; polygon `0xcd79a0b9aeca0ece7ea59d14338ea330cb1cb2d7` | ✅ Audited |
| TargetWeightWrapExtension | unknown | ethereum | n/a | [`0xc9a8ae9f29c1e77bb05a8a4d3576998a9de56ff2`](./contracts/ethereum-1/0xc9a8ae9f29c1e77bb05a8a4d3576998a9de56ff2/) | ✅ Audited |
| TradeModule | unknown | ethereum | n/a | [`0x90f765f63e7dc5ae97d6c576bf693fb6af41c129`](./contracts/ethereum-1/0x90f765f63e7dc5ae97d6c576bf693fb6af41c129/) | ✅ Audited |
| WrapModuleV2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6604468512b3b85c58c4d818ccb69fba5bb7b809`](./contracts/ethereum-1/0x6604468512b3b85c58c4d818ccb69fba5bb7b809/); ethereum `0xbfe0f7b4f9537a25d7c498161d6f24b38699a075` | ✅ Audited |

### ⚠️ Verified + Unaudited (36)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AaveLeverageModule | unknown | ethereum | n/a | [`0x251bd1d42df1f153d86a5ba2305faade4d5f51dc`](./contracts/ethereum-1/0x251bd1d42df1f153d86a5ba2305faade4d5f51dc/) | ⚠️ Unaudited |
| AaveLeverageStrategyExtension | adapter | ethereum | n/a | [`0xe6484a64e2ea165943c734dc498070b5902cbc2b`](./contracts/ethereum-1/0xe6484a64e2ea165943c734dc498070b5902cbc2b/) | ⚠️ Unaudited |
| AaveV3LeverageModule | unknown | arbitrum | n/a | 3 deployments: ethereum `0x9d08cced85a68bf8a19374ed4b5753ae3be9f74f`; base `0xc06a6e4d9d5ff9d64bd19fc243ad9b6e5a672699`; arbitrum [`0x6d1b74e18064172d028c5ee7af5d0ccc26f2a4ae`](./contracts/arbitrum-42161/0x6d1b74e18064172d028c5ee7af5d0ccc26f2a4ae/) | ⚠️ Unaudited |
| AirdropExtension | unknown | ethereum | n/a | 6 deployments: ethereum [`0x07a578e02db4e1d518ee1856580c7ac0058c03c9`](./contracts/ethereum-1/0x07a578e02db4e1d518ee1856580c7ac0058c03c9/); ethereum `0x0fba2bc72038ce9b932fc299c21e53a886e59183`; ethereum `0x102829861cc9df5dc8c378f8041ab033d0655fa3`; ethereum `0x2cf29fca4273aa9706330626c9a2e1dca9cbcac1`; ethereum `0x63bf66227432f1eb46534118815045a1048cc0eb`; ethereum `0xea381e5b73cd416e577a36a498b3fa78dd21df5f` | ⚠️ Unaudited |
| AuctionRebalanceExtension | unknown | ethereum | n/a | 6 deployments: ethereum [`0x2b5990df9212de51c6f6ccd2d651e6ba5158d01b`](./contracts/ethereum-1/0x2b5990df9212de51c6f6ccd2d651e6ba5158d01b/); ethereum `0x418a29d6697dcfc1fb6fad99760639164cf2092b`; ethereum `0x94caea398acc5931b1d32c548959a160ac37ff4a`; ethereum `0xa985e65341ddfd302dadd3c9e58494d27809ba84`; ethereum `0xacce49759e2e98b44de01be2498537c37f2597dc`; ethereum `0xeafb437e9e27e63c0c21e19e6b9603999bd72d26` | ⚠️ Unaudited |
| BaseManagerV2 | governance | ethereum | n/a | 10 deployments: ethereum [`0x386034fa078ca1022865f41bdd7d016aae4db5a3`](./contracts/ethereum-1/0x386034fa078ca1022865f41bdd7d016aae4db5a3/); ethereum `0x3f74f91643305bb0cd237fb2a866383f4d573f5f`; ethereum `0x55569975f6994ca7fae5f190e1244adf1a50940b`; ethereum `0x688488844fc87ee09d32f9d9de6a20399b6bdace`; ethereum `0xa296286d585e59a04697b9ac0b60ef61a9098e2f`; ethereum `0xcd483f4225d6246758dc5bb78e832ec054918220`; ethereum `0xdfb1e595d16c253487f9580208a76d9ca322b895`; ethereum `0xe7736b5ea8433d6e741506920dcf84181a6b2e03`; ethereum `0xef754fc792d2dab75619bd7b9750fc8428585769`; ethereum `0xfdb765cb074fc95a80800dff07e5fe18c7fd89f3` | ⚠️ Unaudited |
| DelegatedManager | unknown | ethereum | n/a | [`0xb04d1dae75c0764e8ff5f835d2f0771101bee140`](./contracts/ethereum-1/0xb04d1dae75c0764e8ff5f835d2f0771101bee140/) | ⚠️ Unaudited |
| DelegatedManagerFactory | unknown | ethereum | n/a | [`0x38d8fa043913e8ef6466d01bef4af42cafa3b235`](./contracts/ethereum-1/0x38d8fa043913e8ef6466d01bef4af42cafa3b235/) | ⚠️ Unaudited |
| DEXAdapter | unknown | ethereum | n/a | 2 deployments: ethereum [`0x25a8803b9b611cc13d807829d73049cd803f6fca`](./contracts/ethereum-1/0x25a8803b9b611cc13d807829d73049cd803f6fca/); ethereum `0xb7cc88a13586d862b97a677990de14a122b74598` | ⚠️ Unaudited |
| DEXAdapter | adapter | ethereum | n/a | 5 deployments: ethereum [`0x3026eb2097468fcdc5387af73379948f8aa0a860`](./contracts/ethereum-1/0x3026eb2097468fcdc5387af73379948f8aa0a860/); ethereum `0x6408e1ba03914aa481051354a57e1aab0eed8044`; ethereum `0xc43ee8ca1721bc120b702d95467d3e02773f2eb9`; polygon `0x3b7547bafa28cc82e1548755cbaa1cb0e1f7b3cb`; polygon `0x8a64b86b50ef7e4562f2222725ea391de1efd31a` | ⚠️ Unaudited |
| DEXAdapterV2 | unknown | ethereum | n/a | [`0x88858930b3f1946a5c41a5ded7b5335431d5de8d`](./contracts/ethereum-1/0x88858930b3f1946a5c41a5ded7b5335431d5de8d/) | ⚠️ Unaudited |
| DEXAdapterV3 | unknown | ethereum | n/a | [`0x28764a27139d7241c9198c43720a0df1c18e50ef`](./contracts/ethereum-1/0x28764a27139d7241c9198c43720a0df1c18e50ef/) | ⚠️ Unaudited |
| ExchangeIssuanceIcEth | unknown | ethereum | n/a | 2 deployments: ethereum [`0x40e8e58052272496dcf42953cf7e699b522fe8a3`](./contracts/ethereum-1/0x40e8e58052272496dcf42953cf7e699b522fe8a3/); ethereum `0x945db358c69a4be68ab5b835f2f56af1ccf4e2d1` | ⚠️ Unaudited |
| ExchangeIssuanceLeveraged | unknown | polygon | n/a | 8 deployments: ethereum `0x2f2c59212d1d0468efa456fe51f49ed4a5538d64`; ethereum `0x981b21a2912a427f491f1e5b9bf9cca16fa794e1`; polygon [`0x2e785f33540b5fb6a820ca4bae975d6279fa8bb6`](./contracts/polygon-137/0x2e785f33540b5fb6a820ca4bae975d6279fa8bb6/); polygon `0x453420baa4d57dd10e0b386260a6845704d73425`; polygon `0x5631271895bc53f77ea8d3fa016d1c880cd690c7`; polygon `0x600d9950c6ecaef98cc42fa207e92397a6c43416`; polygon `0x783f299588ae89e9f44b230d6cd8e349fd01b16e`; polygon `0xe86636f23b502b8746a72a1ed87d65f096e419db` | ⚠️ Unaudited |
| ExchangeIssuanceZeroEx | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8760fcd90c82e1e95e55047b6b6a0f22dc07d7d1`](./contracts/ethereum-1/0x8760fcd90c82e1e95e55047b6b6a0f22dc07d7d1/); ethereum `0xf42ecdc112365ff79a745b4cf7d4c266bd6e4b25` | ⚠️ Unaudited |
| FeeSplitExtension | unknown | ethereum | n/a | 44 deployments: ethereum [`0x026aa079c4f9cff80b0521b64f8f2d8ccf135518`](./contracts/ethereum-1/0x026aa079c4f9cff80b0521b64f8f2d8ccf135518/); ethereum `0x04d58e7051e7f0ea4b01bb648d61f4a641b2c08b`; ethereum `0x0d5f4ca9f12b0b0829013c3c48fb1a9dd0ecdfca`; ethereum `0x0daf2df0102490de2d09bf064e0448b619077ffd`; ethereum `0x0e716b2a9ebdfd9c320af2fce575543d2fcc3d5f`; ethereum `0x1554a67f2e929678983c7a702b1599ff5f5070c9`; ethereum `0x1b7d68134ef476b7795b22a4d76f82c220c54e74`; ethereum `0x1d8e281fad631e0b4024448711a00ac57333d185`; ethereum `0x23aa81ce19043596b5bb55a34a8040b393990a8b`; ethereum `0x2573f27d12225f6d16ddf6ed5da2bfb28ecc28aa`; ethereum `0x5d647663a73ffc34a6ec2aa48e01524ccb39372c`; ethereum `0x5e568e47c52e8af9db47e52d0ae7c740f8f85bf1`; ethereum `0x623c7bd613bd03a4d28ba2d1bc28ecb8d76e7dee`; ethereum `0x7ec2ac6f32fc863942858a5257fbec3a67d6b41c`; ethereum `0x7febfc6b4d7323c56481885d69bc3e7092d299d0`; ethereum `0x83adeee88e970559d22af9ec8dc1a3bd540b4491`; ethereum `0x87a120fd11232b8c59714c40a62e962fa549e6ca`; ethereum `0x978177639ff156ea918a1075755b485951cd373c`; ethereum `0xa8a23b678e8b184f653ee8ee9dcbaa933c2cfaec`; ethereum `0xa9c13c061acaa58aa9691806dc6bcc5ae5f97bc3`; ethereum `0xab7eba33346873469edafd8d6416bb85f506b82e`; ethereum `0xac761f0289712151b9543f4511ba76fa434ab05a`; ethereum `0xafe68a642af7698a3ff3d70b0f73bedb78995814`; ethereum `0xb9a238b3f76409fa8fa2b646cc998b633ee51987`; ethereum `0xc62e39d1f5232f154b7ccd3c6234a9c893bf9563`; ethereum `0xcb63b902d4e0766d25e1ba0e7f1b1bf3f14bfdaf`; ethereum `0xd17300e6f0748952cad9492b51441ad5204775dd`; ethereum `0xd5a152a058ede7331b9ad3521bad03d4ccfd6bb9`; ethereum `0xe833c90f4d07650ac1d8a915c2c0fddbedc1ec3a`; ethereum `0xf1872a098afa193e6f1a4307c54624f28b8e8f51`; polygon `0x2ce6d7813ed783ffc7d811e435294221291b00e8`; polygon `0x460ef681713448c50392824317fc2d883b722812`; polygon `0x5295e18c27714da0cda79b8be9bdd08349a39fb0`; polygon `0x5e38f84bfdee7058c311c80fb79229d301efe121`; polygon `0x996d0a7d0fa43a9d911a051b53ef661f8260a487`; polygon `0xa08ad24577e74b850e1e8bea12a706f70fbbc022`; polygon `0xadfb2fbde79f579c617b8b03ce1bb7594495554e`; polygon `0xb994cfcd23047393530883ac8a004bd30c8a5164`; polygon `0xc6b3b4624941287bb7bdd8255302c1b337e42194`; polygon `0xd2463675a099101e36d85278494268261a66603a`; polygon `0xdeb6ab8d6e4696d7bd4c6eb4a5ea4f2470f74269`; polygon `0xe6484a64e2ea165943c734dc498070b5902cbc2b`; polygon `0xea381e5b73cd416e577a36a498b3fa78dd21df5f`; polygon `0xf8db5864b18522c78311dd0ca374cd01cf08e549` | ⚠️ Unaudited |
| FixedRebalanceExtension | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5f98cbb7ac52fa5ef3660b7ab34e03398b48efbb`](./contracts/ethereum-1/0x5f98cbb7ac52fa5ef3660b7ab34e03398b48efbb/); ethereum `0x9fe734a1f107b7d46d73b8c2383d688f5626ad84` | ⚠️ Unaudited |
| FlashMint4626 | unknown | ethereum | n/a | 2 deployments: ethereum [`0xe483701d4f8c3b9b7b662fee2543503d6d127f53`](./contracts/ethereum-1/0xe483701d4f8c3b9b7b662fee2543503d6d127f53/); ethereum `0xf5cf956018c111be7d5ce4240960c1164179aca9` | ⚠️ Unaudited |
| FlashMintDex | unknown | ethereum | n/a | [`0xcde2657a980a8e2b7c5957d30b2ac768cb6d277e`](./contracts/ethereum-1/0xcde2657a980a8e2b7c5957d30b2ac768cb6d277e/) | ⚠️ Unaudited |
| FlashMintHyETH | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1c19c605cb071e22a0a46bc9e24b5ce64a28d7ad`](./contracts/ethereum-1/0x1c19c605cb071e22a0a46bc9e24b5ce64a28d7ad/); ethereum `0xc290c371f5a36970aff00bbffdbfadd81820109a` | ⚠️ Unaudited |
| FlashMintHyETHV2 | unknown | ethereum | n/a | [`0x940ecb16416fe52856e8653b2958bfd556aa6a7e`](./contracts/ethereum-1/0x940ecb16416fe52856e8653b2958bfd556aa6a7e/) | ⚠️ Unaudited |
| FlashMintHyETHV3 | unknown | ethereum | n/a | [`0xcb1eea349f25288627f008c5e2a69b684bdddf49`](./contracts/ethereum-1/0xcb1eea349f25288627f008c5e2a69b684bdddf49/) | ⚠️ Unaudited |
| FlashMintLeveraged | unknown | ethereum | n/a | 5 deployments: ethereum [`0x45c00508c14601fd1c1e296eb3c0e3eeedca45d0`](./contracts/ethereum-1/0x45c00508c14601fd1c1e296eb3c0e3eeedca45d0/); ethereum `0x63bcc10ec90dd4cfe9a9931b5216cc7475bf863e`; ethereum `0x7663043ebe3f9f5e53cbf56f9f36fa5233ef055d`; ethereum `0x9d116b1f35f396df97bd7ba457d806de0f1d46ed`; ethereum `0xb4354ddfc4dda5b1244aa80caf210eeb6d96db48` | ⚠️ Unaudited |
| FlashMintNAV | unknown | ethereum | n/a | [`0x62f160391d2f1e3a176f32f51ade6ed8bb2ea1cf`](./contracts/ethereum-1/0x62f160391d2f1e3a176f32f51ade6ed8bb2ea1cf/) | ⚠️ Unaudited |
| FlashMintNotional | unknown | ethereum | n/a | [`0x9da9992b5d01bd0efb1ee8310e8011dc837bd476`](./contracts/ethereum-1/0x9da9992b5d01bd0efb1ee8310e8011dc837bd476/) | ⚠️ Unaudited |
| FlashMintWrapped | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5c0d0a9a0c3a0a5b591496ff894686893b69faa2`](./contracts/ethereum-1/0x5c0d0a9a0c3a0a5b591496ff894686893b69faa2/); ethereum `0x7dde626de8ce73229838b5c2f9a71bc7ac207801` | ⚠️ Unaudited |
| FlexibleLeverageStrategyExtension | unknown | ethereum | n/a | 4 deployments: ethereum [`0x097afae7b0e0ea0880c8dba7475c12a1f3d2911f`](./contracts/ethereum-1/0x097afae7b0e0ea0880c8dba7475c12a1f3d2911f/); ethereum `0x9ba41a2c5175d502ea52ff9a666f8a4fc00c00a1`; ethereum `0xc0584e2865b366975cf548960f7bba37c685c610`; ethereum `0xfd4ea597e8346a6723fa4a06a31e4b6f7f37e9ad` | ⚠️ Unaudited |
| FLIRebalanceViewer | unknown | ethereum | n/a | 4 deployments: ethereum [`0x14d9f0d529e80747b128ac2b145e4208e44e37eb`](./contracts/ethereum-1/0x14d9f0d529e80747b128ac2b145e4208e44e37eb/); ethereum `0x4632158a6f58b8eb2aa6f92428f23d7f6de763ee`; ethereum `0x517f76db91931d48cbbe5d8ce82d953e9490efa7`; ethereum `0x8f45177e4ca1f996bd6c830b7e06eb3308536217` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | arbitrum | n/a | 2 deployments: arbitrum [`0x19fa8783f2b57f3ec6c9542926a06698e30ef7b4`](./contracts/arbitrum-42161/0x19fa8783f2b57f3ec6c9542926a06698e30ef7b4/); arbitrum `0x40fb5267fd724a040b46ddce59f25e1229e61d32` | ⚠️ Unaudited |
| IntermediateMigrationExtension | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x9da195dbd9446c649b6cb6196d6cc460f277d907`](./contracts/ethereum-1/0x9da195dbd9446c649b6cb6196d6cc460f277d907/); ethereum `0xa02a2f8c20761a6cd886871716320b16011c7a5e` | ⚠️ Unaudited |
| MorphoLeverageModule | unknown | base | n/a | [`0x9534b6ec541ad182fbee2b0b01d1e4404765b8d7`](./contracts/base-8453/0x9534b6ec541ad182fbee2b0b01d1e4404765b8d7/) | ⚠️ Unaudited |
| OptimisticAuctionRebalanceExtensionV1 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4677f9eac72e10469949d73d8ef71883ce510732`](./contracts/ethereum-1/0x4677f9eac72e10469949d73d8ef71883ce510732/); ethereum `0xf0d343fd94ac44ef6b8baae8db3917d985c2cec7` | ⚠️ Unaudited |
| ProtocolViewer | unknown | ethereum | n/a | [`0x6b65c4760f56ea89a21193af5b909395766ef2e5`](./contracts/ethereum-1/0x6b65c4760f56ea89a21193af5b909395766ef2e5/) | ⚠️ Unaudited |
| PrtFeeSplitExtension | unknown | ethereum | n/a | [`0x43c3ef32e52f17777789c71002ef4a887df90613`](./contracts/ethereum-1/0x43c3ef32e52f17777789c71002ef4a887df90613/) | ⚠️ Unaudited |
| SupplyCapIssuanceHook | unknown | ethereum | n/a | 19 deployments: ethereum [`0x0110959c718f70fd2dc01e86566e694391c0e5c6`](./contracts/ethereum-1/0x0110959c718f70fd2dc01e86566e694391c0e5c6/); ethereum `0x053f2225588e62900f5f5fb4e786b9ca9553fa79`; ethereum `0x245290668ce324deed7cfc1bcf4355fd23bfebe0`; ethereum `0x2c2ab834316df4c457541e31a7767694481c98ec`; ethereum `0x30e9e62cfe57ccc061fbded1d19d119a1dee53a3`; ethereum `0x5bca85103206dcb3e223af21c1bdab0f3b830ee5`; ethereum `0x5f22e5b4e5a54f27e25065632f76bdf786c1cf67`; ethereum `0x64c8e65c133e5c261b56413f7339fa898f862d91`; ethereum `0x97d151597fbc7a8d7ca986cfce6568275bbcc691`; ethereum `0xa727a19991f03ac9928388428f6eb8416c029867`; ethereum `0xa8b29e5ca20a9d9df52ee07a8508357d47f7902d`; ethereum `0xb08089029305c4308f3d535241601e82752c69f5`; ethereum `0xba3bbba81a7aa3b222e2bfc657745582416aff29`; ethereum `0xbc29acdc888b471a1b09e1e7dcc7146471222cbf`; ethereum `0xca2754549cf7ca7b9613c90c98c1aad127a77220`; ethereum `0xd59fc21d2ad70d59749df78c1c286cbaa9152555`; ethereum `0xe2ea6b8390eb877838b38e9e4f25ca8c094cd1e6`; ethereum `0xec5a282b5f6d5678b743ae52c056ddb751cafd82`; ethereum `0xefc5ecd2c74b76594554ee6d352b79be86e06f83` | ⚠️ Unaudited |
| VariableDebtToken | token | ethereum | n/a | [`0xf63b34710400cad3e044cffdcab00a0f32e33ecf`](./contracts/ethereum-1/0xf63b34710400cad3e044cffdcab00a0f32e33ecf/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | ethereum | n/a | `0x0156aba855293a0190681835a9fdf714b884e5c2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x06da99d2d08d161d2ee6a4b8c1a9edf62966f012` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0e6020d067fb413574b70e9619a05c7a6f336b28` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x12951b9eaa200237f9080c95ad93cc74c9d9bd45` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1434f1eae027b0f30071e0b858449a522a5c4b25` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x14f0321be5e581abf9d5bc76260bf015dc04c53d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x17262024e84ed9097546ea762d94db7c0eb13b5d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x17efe2a497c7b173be4eb5bb8481c2dc741509fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x18648502df9b779414f0e0eb3f5febbe76b0a706` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x18b739aabc019d9ef160d44ba8a9dd6a717372af` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x19ab9578c7de2366591b6017f3037d15f8606992` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1d763b4e22423e48ed64d757835a15366bb9e4d0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1d8ab7f7a50b9354aed252652afdd0e286774c9a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1db929398958082d2080aa1b501e460503f60467` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1f6ee9ce38e6beeb968bb91f755998548d3165e0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x22d3f7e36479c30774d9e65584e654f335db2771` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x25c499e7306248c308cef403d9824110817b305c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x263c23f55cc122cac5473deeacafdd23f3ec1c05` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x26de330864059bae3fd054d52a42ed4792135b03` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x285c5bfe4729afbca8a8b6763047a5f471efb95e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2891782706d420448a5b13a85bf6bc1a1f44358c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x293dcc7c8350ce9f1283572ac89861f768158151` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2ba59efeb62171bc8fb8bfc2366a76689372937a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2c2c21865cca8f385798ee418cb6680a71ec9d00` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2f5076751b66f8f87ee2b34855edeb425f208d9a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3289670b6b43b71366e8fbe1579043b82f140010` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x365bebfe105884de616c0df7eea6aab10fa36861` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3700414bb6716fcd8b14344fb10ddd91fdea59ec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x38e5462bbe6a72f79606c1a0007468aa4334a92b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3d9da970fa85cb1fa9d405145d4c485224da045e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3e262dc5b9aa18d6a8236c11caa979f89473dc39` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3fec724934e17081a3640a167861efe7f41600a8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x46003167e93d8cd8e8d24cbed4998b7ceb9a4d19` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4689051f4246630deb7c1c4cfb2ffa25643d886c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4737ed26956cc0a927bbddc860103f559121046c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x48c985e823deb777e9fb86529a96c07081b4dad3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4c4c649455c6433dc48ff1571c9e50ac58f0cefa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4d21472bb1746544bad1adae30895e0b0f9e90ca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4f08eeeb7a79a1034983bae10812ee5116f520ee` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4f70287526ea9ba7e799d616ea86635cdaf0de4f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4fee5df498bb644a319312c2d4e3034cd44ee034` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x504e2230baace0974a61822d8f7ac255be3bf061` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x50711c5cea991d54d37a2384d22568734976d154` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x510cae9358b78371666a2c7b43c4ff5d88a919ff` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5188fc72a0a13b4576578ae216125604cfad4805` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5374e7a0f9e0ad299e094825a220354b6ca6c787` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5ecd8e3b059bc5a69e2d7a73c60bd4e9788972ff` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5efda1dbd6adcee04cf8bd6599af3d9b2c8fc85f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6169c62e1aae2d56a2dc184514e8b515ff6f1d9e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x616dad7a8e7de48c0b5c97586cbd9050e0a4ff54` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6462ff37b2ddcd66309d5374a09f254f3bd962a0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x653d466bb82c2bfbee5264d0b961f958acc93a36` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x65d103a810099193c892a23d6b320cf3b9e30d46` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x678292382356cd9c06bc21db9eca7025d0732f88` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x68022868a9d6ac2efb2bb669d9925cec732573ad` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6f76cfe52094f01f63adad8b9328474a98528742` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x71a254755922ec0846996cf1f75d8b83b9c5802a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x75fbbdeafe23a48c0736b2731b956b7a03adcfb2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x77116a79c218492cf52636f92aaef9f4c623fdd1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x79cfd6395be41482550005f145bf818ba64436a0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7b17dc1d0c63a011361506d251a092290b2718c3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7b4c75c989cb0ff4fd6c1387f72d2f6fb2d4002a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x818c639ca5f986115eacf77e58d4804de1dd5d40` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8440f6a2c42118bed0d6e6a89bf170ffd13e21c0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x85fa4e81c6b49066934d44ae5e02ca36decf6b77` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x864feac80fae179b6e2bb64b937bc55f3a574c17` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x89bfd87f8b056565f3306d5185f085aad9d17a41` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8d5cf870354fffae0586b639da6d4e4f6c659c69` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8ddf05faa5bd3d237eb3224601aa47dfa3195117` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8de07cb5ddcd90c0d8be93d3e2653d8c0b2a9abe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8ffc4f43a82a752917f4f95abe9a9b70a48924a1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x931a809658b677390c80a443415d16f4fcd37d1e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9378ad514c00e4869656ee27b634d852dd48fead` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9865f79bb187e81bccb8d3d10d314b9ae4e1ed3b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9a56e203e8566924a26ed0535c15db9816d9f778` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9cfe76a718ea75e3e8ce4fc7ad0fef84be70919b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9d2e0b9471168bb8060a28c1b32c1dc5aebd27ea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9daae54270c5a69bf0daf489fd242ecdff36ddf6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9e49d7f3fe6d61b2d702e71292fb41b060369aa7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9e9a0a9c030f3884486a76c169dfbf712bb097d1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa2619134b0851744d6e5052392400df73b24d7fc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa361f9f9905399f8193657ba026a4a11ccd8ca96` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa655795ddf6f816e1b493b195461d7042d3bbb25` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa71978db8333586c65be76ed559e7e51fc81ec66` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xadcfd8333ece5fce62d58e71d77c1064e36f5bfb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xadd948fd8ce465a0920bd3678e8b9ec86d00c79c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaee65691af05528f180c1f668976d6d4e0b7117c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb2aa8743633bfcb0bc6aecd6cc0aff96d961f218` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb2d113cd923b763bd4f2187233257da57f3f1ddb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb5f10043cae909fa718dec78be1d31513f495a2f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbcad60c7181f2d2fb74455a4dbc6e2ef8d67bf53` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc0aafee4b4edc54dd3aea0bf4dbe7bddde6365ca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc19a26a3d56d8f85324e45978f2f9e069642c1da` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc5d96411341d16c4bd16733500d6ab8c5421097e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc6e977741487dd8457397b185709cd89b0cf5e7e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc8dba7fd4bc23de9f160d2e46125f1fc0d2425d3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc914100c13f2333e637cf7a01b71e8e3fab7c118` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd04aabaded11e92fefcd92eedbbc81b184cdac82` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd50f2f5b46bdbc1941f06148030d312ca99d2487` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd629f4d7eaad237ebae7d92002946e1dec648348` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd7937c7cbe8be535d536f8bef0c301651e400852` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd88e4637d5dabcd033a37c3b56a739e992fdede8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdad75aca429911fe1904920904fcc074de3fdd15` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdd5825965a016d8bbbbdf4862a1ac9d3fb6d5382` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe7a8f86c3470a8826675fee8cadea95241c61478` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xedc75fe373850347c90c67abe8d6da3a9815d053` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf00ff2b76b017c16b3a96d22e73c47184d2a4ed7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf04ff1487bb27fa6a83f6276a55ae17eb8b3c581` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf2c421906fa01b211205c7c50a8dd304011846ae` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf3055e1e19b7f68420db8f1334bdbf25a0d7bd37` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf3be079f9768d05b40fb7fdb3955ce0e163d43be` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf8ba20d0307c1b07cdf31bdf6c1efad786e6b448` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0dc65c883fccc9cacb34650588c196ccc6d4e762` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x26cb12b8349e8611f214369ad62222e3d5f6eff7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x37e7c051dc5a24313ceec581222882648ba537aa` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x42bf8b14277bb77244e693f98f848e7594022310` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x773c465750080163e8b403f96c78059760b61f23` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x87e28b8aefb4af4b4b8b923d8cc353be778ab399` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9737c658272e66faad39d7ad337789ee6d54f500` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa849001cf7e3bd6c7c8c494e252d60411124ed38` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xafbd1f46aa2db385bb09e40e40c857bd2e755f92` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb8492421911e4b6ebf6e822805c581b80c4277cc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc132f90b763b5c47e47b87507f692f72ee8a4792` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf4df2449f0ba2fb1edb3aed0492a237de3f2c385` | ❓ Unverified |

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
| ethereum | [`0x07a578e02db4e1d518ee1856580c7ac0058c03c9`](./contracts/ethereum-1/0x07a578e02db4e1d518ee1856580c7ac0058c03c9/) | AirdropExtension | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2b5990df9212de51c6f6ccd2d651e6ba5158d01b`](./contracts/ethereum-1/0x2b5990df9212de51c6f6ccd2d651e6ba5158d01b/) | AuctionRebalanceExtension | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x386034fa078ca1022865f41bdd7d016aae4db5a3`](./contracts/ethereum-1/0x386034fa078ca1022865f41bdd7d016aae4db5a3/) | BaseManagerV2 | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb04d1dae75c0764e8ff5f835d2f0771101bee140`](./contracts/ethereum-1/0xb04d1dae75c0764e8ff5f835d2f0771101bee140/) | DelegatedManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x38d8fa043913e8ef6466d01bef4af42cafa3b235`](./contracts/ethereum-1/0x38d8fa043913e8ef6466d01bef4af42cafa3b235/) | DelegatedManagerFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x25a8803b9b611cc13d807829d73049cd803f6fca`](./contracts/ethereum-1/0x25a8803b9b611cc13d807829d73049cd803f6fca/) | DEXAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3026eb2097468fcdc5387af73379948f8aa0a860`](./contracts/ethereum-1/0x3026eb2097468fcdc5387af73379948f8aa0a860/) | DEXAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x88858930b3f1946a5c41a5ded7b5335431d5de8d`](./contracts/ethereum-1/0x88858930b3f1946a5c41a5ded7b5335431d5de8d/) | DEXAdapterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x28764a27139d7241c9198c43720a0df1c18e50ef`](./contracts/ethereum-1/0x28764a27139d7241c9198c43720a0df1c18e50ef/) | DEXAdapterV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x40e8e58052272496dcf42953cf7e699b522fe8a3`](./contracts/ethereum-1/0x40e8e58052272496dcf42953cf7e699b522fe8a3/) | ExchangeIssuanceIcEth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2e785f33540b5fb6a820ca4bae975d6279fa8bb6`](./contracts/polygon-137/0x2e785f33540b5fb6a820ca4bae975d6279fa8bb6/) | ExchangeIssuanceLeveraged | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8760fcd90c82e1e95e55047b6b6a0f22dc07d7d1`](./contracts/ethereum-1/0x8760fcd90c82e1e95e55047b6b6a0f22dc07d7d1/) | ExchangeIssuanceZeroEx | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x026aa079c4f9cff80b0521b64f8f2d8ccf135518`](./contracts/ethereum-1/0x026aa079c4f9cff80b0521b64f8f2d8ccf135518/) | FeeSplitExtension | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5f98cbb7ac52fa5ef3660b7ab34e03398b48efbb`](./contracts/ethereum-1/0x5f98cbb7ac52fa5ef3660b7ab34e03398b48efbb/) | FixedRebalanceExtension | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe483701d4f8c3b9b7b662fee2543503d6d127f53`](./contracts/ethereum-1/0xe483701d4f8c3b9b7b662fee2543503d6d127f53/) | FlashMint4626 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcde2657a980a8e2b7c5957d30b2ac768cb6d277e`](./contracts/ethereum-1/0xcde2657a980a8e2b7c5957d30b2ac768cb6d277e/) | FlashMintDex | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1c19c605cb071e22a0a46bc9e24b5ce64a28d7ad`](./contracts/ethereum-1/0x1c19c605cb071e22a0a46bc9e24b5ce64a28d7ad/) | FlashMintHyETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x940ecb16416fe52856e8653b2958bfd556aa6a7e`](./contracts/ethereum-1/0x940ecb16416fe52856e8653b2958bfd556aa6a7e/) | FlashMintHyETHV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcb1eea349f25288627f008c5e2a69b684bdddf49`](./contracts/ethereum-1/0xcb1eea349f25288627f008c5e2a69b684bdddf49/) | FlashMintHyETHV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x45c00508c14601fd1c1e296eb3c0e3eeedca45d0`](./contracts/ethereum-1/0x45c00508c14601fd1c1e296eb3c0e3eeedca45d0/) | FlashMintLeveraged | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x62f160391d2f1e3a176f32f51ade6ed8bb2ea1cf`](./contracts/ethereum-1/0x62f160391d2f1e3a176f32f51ade6ed8bb2ea1cf/) | FlashMintNAV | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9da9992b5d01bd0efb1ee8310e8011dc837bd476`](./contracts/ethereum-1/0x9da9992b5d01bd0efb1ee8310e8011dc837bd476/) | FlashMintNotional | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5c0d0a9a0c3a0a5b591496ff894686893b69faa2`](./contracts/ethereum-1/0x5c0d0a9a0c3a0a5b591496ff894686893b69faa2/) | FlashMintWrapped | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x097afae7b0e0ea0880c8dba7475c12a1f3d2911f`](./contracts/ethereum-1/0x097afae7b0e0ea0880c8dba7475c12a1f3d2911f/) | FlexibleLeverageStrategyExtension | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x14d9f0d529e80747b128ac2b145e4208e44e37eb`](./contracts/ethereum-1/0x14d9f0d529e80747b128ac2b145e4208e44e37eb/) | FLIRebalanceViewer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9da195dbd9446c649b6cb6196d6cc460f277d907`](./contracts/ethereum-1/0x9da195dbd9446c649b6cb6196d6cc460f277d907/) | IntermediateMigrationExtension | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4677f9eac72e10469949d73d8ef71883ce510732`](./contracts/ethereum-1/0x4677f9eac72e10469949d73d8ef71883ce510732/) | OptimisticAuctionRebalanceExtensionV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6b65c4760f56ea89a21193af5b909395766ef2e5`](./contracts/ethereum-1/0x6b65c4760f56ea89a21193af5b909395766ef2e5/) | ProtocolViewer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x43c3ef32e52f17777789c71002ef4a887df90613`](./contracts/ethereum-1/0x43c3ef32e52f17777789c71002ef4a887df90613/) | PrtFeeSplitExtension | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0110959c718f70fd2dc01e86566e694391c0e5c6`](./contracts/ethereum-1/0x0110959c718f70fd2dc01e86566e694391c0e5c6/) | SupplyCapIssuanceHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf63b34710400cad3e044cffdcab00a0f32e33ecf`](./contracts/ethereum-1/0xf63b34710400cad3e044cffdcab00a0f32e33ecf/) | VariableDebtToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
