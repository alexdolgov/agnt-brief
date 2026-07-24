# Agentic Audit Brief: Set Protocol

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Set Protocol (`set-protocol`)
- Website: [https://setprotocol.com/](https://setprotocol.com/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum
- Contract surface: 335 unique implementations (566 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $8,913,031.23
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Set Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 5 contract row(s) across ethereum. Structural roles: 5 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 5
- Structural roles: core (5)
- Contract kinds: contract (5)
- Detected standards: ownable (1)
- Frameworks: openzeppelin (5)
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 5; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 11 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 324 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/121
- Verified + Unaudited implementations: 121
- Verified by bytecode match: 0
- Unverified implementations: 214
- Unique implementations: 335
- Raw deployments: 566
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (121)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveLeverageModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x251bd1d42df1f153d86a5ba2305faade4d5f51dc` | ⚠️ Unaudited |
| AirdropExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 9 deployments: ethereum `0x07a578e02db4e1d518ee1856580c7ac0058c03c9`; ethereum `0x0fba2bc72038ce9b932fc299c21e53a886e59183`; ethereum `0x102829861cc9df5dc8c378f8041ab033d0655fa3`; ethereum `0x2cf29fca4273aa9706330626c9a2e1dca9cbcac1`; ethereum `0x63bf66227432f1eb46534118815045a1048cc0eb`; ethereum `0x68c4a3c3508f890c5097e82fb4b5e236c411f0d5`; ethereum `0x7ffbf799f5bcb4e4c653420a6aa7e97600a588f9`; ethereum `0xa899a46ff92158f1dc7f76c59d56ada13c2cc599`; ethereum `0xea381e5b73cd416e577a36a498b3fa78dd21df5f` | ⚠️ Unaudited |
| AirdropModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09b9e7c7e2daf40fcb286fe6b863e517d5d5c40f` | ⚠️ Unaudited |
| Arb | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08d7541094d7eeba614d66fc6402858346d30a15` | ⚠️ Unaudited |
| AssetLimitHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x60eb77c551ceee40b93b1b2b6326ebbd322d1c2d`; ethereum `0x8175e7d506c4b98a0bd6ad48bfd4431500342991` | ⚠️ Unaudited |
| AssetPairManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x9f1846ad3cce3ff7d67a08b1461fac729eb1a33a`; ethereum `0xc932df239afa6b4e2846cd2a94567f0a105612f7`; ethereum `0xe9dc0b715bcaf79cb2dc5a0c01db5e8619733ce5` | ⚠️ Unaudited |
| AuctionRebalanceExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x2b5990df9212de51c6f6ccd2d651e6ba5158d01b`; ethereum `0x418a29d6697dcfc1fb6fad99760639164cf2092b`; ethereum `0x94caea398acc5931b1d32c548959a160ac37ff4a`; ethereum `0xa985e65341ddfd302dadd3c9e58494d27809ba84`; ethereum `0xacce49759e2e98b44de01be2498537c37f2597dc`; ethereum `0xeafb437e9e27e63c0c21e19e6b9603999bd72d26` | ⚠️ Unaudited |
| AuctionRebalanceModuleV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59d55d53a715b3b4581c52098bcb4075c2941dba` | ⚠️ Unaudited |
| BaseManagerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 50 deployments: ethereum `0x0435b2d4a7bb66e9cccf70566bf16c6ca7880ed2`; ethereum `0x0749ce17c983deb806d6b841c65b7359c3d5b104`; ethereum `0x0fffd15993a0b3f49d21a31d14eb52cc6d44f688`; ethereum `0x15a61e856bde2b42a1cc9abcca1815786b21d724`; ethereum `0x1caff525d22e86c515a9a7eccb7005c97635120a`; ethereum `0x2eb7200dff5b21b3a823074725ed7b035446016a`; ethereum `0x3446429a63abb4eb4fa9c6ef1754338081e1070c`; ethereum `0x354c33ff70020f81718b57b2802174659f6cb99f`; ethereum `0x36873e6b93cf7a8f4b03e21ce7b32a10ac02c50b`; ethereum `0x386034fa078ca1022865f41bdd7d016aae4db5a3`; ethereum `0x3b439351177fc9d7b5fd11aedcc177d73f989341`; ethereum `0x3df4826c9b9c1c7c5bf692d1c859ccd84dc193fa`; ethereum `0x3f74f91643305bb0cd237fb2a866383f4d573f5f`; ethereum `0x402d19089b797d60c366bc38a8cff0712d2f4947`; ethereum `0x4039703deb28748dbf155f8567fb5f0ca2ddd742`; ethereum `0x446bc32a80caaf7630142cc16822fb07a4cd2f16`; ethereum `0x49c0675084876800520f506facdd955d13fd571e`; ethereum `0x540edc50880a393772ff9b87f04a29284849146c`; ethereum `0x55569975f6994ca7fae5f190e1244adf1a50940b`; ethereum `0x56a6d9e3143f8ed4f93a01ea358f755dfccccbe0`; ethereum `0x56b7bbde39cdcb2b62e610a8523a8af81806b724`; ethereum `0x59fedba373c52dc06501bcbea4948d58955b6364`; ethereum `0x6496cfabbf0b147013ec01249cd66243b7bc3090`; ethereum `0x64fc858f406a6e0a9e14023360cdb81dee0bee1d`; ethereum `0x6654c5561662f2e229c61cc4671be92336c496b9`; ethereum `0x688488844fc87ee09d32f9d9de6a20399b6bdace`; ethereum `0x6a7eb75c50ddda0ffa90b6577da938a6f0e35240`; ethereum `0x70fcdac8afc454be5550a5187ad348efd7631e28`; ethereum `0x718174da0651cdc853555ff40a9eef36ecb15dc6`; ethereum `0x7c240ddccdcc1b44651fdc6422aad2ad690314a2`; ethereum `0x8300c6b3e2640c61c2c5b91342d0178ee5f2bc73`; ethereum `0x8327ff3461c8a6ea32c5c0d5280dd8ae663682b4`; ethereum `0xa296286d585e59a04697b9ac0b60ef61a9098e2f`; ethereum `0xa420cf4e06cf28dafbdb436ac444920634f1c766`; ethereum `0xa7d11fa4b1ae979d2f8850aa33799a0bad253907`; ethereum `0xa96ca9529a0422617f89526b91ca675092ca2d02`; ethereum `0xb079ffbc3caf139731bf602cd3749994a06a8841`; ethereum `0xb0a058e8d82d56b6a169a30993d171214051ef6e`; ethereum `0xb30f3fd05b8d1afd9b3634dd2baff2022c9f2fd0`; ethereum `0xb97f5a34696adf30db822612379235c3c53b714a`; ethereum `0xbcdbfbdcae2a73e1a3b107c390c745243025d78a`; ethereum `0xc06e644b7ba79cb0ef57924d49bfdb93d59007d2`; ethereum `0xcd483f4225d6246758dc5bb78e832ec054918220`; ethereum `0xd43a17cbd9cca94aabcb6268132edb282f05e876`; ethereum `0xd9818329a580a7799b74798cbdbcc8f080241a67`; ethereum `0xdfb1e595d16c253487f9580208a76d9ca322b895`; ethereum `0xe7736b5ea8433d6e741506920dcf84181a6b2e03`; ethereum `0xef754fc792d2dab75619bd7b9750fc8428585769`; ethereum `0xef76a73ce47138a261ccfe76615cd8d3697a6993`; ethereum `0xfdb765cb074fc95a80800dff07e5fe18c7fd89f3` | ⚠️ Unaudited |
| BasicIssuanceModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x508910aa6ff3d029dc358dd0f775877a355ba35b`; ethereum `0xd8ef3cace8b4907117a45b0b125c68560532f94d` | ⚠️ Unaudited |
| BinaryAllocator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x96229984a079e2701135928502755000afb34021`; ethereum `0xd321a9118348caab17dadb83c60c888b043e8363` | ⚠️ Unaudited |
| BoundedStepwiseExponentialPriceAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa178ba7300da06f0186a4f12ab7d1b7f1226bcc1` | ⚠️ Unaudited |
| BoundedStepwiseLinearPriceAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x237f7bbe0b358415be84ab6d279d4338c0d026bb` | ⚠️ Unaudited |
| BoundedStepwiseLogarithmicPriceAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbafd0bc01d46302a2eb4c47b1880b86fd3143562` | ⚠️ Unaudited |
| BridgedSetToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3bdfb71894be66ab5233b2255603dc3e3e73418a` | ⚠️ Unaudited |
| Collectooors | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe969f2d82b2c1abf044203b081cb023e55a03ce` | ⚠️ Unaudited |
| CommonValidationsLibrary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc269e9396556b6afb0c38eef4a590321ff9e8d3a` | ⚠️ Unaudited |
| ConstantPriceAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13c33656570092555bf27bdf53ce24482b85d992` | ⚠️ Unaudited |
| ConstantPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7561e6d8301cdac56787e203b06e98427a36b1e0` | ⚠️ Unaudited |
| Controller | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-254403 | `0xa4c8d221d8bb851f83aadd0223a8900a6921a349` | ⚠️ Unaudited |
| Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xd2463675a099101e36d85278494268261a66603a`; ethereum `0xf1b12a7b1f0af744ed21eec7d3e891c48fd3c329` | ⚠️ Unaudited |
| Core | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x345ab8af61d107c3972f0d73640e33d8ac545a07`; ethereum `0xf55186cc537e7067ea616f2aae007b4427a120c8` | ⚠️ Unaudited |
| CoreIssuanceLibrary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f3f534d0c5ea126150ec8078d404464339503ca` | ⚠️ Unaudited |
| CTokenOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x8fbe4a300b70dcd70a346143ebfa705e9d0b7c37`; ethereum `0x9ca96e28b51cf78bb4faa778eb3aeaf40dc07980` | ⚠️ Unaudited |
| CustomOracleNavIssuanceModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2344674b23ad076908fd2396373cfe9cd48a1ba3` | ⚠️ Unaudited |
| DebtIssuanceModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39f024d621367c044bace2bf0fb15fb3612ecb92` | ⚠️ Unaudited |
| DebtIssuanceModuleV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x04b59f9f09750c044d7cfbc177561e409085f0f3`; ethereum `0x515a09825228cf6c68a35fe9275fa38add58381c`; ethereum `0xa0a98eb7af028be00d04e46e1316808a62a8fd59` | ⚠️ Unaudited |
| DebtIssuanceModuleV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-254401 | `0x69a592d2129415a4a1d1b1e309c17051b7f28d57` | ⚠️ Unaudited |
| DebtIssuanceModuleV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86b7c605c03b9bbb0f6a25fbbb63baf15d875193` | ⚠️ Unaudited |
| DelegatedManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb04d1dae75c0764e8ff5f835d2f0771101bee140` | ⚠️ Unaudited |
| DelegatedManagerFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38d8fa043913e8ef6466d01bef4af42cafa3b235` | ⚠️ Unaudited |
| DEXAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x25a8803b9b611cc13d807829d73049cd803f6fca`; ethereum `0xb7cc88a13586d862b97a677990de14a122b74598` | ⚠️ Unaudited |
| DEXAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x3026eb2097468fcdc5387af73379948f8aa0a860`; ethereum `0x6408e1ba03914aa481051354a57e1aab0eed8044`; ethereum `0xc43ee8ca1721bc120b702d95467d3e02773f2eb9` | ⚠️ Unaudited |
| DEXAdapterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x88858930b3f1946a5c41a5ded7b5335431d5de8d` | ⚠️ Unaudited |
| DEXAdapterV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28764a27139d7241c9198c43720a0df1c18e50ef` | ⚠️ Unaudited |
| ERC20Wrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xb553ebbc620d8c8b0c65e8676420742919a70eb5`; ethereum `0xeadada7c6943c223c0d4bea475a6dacc7368f8d6` | ⚠️ Unaudited |
| ERC4626Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x304a77c58607dd182a30288e7ef6c16cf2f51573`; ethereum `0x911b6bd3a85c3ef798580b09fc305dc7b846d9c9`; ethereum `0xd3ddc923f672c7b28f78d0a39e8385148d2f09c8` | ⚠️ Unaudited |
| ERC4626WrapV2Adapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x902d2282ab8e336bd1675bbe451ebdb3bf1a7c2e` | ⚠️ Unaudited |
| ExchangeIssuanceIcEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x40e8e58052272496dcf42953cf7e699b522fe8a3`; ethereum `0x945db358c69a4be68ab5b835f2f56af1ccf4e2d1` | ⚠️ Unaudited |
| ExchangeIssuanceLeveraged | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2f2c59212d1d0468efa456fe51f49ed4a5538d64`; ethereum `0x981b21a2912a427f491f1e5b9bf9cca16fa794e1` | ⚠️ Unaudited |
| ExchangeIssuanceModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73df03b5436c84cf9d5a758fb756928dceaf19d7` | ⚠️ Unaudited |
| ExchangeIssuanceZeroEx | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x8760fcd90c82e1e95e55047b6b6a0f22dc07d7d1`; ethereum `0x9d648e5564b794b918d99c84b0fbf4b0bf36ce45`; ethereum `0xf42ecdc112365ff79a745b4cf7d4c266bd6e4b25` | ⚠️ Unaudited |
| FeeSplitExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 30 deployments: ethereum `0x026aa079c4f9cff80b0521b64f8f2d8ccf135518`; ethereum `0x04d58e7051e7f0ea4b01bb648d61f4a641b2c08b`; ethereum `0x0d5f4ca9f12b0b0829013c3c48fb1a9dd0ecdfca`; ethereum `0x0daf2df0102490de2d09bf064e0448b619077ffd`; ethereum `0x0e716b2a9ebdfd9c320af2fce575543d2fcc3d5f`; ethereum `0x1554a67f2e929678983c7a702b1599ff5f5070c9`; ethereum `0x1b7d68134ef476b7795b22a4d76f82c220c54e74`; ethereum `0x1d8e281fad631e0b4024448711a00ac57333d185`; ethereum `0x23aa81ce19043596b5bb55a34a8040b393990a8b`; ethereum `0x2573f27d12225f6d16ddf6ed5da2bfb28ecc28aa`; ethereum `0x5d647663a73ffc34a6ec2aa48e01524ccb39372c`; ethereum `0x5e568e47c52e8af9db47e52d0ae7c740f8f85bf1`; ethereum `0x623c7bd613bd03a4d28ba2d1bc28ecb8d76e7dee`; ethereum `0x7ec2ac6f32fc863942858a5257fbec3a67d6b41c`; ethereum `0x7febfc6b4d7323c56481885d69bc3e7092d299d0`; ethereum `0x83adeee88e970559d22af9ec8dc1a3bd540b4491`; ethereum `0x87a120fd11232b8c59714c40a62e962fa549e6ca`; ethereum `0x978177639ff156ea918a1075755b485951cd373c`; ethereum `0xa8a23b678e8b184f653ee8ee9dcbaa933c2cfaec`; ethereum `0xa9c13c061acaa58aa9691806dc6bcc5ae5f97bc3`; ethereum `0xab7eba33346873469edafd8d6416bb85f506b82e`; ethereum `0xac761f0289712151b9543f4511ba76fa434ab05a`; ethereum `0xafe68a642af7698a3ff3d70b0f73bedb78995814`; ethereum `0xb9a238b3f76409fa8fa2b646cc998b633ee51987`; ethereum `0xc62e39d1f5232f154b7ccd3c6234a9c893bf9563`; ethereum `0xcb63b902d4e0766d25e1ba0e7f1b1bf3f14bfdaf`; ethereum `0xd17300e6f0748952cad9492b51441ad5204775dd`; ethereum `0xd5a152a058ede7331b9ad3521bad03d4ccfd6bb9`; ethereum `0xe833c90f4d07650ac1d8a915c2c0fddbedc1ec3a`; ethereum `0xf1872a098afa193e6f1a4307c54624f28b8e8f51` | ⚠️ Unaudited |
| FixedRebalanceExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x5f98cbb7ac52fa5ef3660b7ab34e03398b48efbb`; ethereum `0x9fe734a1f107b7d46d73b8c2383d688f5626ad84` | ⚠️ Unaudited |
| FlashMint4626 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xe483701d4f8c3b9b7b662fee2543503d6d127f53`; ethereum `0xf5cf956018c111be7d5ce4240960c1164179aca9` | ⚠️ Unaudited |
| FlashMintDex | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcde2657a980a8e2b7c5957d30b2ac768cb6d277e` | ⚠️ Unaudited |
| FlashMintHyETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1c19c605cb071e22a0a46bc9e24b5ce64a28d7ad`; ethereum `0xc290c371f5a36970aff00bbffdbfadd81820109a` | ⚠️ Unaudited |
| FlashMintHyETHV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x940ecb16416fe52856e8653b2958bfd556aa6a7e` | ⚠️ Unaudited |
| FlashMintHyETHV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb1eea349f25288627f008c5e2a69b684bdddf49` | ⚠️ Unaudited |
| FlashMintLeveraged | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x45c00508c14601fd1c1e296eb3c0e3eeedca45d0`; ethereum `0x63bcc10ec90dd4cfe9a9931b5216cc7475bf863e`; ethereum `0x7663043ebe3f9f5e53cbf56f9f36fa5233ef055d`; ethereum `0x9d116b1f35f396df97bd7ba457d806de0f1d46ed`; ethereum `0xb4354ddfc4dda5b1244aa80caf210eeb6d96db48` | ⚠️ Unaudited |
| FlashMintLeveragedZeroEx | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 9 deployments: ethereum `0x1039f3ed7d2a3169a987d01f4d842eb26bcbca8b`; ethereum `0x58093c03b4e7804d0127a6d0a5d86dcbd5652113`; ethereum `0x5b688c35020b08ca20af2224a2e13008bb1d194d`; ethereum `0x8b46956ea9a87c0ad3cb71911ddded23be10e04d`; ethereum `0x8d43638795c31b76b5ae340f432019a344ae11a1`; ethereum `0xa6c48089eb2a55fde207caa9ca15a7f9665feac5`; ethereum `0xbd84e8c8b25da8e9e284133d3c1ef85df957cf9a`; ethereum `0xc1cdedbb37f4f6417482abb1b2466011807680a1`; ethereum `0xdb97c04b1f09f86d45f9975b88f8ab4b7e9ce809` | ⚠️ Unaudited |
| FlashMintNAV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62f160391d2f1e3a176f32f51ade6ed8bb2ea1cf` | ⚠️ Unaudited |
| FlashMintNotional | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9da9992b5d01bd0efb1ee8310e8011dc837bd476` | ⚠️ Unaudited |
| FlashMintWrapped | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x5c0d0a9a0c3a0a5b591496ff894686893b69faa2`; ethereum `0x7dde626de8ce73229838b5c2f9a71bc7ac207801` | ⚠️ Unaudited |
| FlexibleLeverageStrategyExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x097afae7b0e0ea0880c8dba7475c12a1f3d2911f`; ethereum `0x9ba41a2c5175d502ea52ff9a666f8a4fc00c00a1`; ethereum `0xc0584e2865b366975cf548960f7bba37c685c610`; ethereum `0xfd4ea597e8346a6723fa4a06a31e4b6f7f37e9ad` | ⚠️ Unaudited |
| FLIRebalanceViewer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x14d9f0d529e80747b128ac2b145e4208e44e37eb`; ethereum `0x4632158a6f58b8eb2aa6f92428f23d7f6de763ee`; ethereum `0x517f76db91931d48cbbe5d8ce82d953e9490efa7`; ethereum `0x8f45177e4ca1f996bd6c830b7e06eb3308536217` | ⚠️ Unaudited |
| FTCVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x0cafb769efeb5dc0af94386c2a14dd6504cadaf9`; ethereum `0x51127445ff8cac4a1052055a106d6d5a7729b21d`; ethereum `0x6d1b74e18064172d028c5ee7af5d0ccc26f2a4ae` | ⚠️ Unaudited |
| GIMExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x3640a2f5938abf27308ad226ad515d3f8d5fab51`; ethereum `0x52b062eb0a832237543cb6fb23a6efb3ac2a5865`; ethereum `0x5d5f7b965833470a65817558c167420e6c09286e`; ethereum `0x85bd9a2105588c3d0c65d8150c63e2da4391aad8`; ethereum `0x86971b62537416812a30c9ac30a6eaea29f87ff3`; ethereum `0x9737c658272e66faad39d7ad337789ee6d54f500`; ethereum `0x984d92dd094561c4ec4e994c7b4e089b3824516f`; ethereum `0xdfdbab0058c4cb7d3520abeee87fc94b1504b5ef` | ⚠️ Unaudited |
| GlobalIssuanceExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf57ab05800a1c6b79a831726f9fdb62d7bc751b6` | ⚠️ Unaudited |
| GlobalStreamingFeeSplitExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e422e9964881746a68ffa0f6a6163c0100f3037` | ⚠️ Unaudited |
| GlobalTradeExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6029f3f247fa87cf998ddf3c91fcb54c166c254c` | ⚠️ Unaudited |
| GlobalWrapExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1de67be283e25e44da885b699c3aa47908103450` | ⚠️ Unaudited |
| GovernanceExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x30d98bc087aec7f7135e4ad4de51416c1577cafd`; ethereum `0x43a738aee5cf1052e935218886b60807e635e9a4`; ethereum `0xaf958f433c3ee060bcae34588fe510b44812defe` | ⚠️ Unaudited |
| ICManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32bb838c572faf6c7040a59c8f1ee699862ec9ee` | ⚠️ Unaudited |
| IntegrationRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x0b95e9976eda9b0403ad31bd57be29adef22473c`; ethereum `0x3e8939a2ab27d79a21ed86ef56bba62d82db0c2d`; ethereum `0x6655194c95d24b8b10b156dffce22a2c126e2e5a`; ethereum `0x80c286a99506d4e967cac83e22a28f5cd62ddae9`; ethereum `0x8a4795165214c5f0799623f67f20fb7361c49763`; ethereum `0x9e0d3430ae0389c1f0c55ec3740618f0fa2abbc6`; ethereum `0xb9083dee5e8273e54b9db4c31ba9d4ab7c6b28d3` | ⚠️ Unaudited |
| IntermediateMigrationExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x9da195dbd9446c649b6cb6196d6cc460f277d907`; ethereum `0xa02a2f8c20761a6cd886871716320b16011c7a5e` | ⚠️ Unaudited |
| KyberNetworkWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b3eb3b22dc2c29e878d7766276a86a8395fb56d` | ⚠️ Unaudited |
| LegacyMakerOracleAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x792f4ea1d507e8b4153139c002913e1d580b4b28` | ⚠️ Unaudited |
| LinearizedPriceDataSource | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27323356c56049b47244680a2d76fc2fc050d2d2` | ⚠️ Unaudited |
| MACOStrategyManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e2a181f5c21475b35d7e1954f30d0e7b196bc36` | ⚠️ Unaudited |
| MACOStrategyManagerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d622389970120c38fa491b6d1ca5328237889e5` | ⚠️ Unaudited |
| ManagerCore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05ff5a01ff3695cb9c3128c0957ae8ceca16e6bc` | ⚠️ Unaudited |
| MedianOracleAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14a945d65c18a399e9dcd3e9ac6f6e246053510d` | ⚠️ Unaudited |
| MigrationExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1e0aa0508dfedb73110fa0339dc6aaddd64e506f`; ethereum `0xea40e48b616a8ef93fe19827dee3a73fb8a15cfc` | ⚠️ Unaudited |
| MovingAverageOracleV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x3f49c269fd141bd4b9d6de943c2da7fd180de453`; ethereum `0xb82f09acf40a0335bfec4fb5d3f4f78b3d0b217e`; ethereum `0xbb6c1c42a9d5c5126373b8fbf30929e365ccc0f7` | ⚠️ Unaudited |
| MultiSigWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xf4b583293339425cf94203e186d097589af5a611`; ethereum `0xf8523c551763fe4261a28313015267f163de7541` | ⚠️ Unaudited |
| NavIssuanceModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x33f6184b1695a8fe344ea6b7de11aa35a74ec300`; ethereum `0x7f72321de19a64da7767cba140f0d2c486af0113`; ethereum `0xcd34f1b92c6d0d03430ec4a410f758f7776a3504` | ⚠️ Unaudited |
| NotionalTradeModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x600d9950c6ecaef98cc42fa207e92397a6c43416` | ⚠️ Unaudited |
| NotionalV2Mock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d97aad71c0ebbcf0099d0435be1b355edc49ce5` | ⚠️ Unaudited |
| OneInchExchangeAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x6da72bef02824eb8da9c572727052d125563b0b0`; ethereum `0xcbadafc252160a0d0ec7fb64a134b2f115b06b24`; ethereum `0xfff355af19e3ff51eec6874fc324db3ead43c772` | ⚠️ Unaudited |
| OptimisticAuctionRebalanceExtensionV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4677f9eac72e10469949d73d8ef71883ce510732`; ethereum `0xf0d343fd94ac44ef6b8baae8db3917d985c2cec7` | ⚠️ Unaudited |
| OracleProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x1686d01bd776a1c2a3ccf1579647ca6d39dd2465`; ethereum `0x3c3afa479d8c95cf0e1df70449bb5a14a3b7af67`; ethereum `0x8b1c079f8192706532cc0bf0c02dcc4ff40d045d`; ethereum `0x97c3e595e8f80169266b5534e4d7a1bb58bb45ab`; ethereum `0xff60d1650696238f81be53d23b3f91bfaaad938f` | ⚠️ Unaudited |
| OtcEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x055c8bd48ad3d2d3d486453c32a6fbeba86404db`; ethereum `0x2e45e774334d974beccab9ff6e21a1ecea82e9a3`; ethereum `0x5678dcbd8961032d94c669986097b1c0556283bb` | ⚠️ Unaudited |
| PreciseUnitOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86856845e974df562975d0ef62ec34b2ff059453` | ⚠️ Unaudited |
| PriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x6a663b74b9ea021099649320c4042af289ec5a75`; ethereum `0xa60f9e1641747762ade7fd5f881b90b691e92b0a`; ethereum `0xc3da3ed5ed032baec5465f6f0e87a22a5aff2447`; ethereum `0xff31e9acbc9d42b4f964f54f9752d2f74e4acf1c` | ⚠️ Unaudited |
| ProtocolViewer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b65c4760f56ea89a21193af5b909395766ef2e5` | ⚠️ Unaudited |
| Prt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99f6539df9840592a862ab916ddc3258a1d7a773` | ⚠️ Unaudited |
| PrtFeeSplitExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43c3ef32e52f17777789c71002ef4a887df90613` | ⚠️ Unaudited |
| RebalanceAuctionModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe23fb31dd2edacebf7d92720358bb92445f47fdb` | ⚠️ Unaudited |
| RebalancingSetExchangeIssuanceModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd4240987d6f92b06c8b5068b1e4006a97c47392b` | ⚠️ Unaudited |
| RebalancingSetTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15518cdd49d83471e9f85cdcfbd72c8e2a78dde2` | ⚠️ Unaudited |
| RebasingComponentModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14f47d2808155d30a1297586f4c3f6aab4f5a69e` | ⚠️ Unaudited |
| ReinvestmentExtensionV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd57559fc98808dee07877117383d5b748a304727` | ⚠️ Unaudited |
| RSITrendingTrigger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x959de129befb19272df731262dce724760815c20` | ⚠️ Unaudited |
| SetToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 10 deployments: ethereum `0x02ec0c9e6d3c08b8fb12fec51ccba048afbc36a6`; ethereum `0x0b498ff89709d3838a063f1dfa463091f9801c2b`; ethereum `0x1494ca1f11d487c2bbe4543e90080aeba4ba3c2b`; ethereum `0x48ccc6937c62609f20376901535e00980e3bbd0f`; ethereum `0x58222dd0a3d6de911b067b52c45f974d03163a4a`; ethereum `0x72e364f2abdc788b7e918bc238b21f109cd634d7`; ethereum `0x7c07f7abe10ce8e33dc6c5ad68fe033085256a84`; ethereum `0xaa6e8127831c9de45ae56bb1b0d4d4da6e5665bd`; ethereum `0xf860f90e1f55e3528682e18850612cbb45bbf1bc`; ethereum `0xfa10e13fe555760a5297dc14eb6562a1a53e4e37` | ⚠️ Unaudited |
| SetTokenCreator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2758bf6af0ec63f1710d3d7890e1c263a247b75e`; ethereum `0x86a73e16d2dece40b378b6af645a93678214ef43` | ⚠️ Unaudited |
| SetTokenCreator | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-254404 | `0xef72d3278dc3eba6dc2614965308d1435ffd748a` | ⚠️ Unaudited |
| SetTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe1cd722575801fe92eeef2ca23396557f7e3b967` | ⚠️ Unaudited |
| SetTokenRateViewer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e3ac55fa22abef5ce612b1796e69e005fb0a238` | ⚠️ Unaudited |
| SetValuer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x38b8fc4899b21b56b6a729c03bf266b090cfe9d7`; ethereum `0x6f4d1397c15c8ab6ea218f80f397acb71835654f`; ethereum `0xb647acd2f7e43c33b2d8b4e1042d352b63bb485b`; ethereum `0xddf4f0775ff69c73619a4dbb42ba61b0ac1f555f` | ⚠️ Unaudited |
| SignedSnapshotStakingPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x2881cc01aad96c70319f308906d49c3784112e0d`; ethereum `0x3329efe11a11f63ad2cae877df640e377024cd42`; ethereum `0x52ceedd6d765e69c6ec20321aa49956872913886`; ethereum `0xbe03026716a4d5e0992f22a3e6494b4f2809a9c6` | ⚠️ Unaudited |
| SingleIndexModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5257fe1cf608affd6025990b09fad66e1179f18` | ⚠️ Unaudited |
| StakeWiseReinvestmentExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1fcf74d4d0335095c02e1ca78ec55339c2ec927b`; ethereum `0xbeef8055b8cd9f5626dd16be43cbd02ea0883d4a` | ⚠️ Unaudited |
| StreamingFeeModule | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-254400 | `0x08f866c74205617b6f3903ef481798eced10cdec` | ⚠️ Unaudited |
| StreamingFeeModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x165edf07bb61904f47800e13f5120e64c4b9a186`; ethereum `0x3d8d14b7efb8e342189ee14c3d40dce005eb901b` | ⚠️ Unaudited |
| StreamingFeeSplitExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x0104a6fa30540dc1d9f45d2797f05eea79304525`; ethereum `0x2b71854e1a9fa1bb41da11bb6613a7a9c352da99`; ethereum `0x48cf49701028cfbbce18a963c9134f7a86e71a22`; ethereum `0xb9d08e14c4afc1f9113e440eae42028e1377a869`; ethereum `0xf8af89c1285cdebe63413449ce982b9ce185dbae` | ⚠️ Unaudited |
| SupplyCapIssuanceHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 29 deployments: ethereum `0x0110959c718f70fd2dc01e86566e694391c0e5c6`; ethereum `0x053f2225588e62900f5f5fb4e786b9ca9553fa79`; ethereum `0x19c1c2c6533c4752c2694c8ca52791bedc0cf793`; ethereum `0x245290668ce324deed7cfc1bcf4355fd23bfebe0`; ethereum `0x2622c4bb67992356b3826b5034bb2c7e949ab12b`; ethereum `0x29ae2a3f21c7f6607f9af55e7d996e28ff3fead9`; ethereum `0x2c2ab834316df4c457541e31a7767694481c98ec`; ethereum `0x30e9e62cfe57ccc061fbded1d19d119a1dee53a3`; ethereum `0x5bca85103206dcb3e223af21c1bdab0f3b830ee5`; ethereum `0x5f22e5b4e5a54f27e25065632f76bdf786c1cf67`; ethereum `0x64c8e65c133e5c261b56413f7339fa898f862d91`; ethereum `0x7374e7637ae667e6f80610d898e44ed42fe8269d`; ethereum `0x97d151597fbc7a8d7ca986cfce6568275bbcc691`; ethereum `0xa727a19991f03ac9928388428f6eb8416c029867`; ethereum `0xa8b29e5ca20a9d9df52ee07a8508357d47f7902d`; ethereum `0xb08089029305c4308f3d535241601e82752c69f5`; ethereum `0xba3bbba81a7aa3b222e2bfc657745582416aff29`; ethereum `0xbc29acdc888b471a1b09e1e7dcc7146471222cbf`; ethereum `0xca2754549cf7ca7b9613c90c98c1aad127a77220`; ethereum `0xcb3ebcdd25eca9f0755b13b3dc87a7252ef4eb47`; ethereum `0xd43b4d1a77684b40d33454c55c7973876c12f55b`; ethereum `0xd59fc21d2ad70d59749df78c1c286cbaa9152555`; ethereum `0xe2ea6b8390eb877838b38e9e4f25ca8c094cd1e6`; ethereum `0xe6c18c4c9fc6909eda546649ebe33a8159256cbe`; ethereum `0xeb3facdce4ce78020527f64bb0991fcb494bc180`; ethereum `0xec5a282b5f6d5678b743ae52c056ddb751cafd82`; ethereum `0xed072061e94b035b8d712c64875a469f5dd407e6`; ethereum `0xefc5ecd2c74b76594554ee6d352b79be86e06f83`; ethereum `0xffb119c0f7e971de1174dc9c2389b8d408b619fc` | ⚠️ Unaudited |
| SynthetixExchangeAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64177fd4dfad1a6cff95e1ebba403bb73c6a8e41` | ⚠️ Unaudited |
| TargetWeightWrapExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9a8ae9f29c1e77bb05a8a4d3576998a9de56ff2` | ⚠️ Unaudited |
| TimeSeriesFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7b2977f1f84629000bf572b466b43ba2b934836` | ⚠️ Unaudited |
| TradeModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x11259f09b95b7dbded5b7bca12d9daa2d816d91f`; ethereum `0x45d67b9dbea9bd51ed2b67832addeaf839628faa`; ethereum `0xd78018a16b4b4e1b806bf1e605dcf0ff18b0b3eb`; ethereum `0xfaab3f8f3678f68aa0d307b66e71b636f82c28bf` | ⚠️ Unaudited |
| TradeModule | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-254402 | `0x90f765f63e7dc5ae97d6c576bf693fb6af41c129` | ⚠️ Unaudited |
| TransferProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x882d80d3a191859d64477eb78cca46599307ec1c` | ⚠️ Unaudited |
| Vault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x5b67871c3a857de81a1ca0f9f7945e5670d986dc`; ethereum `0xcd85541698dc95a1b0a246f8a5b21ec3c0d5605b` | ⚠️ Unaudited |
| WhiteList | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x6a2d7d65d1e92c3ea4fbc2d6d1383ca77978c3d3`; ethereum `0x9f5c0c555fdc92e86f54d0239e3982d729e1c9fa`; ethereum `0xc6449473be76ab2a70329fa66cbe504a25005338`; ethereum `0xdfdcd62311941fed657acae446525bafee85d80d` | ⚠️ Unaudited |
| WrapExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x07e15384c86cd51c76d9201c7c2c047e62c9ae6d`; ethereum `0x5be31fa95cdb9949436ffe8e270303b57cceee67`; ethereum `0x898ca25440dc4a82ce614cda27a218cf4413fe62`; ethereum `0xc6678ac1462f626628e1b4ec247d2ef9fd21a4cf` | ⚠️ Unaudited |
| WrapModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x67eddd251e914a7a1a19bda09295a28cc328defe`; ethereum `0xbe4aede1694aff7f1827229870f6cf3d9e7a999c` | ⚠️ Unaudited |
| WrapModuleV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6604468512b3b85c58c4d818ccb69fba5bb7b809`; ethereum `0xbfe0f7b4f9537a25d7c498161d6f24b38699a075` | ⚠️ Unaudited |
| WrappedfCashFactoryMock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa39f94fc8290ed03328b9fca82d07cae26ce2a37` | ⚠️ Unaudited |
| ZeroExApiAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd7a4244f3a17468f7b0568d6a43fde94b11c9c11` | ⚠️ Unaudited |
| ZeroExExchangeWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0acd0b5cf881cd8398ac563872209de1ce15df0f` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (214)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x00dd1d0a8acf768700c009cb5e54bbb5b6920071` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0156aba855293a0190681835a9fdf714b884e5c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x045f019a6d5d6e2e59bd11da4d00595d8d621fc3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04fbed8e5d187936780f30d15b3923089e2c724c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x056ec1dff1fd3468d38f12a15ae04043efa8c537` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x05c5c57e5e75fc8ead83fe06ebe4acc471fb2948` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06da99d2d08d161d2ee6a4b8c1a9edf62966f012` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0892e4fe5b3086d03a522e453bdcd194c4719c42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0da425cb894d2851b04aac082bbd65bb9a66b488` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e6020d067fb413574b70e9619a05c7a6f336b28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12472d1c1598e1d86111c9471c00eaa3d571fc12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12951b9eaa200237f9080c95ad93cc74c9d9bd45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12dfc577544d002c57fbb02c389511a37bc4490c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1434f1eae027b0f30071e0b858449a522a5c4b25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14f0321be5e581abf9d5bc76260bf015dc04c53d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17262024e84ed9097546ea762d94db7c0eb13b5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17efe2a497c7b173be4eb5bb8481c2dc741509fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18648502df9b779414f0e0eb3f5febbe76b0a706` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18b739aabc019d9ef160d44ba8a9dd6a717372af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19ab9578c7de2366591b6017f3037d15f8606992` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19c6d158c816f647e5531d888fbca445aa651aac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d763b4e22423e48ed64d757835a15366bb9e4d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d8ab7f7a50b9354aed252652afdd0e286774c9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1db929398958082d2080aa1b501e460503f60467` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e43c2b36b22b8c8bf1dc0812c65e35fdb6d4dd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e7c93a85c42fcddc538390875b22e4ffb3ee4f7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x1f52ba34eb80cbd48b9f3dad43ffb4cb6d0fccf5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f6ee9ce38e6beeb968bb91f755998548d3165e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1fa77d5459ad227490a2b068328503a69e2cc91c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2020a4b6d7388dfb5863bce42068d15aea405ce7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20fc9b698e67dc13a10626bdae54d7dc15bf9e53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22d3f7e36479c30774d9e65584e654f335db2771` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25c499e7306248c308cef403d9824110817b305c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x263c23f55cc122cac5473deeacafdd23f3ec1c05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26de330864059bae3fd054d52a42ed4792135b03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x285c5bfe4729afbca8a8b6763047a5f471efb95e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2891782706d420448a5b13a85bf6bc1a1f44358c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x290e2051a46556ba9778d19dfcdf2a821a26167c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x293dcc7c8350ce9f1283572ac89861f768158151` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ba59efeb62171bc8fb8bfc2366a76689372937a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c2c21865cca8f385798ee418cb6680a71ec9d00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d4b48bfeed40a09cac368e68cdfb72ea7f5ed51` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x2db41170bed581eaf00415015a8c24900799f99d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e309c9ee10f0bae4c655087db9aba01a450de21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ea9bada1745b9fe6002008905452fc3677e9830` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f5076751b66f8f87ee2b34855edeb425f208d9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x323f6f0ba69e0509450b7e6e07edcd1f477393cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3289670b6b43b71366e8fbe1579043b82f140010` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x33fa3f2cdd7323b4d93a995b741d1058ad44563e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x365bebfe105884de616c0df7eea6aab10fa36861` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3700414bb6716fcd8b14344fb10ddd91fdea59ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38e5462bbe6a72f79606c1a0007468aa4334a92b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39f920b2e229471ea6ef6a619cb21e910885f244` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ac81153ae6a096eaea0990fa0366914c425ef85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b71dc493c35b8e9c6095f3be56333b770784cc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3bec878f77869a9af82a56709a7e8c4f78861e84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d5f04a013834bf2ed9ebca4a916a4add3dfd299` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d9da970fa85cb1fa9d405145d4c485224da045e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e262dc5b9aa18d6a8236c11caa979f89473dc39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3fec724934e17081a3640a167861efe7f41600a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x422405fc53e60cd679531330cea7b0952f929e44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4227900aa98fc2a74f7a560342e011df25189775` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42c2255310049adce054fc7fa92d06cfcd148019` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x46003167e93d8cd8e8d24cbed4998b7ceb9a4d19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4689051f4246630deb7c1c4cfb2ffa25643d886c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4737ed26956cc0a927bbddc860103f559121046c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47ef271142e04a28ef8c00edbf81c1b03ce09ffd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48c985e823deb777e9fb86529a96c07081b4dad3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a4dff5e12c2422261ebf0042ed57b02b5bdc621` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c4c649455c6433dc48ff1571c9e50ac58f0cefa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c5e0cabaa6b376d565cf2be865a03f43e361770` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d21472bb1746544bad1adae30895e0b0f9e90ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f08eeeb7a79a1034983bae10812ee5116f520ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f70287526ea9ba7e799d616ea86635cdaf0de4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4fee5df498bb644a319312c2d4e3034cd44ee034` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x504e2230baace0974a61822d8f7ac255be3bf061` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50711c5cea991d54d37a2384d22568734976d154` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x510cae9358b78371666a2c7b43c4ff5d88a919ff` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x5132044c71b98315bdd5d8e6900bcf93eb2ebec0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5188fc72a0a13b4576578ae216125604cfad4805` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5374e7a0f9e0ad299e094825a220354b6ca6c787` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x558eb5bf364648eaf288317a8a2e69fb6f0d581c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56413b25a29185e8f5ef240009dc33f82aaf1008` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x595f8dab94b9c718cbf5c693cd539fd00b286d3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a1e0fd3fc829e893d4a158cc32ae68b0c0b92c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e64f5b1b1a0d7e40878a0a5a96f1f3293486ca4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ecd8e3b059bc5a69e2d7a73c60bd4e9788972ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5efda1dbd6adcee04cf8bd6599af3d9b2c8fc85f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60ca2b6257e86c229f6706fd4256529bef522fc3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6169c62e1aae2d56a2dc184514e8b515ff6f1d9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x616dad7a8e7de48c0b5c97586cbd9050e0a4ff54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6462ff37b2ddcd66309d5374a09f254f3bd962a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x653d466bb82c2bfbee5264d0b961f958acc93a36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65d103a810099193c892a23d6b320cf3b9e30d46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x678292382356cd9c06bc21db9eca7025d0732f88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68022868a9d6ac2efb2bb669d9925cec732573ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6804c793c0f088beabcc2342e9afce347a330a28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68fb1f79be74cf1b22889eb06d724caee35034b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d9e200ba3d14143c543598e2298211c569912c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f76cfe52094f01f63adad8b9328474a98528742` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x706c76369831279cce7a13d454719794b6d8cb74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71a254755922ec0846996cf1f75d8b83b9c5802a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72a9447cfc775b4ec0ac59a9bcc00c57b282d285` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75fbbdeafe23a48c0736b2731b956b7a03adcfb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77116a79c218492cf52636f92aaef9f4c623fdd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7734df8597ace4981a7302321edf85953b198075` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79cfd6395be41482550005f145bf818ba64436a0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x7a397b3ed39e84c6181e47309ce940574290f4e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b17dc1d0c63a011361506d251a092290b2718c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b4c75c989cb0ff4fd6c1387f72d2f6fb2d4002a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b651c24223313e1c8b223d78e78f884be56ccfb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b79f41c55ef8f50e15a3857e056e48310396b73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8051956fda21989050b1b2263b3cd5b227385950` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x815e828c1559d9dd0cb6fa348138adcdb06526b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x818c639ca5f986115eacf77e58d4804de1dd5d40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8440f6a2c42118bed0d6e6a89bf170ffd13e21c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x85fa4e81c6b49066934d44ae5e02ca36decf6b77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x864feac80fae179b6e2bb64b937bc55f3a574c17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x88b2cb5bed3d16922d7ae72202875423433d3faf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x896c7a6dd2285aa6a4fbe6ecbfc40b1d68930ac0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89829a427464a16f0727ed299193c326ed454eba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89bfd87f8b056565f3306d5185f085aad9d17a41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89c7147265394250fd3149ef467a835f36275fa8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a0184052fffeb451803e0ffacdd3620a723eb69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a0b06196816fc98569bb62b02f922a0b9badb52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ced7eef739ffcf7871ef97abe5316d9caba9614` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d5cf870354fffae0586b639da6d4e4f6c659c69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ddf05faa5bd3d237eb3224601aa47dfa3195117` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8de07cb5ddcd90c0d8be93d3e2653d8c0b2a9abe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e32dbee66d551c7c296183337adede53a276783` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ffc4f43a82a752917f4f95abe9a9b70a48924a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x900fd05cef99e201328b95d3befcae39cf4ab506` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x91866a6f55bee51062f13e73e9a04425a159e4b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x91fbdc0741d6055f62ba481921df25136531d2a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x925ffed5725ed7640423cd1a9e219acc6ddd8b24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x931a809658b677390c80a443415d16f4fcd37d1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9378ad514c00e4869656ee27b634d852dd48fead` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9524648cc47481a62610fb080e4f095758222976` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95b485ee198dae34da070861838c15727be1f9a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x970694e440f86e3470776ecb55c5665c5283f319` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97b4d7834b34aa2a8df68a4efe9f6660eab2f614` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9865f79bb187e81bccb8d3d10d314b9ae4e1ed3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a56e203e8566924a26ed0535c15db9816d9f778` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9cfe76a718ea75e3e8ce4fc7ad0fef84be70919b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d2e0b9471168bb8060a28c1b32c1dc5aebd27ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d411aa61a951373ddb4c5c20c91cd0567496ded` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9daae54270c5a69bf0daf489fd242ecdff36ddf6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e39518df5186274f6a604d18e74514f01b6043e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e49d7f3fe6d61b2d702e71292fb41b060369aa7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e9a0a9c030f3884486a76c169dfbf712bb097d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f30fb550cfd5581c1ff0d164533c1b26e9fd0d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0e3d1d97da958b478db637ac34fbe4d5222e7ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1821db5b5ce43693bc52f0fc65827aa8adb9690` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa245c6e3ef54d9aa125f97900edb850eb52de355` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2619134b0851744d6e5052392400df73b24d7fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2bb0b46960f24c9720f56639e08ad6c0e101c61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa32a06130533b85d00838312aacfed74eb78439a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa361f9f9905399f8193657ba026a4a11ccd8ca96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa655795ddf6f816e1b493b195461d7042d3bbb25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa71978db8333586c65be76ed559e7e51fc81ec66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8a8957bc5bfba5cce0a575ad0baafde6ef1ddb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xabe13798b5db637b044cbfdb24534d1d43608994` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad2d61aaac4697af3b5e9f94bb6989b7707ac5ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xadcfd8333ece5fce62d58e71d77c1064e36f5bfb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xadd948fd8ce465a0920bd3678e8b9ec86d00c79c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaee65691af05528f180c1f668976d6d4e0b7117c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xafcb6e603a86be603f72f2a5bb4905d23356b24b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2aa8743633bfcb0bc6aecd6cc0aff96d961f218` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2d113cd923b763bd4f2187233257da57f3f1ddb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4b3a9610b9842155b05018d7068f97703df8fb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb50f3fdb6480e12603a9de68f549ac43f039c259` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5f10043cae909fa718dec78be1d31513f495a2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba1ba9f6500c1437730bcdf0400cc83f1a28d16d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbafb2fea7c1188d8fbab070196d0ab77a131c71c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb570b0bce4b9396f6d3add348594d739468f12c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc006ed0402d86079b75ddcfa40df35d536e6770` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbcad60c7181f2d2fb74455a4dbc6e2ef8d67bf53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0aafee4b4edc54dd3aea0bf4dbe7bddde6365ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1209271d1021c31dfe5f7ff8cf3a1361674ebab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc19a26a3d56d8f85324e45978f2f9e069642c1da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc360e68541341abd98856dfaefa384917d754d1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc488e1df061e629c98eb4472340f7966635bb588` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4d32a6ceccb24bc729013ec391c18df30f83af1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5d96411341d16c4bd16733500d6ab8c5421097e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6e977741487dd8457397b185709cd89b0cf5e7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7e2bfb7e6ac61400304734890f125c0c31e6256` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8dba7fd4bc23de9f160d2e46125f1fc0d2425d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc914100c13f2333e637cf7a01b71e8e3fab7c118` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce0348b9ea723966b8f698a0bd79d89138fb6153` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd04aabaded11e92fefcd92eedbbc81b184cdac82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd07f5af2bd27c8795d2bdfbd74c27f8682ae197f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd50f2f5b46bdbc1941f06148030d312ca99d2487` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd629f4d7eaad237ebae7d92002946e1dec648348` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd7937c7cbe8be535d536f8bef0c301651e400852` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd85af84c22b71bdaa25333a7898ddc6f2f1088eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd88e4637d5dabcd033a37c3b56a739e992fdede8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdad75aca429911fe1904920904fcc074de3fdd15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc733ec262f32882f7c05525cc2d09f2c04d86ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd5825965a016d8bbbbdf4862a1ac9d3fb6d5382` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe66364d965d0d17e9ad70fcb19b868015712dae6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7a8f86c3470a8826675fee8cadea95241c61478` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7e6ac0f1894fb0f341ef76dcf6248d6ca8e4c0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea01d1580fec2e83c7ee602e1fa926463bfde7d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xedc75fe373850347c90c67abe8d6da3a9815d053` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeebaba65769084d176d1ff6fd6e6be3f8e9a63b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf00ff2b76b017c16b3a96d22e73c47184d2a4ed7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf04ff1487bb27fa6a83f6276a55ae17eb8b3c581` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf2c421906fa01b211205c7c50a8dd304011846ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf3055e1e19b7f68420db8f1334bdbf25a0d7bd37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf3be079f9768d05b40fb7fdb3955ce0e163d43be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5f8d1d6bd55bf9c301f13a603ada0409cb68f0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8ba20d0307c1b07cdf31bdf6c1efad786e6b448` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8f9a27b752fcff0b119318453ca1880cc9ece56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfff8d0c92169c53ead06119fb0aeb3bccfbbbd4a` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 544
- Live contracts: 0
- Unknown liveness contracts: 544
- Source-verified contracts: 336
- Currently scope-matched contracts retained as-is: 0
- Classification counts: candidate review=102, contamination review=52, exact address book overlap=1, source verified unclassified=181, unverified unclassified=208

Showing first 200 of 544 contracts. The complete deployer expansion list is in `brief.json`.

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| candidate review | AirdropExtension<br>`0x07a578e02db4e1d518ee1856580c7ac0058c03c9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | AirdropExtension<br>`0x0fba2bc72038ce9b932fc299c21e53a886e59183` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | AirdropExtension<br>`0x102829861cc9df5dc8c378f8041ab033d0655fa3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | AirdropExtension<br>`0x2cf29fca4273aa9706330626c9a2e1dca9cbcac1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | AirdropExtension<br>`0x63bf66227432f1eb46534118815045a1048cc0eb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | AirdropExtension<br>`0xea381e5b73cd416e577a36a498b3fa78dd21df5f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | AuctionRebalanceExtension<br>`0x2b5990df9212de51c6f6ccd2d651e6ba5158d01b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | AuctionRebalanceExtension<br>`0x418a29d6697dcfc1fb6fad99760639164cf2092b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | AuctionRebalanceExtension<br>`0x94caea398acc5931b1d32c548959a160ac37ff4a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | AuctionRebalanceExtension<br>`0xa985e65341ddfd302dadd3c9e58494d27809ba84` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | AuctionRebalanceExtension<br>`0xacce49759e2e98b44de01be2498537c37f2597dc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | AuctionRebalanceExtension<br>`0xeafb437e9e27e63c0c21e19e6b9603999bd72d26` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | CustomOracleNavIssuanceModule<br>`0x2344674b23ad076908fd2396373cfe9cd48a1ba3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | DebtIssuanceModuleV2<br>`0x04b59f9f09750c044d7cfbc177561e409085f0f3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | DebtIssuanceModuleV2<br>`0x515a09825228cf6c68a35fe9275fa38add58381c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | DebtIssuanceModuleV2<br>`0xa0a98eb7af028be00d04e46e1316808a62a8fd59` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | DebtIssuanceModuleV3<br>`0x86b7c605c03b9bbb0f6a25fbbb63baf15d875193` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | DelegatedManager<br>`0xb04d1dae75c0764e8ff5f835d2f0771101bee140` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | DelegatedManagerFactory<br>`0x38d8fa043913e8ef6466d01bef4af42cafa3b235` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | DEXAdapter<br>`0x25a8803b9b611cc13d807829d73049cd803f6fca` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | DEXAdapter<br>`0x3026eb2097468fcdc5387af73379948f8aa0a860` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | DEXAdapter<br>`0x6408e1ba03914aa481051354a57e1aab0eed8044` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | DEXAdapter<br>`0xc43ee8ca1721bc120b702d95467d3e02773f2eb9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | DEXAdapterV2<br>`0x88858930b3f1946a5c41a5ded7b5335431d5de8d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | DEXAdapterV3<br>`0x28764a27139d7241c9198c43720a0df1c18e50ef` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | ExchangeIssuanceIcEth<br>`0x40e8e58052272496dcf42953cf7e699b522fe8a3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | ExchangeIssuanceIcEth<br>`0x945db358c69a4be68ab5b835f2f56af1ccf4e2d1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | ExchangeIssuanceLeveraged<br>`0x2f2c59212d1d0468efa456fe51f49ed4a5538d64` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | ExchangeIssuanceLeveraged<br>`0x981b21a2912a427f491f1e5b9bf9cca16fa794e1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | FeeSplitExtension<br>`0x026aa079c4f9cff80b0521b64f8f2d8ccf135518` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | FeeSplitExtension<br>`0x04d58e7051e7f0ea4b01bb648d61f4a641b2c08b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | FeeSplitExtension<br>`0x0d5f4ca9f12b0b0829013c3c48fb1a9dd0ecdfca` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | FeeSplitExtension<br>`0x0daf2df0102490de2d09bf064e0448b619077ffd` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | FeeSplitExtension<br>`0x0e716b2a9ebdfd9c320af2fce575543d2fcc3d5f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | FeeSplitExtension<br>`0x1554a67f2e929678983c7a702b1599ff5f5070c9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | FeeSplitExtension<br>`0x1b7d68134ef476b7795b22a4d76f82c220c54e74` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | FeeSplitExtension<br>`0x1d8e281fad631e0b4024448711a00ac57333d185` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | FeeSplitExtension<br>`0x23aa81ce19043596b5bb55a34a8040b393990a8b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | FeeSplitExtension<br>`0x2573f27d12225f6d16ddf6ed5da2bfb28ecc28aa` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | FeeSplitExtension<br>`0x5d647663a73ffc34a6ec2aa48e01524ccb39372c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | FeeSplitExtension<br>`0x5e568e47c52e8af9db47e52d0ae7c740f8f85bf1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | FeeSplitExtension<br>`0x623c7bd613bd03a4d28ba2d1bc28ecb8d76e7dee` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | FeeSplitExtension<br>`0x7ec2ac6f32fc863942858a5257fbec3a67d6b41c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | FeeSplitExtension<br>`0x7febfc6b4d7323c56481885d69bc3e7092d299d0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | FeeSplitExtension<br>`0x83adeee88e970559d22af9ec8dc1a3bd540b4491` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | FeeSplitExtension<br>`0x87a120fd11232b8c59714c40a62e962fa549e6ca` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | FeeSplitExtension<br>`0x978177639ff156ea918a1075755b485951cd373c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | FeeSplitExtension<br>`0xa8a23b678e8b184f653ee8ee9dcbaa933c2cfaec` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | FeeSplitExtension<br>`0xa9c13c061acaa58aa9691806dc6bcc5ae5f97bc3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | FeeSplitExtension<br>`0xab7eba33346873469edafd8d6416bb85f506b82e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | FeeSplitExtension<br>`0xac761f0289712151b9543f4511ba76fa434ab05a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | FeeSplitExtension<br>`0xafe68a642af7698a3ff3d70b0f73bedb78995814` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | FeeSplitExtension<br>`0xb9a238b3f76409fa8fa2b646cc998b633ee51987` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | FeeSplitExtension<br>`0xc62e39d1f5232f154b7ccd3c6234a9c893bf9563` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | FeeSplitExtension<br>`0xcb63b902d4e0766d25e1ba0e7f1b1bf3f14bfdaf` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | FeeSplitExtension<br>`0xd17300e6f0748952cad9492b51441ad5204775dd` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | FeeSplitExtension<br>`0xd5a152a058ede7331b9ad3521bad03d4ccfd6bb9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | FeeSplitExtension<br>`0xe833c90f4d07650ac1d8a915c2c0fddbedc1ec3a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | FeeSplitExtension<br>`0xf1872a098afa193e6f1a4307c54624f28b8e8f51` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | FixedRebalanceExtension<br>`0x5f98cbb7ac52fa5ef3660b7ab34e03398b48efbb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | FixedRebalanceExtension<br>`0x9fe734a1f107b7d46d73b8c2383d688f5626ad84` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | FlashMint4626<br>`0xe483701d4f8c3b9b7b662fee2543503d6d127f53` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | FlashMint4626<br>`0xf5cf956018c111be7d5ce4240960c1164179aca9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | FlashMintDex<br>`0xcde2657a980a8e2b7c5957d30b2ac768cb6d277e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | FlashMintHyETH<br>`0x1c19c605cb071e22a0a46bc9e24b5ce64a28d7ad` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | FlashMintHyETH<br>`0xc290c371f5a36970aff00bbffdbfadd81820109a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | FlashMintHyETHV2<br>`0x940ecb16416fe52856e8653b2958bfd556aa6a7e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | FlashMintHyETHV3<br>`0xcb1eea349f25288627f008c5e2a69b684bdddf49` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | FlashMintLeveraged<br>`0x45c00508c14601fd1c1e296eb3c0e3eeedca45d0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | FlashMintLeveraged<br>`0x63bcc10ec90dd4cfe9a9931b5216cc7475bf863e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | FlashMintLeveraged<br>`0x7663043ebe3f9f5e53cbf56f9f36fa5233ef055d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | FlashMintLeveraged<br>`0x9d116b1f35f396df97bd7ba457d806de0f1d46ed` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | FlashMintLeveraged<br>`0xb4354ddfc4dda5b1244aa80caf210eeb6d96db48` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | FlashMintNAV<br>`0x62f160391d2f1e3a176f32f51ade6ed8bb2ea1cf` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | FlashMintNotional<br>`0x9da9992b5d01bd0efb1ee8310e8011dc837bd476` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | FlashMintWrapped<br>`0x5c0d0a9a0c3a0a5b591496ff894686893b69faa2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | FlashMintWrapped<br>`0x7dde626de8ce73229838b5c2f9a71bc7ac207801` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | FlexibleLeverageStrategyExtension<br>`0x097afae7b0e0ea0880c8dba7475c12a1f3d2911f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | FlexibleLeverageStrategyExtension<br>`0x9ba41a2c5175d502ea52ff9a666f8a4fc00c00a1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | FlexibleLeverageStrategyExtension<br>`0xc0584e2865b366975cf548960f7bba37c685c610` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | FlexibleLeverageStrategyExtension<br>`0xfd4ea597e8346a6723fa4a06a31e4b6f7f37e9ad` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | FLIRebalanceViewer<br>`0x14d9f0d529e80747b128ac2b145e4208e44e37eb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | FLIRebalanceViewer<br>`0x4632158a6f58b8eb2aa6f92428f23d7f6de763ee` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | FLIRebalanceViewer<br>`0x517f76db91931d48cbbe5d8ce82d953e9490efa7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | FLIRebalanceViewer<br>`0x8f45177e4ca1f996bd6c830b7e06eb3308536217` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | OptimisticAuctionRebalanceExtensionV1<br>`0x4677f9eac72e10469949d73d8ef71883ce510732` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | OptimisticAuctionRebalanceExtensionV1<br>`0xf0d343fd94ac44ef6b8baae8db3917d985c2cec7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | ProtocolViewer<br>`0x6b65c4760f56ea89a21193af5b909395766ef2e5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x69bdb276a17dd90f9d3a545944ccb20e593ae8e3` |
| candidate review | PrtFeeSplitExtension<br>`0x43c3ef32e52f17777789c71002ef4a887df90613` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | SetToken<br>`0x02ec0c9e6d3c08b8fb12fec51ccba048afbc36a6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x69bdb276a17dd90f9d3a545944ccb20e593ae8e3` |
| candidate review | SetToken<br>`0x48ccc6937c62609f20376901535e00980e3bbd0f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x69bdb276a17dd90f9d3a545944ccb20e593ae8e3` |
| candidate review | SetToken<br>`0x58222dd0a3d6de911b067b52c45f974d03163a4a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x69bdb276a17dd90f9d3a545944ccb20e593ae8e3` |
| candidate review | SetToken<br>`0xf860f90e1f55e3528682e18850612cbb45bbf1bc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x69bdb276a17dd90f9d3a545944ccb20e593ae8e3` |
| candidate review | SetToken<br>`0xfa10e13fe555760a5297dc14eb6562a1a53e4e37` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x69bdb276a17dd90f9d3a545944ccb20e593ae8e3` |
| candidate review | SetTokenCreator<br>`0x2758bf6af0ec63f1710d3d7890e1c263a247b75e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | SetTokenCreator<br>`0x86a73e16d2dece40b378b6af645a93678214ef43` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x69bdb276a17dd90f9d3a545944ccb20e593ae8e3` |
| candidate review | SignedSnapshotStakingPool<br>`0x2881cc01aad96c70319f308906d49c3784112e0d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | SignedSnapshotStakingPool<br>`0x3329efe11a11f63ad2cae877df640e377024cd42` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | SignedSnapshotStakingPool<br>`0x52ceedd6d765e69c6ec20321aa49956872913886` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | SignedSnapshotStakingPool<br>`0xbe03026716a4d5e0992f22a3e6494b4f2809a9c6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | StreamingFeeModule<br>`0x165edf07bb61904f47800e13f5120e64c4b9a186` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| candidate review | StreamingFeeModule<br>`0x3d8d14b7efb8e342189ee14c3d40dce005eb901b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x69bdb276a17dd90f9d3a545944ccb20e593ae8e3` |
| contamination review | AirdropModule<br>`0x09b9e7c7e2daf40fcb286fe6b863e517d5d5c40f` | non_address_book | unknown | unknown | verified | n/a | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| contamination review | Arb<br>`0x08d7541094d7eeba614d66fc6402858346d30a15` | non_address_book | unknown | unknown | verified | n/a | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| contamination review | AssetPairManager<br>`0x9f1846ad3cce3ff7d67a08b1461fac729eb1a33a` | non_address_book | unknown | unknown | verified | n/a | `0x69bdb276a17dd90f9d3a545944ccb20e593ae8e3` |
| contamination review | AuctionRebalanceModuleV1<br>`0x59d55d53a715b3b4581c52098bcb4075c2941dba` | non_address_book | unknown | unknown | verified | n/a | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| contamination review | BaseManagerV2<br>`0x0435b2d4a7bb66e9cccf70566bf16c6ca7880ed2` | non_address_book | unknown | unknown | verified | n/a | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| contamination review | BaseManagerV2<br>`0x386034fa078ca1022865f41bdd7d016aae4db5a3` | non_address_book | unknown | unknown | verified | n/a | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| contamination review | BasicIssuanceModule<br>`0x508910aa6ff3d029dc358dd0f775877a355ba35b` | non_address_book | unknown | unknown | verified | n/a | `0x69bdb276a17dd90f9d3a545944ccb20e593ae8e3` |
| contamination review | BinaryAllocator<br>`0x96229984a079e2701135928502755000afb34021` | non_address_book | unknown | unknown | verified | n/a | `0x69bdb276a17dd90f9d3a545944ccb20e593ae8e3` |
| contamination review | BoundedStepwiseExponentialPriceAdapter<br>`0xa178ba7300da06f0186a4f12ab7d1b7f1226bcc1` | non_address_book | unknown | unknown | verified | n/a | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| contamination review | BoundedStepwiseLinearPriceAdapter<br>`0x237f7bbe0b358415be84ab6d279d4338c0d026bb` | non_address_book | unknown | unknown | verified | n/a | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| contamination review | BoundedStepwiseLogarithmicPriceAdapter<br>`0xbafd0bc01d46302a2eb4c47b1880b86fd3143562` | non_address_book | unknown | unknown | verified | n/a | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| contamination review | ConstantPriceAdapter<br>`0x13c33656570092555bf27bdf53ce24482b85d992` | non_address_book | unknown | unknown | verified | n/a | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| contamination review | ERC4626WrapV2Adapter<br>`0x902d2282ab8e336bd1675bbe451ebdb3bf1a7c2e` | non_address_book | unknown | unknown | verified | n/a | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| contamination review | ExchangeIssuanceModule<br>`0x73df03b5436c84cf9d5a758fb756928dceaf19d7` | non_address_book | unknown | unknown | verified | n/a | `0xf3862af14cbb4d9b781e41a3d4d74e7c2cdb73e2` |
| contamination review | FTCVesting<br>`0x0cafb769efeb5dc0af94386c2a14dd6504cadaf9` | non_address_book | unknown | unknown | verified | n/a | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| contamination review | GIMExtension<br>`0x3640a2f5938abf27308ad226ad515d3f8d5fab51` | non_address_book | unknown | unknown | verified | n/a | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| contamination review | GlobalIssuanceExtension<br>`0xf57ab05800a1c6b79a831726f9fdb62d7bc751b6` | non_address_book | unknown | unknown | verified | n/a | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| contamination review | GlobalStreamingFeeSplitExtension<br>`0x8e422e9964881746a68ffa0f6a6163c0100f3037` | non_address_book | unknown | unknown | verified | n/a | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| contamination review | GlobalTradeExtension<br>`0x6029f3f247fa87cf998ddf3c91fcb54c166c254c` | non_address_book | unknown | unknown | verified | n/a | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| contamination review | GlobalWrapExtension<br>`0x1de67be283e25e44da885b699c3aa47908103450` | non_address_book | unknown | unknown | verified | n/a | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| contamination review | GovernanceExtension<br>`0x30d98bc087aec7f7135e4ad4de51416c1577cafd` | non_address_book | unknown | unknown | verified | n/a | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| contamination review | IntermediateMigrationExtension<br>`0x9da195dbd9446c649b6cb6196d6cc460f277d907` | non_address_book | unknown | unknown | verified | n/a | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| contamination review | KyberNetworkWrapper<br>`0x9b3eb3b22dc2c29e878d7766276a86a8395fb56d` | non_address_book | unknown | unknown | verified | n/a | `0xf3862af14cbb4d9b781e41a3d4d74e7c2cdb73e2` |
| contamination review | MACOStrategyManager<br>`0x7e2a181f5c21475b35d7e1954f30d0e7b196bc36` | non_address_book | unknown | unknown | verified | n/a | `0x69bdb276a17dd90f9d3a545944ccb20e593ae8e3` |
| contamination review | MACOStrategyManagerV2<br>`0x9d622389970120c38fa491b6d1ca5328237889e5` | non_address_book | unknown | unknown | verified | n/a | `0x69bdb276a17dd90f9d3a545944ccb20e593ae8e3` |
| contamination review | MigrationExtension<br>`0x1e0aa0508dfedb73110fa0339dc6aaddd64e506f` | non_address_book | unknown | unknown | verified | n/a | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| contamination review | MovingAverageOracleV2<br>`0x3f49c269fd141bd4b9d6de943c2da7fd180de453` | non_address_book | unknown | unknown | verified | n/a | `0x69bdb276a17dd90f9d3a545944ccb20e593ae8e3` |
| contamination review | NavIssuanceModule<br>`0x33f6184b1695a8fe344ea6b7de11aa35a74ec300` | non_address_book | unknown | unknown | verified | n/a | `0x69bdb276a17dd90f9d3a545944ccb20e593ae8e3` |
| contamination review | NotionalV2Mock<br>`0x8d97aad71c0ebbcf0099d0435be1b355edc49ce5` | non_address_book | unknown | unknown | verified | n/a | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| contamination review | OneInchExchangeAdapter<br>`0x6da72bef02824eb8da9c572727052d125563b0b0` | non_address_book | unknown | unknown | verified | n/a | `0x69bdb276a17dd90f9d3a545944ccb20e593ae8e3` |
| contamination review | OtcEscrow<br>`0x055c8bd48ad3d2d3d486453c32a6fbeba86404db` | non_address_book | unknown | unknown | verified | n/a | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| contamination review | RebalanceAuctionModule<br>`0xe23fb31dd2edacebf7d92720358bb92445f47fdb` | non_address_book | unknown | unknown | verified | n/a | `0x69bdb276a17dd90f9d3a545944ccb20e593ae8e3` |
| contamination review | RebalancingSetExchangeIssuanceModule<br>`0xd4240987d6f92b06c8b5068b1e4006a97c47392b` | non_address_book | unknown | unknown | verified | n/a | `0x69bdb276a17dd90f9d3a545944ccb20e593ae8e3` |
| contamination review | RebalancingSetTokenFactory<br>`0x15518cdd49d83471e9f85cdcfbd72c8e2a78dde2` | non_address_book | unknown | unknown | verified | n/a | `0x69bdb276a17dd90f9d3a545944ccb20e593ae8e3` |
| contamination review | ReinvestmentExtensionV1<br>`0xd57559fc98808dee07877117383d5b748a304727` | non_address_book | unknown | unknown | verified | n/a | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| contamination review | RSITrendingTrigger<br>`0x959de129befb19272df731262dce724760815c20` | non_address_book | unknown | unknown | verified | n/a | `0x69bdb276a17dd90f9d3a545944ccb20e593ae8e3` |
| contamination review | SetTokenFactory<br>`0xe1cd722575801fe92eeef2ca23396557f7e3b967` | non_address_book | unknown | unknown | verified | n/a | `0xf3862af14cbb4d9b781e41a3d4d74e7c2cdb73e2` |
| contamination review | SetValuer<br>`0x38b8fc4899b21b56b6a729c03bf266b090cfe9d7` | non_address_book | unknown | unknown | verified | n/a | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| contamination review | SetValuer<br>`0x6f4d1397c15c8ab6ea218f80f397acb71835654f` | non_address_book | unknown | unknown | verified | n/a | `0x69bdb276a17dd90f9d3a545944ccb20e593ae8e3` |
| contamination review | SingleIndexModule<br>`0xf5257fe1cf608affd6025990b09fad66e1179f18` | non_address_book | unknown | unknown | verified | n/a | `0x69bdb276a17dd90f9d3a545944ccb20e593ae8e3` |
| contamination review | StakeWiseReinvestmentExtension<br>`0x1fcf74d4d0335095c02e1ca78ec55339c2ec927b` | non_address_book | unknown | unknown | verified | n/a | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| contamination review | SynthetixExchangeAdapter<br>`0x64177fd4dfad1a6cff95e1ebba403bb73c6a8e41` | non_address_book | unknown | unknown | verified | n/a | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| contamination review | TargetWeightWrapExtension<br>`0xc9a8ae9f29c1e77bb05a8a4d3576998a9de56ff2` | non_address_book | unknown | unknown | verified | n/a | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| contamination review | TimeSeriesFeed<br>`0xb7b2977f1f84629000bf572b466b43ba2b934836` | non_address_book | unknown | unknown | verified | n/a | `0x69bdb276a17dd90f9d3a545944ccb20e593ae8e3` |
| contamination review | TradeModule<br>`0x11259f09b95b7dbded5b7bca12d9daa2d816d91f` | non_address_book | unknown | unknown | verified | n/a | `0x69bdb276a17dd90f9d3a545944ccb20e593ae8e3` |
| contamination review | WrapExtension<br>`0x07e15384c86cd51c76d9201c7c2c047e62c9ae6d` | non_address_book | unknown | unknown | verified | n/a | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| contamination review | WrapModule<br>`0x67eddd251e914a7a1a19bda09295a28cc328defe` | non_address_book | unknown | unknown | verified | n/a | `0x69bdb276a17dd90f9d3a545944ccb20e593ae8e3` |
| contamination review | WrapModule<br>`0xbe4aede1694aff7f1827229870f6cf3d9e7a999c` | non_address_book | unknown | unknown | verified | n/a | `0x69bdb276a17dd90f9d3a545944ccb20e593ae8e3` |
| contamination review | WrapModuleV2<br>`0x6604468512b3b85c58c4d818ccb69fba5bb7b809` | non_address_book | unknown | unknown | verified | n/a | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| contamination review | WrappedfCashFactoryMock<br>`0xa39f94fc8290ed03328b9fca82d07cae26ce2a37` | non_address_book | unknown | unknown | verified | n/a | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| contamination review | ZeroExApiAdapter<br>`0xd7a4244f3a17468f7b0568d6a43fde94b11c9c11` | non_address_book | unknown | unknown | verified | n/a | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| contamination review | ZeroExExchangeWrapper<br>`0x0acd0b5cf881cd8398ac563872209de1ce15df0f` | non_address_book | unknown | unknown | verified | n/a | `0x69bdb276a17dd90f9d3a545944ccb20e593ae8e3` |
| exact address book overlap | Controller<br>`0xa4c8d221d8bb851f83aadd0223a8900a6921a349` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x69bdb276a17dd90f9d3a545944ccb20e593ae8e3` |
| source verified unclassified | AirdropExtension<br>`0x68c4a3c3508f890c5097e82fb4b5e236c411f0d5` | non_address_book | unknown | unknown | verified | n/a | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| source verified unclassified | AirdropExtension<br>`0x7ffbf799f5bcb4e4c653420a6aa7e97600a588f9` | non_address_book | unknown | unknown | verified | n/a | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| source verified unclassified | AirdropExtension<br>`0xa899a46ff92158f1dc7f76c59d56ada13c2cc599` | non_address_book | unknown | unknown | verified | n/a | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| source verified unclassified | AssetLimitHook<br>`0x60eb77c551ceee40b93b1b2b6326ebbd322d1c2d` | non_address_book | unknown | unknown | verified | n/a | `0x69bdb276a17dd90f9d3a545944ccb20e593ae8e3` |
| source verified unclassified | AssetLimitHook<br>`0x8175e7d506c4b98a0bd6ad48bfd4431500342991` | non_address_book | unknown | unknown | verified | n/a | `0x69bdb276a17dd90f9d3a545944ccb20e593ae8e3` |
| source verified unclassified | AssetPairManager<br>`0xc932df239afa6b4e2846cd2a94567f0a105612f7` | non_address_book | unknown | unknown | verified | n/a | `0x69bdb276a17dd90f9d3a545944ccb20e593ae8e3` |
| source verified unclassified | AssetPairManager<br>`0xe9dc0b715bcaf79cb2dc5a0c01db5e8619733ce5` | non_address_book | unknown | unknown | verified | n/a | `0x69bdb276a17dd90f9d3a545944ccb20e593ae8e3` |
| source verified unclassified | BaseManagerV2<br>`0x0749ce17c983deb806d6b841c65b7359c3d5b104` | non_address_book | unknown | unknown | verified | n/a | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| source verified unclassified | BaseManagerV2<br>`0x0fffd15993a0b3f49d21a31d14eb52cc6d44f688` | non_address_book | unknown | unknown | verified | n/a | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| source verified unclassified | BaseManagerV2<br>`0x15a61e856bde2b42a1cc9abcca1815786b21d724` | non_address_book | unknown | unknown | verified | n/a | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| source verified unclassified | BaseManagerV2<br>`0x1caff525d22e86c515a9a7eccb7005c97635120a` | non_address_book | unknown | unknown | verified | n/a | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| source verified unclassified | BaseManagerV2<br>`0x2eb7200dff5b21b3a823074725ed7b035446016a` | non_address_book | unknown | unknown | verified | n/a | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| source verified unclassified | BaseManagerV2<br>`0x3446429a63abb4eb4fa9c6ef1754338081e1070c` | non_address_book | unknown | unknown | verified | n/a | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| source verified unclassified | BaseManagerV2<br>`0x354c33ff70020f81718b57b2802174659f6cb99f` | non_address_book | unknown | unknown | verified | n/a | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| source verified unclassified | BaseManagerV2<br>`0x36873e6b93cf7a8f4b03e21ce7b32a10ac02c50b` | non_address_book | unknown | unknown | verified | n/a | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| source verified unclassified | BaseManagerV2<br>`0x3b439351177fc9d7b5fd11aedcc177d73f989341` | non_address_book | unknown | unknown | verified | n/a | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| source verified unclassified | BaseManagerV2<br>`0x3df4826c9b9c1c7c5bf692d1c859ccd84dc193fa` | non_address_book | unknown | unknown | verified | n/a | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| source verified unclassified | BaseManagerV2<br>`0x3f74f91643305bb0cd237fb2a866383f4d573f5f` | non_address_book | unknown | unknown | verified | n/a | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| source verified unclassified | BaseManagerV2<br>`0x402d19089b797d60c366bc38a8cff0712d2f4947` | non_address_book | unknown | unknown | verified | n/a | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| source verified unclassified | BaseManagerV2<br>`0x4039703deb28748dbf155f8567fb5f0ca2ddd742` | non_address_book | unknown | unknown | verified | n/a | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| source verified unclassified | BaseManagerV2<br>`0x446bc32a80caaf7630142cc16822fb07a4cd2f16` | non_address_book | unknown | unknown | verified | n/a | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| source verified unclassified | BaseManagerV2<br>`0x49c0675084876800520f506facdd955d13fd571e` | non_address_book | unknown | unknown | verified | n/a | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| source verified unclassified | BaseManagerV2<br>`0x540edc50880a393772ff9b87f04a29284849146c` | non_address_book | unknown | unknown | verified | n/a | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| source verified unclassified | BaseManagerV2<br>`0x55569975f6994ca7fae5f190e1244adf1a50940b` | non_address_book | unknown | unknown | verified | n/a | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| source verified unclassified | BaseManagerV2<br>`0x56a6d9e3143f8ed4f93a01ea358f755dfccccbe0` | non_address_book | unknown | unknown | verified | n/a | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| source verified unclassified | BaseManagerV2<br>`0x56b7bbde39cdcb2b62e610a8523a8af81806b724` | non_address_book | unknown | unknown | verified | n/a | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| source verified unclassified | BaseManagerV2<br>`0x59fedba373c52dc06501bcbea4948d58955b6364` | non_address_book | unknown | unknown | verified | n/a | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| source verified unclassified | BaseManagerV2<br>`0x6496cfabbf0b147013ec01249cd66243b7bc3090` | non_address_book | unknown | unknown | verified | n/a | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| source verified unclassified | BaseManagerV2<br>`0x64fc858f406a6e0a9e14023360cdb81dee0bee1d` | non_address_book | unknown | unknown | verified | n/a | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| source verified unclassified | BaseManagerV2<br>`0x6654c5561662f2e229c61cc4671be92336c496b9` | non_address_book | unknown | unknown | verified | n/a | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| source verified unclassified | BaseManagerV2<br>`0x688488844fc87ee09d32f9d9de6a20399b6bdace` | non_address_book | unknown | unknown | verified | n/a | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| source verified unclassified | BaseManagerV2<br>`0x6a7eb75c50ddda0ffa90b6577da938a6f0e35240` | non_address_book | unknown | unknown | verified | n/a | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| source verified unclassified | BaseManagerV2<br>`0x70fcdac8afc454be5550a5187ad348efd7631e28` | non_address_book | unknown | unknown | verified | n/a | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| source verified unclassified | BaseManagerV2<br>`0x718174da0651cdc853555ff40a9eef36ecb15dc6` | non_address_book | unknown | unknown | verified | n/a | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| source verified unclassified | BaseManagerV2<br>`0x7c240ddccdcc1b44651fdc6422aad2ad690314a2` | non_address_book | unknown | unknown | verified | n/a | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| source verified unclassified | BaseManagerV2<br>`0x8300c6b3e2640c61c2c5b91342d0178ee5f2bc73` | non_address_book | unknown | unknown | verified | n/a | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| source verified unclassified | BaseManagerV2<br>`0x8327ff3461c8a6ea32c5c0d5280dd8ae663682b4` | non_address_book | unknown | unknown | verified | n/a | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| source verified unclassified | BaseManagerV2<br>`0xa296286d585e59a04697b9ac0b60ef61a9098e2f` | non_address_book | unknown | unknown | verified | n/a | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| source verified unclassified | BaseManagerV2<br>`0xa420cf4e06cf28dafbdb436ac444920634f1c766` | non_address_book | unknown | unknown | verified | n/a | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| source verified unclassified | BaseManagerV2<br>`0xa7d11fa4b1ae979d2f8850aa33799a0bad253907` | non_address_book | unknown | unknown | verified | n/a | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| source verified unclassified | BaseManagerV2<br>`0xa96ca9529a0422617f89526b91ca675092ca2d02` | non_address_book | unknown | unknown | verified | n/a | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| source verified unclassified | BaseManagerV2<br>`0xb079ffbc3caf139731bf602cd3749994a06a8841` | non_address_book | unknown | unknown | verified | n/a | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| source verified unclassified | BaseManagerV2<br>`0xb0a058e8d82d56b6a169a30993d171214051ef6e` | non_address_book | unknown | unknown | verified | n/a | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| source verified unclassified | BaseManagerV2<br>`0xb30f3fd05b8d1afd9b3634dd2baff2022c9f2fd0` | non_address_book | unknown | unknown | verified | n/a | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |
| source verified unclassified | BaseManagerV2<br>`0xb97f5a34696adf30db822612379235c3c53b714a` | non_address_book | unknown | unknown | verified | n/a | `0x37e6365d4f6ae378467b0e24c9065ce5f06d70bf` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 120 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 214 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
