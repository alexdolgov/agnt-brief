# Agentic Audit Brief: Set Protocol

## Project Overview

- Project: Set Protocol (`set-protocol`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:55.327Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-f007
- Chains: ethereum
- Contract surface: 248 unique implementations (326 raw deployments)
- DeFi Llama TVL: $8,913,031.23
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Indexes. Structurally: 128 project-authored contract(s) across 1 chain(s); 9 ERC20 tokens, 1 ERC721 NFT; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 10 common project-authored base contract(s) (baseextension, timelockupgrade, mutualupgrade). Dominant framework: openzeppelin.

## Fork Lineage

This project reuses audited code from **Index Coop** (`index-coop`) in the AaveLeverageStrategyExtension, CustomOracleNavIssuanceModule, DEXAdapter, SetToken, SignedSnapshotStakingPool subsystem.
7 audits inherited from `index-coop`, scoped to that subsystem.

Total inherited audits: 7. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Contract Surface Quality

- Indexed contracts: 521; live-surface contracts included: 326 (118 live, 208 unknown).
- Excluded by liveness: 195 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 6/39 (15.4%)
- Deployed-live implementations: 40 of 248 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 6/40
- Verified + Unaudited implementations: 34
- Verified by bytecode match: 0
- Unverified implementations: 208
- Unique implementations: 248
- Raw deployments: 326
- Audits discovered: 7 (0 direct, 7 inherited from forked code)
- Scoreable audits (matched contracts): 7
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/indexcoop/information))
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-09 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 4 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 5 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: 15.4% (Code4rena, Immunefi, OpenZeppelin)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Code4rena | Tier 1 | 6 | 15.0% | 2022-06 |
| Immunefi | Tier 1 | 6 | 15.0% | n/a |
| iosiro | Tier 2 | 6 | 15.0% | 2021-09 |
| OpenZeppelin | Tier 1 | 6 | 15.0% | n/a |
| unknown | Tier 2 | 6 | 15.0% | 2024-09 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CustomOracleNavIssuanceModule | unknown | ethereum | n/a | [`0x2344674b23ad076908fd2396373cfe9cd48a1ba3`](./contracts/ethereum-1/0x2344674b23ad076908fd2396373cfe9cd48a1ba3/) | ✅ Audited |
| DEXAdapter | unknown | ethereum | n/a | 2 deployments: ethereum [`0x25a8803b9b611cc13d807829d73049cd803f6fca`](./contracts/ethereum-1/0x25a8803b9b611cc13d807829d73049cd803f6fca/); ethereum `0xb7cc88a13586d862b97a677990de14a122b74598` | ✅ Audited |
| DEXAdapter | unknown | ethereum | n/a | 3 deployments: ethereum [`0x3026eb2097468fcdc5387af73379948f8aa0a860`](./contracts/ethereum-1/0x3026eb2097468fcdc5387af73379948f8aa0a860/); ethereum `0x6408e1ba03914aa481051354a57e1aab0eed8044`; ethereum `0xc43ee8ca1721bc120b702d95467d3e02773f2eb9` | ✅ Audited |
| SetToken | unknown | ethereum | n/a | 10 deployments: ethereum [`0x02ec0c9e6d3c08b8fb12fec51ccba048afbc36a6`](./contracts/ethereum-1/0x02ec0c9e6d3c08b8fb12fec51ccba048afbc36a6/); ethereum `0x0b498ff89709d3838a063f1dfa463091f9801c2b`; ethereum `0x1494ca1f11d487c2bbe4543e90080aeba4ba3c2b`; ethereum `0x48ccc6937c62609f20376901535e00980e3bbd0f`; ethereum `0x58222dd0a3d6de911b067b52c45f974d03163a4a`; ethereum `0x72e364f2abdc788b7e918bc238b21f109cd634d7`; ethereum `0x7c07f7abe10ce8e33dc6c5ad68fe033085256a84`; ethereum `0xaa6e8127831c9de45ae56bb1b0d4d4da6e5665bd`; ethereum `0xf860f90e1f55e3528682e18850612cbb45bbf1bc`; ethereum `0xfa10e13fe555760a5297dc14eb6562a1a53e4e37` | ✅ Audited |
| SetTokenCreator | unknown | ethereum | n/a | 3 deployments: ethereum [`0x2758bf6af0ec63f1710d3d7890e1c263a247b75e`](./contracts/ethereum-1/0x2758bf6af0ec63f1710d3d7890e1c263a247b75e/); ethereum `0x86a73e16d2dece40b378b6af645a93678214ef43`; ethereum `0xef72d3278dc3eba6dc2614965308d1435ffd748a` | ✅ Audited |
| SignedSnapshotStakingPool | unknown | ethereum | n/a | 4 deployments: ethereum [`0x2881cc01aad96c70319f308906d49c3784112e0d`](./contracts/ethereum-1/0x2881cc01aad96c70319f308906d49c3784112e0d/); ethereum `0x3329efe11a11f63ad2cae877df640e377024cd42`; ethereum `0x52ceedd6d765e69c6ec20321aa49956872913886`; ethereum `0xbe03026716a4d5e0992f22a3e6494b4f2809a9c6` | ✅ Audited |

