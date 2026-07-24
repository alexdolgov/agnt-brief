# Agentic Audit Brief: LendFlare

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: LendFlare (`lendflare`)
- Website: [https://lendflare.finance/](https://lendflare.finance/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum
- Contract surface: 345 unique implementations (594 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $942,765.50
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for LendFlare. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across ethereum. Structural roles: 1 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: unclassified (1)
- Contract kinds: contract (1)
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 1; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 344 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 15
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/45
- Verified + Unaudited implementations: 45
- Verified by bytecode match: 0
- Unverified implementations: 300
- Unique implementations: 345
- Raw deployments: 594
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (45)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ApplyFee | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2778be78003ba0444de28450a494e0112067b999` | ⚠️ Unaudited |
| ConvexBooster | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x64e965deed764b84882903e26d021e4856b083e6` | ⚠️ Unaudited |
| ConvexBoosterV2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x4c3c78cebc9cc87436deed2782998bc002f2b69f` | ⚠️ Unaudited |
| CurveExchangeAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d64291b5f9cafa25dc95113955c39ae7c8c1fd4` | ⚠️ Unaudited |
| DepegShield | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x5e6b51b181f52fc470db062a07f0210eed248ac1`; ethereum `0x99fc40934b60bdeb10c251e854a77ea47ad628ae` | ⚠️ Unaudited |
| DepegShieldWrappers | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7a996019db95ae74fa3ed8ed86ff1cc0eeaf9762`; ethereum `0x8a06635c5a84bd0f2edaeb31c0d5da0f5523af77` | ⚠️ Unaudited |
| GenerateLendingPools | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 13 deployments: ethereum `0x0429593646407b1f7a7dce3ce9dc4724bc60afbd`; ethereum `0x046348e32a5ef70c0848b75b5cecd9e3a5673c11`; ethereum `0x04ac5c13f6989d5ef6b78fd3a0ccaeedbc5f4fd2`; ethereum `0x5086f64d5ea5cb9b9a48f1a46801bff21bbd338f`; ethereum `0x55a03d86e745712fdbb6aefa56d4ca132bc2772c`; ethereum `0x73a1a55c1a973bb8c8170e800832e235c1ead527`; ethereum `0x73da41709e867762599dc34a4cfee05b89271c48`; ethereum `0x76973c47a2d7ce54dbd681fa7b0213ff14b50c97`; ethereum `0x786a844e18e48d3c990defa6de9c315f8e28ba9a`; ethereum `0x9a16776534e47c3e30fc591204d49af6eaabe043`; ethereum `0xb985a1570ded35291c78518f2a3102a0334b4c18`; ethereum `0xe0aa24521459f68b3a4836486f50c89bbdb9be5a`; ethereum `0xfdb13c35ec748e6531d2a69063d6cb2abce2b829` | ⚠️ Unaudited |
| GenerateLendingPoolsV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6aaba4ef2540a69d8e99cbc8647d194cfd17241` | ⚠️ Unaudited |
| GenerateLendingPoolsV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x447413fbf9c992ab6a967541f204d8f40419c9ec` | ⚠️ Unaudited |
| LendFlareCRV | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x65368954e911f3003e6827388eadc03922e7ef19`; ethereum `0x9e96598713e7533a33418062d5402b6801ff156a` | ⚠️ Unaudited |
| LendFlareGaugeModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xc7817927c9f3629717b5d237caa15968424246b6`; ethereum `0xe06ee26a1ed939452269856bf3a8d1784f51028c` | ⚠️ Unaudited |
| LendFlareProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1fa362339392f910bd69af8e13dd20c5942d446f`; ethereum `0xbd507de9e8a86b4da201eba187f08d18120e02e8` | ⚠️ Unaudited |
| LendFlareProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7720a95be2b7ce0fb5abe4678d2e2a245bcd7aa5`; ethereum `0x882f464fbd355b736e35f1a2634d536c8979aa43` | ⚠️ Unaudited |
| LendFlareProxy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-244620 | 2 deployments: ethereum `0xb620be8a1949aa9532e6a3510132864ef9bc3f82`; ethereum `0xef9423d140c8009597d1185b4b6d5302df21ca0f` | ⚠️ Unaudited |
| LendFlareToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0xa576538c83672fb9087aa7b96b661acbbdcd4fbc`; ethereum `0xbe63022b4175e8c964c9e2b7acc6873571de00ea`; ethereum `0xc847b0e5fc8c02c1c33afd381043ddf3eb3e0c39` | ⚠️ Unaudited |
| LendFlareTokenLockerFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b61d7810db1780b9552259cf37739413ef41524` | ⚠️ Unaudited |
| LendFlareTokenMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b278f27506cbd890975df0b70fe6bd3b917b831` | ⚠️ Unaudited |
| LendFlareVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x29042e6389075f7181361ee5bca1df9a524d492c`; ethereum `0x35f962d8da9bfbe9af3cd568b50e51c81175ea87`; ethereum `0x4169fa3452913d226fe2c61bb6476c4a53a08ac0`; ethereum `0x6c3cb71fb9d3c2a226148fee032dec8e4453094e` | ⚠️ Unaudited |
| LendFlareVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x803ffdff8150093be6fc78a0963f443e9bd9c378`; ethereum `0xd61401ccfd30356c8c00349eebb6a60d145810ff` | ⚠️ Unaudited |
| LendFlareVotingEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xe6615c44bc3cc90839ad6f729eeeabd2aaf6f9a6`; ethereum `0xf706fd21cd2c643eea18fdafd819baa7f4cff2ee` | ⚠️ Unaudited |
| LendFlareVotingEscrowV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x19ac8e582a9e6f059e56ce77015c46e250c711d2`; ethereum `0x96738a3b759df57ee96c8dab36f33cf66dd4bf00` | ⚠️ Unaudited |
| LendFlareVotingEscrowV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70ffe9056a769290292beb934b39169274ca5b3b` | ⚠️ Unaudited |
| LendFlareZap | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xbcdc45372847b95bb4bd6d524b4a801aac98619c`; ethereum `0xd7c86a52411235169565fa85f56e74fcdda303ca` | ⚠️ Unaudited |
| LendingMarket | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x402e3c8e2ba9db00005d934260157b1b648cac5e`; ethereum `0xa7c45ba4476949a2bc8a7318f62bb12fdd5e88c0` | ⚠️ Unaudited |
| LendingMarket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9997fde74acb0c191cdc7fcdc72255d3a3f7f179` | ⚠️ Unaudited |
| LendingMarketV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x03f744a9ec8d350d1991ac6704fce0c211fce26d`; ethereum `0xac86b0d995a2ba4058860eaf0c0230895b8daa07` | ⚠️ Unaudited |
| LendingMarketV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4f69ad74a5d443b4adc908474c61f5f77ab79d52`; ethereum `0xc8937e9eb757b2fa686f797e83ca410219061119` | ⚠️ Unaudited |
| LendingSponsor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1284ef9ebd1d4e0ae30fb7de5ab636eea218da30`; ethereum `0x807047542431d8a6acf255a52ee815a2a957036d` | ⚠️ Unaudited |
| LiquidityTransformer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8038dd8356f84ebe440c0a0847e553d9692b059a` | ⚠️ Unaudited |
| MerkleAirdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf23801f0c81b8e31ce95bc980ecaf069d296857c` | ⚠️ Unaudited |
| MovingLeverageBase | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd132c63a09fccfef56b88c5aca8ecbb63f814a46` | ⚠️ Unaudited |
| RouteConfigs | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6fbea2e735c67882553791c5d9f9423f56690ed9`; ethereum `0x886c47d96d65be83e8baf6336ab9b0ff0d46373a` | ⚠️ Unaudited |
| SupplyBooster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8237720bbdbcfbe59c3d447beaf1133b72f3320f` | ⚠️ Unaudited |
| SupplyBooster | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xbabb974596343a189930982fabdc7a0d9298522f`; ethereum `0xff9e834d00d9b10860a04c49f4d15b6613195f21` | ⚠️ Unaudited |
| SupplyPoolExtraRewardFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2930ea2285b6b111a89db14dfa409f7fb17b3a88`; ethereum `0x2b4f87114ce7e11bbaa1b278fb3176def6ab7929` | ⚠️ Unaudited |
| SupplyPoolExtraRewardFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x77be80a3c5706973a925c468bdc8eaccd187d1ba`; ethereum `0x796669470a1f4b975b50c7691544546659d9a110` | ⚠️ Unaudited |
| SupplyPoolGaugeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8929369821b1e8ac62e5e59514fda7378bcd4a6e` | ⚠️ Unaudited |
| SupplyPoolManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf61c0efe88307ddc50e4e61c5979e58a41aa9423` | ⚠️ Unaudited |
| SupplyRewardFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x725c9da2efcf67866632f8fa5009e7859c21bc13`; ethereum `0xd66ae82346087a19fcf0b0cc7e07b039c4a3fe59` | ⚠️ Unaudited |
| SupplyTreasuryFundForAgEUR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d7417ca434cb90f587c62597087386e58475a0d` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63d7a70c17a1fca27dc4100bc737a0dbeb52a5b2` | ⚠️ Unaudited |
| VirtualBalanceWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 31 deployments: ethereum `0x0d66b49a68affddcdadddfe06cd6369307b2ba46`; ethereum `0x0e44e003ca8b7a2dd0742286fc1a3fad754a5450`; ethereum `0x10a377ba353cd480e43800018a27742054904c1a`; ethereum `0x1acc3ffb27c31c541695ff75b21569cfaedca877`; ethereum `0x247b24e945d604c896165ccb2f15e190560f2133`; ethereum `0x2cb79c6bb40346a08ad7a7baf65a8b4315876e26`; ethereum `0x2d3a0eca75c429b00627af759a14223c34bf910f`; ethereum `0x2fbe41e4861b5d0936aa01bb32bd3402d34f11fa`; ethereum `0x47a2eec0d7502ba1fec0cae0eeaff64dcf28af60`; ethereum `0x518802d8764c2823610a619be95bf089aa121ba5`; ethereum `0x51cec58171863ea82ce3b99a190f3843fe7aabf5`; ethereum `0x6d18e830a938f0eaf206f1bd80b79a851e5f37a3`; ethereum `0x6f114a680915b3335c65225b7f61e2021419b24b`; ethereum `0x7538345c421467a2a58cbe9fa3dfbdeb6fb2c15a`; ethereum `0x7fb09845695f6bd88f4a0752e6a539a2209b6707`; ethereum `0x83d6e9ba460130d82194620ca0b16d025064d139`; ethereum `0x83ec519b6121ea1b6ae05177e7e9f9c046a5fe20`; ethereum `0x85b7cc4fd8767651c752d9ea76fc7dd388e391a0`; ethereum `0x86b26838f03c3724cb9a9d4d165df052c401a257`; ethereum `0x86ca9713762c04e10d2e2057952b91917dc650f2`; ethereum `0x8856738191dcf0b582e491bea99e880ab734f4e6`; ethereum `0x8f48eb0d8c298abbc68be5dece86c6faa4e33497`; ethereum `0x99b496d54848f2a98c4aa0b934f23b0f5c298e31`; ethereum `0xa16d36ea387aee0f625425ada2540d1a95dc2440`; ethereum `0xa91d85b2e9fe1f0371559a9a7dcb1bbe1acf9587`; ethereum `0xc0e4f5758e218762960bca9706fc7b6cf337e3c2`; ethereum `0xcc29655c9f9a211fb11c25d905306aa93a685ef3`; ethereum `0xccbc7fcc994db1d8f5fff17104532c0e0e78b449`; ethereum `0xd8252a4ec16de33fad1c69f2d3e80e9f7b8cef12`; ethereum `0xe1c0b5302e5a627141746acb1025c43f9fe87ca8`; ethereum `0xeae58fd59225a192ed897c3c8b382727dc322335` | ⚠️ Unaudited |
| VirtualBalanceWrapperFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x73e59de51668975abc9e9be2aad668f6e4e727a2`; ethereum `0xa1cc41c51e4186c911b170c2573c0040c92f859d` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 182 deployments: ethereum `0x02d341ccb60faaf662bc0554d13778015d1b285c`; ethereum `0x055be5ddb7a925bfef3417fc157f53ca77ca7222`; ethereum `0x06325440d014e39736583c165c2963ba99faf14e`; ethereum `0x06364f10b501e868329afbc005b3492902d6c763`; ethereum `0x075b1bb99792c9e1041ba13afef80c91a1e70fb3`; ethereum `0x08380a4999be1a958e2abba07968d703c7a3027c`; ethereum `0x094d12e5b541784701fd8d65f11fc0598fbc6332`; ethereum `0x0ae274c98c0415c0651af8cf52b010136e4a0082`; ethereum `0x0ce6a5ff5217e38315f87032cf90686c96627caa`; ethereum `0x0dfdc4d5390bea4d19e4cb797153bbb559939a9d`; ethereum `0x0f9cb53ebe405d49a0bbdbd291a65ff571bc83e1`; ethereum `0x10c4b6e027ca4d08ffaea5e81383ca5312e7904c`; ethereum `0x11137b10c210b579405c21a07489e28f3c040ab1`; ethereum `0x11e58de5154d50d35b12e7d87dca9654aa017f44`; ethereum `0x11f419adabbff8d595e7d5b223eee3863bb3902c`; ethereum `0x14f9bdc901dc1f64e0f6bea6824883e56b0d7d15`; ethereum `0x1794841fccdb7880a81f0cb4a43dd36bfd19762c`; ethereum `0x182b723a58739a9c974cfdb385ceadb237453c28`; ethereum `0x192092425296da5c4cd2e5365bc656f0553b36ef`; ethereum `0x194ebd173f6cdace046c53eacce9b953f28411d1`; ethereum `0x1aef73d49dedc4b1778d0706583995958dc862e6`; ethereum `0x1bd65cbc53ddb0fe988172d41015fba3b8ceaace`; ethereum `0x1cebdb0856dd985fae9b8fea2262469360b8a3a6`; ethereum `0x1de7f0866e2c4adac7b457c58cc25c8688cda1f2`; ethereum `0x1f2a662fb513441f06b8db91ebd9a1466462b275`; ethereum `0x2088a86f60d2504ca47961577628aff8202d8f6c`; ethereum `0x2146b07c9c9fc7b4bfc31d29ef59e2a179f881b6`; ethereum `0x2613b68a1614057a36bf2a58143f4e80aa7480fe`; ethereum `0x2b645a6a426f22fb7954dc15e583e3737b8d1434`; ethereum `0x2dded6da1bf5dbdf597c45fcfaa3194e53ecfeaf`; ethereum `0x2e60cf74d81ac34eb21eeff58db4d385920ef419`; ethereum `0x2fe94ea3d5d4a175184081439753de15aef9d614`; ethereum `0x33a6aea8f6d2e43d9b711054bc4f86bc6cedcf04`; ethereum `0x3740fb63ab7a09891d7c0d4299442a551d06f5fd`; ethereum `0x3a664ab939fd8482048609f652f9a0b0677337b9`; ethereum `0x3b3ac5386837dc563660fb6a0937dfaa5924333b`; ethereum `0x3b7020743bc2a4ca9eaf9d0722d42e20d6935855`; ethereum `0x3c0ffff15ea30c35d7a85b85c0782d6c94e1d238`; ethereum `0x3c8caee4e09296800f8d29a68fa3837e2dae4940`; ethereum `0x3e01dd8a5e1fb3481f0f589056b428fc308af0fb`; ethereum `0x3f4232107ff437bcd7ea9abc134ad553efeddaff`; ethereum `0x410e3e86ef427e30b9235497143881f717d93c2a`; ethereum `0x42d7025938bec20b69cbae5a77421082407f053a`; ethereum `0x43b4fdfd4ff969587185cdb6f0bd875c5fc83f8c`; ethereum `0x459eaa680b47d27c8561708c96c949e0018df5d9`; ethereum `0x45f783cce6b7ff23b2ab2d70e416cdb7d6055f51`; ethereum `0x462253b8f74b72304c145db0e4eebd326b22ca39`; ethereum `0x4807862aa8b2bf68830e4c8dc86d0e9a998e085a`; ethereum `0x49849c98ae39fff122806c06791fa73784fb3675`; ethereum `0x4bfb2fa13097e5312b19585042fdbf3562dc8676`; ethereum `0x4e680fba9b795c9988ae51ea398332a066357bd4`; ethereum `0x4f062658eaaf2c1ccf8c8e36d6824cdf41167956`; ethereum `0x4f0e0ed4ee48f253ac92490ce851712fcf053841`; ethereum `0x4f3e8f405cf5afc05d68142f3783bdfe13811522`; ethereum `0x4fd86ce7ecea88f7e0aa78dc12625996fb3a04bc`; ethereum `0x5282a4ef67d9c33135340fb3289cc1711c13638c`; ethereum `0x52ea46506b9cc5ef470c5bf89f17dc28bb35d85c`; ethereum `0x53a901d48795c58f485cbb38df08fa96a24669d5`; ethereum `0x54ee22d5593fc76fb20eafab66c45aab3268b800`; ethereum `0x56295b752e632f74a6526988eace33c25c52c623`; ethereum `0x571ff5b7b346f706aa48d696a9a4a288e9bb4091`; ethereum `0x58a3c68e2d3aaf316239c003779f71acb870ee47`; ethereum `0x5a6a4d54456819380173272a5e8e9b9904bdf41b`; ethereum `0x5b5cfe992adac0c9d48e05854b2d91c73a003858`; ethereum `0x5e71f075dbd4172f7145c774ea8534fdc3cf0e8d`; ethereum `0x6070fbd4e608ee5391189e7205d70cc4a274c017`; ethereum `0x61dc3c6da3f97f544c5352fd0508d0b849896e87`; ethereum `0x61e10659fe3aa93d036d099405224e4ac24996d0`; ethereum `0x64448b78561690b70e17cbe8029a3e5c1bb7136e`; ethereum `0x64eda51d3ad40d56b9dfc5554e06f94e1dd786fd`; ethereum `0x661dbbf6be5f9b1876131cb67a0beb67e783143a`; ethereum `0x6812c0de3097d022a76dbd229ec003ee6f50fc74`; ethereum `0x6955a55416a06839309018a8b0cb72c4ddc11f15`; ethereum `0x6c3f90f043a72fa612cbac8115ee7e52bde6e490`; ethereum `0x6d10ed2cf043e6fcf51a0e7b4c2af3fa06695707`; ethereum `0x6d65b498cb23deaba52db31c93da9bffb340fb8f`; ethereum `0x6ff57ec11498e67b0195be1a93c2e56fcad4fa00`; ethereum `0x74bd76482dc067fb5206499efe19c16cca62e9d3`; ethereum `0x76827f977dc1f6a02c3296636ed6d13c7421f5c7`; ethereum `0x7771f704490f9c0c3b06afe8960dbb6c58cbc812`; ethereum `0x79a8c46dea5ada233abaffd40f3a0a2b1e5a4f27`; ethereum `0x7adbf700919ab95ab4c444b9525b020ceb4456de`; ethereum `0x7b5a0905cbed0e96c062dbf0f921726db1f5f55b`; ethereum `0x7e1444ba99dcdffe8fbdb42c02f0005d14f13be1`; ethereum `0x7eb40e450b9655f4b3cc4259bcc731c63ff55ae6`; ethereum `0x7fc77b5c7614e1533320ea6ddc2eb61fa00a9714`; ethereum `0x7fe97bdc3b8b32e1cdc77d0666023ececc44ecfd`; ethereum `0x7fffa79fe475565098951fd187148782337dfc7d`; ethereum `0x8038c01a0390a8c547446a0b2c18fc9aefecc10c`; ethereum `0x803a2b40c5a9bb2b86dd630b274fa2a9202874c2`; ethereum `0x824f13f1a2f29cfeea81154b46c0fc820677a637`; ethereum `0x845838df265dcd2c412a1dc9e959c7d08537f8a2`; ethereum `0x8474c1236f0bc23830a23a41abb81b2764ba9f4f`; ethereum `0x8474ddbe98f5aa3179b3b3f5942d724afcdec9f6`; ethereum `0x884be299afdb00dfc1dfe183f1a064eb05ceb75c`; ethereum `0x890f4e345b1daed0367a877a1612f86a1f86985f`; ethereum `0x8925d9d9b4569d737a48499def3f67baa5a144b9`; ethereum `0x90e00ace148ca3b23ac1bc8c240c2a7dd9c2d7f5`; ethereum `0x91d68c1a93497485d544b61056861a67aadfea8a`; ethereum `0x93054188d876f558f4a66b2ef1d97d16edf0895b`; ethereum `0x936734ea750bb194ddb4892b191b6bd5c43a3985`; ethereum `0x94e131324b6054c0d789b190b2dac504e4361b53`; ethereum `0x9582c4adacb3bce56fea3e590f05c3ca2fb9c477`; ethereum `0x9726e9314ef1b96e45f40056bed61a088897313e`; ethereum `0x97b7e9c880ced70c125982b97654a56bffb9f86d`; ethereum `0x97e2768e8e73511ca874545dc5ff8067eb19b787`; ethereum `0x9fc689ccada600b6df723d9e47d84d76664a1f23`; ethereum `0xa274761e1a926d071188cb1aa55dcddfd7d0eadb`; ethereum `0xa2b47e3d5c44877cca798226b7b8118f9bfb7a56`; ethereum `0xa3d87fffce63b53e0d54faa1cc983b7eb0b74a9c`; ethereum `0xa464e6dcda8ac41e03616f95f4bc98a13b8922dc`; ethereum `0xa50ccc70b6a011cffddf45057e39679379187287`; ethereum `0xa5407eae9ba41422680e2e00537571bcc53efbfd`; ethereum `0xa96a65c051bf88b4095ee1f2451c2a9d43f53ae2`; ethereum `0xaa17a236f2badc98ddc0cf999abb47d47fc0a6cf`; ethereum `0xaa82ca713d94bba7a89ceab55314f9effeddc78c`; ethereum `0xaaaeee508b9a779c53a50b749fc8a7c8d00e9c35`; ethereum `0xac795d2c97e60df6a99ff1c814727302fd747a80`; ethereum `0xb0a0716841f2fc03fba72a891b8bb13584f52f2d`; ethereum `0xb0a25cd63ac7555428e1d8c78ed94e9109e129ee`; ethereum `0xb10c49fd2983f55fcfaa9a7a64a943d2852e23e2`; ethereum `0xb19059ebb43466c323583928285a49f558e572fd`; ethereum `0xb241a8c2fa87de870c7cbb29bebe70ec1ee7188f`; ethereum `0xb527c418c3eff31a88a6818c7953014ff9ec5a0b`; ethereum `0xb6a7935f8bc7b9822a6b05e2e0c7e32ba6e2eb44`; ethereum `0xb6c057591e073249f2d9d88ba59a46cfc9b59edb`; ethereum `0xb9fc157394af804a3578134a6585c0dc9cc990d4`; ethereum `0xbbc81d23ea2c3ec7e56d39296f0cbb648873a5d3`; ethereum `0xbc7e832426005669fa8a37fdad13884bc4f40a35`; ethereum `0xbe175115bf33e12348ff77ccfee4726866a0fbd5`; ethereum `0xc18cc39da8b11da8c3541c598ee022258f9744da`; ethereum `0xc25099792e9349c7dd09759744ea681c7de2cb66`; ethereum `0xc25a3a3b969415c80451098fa907ec722572917f`; ethereum `0xc2b1df84112619d190193e48148000e3990bf627`; ethereum `0xc2ee6b0334c261ed60c72f6054450b61b8f18e35`; ethereum `0xc45b2eee6e09ca176ca3bb5f7eee7c47bf93c756`; ethereum `0xc5424b857f758e906013f3555dad202e4bdb4567`; ethereum `0xc5cfada84e902ad92dd40194f0883ad49639b023`; ethereum `0xc7059f1017d248c022fa3169459f89c933ee35f6`; ethereum `0xc97ef40140a09eb60149c9051e52931a1c0451db`; ethereum `0xcdfb8974d9e1b9144ec62b82d696e07dc1f65dc0`; ethereum `0xcee60cfa923170e4f8204ae08b4fa6a3f5656f3a`; ethereum `0xd133d1f0359dfeadf1fa7bb655e2e1c76be2f778`; ethereum `0xd2967f45c4f384deea880f807be904762a3dea07`; ethereum `0xd30dd0b919cb4012b3add78f6dcb6eb7ef225ac8`; ethereum `0xd5bcf53e2c81e1991570f33fa881c49eea570c8d`; ethereum `0xd608a03eab20775f1e268a439ac30af3a7458c95`; ethereum `0xd632f22692fac7611d2aa1c0d552930d43caed3b`; ethereum `0xd662908ada2ea1916b3318327a97eb18ad588b5d`; ethereum `0xd7d147c6bb90a718c3de8c0568f9b560c79fa416`; ethereum `0xd81da8d904b52208541bade1bd6595d8a251f8dd`; ethereum `0xd8b712d29381748db89c36bca0138d7c75866ddf`; ethereum `0xd905e2eaebe188fc92179b6350807d8bd91db0d8`; ethereum `0xdc24316b9ae028f1497c275eb9192a3ea0f67022`; ethereum `0xdc31f5c17254a89d53a1248195f239618c96838e`; ethereum `0xdd8b8cdd7e3df7ec06611fa4c5b4e4cfbe7bf6a0`; ethereum `0xde5331ac4b3630f94853ff322b66407e0d6331e8`; ethereum `0xdebf20617708857ebe4f679508e7b7863a8a8eee`; ethereum `0xdefd8fdd20e0f34115c7018ccfb655796f6b2168`; ethereum `0xdf5e0e81dff6faf3a7e52ba697820c5e32d806a8`; ethereum `0xe28a41f2db01f4f47ade2a512ca149dd9b63ca45`; ethereum `0xe7a24ef0c5e95ffb0f6684b813a78f2a3ad7d171`; ethereum `0xeb16ae0052ed37f479f7fe63849198df1765a733`; ethereum `0xeb21209ae4c2c9ff2a86aca31e123764a3b6bc06`; ethereum `0xebdd536b55a66484e356be84c07d7f1632957f20`; ethereum `0xecb456ea5365865ebab8a2661b0c503410e9b347`; ethereum `0xed279fdd11ca84beef15af5d39bb4d4bee23f0ca`; ethereum `0xedf54bc005bc2df0cc6a675596e843d28b16a966`; ethereum `0xf129d674e042a112d4644858a9be73d15a971bab`; ethereum `0xf178c0b5bb7e7abf4e12a4838c7b7c5ba2c623c0`; ethereum `0xf1f85a74ad6c64315f85af52d3d46bf715236adc`; ethereum `0xf5194c3325202f456c95c1cf0ca36f8475c1949f`; ethereum `0xf74563fe38fe4d52706e6992d3410b7ea9d7eec3`; ethereum `0xf79d9242d3b12ea1a69aeafe4e19c8a03f324b8d`; ethereum `0xf9440930043eb3997fc70e1339dbb11f341de7a8`; ethereum `0xf98450b5602fa59cc66e1379dffb6fddc724cfc4`; ethereum `0xfa9a30350048b2bf66865ee20363067c66f67e58`; ethereum `0xfcba3e75865d2d561be8d220616520c171f12851`; ethereum `0xfd2a8fa60abd58efe3eee34dd494cd491dc14900`; ethereum `0xfd4d8a17df4c27c1dd245d153ccf4499e806c87d`; ethereum `0xfe0176d292d6e2b28e14f5d1d0c9ad2f98e7f3f9`; ethereum `0xff11887275cac956a651fe6523fc773e027d5b97` | ⚠️ Unaudited |
| ycDAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99d1fa417f94dcd62bfe781a1213c092a47041bc` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (300)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x002688c4296a2c4d800f271fe6f01741111b09be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00b71a425db7c8b65a46cf39c23a188e10a2de99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0145fd99f1dd6e2491e44fca608c481c9c5b97a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01c6808eb242c826d32f03712d66d5e613782363` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02152d5edcdba56a55efee36ceb9d9f7e47aeb5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x036ec656894568e2be9a6e53146ec6b3e446c11a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x042326b115b4c91207e0d13c08960ed815b03217` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04af91bf6c6452c9f998a7270027ae9b11b5303d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06ce8086965234400fdecab190b115c2c0717047` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07374b547cae235227635c13266c69847a3e46fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0901b541beff2cd44859701619e245e82f48e62b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09e15afff1e1fbfcc665a50691d78c2d1a216626` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a9ae947495034c0bbbab845fd75b5bbafc91aab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b81cff64efc89fcdbe7da78054232daa89d73ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0bdb2ed45ea8337f6437ef193c2ffd32fc9b75e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ce41af9dfa0d697da79dd30b8b73bf52a107499` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ce658f9bc3af831271199578449810023dba703` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d89774935e3d88b91f0cea0991f4fcd7d9f5470` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d91518d59a6bf5f9b1576edead855c643a70cd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ec8e0c868541df59ced49b39cc930c3a8dbd93a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10538872ded50241d9b4f4323fedfe6ed32c0e27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x124716add6ecaa55a482c3dc81a557ae53638ccf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15282d93b1f2c92a034936f6f56a55c0d423e8d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15452c66649368a42d0fbde91fb5241fb0573484` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17c6e1ddf1cce3d33240a53fce8a2ee48541f4d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18672b1b0c623a30089a280ed9256379fb0e4e62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x188041ad83145351ef45f4bb91d08886648aeaf8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a783886f03710abf4a6833f50d5e69047123be6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d9e59364785ebf00e8ef2c15e132d0f661585ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1dab6560494b04473a0be3e7d83cf3fdf3a51828` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e7d3bf98d3f8d8ce193236c3e0ec4b00e32daae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ef89ed0edd93d1ec09e4c07373f69c49f4dccae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21f5f6d3f90d0f56a6de307a3bd359d0a151b304` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x226845c2ba216b8bb1aaadfd4e14de69426c5445` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23208ca4f2b30d8f7d54bf2d5a822d1a2f876501` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24c7ce842bdbbc9eebb84b73eb238b41b60d4fd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x271fbe8ab7f1fb262f81c77ea5303f03da9d3d6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2869e74a15d3c0c797b04feaef93734060a4477c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28d7880b5b67fb4a0b1c6ed6c33c33f365113c29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x293436d4e4a15fbc6ccc400c14a01735e5fc74fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29ec0d55b8f26298a5350c64f56281eb070bf47e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a28789645776eaa95f6d491ff375781ea5b40dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2aeb5c8776567c4eeebda1450e343b1bef49ae32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b7e624bdb839975d56d8428d9f6a4cf1160d3e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2bc706b83ab08d0437b8a397242c3284b5f81d74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c9b39f4d18e2e19c1f3d2b378128ee7ebe9f372` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d370111f8ffcf5bff0f56ba43c62c2ad98be7a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d89d82ff68bae1357d746b3e8eac520bfe1d5ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ed8727881a07bb8192c94d1a21ac827d22fc25c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ef4b38a128ecc1ac06b43055553f95af59523de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f3adbd7a2d549043608b7c5f731b85f5b08f513` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30a2f3c3aa6d12c0a36bed210dcf1b32ef6228cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x319c06103bc51b3c01a1a121451aa5e2a2a7778f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31aa15da826da3311788b208d31cae34074d1dc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x326fe113a130c569b44aff93b3637f3ac956ecdf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32facb5a46e02decaf5f939ab12c123eee203a5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34024ba3b6edaf5cdd1c24fefe1df5d03041f38c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x368440b3121f32df336d393834eafd8fa787c4ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36fb071d5d30e5207ecc010c0ea3cc9ad75838a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x387177b33830f48199110f186f47797c66556b3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38e7627eb98a40e7528bcce709a80083093ba2f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3910dce33441360e4c1d2749afa08e1a59af2546` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3993d34e7e99abf6b6f367309975d1360222d446` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a283d9c08e8b55966afb64c515f5143cf907611` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b38ce23799dc56664ff6048892510abffdb7a25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b6831c0077a1e44ed0a21841c3bc4dc11bce833` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3be09dea9ca8b6205d05f196e9c68fc35190a514` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c08533dbcd0ab64bff5306a9d6d1de912b81b9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d229e1b4faab62f621ef2f6a610961f7bd7b23b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3da7ff6c15c0c97d9c2df4af82a9910384b372fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f209428d8c52f2f9ccacf3f679b87ec1a54a571` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40745803c2faa8e8402e2ae935933d07ca8f355c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x409893c94aad411030e5a78fd39b015221dfb8b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4169ef3b885416bd553567e78585a97ee52ba700` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41d5d78049d44444ac6d5e1ec67990f24efacd58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41f50577af6f917d2366a04cc11bddc42f6d940a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42b9dea10b51a696949715797bdfd69489fc3b32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42dd7dc055a04c3d795a3dfd2eaaf7d480367a02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4316416f429b04fb12df8952fa1434e6b9d77c3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43ecffe6c6c1b9f24aeb5c180e659c2a6fce11bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x450c357be4b8108a5b2ad1085c0a04fc33879605` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4710a77a0e0f4c7b0e11cdeb74acb042e62b8d22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x480af6d9abe851e2fc4162b2b93fff8cf84ddee7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4863c6df17dd59311b7f67e694dd835adc87f2d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c18e409dc8619bfb6a1cb56d114c3f592e0ae79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c1d4ad2fa2ba5510acbb0f428ec861e1f7ea3a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c5d4f542765b66154b2e789abd8e69ed4504112` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ca9b3063ec5866a4b82e437059d2c43d1be596f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4cb152b45e667f86a0470776bed0be93a5f1c534` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4cfc695ec2bf1afadb07a9effdfbefa25403ecc3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e1f162fd143e4a829341efd6dd451b018b10f9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4efb0e6aba6517ce4fdd3f31013cbbc0bbb8dbfa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f37395bdfbe3a0dca124ad3c9dbfe6a6cbc31d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f8846ae9380b90d2e71d5e3d042dff3e7ebb40d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50996c7e748b1b83130b4854945d86ba6fc81f06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50c39ea8f3d72310c8b56a56b333994266e9b477` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50f35f4fd499898801282a415f4c3a689663719f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x528baca578523855a64ee9c276826f934c86a54c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52a430b5b7407fa103c5ae974744e4cc945354e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5473b1bcbbc45d38d8fbb50a18a73afb8b0637a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x584b0fd8f038fe8aedf4057ca3cb3d840446fbbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5852bda4520f1b000c760c1dfb8ba5db8fcbaa90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x596f8e49ace6fc8e09b561972360dc216f1c2a1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a0d404d2042b92eb7948ac5943128e1088fd24b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a7aa38f903228c75c1da5ee40b6d3ed60671507` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5aa00dce91409b58b6a1338639b9daa63eb22be7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ac53910dea4779e5ac3a7e997df8e9d5f6a7c9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5bea27d52e36c58dbce2921773396f33f2bd780a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c53956d4743e4e1ba5881fee27357c5670c013b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d0f47b32fdd343bfa74ce221808e2abe4a53827` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e0198c158276efaebc5a32c8351fb5d679d4288` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x600e571106c31c4ca1bf4177ba808e37146a4a0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60b1b1f20373005030095fbe7cde032625fc96c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62191ef48bf8fd7a0e10ecb066b0350e6a9c18a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x627bb157ebc0b77ad9f990dd2ad75878603abf08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6340678b2bab22a37d781cd8da958a3cd1d97cdd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63564e223ba1fdb491c6ca68f63c67a578443ac4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x649e0b707a90f1d73b27f83358c4d9bcc91fd622` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x656dd75d33a6241a0c4c2368eb00441ad3113ec0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65a8b215f34df5c30c64523d638ea698065ffa15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67fe41a94e779ccfa22cff02cc2957dc9c0e4286` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69aafff1218ba086ac782f98cb8399d1226e2af3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69d7469e677e4c8fa4581d36908b0c9c8750baa9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6af700a9b52bdea2e33dbdcacae638fd8e118bd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b765d07cf966c745b340adca67749fe75b5c345` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ddd163240c21189ed0c89d30f6681142bf05ffb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ec5859a310740d8b1e6b803dc1cea8e8fb958ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f4e8c8832ed1a1e14e030d56c015196a705fbf9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7002b727ef8f5571cb5f9d70d13dbeeb4dfae9d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70a1151e0bb32484e25c107e3a69886a8361482e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70fc957eb90e37af82acdbd12675699797745f68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72de985c5af6f96f3be22784b5533218421e6394` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x747459fc40d80a500440f9d650818f7fa5754acc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x752ebeb79963cf0732e9c0fec72a49fd1defaeac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7624c0dd4f5d06d650ddff25ffec45d032501260` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x783128730280053ef00f675b777288e80565f26a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79d584d2d49ec8ce8ea379d69364b700bd35874d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7af331398dc340bf327904077eb68f27f75a9693` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7baad50a656c484330f9e9ae720798edcd739c83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c054a0dda66cd4d0aacfe3b98b9d49b9365dcd2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c868f045a60501a2f4159446545939771dda323` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d20ecb58d9d661aef2bd0ee953d53567e695dfb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7da2ef41913adc5285ffdcfa3622f5f81c946500` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e6327cce4bbdb936ee744a7bae6c2978b62183f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e6c50f75badb725fddaa47c063d8f8407defc5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ec8e02b74cdd1c1c222dbf3bf47f3256b734099` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80333bd8791fee04c4c3e1ca8a524cefa7c94737` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80466c64868e1ab14a1ddf27a676c3fcbe638fe5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80caaad7a0e977f3e93a86f4acf5db70b4c89af2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81373aad854e31e6da610b2fa5260c6c60db8dbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x818709b85052ddc521fae9c78737b27316337e3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8282bd15dca2ea2bdf24163e8f2781b30c43a2ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8301ae4fc9c624d1d396cbdaa1ed877821d7c511` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x832f436ad2813c76aae756703cacb5c1028d11da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x847ee1227a9900b73aeeb3a47fac92c52fd54ed9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8484673ca7bff40f82b041916881aea15ee84834` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x856ff1aaff4782eee27d2c6bbad48781f57f88cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x85fd0626e2d7f07a2b08718f2ea2e044b1d5f163` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89086653f185a0431d24043d92772942c141bab0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89ac9a0b48fc66875de710ab7ee53027970064dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89d32bf7b120630b24fe9edc8c7534a73016c999` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89ea1e4232680a66470a725ffd399082a375d1ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8aeb58603efb7a9f63712a2506df01b685ba1c4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b6861d07d3688103d0ad801fabfc4f6bac231de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b8dce09b0deb003573215d5be238534b1cf11bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c5a7f011f733fbb0a6c969c058716d5ce9bc933` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d76f31e7c3b8f637131df15d9b4a3f8ba93bd75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f300679f893584149af176562abc64f8e3b4476` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f4ef8c623c33cdb6a57c19aecb87e161fa7691f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f68f4810cce3194b6cb6f3d50fa58c2c9bdd1d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x913a3a0d83b87497587e66a7f9603ccd998ba572` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9164e210d123e6566daf113136a73684c4ab01e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95ecdc6caaf7e4805fcef2679a92338351d24297` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x966cbdecefb60a289b0460f7638f4a75f432ca06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96d07ff312c56e08462308bca2f5e505e8111a2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97f60ffc47fafbcba3ea364bff2abcbabf85c849` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9838eccc42659fa8aa7daf2ad134b53984c9427b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98638facf9a3865cd033f36548713183f6996122` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98a7f18d4e56cfe84e3d081b40001b3d5bd3eb8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99f742505243e4a0f43fdf731a0bd746227c6e8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99f8dc2eac0940e609a8dcb9fc905f0158af2288` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9bd5b13f51e27b58174968a8983b450a300cda05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9be82cddb5c266e010c97e4b1b5b2df53c16384d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c2186cabc49782632efd00ba28bdb92086470a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9dfbf2b2af574ca8ba6dd3fd397287944269f720` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e291bfbb158ffaaf1c3a8ccd694be0d49d6aada` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2518b71ee64e910741f5cf480b19e8e402de4d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa402f9e5015be2de7aed695e47f2729246cc9434` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa504742cefe2f9027328b49c7cffec3d79b5ab1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa571190ebbaaed0580557c83185b7ffdc4c19ca5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7e98815c0193e01165720c3abea43b885ae67fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa85461afc2deec01bda23b5cd267d51f765fba10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa0850ddf8ab99286a473a7d2a96e07cefa89034` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa25a6fa9e4dadae0d3ee59bea19fbcf0284830c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa346781ddd7009caa644a4980f044c50cd2ae22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac288da6a8c5b6406562c27d54ba22666fe3adca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac8a4d55c1d6ea3f84a6c868f2b5a5ec3cef2800` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad19c0506f5277bbf92d8dfde1a51a15aed42606` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xadcfcf9894335dc340f6cd182afa45999f45fc44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae14b769eac8ddb3caa79bd3d7c21d2986327bce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaee70429bdfbf599a979f50d5fde5eb0d317e0f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb08eb288c57a37bc82238168ad96e15975602cd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb311acd3eba1acfa29957cad50746738d52070dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb556fa4c4752321b3154f08dfbdfcf34847f2eac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb576491f1e6e5e62f1d8f26062ee822b40b0e0d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb57a959cdb3d5e460f9a7cc48ed05ec29dff049a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb61009896eb35d81d02f15b2a1380252d2141725` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8687d7dc9d8fa32fabde63e19b2dbc9bb8b2138` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8a3f8e783d52cfb9e632276714234661db698e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb911d7e59ba82fdf477a2ab22ff25125072c9282` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb960c386eca71d28c95cb064d2f4720fbad1f8fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9f861b7755ff09cfd65cfe262d19823607b1f24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbac8459641f765b26e8984f29082629359f084c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb14477c24da6a63856a676739950b244ec6fbc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb3fda661149f6e45d829d5dd54a1608577c5fa1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbbb8055914657195a795bb4fc127877ceab35b8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc4d0f452b347cf25ee84509ed99bd478ac96b5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc6977251621591fd3e8222cc89081841510b547` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc7507bea8d7bcb49f511cf59651b5114e6e7667` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbcda2acfe820c92b8e0b389733aaaae4f930a9f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe83fd842db4937c0c3d15b2aba6af7e854f8dcb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbebc44782c7db0a1a60cb6fe97d0b483032ff1c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbef434e2acf0fbad1f0579d2376fed0d1cfc4217` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbfcf63294ad7105dea65aa58f8ae5be2d9d0952a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc00978c2bfc2c0ac159367080992b287c075164b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc014f34d5ba10b6799d76b0f5acdeee577805085` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc05105c25a6de48f587507170de58c56ef8f8a67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc08550a4cc5333f40e593ecc4c4724808085d304` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0bd9eb88840ee181c5cadf0a2914d41a403007a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1793a29609ffff81f10139fa0a7a444c9e106ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1db00a8e5ef7bfa476395cdbcc98235477cde4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc455e6c7936c2382f04306d329abc5d36444d3f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc49dfa9177613b01abc91ba75e9ebc785e9b6bd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4a059e9cf1d18f386cd4e31e1052db380e016a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4ad29ba4b3c580e6d59105fff484999997675ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4e6062a3a7fa246202905b70ecb4da1137e755f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc54106a999bede585c9574f2e4cb31df46cbdd83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5fa220347375ac4f91f9e4a4aab362f22801504` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc67a44d958eef0ff316c3a7c9e14fb96f6dedaa3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc684432fd6322c6d58b6bc5d28b18569aa0ad0a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7bab672806932fcaf918b4318796b02b0832856` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9332fdcb1c491dcc683bae86fe3cb70360738bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc95bd7460ece4007973458d1c0f8ccc46c1880df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca02c2a1eabfc1f529085820a1f3be8ab71fa4fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca3d75ac011bf5ad07a98d02f18225f9bd9a6bdf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb08717451aae9ef950a2524e33b6dcaba60147b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb70bbaec89b577617f835e7a2e126da9e5acf21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb8a15af05102713d4e9628f20824111f9331b2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbed82324afcc67e77e9ce9a23d85d49d65cfe90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xccebbf77c3eeb298113392363e0c9863b37111b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcdb55051fc792303ddc7c1052cc5161baed88e2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xced2c6f8680bf4da2a429b04bdf528619e24cdc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf61ee62b136e3553fb545bd8fec11fb7f830d6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcfb3cfeae8c3f39aecdf7ec275a00d29eca08535` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0c71ecd0787bb792e2bb8eeef030a66467bba1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0e6bc02657451fe16cddd7cab8cd55e39d25d2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd10d54830714003575d9f472d62268a29c902e5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3e576b5dcde3580420a5ef78f3639ba9cd1b967` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd446a98f88e1d053d1f64986e3ed083bb1ab7e5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd51a44d3fae010294c616388b506acda1bfaae46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6953e2c5546860a244aacb0e5af67a16d3725de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd79964c70cb06224fda4c48387b53e9819bcb71c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8f49c747aed8d394f6f1841546e2b83e09a357d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdbe281e17540da5305eb2aefb8cef70e6db1a0a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc892358d55d5ae1ec47a531130d62151eba36e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd05247d34d85bcc145c74e2f1d070352fef83f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdede1cce94cdaa3ce358e561895775db369b72e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf41e21dae8bf6ae3eddb83337f8364eb7fc1659` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe38daa41be7ca22f724b9cf6d13cd920bf18a3d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3e3fb7e9f48d26817b7210c9bd6b22744790415` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3ee57d3fbdbae9b506a92da79ca8454ac288e2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe55be4c8f2d3c11536f61c8977dac4ad58446059` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5afcf332a5457e8fafcd668bce3df953762dfe7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5fdbab9ad428bbb469dee4cb6608c0a8895cba5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe782adaa40f2148ccd0e181ce090e44900e392ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7cd2b4eb1d98cd6a4a48b6071d46401ac7dc5c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe84f5b1582ba325fdf9ce6b0c1f087ccfc924e54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe8b2989276e2ca8fdea2268e3551b2b4b2418950` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe911fa14a49ac37e79ae8a60bd22a5f6a78c85a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe96a9bdb549f4cc4ee8deb7085bd6ffe4b273b1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea6876dde9e3467564acbee1ed5bac88783205e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb4480152bef93fa7bd01a7f427f1dd3069fc4d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed4064f376cb8d68f770fb1ff088a3d0f3ff5c4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef1385d2b5dc6d14d5fecb86d53cdbefeca20fcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf113929f69fabe165a2280cac00c5f77196aa34c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf18056bbd320e96a48e3fbf8bc061322531aac99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf313a91af8930ae7fe3e6f8ba7ce62024928ee77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf574cbebbd549273af82b42cd0230de9ea6efef7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5e9eb18b3ecdfda07ea55133f427d47add6884f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf71040d20cc3ffbb28c1abcef46134c7936624e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf77a1eb7d4a2d6f0a5153e7e0f42191d43b8bf6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf939e0a03fb07f59a73314e73794be0e57ac1b4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa17c594732d71611bbf5e959d595600135feb87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa3e2db8eb6c646e0d24046c1a185934d41a8f7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb230bc3de97ee43d2501bcaab9a50bba9b69e1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfbef0cb133e2921aad88bbd993990834ca33bda6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc780e0e273098e6efdad6f30caa48ffc659cd6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe3affcd6e172592479aca42251cf7da89847074` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfef6ee493a60fc7cb496fef54512d465646d1135` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff051db87adfb0be398016ee5c68280ad49f1fd8` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 463
- Live contracts: 0
- Unknown liveness contracts: 463
- Source-verified contracts: 160
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: candidate review=20, contamination review=19, source verified unclassified=121, unverified unclassified=303

Showing first 200 of 463 contracts. The complete deployer expansion list is in `brief.json`.

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | candidate review | LendFlareProxy<br>`0x19ac8e582a9e6f059e56ce77015c46e250c711d2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | candidate review | LendFlareProxy<br>`0x1fa362339392f910bd69af8e13dd20c5942d446f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | candidate review | LendFlareProxy<br>`0x402e3c8e2ba9db00005d934260157b1b648cac5e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | candidate review | LendFlareProxy<br>`0x64e965deed764b84882903e26d021e4856b083e6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | candidate review | LendFlareProxy<br>`0x7720a95be2b7ce0fb5abe4678d2e2a245bcd7aa5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | candidate review | LendFlareProxy<br>`0x77be80a3c5706973a925c468bdc8eaccd187d1ba` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | candidate review | LendFlareProxy<br>`0x8a06635c5a84bd0f2edaeb31c0d5da0f5523af77` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | candidate review | LendFlareProxy<br>`0xac86b0d995a2ba4058860eaf0c0230895b8daa07` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | candidate review | LendFlareProxy<br>`0xb620be8a1949aa9532e6a3510132864ef9bc3f82` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | candidate review | LendFlareProxy<br>`0xff9e834d00d9b10860a04c49f4d15b6613195f21` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | candidate review | LendingMarket<br>`0x9997fde74acb0c191cdc7fcdc72255d3a3f7f179` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | candidate review | LendingMarket<br>`0xa7c45ba4476949a2bc8a7318f62bb12fdd5e88c0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | candidate review | LendingMarketV2<br>`0x03f744a9ec8d350d1991ac6704fce0c211fce26d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | candidate review | LendingMarketV2<br>`0x4f69ad74a5d443b4adc908474c61f5f77ab79d52` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | candidate review | LendingMarketV2<br>`0xc8937e9eb757b2fa686f797e83ca410219061119` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | candidate review | TransparentUpgradeableProxy<br>`0x803ffdff8150093be6fc78a0963f443e9bd9c378` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | candidate review | TransparentUpgradeableProxy<br>`0x99fc40934b60bdeb10c251e854a77ea47ad628ae` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | candidate review | TransparentUpgradeableProxy<br>`0x9e96598713e7533a33418062d5402b6801ff156a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | candidate review | TransparentUpgradeableProxy<br>`0xbcdc45372847b95bb4bd6d524b4a801aac98619c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | contamination review | DepegShieldWrappers<br>`0x7a996019db95ae74fa3ed8ed86ff1cc0eeaf9762` | non_address_book | unknown | unknown | verified | n/a | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | contamination review | GenerateLendingPools<br>`0x0429593646407b1f7a7dce3ce9dc4724bc60afbd` | non_address_book | unknown | unknown | verified | n/a | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | contamination review | GenerateLendingPoolsV2<br>`0xd6aaba4ef2540a69d8e99cbc8647d194cfd17241` | non_address_book | unknown | unknown | verified | n/a | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | contamination review | GenerateLendingPoolsV3<br>`0x447413fbf9c992ab6a967541f204d8f40419c9ec` | non_address_book | unknown | unknown | verified | n/a | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | contamination review | LendFlareGaugeModel<br>`0xc7817927c9f3629717b5d237caa15968424246b6` | non_address_book | unknown | unknown | verified | n/a | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | contamination review | LendFlareTokenLockerFactory<br>`0x5b61d7810db1780b9552259cf37739413ef41524` | non_address_book | unknown | unknown | verified | n/a | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | contamination review | LendFlareTokenMinter<br>`0x7b278f27506cbd890975df0b70fe6bd3b917b831` | non_address_book | unknown | unknown | verified | n/a | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | contamination review | LendFlareVotingEscrow<br>`0xe6615c44bc3cc90839ad6f729eeeabd2aaf6f9a6` | non_address_book | unknown | unknown | verified | n/a | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | contamination review | LendingSponsor<br>`0x1284ef9ebd1d4e0ae30fb7de5ab636eea218da30` | non_address_book | unknown | unknown | verified | n/a | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | contamination review | LiquidityTransformer<br>`0x8038dd8356f84ebe440c0a0847e553d9692b059a` | non_address_book | unknown | unknown | verified | n/a | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | contamination review | MerkleAirdrop<br>`0xf23801f0c81b8e31ce95bc980ecaf069d296857c` | non_address_book | unknown | unknown | verified | n/a | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | contamination review | MovingLeverageBase<br>`0xd132c63a09fccfef56b88c5aca8ecbb63f814a46` | non_address_book | unknown | unknown | verified | n/a | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | contamination review | RouteConfigs<br>`0x6fbea2e735c67882553791c5d9f9423f56690ed9` | non_address_book | unknown | unknown | verified | n/a | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | contamination review | SupplyBooster<br>`0x8237720bbdbcfbe59c3d447beaf1133b72f3320f` | non_address_book | unknown | unknown | verified | n/a | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | contamination review | SupplyPoolExtraRewardFactory<br>`0x2930ea2285b6b111a89db14dfa409f7fb17b3a88` | non_address_book | unknown | unknown | verified | n/a | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | contamination review | SupplyPoolGaugeFactory<br>`0x8929369821b1e8ac62e5e59514fda7378bcd4a6e` | non_address_book | unknown | unknown | verified | n/a | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | contamination review | SupplyPoolManager<br>`0xf61c0efe88307ddc50e4e61c5979e58a41aa9423` | non_address_book | unknown | unknown | verified | n/a | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | contamination review | SupplyRewardFactory<br>`0x725c9da2efcf67866632f8fa5009e7859c21bc13` | non_address_book | unknown | unknown | verified | n/a | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | contamination review | VirtualBalanceWrapperFactory<br>`0x73e59de51668975abc9e9be2aad668f6e4e727a2` | non_address_book | unknown | unknown | verified | n/a | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | source verified unclassified | DepegShield<br>`0x5e6b51b181f52fc470db062a07f0210eed248ac1` | non_address_book | unknown | unknown | verified | n/a | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | source verified unclassified | GenerateLendingPools<br>`0x046348e32a5ef70c0848b75b5cecd9e3a5673c11` | non_address_book | unknown | unknown | verified | n/a | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | source verified unclassified | GenerateLendingPools<br>`0x04ac5c13f6989d5ef6b78fd3a0ccaeedbc5f4fd2` | non_address_book | unknown | unknown | verified | n/a | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | source verified unclassified | GenerateLendingPools<br>`0x5086f64d5ea5cb9b9a48f1a46801bff21bbd338f` | non_address_book | unknown | unknown | verified | n/a | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | source verified unclassified | GenerateLendingPools<br>`0x55a03d86e745712fdbb6aefa56d4ca132bc2772c` | non_address_book | unknown | unknown | verified | n/a | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | source verified unclassified | GenerateLendingPools<br>`0x73a1a55c1a973bb8c8170e800832e235c1ead527` | non_address_book | unknown | unknown | verified | n/a | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | source verified unclassified | GenerateLendingPools<br>`0x73da41709e867762599dc34a4cfee05b89271c48` | non_address_book | unknown | unknown | verified | n/a | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | source verified unclassified | GenerateLendingPools<br>`0x76973c47a2d7ce54dbd681fa7b0213ff14b50c97` | non_address_book | unknown | unknown | verified | n/a | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | source verified unclassified | GenerateLendingPools<br>`0x786a844e18e48d3c990defa6de9c315f8e28ba9a` | non_address_book | unknown | unknown | verified | n/a | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | source verified unclassified | GenerateLendingPools<br>`0x9a16776534e47c3e30fc591204d49af6eaabe043` | non_address_book | unknown | unknown | verified | n/a | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | source verified unclassified | GenerateLendingPools<br>`0xb985a1570ded35291c78518f2a3102a0334b4c18` | non_address_book | unknown | unknown | verified | n/a | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | source verified unclassified | GenerateLendingPools<br>`0xe0aa24521459f68b3a4836486f50c89bbdb9be5a` | non_address_book | unknown | unknown | verified | n/a | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | source verified unclassified | GenerateLendingPools<br>`0xfdb13c35ec748e6531d2a69063d6cb2abce2b829` | non_address_book | unknown | unknown | verified | n/a | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | source verified unclassified | LendFlareCRV<br>`0x65368954e911f3003e6827388eadc03922e7ef19` | non_address_book | unknown | unknown | verified | n/a | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | source verified unclassified | LendFlareGaugeModel<br>`0xe06ee26a1ed939452269856bf3a8d1784f51028c` | non_address_book | unknown | unknown | verified | n/a | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | source verified unclassified | LendFlareToken<br>`0xa576538c83672fb9087aa7b96b661acbbdcd4fbc` | non_address_book | unknown | unknown | verified | n/a | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | source verified unclassified | LendFlareToken<br>`0xbe63022b4175e8c964c9e2b7acc6873571de00ea` | non_address_book | unknown | unknown | verified | n/a | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | source verified unclassified | LendFlareToken<br>`0xc847b0e5fc8c02c1c33afd381043ddf3eb3e0c39` | non_address_book | unknown | unknown | verified | n/a | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | source verified unclassified | LendFlareVault<br>`0x29042e6389075f7181361ee5bca1df9a524d492c` | non_address_book | unknown | unknown | verified | n/a | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | source verified unclassified | LendFlareVault<br>`0x35f962d8da9bfbe9af3cd568b50e51c81175ea87` | non_address_book | unknown | unknown | verified | n/a | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | source verified unclassified | LendFlareVault<br>`0x4169fa3452913d226fe2c61bb6476c4a53a08ac0` | non_address_book | unknown | unknown | verified | n/a | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | source verified unclassified | LendFlareVault<br>`0x6c3cb71fb9d3c2a226148fee032dec8e4453094e` | non_address_book | unknown | unknown | verified | n/a | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | source verified unclassified | LendFlareVault<br>`0xd61401ccfd30356c8c00349eebb6a60d145810ff` | non_address_book | unknown | unknown | verified | n/a | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | source verified unclassified | LendFlareVotingEscrow<br>`0xf706fd21cd2c643eea18fdafd819baa7f4cff2ee` | non_address_book | unknown | unknown | verified | n/a | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | source verified unclassified | LendFlareVotingEscrowV2<br>`0x70ffe9056a769290292beb934b39169274ca5b3b` | non_address_book | unknown | unknown | verified | n/a | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | source verified unclassified | LendFlareVotingEscrowV2<br>`0x96738a3b759df57ee96c8dab36f33cf66dd4bf00` | non_address_book | unknown | unknown | verified | n/a | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | source verified unclassified | LendFlareZap<br>`0xd7c86a52411235169565fa85f56e74fcdda303ca` | non_address_book | unknown | unknown | verified | n/a | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | source verified unclassified | LendingSponsor<br>`0x807047542431d8a6acf255a52ee815a2a957036d` | non_address_book | unknown | unknown | verified | n/a | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | source verified unclassified | RouteConfigs<br>`0x886c47d96d65be83e8baf6336ab9b0ff0d46373a` | non_address_book | unknown | unknown | verified | n/a | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | source verified unclassified | SupplyBooster<br>`0xbabb974596343a189930982fabdc7a0d9298522f` | non_address_book | unknown | unknown | verified | n/a | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | source verified unclassified | SupplyPoolExtraRewardFactory<br>`0x2b4f87114ce7e11bbaa1b278fb3176def6ab7929` | non_address_book | unknown | unknown | verified | n/a | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | source verified unclassified | SupplyPoolExtraRewardFactory<br>`0x796669470a1f4b975b50c7691544546659d9a110` | non_address_book | unknown | unknown | verified | n/a | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | source verified unclassified | SupplyRewardFactory<br>`0xd66ae82346087a19fcf0b0cc7e07b039c4a3fe59` | non_address_book | unknown | unknown | verified | n/a | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | source verified unclassified | SupplyTreasuryFundForAgEUR<br>`0x5d7417ca434cb90f587c62597087386e58475a0d` | non_address_book | unknown | unknown | verified | n/a | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | source verified unclassified | Timelock<br>`0x63d7a70c17a1fca27dc4100bc737a0dbeb52a5b2` | non_address_book | unknown | unknown | verified | n/a | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | source verified unclassified | VirtualBalanceWrapperFactory<br>`0xa1cc41c51e4186c911b170c2573c0040c92f859d` | non_address_book | unknown | unknown | verified | n/a | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x036ec656894568e2be9a6e53146ec6b3e446c11a` | non_address_book | unknown | unknown | unverified | n/a | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x042326b115b4c91207e0d13c08960ed815b03217` | non_address_book | unknown | unknown | unverified | n/a | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x09e15afff1e1fbfcc665a50691d78c2d1a216626` | non_address_book | unknown | unknown | unverified | n/a | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x10538872ded50241d9b4f4323fedfe6ed32c0e27` | non_address_book | unknown | unknown | unverified | n/a | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x124716add6ecaa55a482c3dc81a557ae53638ccf` | non_address_book | unknown | unknown | unverified | n/a | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x15452c66649368a42d0fbde91fb5241fb0573484` | non_address_book | unknown | unknown | unverified | n/a | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2f3adbd7a2d549043608b7c5f731b85f5b08f513` | non_address_book | unknown | unknown | unverified | n/a | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3f209428d8c52f2f9ccacf3f679b87ec1a54a571` | non_address_book | unknown | unknown | unverified | n/a | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x41f50577af6f917d2366a04cc11bddc42f6d940a` | non_address_book | unknown | unknown | unverified | n/a | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4cfc695ec2bf1afadb07a9effdfbefa25403ecc3` | non_address_book | unknown | unknown | unverified | n/a | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6ec5859a310740d8b1e6b803dc1cea8e8fb958ed` | non_address_book | unknown | unknown | unverified | n/a | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7baad50a656c484330f9e9ae720798edcd739c83` | non_address_book | unknown | unknown | unverified | n/a | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7c054a0dda66cd4d0aacfe3b98b9d49b9365dcd2` | non_address_book | unknown | unknown | unverified | n/a | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x882f464fbd355b736e35f1a2634d536c8979aa43` | non_address_book | unknown | unknown | unverified | n/a | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x99f742505243e4a0f43fdf731a0bd746227c6e8b` | non_address_book | unknown | unknown | unverified | n/a | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbb14477c24da6a63856a676739950b244ec6fbc5` | non_address_book | unknown | unknown | unverified | n/a | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbd507de9e8a86b4da201eba187f08d18120e02e8` | non_address_book | unknown | unknown | unverified | n/a | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc49dfa9177613b01abc91ba75e9ebc785e9b6bd8` | non_address_book | unknown | unknown | unverified | n/a | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc4a059e9cf1d18f386cd4e31e1052db380e016a3` | non_address_book | unknown | unknown | unverified | n/a | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc4e6062a3a7fa246202905b70ecb4da1137e755f` | non_address_book | unknown | unknown | unverified | n/a | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xca02c2a1eabfc1f529085820a1f3be8ab71fa4fd` | non_address_book | unknown | unknown | unverified | n/a | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xef9423d140c8009597d1185b4b6d5302df21ca0f` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf77a1eb7d4a2d6f0a5153e7e0f42191d43b8bf6a` | non_address_book | unknown | unknown | unverified | n/a | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfa17c594732d71611bbf5e959d595600135feb87` | non_address_book | unknown | unknown | unverified | n/a | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfe3affcd6e172592479aca42251cf7da89847074` | non_address_book | unknown | unknown | unverified | n/a | `0x63b8c91dd55626db091da26ba96bd8dd3f36820b` |
| ethereum | source verified unclassified | Vyper_contract<br>`0x0ae274c98c0415c0651af8cf52b010136e4a0082` | non_address_book | unknown | unknown | verified | n/a | `0x7f7abe23fc1ad4884b726229ceaafb1179e9c9cf` |
| ethereum | source verified unclassified | Vyper_contract<br>`0x10c4b6e027ca4d08ffaea5e81383ca5312e7904c` | non_address_book | unknown | unknown | verified | n/a | `0x7f7abe23fc1ad4884b726229ceaafb1179e9c9cf` |
| ethereum | source verified unclassified | Vyper_contract<br>`0x2613b68a1614057a36bf2a58143f4e80aa7480fe` | non_address_book | unknown | unknown | verified | n/a | `0x7f7abe23fc1ad4884b726229ceaafb1179e9c9cf` |
| ethereum | source verified unclassified | Vyper_contract<br>`0x33a6aea8f6d2e43d9b711054bc4f86bc6cedcf04` | non_address_book | unknown | unknown | verified | n/a | `0x7f7abe23fc1ad4884b726229ceaafb1179e9c9cf` |
| ethereum | source verified unclassified | Vyper_contract<br>`0x936734ea750bb194ddb4892b191b6bd5c43a3985` | non_address_book | unknown | unknown | verified | n/a | `0x7f7abe23fc1ad4884b726229ceaafb1179e9c9cf` |
| ethereum | source verified unclassified | Vyper_contract<br>`0xb0a25cd63ac7555428e1d8c78ed94e9109e129ee` | non_address_book | unknown | unknown | verified | n/a | `0x7f7abe23fc1ad4884b726229ceaafb1179e9c9cf` |
| ethereum | source verified unclassified | Vyper_contract<br>`0xc7059f1017d248c022fa3169459f89c933ee35f6` | non_address_book | unknown | unknown | verified | n/a | `0x7f7abe23fc1ad4884b726229ceaafb1179e9c9cf` |
| ethereum | source verified unclassified | Vyper_contract<br>`0xe28a41f2db01f4f47ade2a512ca149dd9b63ca45` | non_address_book | unknown | unknown | verified | n/a | `0x7f7abe23fc1ad4884b726229ceaafb1179e9c9cf` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x002688c4296a2c4d800f271fe6f01741111b09be` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x00b71a425db7c8b65a46cf39c23a188e10a2de99` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0145fd99f1dd6e2491e44fca608c481c9c5b97a9` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x01c6808eb242c826d32f03712d66d5e613782363` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x02152d5edcdba56a55efee36ceb9d9f7e47aeb5f` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x06ce8086965234400fdecab190b115c2c0717047` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x07374b547cae235227635c13266c69847a3e46fa` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0901b541beff2cd44859701619e245e82f48e62b` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0a9ae947495034c0bbbab845fd75b5bbafc91aab` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0b81cff64efc89fcdbe7da78054232daa89d73ec` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0bdb2ed45ea8337f6437ef193c2ffd32fc9b75e9` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0ce41af9dfa0d697da79dd30b8b73bf52a107499` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0ce658f9bc3af831271199578449810023dba703` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0d89774935e3d88b91f0cea0991f4fcd7d9f5470` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0d91518d59a6bf5f9b1576edead855c643a70cd5` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0ec8e0c868541df59ced49b39cc930c3a8dbd93a` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x15282d93b1f2c92a034936f6f56a55c0d423e8d4` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x17c6e1ddf1cce3d33240a53fce8a2ee48541f4d4` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x18672b1b0c623a30089a280ed9256379fb0e4e62` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x188041ad83145351ef45f4bb91d08886648aeaf8` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1a783886f03710abf4a6833f50d5e69047123be6` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1d9e59364785ebf00e8ef2c15e132d0f661585ca` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1dab6560494b04473a0be3e7d83cf3fdf3a51828` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1e7d3bf98d3f8d8ce193236c3e0ec4b00e32daae` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1ef89ed0edd93d1ec09e4c07373f69c49f4dccae` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x21f5f6d3f90d0f56a6de307a3bd359d0a151b304` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x226845c2ba216b8bb1aaadfd4e14de69426c5445` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x23208ca4f2b30d8f7d54bf2d5a822d1a2f876501` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x271fbe8ab7f1fb262f81c77ea5303f03da9d3d6a` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2869e74a15d3c0c797b04feaef93734060a4477c` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x28d7880b5b67fb4a0b1c6ed6c33c33f365113c29` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x293436d4e4a15fbc6ccc400c14a01735e5fc74fd` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x29ec0d55b8f26298a5350c64f56281eb070bf47e` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2a28789645776eaa95f6d491ff375781ea5b40dd` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2aeb5c8776567c4eeebda1450e343b1bef49ae32` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2b7e624bdb839975d56d8428d9f6a4cf1160d3e9` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2bc706b83ab08d0437b8a397242c3284b5f81d74` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2c9b39f4d18e2e19c1f3d2b378128ee7ebe9f372` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2d370111f8ffcf5bff0f56ba43c62c2ad98be7a3` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2d89d82ff68bae1357d746b3e8eac520bfe1d5ca` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2ef4b38a128ecc1ac06b43055553f95af59523de` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x30a2f3c3aa6d12c0a36bed210dcf1b32ef6228cc` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x319c06103bc51b3c01a1a121451aa5e2a2a7778f` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x31aa15da826da3311788b208d31cae34074d1dc7` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x326fe113a130c569b44aff93b3637f3ac956ecdf` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x32facb5a46e02decaf5f939ab12c123eee203a5f` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x34024ba3b6edaf5cdd1c24fefe1df5d03041f38c` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x368440b3121f32df336d393834eafd8fa787c4ec` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x36fb071d5d30e5207ecc010c0ea3cc9ad75838a8` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x387177b33830f48199110f186f47797c66556b3b` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x38e7627eb98a40e7528bcce709a80083093ba2f8` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3910dce33441360e4c1d2749afa08e1a59af2546` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3993d34e7e99abf6b6f367309975d1360222d446` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3a283d9c08e8b55966afb64c515f5143cf907611` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3b38ce23799dc56664ff6048892510abffdb7a25` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3b6831c0077a1e44ed0a21841c3bc4dc11bce833` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3be09dea9ca8b6205d05f196e9c68fc35190a514` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3c08533dbcd0ab64bff5306a9d6d1de912b81b9e` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3d229e1b4faab62f621ef2f6a610961f7bd7b23b` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3da7ff6c15c0c97d9c2df4af82a9910384b372fd` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x40745803c2faa8e8402e2ae935933d07ca8f355c` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x409893c94aad411030e5a78fd39b015221dfb8b7` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4169ef3b885416bd553567e78585a97ee52ba700` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x41d5d78049d44444ac6d5e1ec67990f24efacd58` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x42b9dea10b51a696949715797bdfd69489fc3b32` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x42dd7dc055a04c3d795a3dfd2eaaf7d480367a02` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4316416f429b04fb12df8952fa1434e6b9d77c3f` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x43ecffe6c6c1b9f24aeb5c180e659c2a6fce11bc` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4710a77a0e0f4c7b0e11cdeb74acb042e62b8d22` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x480af6d9abe851e2fc4162b2b93fff8cf84ddee7` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4863c6df17dd59311b7f67e694dd835adc87f2d3` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4c18e409dc8619bfb6a1cb56d114c3f592e0ae79` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4c1d4ad2fa2ba5510acbb0f428ec861e1f7ea3a4` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4c5d4f542765b66154b2e789abd8e69ed4504112` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4ca9b3063ec5866a4b82e437059d2c43d1be596f` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4cb152b45e667f86a0470776bed0be93a5f1c534` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4e1f162fd143e4a829341efd6dd451b018b10f9c` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4efb0e6aba6517ce4fdd3f31013cbbc0bbb8dbfa` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4f37395bdfbe3a0dca124ad3c9dbfe6a6cbc31d6` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4f8846ae9380b90d2e71d5e3d042dff3e7ebb40d` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x50996c7e748b1b83130b4854945d86ba6fc81f06` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x50c39ea8f3d72310c8b56a56b333994266e9b477` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x50f35f4fd499898801282a415f4c3a689663719f` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x528baca578523855a64ee9c276826f934c86a54c` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x52a430b5b7407fa103c5ae974744e4cc945354e6` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5473b1bcbbc45d38d8fbb50a18a73afb8b0637a7` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x584b0fd8f038fe8aedf4057ca3cb3d840446fbbf` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5852bda4520f1b000c760c1dfb8ba5db8fcbaa90` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x596f8e49ace6fc8e09b561972360dc216f1c2a1f` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5a0d404d2042b92eb7948ac5943128e1088fd24b` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5aa00dce91409b58b6a1338639b9daa63eb22be7` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5ac53910dea4779e5ac3a7e997df8e9d5f6a7c9d` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5bea27d52e36c58dbce2921773396f33f2bd780a` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [skynet.certik.com/projects/lend-flare](https://skynet.certik.com/projects/lend-flare) | CertiK | Audit | 2022-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 2 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3203] skynet.certik.com/projects/lend-flare — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| skynet.certik.com/projects/lend-flare | ConvexBoosterV2 | unmatched — not counted | — | — | no |
| skynet.certik.com/projects/lend-flare | LendingMarketV2 | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 43 |
| upstream | 2 |
| standard_library | 0 |
| needs_review | 300 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 2 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [3203] skynet.certik.com/projects/lend-flare

Fork inheritance lineage and inherited audits are included when available.
