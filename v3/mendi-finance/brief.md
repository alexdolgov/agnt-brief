# Agentic Audit Brief: Mendi Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 6 (0 matched; 6 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Mendi Finance (`mendi-finance`)
- Website: [https://malda.xyz/](https://malda.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: linea
- Contract surface: 68 unique implementations (126 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $1,546,416.55
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Mendi Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 40 contract row(s) across linea. Structural roles: 40 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 40
- Structural roles: unclassified (40)
- Contract kinds: contract (39), abstract (1)
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 35 contracts are derived from known codebases. 35 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- BribeV2 (`0xec9453d72613c2c9d6a639784f9db4a230cc0f5a`, chain 59144)
- CErc20Upgradable (`0x0a3b1e53ccc621e07d2a253ff5816d1123fd5f0b`, chain 59144)
- CErc20Upgradable (`0x1ce3023de380e9bbe14f32cb56dca4ccb8f9c920`, chain 59144)
- CErc20Upgradable (`0x5a731de58b5a4946dec3cfb6b5dab6b8a3865456`, chain 59144)
- CErc20Upgradable (`0x6e0c50657b610f4613b1c6b1dae95262a3f6c4f7`, chain 59144)
- CErc20Upgradable (`0x801c4ca69d10770816cd37a5747d82fc2629216f`, chain 59144)
- CErc20Upgradable (`0x883100388d61ef6daa147de45deb04934fbcd40d`, chain 59144)
- CErc20Upgradable (`0x8ce9892329e04a86ea25056ba77bb9aa60817045`, chain 59144)
- CErc20Upgradable (`0xb52f4c3607afb27147a8bc8ff601b765003129a5`, chain 59144)
- CErc20Upgradable (`0xd910eae6bab709cf17491157bf422ff3215644ac`, chain 59144)
- GnosisSafeProxy (`0xe3cda0a0896b70f0ebc6a1848096529aa7aee9ee`, chain 59144)
- LGEDepositor (`0x8f1b13497326857011b0b9a2b066054e1849f14d`, chain 59144)
- Mendi (`0x43e8809ea748eff3204ee01f08872f063e44065f`, chain 59144)
- MendiLoyaltyPoint (`0xea57474c20c4bb3f0fea4a5d2996c1e636b7eb52`, chain 59144)
- MixedPriceOracleV2 (`0xc23f48e29376566bd0024872fc313b5cd7e24433`, chain 59144)
- OwnedDistributor (`0x5df2107a5b5e7b0b19dd7ded7470e8d9792bc434`, chain 59144)
- OwnedDistributor (`0x716f2de8a4de036ffe2b806a2948060a6f1053f5`, chain 59144)
- Pair (`0xe5e19bbf39c76a8c980b48f2ec89d0de877bf567`, chain 59144)
- ReserveManagerV2 (`0x9a71e980a2f27888319c580e86e3df15172b751f`, chain 59144)
- StakedDistributor (`0x07d3929d35a2bbb433b9b6bcd999f6abd9f26673`, chain 59144)
- StakedDistributor (`0x7f13efd27d28fe1bd4324afcb18c8b3baae526f8`, chain 59144)
- TimelockController (`0x6c81d7fe6072ce519c1a5b966d62545f07b26902`, chain 59144)
- TransparentUpgradeableProxy (`0x109f4af9ec6a5ede198f7a4d9d9d7390de29362a`, chain 59144)
- TransparentUpgradeableProxy (`0x150b1e51738cdf0ccfe472594c62d7d6074921ca`, chain 59144)
- TransparentUpgradeableProxy (`0x1f27f81c1d13dd96a3b75d42e3d5d92b709869aa`, chain 59144)
- TransparentUpgradeableProxy (`0x333d8b480bdb25ea7be4dd87eeb359988ce1b30d`, chain 59144)
- TransparentUpgradeableProxy (`0x384be093d35feedb74eb9133863caf059c1546ea`, chain 59144)
- TransparentUpgradeableProxy (`0x8a90d208666deec08123444f67bf5b1836074a67`, chain 59144)
- TransparentUpgradeableProxy (`0x9b4971ac84054597eded7dc7b4b7e8a0c90753b5`, chain 59144)
- TransparentUpgradeableProxy (`0x9be5e24f05bbafc28da814bd59284878b388a40f`, chain 59144)
- TransparentUpgradeableProxy (`0xad7f33984bed10518012013d4ab0458d37fee6f3`, chain 59144)
- TransparentUpgradeableProxy (`0xceed853798ff1c95ceb4dc48f68394eb7a86a782`, chain 59144)
- TransparentUpgradeableProxy (`0xcf8dedcdc62317beaedfbee3c77c08425f284486`, chain 59144)
- TransparentUpgradeableProxy (`0xf669c3c03d9fdf4339e19214a749e52616300e89`, chain 59144)
- Unitroller (`0x1b4d3b0421ddc1eb216d230bc01527422fb93103`, chain 59144)

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 40; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 1 exact-address-book context/dependencies excluded, 27 exact-address-book entries needing review
- Outside the address book: 40 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 23
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/57
- Verified + Unaudited implementations: 57
- Verified by bytecode match: 0
- Unverified implementations: 11
- Unique implementations: 68
- Raw deployments: 126
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-08 (fresh)
- Audit staleness (calendar age): 1 fresh, 4 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (57)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Api3AggregatorAdaptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 3 deployments: linea `0x14d8ca4d05cfd1ea4739abab06b28d8dc7c6d6ca`; linea `0x392728f860b328fb6e4f28ccf9b91a26359a80a5`; linea `0xd707bd88a6aae8174c1447af4c746d55676c84ba` | ⚠️ Unaudited |
| Api3AggregatorDeviationAdaptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x6fecd2f4798d37fbe64bfde1ebecae3b3fb1ab9b` | ⚠️ Unaudited |
| BasicLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 2 deployments: linea `0x52354609af7a8fdd1fbcf9d4d52d25b26492b69b`; linea `0xa9822b043995d5a979135fe79a42013690e28f27` | ⚠️ Unaudited |
| BribeV2 | unknown | unclassified_address_book | needs_review (excluded) | 0 | linea | unit-400475 | `0xec9453d72613c2c9d6a639784f9db4a230cc0f5a` | ⚠️ Unaudited |
| CErc20Upgradable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 2 deployments: linea `0x022e3af748ae14388b5a5a93ffc20966146d799b`; linea `0x815c089b70a0bf6e1bc4cad566592c6b4e0b2cd7` | ⚠️ Unaudited |
| CErc20Upgradable | unknown | unclassified_address_book | needs_review (excluded) | 1 | linea | unit-400478 | 2 deployments: linea `0x0a3b1e53ccc621e07d2a253ff5816d1123fd5f0b`; linea `0xceed853798ff1c95ceb4dc48f68394eb7a86a782` | ⚠️ Unaudited |
| CErc20Upgradable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x0b3a1b6c1058692654c42673b239666ad14cbbe4`; linea `0x268eb060f29d7be9d70dc6ed7634a42867e929b4` | ⚠️ Unaudited |
| CErc20Upgradable | unknown | unclassified_address_book | needs_review (excluded) | 1 | linea | unit-400485 | 2 deployments: linea `0x109f4af9ec6a5ede198f7a4d9d9d7390de29362a`; linea `0x801c4ca69d10770816cd37a5747d82fc2629216f` | ⚠️ Unaudited |
| CErc20Upgradable | unknown | unclassified_address_book | needs_review (excluded) | 1 | linea | unit-400480 | 2 deployments: linea `0x1ce3023de380e9bbe14f32cb56dca4ccb8f9c920`; linea `0x9be5e24f05bbafc28da814bd59284878b388a40f` | ⚠️ Unaudited |
| CErc20Upgradable | unknown | unclassified_address_book | needs_review (excluded) | 1 | linea | unit-400489 | 2 deployments: linea `0x1f27f81c1d13dd96a3b75d42e3d5d92b709869aa`; linea `0xb52f4c3607afb27147a8bc8ff601b765003129a5` | ⚠️ Unaudited |
| CErc20Upgradable | unknown | unclassified_address_book | needs_review (excluded) | 1 | linea | unit-400487 | 2 deployments: linea `0x333d8b480bdb25ea7be4dd87eeb359988ce1b30d`; linea `0x8ce9892329e04a86ea25056ba77bb9aa60817045` | ⚠️ Unaudited |
| CErc20Upgradable | unknown | unclassified_address_book | needs_review (excluded) | 1 | linea | unit-400482 | 2 deployments: linea `0x5a731de58b5a4946dec3cfb6b5dab6b8a3865456`; linea `0x8a90d208666deec08123444f67bf5b1836074a67` | ⚠️ Unaudited |
| CErc20Upgradable | unknown | unclassified_address_book | needs_review (excluded) | 1 | linea | unit-400483 | 2 deployments: linea `0x6e0c50657b610f4613b1c6b1dae95262a3f6c4f7`; linea `0xad7f33984bed10518012013d4ab0458d37fee6f3` | ⚠️ Unaudited |
| CErc20Upgradable | unknown | unclassified_address_book | needs_review (excluded) | 1 | linea | unit-400486 | 2 deployments: linea `0x883100388d61ef6daa147de45deb04934fbcd40d`; linea `0xf669c3c03d9fdf4339e19214a749e52616300e89` | ⚠️ Unaudited |
| CErc20Upgradable | unknown | unclassified_address_book | needs_review (excluded) | 1 | linea | unit-400490 | 2 deployments: linea `0x9b4971ac84054597eded7dc7b4b7e8a0c90753b5`; linea `0xd910eae6bab709cf17491157bf422ff3215644ac` | ⚠️ Unaudited |
| Comptroller | unknown | unclassified_address_book | needs_review (excluded) | 1 | linea | unit-400479 | 2 deployments: linea `0x1a11669ecf91692440da95cc8a12de80b1c3d9e3`; linea `0x1b4d3b0421ddc1eb216d230bc01527422fb93103` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | unclassified_address_book | needs_review (excluded) | 1 | linea | unit-400481 | `0xe3cda0a0896b70f0ebc6a1848096529aa7aee9ee` | ⚠️ Unaudited |
| JumpRateModelV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 2 deployments: linea `0x23b9cb6f49100c54fa2a13ba0f85832b38780cb7`; linea `0x85a58adc34401e0792037d0e512f7e9b0b93ea19` | ⚠️ Unaudited |
| JumpRateModelV4 | unknown | unclassified_address_book | needs_review (excluded) | 0 | linea | unit-400468 | `0x62c31a75334e566aa049ab24a2ff13ac3a5c02d0` | ⚠️ Unaudited |
| LGEDepositor | unknown | unclassified_address_book | needs_review (excluded) | 0 | linea | unit-400471 | `0x8f1b13497326857011b0b9a2b066054e1849f14d` | ⚠️ Unaudited |
| LiquidityGenerator | unknown | unclassified_address_book | needs_review (excluded) | 0 | linea | unit-400466 | `0x55231f67b289815483a037d459877d85819e9144` | ⚠️ Unaudited |
| LPDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x7b676378fd66a2bb6650df1fdf847d3988a5939c`; linea `0x7d4483304910bf3e0ad19a8425c9adde411cfbba` | ⚠️ Unaudited |
| LPDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x9cfbfc54389318fa65958237c5143256b198fc23`; linea `0xc321e5eba8480adcc122fa90cf63557c0d29ce68` | ⚠️ Unaudited |
| LPDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xbfd1b02b5e90975b4132169a9dc987b7f50a5e64` | ⚠️ Unaudited |
| Mendi | unknown | unclassified_address_book | needs_review (excluded) | 0 | linea | unit-400465 | `0x43e8809ea748eff3204ee01f08872f063e44065f` | ⚠️ Unaudited |
| MendiLoyaltyPoint | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 4 deployments: linea `0x375654490163c50ef334a42cd0b38c5c3f55a50e`; linea `0x688ff5acedd3295ae4b60cc613a9a3fa5326dea1`; linea `0xdaf3baa5d809ee93c0f5b3ca03b53a1ecc3d6725`; linea `0xe5bcd7f05e6b125a8655d8b0a0de4328a6dd90ea` | ⚠️ Unaudited |
| MendiLoyaltyPoint | unknown | unclassified_address_book | needs_review (excluded) | 0 | linea | unit-400474 | `0xea57474c20c4bb3f0fea4a5d2996c1e636b7eb52` | ⚠️ Unaudited |
| MixedPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xccbea2d7e074744ab46e28a043f85038bccffec2` | ⚠️ Unaudited |
| MixedPriceOracleV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 7 deployments: linea `0x4a0231404ad94541676d872fa9577e3e179cdc9c`; linea `0x7a6ef42dd75ab079ff1bee6f106ddd9e110fdcc1`; linea `0xd04f7a229acface4c40b863fee7e420e4ebff23f`; linea `0xd2ed953c240edc59d57e5cfb527eb768048fa012`; linea `0xd3e706d98b588a8f819ec324d0e0934a685bc1d3`; linea `0xe8de3ac339d20f19527f605a9452cdc8c178a27a`; linea `0xec598aaab34b791b97db45b0910a9cbbb449d8fe` | ⚠️ Unaudited |
| MixedPriceOracleV2 | unknown | unclassified_address_book | needs_review (excluded) | 0 | linea | unit-400472 | `0xc23f48e29376566bd0024872fc313b5cd7e24433` | ⚠️ Unaudited |
| MixedPriceOracleV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x395abf58d87067b10637201241d10e16361ac5f2` | ⚠️ Unaudited |
| MixedPriceOracleV4 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | unit-400463 | `0x16f8668d7d650b494861569279e4f48d29c90fbd` | ⚠️ Unaudited |
| OwnedDistributor | operational_periphery | unclassified_address_book | needs_review (excluded) | 0 | linea | unit-400467 | `0x5df2107a5b5e7b0b19dd7ded7470e8d9792bc434` | ⚠️ Unaudited |
| OwnedDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 6 deployments: linea `0x5f9668b84c469b6c2791b1e77ca2fac832c38d61`; linea `0x957491b07c4d2bfe960dec0d1f0988ff94691fa7`; linea `0xa4fc544076e36b14ba1ab06bacc8720f21d38e43`; linea `0xb432214a50bb5413cfe7e943d2ae8a8828d69b95`; linea `0xec45fe7ecf5679073779d7d2e9c827071653a5e2`; linea `0xeda9463c1409934bc240cfe2ebc12df9c18fc474` | ⚠️ Unaudited |
| OwnedDistributor | operational_periphery | unclassified_address_book | needs_review (excluded) | 0 | linea | unit-400470 | `0x716f2de8a4de036ffe2b806a2948060a6f1053f5` | ⚠️ Unaudited |
| OwnedDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x9b927483979872a69f797f234b56f78e917a7c40`; linea `0xe17d41790ee5b794c22ce7276905490f60acf662` | ⚠️ Unaudited |
| Pair | unknown | unclassified_address_book | needs_review (excluded) | 0 | linea | unit-400473 | `0xe5e19bbf39c76a8c980b48f2ec89d0de877bf567` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 2 deployments: linea `0x2f9386f0c8ebeed27873a2a64c7f243af9bc733c`; linea `0x54b41d219afef0d23c34180676979f6812d3bc8c` | ⚠️ Unaudited |
| PythPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 4 deployments: linea `0x0d4173a9dbf32bf7f9d9f5907b6476ad53db3636`; linea `0xa6b761094bf495b4378b5ee7c083390b853a0df3`; linea `0xcc16cfd03f60efc60b657bc6c094440181e2c749`; linea `0xe159031d368bf07f803da0e96ce747f3b44f1230` | ⚠️ Unaudited |
| ReserveManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 2 deployments: linea `0x7c2e7b17ad0346e0305232f845c40fb7a91a49e4`; linea `0xa166023647dc4e81f4c8a267967a8dc2c2d5c5a8` | ⚠️ Unaudited |
| ReserveManagerV2 | unknown | unclassified_address_book | needs_review (excluded) | 1 | linea | unit-400488 | 2 deployments: linea `0x384be093d35feedb74eb9133863caf059c1546ea`; linea `0x9a71e980a2f27888319c580e86e3df15172b751f` | ⚠️ Unaudited |
| RewardDistributor | unknown | unclassified_address_book | needs_review (excluded) | 1 | linea | unit-400476 | 2 deployments: linea `0x052932456a8fd199cd33be91312638a35c8b7ca5`; linea `0x3b9b9364bf69761d308145371c38d9b558013d40` | ⚠️ Unaudited |
| RewardHolder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 2 deployments: linea `0x1622180cd1ec6e8d60744772e6b2cc1ce9ecc222`; linea `0x4664c72246c99543624f3c667ce7ffb4523a26ed` | ⚠️ Unaudited |
| RewardHolder | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x246db9f51d607f0dee14fb1c97e1e97e698d46da`; linea `0x5f6f836d831ae8d9d5dddf2b91deca27ea08c832` | ⚠️ Unaudited |
| RewardHolder | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x90c9cdddadd3f99a708f6f5f9e0970e98e27fc8c`; linea `0x9589ff9cd2bda7b25965a9b007647e638a341934` | ⚠️ Unaudited |
| RewardHolder | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0xb05619c2d198510a88253544c849e29a3612a673`; linea `0xd114e0d11d801ee0f5bd6ee1070193dd3fbc923e` | ⚠️ Unaudited |
| RewardManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x951e3e4ba025292ee04601b1969844771f1e79dc` | ⚠️ Unaudited |
| RewardManagerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x04a716725e43f6618b11d280bfa12491d9ab7bd5`; linea `0x1ac9d64f283a947b69b9f5de6f1d6e6bfe5f6101` | ⚠️ Unaudited |
| SimplePriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x75f0adc23ec4ceb70cc0257de830163a48901219` | ⚠️ Unaudited |
| StakedDistributor | unknown | unclassified_address_book | needs_review (excluded) | 1 | linea | unit-400477 | 2 deployments: linea `0x07d3929d35a2bbb433b9b6bcd999f6abd9f26673`; linea `0x150b1e51738cdf0ccfe472594c62d7d6074921ca` | ⚠️ Unaudited |
| StakedDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 8 deployments: linea `0x5bb5c07247dfc7bee83d2849230a03bcfc490fea`; linea `0x62ffc79a9078838dd6b9e16918188d2e56d4820c`; linea `0x686fc507fe4a48ee3153c42ec2bbaf91f7c94c6e`; linea `0x8e8bdff0f84a42e0f1a598d6dc24b50546eaa113`; linea `0xbdea2a5dac12679d9767b37dea25e0c8dccbd12c`; linea `0xc2ecfe3c793926b5b9dbdfd202bc0c777e10fee9`; linea `0xcb0112f46669fa051df657065c33cee48c739b3d`; linea `0xe4e5e5cd071f8a202b2aafb3f7eead93dd618dee` | ⚠️ Unaudited |
| StakedDistributor | unknown | unclassified_address_book | needs_review (excluded) | 1 | linea | unit-400484 | 2 deployments: linea `0x7f13efd27d28fe1bd4324afcb18c8b3baae526f8`; linea `0xcf8dedcdc62317beaedfbee3c77c08425f284486` | ⚠️ Unaudited |
| TimelockController | unknown | unclassified_address_book | needs_review (excluded) | 0 | linea | unit-400469 | `0x6c81d7fe6072ce519c1a5b966d62545f07b26902` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xae73a4e3e70598d98a8174be4d897578c5a3e8a7` | ⚠️ Unaudited |
| VesterCliff | unknown | unclassified_address_book | needs_review (excluded) | 0 | linea | unit-400464 | `0x2938b0932ef3fd7a58a9fc077398cad981495741` | ⚠️ Unaudited |
| VesterCliff | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 2 deployments: linea `0x6cdf38bc17249bc702db254445e3b3be5430b138`; linea `0xe7984037d561bc6eb16d16421e564a3c2526bea5` | ⚠️ Unaudited |
| VesterSale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 4 deployments: linea `0x4ff0389fd01f4afee2048ea1550b6bc166d0e45b`; linea `0xbb4bba3b0afe7530985d1edc1f7b3e2a3ac2c311`; linea `0xd63b161adb2f72f0ceb7542326d4fab1f341cd83`; linea `0xf90af8e5ee4b6e9e4126b52322d1442bd03a702f` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (11)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x23c6035ebc88e35f3846d3b9f494a9996334b2b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x2b2b780f9fefb65d8e60ff986e04be062f1699c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x7fab165a9f9c02dbced3c319936f2b19f3532492` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x8208dd4e40c97469091e2af4862659e2f59d242d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x87f99ccb9bb8c12c0c5ca8b100610e3ba9a99788` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xacf19d5eeb42baf7e7089380e8a3867f3c871e5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xaef45cedf76ca61df495646c25b1a2015a596835` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xb1c144bfe8eeb509c4d5dcf598f0af3626cf1fe1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xb20b9a1ec924320f2c7d21f532b2b8d1ce8ba9a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xc21b8077262d68f4d7cdea25a6654dee8ab18173` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xf40175e87baee76ec774ce860ccb0b382fedc271` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [2025_10_06_Sherlock_Competition.pdf](https://github.com/malda-protocol/malda-lending/blob/main/audit/2025_10_06_Sherlock_Competition.pdf) | Sherlock | Contest | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 40 | high |
| [VAR_Malda_250120_malda_lending_V5.pdf](https://github.com/malda-protocol/malda-lending/blob/main/audit/VAR_Malda_250120_malda_lending_V5.pdf) | Veridise | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 40 | high |
| [audit-reports.md](https://ionian.gitbook.io/malda/malda-protocol/audit-reports.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [VAR_Malda_250120_malda_zkcoprocessor.pdf](https://github.com/malda-protocol/malda-zk-coprocessor/blob/main/audit/VAR_Malda_250120_malda_zkcoprocessor.pdf) | Veridise | Audit | 2025-04 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [veridise.com/audits-archive/company/malda/malda-lending-2025-05-20](https://veridise.com/audits-archive/company/malda/malda-lending-2025-05-20) | Veridise | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [veridise.com/audits-archive/company/malda/malda-zk-coprocessor-2025-05-20](https://veridise.com/audits-archive/company/malda/malda-zk-coprocessor-2025-05-20) | Veridise | Audit | 2025-05 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2930] 2025_10_06_Sherlock_Competition.pdf — no match: Extracted contract names from the scope section listing files in two repositories. The audit date is the end date of the audit period (July 24 - August 14, 2025).
- [2931] VAR_Malda_250120_malda_lending_V5.pdf — no match: Extracted contracts from scope sections and file paths. Excluded contracts (Counter, BytesLib, CREATE3, ChainlinkOracle, LZMessageOnlyBridge) are noted but included in extracted_names for completeness. Audit date from cover page.
- [2932] audit-reports.md — no match: The provided text is an index page listing audit reports but does not contain the actual audit report content. No contract names or scope details are present.
- [2933] VAR_Malda_250120_malda_zkcoprocessor.pdf — no match: The report focuses on Rust programs and zkVM circuits, not smart contracts. No contract names are explicitly listed in scope.
- [14778] veridise.com/audits-archive/company/malda/malda-lending-2025-05-20 — no match: The report describes two assessments. The first assessment scope is the entire src/ folder excluding some files. The second assessment scope is limited to specific files listed. The extracted names are from the second assessment scope, which is explicitly listed. The audit completion date is May 20, 2025.
- [14779] veridise.com/audits-archive/company/malda/malda-zk-coprocessor-2025-05-20 — no match: The scope lists directories of Rust source code, not individual smart contract files. No contract names were identifiable from the provided text.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2025_10_06_Sherlock_Competition.pdf | IOperator | unmatched — not counted | — | listed in scope | no |
| 2025_10_06_Sherlock_Competition.pdf | IPauser | unmatched — not counted | — | listed in scope | no |
| 2025_10_06_Sherlock_Competition.pdf | IRebalancer | unmatched — not counted | — | listed in scope | no |
| 2025_10_06_Sherlock_Competition.pdf | IRewardDistributor | unmatched — not counted | — | listed in scope | no |
| 2025_10_06_Sherlock_Competition.pdf | SafeApprove | unmatched — not counted | — | listed in scope | no |
| 2025_10_06_Sherlock_Competition.pdf | IMigrator | unmatched — not counted | — | listed in scope | no |
| 2025_10_06_Sherlock_Competition.pdf | Migrator | unmatched — not counted | — | listed in scope | no |
| 2025_10_06_Sherlock_Competition.pdf | BatchSubmitter | unmatched — not counted | — | listed in scope | no |
| 2025_10_06_Sherlock_Competition.pdf | mTokenGateway | unmatched — not counted | — | listed in scope | no |
| 2025_10_06_Sherlock_Competition.pdf | mErc20Host | unmatched — not counted | — | listed in scope | no |
| 2025_10_06_Sherlock_Competition.pdf | mErc20Immutable | unmatched — not counted | — | listed in scope | no |
| 2025_10_06_Sherlock_Competition.pdf | mErc20 | unmatched — not counted | — | listed in scope | no |
| 2025_10_06_Sherlock_Competition.pdf | mErc20Upgradable | unmatched — not counted | — | listed in scope | no |
| 2025_10_06_Sherlock_Competition.pdf | mTokenConfiguration | unmatched — not counted | — | listed in scope | no |
| 2025_10_06_Sherlock_Competition.pdf | mToken | unmatched — not counted | — | listed in scope | no |
| 2025_10_06_Sherlock_Competition.pdf | mTokenStorage | unmatched — not counted | — | listed in scope | no |
| 2025_10_06_Sherlock_Competition.pdf | Operator | unmatched — not counted | — | listed in scope | no |
| 2025_10_06_Sherlock_Competition.pdf | OperatorStorage | unmatched — not counted | — | listed in scope | no |
| 2025_10_06_Sherlock_Competition.pdf | MixedPriceOracleV3 | unmatched — not counted | — | listed in scope | no |
| 2025_10_06_Sherlock_Competition.pdf | MixedPriceOracleV4 | unmatched — not counted | — | listed in scope | no |
| 2025_10_06_Sherlock_Competition.pdf | Pauser | unmatched — not counted | — | listed in scope | no |
| 2025_10_06_Sherlock_Competition.pdf | AcrossBridge | unmatched — not counted | — | listed in scope | no |
| 2025_10_06_Sherlock_Competition.pdf | BaseBridge | unmatched — not counted | — | listed in scope | no |
| 2025_10_06_Sherlock_Competition.pdf | ConnextBridge | unmatched — not counted | — | listed in scope | no |
| 2025_10_06_Sherlock_Competition.pdf | EverclearBridge | unmatched — not counted | — | listed in scope | no |
| 2025_10_06_Sherlock_Competition.pdf | LZBridge | unmatched — not counted | — | listed in scope | no |
| 2025_10_06_Sherlock_Competition.pdf | Rebalancer | unmatched — not counted | — | listed in scope | no |
| 2025_10_06_Sherlock_Competition.pdf | Roles | unmatched — not counted | — | listed in scope | no |
| 2025_10_06_Sherlock_Competition.pdf | ExponentialNoError | unmatched — not counted | — | listed in scope | no |
| 2025_10_06_Sherlock_Competition.pdf | WrapAndSupply | unmatched — not counted | — | listed in scope | no |
| 2025_10_06_Sherlock_Competition.pdf | ZkVerifier | unmatched — not counted | — | listed in scope | no |
| 2025_10_06_Sherlock_Competition.pdf | constants | unmatched — not counted | — | listed in scope | no |
| 2025_10_06_Sherlock_Competition.pdf | elfs_ids | unmatched — not counted | — | listed in scope | no |
| 2025_10_06_Sherlock_Competition.pdf | lib | unmatched — not counted | — | listed in scope | no |
| 2025_10_06_Sherlock_Competition.pdf | viewcalls | unmatched — not counted | — | listed in scope | no |
| 2025_10_06_Sherlock_Competition.pdf | cryptography | unmatched — not counted | — | listed in scope | no |
| 2025_10_06_Sherlock_Competition.pdf | types | unmatched — not counted | — | listed in scope | no |
| 2025_10_06_Sherlock_Competition.pdf | validators | unmatched — not counted | — | listed in scope | no |
| 2025_10_06_Sherlock_Competition.pdf | build | unmatched — not counted | — | listed in scope | no |
| 2025_10_06_Sherlock_Competition.pdf | get_proof_data | unmatched — not counted | — | listed in scope | no |
| VAR_Malda_250120_malda_lending_V5.pdf | Operator | unmatched — not counted | — | listed in scope | no |
| VAR_Malda_250120_malda_lending_V5.pdf | Unit | unmatched — not counted | — | listed in scope | no |
| VAR_Malda_250120_malda_lending_V5.pdf | mErc20Host | unmatched — not counted | — | listed in scope | no |
| VAR_Malda_250120_malda_lending_V5.pdf | mErc20 | unmatched — not counted | — | listed in scope | no |
| VAR_Malda_250120_malda_lending_V5.pdf | mToken | unmatched — not counted | — | listed in scope | no |
| VAR_Malda_250120_malda_lending_V5.pdf | mTokenGateway | unmatched — not counted | — | listed in scope | no |
| VAR_Malda_250120_malda_lending_V5.pdf | mTokenConfiguration | unmatched — not counted | — | listed in scope | no |
| VAR_Malda_250120_malda_lending_V5.pdf | mTokenStorage | unmatched — not counted | — | listed in scope | no |
| VAR_Malda_250120_malda_lending_V5.pdf | RewardDistributor | unmatched — not counted | — | listed in scope | no |
| VAR_Malda_250120_malda_lending_V5.pdf | Pauser | unmatched — not counted | — | listed in scope | no |
| VAR_Malda_250120_malda_lending_V5.pdf | Rebalancer | unmatched — not counted | — | listed in scope | no |
| VAR_Malda_250120_malda_lending_V5.pdf | BaseBridge | unmatched — not counted | — | listed in scope | no |
| VAR_Malda_250120_malda_lending_V5.pdf | ConnextBridge | unmatched — not counted | — | listed in scope | no |
| VAR_Malda_250120_malda_lending_V5.pdf | EverclearBridge | unmatched — not counted | — | listed in scope | no |
| VAR_Malda_250120_malda_lending_V5.pdf | LZMessageOnlyBridge | unmatched — not counted | — | listed in scope | no |
| VAR_Malda_250120_malda_lending_V5.pdf | AcrossBridge | unmatched — not counted | — | listed in scope | no |
| VAR_Malda_250120_malda_lending_V5.pdf | LZBridge | unmatched — not counted | — | listed in scope | no |
| VAR_Malda_250120_malda_lending_V5.pdf | JumpRateModelV4 | unmatched — not counted | — | listed in scope | no |
| VAR_Malda_250120_malda_lending_V5.pdf | MixedPriceOracleV3 | unmatched — not counted | — | listed in scope | no |
| VAR_Malda_250120_malda_lending_V5.pdf | ChainlinkOracle | unmatched — not counted | — | listed in scope | no |
| VAR_Malda_250120_malda_lending_V5.pdf | ZkVerifier | unmatched — not counted | — | listed in scope | no |
| VAR_Malda_250120_malda_lending_V5.pdf | BatchSubmitter | unmatched — not counted | — | listed in scope | no |
| VAR_Malda_250120_malda_lending_V5.pdf | Roles | unmatched — not counted | — | listed in scope | no |
| VAR_Malda_250120_malda_lending_V5.pdf | OperatorStorage | unmatched — not counted | — | listed in scope | no |
| VAR_Malda_250120_malda_lending_V5.pdf | mErc20Upgradeable | unmatched — not counted | — | listed in scope | no |
| VAR_Malda_250120_malda_lending_V5.pdf | mTokenProofDecoderLib | unmatched — not counted | — | listed in scope | no |
| VAR_Malda_250120_malda_lending_V5.pdf | IOperator | unmatched — not counted | — | listed in scope | no |
| VAR_Malda_250120_malda_lending_V5.pdf | ImTokenGateway | unmatched — not counted | — | listed in scope | no |
| VAR_Malda_250120_malda_lending_V5.pdf | ImErc20Host | unmatched — not counted | — | listed in scope | no |
| VAR_Malda_250120_malda_lending_V5.pdf | IRoles | unmatched — not counted | — | listed in scope | no |
| VAR_Malda_250120_malda_lending_V5.pdf | ImTokenMinimal | unmatched — not counted | — | listed in scope | no |
| VAR_Malda_250120_malda_lending_V5.pdf | IOracleOperator | unmatched — not counted | — | listed in scope | no |
| VAR_Malda_250120_malda_lending_V5.pdf | IRewardDistributorData | unmatched — not counted | — | listed in scope | no |
| VAR_Malda_250120_malda_lending_V5.pdf | IDefaultAdapter | unmatched — not counted | — | listed in scope | no |
| VAR_Malda_250120_malda_lending_V5.pdf | ILayerZeroReceiverV2 | unmatched — not counted | — | listed in scope | no |
| VAR_Malda_250120_malda_lending_V5.pdf | Deployer | unmatched — not counted | — | listed in scope | no |
| VAR_Malda_250120_malda_lending_V5.pdf | Bytes32AddressLib | unmatched — not counted | — | listed in scope | no |
| VAR_Malda_250120_malda_lending_V5.pdf | BytesLib | unmatched — not counted | — | excluded from scope | no |
| VAR_Malda_250120_malda_lending_V5.pdf | CREATE3 | unmatched — not counted | — | excluded from scope | no |
| VAR_Malda_250120_malda_lending_V5.pdf | Counter | unmatched — not counted | — | excluded from scope | no |
| veridise.com/audits-archive/company/malda/malda-lending-2025-05-20 | Operator | unmatched — not counted | — | listed in scope for second assessment | no |
| veridise.com/audits-archive/company/malda/malda-lending-2025-05-20 | OperatorStorage | unmatched — not counted | — | listed in scope for second assessment | no |
| veridise.com/audits-archive/company/malda/malda-lending-2025-05-20 | IOperator | unmatched — not counted | — | listed in scope for second assessment | no |
| veridise.com/audits-archive/company/malda/malda-lending-2025-05-20 | ImTokenGateway | unmatched — not counted | — | listed in scope for second assessment | no |
| veridise.com/audits-archive/company/malda/malda-lending-2025-05-20 | ImErc20Host | unmatched — not counted | — | listed in scope for second assessment | no |
| veridise.com/audits-archive/company/malda/malda-lending-2025-05-20 | mErc20Host | unmatched — not counted | — | listed in scope for second assessment | no |
| veridise.com/audits-archive/company/malda/malda-lending-2025-05-20 | BatchSubmitter | unmatched — not counted | — | listed in scope for second assessment | no |
| veridise.com/audits-archive/company/malda/malda-lending-2025-05-20 | mTokenGateway | unmatched — not counted | — | listed in scope for second assessment | no |
| veridise.com/audits-archive/company/malda/malda-lending-2025-05-20 | mTokenStorage | unmatched — not counted | — | listed in scope for second assessment | no |
| veridise.com/audits-archive/company/malda/malda-lending-2025-05-20 | ZkVerifier | unmatched — not counted | — | listed in scope for second assessment | no |
| veridise.com/audits-archive/company/malda/malda-lending-2025-05-20 | mTokenProofDecoderLib | unmatched — not counted | — | listed in scope for second assessment | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 50 |
| upstream | 0 |
| standard_library | 4 |
| needs_review | 14 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 91 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3, low=3
- Match method counts: n/a

Zero-match audit list:

- [2930] 2025_10_06_Sherlock_Competition.pdf
- [2931] VAR_Malda_250120_malda_lending_V5.pdf
- [2932] audit-reports.md
- [2933] VAR_Malda_250120_malda_zkcoprocessor.pdf
- [14778] veridise.com/audits-archive/company/malda/malda-lending-2025-05-20
- [14779] veridise.com/audits-archive/company/malda/malda-zk-coprocessor-2025-05-20

Fork inheritance lineage and inherited audits are included when available.
