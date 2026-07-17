# Agentic Audit Brief: Index Coop

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 7 (0 matched; 7 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Index Coop (`index-coop`)
- Website: [https://www.indexcoop.com/](https://www.indexcoop.com/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, ethereum, polygon
- Contract surface: 265 unique implementations (616 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $8,716,769.23
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Index Coop. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 16 contract row(s) across arbitrum, base, ethereum, polygon. Structural roles: 9 core, 7 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 16
- Structural roles: core (9), unclassified (7)
- Contract kinds: contract (16)
- Detected standards: erc20 (8), ownable (1)
- Frameworks: openzeppelin (9)
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 16; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 25 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 240 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 4
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/132
- Verified + Unaudited implementations: 132
- Verified by bytecode match: 0
- Unverified implementations: 133
- Unique implementations: 265
- Raw deployments: 616
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/indexcoop/information))
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-09 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 5 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (132)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveLeverageModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x251bd1d42df1f153d86a5ba2305faade4d5f51dc` | ⚠️ Unaudited |
| AaveLeverageStrategyExtension | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6484a64e2ea165943c734dc498070b5902cbc2b` | ⚠️ Unaudited |
| AaveV3LeverageModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: ethereum `0x9d08cced85a68bf8a19374ed4b5753ae3be9f74f`; base `0xc06a6e4d9d5ff9d64bd19fc243ad9b6e5a672699`; arbitrum `0x6d1b74e18064172d028c5ee7af5d0ccc26f2a4ae` | ⚠️ Unaudited |
| AirdropExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 9 deployments: ethereum `0x07a578e02db4e1d518ee1856580c7ac0058c03c9`; ethereum `0x0fba2bc72038ce9b932fc299c21e53a886e59183`; ethereum `0x102829861cc9df5dc8c378f8041ab033d0655fa3`; ethereum `0x2cf29fca4273aa9706330626c9a2e1dca9cbcac1`; ethereum `0x63bf66227432f1eb46534118815045a1048cc0eb`; ethereum `0x68c4a3c3508f890c5097e82fb4b5e236c411f0d5`; ethereum `0x7ffbf799f5bcb4e4c653420a6aa7e97600a588f9`; ethereum `0xa899a46ff92158f1dc7f76c59d56ada13c2cc599`; ethereum `0xea381e5b73cd416e577a36a498b3fa78dd21df5f` | ⚠️ Unaudited |
| AirdropModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09b9e7c7e2daf40fcb286fe6b863e517d5d5c40f` | ⚠️ Unaudited |
| AmmModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: polygon `0x0104a6fa30540dc1d9f45d2797f05eea79304525`; polygon `0x0ceeec5d1d5ad794a50675f52c826fb105269f91`; polygon `0x53d09c1d39085f3aaf931ddf3df505ad9be06349` | ⚠️ Unaudited |
| AMMSplitter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: polygon `0x59fedba373c52dc06501bcbea4948d58955b6364`; polygon `0xd8df81bd8e51b83a7afd88f8c88f9cf0c93f8a11`; polygon `0xfe4f9277415796f6a2c8e638419f5b2630c732c8` | ⚠️ Unaudited |
| ApeRebalanceExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 10 deployments: polygon `0x87dfdbd1ec1225911ba657444ce46915b4c03e44`; polygon `0x9cb703cf5d0a6bbbf13f04fa5a5e2af087fdda47`; polygon `0xa4cae37e7e6412abb38aeddddb8c12675e8b9915`; polygon `0xd0173316b87cc7905c29c8ea6359c2a5d0d1fbc4`; polygon `0xd6a2a3ad490509fad3c7f46fdc5ebc282e434265`; polygon `0xdde61f8db594fbdba406ef5df5217d226ae09417`; polygon `0xebbf9942d50b235fd949fdc36d6bcd2d444be8f5`; polygon `0xecdbe5b6c30c1bd4080a37bb82d92408a40c1c9a`; polygon `0xfd4ea597e8346a6723fa4a06a31e4b6f7f37e9ad`; polygon `0xfe4532baea313f048a97937f35da2345d3437382` | ⚠️ Unaudited |
| Arb | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08d7541094d7eeba614d66fc6402858346d30a15` | ⚠️ Unaudited |
| AssetLimitHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x60eb77c551ceee40b93b1b2b6326ebbd322d1c2d`; ethereum `0x8175e7d506c4b98a0bd6ad48bfd4431500342991` | ⚠️ Unaudited |
| AssetPairManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x9f1846ad3cce3ff7d67a08b1461fac729eb1a33a`; ethereum `0xc932df239afa6b4e2846cd2a94567f0a105612f7`; ethereum `0xe9dc0b715bcaf79cb2dc5a0c01db5e8619733ce5` | ⚠️ Unaudited |
| AuctionRebalanceExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x2b5990df9212de51c6f6ccd2d651e6ba5158d01b`; ethereum `0x418a29d6697dcfc1fb6fad99760639164cf2092b`; ethereum `0x94caea398acc5931b1d32c548959a160ac37ff4a`; ethereum `0xa985e65341ddfd302dadd3c9e58494d27809ba84`; ethereum `0xacce49759e2e98b44de01be2498537c37f2597dc`; ethereum `0xeafb437e9e27e63c0c21e19e6b9603999bd72d26` | ⚠️ Unaudited |
| AuctionRebalanceModuleV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59d55d53a715b3b4581c52098bcb4075c2941dba` | ⚠️ Unaudited |
| BaseManagerV2 | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242579 | `0x4039703deb28748dbf155f8567fb5f0ca2ddd742` | ⚠️ Unaudited |
| BaseManagerV2 | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242582 | `0xa420cf4e06cf28dafbdb436ac444920634f1c766` | ⚠️ Unaudited |
| BaseManagerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 61 deployments: ethereum `0x0435b2d4a7bb66e9cccf70566bf16c6ca7880ed2`; ethereum `0x0749ce17c983deb806d6b841c65b7359c3d5b104`; ethereum `0x0fffd15993a0b3f49d21a31d14eb52cc6d44f688`; ethereum `0x15a61e856bde2b42a1cc9abcca1815786b21d724`; ethereum `0x1caff525d22e86c515a9a7eccb7005c97635120a`; ethereum `0x2eb7200dff5b21b3a823074725ed7b035446016a`; ethereum `0x3446429a63abb4eb4fa9c6ef1754338081e1070c`; ethereum `0x354c33ff70020f81718b57b2802174659f6cb99f`; ethereum `0x36873e6b93cf7a8f4b03e21ce7b32a10ac02c50b`; ethereum `0x386034fa078ca1022865f41bdd7d016aae4db5a3`; ethereum `0x3b439351177fc9d7b5fd11aedcc177d73f989341`; ethereum `0x3df4826c9b9c1c7c5bf692d1c859ccd84dc193fa`; ethereum `0x3f74f91643305bb0cd237fb2a866383f4d573f5f`; ethereum `0x402d19089b797d60c366bc38a8cff0712d2f4947`; ethereum `0x446bc32a80caaf7630142cc16822fb07a4cd2f16`; ethereum `0x49c0675084876800520f506facdd955d13fd571e`; ethereum `0x540edc50880a393772ff9b87f04a29284849146c`; ethereum `0x55569975f6994ca7fae5f190e1244adf1a50940b`; ethereum `0x56a6d9e3143f8ed4f93a01ea358f755dfccccbe0`; ethereum `0x56b7bbde39cdcb2b62e610a8523a8af81806b724`; ethereum `0x59fedba373c52dc06501bcbea4948d58955b6364`; ethereum `0x6496cfabbf0b147013ec01249cd66243b7bc3090`; ethereum `0x64fc858f406a6e0a9e14023360cdb81dee0bee1d`; ethereum `0x6654c5561662f2e229c61cc4671be92336c496b9`; ethereum `0x688488844fc87ee09d32f9d9de6a20399b6bdace`; ethereum `0x6a7eb75c50ddda0ffa90b6577da938a6f0e35240`; ethereum `0x70fcdac8afc454be5550a5187ad348efd7631e28`; ethereum `0x718174da0651cdc853555ff40a9eef36ecb15dc6`; ethereum `0x7c240ddccdcc1b44651fdc6422aad2ad690314a2`; ethereum `0x8300c6b3e2640c61c2c5b91342d0178ee5f2bc73`; ethereum `0x8327ff3461c8a6ea32c5c0d5280dd8ae663682b4`; ethereum `0xa296286d585e59a04697b9ac0b60ef61a9098e2f`; ethereum `0xa7d11fa4b1ae979d2f8850aa33799a0bad253907`; ethereum `0xa96ca9529a0422617f89526b91ca675092ca2d02`; ethereum `0xb079ffbc3caf139731bf602cd3749994a06a8841`; ethereum `0xb0a058e8d82d56b6a169a30993d171214051ef6e`; ethereum `0xb30f3fd05b8d1afd9b3634dd2baff2022c9f2fd0`; ethereum `0xb97f5a34696adf30db822612379235c3c53b714a`; ethereum `0xbcdbfbdcae2a73e1a3b107c390c745243025d78a`; ethereum `0xc06e644b7ba79cb0ef57924d49bfdb93d59007d2`; ethereum `0xcd483f4225d6246758dc5bb78e832ec054918220`; ethereum `0xd43a17cbd9cca94aabcb6268132edb282f05e876`; ethereum `0xd9818329a580a7799b74798cbdbcc8f080241a67`; ethereum `0xdfb1e595d16c253487f9580208a76d9ca322b895`; ethereum `0xe7736b5ea8433d6e741506920dcf84181a6b2e03`; ethereum `0xef754fc792d2dab75619bd7b9750fc8428585769`; ethereum `0xef76a73ce47138a261ccfe76615cd8d3697a6993`; ethereum `0xfdb765cb074fc95a80800dff07e5fe18c7fd89f3`; polygon `0x0019f3a495c85187b82782870875e367459b6ffb`; polygon `0x28d1b4f13ba91d0e8510ef291838b9046a8645fc`; polygon `0x2baa560cc46ef3e82c951b8bd44a7b49a69122ec`; polygon `0x3b439351177fc9d7b5fd11aedcc177d73f989341`; polygon `0x3e6adec44f5271508e6a119bd4a3fecfdb87a012`; polygon `0x70fcdac8afc454be5550a5187ad348efd7631e28`; polygon `0x72bcb7ed85efbc78187cc0bd9d169643fc597992`; polygon `0x72c3f53d9d53334184b2e73cd43b53858e943a57`; polygon `0x8e0350d6361aa0c3744d9d0eb294b75a17bad42b`; polygon `0xa27310466bd3d3c2b3a05875979b143537059929`; polygon `0xb209b94e5361dec9bf6063651a37f52e48c66549`; polygon `0xb9d08e14c4afc1f9113e440eae42028e1377a869`; polygon `0xe394ce17e378a77049d0c34385cc551b72db7df0` | ⚠️ Unaudited |
| BaseManagerV2 | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-242586 | `0x2622c4bb67992356b3826b5034bb2c7e949ab12b` | ⚠️ Unaudited |
| BaseManagerV2 | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-242594 | `0x76fe46c9fe6317f73e7fef31346473652eebf3fa` | ⚠️ Unaudited |
| BaseManagerV2 | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-242597 | `0xc4a1bfbce706dc638268085335cef2398ecec23c` | ⚠️ Unaudited |
| BaseManagerV2 | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-242602 | `0xf41acb71f9af89546c133944141b400168fe2da1` | ⚠️ Unaudited |
| BasicIssuanceModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 5 deployments: ethereum `0x508910aa6ff3d029dc358dd0f775877a355ba35b`; ethereum `0xd8ef3cace8b4907117a45b0b125c68560532f94d`; polygon `0x000711e852a9b735b1813ebf367b75969c00439c`; polygon `0x055c8bd48ad3d2d3d486453c32a6fbeba86404db`; polygon `0x7903f301b95708b3e960cb151afe9052a4686c60` | ⚠️ Unaudited |
| BinaryAllocator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x96229984a079e2701135928502755000afb34021`; ethereum `0xd321a9118348caab17dadb83c60c888b043e8363` | ⚠️ Unaudited |
| BoundedStepwiseExponentialPriceAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa178ba7300da06f0186a4f12ab7d1b7f1226bcc1` | ⚠️ Unaudited |
| BoundedStepwiseLinearPriceAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x237f7bbe0b358415be84ab6d279d4338c0d026bb` | ⚠️ Unaudited |
| BoundedStepwiseLogarithmicPriceAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbafd0bc01d46302a2eb4c47b1880b86fd3143562` | ⚠️ Unaudited |
| BridgedSetToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3bdfb71894be66ab5233b2255603dc3e3e73418a` | ⚠️ Unaudited |
| Collectooors | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe969f2d82b2c1abf044203b081cb023e55a03ce` | ⚠️ Unaudited |
| ConstantPriceAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13c33656570092555bf27bdf53ce24482b85d992` | ⚠️ Unaudited |
| ConstantPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7561e6d8301cdac56787e203b06e98427a36b1e0` | ⚠️ Unaudited |
| Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 7 deployments: ethereum `0xa4c8d221d8bb851f83aadd0223a8900a6921a349`; ethereum `0xd2463675a099101e36d85278494268261a66603a`; ethereum `0xf1b12a7b1f0af744ed21eec7d3e891c48fd3c329`; polygon `0x3bb631604c802da5234784ec5c720f7942d5a8ce`; polygon `0x57b31c8818c375dee5f96542daaae71f74da0267`; polygon `0x8908ea1682c05c928e309d3edb977cfa940b9259`; polygon `0xdd84546f43c949e369460a3ca1241ca8e94b152f` | ⚠️ Unaudited |
| CTokenOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ca96e28b51cf78bb4faa778eb3aeaf40dc07980` | ⚠️ Unaudited |
| CustomOracleNavIssuanceModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2344674b23ad076908fd2396373cfe9cd48a1ba3`; polygon `0xeb3826bfc2fa9baf56ea3ea9771ecbfe5b0cd606` | ⚠️ Unaudited |
| DebtIssuanceModuleV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x04b59f9f09750c044d7cfbc177561e409085f0f3`; ethereum `0x515a09825228cf6c68a35fe9275fa38add58381c`; ethereum `0xa0a98eb7af028be00d04e46e1316808a62a8fd59`; polygon `0x53e6dce67765c11d3380840529da725cda808cb4`; polygon `0x663bc1be0ca08d5d5f88ccae5ce97ffdee737e51`; polygon `0x767bd21fff3ef3a3e6e4c5142962280e61e87e66` | ⚠️ Unaudited |
| DebtIssuanceModuleV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86b7c605c03b9bbb0f6a25fbbb63baf15d875193` | ⚠️ Unaudited |
| DelegatedManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb04d1dae75c0764e8ff5f835d2f0771101bee140` | ⚠️ Unaudited |
| DelegatedManagerFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38d8fa043913e8ef6466d01bef4af42cafa3b235` | ⚠️ Unaudited |
| DEXAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x25a8803b9b611cc13d807829d73049cd803f6fca`; ethereum `0xb7cc88a13586d862b97a677990de14a122b74598` | ⚠️ Unaudited |
| DEXAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x3026eb2097468fcdc5387af73379948f8aa0a860`; ethereum `0x6408e1ba03914aa481051354a57e1aab0eed8044`; ethereum `0xc43ee8ca1721bc120b702d95467d3e02773f2eb9`; polygon `0x3b7547bafa28cc82e1548755cbaa1cb0e1f7b3cb`; polygon `0x8a64b86b50ef7e4562f2222725ea391de1efd31a` | ⚠️ Unaudited |
| DEXAdapterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x88858930b3f1946a5c41a5ded7b5335431d5de8d` | ⚠️ Unaudited |
| DEXAdapterV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28764a27139d7241c9198c43720a0df1c18e50ef` | ⚠️ Unaudited |
| ERC4626Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x304a77c58607dd182a30288e7ef6c16cf2f51573`; ethereum `0x911b6bd3a85c3ef798580b09fc305dc7b846d9c9`; ethereum `0xd3ddc923f672c7b28f78d0a39e8385148d2f09c8` | ⚠️ Unaudited |
| ERC4626WrapV2Adapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x902d2282ab8e336bd1675bbe451ebdb3bf1a7c2e` | ⚠️ Unaudited |
| ExchangeIssuanceIcEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x40e8e58052272496dcf42953cf7e699b522fe8a3`; ethereum `0x945db358c69a4be68ab5b835f2f56af1ccf4e2d1` | ⚠️ Unaudited |
| ExchangeIssuanceLeveraged | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 7 deployments: ethereum `0x2f2c59212d1d0468efa456fe51f49ed4a5538d64`; ethereum `0x981b21a2912a427f491f1e5b9bf9cca16fa794e1`; polygon `0x2e785f33540b5fb6a820ca4bae975d6279fa8bb6`; polygon `0x453420baa4d57dd10e0b386260a6845704d73425`; polygon `0x5631271895bc53f77ea8d3fa016d1c880cd690c7`; polygon `0x600d9950c6ecaef98cc42fa207e92397a6c43416`; polygon `0x783f299588ae89e9f44b230d6cd8e349fd01b16e` | ⚠️ Unaudited |
| ExchangeIssuanceLeveraged | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-242600 | `0xe86636f23b502b8746a72a1ed87d65f096e419db` | ⚠️ Unaudited |
| ExchangeIssuanceZeroEx | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242583 | `0xf42ecdc112365ff79a745b4cf7d4c266bd6e4b25` | ⚠️ Unaudited |
| ExchangeIssuanceZeroEx | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 5 deployments: ethereum `0x8760fcd90c82e1e95e55047b6b6a0f22dc07d7d1`; ethereum `0x9d648e5564b794b918d99c84b0fbf4b0bf36ce45`; polygon `0x0f5c21d4929f6f17119f43b0c51e665f12367a19`; polygon `0x79530caa46b1bb1cdd1b19e418af4d7347c5fcdf`; polygon `0xf2f4d035166df6412cafdc177d5f6f8730c2ef19` | ⚠️ Unaudited |
| FeeSplitExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 44 deployments: ethereum `0x026aa079c4f9cff80b0521b64f8f2d8ccf135518`; ethereum `0x04d58e7051e7f0ea4b01bb648d61f4a641b2c08b`; ethereum `0x0d5f4ca9f12b0b0829013c3c48fb1a9dd0ecdfca`; ethereum `0x0daf2df0102490de2d09bf064e0448b619077ffd`; ethereum `0x0e716b2a9ebdfd9c320af2fce575543d2fcc3d5f`; ethereum `0x1554a67f2e929678983c7a702b1599ff5f5070c9`; ethereum `0x1b7d68134ef476b7795b22a4d76f82c220c54e74`; ethereum `0x1d8e281fad631e0b4024448711a00ac57333d185`; ethereum `0x23aa81ce19043596b5bb55a34a8040b393990a8b`; ethereum `0x2573f27d12225f6d16ddf6ed5da2bfb28ecc28aa`; ethereum `0x5d647663a73ffc34a6ec2aa48e01524ccb39372c`; ethereum `0x5e568e47c52e8af9db47e52d0ae7c740f8f85bf1`; ethereum `0x623c7bd613bd03a4d28ba2d1bc28ecb8d76e7dee`; ethereum `0x7ec2ac6f32fc863942858a5257fbec3a67d6b41c`; ethereum `0x7febfc6b4d7323c56481885d69bc3e7092d299d0`; ethereum `0x83adeee88e970559d22af9ec8dc1a3bd540b4491`; ethereum `0x87a120fd11232b8c59714c40a62e962fa549e6ca`; ethereum `0x978177639ff156ea918a1075755b485951cd373c`; ethereum `0xa8a23b678e8b184f653ee8ee9dcbaa933c2cfaec`; ethereum `0xa9c13c061acaa58aa9691806dc6bcc5ae5f97bc3`; ethereum `0xab7eba33346873469edafd8d6416bb85f506b82e`; ethereum `0xac761f0289712151b9543f4511ba76fa434ab05a`; ethereum `0xafe68a642af7698a3ff3d70b0f73bedb78995814`; ethereum `0xb9a238b3f76409fa8fa2b646cc998b633ee51987`; ethereum `0xc62e39d1f5232f154b7ccd3c6234a9c893bf9563`; ethereum `0xcb63b902d4e0766d25e1ba0e7f1b1bf3f14bfdaf`; ethereum `0xd17300e6f0748952cad9492b51441ad5204775dd`; ethereum `0xd5a152a058ede7331b9ad3521bad03d4ccfd6bb9`; ethereum `0xe833c90f4d07650ac1d8a915c2c0fddbedc1ec3a`; ethereum `0xf1872a098afa193e6f1a4307c54624f28b8e8f51`; polygon `0x2ce6d7813ed783ffc7d811e435294221291b00e8`; polygon `0x460ef681713448c50392824317fc2d883b722812`; polygon `0x5295e18c27714da0cda79b8be9bdd08349a39fb0`; polygon `0x5e38f84bfdee7058c311c80fb79229d301efe121`; polygon `0x996d0a7d0fa43a9d911a051b53ef661f8260a487`; polygon `0xa08ad24577e74b850e1e8bea12a706f70fbbc022`; polygon `0xadfb2fbde79f579c617b8b03ce1bb7594495554e`; polygon `0xb994cfcd23047393530883ac8a004bd30c8a5164`; polygon `0xc6b3b4624941287bb7bdd8255302c1b337e42194`; polygon `0xd2463675a099101e36d85278494268261a66603a`; polygon `0xdeb6ab8d6e4696d7bd4c6eb4a5ea4f2470f74269`; polygon `0xe6484a64e2ea165943c734dc498070b5902cbc2b`; polygon `0xea381e5b73cd416e577a36a498b3fa78dd21df5f`; polygon `0xf8db5864b18522c78311dd0ca374cd01cf08e549` | ⚠️ Unaudited |
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
| GeneralIndexModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x5be31fa95cdb9949436ffe8e270303b57cceee67`; polygon `0x7b24b155a64120443019ce092cc36d2df33f6e8a` | ⚠️ Unaudited |
| GIMExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x3640a2f5938abf27308ad226ad515d3f8d5fab51`; ethereum `0x52b062eb0a832237543cb6fb23a6efb3ac2a5865`; ethereum `0x5d5f7b965833470a65817558c167420e6c09286e`; ethereum `0x85bd9a2105588c3d0c65d8150c63e2da4391aad8`; ethereum `0x86971b62537416812a30c9ac30a6eaea29f87ff3`; ethereum `0x9737c658272e66faad39d7ad337789ee6d54f500`; ethereum `0x984d92dd094561c4ec4e994c7b4e089b3824516f`; ethereum `0xdfdbab0058c4cb7d3520abeee87fc94b1504b5ef` | ⚠️ Unaudited |
| GlobalIssuanceExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf57ab05800a1c6b79a831726f9fdb62d7bc751b6` | ⚠️ Unaudited |
| GlobalStreamingFeeSplitExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e422e9964881746a68ffa0f6a6163c0100f3037` | ⚠️ Unaudited |
| GlobalTradeExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6029f3f247fa87cf998ddf3c91fcb54c166c254c` | ⚠️ Unaudited |
| GlobalWrapExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1de67be283e25e44da885b699c3aa47908103450` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | non_address_book | standard_proxy_or_library (excluded) | 2 | arbitrum | n/a | 2 deployments: arbitrum `0x19fa8783f2b57f3ec6c9542926a06698e30ef7b4`; arbitrum `0x40fb5267fd724a040b46ddce59f25e1229e61d32` | ⚠️ Unaudited |
| GovernanceExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x30d98bc087aec7f7135e4ad4de51416c1577cafd`; ethereum `0x43a738aee5cf1052e935218886b60807e635e9a4`; ethereum `0xaf958f433c3ee060bcae34588fe510b44812defe` | ⚠️ Unaudited |
| HolonToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3c2e12f800d893b5a417cc3a1c5e412f0f38f80f` | ⚠️ Unaudited |
| ICManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32bb838c572faf6c7040a59c8f1ee699862ec9ee` | ⚠️ Unaudited |
| IntegrationRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 10 deployments: ethereum `0x0b95e9976eda9b0403ad31bd57be29adef22473c`; ethereum `0x3e8939a2ab27d79a21ed86ef56bba62d82db0c2d`; ethereum `0x6655194c95d24b8b10b156dffce22a2c126e2e5a`; ethereum `0x80c286a99506d4e967cac83e22a28f5cd62ddae9`; ethereum `0x8a4795165214c5f0799623f67f20fb7361c49763`; ethereum `0x9e0d3430ae0389c1f0c55ec3740618f0fa2abbc6`; ethereum `0xb9083dee5e8273e54b9db4c31ba9d4ab7c6b28d3`; polygon `0x2152f99cca0d908696462d69bdca8a8df3d66abb`; polygon `0x5678dcbd8961032d94c669986097b1c0556283bb`; polygon `0xded5a5bea1f161bca071d97ab86fc7dcd1bb9057` | ⚠️ Unaudited |
| IntermediateMigrationExtension | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x9da195dbd9446c649b6cb6196d6cc460f277d907`; ethereum `0xa02a2f8c20761a6cd886871716320b16011c7a5e` | ⚠️ Unaudited |
| LegacyMakerOracleAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x792f4ea1d507e8b4153139c002913e1d580b4b28` | ⚠️ Unaudited |
| LinearizedPriceDataSource | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27323356c56049b47244680a2d76fc2fc050d2d2` | ⚠️ Unaudited |
| MACOStrategyManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e2a181f5c21475b35d7e1954f30d0e7b196bc36` | ⚠️ Unaudited |
| MACOStrategyManagerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d622389970120c38fa491b6d1ca5328237889e5` | ⚠️ Unaudited |
| ManagerCore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05ff5a01ff3695cb9c3128c0957ae8ceca16e6bc` | ⚠️ Unaudited |
| MedianOracleAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14a945d65c18a399e9dcd3e9ac6f6e246053510d` | ⚠️ Unaudited |
| MigrationExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1e0aa0508dfedb73110fa0339dc6aaddd64e506f`; ethereum `0xea40e48b616a8ef93fe19827dee3a73fb8a15cfc` | ⚠️ Unaudited |
| MorphoLeverageModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9534b6ec541ad182fbee2b0b01d1e4404765b8d7` | ⚠️ Unaudited |
| MovingAverageOracleV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x3f49c269fd141bd4b9d6de943c2da7fd180de453`; ethereum `0xb82f09acf40a0335bfec4fb5d3f4f78b3d0b217e`; ethereum `0xbb6c1c42a9d5c5126373b8fbf30929e365ccc0f7` | ⚠️ Unaudited |
| NavIssuanceModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 4 deployments: ethereum `0x33f6184b1695a8fe344ea6b7de11aa35a74ec300`; ethereum `0x7f72321de19a64da7767cba140f0d2c486af0113`; ethereum `0xcd34f1b92c6d0d03430ec4a410f758f7776a3504`; polygon `0x08d7541094d7eeba614d66fc6402858346d30a15` | ⚠️ Unaudited |
| NotionalTradeModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x600d9950c6ecaef98cc42fa207e92397a6c43416` | ⚠️ Unaudited |
| NotionalV2Mock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d97aad71c0ebbcf0099d0435be1b355edc49ce5` | ⚠️ Unaudited |
| OneInchExchangeAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x6da72bef02824eb8da9c572727052d125563b0b0`; ethereum `0xcbadafc252160a0d0ec7fb64a134b2f115b06b24`; ethereum `0xfff355af19e3ff51eec6874fc324db3ead43c772` | ⚠️ Unaudited |
| OptimisticAuctionRebalanceExtensionV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4677f9eac72e10469949d73d8ef71883ce510732`; ethereum `0xf0d343fd94ac44ef6b8baae8db3917d985c2cec7` | ⚠️ Unaudited |
| OracleProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97c3e595e8f80169266b5534e4d7a1bb58bb45ab` | ⚠️ Unaudited |
| OtcEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x055c8bd48ad3d2d3d486453c32a6fbeba86404db`; ethereum `0x2e45e774334d974beccab9ff6e21a1ecea82e9a3`; ethereum `0x5678dcbd8961032d94c669986097b1c0556283bb` | ⚠️ Unaudited |
| OwlNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 11 deployments: polygon `0x110aeba00ca743c9a3c2a3c7ba31dae95fb5eb29`; polygon `0x20d11e7741cd51a5c9d0f0321703ba752950885b`; polygon `0x244484ab9e9268a1ade2295ca4880ddabfa4f91c`; polygon `0x3640a2f5938abf27308ad226ad515d3f8d5fab51`; polygon `0x5dc4f32c4b8cc2eb5ce07046f7ade6c44c453507`; polygon `0x79906be7d10c2cb97793a4ebd87bd3d52ceda412`; polygon `0x9ba41a2c5175d502ea52ff9a666f8a4fc00c00a1`; polygon `0xb0a058e8d82d56b6a169a30993d171214051ef6e`; polygon `0xba08d93ec15df479edde9b3769c937298aa3f3f4`; polygon `0xe833c90f4d07650ac1d8a915c2c0fddbedc1ec3a`; polygon `0xf0fe35dd7b081bfe92cdef7e32b09cc2ef08cd5f` | ⚠️ Unaudited |
| PreciseUnitOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86856845e974df562975d0ef62ec34b2ff059453` | ⚠️ Unaudited |
| PriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 8 deployments: ethereum `0x6a663b74b9ea021099649320c4042af289ec5a75`; ethereum `0xa60f9e1641747762ade7fd5f881b90b691e92b0a`; ethereum `0xc3da3ed5ed032baec5465f6f0e87a22a5aff2447`; ethereum `0xff31e9acbc9d42b4f964f54f9752d2f74e4acf1c`; polygon `0x449b6745bc85c7bf69ddf662a226d246d30f0799`; polygon `0x84c2fdc15e70cbc09a874f2501f7744a673c4184`; polygon `0x984d92dd094561c4ec4e994c7b4e089b3824516f`; polygon `0xd915e2c8280d9317dc8f096805e5f378c4c6751d` | ⚠️ Unaudited |
| ProtocolViewer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b65c4760f56ea89a21193af5b909395766ef2e5` | ⚠️ Unaudited |
| Prt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99f6539df9840592a862ab916ddc3258a1d7a773` | ⚠️ Unaudited |
| PrtFeeSplitExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43c3ef32e52f17777789c71002ef4a887df90613` | ⚠️ Unaudited |
| RebalanceAuctionModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe23fb31dd2edacebf7d92720358bb92445f47fdb` | ⚠️ Unaudited |
| RebalancingSetExchangeIssuanceModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd4240987d6f92b06c8b5068b1e4006a97c47392b` | ⚠️ Unaudited |
| RebalancingSetTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15518cdd49d83471e9f85cdcfbd72c8e2a78dde2` | ⚠️ Unaudited |
| RebasingComponentModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14f47d2808155d30a1297586f4c3f6aab4f5a69e` | ⚠️ Unaudited |
| ReinvestmentExtensionV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd57559fc98808dee07877117383d5b748a304727` | ⚠️ Unaudited |
| RSITrendingTrigger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x959de129befb19272df731262dce724760815c20` | ⚠️ Unaudited |
| SetToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 41 deployments: ethereum `0x02ec0c9e6d3c08b8fb12fec51ccba048afbc36a6`; ethereum `0x0b498ff89709d3838a063f1dfa463091f9801c2b`; ethereum `0x1494ca1f11d487c2bbe4543e90080aeba4ba3c2b`; ethereum `0x1d86fbad389068e19fa665eba12a0ebd4c68bb08`; ethereum `0x23c3e5b3d001e17054603269edfc703603adefd8`; ethereum `0x2af1df3ab0ab157e1e2ad8f88a7d04fbea0c7dc6`; ethereum `0x341c05c0e9b33c0e38d64de76516b2ce970bb3be`; ethereum `0x36c833eed0d376f75d1ff9dfdee260191336065e`; ethereum `0x48ccc6937c62609f20376901535e00980e3bbd0f`; ethereum `0x58222dd0a3d6de911b067b52c45f974d03163a4a`; ethereum `0x65c4c0517025ec0843c9146af266a2c5a2d148a2`; ethereum `0x72e364f2abdc788b7e918bc238b21f109cd634d7`; ethereum `0x7c07f7abe10ce8e33dc6c5ad68fe033085256a84`; ethereum `0xaa6e8127831c9de45ae56bb1b0d4d4da6e5665bd`; ethereum `0xada0a1202462085999652dc5310a7a9e2bf3ed42`; ethereum `0xc4506022fb8090774e8a628d5084eed61d9b99ee`; ethereum `0xc7068657fd7ec85ea8db928af980fc088aff6de5`; ethereum `0xd2ac55ca3bbd2dd1e9936ec640dcb4b745fde759`; ethereum `0xf860f90e1f55e3528682e18850612cbb45bbf1bc`; ethereum `0xfa10e13fe555760a5297dc14eb6562a1a53e4e37`; base `0x0a0fbd86d2deb53d7c65fecf8622c2fa0dcdc9c6`; base `0x16c469f88979e19a53ea522f0c77afad9a043571`; base `0x186f3d8bb80dff50750babc5a4bcc33134c39cde`; base `0x1f4609133b6dacc88f2fa85c2d26635554685699`; base `0x2f67e4be7fbf53db88881324aac99e9d85208d40`; base `0x329f6656792c7d34d0fbb9762fa9a8f852272acb`; base `0x32bb8ff692a2f14c05fe7a5ae78271741bd392fc`; base `0x5c600527d2835f3021734504e53181e54fa48f73`; base `0x8d08ce52e217ad61deb96dfdcf416b901ca2dc22`; base `0xc884646e6c88d9b172a23051b38b0732cc3e35a6`; base `0xc8df827157adaf693fcb0c6f305610c28de739fd`; arbitrum `0x26d7d3728c6bb762a5043a1d0cef660988bca43c`; arbitrum `0x3bdd0d5c0c795b2bf076f5c8f177c58e42bec0e6`; arbitrum `0x749654601a286833ad30357246400d2933b1c89b`; arbitrum `0x77f69104145f94a81cec55747c7a0fc9cb7712c3`; arbitrum `0x80e58aea88bccaae19bca7f0e420c1387cc087fc`; arbitrum `0xa0a17b2a015c14be846c5d309d076379ccdfa543`; arbitrum `0xaf0408c1cc4b41cf878143423015937032878913`; arbitrum `0xe7b1ce8dfee3d7417397cd4f56dbfc0d49e43ed1`; arbitrum `0xeb5be62e6770137beaa0cc712741165c594f59d7`; arbitrum `0xfc01f273126b3d515e6ce6cab9e53d5c6990d6cb` | ⚠️ Unaudited |
| SetToken | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242578 | `0x33d63ba1e57e54779f7ddaeaa7109349344cf5f1` | ⚠️ Unaudited |
| SetToken | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242580 | `0x47110d43175f7f2c2425e7d15792acc5817eb44f` | ⚠️ Unaudited |
| SetToken | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-242585 | `0x130ce4e4f76c2265f94a961d70618562de0bb8d2` | ⚠️ Unaudited |
| SetToken | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-242588 | `0x340f412860da7b7823df372a2b59ff78b7ae6abc` | ⚠️ Unaudited |
| SetToken | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-242590 | `0x3ad707da309f3845cd602059901e39c4dcd66473` | ⚠️ Unaudited |
| SetToken | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-242592 | `0x4f025829c4b13df652f38abd2ab901185ff1e609` | ⚠️ Unaudited |
| SetToken | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-242598 | `0xd6ca869a4ec9ed2c7e618062cdc45306d8dbbc14` | ⚠️ Unaudited |
| SetToken | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-242601 | `0xf287d97b6345bad3d88856b26fb7c0ab3f2c7976` | ⚠️ Unaudited |
| SetTokenCreator | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x2758bf6af0ec63f1710d3d7890e1c263a247b75e`; ethereum `0x86a73e16d2dece40b378b6af645a93678214ef43`; polygon `0x2b44c227d95b8fda1c8750986d3adff0e67627f7`; polygon `0x2e45e774334d974beccab9ff6e21a1ecea82e9a3`; polygon `0xc8657a70236f19085e99428875045ce2cd83dbd8` | ⚠️ Unaudited |
| SetTokenRateViewer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e3ac55fa22abef5ce612b1796e69e005fb0a238` | ⚠️ Unaudited |
| SetValuer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x38b8fc4899b21b56b6a729c03bf266b090cfe9d7`; ethereum `0x6f4d1397c15c8ab6ea218f80f397acb71835654f`; ethereum `0xb647acd2f7e43c33b2d8b4e1042d352b63bb485b`; ethereum `0xddf4f0775ff69c73619a4dbb42ba61b0ac1f555f`; polygon `0x48cf49701028cfbbce18a963c9134f7a86e71a22`; polygon `0x4e9290b32b817d42128ac13450848adbb7f24389`; polygon `0xdfcd0b065e828cec30d7918576b918eb47f29e46` | ⚠️ Unaudited |
| SignedSnapshotStakingPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x2881cc01aad96c70319f308906d49c3784112e0d`; ethereum `0x3329efe11a11f63ad2cae877df640e377024cd42`; ethereum `0x52ceedd6d765e69c6ec20321aa49956872913886`; ethereum `0xbe03026716a4d5e0992f22a3e6494b4f2809a9c6` | ⚠️ Unaudited |
| SingleIndexModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5257fe1cf608affd6025990b09fad66e1179f18` | ⚠️ Unaudited |
| StakeWiseReinvestmentExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1fcf74d4d0335095c02e1ca78ec55339c2ec927b`; ethereum `0xbeef8055b8cd9f5626dd16be43cbd02ea0883d4a` | ⚠️ Unaudited |
| StreamingFeeModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x08f866c74205617b6f3903ef481798eced10cdec`; ethereum `0x165edf07bb61904f47800e13f5120e64c4b9a186`; ethereum `0x3d8d14b7efb8e342189ee14c3d40dce005eb901b`; polygon `0x53f9f58c74866b759eadb78c4f90bb19892c373f`; polygon `0xc6955b85b622369a54cc8c6dbecb8e03c0885bd8`; polygon `0xcd79a0b9aeca0ece7ea59d14338ea330cb1cb2d7` | ⚠️ Unaudited |
| StreamingFeeSplitExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x0104a6fa30540dc1d9f45d2797f05eea79304525`; ethereum `0x2b71854e1a9fa1bb41da11bb6613a7a9c352da99`; ethereum `0x48cf49701028cfbbce18a963c9134f7a86e71a22`; ethereum `0xb9d08e14c4afc1f9113e440eae42028e1377a869`; ethereum `0xf8af89c1285cdebe63413449ce982b9ce185dbae` | ⚠️ Unaudited |
| SupplyCapAllowedCallerIssuanceHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0acb300cce6592baeecb7398ea07a648d89790a1` | ⚠️ Unaudited |
| SupplyCapIssuanceHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 32 deployments: ethereum `0x0110959c718f70fd2dc01e86566e694391c0e5c6`; ethereum `0x053f2225588e62900f5f5fb4e786b9ca9553fa79`; ethereum `0x19c1c2c6533c4752c2694c8ca52791bedc0cf793`; ethereum `0x245290668ce324deed7cfc1bcf4355fd23bfebe0`; ethereum `0x2622c4bb67992356b3826b5034bb2c7e949ab12b`; ethereum `0x29ae2a3f21c7f6607f9af55e7d996e28ff3fead9`; ethereum `0x2c2ab834316df4c457541e31a7767694481c98ec`; ethereum `0x30e9e62cfe57ccc061fbded1d19d119a1dee53a3`; ethereum `0x5bca85103206dcb3e223af21c1bdab0f3b830ee5`; ethereum `0x5f22e5b4e5a54f27e25065632f76bdf786c1cf67`; ethereum `0x64c8e65c133e5c261b56413f7339fa898f862d91`; ethereum `0x7374e7637ae667e6f80610d898e44ed42fe8269d`; ethereum `0x97d151597fbc7a8d7ca986cfce6568275bbcc691`; ethereum `0xa727a19991f03ac9928388428f6eb8416c029867`; ethereum `0xa8b29e5ca20a9d9df52ee07a8508357d47f7902d`; ethereum `0xb08089029305c4308f3d535241601e82752c69f5`; ethereum `0xba3bbba81a7aa3b222e2bfc657745582416aff29`; ethereum `0xbc29acdc888b471a1b09e1e7dcc7146471222cbf`; ethereum `0xca2754549cf7ca7b9613c90c98c1aad127a77220`; ethereum `0xcb3ebcdd25eca9f0755b13b3dc87a7252ef4eb47`; ethereum `0xd43b4d1a77684b40d33454c55c7973876c12f55b`; ethereum `0xd59fc21d2ad70d59749df78c1c286cbaa9152555`; ethereum `0xe2ea6b8390eb877838b38e9e4f25ca8c094cd1e6`; ethereum `0xe6c18c4c9fc6909eda546649ebe33a8159256cbe`; ethereum `0xeb3facdce4ce78020527f64bb0991fcb494bc180`; ethereum `0xec5a282b5f6d5678b743ae52c056ddb751cafd82`; ethereum `0xed072061e94b035b8d712c64875a469f5dd407e6`; ethereum `0xefc5ecd2c74b76594554ee6d352b79be86e06f83`; ethereum `0xffb119c0f7e971de1174dc9c2389b8d408b619fc`; polygon `0x2b26553224bbdb0f156fca360f44d0a9d2644b7f`; polygon `0x8173bd491a27af4dde0a4de48a54daf6705c75f1`; polygon `0xbb3558a299806cbf5285943dd236cb0d2cbe9040` | ⚠️ Unaudited |
| SynthetixExchangeAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64177fd4dfad1a6cff95e1ebba403bb73c6a8e41` | ⚠️ Unaudited |
| TargetWeightWrapExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9a8ae9f29c1e77bb05a8a4d3576998a9de56ff2` | ⚠️ Unaudited |
| TimeSeriesFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7b2977f1f84629000bf572b466b43ba2b934836` | ⚠️ Unaudited |
| TradeModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x11259f09b95b7dbded5b7bca12d9daa2d816d91f`; ethereum `0x45d67b9dbea9bd51ed2b67832addeaf839628faa`; ethereum `0x90f765f63e7dc5ae97d6c576bf693fb6af41c129`; ethereum `0xd78018a16b4b4e1b806bf1e605dcf0ff18b0b3eb`; ethereum `0xfaab3f8f3678f68aa0d307b66e71b636f82c28bf`; polygon `0x300c1642a2997c0472320677d9b1cea90ab5de0d`; polygon `0x60376ab0a7e59b139be639315f6f7e877e28c409`; polygon `0xe40d912d83855e93a73273c0e2a6ac1e09022a2d` | ⚠️ Unaudited |
| VariableDebtToken | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xf63b34710400cad3e044cffdcab00a0f32e33ecf` | ⚠️ Unaudited |
| WrapExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x07e15384c86cd51c76d9201c7c2c047e62c9ae6d`; ethereum `0x5be31fa95cdb9949436ffe8e270303b57cceee67`; ethereum `0x898ca25440dc4a82ce614cda27a218cf4413fe62`; ethereum `0xc6678ac1462f626628e1b4ec247d2ef9fd21a4cf` | ⚠️ Unaudited |
| WrapModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x67eddd251e914a7a1a19bda09295a28cc328defe`; ethereum `0xbe4aede1694aff7f1827229870f6cf3d9e7a999c` | ⚠️ Unaudited |
| WrapModuleV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6604468512b3b85c58c4d818ccb69fba5bb7b809`; ethereum `0xbfe0f7b4f9537a25d7c498161d6f24b38699a075` | ⚠️ Unaudited |
| WrappedfCashFactoryMock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa39f94fc8290ed03328b9fca82d07cae26ce2a37` | ⚠️ Unaudited |
| ZeroExApiAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 4 deployments: ethereum `0xd7a4244f3a17468f7b0568d6a43fde94b11c9c11`; polygon `0x5804831480f6d82f767bb63dd44c77646c3d77fd`; polygon `0x5b0f22c06f77284dba2bf1552ccec1e3136d6f08`; polygon `0x991faa73e64435eac3697ae9dee4e6e7b85fda59` | ⚠️ Unaudited |
| ZeroExExchangeWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0acd0b5cf881cd8398ac563872209de1ce15df0f` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (133)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0156aba855293a0190681835a9fdf714b884e5c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06da99d2d08d161d2ee6a4b8c1a9edf62966f012` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e6020d067fb413574b70e9619a05c7a6f336b28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12951b9eaa200237f9080c95ad93cc74c9d9bd45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1434f1eae027b0f30071e0b858449a522a5c4b25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14f0321be5e581abf9d5bc76260bf015dc04c53d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17262024e84ed9097546ea762d94db7c0eb13b5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17efe2a497c7b173be4eb5bb8481c2dc741509fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18648502df9b779414f0e0eb3f5febbe76b0a706` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18b739aabc019d9ef160d44ba8a9dd6a717372af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19ab9578c7de2366591b6017f3037d15f8606992` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d763b4e22423e48ed64d757835a15366bb9e4d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d8ab7f7a50b9354aed252652afdd0e286774c9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1db929398958082d2080aa1b501e460503f60467` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f6ee9ce38e6beeb968bb91f755998548d3165e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22d3f7e36479c30774d9e65584e654f335db2771` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25c499e7306248c308cef403d9824110817b305c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x263c23f55cc122cac5473deeacafdd23f3ec1c05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26de330864059bae3fd054d52a42ed4792135b03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x285c5bfe4729afbca8a8b6763047a5f471efb95e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2891782706d420448a5b13a85bf6bc1a1f44358c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x293dcc7c8350ce9f1283572ac89861f768158151` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ba59efeb62171bc8fb8bfc2366a76689372937a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c2c21865cca8f385798ee418cb6680a71ec9d00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f5076751b66f8f87ee2b34855edeb425f208d9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3289670b6b43b71366e8fbe1579043b82f140010` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x365bebfe105884de616c0df7eea6aab10fa36861` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3700414bb6716fcd8b14344fb10ddd91fdea59ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38e5462bbe6a72f79606c1a0007468aa4334a92b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d9da970fa85cb1fa9d405145d4c485224da045e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e262dc5b9aa18d6a8236c11caa979f89473dc39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3fec724934e17081a3640a167861efe7f41600a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x46003167e93d8cd8e8d24cbed4998b7ceb9a4d19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4689051f4246630deb7c1c4cfb2ffa25643d886c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4737ed26956cc0a927bbddc860103f559121046c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48c985e823deb777e9fb86529a96c07081b4dad3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c4c649455c6433dc48ff1571c9e50ac58f0cefa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d21472bb1746544bad1adae30895e0b0f9e90ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f08eeeb7a79a1034983bae10812ee5116f520ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f70287526ea9ba7e799d616ea86635cdaf0de4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4fee5df498bb644a319312c2d4e3034cd44ee034` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x504e2230baace0974a61822d8f7ac255be3bf061` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50711c5cea991d54d37a2384d22568734976d154` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x510cae9358b78371666a2c7b43c4ff5d88a919ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5188fc72a0a13b4576578ae216125604cfad4805` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5374e7a0f9e0ad299e094825a220354b6ca6c787` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ecd8e3b059bc5a69e2d7a73c60bd4e9788972ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5efda1dbd6adcee04cf8bd6599af3d9b2c8fc85f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6169c62e1aae2d56a2dc184514e8b515ff6f1d9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x616dad7a8e7de48c0b5c97586cbd9050e0a4ff54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6462ff37b2ddcd66309d5374a09f254f3bd962a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x653d466bb82c2bfbee5264d0b961f958acc93a36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65d103a810099193c892a23d6b320cf3b9e30d46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x678292382356cd9c06bc21db9eca7025d0732f88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68022868a9d6ac2efb2bb669d9925cec732573ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f76cfe52094f01f63adad8b9328474a98528742` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71a254755922ec0846996cf1f75d8b83b9c5802a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75fbbdeafe23a48c0736b2731b956b7a03adcfb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77116a79c218492cf52636f92aaef9f4c623fdd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79cfd6395be41482550005f145bf818ba64436a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b17dc1d0c63a011361506d251a092290b2718c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b4c75c989cb0ff4fd6c1387f72d2f6fb2d4002a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x818c639ca5f986115eacf77e58d4804de1dd5d40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8440f6a2c42118bed0d6e6a89bf170ffd13e21c0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242581 | `0x84ce03ae547330f61584ad6103743732b1ae97c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x85fa4e81c6b49066934d44ae5e02ca36decf6b77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x864feac80fae179b6e2bb64b937bc55f3a574c17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89bfd87f8b056565f3306d5185f085aad9d17a41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d5cf870354fffae0586b639da6d4e4f6c659c69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ddf05faa5bd3d237eb3224601aa47dfa3195117` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8de07cb5ddcd90c0d8be93d3e2653d8c0b2a9abe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ffc4f43a82a752917f4f95abe9a9b70a48924a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x931a809658b677390c80a443415d16f4fcd37d1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9378ad514c00e4869656ee27b634d852dd48fead` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9865f79bb187e81bccb8d3d10d314b9ae4e1ed3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a56e203e8566924a26ed0535c15db9816d9f778` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9cfe76a718ea75e3e8ce4fc7ad0fef84be70919b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d2e0b9471168bb8060a28c1b32c1dc5aebd27ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9daae54270c5a69bf0daf489fd242ecdff36ddf6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e49d7f3fe6d61b2d702e71292fb41b060369aa7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e9a0a9c030f3884486a76c169dfbf712bb097d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2619134b0851744d6e5052392400df73b24d7fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa361f9f9905399f8193657ba026a4a11ccd8ca96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa655795ddf6f816e1b493b195461d7042d3bbb25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa71978db8333586c65be76ed559e7e51fc81ec66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xadcfd8333ece5fce62d58e71d77c1064e36f5bfb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xadd948fd8ce465a0920bd3678e8b9ec86d00c79c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaee65691af05528f180c1f668976d6d4e0b7117c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2aa8743633bfcb0bc6aecd6cc0aff96d961f218` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2d113cd923b763bd4f2187233257da57f3f1ddb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5f10043cae909fa718dec78be1d31513f495a2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbcad60c7181f2d2fb74455a4dbc6e2ef8d67bf53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0aafee4b4edc54dd3aea0bf4dbe7bddde6365ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc19a26a3d56d8f85324e45978f2f9e069642c1da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5d96411341d16c4bd16733500d6ab8c5421097e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6e977741487dd8457397b185709cd89b0cf5e7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8dba7fd4bc23de9f160d2e46125f1fc0d2425d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc914100c13f2333e637cf7a01b71e8e3fab7c118` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd04aabaded11e92fefcd92eedbbc81b184cdac82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd50f2f5b46bdbc1941f06148030d312ca99d2487` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd629f4d7eaad237ebae7d92002946e1dec648348` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd7937c7cbe8be535d536f8bef0c301651e400852` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd88e4637d5dabcd033a37c3b56a739e992fdede8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdad75aca429911fe1904920904fcc074de3fdd15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd5825965a016d8bbbbdf4862a1ac9d3fb6d5382` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7a8f86c3470a8826675fee8cadea95241c61478` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xedc75fe373850347c90c67abe8d6da3a9815d053` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf00ff2b76b017c16b3a96d22e73c47184d2a4ed7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf04ff1487bb27fa6a83f6276a55ae17eb8b3c581` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf2c421906fa01b211205c7c50a8dd304011846ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf3055e1e19b7f68420db8f1334bdbf25a0d7bd37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf3be079f9768d05b40fb7fdb3955ce0e163d43be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8ba20d0307c1b07cdf31bdf6c1efad786e6b448` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-242584 | `0x0bd75d6efe664991cab603d140375b2f4f70dd70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0dc65c883fccc9cacb34650588c196ccc6d4e762` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x26cb12b8349e8611f214369ad62222e3d5f6eff7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-242587 | `0x31459836b4f19c84ec004b92aef6b00f7490da52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x37e7c051dc5a24313ceec581222882648ba537aa` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-242589 | `0x3885f88a5bb0791169e80ec5821174976aad7f0a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-242591 | `0x3bd4ca36a513da012fa77bc471e35f844425a0af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x42bf8b14277bb77244e693f98f848e7594022310` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-242593 | `0x70e86d6b6a99a573f3db765d1dbdf9e35ef5eba9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x773c465750080163e8b403f96c78059760b61f23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x87e28b8aefb4af4b4b8b923d8cc353be778ab399` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9737c658272e66faad39d7ad337789ee6d54f500` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-242595 | `0x9c4218b515d39d20b7e1b6074418aef4c0eaef71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa849001cf7e3bd6c7c8c494e252d60411124ed38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xafbd1f46aa2db385bb09e40e40c857bd2e755f92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb8492421911e4b6ebf6e822805c581b80c4277cc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-242596 | `0xb97f5a34696adf30db822612379235c3c53b714a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc132f90b763b5c47e47b87507f692f72ee8a4792` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-242599 | `0xe7ca688c8ac7f7225aa0ff0169115f6b5827b045` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf4df2449f0ba2fb1edb3aed0492a237de3f2c385` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [IndexIcUSDAuditReport.md](https://github.com/IndexCoop/audits/blob/main/audits/IndexIcUSDAuditReport.md) | unknown | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 12 | high |
| [IndexPRTAuditReport.md](https://github.com/IndexCoop/audits/blob/main/audits/IndexPRTAuditReport.md) | unknown | Audit | 2024-07 | stale | Direct | n/a | no match | 0 | 0 | 0 | 4 | n/a |
| [IndexDIMv3AuditReport.md](https://github.com/IndexCoop/audits/blob/main/audits/IndexDIMv3AuditReport.md) | unknown | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [8a96ae7b9746ba8394dc6c16202a6b64 (GitHub directory)](https://gist.github.com/bernard-wagner/8a96ae7b9746ba8394dc6c16202a6b64) | iosiro | Audit | 2021-09 | stale | Direct | n/a | no match | 0 | 0 | 0 | 4 | n/a |
| [code4rena.com/reports/2022-06-notional-coop](https://code4rena.com/reports/2022-06-notional-coop) | Code4rena | Contest | 2022-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [immunefi.com/bug-bounty/indexcoop/information](https://immunefi.com/bug-bounty/indexcoop/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a | n/a | n/a | n/a | n/a |
| [www.openzeppelin.com/news/set-protocol-audit](https://www.openzeppelin.com/news/set-protocol-audit) | OpenZeppelin | Audit | 2020-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 18 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2024] IndexIcUSDAuditReport.md — no match: Scope section explicitly lists 12 contracts from two repos. Audit date is the end of review period (9/17/24).
- [2025] IndexPRTAuditReport.md — no match: No reason recorded
- [2026] IndexDIMv3AuditReport.md — no match: Only one contract in scope: DebtIssuanceModuleV3. Audit dates: 5/8/24 - 5/10/24, end date used.
- [3576] 8a96ae7b9746ba8394dc6c16202a6b64 (GitHub directory) — no match: No reason recorded
- [3581] code4rena.com/reports/2022-06-notional-coop — no match: Scope section explicitly states 5 smart contracts, but only 4 are named in the report text. Extracted all contracts mentioned in findings and codebase.
- [14847] immunefi.com/bug-bounty/indexcoop/information — no match: The document is a bug bounty program description, not an audit report. No contracts are explicitly listed in scope; only 'Total Assets in Scope: 7' is mentioned without names.
- [14852] www.openzeppelin.com/news/set-protocol-audit — no match: All contracts explicitly listed in scope section of the audit report.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| IndexIcUSDAuditReport.md | TargetWeightWrapExtension | unmatched — not counted | — | listed in scope | no |
| IndexIcUSDAuditReport.md | CustomOracleNAVIssuanceModule | unmatched — not counted | — | listed in scope | no |
| IndexIcUSDAuditReport.md | SetValuer | unmatched — not counted | — | listed in scope | no |
| IndexIcUSDAuditReport.md | PriceOracle | unmatched — not counted | — | listed in scope | no |
| IndexIcUSDAuditReport.md | PreciseUnitOracle | unmatched — not counted | — | listed in scope | no |
| IndexIcUSDAuditReport.md | ERC4626Oracle | unmatched — not counted | — | listed in scope | no |
| IndexIcUSDAuditReport.md | RebasingComponentModule | unmatched — not counted | — | listed in scope | no |
| IndexIcUSDAuditReport.md | WrapModuleV2 | unmatched — not counted | — | listed in scope | no |
| IndexIcUSDAuditReport.md | AaveV2WrapV2Adapter | unmatched — not counted | — | listed in scope | no |
| IndexIcUSDAuditReport.md | AaveV3WrapV2Adapter | unmatched — not counted | — | listed in scope | no |
| IndexIcUSDAuditReport.md | CompoundV3WrapV2Adapter | unmatched — not counted | — | listed in scope | no |
| IndexIcUSDAuditReport.md | ERC4626WrapV2Adapter | unmatched — not counted | — | listed in scope | no |
| IndexPRTAuditReport.md | Prt | unmatched — not counted | — | — | no |
| IndexPRTAuditReport.md | PrtFeeSplitExtension | unmatched — not counted | — | — | no |
| IndexPRTAuditReport.md | SignedSnapshotStakingPool | unmatched — not counted | — | — | no |
| IndexPRTAuditReport.md | SnapshotStakingPool | unmatched — not counted | — | — | no |
| IndexDIMv3AuditReport.md | DebtIssuanceModuleV3 | unmatched — not counted | — | listed in scope | no |
| 8a96ae7b9746ba8394dc6c16202a6b64 (GitHub directory) | AaveLeverageModule | unmatched — not counted | — | — | no |
| 8a96ae7b9746ba8394dc6c16202a6b64 (GitHub directory) | AaveV2 | unmatched — not counted | — | — | no |
| 8a96ae7b9746ba8394dc6c16202a6b64 (GitHub directory) | DebtIssuanceModuleV2 | unmatched — not counted | — | — | no |
| 8a96ae7b9746ba8394dc6c16202a6b64 (GitHub directory) | IssuanceValidationUtils | unmatched — not counted | — | — | no |
| code4rena.com/reports/2022-06-notional-coop | wfCashERC4626 | unmatched — not counted | — | listed in scope and mentioned in findings | no |
| code4rena.com/reports/2022-06-notional-coop | NotionalTradeModule | unmatched — not counted | — | listed in scope and mentioned in findings | no |
| code4rena.com/reports/2022-06-notional-coop | wfCashBase | unmatched — not counted | — | mentioned in findings and codebase | no |
| code4rena.com/reports/2022-06-notional-coop | wfCashLogic | unmatched — not counted | — | mentioned in findings | no |
| code4rena.com/reports/2022-06-notional-coop | WrappedfCashFactory | unmatched — not counted | — | mentioned in findings | no |
| code4rena.com/reports/2022-06-notional-coop | DebtIssuanceModule | unmatched — not counted | — | mentioned in findings (M-08) | no |
| www.openzeppelin.com/news/set-protocol-audit | IController | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/set-protocol-audit | IManagerIssuanceHook | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/set-protocol-audit | IOracle | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/set-protocol-audit | IOracleAdapter | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/set-protocol-audit | ISetToken | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/set-protocol-audit | AddressArrayUtils | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/set-protocol-audit | ExplicitERC20 | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/set-protocol-audit | PreciseUnitMath | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/set-protocol-audit | Controller | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/set-protocol-audit | PriceOracle | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/set-protocol-audit | SetToken | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/set-protocol-audit | SetTokenCreator | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/set-protocol-audit | IntegrationRegistry | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/set-protocol-audit | ModuleBase | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/set-protocol-audit | Invoke | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/set-protocol-audit | Position | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/set-protocol-audit | BasicIssuanceModule | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/set-protocol-audit | StreamingFeeModule | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 127 |
| upstream | 4 |
| standard_library | 1 |
| needs_review | 133 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 45 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=4, low=1
- Match method counts: n/a

Zero-match audit list:

- [2024] IndexIcUSDAuditReport.md
- [2025] IndexPRTAuditReport.md
- [2026] IndexDIMv3AuditReport.md
- [3576] 8a96ae7b9746ba8394dc6c16202a6b64 (GitHub directory)
- [3581] code4rena.com/reports/2022-06-notional-coop
- [14852] www.openzeppelin.com/news/set-protocol-audit

Fork inheritance lineage and inherited audits are included when available.
