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
| AaveLeverageModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x251bd1...5f51dc` | ⚠️ Unaudited |
| AaveLeverageStrategyExtension | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6484a...2cbc2b` | ⚠️ Unaudited |
| AaveV3LeverageModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: ethereum `0x9d08cc...e9f74f`; base `0xc06a6e...672699`; arbitrum `0x6d1b74...f2a4ae` | ⚠️ Unaudited |
| AirdropExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 9 deployments: ethereum `0x07a578...8c03c9`; ethereum `0x0fba2b...e59183`; ethereum `0x102829...655fa3`; ethereum `0x2cf29f...cbcac1`; ethereum `0x63bf66...8cc0eb`; ethereum `0x68c4a3...11f0d5`; ethereum `0x7ffbf7...a588f9`; ethereum `0xa899a4...2cc599`; ethereum `0xea381e...21df5f` | ⚠️ Unaudited |
| AirdropModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09b9e7...d5c40f` | ⚠️ Unaudited |
| AmmModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: polygon `0x0104a6...304525`; polygon `0x0ceeec...269f91`; polygon `0x53d09c...e06349` | ⚠️ Unaudited |
| AMMSplitter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: polygon `0x59fedb...5b6364`; polygon `0xd8df81...3f8a11`; polygon `0xfe4f92...c732c8` | ⚠️ Unaudited |
| ApeRebalanceExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 10 deployments: polygon `0x87dfdb...c03e44`; polygon `0x9cb703...fdda47`; polygon `0xa4cae3...8b9915`; polygon `0xd01733...d1fbc4`; polygon `0xd6a2a3...434265`; polygon `0xdde61f...e09417`; polygon `0xebbf99...4be8f5`; polygon `0xecdbe5...0c1c9a`; polygon `0xfd4ea5...37e9ad`; polygon `0xfe4532...437382` | ⚠️ Unaudited |
| Arb | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08d754...d30a15` | ⚠️ Unaudited |
| AssetLimitHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x60eb77...2d1c2d`; ethereum `0x8175e7...342991` | ⚠️ Unaudited |
| AssetPairManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x9f1846...b1a33a`; ethereum `0xc932df...5612f7`; ethereum `0xe9dc0b...733ce5` | ⚠️ Unaudited |
| AuctionRebalanceExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x2b5990...58d01b`; ethereum `0x418a29...f2092b`; ethereum `0x94caea...37ff4a`; ethereum `0xa985e6...09ba84`; ethereum `0xacce49...2597dc`; ethereum `0xeafb43...d72d26` | ⚠️ Unaudited |
| AuctionRebalanceModuleV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59d55d...941dba` | ⚠️ Unaudited |
| BaseManagerV2 | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242579 | `0x403970...ddd742` | ⚠️ Unaudited |
| BaseManagerV2 | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242582 | `0xa420cf...f1c766` | ⚠️ Unaudited |
| BaseManagerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 61 deployments: ethereum `0x0435b2...880ed2`; ethereum `0x0749ce...d5b104`; ethereum `0x0fffd1...44f688`; ethereum `0x15a61e...21d724`; ethereum `0x1caff5...35120a`; ethereum `0x2eb720...46016a`; ethereum `0x344642...e1070c`; ethereum `0x354c33...6cb99f`; ethereum `0x36873e...02c50b`; ethereum `0x386034...4db5a3`; ethereum `0x3b4393...989341`; ethereum `0x3df482...c193fa`; ethereum `0x3f74f9...573f5f`; ethereum `0x402d19...2f4947`; ethereum `0x446bc3...cd2f16`; ethereum `0x49c067...fd571e`; ethereum `0x540edc...49146c`; ethereum `0x555699...50940b`; ethereum `0x56a6d9...cccbe0`; ethereum `0x56b7bb...06b724`; ethereum `0x59fedb...5b6364`; ethereum `0x6496cf...bc3090`; ethereum `0x64fc85...0bee1d`; ethereum `0x6654c5...c496b9`; ethereum `0x688488...6bdace`; ethereum `0x6a7eb7...e35240`; ethereum `0x70fcda...631e28`; ethereum `0x718174...b15dc6`; ethereum `0x7c240d...0314a2`; ethereum `0x8300c6...f2bc73`; ethereum `0x8327ff...3682b4`; ethereum `0xa29628...098e2f`; ethereum `0xa7d11f...253907`; ethereum `0xa96ca9...ca2d02`; ethereum `0xb079ff...6a8841`; ethereum `0xb0a058...51ef6e`; ethereum `0xb30f3f...9f2fd0`; ethereum `0xb97f5a...3b714a`; ethereum `0xbcdbfb...25d78a`; ethereum `0xc06e64...9007d2`; ethereum `0xcd483f...918220`; ethereum `0xd43a17...05e876`; ethereum `0xd98183...241a67`; ethereum `0xdfb1e5...22b895`; ethereum `0xe7736b...6b2e03`; ethereum `0xef754f...585769`; ethereum `0xef76a7...7a6993`; ethereum `0xfdb765...fd89f3`; polygon `0x0019f3...9b6ffb`; polygon `0x28d1b4...8645fc`; polygon `0x2baa56...9122ec`; polygon `0x3b4393...989341`; polygon `0x3e6ade...87a012`; polygon `0x70fcda...631e28`; polygon `0x72bcb7...597992`; polygon `0x72c3f5...943a57`; polygon `0x8e0350...bad42b`; polygon `0xa27310...059929`; polygon `0xb209b9...c66549`; polygon `0xb9d08e...77a869`; polygon `0xe394ce...db7df0` | ⚠️ Unaudited |
| BaseManagerV2 | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-242586 | `0x2622c4...9ab12b` | ⚠️ Unaudited |
| BaseManagerV2 | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-242594 | `0x76fe46...ebf3fa` | ⚠️ Unaudited |
| BaseManagerV2 | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-242597 | `0xc4a1bf...cec23c` | ⚠️ Unaudited |
| BaseManagerV2 | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-242602 | `0xf41acb...fe2da1` | ⚠️ Unaudited |
| BasicIssuanceModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 5 deployments: ethereum `0x508910...5ba35b`; ethereum `0xd8ef3c...32f94d`; polygon `0x000711...00439c`; polygon `0x055c8b...6404db`; polygon `0x7903f3...686c60` | ⚠️ Unaudited |
| BinaryAllocator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x962299...b34021`; ethereum `0xd321a9...3e8363` | ⚠️ Unaudited |
| BoundedStepwiseExponentialPriceAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa178ba...26bcc1` | ⚠️ Unaudited |
| BoundedStepwiseLinearPriceAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x237f7b...d026bb` | ⚠️ Unaudited |
| BoundedStepwiseLogarithmicPriceAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbafd0b...143562` | ⚠️ Unaudited |
| BridgedSetToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3bdfb7...73418a` | ⚠️ Unaudited |
| Collectooors | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe969f...5a03ce` | ⚠️ Unaudited |
| ConstantPriceAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13c336...85d992` | ⚠️ Unaudited |
| ConstantPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7561e6...36b1e0` | ⚠️ Unaudited |
| Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 7 deployments: ethereum `0xa4c8d2...21a349`; ethereum `0xd24636...66603a`; ethereum `0xf1b12a...d3c329`; polygon `0x3bb631...d5a8ce`; polygon `0x57b31c...da0267`; polygon `0x8908ea...0b9259`; polygon `0xdd8454...4b152f` | ⚠️ Unaudited |
| CTokenOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ca96e...c07980` | ⚠️ Unaudited |
| CustomOracleNavIssuanceModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x234467...8a1ba3`; polygon `0xeb3826...0cd606` | ⚠️ Unaudited |
| DebtIssuanceModuleV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x04b59f...85f0f3`; ethereum `0x515a09...58381c`; ethereum `0xa0a98e...a8fd59`; polygon `0x53e6dc...808cb4`; polygon `0x663bc1...737e51`; polygon `0x767bd2...e87e66` | ⚠️ Unaudited |
| DebtIssuanceModuleV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86b7c6...875193` | ⚠️ Unaudited |
| DelegatedManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb04d1d...bee140` | ⚠️ Unaudited |
| DelegatedManagerFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38d8fa...a3b235` | ⚠️ Unaudited |
| DEXAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x25a880...3f6fca`; ethereum `0xb7cc88...b74598` | ⚠️ Unaudited |
| DEXAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x3026eb...a0a860`; ethereum `0x6408e1...ed8044`; ethereum `0xc43ee8...3f2eb9`; polygon `0x3b7547...f7b3cb`; polygon `0x8a64b8...efd31a` | ⚠️ Unaudited |
| DEXAdapterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x888589...d5de8d` | ⚠️ Unaudited |
| DEXAdapterV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28764a...8e50ef` | ⚠️ Unaudited |
| ERC4626Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x304a77...f51573`; ethereum `0x911b6b...46d9c9`; ethereum `0xd3ddc9...2f09c8` | ⚠️ Unaudited |
| ERC4626WrapV2Adapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x902d22...1a7c2e` | ⚠️ Unaudited |
| ExchangeIssuanceIcEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x40e8e5...2fe8a3`; ethereum `0x945db3...f4e2d1` | ⚠️ Unaudited |
| ExchangeIssuanceLeveraged | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 7 deployments: ethereum `0x2f2c59...538d64`; ethereum `0x981b21...a794e1`; polygon `0x2e785f...fa8bb6`; polygon `0x453420...d73425`; polygon `0x563127...d690c7`; polygon `0x600d99...c43416`; polygon `0x783f29...01b16e` | ⚠️ Unaudited |
| ExchangeIssuanceLeveraged | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-242600 | `0xe86636...e419db` | ⚠️ Unaudited |
| ExchangeIssuanceZeroEx | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242583 | `0xf42ecd...6e4b25` | ⚠️ Unaudited |
| ExchangeIssuanceZeroEx | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 5 deployments: ethereum `0x8760fc...07d7d1`; ethereum `0x9d648e...36ce45`; polygon `0x0f5c21...367a19`; polygon `0x79530c...c5fcdf`; polygon `0xf2f4d0...c2ef19` | ⚠️ Unaudited |
| FeeSplitExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 44 deployments: ethereum `0x026aa0...135518`; ethereum `0x04d58e...b2c08b`; ethereum `0x0d5f4c...ecdfca`; ethereum `0x0daf2d...077ffd`; ethereum `0x0e716b...cc3d5f`; ethereum `0x1554a6...5070c9`; ethereum `0x1b7d68...c54e74`; ethereum `0x1d8e28...33d185`; ethereum `0x23aa81...990a8b`; ethereum `0x2573f2...cc28aa`; ethereum `0x5d6476...39372c`; ethereum `0x5e568e...f85bf1`; ethereum `0x623c7b...6e7dee`; ethereum `0x7ec2ac...d6b41c`; ethereum `0x7febfc...d299d0`; ethereum `0x83adee...0b4491`; ethereum `0x87a120...49e6ca`; ethereum `0x978177...cd373c`; ethereum `0xa8a23b...2cfaec`; ethereum `0xa9c13c...f97bc3`; ethereum `0xab7eba...06b82e`; ethereum `0xac761f...4ab05a`; ethereum `0xafe68a...995814`; ethereum `0xb9a238...e51987`; ethereum `0xc62e39...bf9563`; ethereum `0xcb63b9...4bfdaf`; ethereum `0xd17300...4775dd`; ethereum `0xd5a152...fd6bb9`; ethereum `0xe833c9...c1ec3a`; ethereum `0xf1872a...8e8f51`; polygon `0x2ce6d7...1b00e8`; polygon `0x460ef6...722812`; polygon `0x5295e1...a39fb0`; polygon `0x5e38f8...efe121`; polygon `0x996d0a...60a487`; polygon `0xa08ad2...bbc022`; polygon `0xadfb2f...95554e`; polygon `0xb994cf...8a5164`; polygon `0xc6b3b4...e42194`; polygon `0xd24636...66603a`; polygon `0xdeb6ab...f74269`; polygon `0xe6484a...2cbc2b`; polygon `0xea381e...21df5f`; polygon `0xf8db58...08e549` | ⚠️ Unaudited |
| FixedRebalanceExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x5f98cb...48efbb`; ethereum `0x9fe734...26ad84` | ⚠️ Unaudited |
| FlashMint4626 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xe48370...127f53`; ethereum `0xf5cf95...79aca9` | ⚠️ Unaudited |
| FlashMintDex | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcde265...6d277e` | ⚠️ Unaudited |
| FlashMintHyETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1c19c6...28d7ad`; ethereum `0xc290c3...20109a` | ⚠️ Unaudited |
| FlashMintHyETHV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x940ecb...aa6a7e` | ⚠️ Unaudited |
| FlashMintHyETHV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb1eea...dddf49` | ⚠️ Unaudited |
| FlashMintLeveraged | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x45c005...ca45d0`; ethereum `0x63bcc1...bf863e`; ethereum `0x766304...ef055d`; ethereum `0x9d116b...1d46ed`; ethereum `0xb4354d...96db48` | ⚠️ Unaudited |
| FlashMintLeveragedZeroEx | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 9 deployments: ethereum `0x1039f3...cbca8b`; ethereum `0x58093c...652113`; ethereum `0x5b688c...1d194d`; ethereum `0x8b4695...10e04d`; ethereum `0x8d4363...ae11a1`; ethereum `0xa6c480...5feac5`; ethereum `0xbd84e8...57cf9a`; ethereum `0xc1cded...7680a1`; ethereum `0xdb97c0...9ce809` | ⚠️ Unaudited |
| FlashMintNAV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62f160...2ea1cf` | ⚠️ Unaudited |
| FlashMintNotional | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9da999...7bd476` | ⚠️ Unaudited |
| FlashMintWrapped | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x5c0d0a...69faa2`; ethereum `0x7dde62...207801` | ⚠️ Unaudited |
| FlexibleLeverageStrategyExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x097afa...d2911f`; ethereum `0x9ba41a...0c00a1`; ethereum `0xc0584e...85c610`; ethereum `0xfd4ea5...37e9ad` | ⚠️ Unaudited |
| FLIRebalanceViewer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x14d9f0...4e37eb`; ethereum `0x463215...e763ee`; ethereum `0x517f76...90efa7`; ethereum `0x8f4517...536217` | ⚠️ Unaudited |
| FTCVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x0cafb7...cadaf9`; ethereum `0x511274...29b21d`; ethereum `0x6d1b74...f2a4ae` | ⚠️ Unaudited |
| GeneralIndexModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x5be31f...ceee67`; polygon `0x7b24b1...3f6e8a` | ⚠️ Unaudited |
| GIMExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x3640a2...5fab51`; ethereum `0x52b062...2a5865`; ethereum `0x5d5f7b...09286e`; ethereum `0x85bd9a...91aad8`; ethereum `0x86971b...f87ff3`; ethereum `0x9737c6...54f500`; ethereum `0x984d92...24516f`; ethereum `0xdfdbab...04b5ef` | ⚠️ Unaudited |
| GlobalIssuanceExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf57ab0...c751b6` | ⚠️ Unaudited |
| GlobalStreamingFeeSplitExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e422e...0f3037` | ⚠️ Unaudited |
| GlobalTradeExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6029f3...6c254c` | ⚠️ Unaudited |
| GlobalWrapExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1de67b...103450` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | non_address_book | standard_proxy_or_library (excluded) | 2 | arbitrum | n/a | 2 deployments: arbitrum `0x19fa87...0ef7b4`; arbitrum `0x40fb52...e61d32` | ⚠️ Unaudited |
| GovernanceExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x30d98b...77cafd`; ethereum `0x43a738...35e9a4`; ethereum `0xaf958f...12defe` | ⚠️ Unaudited |
| HolonToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3c2e12...38f80f` | ⚠️ Unaudited |
| ICManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32bb83...2ec9ee` | ⚠️ Unaudited |
| IntegrationRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 10 deployments: ethereum `0x0b95e9...22473c`; ethereum `0x3e8939...db0c2d`; ethereum `0x665519...6e2e5a`; ethereum `0x80c286...2ddae9`; ethereum `0x8a4795...c49763`; ethereum `0x9e0d34...2abbc6`; ethereum `0xb9083d...6b28d3`; polygon `0x2152f9...d66abb`; polygon `0x5678dc...6283bb`; polygon `0xded5a5...bb9057` | ⚠️ Unaudited |
| IntermediateMigrationExtension | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x9da195...77d907`; ethereum `0xa02a2f...1c7a5e` | ⚠️ Unaudited |
| LegacyMakerOracleAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x792f4e...0b4b28` | ⚠️ Unaudited |
| LinearizedPriceDataSource | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x273233...50d2d2` | ⚠️ Unaudited |
| MACOStrategyManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e2a18...96bc36` | ⚠️ Unaudited |
| MACOStrategyManagerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d6223...7889e5` | ⚠️ Unaudited |
| ManagerCore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05ff5a...16e6bc` | ⚠️ Unaudited |
| MedianOracleAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14a945...53510d` | ⚠️ Unaudited |
| MigrationExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1e0aa0...4e506f`; ethereum `0xea40e4...a15cfc` | ⚠️ Unaudited |
| MorphoLeverageModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9534b6...65b8d7` | ⚠️ Unaudited |
| MovingAverageOracleV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x3f49c2...0de453`; ethereum `0xb82f09...0b217e`; ethereum `0xbb6c1c...ccc0f7` | ⚠️ Unaudited |
| NavIssuanceModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 4 deployments: ethereum `0x33f618...4ec300`; ethereum `0x7f7232...af0113`; ethereum `0xcd34f1...6a3504`; polygon `0x08d754...d30a15` | ⚠️ Unaudited |
| NotionalTradeModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x600d99...c43416` | ⚠️ Unaudited |
| NotionalV2Mock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d97aa...c49ce5` | ⚠️ Unaudited |
| OneInchExchangeAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x6da72b...63b0b0`; ethereum `0xcbadaf...b06b24`; ethereum `0xfff355...43c772` | ⚠️ Unaudited |
| OptimisticAuctionRebalanceExtensionV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4677f9...510732`; ethereum `0xf0d343...c2cec7` | ⚠️ Unaudited |
| OracleProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97c3e5...bb45ab` | ⚠️ Unaudited |
| OtcEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x055c8b...6404db`; ethereum `0x2e45e7...82e9a3`; ethereum `0x5678dc...6283bb` | ⚠️ Unaudited |
| OwlNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 11 deployments: polygon `0x110aeb...b5eb29`; polygon `0x20d11e...50885b`; polygon `0x244484...a4f91c`; polygon `0x3640a2...5fab51`; polygon `0x5dc4f3...453507`; polygon `0x79906b...eda412`; polygon `0x9ba41a...0c00a1`; polygon `0xb0a058...51ef6e`; polygon `0xba08d9...a3f3f4`; polygon `0xe833c9...c1ec3a`; polygon `0xf0fe35...08cd5f` | ⚠️ Unaudited |
| PreciseUnitOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x868568...059453` | ⚠️ Unaudited |
| PriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 8 deployments: ethereum `0x6a663b...ec5a75`; ethereum `0xa60f9e...e92b0a`; ethereum `0xc3da3e...ff2447`; ethereum `0xff31e9...4acf1c`; polygon `0x449b67...0f0799`; polygon `0x84c2fd...3c4184`; polygon `0x984d92...24516f`; polygon `0xd915e2...c6751d` | ⚠️ Unaudited |
| ProtocolViewer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b65c4...6ef2e5` | ⚠️ Unaudited |
| Prt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99f653...d7a773` | ⚠️ Unaudited |
| PrtFeeSplitExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43c3ef...f90613` | ⚠️ Unaudited |
| RebalanceAuctionModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe23fb3...f47fdb` | ⚠️ Unaudited |
| RebalancingSetExchangeIssuanceModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd42409...47392b` | ⚠️ Unaudited |
| RebalancingSetTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15518c...78dde2` | ⚠️ Unaudited |
| RebasingComponentModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14f47d...f5a69e` | ⚠️ Unaudited |
| ReinvestmentExtensionV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd57559...304727` | ⚠️ Unaudited |
| RSITrendingTrigger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x959de1...815c20` | ⚠️ Unaudited |
| SetToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 41 deployments: ethereum `0x02ec0c...bc36a6`; ethereum `0x0b498f...801c2b`; ethereum `0x1494ca...ba3c2b`; ethereum `0x1d86fb...68bb08`; ethereum `0x23c3e5...adefd8`; ethereum `0x2af1df...0c7dc6`; ethereum `0x341c05...0bb3be`; ethereum `0x36c833...36065e`; ethereum `0x48ccc6...3bbd0f`; ethereum `0x58222d...163a4a`; ethereum `0x65c4c0...d148a2`; ethereum `0x72e364...d634d7`; ethereum `0x7c07f7...256a84`; ethereum `0xaa6e81...5665bd`; ethereum `0xada0a1...f3ed42`; ethereum `0xc45060...9b99ee`; ethereum `0xc70686...ff6de5`; ethereum `0xd2ac55...fde759`; ethereum `0xf860f9...bbf1bc`; ethereum `0xfa10e1...3e4e37`; base `0x0a0fbd...cdc9c6`; base `0x16c469...043571`; base `0x186f3d...c39cde`; base `0x1f4609...685699`; base `0x2f67e4...208d40`; base `0x329f66...272acb`; base `0x32bb8f...d392fc`; base `0x5c6005...a48f73`; base `0x8d08ce...a2dc22`; base `0xc88464...3e35a6`; base `0xc8df82...e739fd`; arbitrum `0x26d7d3...bca43c`; arbitrum `0x3bdd0d...bec0e6`; arbitrum `0x749654...b1c89b`; arbitrum `0x77f691...7712c3`; arbitrum `0x80e58a...c087fc`; arbitrum `0xa0a17b...dfa543`; arbitrum `0xaf0408...878913`; arbitrum `0xe7b1ce...e43ed1`; arbitrum `0xeb5be6...4f59d7`; arbitrum `0xfc01f2...90d6cb` | ⚠️ Unaudited |
| SetToken | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242578 | `0x33d63b...4cf5f1` | ⚠️ Unaudited |
| SetToken | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242580 | `0x47110d...7eb44f` | ⚠️ Unaudited |
| SetToken | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-242585 | `0x130ce4...0bb8d2` | ⚠️ Unaudited |
| SetToken | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-242588 | `0x340f41...ae6abc` | ⚠️ Unaudited |
| SetToken | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-242590 | `0x3ad707...d66473` | ⚠️ Unaudited |
| SetToken | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-242592 | `0x4f0258...f1e609` | ⚠️ Unaudited |
| SetToken | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-242598 | `0xd6ca86...dbbc14` | ⚠️ Unaudited |
| SetToken | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-242601 | `0xf287d9...2c7976` | ⚠️ Unaudited |
| SetTokenCreator | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x2758bf...47b75e`; ethereum `0x86a73e...14ef43`; polygon `0x2b44c2...7627f7`; polygon `0x2e45e7...82e9a3`; polygon `0xc8657a...83dbd8` | ⚠️ Unaudited |
| SetTokenRateViewer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e3ac5...b0a238` | ⚠️ Unaudited |
| SetValuer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x38b8fc...cfe9d7`; ethereum `0x6f4d13...35654f`; ethereum `0xb647ac...bb485b`; ethereum `0xddf4f0...1f555f`; polygon `0x48cf49...e71a22`; polygon `0x4e9290...f24389`; polygon `0xdfcd0b...f29e46` | ⚠️ Unaudited |
| SignedSnapshotStakingPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x2881cc...112e0d`; ethereum `0x3329ef...24cd42`; ethereum `0x52ceed...913886`; ethereum `0xbe0302...09a9c6` | ⚠️ Unaudited |
| SingleIndexModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5257f...179f18` | ⚠️ Unaudited |
| StakeWiseReinvestmentExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1fcf74...ec927b`; ethereum `0xbeef80...883d4a` | ⚠️ Unaudited |
| StreamingFeeModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x08f866...10cdec`; ethereum `0x165edf...b9a186`; ethereum `0x3d8d14...eb901b`; polygon `0x53f9f5...2c373f`; polygon `0xc6955b...885bd8`; polygon `0xcd79a0...1cb2d7` | ⚠️ Unaudited |
| StreamingFeeSplitExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x0104a6...304525`; ethereum `0x2b7185...52da99`; ethereum `0x48cf49...e71a22`; ethereum `0xb9d08e...77a869`; ethereum `0xf8af89...85dbae` | ⚠️ Unaudited |
| SupplyCapAllowedCallerIssuanceHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0acb30...9790a1` | ⚠️ Unaudited |
| SupplyCapIssuanceHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 32 deployments: ethereum `0x011095...c0e5c6`; ethereum `0x053f22...53fa79`; ethereum `0x19c1c2...0cf793`; ethereum `0x245290...bfebe0`; ethereum `0x2622c4...9ab12b`; ethereum `0x29ae2a...3fead9`; ethereum `0x2c2ab8...1c98ec`; ethereum `0x30e9e6...ee53a3`; ethereum `0x5bca85...830ee5`; ethereum `0x5f22e5...c1cf67`; ethereum `0x64c8e6...862d91`; ethereum `0x7374e7...e8269d`; ethereum `0x97d151...bcc691`; ethereum `0xa727a1...029867`; ethereum `0xa8b29e...f7902d`; ethereum `0xb08089...2c69f5`; ethereum `0xba3bbb...6aff29`; ethereum `0xbc29ac...222cbf`; ethereum `0xca2754...a77220`; ethereum `0xcb3ebc...f4eb47`; ethereum `0xd43b4d...12f55b`; ethereum `0xd59fc2...152555`; ethereum `0xe2ea6b...4cd1e6`; ethereum `0xe6c18c...256cbe`; ethereum `0xeb3fac...4bc180`; ethereum `0xec5a28...cafd82`; ethereum `0xed0720...d407e6`; ethereum `0xefc5ec...e06f83`; ethereum `0xffb119...b619fc`; polygon `0x2b2655...644b7f`; polygon `0x8173bd...5c75f1`; polygon `0xbb3558...be9040` | ⚠️ Unaudited |
| SynthetixExchangeAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64177f...6a8e41` | ⚠️ Unaudited |
| TargetWeightWrapExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9a8ae...e56ff2` | ⚠️ Unaudited |
| TimeSeriesFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7b297...934836` | ⚠️ Unaudited |
| TradeModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x11259f...16d91f`; ethereum `0x45d67b...628faa`; ethereum `0x90f765...41c129`; ethereum `0xd78018...b0b3eb`; ethereum `0xfaab3f...2c28bf`; polygon `0x300c16...b5de0d`; polygon `0x60376a...28c409`; polygon `0xe40d91...022a2d` | ⚠️ Unaudited |
| VariableDebtToken | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xf63b34...e33ecf` | ⚠️ Unaudited |
| WrapExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x07e153...c9ae6d`; ethereum `0x5be31f...ceee67`; ethereum `0x898ca2...13fe62`; ethereum `0xc6678a...21a4cf` | ⚠️ Unaudited |
| WrapModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x67eddd...28defe`; ethereum `0xbe4aed...7a999c` | ⚠️ Unaudited |
| WrapModuleV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x660446...b7b809`; ethereum `0xbfe0f7...99a075` | ⚠️ Unaudited |
| WrappedfCashFactoryMock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa39f94...ce2a37` | ⚠️ Unaudited |
| ZeroExApiAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 4 deployments: ethereum `0xd7a424...1c9c11`; polygon `0x580483...3d77fd`; polygon `0x5b0f22...6d6f08`; polygon `0x991faa...5fda59` | ⚠️ Unaudited |
| ZeroExExchangeWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0acd0b...15df0f` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0156ab...84e5c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06da99...66f012` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e6020...336b28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12951b...d9bd45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1434f1...5c4b25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14f032...04c53d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x172620...b13b5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17efe2...1509fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x186485...b0a706` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18b739...7372af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19ab95...606992` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d763b...b9e4d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d8ab7...774c9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1db929...f60467` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f6ee9...3165e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22d3f7...db2771` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25c499...7b305c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x263c23...ec1c05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26de33...135b03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x285c5b...efb95e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x289178...44358c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x293dcc...158151` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ba59e...72937a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c2c21...ec9d00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f5076...208d9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x328967...140010` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x365beb...a36861` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x370041...ea59ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38e546...34a92b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d9da9...da045e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e262d...73dc39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3fec72...1600a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x460031...9a4d19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x468905...3d886c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4737ed...21046c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48c985...b4dad3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c4c64...f0cefa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d2147...9e90ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f08ee...f520ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f7028...f0de4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4fee5d...4ee034` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x504e22...3bf061` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50711c...76d154` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x510cae...a919ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5188fc...ad4805` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5374e7...a6c787` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ecd8e...8972ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5efda1...8fc85f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6169c6...6f1d9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x616dad...a4ff54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6462ff...d962a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x653d46...c93a36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65d103...e30d46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x678292...732f88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x680228...2573ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f76cf...528742` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71a254...c5802a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75fbbd...adcfb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77116a...23fdd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79cfd6...4436a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b17dc...2718c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b4c75...d4002a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x818c63...dd5d40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8440f6...3e21c0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242581 | `0x84ce03...ae97c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x85fa4e...cf6b77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x864fea...574c17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89bfd8...d17a41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d5cf8...659c69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ddf05...195117` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8de07c...2a9abe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ffc4f...8924a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x931a80...d37d1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9378ad...48fead` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9865f7...e1ed3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a56e2...d9f778` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9cfe76...70919b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d2e0b...bd27ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9daae5...36ddf6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e49d7...369aa7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e9a0a...b097d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa26191...24d7fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa361f9...d8ca96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa65579...3bbb25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa71978...81ec66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xadcfd8...6f5bfb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xadd948...00c79c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaee656...b7117c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2aa87...61f218` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2d113...3f1ddb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5f100...495a2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbcad60...67bf53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0aafe...6365ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc19a26...42c1da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5d964...21097e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6e977...cf5e7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8dba7...2425d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc91410...b7c118` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd04aab...cdac82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd50f2f...9d2487` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd629f4...648348` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd7937c...400852` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd88e46...fdede8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdad75a...3fdd15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd5825...6d5382` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7a8f8...c61478` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xedc75f...15d053` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf00ff2...2a4ed7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf04ff1...b3c581` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf2c421...1846ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf3055e...d7bd37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf3be07...3d43be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8ba20...e6b448` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-242584 | `0x0bd75d...70dd70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0dc65c...d4e762` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x26cb12...f6eff7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-242587 | `0x314598...90da52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x37e7c0...a537aa` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-242589 | `0x3885f8...ad7f0a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-242591 | `0x3bd4ca...25a0af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x42bf8b...022310` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-242593 | `0x70e86d...f5eba9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x773c46...b61f23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x87e28b...8ab399` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9737c6...54f500` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-242595 | `0x9c4218...eaef71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa84900...24ed38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xafbd1f...755f92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb84924...4277cc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-242596 | `0xb97f5a...3b714a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc132f9...8a4792` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-242599 | `0xe7ca68...27b045` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf4df24...f2c385` | ❓ Unverified |

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