### ⚠️ Verified + Unaudited (34)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AaveLeverageModule | unknown | ethereum | n/a | [`0x251bd1d42df1f153d86a5ba2305faade4d5f51dc`](./contracts/ethereum-1/0x251bd1d42df1f153d86a5ba2305faade4d5f51dc/) | ⚠️ Unaudited |
| AirdropExtension | unknown | ethereum | n/a | 6 deployments: ethereum [`0x07a578e02db4e1d518ee1856580c7ac0058c03c9`](./contracts/ethereum-1/0x07a578e02db4e1d518ee1856580c7ac0058c03c9/); ethereum `0x0fba2bc72038ce9b932fc299c21e53a886e59183`; ethereum `0x102829861cc9df5dc8c378f8041ab033d0655fa3`; ethereum `0x2cf29fca4273aa9706330626c9a2e1dca9cbcac1`; ethereum `0x63bf66227432f1eb46534118815045a1048cc0eb`; ethereum `0xea381e5b73cd416e577a36a498b3fa78dd21df5f` | ⚠️ Unaudited |
| AuctionRebalanceExtension | unknown | ethereum | n/a | 6 deployments: ethereum [`0x2b5990df9212de51c6f6ccd2d651e6ba5158d01b`](./contracts/ethereum-1/0x2b5990df9212de51c6f6ccd2d651e6ba5158d01b/); ethereum `0x418a29d6697dcfc1fb6fad99760639164cf2092b`; ethereum `0x94caea398acc5931b1d32c548959a160ac37ff4a`; ethereum `0xa985e65341ddfd302dadd3c9e58494d27809ba84`; ethereum `0xacce49759e2e98b44de01be2498537c37f2597dc`; ethereum `0xeafb437e9e27e63c0c21e19e6b9603999bd72d26` | ⚠️ Unaudited |
| BasicIssuanceModule | unknown | ethereum | n/a | [`0xd8ef3cace8b4907117a45b0b125c68560532f94d`](./contracts/ethereum-1/0xd8ef3cace8b4907117a45b0b125c68560532f94d/) | ⚠️ Unaudited |
| Core | unknown | ethereum | n/a | [`0xf55186cc537e7067ea616f2aae007b4427a120c8`](./contracts/ethereum-1/0xf55186cc537e7067ea616f2aae007b4427a120c8/) | ⚠️ Unaudited |
| DebtIssuanceModule | unknown | ethereum | n/a | [`0x39f024d621367c044bace2bf0fb15fb3612ecb92`](./contracts/ethereum-1/0x39f024d621367c044bace2bf0fb15fb3612ecb92/) | ⚠️ Unaudited |
| DebtIssuanceModuleV2 | unknown | ethereum | n/a | 4 deployments: ethereum [`0x04b59f9f09750c044d7cfbc177561e409085f0f3`](./contracts/ethereum-1/0x04b59f9f09750c044d7cfbc177561e409085f0f3/); ethereum `0x515a09825228cf6c68a35fe9275fa38add58381c`; ethereum `0x69a592d2129415a4a1d1b1e309c17051b7f28d57`; ethereum `0xa0a98eb7af028be00d04e46e1316808a62a8fd59` | ⚠️ Unaudited |
| DebtIssuanceModuleV3 | unknown | ethereum | n/a | [`0x86b7c605c03b9bbb0f6a25fbbb63baf15d875193`](./contracts/ethereum-1/0x86b7c605c03b9bbb0f6a25fbbb63baf15d875193/) | ⚠️ Unaudited |
| DelegatedManager | unknown | ethereum | n/a | [`0xb04d1dae75c0764e8ff5f835d2f0771101bee140`](./contracts/ethereum-1/0xb04d1dae75c0764e8ff5f835d2f0771101bee140/) | ⚠️ Unaudited |
| DelegatedManagerFactory | unknown | ethereum | n/a | [`0x38d8fa043913e8ef6466d01bef4af42cafa3b235`](./contracts/ethereum-1/0x38d8fa043913e8ef6466d01bef4af42cafa3b235/) | ⚠️ Unaudited |
| DEXAdapterV2 | unknown | ethereum | n/a | [`0x88858930b3f1946a5c41a5ded7b5335431d5de8d`](./contracts/ethereum-1/0x88858930b3f1946a5c41a5ded7b5335431d5de8d/) | ⚠️ Unaudited |
| DEXAdapterV3 | unknown | ethereum | n/a | [`0x28764a27139d7241c9198c43720a0df1c18e50ef`](./contracts/ethereum-1/0x28764a27139d7241c9198c43720a0df1c18e50ef/) | ⚠️ Unaudited |
| ExchangeIssuanceIcEth | unknown | ethereum | n/a | 2 deployments: ethereum [`0x40e8e58052272496dcf42953cf7e699b522fe8a3`](./contracts/ethereum-1/0x40e8e58052272496dcf42953cf7e699b522fe8a3/); ethereum `0x945db358c69a4be68ab5b835f2f56af1ccf4e2d1` | ⚠️ Unaudited |
| ExchangeIssuanceLeveraged | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2f2c59212d1d0468efa456fe51f49ed4a5538d64`](./contracts/ethereum-1/0x2f2c59212d1d0468efa456fe51f49ed4a5538d64/); ethereum `0x981b21a2912a427f491f1e5b9bf9cca16fa794e1` | ⚠️ Unaudited |
| ExchangeIssuanceZeroEx | unknown | ethereum | n/a | [`0xf42ecdc112365ff79a745b4cf7d4c266bd6e4b25`](./contracts/ethereum-1/0xf42ecdc112365ff79a745b4cf7d4c266bd6e4b25/) | ⚠️ Unaudited |
| FeeSplitExtension | unknown | ethereum | n/a | 30 deployments: ethereum [`0x026aa079c4f9cff80b0521b64f8f2d8ccf135518`](./contracts/ethereum-1/0x026aa079c4f9cff80b0521b64f8f2d8ccf135518/); ethereum `0x04d58e7051e7f0ea4b01bb648d61f4a641b2c08b`; ethereum `0x0d5f4ca9f12b0b0829013c3c48fb1a9dd0ecdfca`; ethereum `0x0daf2df0102490de2d09bf064e0448b619077ffd`; ethereum `0x0e716b2a9ebdfd9c320af2fce575543d2fcc3d5f`; ethereum `0x1554a67f2e929678983c7a702b1599ff5f5070c9`; ethereum `0x1b7d68134ef476b7795b22a4d76f82c220c54e74`; ethereum `0x1d8e281fad631e0b4024448711a00ac57333d185`; ethereum `0x23aa81ce19043596b5bb55a34a8040b393990a8b`; ethereum `0x2573f27d12225f6d16ddf6ed5da2bfb28ecc28aa`; ethereum `0x5d647663a73ffc34a6ec2aa48e01524ccb39372c`; ethereum `0x5e568e47c52e8af9db47e52d0ae7c740f8f85bf1`; ethereum `0x623c7bd613bd03a4d28ba2d1bc28ecb8d76e7dee`; ethereum `0x7ec2ac6f32fc863942858a5257fbec3a67d6b41c`; ethereum `0x7febfc6b4d7323c56481885d69bc3e7092d299d0`; ethereum `0x83adeee88e970559d22af9ec8dc1a3bd540b4491`; ethereum `0x87a120fd11232b8c59714c40a62e962fa549e6ca`; ethereum `0x978177639ff156ea918a1075755b485951cd373c`; ethereum `0xa8a23b678e8b184f653ee8ee9dcbaa933c2cfaec`; ethereum `0xa9c13c061acaa58aa9691806dc6bcc5ae5f97bc3`; ethereum `0xab7eba33346873469edafd8d6416bb85f506b82e`; ethereum `0xac761f0289712151b9543f4511ba76fa434ab05a`; ethereum `0xafe68a642af7698a3ff3d70b0f73bedb78995814`; ethereum `0xb9a238b3f76409fa8fa2b646cc998b633ee51987`; ethereum `0xc62e39d1f5232f154b7ccd3c6234a9c893bf9563`; ethereum `0xcb63b902d4e0766d25e1ba0e7f1b1bf3f14bfdaf`; ethereum `0xd17300e6f0748952cad9492b51441ad5204775dd`; ethereum `0xd5a152a058ede7331b9ad3521bad03d4ccfd6bb9`; ethereum `0xe833c90f4d07650ac1d8a915c2c0fddbedc1ec3a`; ethereum `0xf1872a098afa193e6f1a4307c54624f28b8e8f51` | ⚠️ Unaudited |
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
| OptimisticAuctionRebalanceExtensionV1 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4677f9eac72e10469949d73d8ef71883ce510732`](./contracts/ethereum-1/0x4677f9eac72e10469949d73d8ef71883ce510732/); ethereum `0xf0d343fd94ac44ef6b8baae8db3917d985c2cec7` | ⚠️ Unaudited |
| ProtocolViewer | unknown | ethereum | n/a | [`0x6b65c4760f56ea89a21193af5b909395766ef2e5`](./contracts/ethereum-1/0x6b65c4760f56ea89a21193af5b909395766ef2e5/) | ⚠️ Unaudited |
| PrtFeeSplitExtension | unknown | ethereum | n/a | [`0x43c3ef32e52f17777789c71002ef4a887df90613`](./contracts/ethereum-1/0x43c3ef32e52f17777789c71002ef4a887df90613/) | ⚠️ Unaudited |
| StreamingFeeModule | unknown | ethereum | n/a | 3 deployments: ethereum [`0x08f866c74205617b6f3903ef481798eced10cdec`](./contracts/ethereum-1/0x08f866c74205617b6f3903ef481798eced10cdec/); ethereum `0x165edf07bb61904f47800e13f5120e64c4b9a186`; ethereum `0x3d8d14b7efb8e342189ee14c3d40dce005eb901b` | ⚠️ Unaudited |
| TradeModule | unknown | ethereum | n/a | [`0x90f765f63e7dc5ae97d6c576bf693fb6af41c129`](./contracts/ethereum-1/0x90f765f63e7dc5ae97d6c576bf693fb6af41c129/) | ⚠️ Unaudited |
| Vault | core_logic | ethereum | n/a | [`0x5b67871c3a857de81a1ca0f9f7945e5670d986dc`](./contracts/ethereum-1/0x5b67871c3a857de81a1ca0f9f7945e5670d986dc/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (208)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x0156aba855293a0190681835a9fdf714b884e5c2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x045f019a6d5d6e2e59bd11da4d00595d8d621fc3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x04fbed8e5d187936780f30d15b3923089e2c724c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x056ec1dff1fd3468d38f12a15ae04043efa8c537` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x06da99d2d08d161d2ee6a4b8c1a9edf62966f012` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0892e4fe5b3086d03a522e453bdcd194c4719c42` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0da425cb894d2851b04aac082bbd65bb9a66b488` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0e6020d067fb413574b70e9619a05c7a6f336b28` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x12472d1c1598e1d86111c9471c00eaa3d571fc12` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x12951b9eaa200237f9080c95ad93cc74c9d9bd45` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x12dfc577544d002c57fbb02c389511a37bc4490c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1434f1eae027b0f30071e0b858449a522a5c4b25` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x14f0321be5e581abf9d5bc76260bf015dc04c53d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x17262024e84ed9097546ea762d94db7c0eb13b5d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x17efe2a497c7b173be4eb5bb8481c2dc741509fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x18648502df9b779414f0e0eb3f5febbe76b0a706` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x18b739aabc019d9ef160d44ba8a9dd6a717372af` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x19ab9578c7de2366591b6017f3037d15f8606992` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x19c6d158c816f647e5531d888fbca445aa651aac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1d763b4e22423e48ed64d757835a15366bb9e4d0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1d8ab7f7a50b9354aed252652afdd0e286774c9a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1db929398958082d2080aa1b501e460503f60467` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1e43c2b36b22b8c8bf1dc0812c65e35fdb6d4dd0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1e7c93a85c42fcddc538390875b22e4ffb3ee4f7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1f6ee9ce38e6beeb968bb91f755998548d3165e0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1fa77d5459ad227490a2b068328503a69e2cc91c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2020a4b6d7388dfb5863bce42068d15aea405ce7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x20fc9b698e67dc13a10626bdae54d7dc15bf9e53` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x22d3f7e36479c30774d9e65584e654f335db2771` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x25c499e7306248c308cef403d9824110817b305c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x263c23f55cc122cac5473deeacafdd23f3ec1c05` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x26de330864059bae3fd054d52a42ed4792135b03` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x285c5bfe4729afbca8a8b6763047a5f471efb95e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2891782706d420448a5b13a85bf6bc1a1f44358c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x290e2051a46556ba9778d19dfcdf2a821a26167c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x293dcc7c8350ce9f1283572ac89861f768158151` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2ba59efeb62171bc8fb8bfc2366a76689372937a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2c2c21865cca8f385798ee418cb6680a71ec9d00` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2d4b48bfeed40a09cac368e68cdfb72ea7f5ed51` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2e309c9ee10f0bae4c655087db9aba01a450de21` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2ea9bada1745b9fe6002008905452fc3677e9830` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2f5076751b66f8f87ee2b34855edeb425f208d9a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x323f6f0ba69e0509450b7e6e07edcd1f477393cd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3289670b6b43b71366e8fbe1579043b82f140010` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x33fa3f2cdd7323b4d93a995b741d1058ad44563e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x365bebfe105884de616c0df7eea6aab10fa36861` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3700414bb6716fcd8b14344fb10ddd91fdea59ec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x38e5462bbe6a72f79606c1a0007468aa4334a92b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x39f920b2e229471ea6ef6a619cb21e910885f244` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3ac81153ae6a096eaea0990fa0366914c425ef85` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3b71dc493c35b8e9c6095f3be56333b770784cc9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3bec878f77869a9af82a56709a7e8c4f78861e84` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3d5f04a013834bf2ed9ebca4a916a4add3dfd299` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3d9da970fa85cb1fa9d405145d4c485224da045e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3e262dc5b9aa18d6a8236c11caa979f89473dc39` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3fec724934e17081a3640a167861efe7f41600a8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x422405fc53e60cd679531330cea7b0952f929e44` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4227900aa98fc2a74f7a560342e011df25189775` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x42c2255310049adce054fc7fa92d06cfcd148019` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x46003167e93d8cd8e8d24cbed4998b7ceb9a4d19` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4689051f4246630deb7c1c4cfb2ffa25643d886c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4737ed26956cc0a927bbddc860103f559121046c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x47ef271142e04a28ef8c00edbf81c1b03ce09ffd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x48c985e823deb777e9fb86529a96c07081b4dad3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4a4dff5e12c2422261ebf0042ed57b02b5bdc621` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4c4c649455c6433dc48ff1571c9e50ac58f0cefa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4c5e0cabaa6b376d565cf2be865a03f43e361770` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4d21472bb1746544bad1adae30895e0b0f9e90ca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4f08eeeb7a79a1034983bae10812ee5116f520ee` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4f70287526ea9ba7e799d616ea86635cdaf0de4f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4fee5df498bb644a319312c2d4e3034cd44ee034` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x504e2230baace0974a61822d8f7ac255be3bf061` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x50711c5cea991d54d37a2384d22568734976d154` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x510cae9358b78371666a2c7b43c4ff5d88a919ff` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5188fc72a0a13b4576578ae216125604cfad4805` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5374e7a0f9e0ad299e094825a220354b6ca6c787` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x558eb5bf364648eaf288317a8a2e69fb6f0d581c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x56413b25a29185e8f5ef240009dc33f82aaf1008` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x595f8dab94b9c718cbf5c693cd539fd00b286d3d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5a1e0fd3fc829e893d4a158cc32ae68b0c0b92c2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5e64f5b1b1a0d7e40878a0a5a96f1f3293486ca4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5ecd8e3b059bc5a69e2d7a73c60bd4e9788972ff` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5efda1dbd6adcee04cf8bd6599af3d9b2c8fc85f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x60ca2b6257e86c229f6706fd4256529bef522fc3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6169c62e1aae2d56a2dc184514e8b515ff6f1d9e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x616dad7a8e7de48c0b5c97586cbd9050e0a4ff54` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6462ff37b2ddcd66309d5374a09f254f3bd962a0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x653d466bb82c2bfbee5264d0b961f958acc93a36` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x65d103a810099193c892a23d6b320cf3b9e30d46` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x678292382356cd9c06bc21db9eca7025d0732f88` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x68022868a9d6ac2efb2bb669d9925cec732573ad` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6804c793c0f088beabcc2342e9afce347a330a28` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x68fb1f79be74cf1b22889eb06d724caee35034b5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6d9e200ba3d14143c543598e2298211c569912c3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6f76cfe52094f01f63adad8b9328474a98528742` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x706c76369831279cce7a13d454719794b6d8cb74` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x71a254755922ec0846996cf1f75d8b83b9c5802a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x72a9447cfc775b4ec0ac59a9bcc00c57b282d285` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x75fbbdeafe23a48c0736b2731b956b7a03adcfb2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x77116a79c218492cf52636f92aaef9f4c623fdd1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7734df8597ace4981a7302321edf85953b198075` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x79cfd6395be41482550005f145bf818ba64436a0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7b17dc1d0c63a011361506d251a092290b2718c3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7b4c75c989cb0ff4fd6c1387f72d2f6fb2d4002a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7b651c24223313e1c8b223d78e78f884be56ccfb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7b79f41c55ef8f50e15a3857e056e48310396b73` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8051956fda21989050b1b2263b3cd5b227385950` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x815e828c1559d9dd0cb6fa348138adcdb06526b8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x818c639ca5f986115eacf77e58d4804de1dd5d40` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8440f6a2c42118bed0d6e6a89bf170ffd13e21c0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x85fa4e81c6b49066934d44ae5e02ca36decf6b77` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x864feac80fae179b6e2bb64b937bc55f3a574c17` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x88b2cb5bed3d16922d7ae72202875423433d3faf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x896c7a6dd2285aa6a4fbe6ecbfc40b1d68930ac0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x89829a427464a16f0727ed299193c326ed454eba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x89bfd87f8b056565f3306d5185f085aad9d17a41` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x89c7147265394250fd3149ef467a835f36275fa8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8a0184052fffeb451803e0ffacdd3620a723eb69` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8a0b06196816fc98569bb62b02f922a0b9badb52` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8ced7eef739ffcf7871ef97abe5316d9caba9614` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8d5cf870354fffae0586b639da6d4e4f6c659c69` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8ddf05faa5bd3d237eb3224601aa47dfa3195117` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8de07cb5ddcd90c0d8be93d3e2653d8c0b2a9abe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8e32dbee66d551c7c296183337adede53a276783` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8ffc4f43a82a752917f4f95abe9a9b70a48924a1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x900fd05cef99e201328b95d3befcae39cf4ab506` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x91866a6f55bee51062f13e73e9a04425a159e4b8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x91fbdc0741d6055f62ba481921df25136531d2a2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x925ffed5725ed7640423cd1a9e219acc6ddd8b24` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x931a809658b677390c80a443415d16f4fcd37d1e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9378ad514c00e4869656ee27b634d852dd48fead` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9524648cc47481a62610fb080e4f095758222976` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x95b485ee198dae34da070861838c15727be1f9a2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x970694e440f86e3470776ecb55c5665c5283f319` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x97b4d7834b34aa2a8df68a4efe9f6660eab2f614` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9865f79bb187e81bccb8d3d10d314b9ae4e1ed3b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9a56e203e8566924a26ed0535c15db9816d9f778` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9cfe76a718ea75e3e8ce4fc7ad0fef84be70919b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9d2e0b9471168bb8060a28c1b32c1dc5aebd27ea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9d411aa61a951373ddb4c5c20c91cd0567496ded` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9daae54270c5a69bf0daf489fd242ecdff36ddf6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9e39518df5186274f6a604d18e74514f01b6043e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9e49d7f3fe6d61b2d702e71292fb41b060369aa7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9e9a0a9c030f3884486a76c169dfbf712bb097d1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9f30fb550cfd5581c1ff0d164533c1b26e9fd0d6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa0e3d1d97da958b478db637ac34fbe4d5222e7ad` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa1821db5b5ce43693bc52f0fc65827aa8adb9690` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa245c6e3ef54d9aa125f97900edb850eb52de355` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa2619134b0851744d6e5052392400df73b24d7fc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa2bb0b46960f24c9720f56639e08ad6c0e101c61` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa32a06130533b85d00838312aacfed74eb78439a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa361f9f9905399f8193657ba026a4a11ccd8ca96` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa655795ddf6f816e1b493b195461d7042d3bbb25` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa71978db8333586c65be76ed559e7e51fc81ec66` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa8a8957bc5bfba5cce0a575ad0baafde6ef1ddb8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xabe13798b5db637b044cbfdb24534d1d43608994` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xad2d61aaac4697af3b5e9f94bb6989b7707ac5ff` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xadcfd8333ece5fce62d58e71d77c1064e36f5bfb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xadd948fd8ce465a0920bd3678e8b9ec86d00c79c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaee65691af05528f180c1f668976d6d4e0b7117c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xafcb6e603a86be603f72f2a5bb4905d23356b24b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb2aa8743633bfcb0bc6aecd6cc0aff96d961f218` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb2d113cd923b763bd4f2187233257da57f3f1ddb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb4b3a9610b9842155b05018d7068f97703df8fb6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb50f3fdb6480e12603a9de68f549ac43f039c259` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb5f10043cae909fa718dec78be1d31513f495a2f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xba1ba9f6500c1437730bcdf0400cc83f1a28d16d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbafb2fea7c1188d8fbab070196d0ab77a131c71c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbb570b0bce4b9396f6d3add348594d739468f12c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbc006ed0402d86079b75ddcfa40df35d536e6770` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbcad60c7181f2d2fb74455a4dbc6e2ef8d67bf53` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc0aafee4b4edc54dd3aea0bf4dbe7bddde6365ca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc1209271d1021c31dfe5f7ff8cf3a1361674ebab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc19a26a3d56d8f85324e45978f2f9e069642c1da` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc360e68541341abd98856dfaefa384917d754d1e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc488e1df061e629c98eb4472340f7966635bb588` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc4d32a6ceccb24bc729013ec391c18df30f83af1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc5d96411341d16c4bd16733500d6ab8c5421097e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc6e977741487dd8457397b185709cd89b0cf5e7e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc7e2bfb7e6ac61400304734890f125c0c31e6256` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc8dba7fd4bc23de9f160d2e46125f1fc0d2425d3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc914100c13f2333e637cf7a01b71e8e3fab7c118` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xce0348b9ea723966b8f698a0bd79d89138fb6153` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd04aabaded11e92fefcd92eedbbc81b184cdac82` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd07f5af2bd27c8795d2bdfbd74c27f8682ae197f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd50f2f5b46bdbc1941f06148030d312ca99d2487` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd629f4d7eaad237ebae7d92002946e1dec648348` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd7937c7cbe8be535d536f8bef0c301651e400852` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd85af84c22b71bdaa25333a7898ddc6f2f1088eb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd88e4637d5dabcd033a37c3b56a739e992fdede8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdad75aca429911fe1904920904fcc074de3fdd15` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdc733ec262f32882f7c05525cc2d09f2c04d86ac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdd5825965a016d8bbbbdf4862a1ac9d3fb6d5382` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe66364d965d0d17e9ad70fcb19b868015712dae6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe7a8f86c3470a8826675fee8cadea95241c61478` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe7e6ac0f1894fb0f341ef76dcf6248d6ca8e4c0f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xea01d1580fec2e83c7ee602e1fa926463bfde7d0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xedc75fe373850347c90c67abe8d6da3a9815d053` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeebaba65769084d176d1ff6fd6e6be3f8e9a63b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf00ff2b76b017c16b3a96d22e73c47184d2a4ed7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf04ff1487bb27fa6a83f6276a55ae17eb8b3c581` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf2c421906fa01b211205c7c50a8dd304011846ae` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf3055e1e19b7f68420db8f1334bdbf25a0d7bd37` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf3be079f9768d05b40fb7fdb3955ce0e163d43be` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf5f8d1d6bd55bf9c301f13a603ada0409cb68f0f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf8ba20d0307c1b07cdf31bdf6c1efad786e6b448` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf8f9a27b752fcff0b119318453ca1880cc9ece56` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfff8d0c92169c53ead06119fb0aeb3bccfbbbd4a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [IndexIcUSDAuditReport.md](https://github.com/IndexCoop/audits/blob/main/audits/IndexIcUSDAuditReport.md) | unknown | Audit | 2024-09 | aging | Inherited from Index Coop — forked code, scoped to AaveLeverageStrategyExtension, CustomOracleNavIssuanceModule, DEXAdapter, SetToken, +1 more | inherited | 22 | n/a |
| [IndexPRTAuditReport.md](https://github.com/IndexCoop/audits/blob/main/audits/IndexPRTAuditReport.md) | unknown | Audit | 2024-07 | stale | Inherited from Index Coop — forked code, scoped to AaveLeverageStrategyExtension, CustomOracleNavIssuanceModule, DEXAdapter, SetToken, +1 more | inherited | 22 | n/a |
| [IndexDIMv3AuditReport.md](https://github.com/IndexCoop/audits/blob/main/audits/IndexDIMv3AuditReport.md) | unknown | Audit | 2024-05 | stale | Inherited from Index Coop — forked code, scoped to AaveLeverageStrategyExtension, CustomOracleNavIssuanceModule, DEXAdapter, SetToken, +1 more | inherited | 22 | n/a |
| [code4rena.com/reports/2022-06-notional-coop](https://code4rena.com/reports/2022-06-notional-coop) | Code4rena | Contest | 2022-06 | stale | Inherited from Index Coop — forked code, scoped to AaveLeverageStrategyExtension, CustomOracleNavIssuanceModule, DEXAdapter, SetToken, +1 more | inherited | 22 | n/a |
| [8a96ae7b9746ba8394dc6c16202a6b64 (GitHub directory)](https://gist.github.com/bernard-wagner/8a96ae7b9746ba8394dc6c16202a6b64) | iosiro | Audit | 2021-09 | stale | Inherited from Index Coop — forked code, scoped to AaveLeverageStrategyExtension, CustomOracleNavIssuanceModule, DEXAdapter, SetToken, +1 more | inherited | 22 | n/a |
| [immunefi.com/bug-bounty/indexcoop/information](https://immunefi.com/bug-bounty/indexcoop/information) | Immunefi | Bug Bounty | Ongoing | n/a | Inherited from Index Coop — forked code, scoped to AaveLeverageStrategyExtension, CustomOracleNavIssuanceModule, DEXAdapter, SetToken, +1 more | n/a | n/a | n/a |
| [www.openzeppelin.com/news/set-protocol-audit](https://www.openzeppelin.com/news/set-protocol-audit) | OpenZeppelin | Audit | n/a | unknown | Inherited from Index Coop — forked code, scoped to AaveLeverageStrategyExtension, CustomOracleNavIssuanceModule, DEXAdapter, SetToken, +1 more | inherited | 22 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x07a578e02db4e1d518ee1856580c7ac0058c03c9`](./contracts/ethereum-1/0x07a578e02db4e1d518ee1856580c7ac0058c03c9/) | AirdropExtension | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2b5990df9212de51c6f6ccd2d651e6ba5158d01b`](./contracts/ethereum-1/0x2b5990df9212de51c6f6ccd2d651e6ba5158d01b/) | AuctionRebalanceExtension | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd8ef3cace8b4907117a45b0b125c68560532f94d`](./contracts/ethereum-1/0xd8ef3cace8b4907117a45b0b125c68560532f94d/) | BasicIssuanceModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf55186cc537e7067ea616f2aae007b4427a120c8`](./contracts/ethereum-1/0xf55186cc537e7067ea616f2aae007b4427a120c8/) | Core | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x39f024d621367c044bace2bf0fb15fb3612ecb92`](./contracts/ethereum-1/0x39f024d621367c044bace2bf0fb15fb3612ecb92/) | DebtIssuanceModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04b59f9f09750c044d7cfbc177561e409085f0f3`](./contracts/ethereum-1/0x04b59f9f09750c044d7cfbc177561e409085f0f3/) | DebtIssuanceModuleV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x86b7c605c03b9bbb0f6a25fbbb63baf15d875193`](./contracts/ethereum-1/0x86b7c605c03b9bbb0f6a25fbbb63baf15d875193/) | DebtIssuanceModuleV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb04d1dae75c0764e8ff5f835d2f0771101bee140`](./contracts/ethereum-1/0xb04d1dae75c0764e8ff5f835d2f0771101bee140/) | DelegatedManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x38d8fa043913e8ef6466d01bef4af42cafa3b235`](./contracts/ethereum-1/0x38d8fa043913e8ef6466d01bef4af42cafa3b235/) | DelegatedManagerFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x88858930b3f1946a5c41a5ded7b5335431d5de8d`](./contracts/ethereum-1/0x88858930b3f1946a5c41a5ded7b5335431d5de8d/) | DEXAdapterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x28764a27139d7241c9198c43720a0df1c18e50ef`](./contracts/ethereum-1/0x28764a27139d7241c9198c43720a0df1c18e50ef/) | DEXAdapterV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x40e8e58052272496dcf42953cf7e699b522fe8a3`](./contracts/ethereum-1/0x40e8e58052272496dcf42953cf7e699b522fe8a3/) | ExchangeIssuanceIcEth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2f2c59212d1d0468efa456fe51f49ed4a5538d64`](./contracts/ethereum-1/0x2f2c59212d1d0468efa456fe51f49ed4a5538d64/) | ExchangeIssuanceLeveraged | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf42ecdc112365ff79a745b4cf7d4c266bd6e4b25`](./contracts/ethereum-1/0xf42ecdc112365ff79a745b4cf7d4c266bd6e4b25/) | ExchangeIssuanceZeroEx | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
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
| ethereum | [`0x4677f9eac72e10469949d73d8ef71883ce510732`](./contracts/ethereum-1/0x4677f9eac72e10469949d73d8ef71883ce510732/) | OptimisticAuctionRebalanceExtensionV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6b65c4760f56ea89a21193af5b909395766ef2e5`](./contracts/ethereum-1/0x6b65c4760f56ea89a21193af5b909395766ef2e5/) | ProtocolViewer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x43c3ef32e52f17777789c71002ef4a887df90613`](./contracts/ethereum-1/0x43c3ef32e52f17777789c71002ef4a887df90613/) | PrtFeeSplitExtension | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x08f866c74205617b6f3903ef481798eced10cdec`](./contracts/ethereum-1/0x08f866c74205617b6f3903ef481798eced10cdec/) | StreamingFeeModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x90f765f63e7dc5ae97d6c576bf693fb6af41c129`](./contracts/ethereum-1/0x90f765f63e7dc5ae97d6c576bf693fb6af41c129/) | TradeModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5b67871c3a857de81a1ca0f9f7945e5670d986dc`](./contracts/ethereum-1/0x5b67871c3a857de81a1ca0f9f7945e5670d986dc/) | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 39 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 208 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: inherited_name_remap=154

Fork inheritance lineage and inherited audits are included when available.
