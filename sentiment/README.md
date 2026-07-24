# Agentic Audit Brief: Sentiment

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 8 (0 matched; 8 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Sentiment (`sentiment`)
- Website: [https://app.sentiment.xyz](https://app.sentiment.xyz)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum
- Contract surface: 323 unique implementations (385 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $1,203,461.26
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Sentiment. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 36 contract row(s) across arbitrum. Structural roles: 21 unclassified, 13 supporting, 2 core. 4 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 36
- Structural roles: unclassified (21), supporting (13), core (2)
- Contract kinds: contract (35), abstract (1)
- Detected standards: erc1967proxy (4)
- Frameworks: solmate (3), openzeppelin (2), chainlink (1)
- Upgradeable-pattern rows: 4

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 36; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 50 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 273 discovered implementations shown in the inventory but excluded from coverage (16 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 49
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/64
- Verified + Unaudited implementations: 64
- Verified by bytecode match: 0
- Unverified implementations: 259
- Unique implementations: 323
- Raw deployments: 385
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-03 (aging)
- Audit staleness (calendar age): 0 fresh, 4 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (64)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Account | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2ebbc910b201dd91c7ee74bdca161cab90fc5e29` | ⚠️ Unaudited |
| Account | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-254428 | `0xc3991f83f2fb241b05db76e0c1bb24a81e0c5463` | ⚠️ Unaudited |
| AccountFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x70ade2e34fdda195e39c0c00652e18d7c1433282` | ⚠️ Unaudited |
| AccountFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-254432 | `0xce7df51aa782d2c5cee2a2a18568b105b1db9814` | ⚠️ Unaudited |
| AccountManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 6 deployments: arbitrum `0x0d36ac7bed397aeb5e7df5ea5fe37054cbc2b3fd`; arbitrum `0x3281c127366fc87ed9ea2a064f793f521f1402e5`; arbitrum `0x67d27d6271690e4ed4e6fef283bae99c83964c77`; arbitrum `0xaa9a13e7dc57cf646f22f82aef8ee460ec50a929`; arbitrum `0xf9b45da68cc80a79b08119926995d374f67a20b1`; arbitrum `0xfd4541b987d539203d108251453b7f021222dfb3` | ⚠️ Unaudited |
| AccountManager | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-254410 | `0x23ad9605b6e7a02ab9f73068f5e68715f21c2b6b` | ⚠️ Unaudited |
| AccountManager | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | arbitrum | unit-254437 | 2 deployments: arbitrum `0x62c5aa8277e49b3ead43dc67453ec91dc6826403`; arbitrum `0xb08501a3020ae096c2edd6495d0957b615d8c093` | ⚠️ Unaudited |
| AccountManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x94509e7dce68fcbbd808dd89901a45ef47aabd2e`; arbitrum `0xea3ca08b1852bfa336166d28259730f7cb51a787` | ⚠️ Unaudited |
| ATokenOracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-254420 | `0x6cb48ade65fe10fd55231b661adbb00ab4a7d8bb` | ⚠️ Unaudited |
| ATokenOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x9fa1188ca23e7f92db83c04bcf45fe1c82bbffc6`; arbitrum `0xbd50d480991f2b432da458d1759ba959408b4729` | ⚠️ Unaudited |
| BaseController | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-254424 | `0x947e74f019a47ecccb8d81e802ec92d1364ed278` | ⚠️ Unaudited |
| BaseController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x94a04c1f34a0465985c8badb1001735adf7a31fb` | ⚠️ Unaudited |
| Beacon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x44b65bd350f23cae00d4fbc508c920ae8415285a` | ⚠️ Unaudited |
| Beacon | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | arbitrum | unit-254435 | `0xb7ba3321fc5acd14395eb2f00f6c4e2e6c122eee` | ⚠️ Unaudited |
| ControllerFacade | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3009b02c2712de5698e4684984153475f6fd80e3` | ⚠️ Unaudited |
| ControllerFacade | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-254433 | `0xe7128748a9d70fb48af14f8e6907c5aa8415f065` | ⚠️ Unaudited |
| ConvexRewardPoolOracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0xb24bbe3b9dcbde92890fdb233ca631744fbcee37` | ⚠️ Unaudited |
| DefaultRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x59be042b19ec606ef105802c659f13fbf14658c5` | ⚠️ Unaudited |
| DefaultRateModel | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-254417 | `0x5a9eeca1419967b1e292538efdd39d73670dc3ab` | ⚠️ Unaudited |
| ERC4626Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x35a1d15ef07aa3e22917e3c9af3de17fdd431459` | ⚠️ Unaudited |
| GLPOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbb1313c315c24824030f56953551ed4467e47975` | ⚠️ Unaudited |
| GLPOracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-254426 | `0xbba8e744b7e3d69909e413cf411b6cb92a27d4c9` | ⚠️ Unaudited |
| LEther | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x331815d6b8b2d5d21439dec842a3412ea8137ef4`; arbitrum `0x55238c5e1b8abdb05b89855f2fb85d989157dc7b` | ⚠️ Unaudited |
| LEther | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-254430 | `0xcb3703f47a547347b515a463968d03e0fd0b8228` | ⚠️ Unaudited |
| LinearRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 7 deployments: arbitrum `0x17dac14281e166c7b4584166fedc2ac68173ea98`; arbitrum `0x1bf8a37c2989b8bcf7013bdba94b2543091859fe`; arbitrum `0x56640fa2315eb2dc93aa3659620cece23e8dbf2b`; arbitrum `0x5af5e9180f0a49f7b15b35a41007f9158d6b0fa6`; arbitrum `0x6cbecaad370bc786739759323d4075ac7e9caafb`; arbitrum `0x860350608c2f8cd6f7b56e452a8fa6290f577597`; arbitrum `0xf61421e039f857dcc4ec8c975ca207f7cfb1515d` | ⚠️ Unaudited |
| LinearRateModel | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-254422 | `0x8f7a7c34d855c3b5169851c2d8620ca1409292c9` | ⚠️ Unaudited |
| LinearRateModel | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-254423 | `0x91cd729fffa3fad1ea9101b194600f23dee1c7ad` | ⚠️ Unaudited |
| LinearRateModel | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-254429 | `0xc3c68340b3c7b1c6b78010b356ec1e5ea526d2ff` | ⚠️ Unaudited |
| LinearRateModel | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-254431 | `0xccd7a233313f9a0cb1d7c1bf26d9e722766f04ec` | ⚠️ Unaudited |
| LToken | unknown | non_address_book | non_address_book_inventory (excluded) | 6 | arbitrum | n/a | 7 deployments: arbitrum `0x0c47b375937e1c9c6981f54920bf8fddd1c88938`; arbitrum `0x0fada606334ab777b980188a7f90d20c1baedd2e`; arbitrum `0x0fb61b8734e71db635ecdfd196b2543cd01fa336`; arbitrum `0x1daefa51188b240e3438ab3384e47b03be760b8c`; arbitrum `0x2ea96188ad13530f184bbb020adfb1610c3e2a5f`; arbitrum `0x6b328f066a7fe3795001db88a0a4ce09075b7dc6`; arbitrum `0xc45231cbae1796ed6eac7b50fc74f8ddc7f2014c` | ⚠️ Unaudited |
| LToken | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | arbitrum | n/a | 2 deployments: arbitrum `0x3a20354bb2e9cab0e15b53cfa6a3cb82c01a7ee2`; arbitrum `0xff9cfcb1576dedd83ecc44be5342f17c08382ead` | ⚠️ Unaudited |
| LToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-254412 | `0x3c34c679a76697e12e8a7496173487fea004f7c0` | ⚠️ Unaudited |
| LToken | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | arbitrum | n/a | 3 deployments: arbitrum `0x7d7a9b083b5a506b5a622b6773db2398addb1463`; arbitrum `0xc7f14cb309f1dc342c6a2964b6bae7796de37ef8`; arbitrum `0xcd44ccbc35b88d73fbe1809f16d4ab376d7e2d85` | ⚠️ Unaudited |
| OracleFacade | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-254407 | `0x08f81e1637230d25b4ea6d4a69d74373e433efb3` | ⚠️ Unaudited |
| OracleFacade | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x183145fc3346b530828cc07fce4c3675cf28d6f0`; arbitrum `0xc79c23decc176bd03dea9ec6e56383589c0894a6` | ⚠️ Unaudited |
| Proxy | proxy | external_dependency_or_infra | third_party_dependency (excluded) | 4 | arbitrum | unit-254436 (4 proxies) | 4 deployments: arbitrum `0x0ddb1ea478f8ef0e22c7706d2903a41e94b1299b`; arbitrum `0x2e9963ae673a885b6bfeda2f80132ce28b784c40`; arbitrum `0x4c8e1656e042a206eef7e8fcff99bac667e4623e`; arbitrum `0xb190214d5ebac7755899f2d96e519aa7a5776bec` | ⚠️ Unaudited |
| Proxy | proxy | non_address_book | non_address_book_inventory (excluded) | 3 | arbitrum | n/a | 3 deployments: arbitrum `0x21202227bc15276e40d53889bc83e59c3cccc121`; arbitrum `0x37e6a0ecb9e8e5d90104590049a0a197e1363b67`; arbitrum `0xe520c46d5dab5bb80af7dc8b821f47deb4607db2` | ⚠️ Unaudited |
| Registry | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | arbitrum | unit-254438 | 2 deployments: arbitrum `0x17b07cfbab33c0024040e7c299f8048f4a49679b`; arbitrum `0xe22d240b6ba7143a20c45253ed605d2ede2b2991` | ⚠️ Unaudited |
| Registry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x82467d3d626eb21f1f4356a2ccdc9569e1c5316b`; arbitrum `0xfcc45fd3e143e1fe5a0f21f2cbfd87a9de334e30` | ⚠️ Unaudited |
| Registry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x98144abf44e12b40a2ca0046e00f94cf7af6173b`; arbitrum `0xd8fabf4c0790901efb9d851aaf7fde45d6b2e4a6` | ⚠️ Unaudited |
| RewardPoolController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2ab248c6a51261ef86bb99fa0c210b097349d628` | ⚠️ Unaudited |
| RewardRouterController | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-254415 | `0x48b7cb0489f0aed4e0d48f34b38851cf54c5b9af` | ⚠️ Unaudited |
| RewardRouterController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x62a9e2c423e1796b924cc881ce8e7d3676020c84` | ⚠️ Unaudited |
| RewardRouterV2Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x3b3ac0dc06f2c13cc1ec87d838baca3eab161bf4`; arbitrum `0x4d0e7b873a4de468c40f94a73a6d6dac1568bbc9` | ⚠️ Unaudited |
| RewardRouterV2Controller | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-254414 | `0x3e1c3e175eba948eb74a68c2f946678a863550ce` | ⚠️ Unaudited |
| RiskEngine | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x488d275da177795e4ce5eb93d4c37474412249bf`; arbitrum `0x532964fd2434240490081a3a6f0ba1220ffdf658`; arbitrum `0x622eada71b78300d0e6cab66be78690a6d041fb3` | ⚠️ Unaudited |
| RiskEngine | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-254427 | `0xc0ac97a0ea320aa1e32e9ded16fb580ef3c078da` | ⚠️ Unaudited |
| StableSwap2PoolController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x926fe4d703a244ee1cadd1b6c6ca097e09db2f05` | ⚠️ Unaudited |
| StableSwap2PoolController | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-254434 | `0xfcc9ea8bbbbd2dcb558931b189027e42eef7e9d8` | ⚠️ Unaudited |
| TransformController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfac8859851677074a3f029c44a3cb88ed94e825f` | ⚠️ Unaudited |
| UniV2Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2a3d679a1152b6b6dca437e014ca8fda72c2ef18` | ⚠️ Unaudited |
| UniV2Controller | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-254421 | `0x6df0b4f7e3056d52fff8d9d3b5e45b4e29ee7bfd` | ⚠️ Unaudited |
| UniV2LpOracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-254418 | `0x64af464ad1fc652865dc09e92b1bcf5854cbc3b5` | ⚠️ Unaudited |
| UniV2LpOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x692076e039ca499b59b1fddf7aebe9ecd1bc045c` | ⚠️ Unaudited |
| UniV3Controller | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-254416 | `0x4f0da4c622c07d126c87fd3fa9b93bf5721f9edb` | ⚠️ Unaudited |
| UniV3Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7db7856dda0ae7321b2760503fcf359d3c0114fe` | ⚠️ Unaudited |
| UniV3TWAPOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x4366871d32ad6cf5b649cb5721f0aee18dfbbdde`; arbitrum `0x542eff0bbc4c52d8c569b737c5f312c8052c61f2`; arbitrum `0x964bd74b29a925669b14feaf788d776b19467451` | ⚠️ Unaudited |
| WETHController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x44e4fe7067f4628caa7427ad88100269d2295c35` | ⚠️ Unaudited |
| WETHController | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-254419 | `0x697cfba173537f9c59fee745bbd8a4a28f5381cc` | ⚠️ Unaudited |
| WETHOracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-254408 | `0x0f8011d2575c05dfd526c1aea7bfa8f082d7e830` | ⚠️ Unaudited |
| WETHOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa1b5477967b96f46184562c44d84e6c2543b0616` | ⚠️ Unaudited |
| WSTETHOracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-254409 | `0x1dd8ce83b8c0da4d180b372458d342f55c02845b` | ⚠️ Unaudited |
| WSTETHOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x22bcf71251bdd902ac45b6a4bd49fe317eea7898` | ⚠️ Unaudited |
| ZeroOracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-254425 | `0xb86f62b86abc37c97507e7e6320e5895c1732792` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (259)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Proxy (impl: 0x20ce093d09c561faae72d378ae7cb3ae0bdf1fbe) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x0954fa0a6a71dda5939f90a0c179579e807a30f6`; arbitrum `0x20ce093d09c561faae72d378ae7cb3ae0bdf1fbe` | ❓ Unverified |
| Proxy (impl: 0x483d3e23cd7e227528a4459a1e9b88f13020a698) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x467f91cb4f062490144ccad7e80ef736c381183e`; arbitrum `0x483d3e23cd7e227528a4459a1e9b88f13020a698` | ❓ Unverified |
| Proxy (impl: 0x598b6101554fdccd200117b46e320b06853d5493) | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | arbitrum | n/a | 3 deployments: arbitrum `0x2b3d7a790432af83e322c6baf79deeb040f777f0`; arbitrum `0x598b6101554fdccd200117b46e320b06853d5493`; arbitrum `0x6e45fae7fa85d8a361a59ec6d89c24dc9e6785b6` | ❓ Unverified |
| Proxy (impl: 0x59fa4b50c555d8d8a462d86cbf9b27b79e0010f9) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x5164453aa159d3b5e683d2e8c32aafbfa44bf273`; arbitrum `0x59fa4b50c555d8d8a462d86cbf9b27b79e0010f9` | ❓ Unverified |
| Proxy (impl: 0x6ddae7dd1d0dc574c850f677efe12fd5418c7e4a) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x487cdc7d21ac8765eff6c0e681aea36ae1594471`; arbitrum `0x6ddae7dd1d0dc574c850f677efe12fd5418c7e4a` | ❓ Unverified |
| Proxy (impl: 0x742e9a0c20071e5e7ac9b4abc0d34c02358b33d5) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x338d81cc646a5c50c88866cf6c117da50115de76`; arbitrum `0x742e9a0c20071e5e7ac9b4abc0d34c02358b33d5` | ❓ Unverified |
| Proxy (impl: 0x9925d7eef59d9df5790c9b8de137942cd9f878b5) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x0326e647408d4705373f66e5c59c65cfd1fdf9d7`; arbitrum `0x9925d7eef59d9df5790c9b8de137942cd9f878b5` | ❓ Unverified |
| Proxy (impl: 0x9d6dad33567c7d514aad6dcdb287696a9a4e65a1) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x3c0e2c6518b629549fe67f2a202af94e2a9935f1`; arbitrum `0x9d6dad33567c7d514aad6dcdb287696a9a4e65a1` | ❓ Unverified |
| Proxy (impl: 0xae6029ea7e1c2f660b660f4b6af322b07f6c578d) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x26cf52812a803d605a750eeade2a6e0538d29bb2`; arbitrum `0xae6029ea7e1c2f660b660f4b6af322b07f6c578d` | ❓ Unverified |
| Proxy (impl: 0xc7ad6871853de2dbb019377320d2e23091a1a8be) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0xb57cfe887929c7fe850d7423ba85a48d361b7927`; arbitrum `0xc7ad6871853de2dbb019377320d2e23091a1a8be` | ❓ Unverified |
| Proxy (impl: 0xf0e83f84a513c45d1e1797f268771230f35d5df4) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x0d1a26d98cb1c8a1458ce18bc2bff4ec15062f36`; arbitrum `0xf0e83f84a513c45d1e1797f268771230f35d5df4` | ❓ Unverified |
| Proxy (impl: 0xf619e6c4d2aa8c96741bae1e6f7da9a9cdbdd7ff) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xe47a284d4e209edd3646112e25cde241b7b76099` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-254406 | `0x017929647ba170709b970f9e70b1f7c2374b449a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x01f10ff511d517fe328b2e3ffd7305f983c31937` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x02ad30f10357aa2651b7583de2269261ad792526` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x02df47e5cfb3c0eeae8567137e4b682831e29ca4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x045bcf90b58d68ed6f8ad8d66b567e3389a7b3be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x05cb17037d2b6bab2a148030bbbbe4cbb7743cae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x05dccd629d24775023fb9bb5add54aa43b7206b9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x05f685b113f9b79f5044b030b8280bd93f1e9e23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x089a8f008b2618df09dcabf09fe5ecb54232c74f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x09eeeef65ced2a318f908d467a628790e30bd263` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0e99aa5a5ae46e727a21ee5b7ab827e8588c7108` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0f2d412c5ceef77ea341fb659f11eddb8cdc1ada` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0fd0c9a25138e8cdbb01d547e8ce07bece2b40a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1061c3e05ba5611d84e9db9fe7c907ad1f6e5d28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x10dabc126abb2f22b550781aa5a38110c19d93e5`; arbitrum `0x76b9a40bc829abb0dcaddcb9ab5c29f9a75e426b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | arbitrum | n/a | 4 deployments: arbitrum `0x11255fe8bda8bb41d258713daee2e55607a78984`; arbitrum `0x7eac93813ef0c1b24d899fe2fd25feb7e31e3549`; arbitrum `0x93428d97571dfa4a6bf17c907a41d4dee288e45e`; arbitrum `0x9f93a3a5fca9c98453254a0e5cdce905e763fd7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x132f7ec52a0ba019a47fa137c6f34ce34df93d58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x134b57c5b808d68e15d5640e5c1b80605c536140` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x14fe8fa1470e6a6ace846a19b26f8c6fbb21f5dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x15f2f581d0402723a57c5d2523d86bc751bf915c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1689b790d67e7307d87d3ddcf99568c12016eb73` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0x16f3ae9c1727ee38c98417ca08ba785bb7641b5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x16fd654e9288262b6e9280a8a1d1a3b7dbb90fbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x17bf1a06f191dbddf52f5292c7da2a709ed71861` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x17cef7a5ea1209291c23d207e3045fe9a18f5568` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x183d5d5267f72b2a5242dd818f037edaba1bd773` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x18f35b0b466b54496d74f42183480c601343fb6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1aa39a9556a8a7ce7dd51de6e98269a91e519320` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1b128e4acaf636a056f7599124d61c2a322b9585` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1d3f6fc6875ea29a9e187622867edf82f1b6bbc0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1d70d513ce7a8b6692bdeab6c7d48057d679abce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | arbitrum | n/a | 3 deployments: arbitrum `0x1e0d1b5f3a8876e68fb16cdc00f72797844843e8`; arbitrum `0x54805704a416a39bd36fc740194f9569e7e36b7c`; arbitrum `0xca12d81477e514fe93e28d98bb6e42a2ca317f47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2076c814c954609770c829c235919be33ba83892` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2099a122f02bf322044944da24386c1a8b3958a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x213aabc4f08c08dfa0d95f5da6c36f90d43fed5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2199469d8593be0b6ae081afa027caf325621ecc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x21b26411f336705500f765ea4f3071bbde91d2f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x22f68942a792895dc573f0eee6887dffb6eb52ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x24f545b315a8dc8bca6ca5ee441dc702bd220c2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x251ff58698fd1b6d4515329fe5f76320fb1b50f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2a857d845ba93146e3f233c0580e1af0682534eb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x2ad380c9c480cffed54c24f8e9eec3a701d0ffe0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2b6554bae66193ebfb1c2f2a7ebb5f895041ee16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2b6c777f437fdbd4ab02b722ea03922f256e1d75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x2b808675f65723aa9954de4532ae211d13439905`; arbitrum `0xfcec11fb72e21b4719ed3fdb58ca72c49dbadc2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2c99b7930a14856764177066662137eae898c4db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2d6bb7fe2136e93d4a276299d2165b99840fb51e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2e65f9d9c86de0df47bd5fe0c7d94f6f0e8b2e8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3050e6cbb7a1a5d636b85f9897b84654706ff50c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-254411 | `0x3068744f00d72390a1fa56536e2cd7ab30404b2b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x30aeda69ab89402193933c82df418b419bb645f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x31ca61db409bba98930d8e60c0673780d6218349` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x31eed722dd5142b6ba679db6d484eaf118d62266` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x33df88ab2de948e2802b001fb29901f820f89b6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3770d4d76624136b79346c409161827452e4bb8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x394ca6f5b4ff355d01f782165bd94d7c8c9eaaef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x39c6cb0ccdb3c4f202436ebe27bbc73a856bd2ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3b193b3167448428c247d9b9c0bc8dddd6a868a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3b7846bd0806d75724d8c968cfaa4144939cd67e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-254413 | `0x3c3b0b8f5859c0e2d7567870f8a5c0e94486f9b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3cd2b0af143746907f77a5fdc244d456c7779013` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3d956034c6b7e5155381927f5b4f264c2386b5ae` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x3ec0e77eaece115e8c253614028815beae7b6ff4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x400ba294240436a469cda449c3bb14f7b1d7e726` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4098760667979d1f34b4cf5a944043644958aa53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x40c1c96c6365b2a4a96a9c33fb8cac1d24dbbc84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x41f90984e81a0f412d4f0365a9adec31fca5809e`; arbitrum `0x96414d1e8576fb5fd5556eb08e4695b263987471` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x466c7540846174e7ee6f45ab13351d27ef00d6f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x47da07eef0d21cf3f10beb533100343a296416ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x48a19fa7f96fe6d7cceb523059df198df8a5481f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x48e26bbe6626ff0f2eac94fd245ef97ff71b67f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4a98b898af9b39462baecb7965298a256af38a9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4b3fa3e55ae4181a6114bac40d29035a55624fa3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4ba2f9eea8193be98af001cbe37120ae27e1978e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4d709f94bbaedf69aaec6725b5b1393e17b6901b` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0x4e828a117ddc3e4dd919b46c90d4e04678a05504` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4e969d9dd36f6678f9798187bbdbe53208c89946` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4f02e9717747cf3dc2b32379ef47530328878a3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4f063c164da6416717584cdc9a3fc3597e85b0ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x50435e234e7e870db3e493a1ba92e72460516541` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x50b367a1b99f64e89c292f6e4c8d781b2d5e88fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x50e6025bbc2e034ee418d5bcbafd6086d9370f91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5138a300289717315a03174b118176bc04976a0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x530ab59d4b208f62aac025ab7e8b9a8212a800cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x54c065081820fc446208266f0bafb3fdfd8c9b69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5587df721b44f02f6d67a75c37ada137493ceb40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x55f2b1b4f5816f6a83249941adc3f167e35e8456` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x561adb1706ade8327128183a2842bf9b5579cca6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5639d2ea15abaf6adacb775532aa78848c491dd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x57bd046bd502c591ee1c5b8186d0cef0197329b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x58c4f4d018e24565acbf29bd4a0efcc112070069` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x599b5065a2c232bcdd18922c6e9d0122c7d648c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x5a4da549dcf423dfb518686efdeb31da9c77f738`; arbitrum `0x63db0b5f9cc2495721cd11f59c4e2c723d9ef923` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5a89f4fa59351f21cd84322272d5600501d7561d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5a91b77dddd61b90df09393dd8bc51169c1d9afc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5afffc69130433ab2b8fed9a31e1939b291e0e81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5b15c5439781d88573396d2409632af9c98d8578` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5baabf2e7e8136651d1404ff80d9aae15ca05c6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5c3ffb2d08298a97c2dd9ac34de5085d38931298` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0x5ccd62bc0fc8b811200ae33942c057961617a216` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5d2911448a6b945f0729769b682da7aaaeb576b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5d706f159a1648ea07b52d0ff008bb73e17687ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5e278886891dc7ed64e6e27afc868aa81e49e1b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5e9f3cd4c40abddcc74f67b189f7ea94ac53c923` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x61faf15859d4636bfe73b46db233c5950fddcf8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x635100bd932feb2846a0b71ce8c152374ad5e789` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x642da283eda117d5e0f4b6926d77336832740ed7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x64e5dfcd6d99c3628a3776f42aa0d2ac3d11f14c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x66d5170ecd7b32fbfb7a6693e281743a7c6a1913` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x67c2be2cafe480605ee2636855122aeab7dbe3a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x68b5e23d356c7cbf14882a700960c02c3fdcb921` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6b2aeed6181515e3e4e304921cbc64c2bc2c5585` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6ca2f0af22b172af2d5e788ce5f1ecf075c148a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6d891a20e24c230088a11333f3d1b16b9417d53a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6da1dd466b7714412aab52dbcce7997790d0bd35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6f321cafb19464a2a6160e14d00e2d2a121b3222` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x70173d6f5c1d5366420b92e0e8ec79f1213ea3f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x710bc25615e55f67350891561119576cdd933ded` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x711cc1578bc995bc0e27292cb1a340835d277c18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7170d749335a469c711417f562287b476b00e5b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x72cc67f670ad1fd258e9df3bfbde17df24c3d7a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x743e1d89b0a63dcc21e4741a4084b1a5f5f16f8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7469d5ef7707300dae663d849c049c1e78a79ca1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x74d2ddc86c5e4c1db01e353389746d16a229385f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7557f11986a90af0407e2412835e333aeaa262bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7675f3bafa7d2b73022f1e85222d00430e4a9ade` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x777383bd7ea518c3ffdd05ae642dbd7b6d070ee9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x781ef6d737e3eec55feac95ce5b2bc5f94aa2e52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x787ae0889bd07441b019c949d8d2002d58976ae2`; arbitrum `0x962cb37f6c1986417277fd896b0f9f6a6b3fb58a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x790b04f2c44a4a88534d36cbc5b3f35c2a031032` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7af2c4f935180e33fd4eb7cd8142d3f3348d020a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7b5a8801170b3d1090f1078667f7a20af4f08265` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7e5136405c102e49acc16cbe2bac53d0c1061f01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x817f1ffb29717c87b5dbbf34194a21e7c91e39cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x83f07693a3e0eb197059deb76b8fb60520639696` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x84558e209214dde7150f9d2f1d7e570040353b2d` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0x8464ed11e7129238a355f26b741416174ac080b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x84d714dfced135be0a746883e39c44359be7a4af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x85c95610cf94fe3b64f791e636ad603ca1d19dce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x862c0f87ac1ff97edf82c69143b53a50d9ce2e20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x875a192e9393b6a4c30f3de96e7356c9e27a025b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x87c3cc76d27828bb585020bb5545608b9c535362` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x87e94db7eb49232a761a6f63e4b70c2c4a005b13`; arbitrum `0xcd44e2a79695b11997817f9f15ae8e468b5008c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x881903e31958e18ea59a2edb94f0541e83440489` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8b8d5638c140b7c0f70ea00bd4ccde2a6fe1af28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8c136428246878324a3922a01aae57e511f3f7a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8c56579bf99205366c219f5a4b7e5b75cae3e849` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8cd61eebc7d1dd9bfe699f219a1f9cf5ba7a9fa5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8d48d5b67dc7010de0480b056e0ecce7b9576e27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8d5fd93d4b998ac35bc7db4a578363d385644128` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8e9ba9e260d50b328f7cd8a04b259d1ffcf52731` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x912a91d7f2d4cefc4d7734d7404110879fabeb95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x947d0a38e2715c91c5f3b43d705048f679590c92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x98133497a59428e1d9022382fd4ef1e545eafd44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x981c1909b633c15c561bf3e1c6275f56ccae6d18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x98d483c024c92dfbcb8a7101e6da05b1efd9b969` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x98d930e4977011faa0940dcffe9b2d6b87ebbb82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x98df07b276eef685ddd2e73a067023bc9a528b36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9a01757630973069e748f94f8b6f5668c6fe1530` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x9b4c4b2eade35ce2ab0bc3fb97ac81e3dba3b5b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9c83c323d02249b74c7b76507ecdbd9fe4e0bc27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9f3203eeff78f0952111009013a0652fedd80f95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9ffb367492e3b23593abdf4ab8a66046dc7d6abb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa0538509c4da3a7bc2dd20f2f6685c4f29a12da3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xa20528fb3545c269691dbebaa971ee42852beb71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa272694410665e48425ce012e45f9b7e4bdfa0aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa34d60f9918445081ff68c0ab959f0797882e492` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa45dbf3c5ed96c817a7e4e6a7b8112432de8b8c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa46f8998f15549aaee5157726777497271e05350` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa4d41a8530d6b1bbef7cb60d798a6b25c6f9cf4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa7622ebb6466a3a56c9d2bcc5a497fe3213f5e2b` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0xa899f3a810a73bd15d1147c4afc44cad7ea56673` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa988644ac8179d5bcf6e21a148224512a995192e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xab832f0ee73c5e7830d12b3d825edcf8a10b1f23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xae2d5a6a100539217ee03eb0bf1b7c914f154cab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xae71d99eb681185f2db26dd22c52043629b4d93a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb07fab6fa37a03e2ec4b1e92a3ca6c91d0a537a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb1dae118b00af4270626cf690e42612802736d72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb29f1dd2fea4fd751204906519afff6254c3d703` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb3a108c149c2f0d631026b4471c6566b418c2643` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb3cb3df2522287dcc9e17cac7dd2bcbf6669b434` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb5083c7600e330a4fe5f7755e34738c465300dd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb60ae67b615cea2035e6bb2478d6e6e0e9452bf8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb6a9566d2c3ef1d28988e92654a79dd6a09b0cc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb790cc641bf1b77c84b3e6279ecb0c7a1e732a93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb9941bedf1fc8c351ea0ffce55dbc5cf55160595` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xba5b76666ca09fe9a1de9bfc9b62068510674e3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbad0f9dc63930a1cfc9c2352c61866175b24246b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbb755804877b467095f6952ec2d1256b846f1679` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbba607b248e72d7b80f06dd120f1d96f8333bf3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbbb88d73a28cfb1650943569abb9b2966d6a065b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbe6b7f83e3c4f3ceac3c2b30e7c71867e1022d44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbfdf22a35c85907f0acfe079cf07089efb5bb05a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xc04b6eca0400001d112f23714b6b4136381dc16b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc145835cb5fa9661d929ae473a7037254493c508` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc21da73e8530f3abc0bd908b1d54413317d96ae0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xc243f6e368ac321ccce360e8baaa7525e4b1bdd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc2658f6d76195250a82bfca227bbb215cb39be7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc3e7aea45fe0a39d69e19a830137efe63754f82b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc41df1438ea2bb307312b21a5874689a4fd9244a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xc44f3ae3950efb7735c179714d133ba62be7bdec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc76dfaf270b9810de1f6a5a5b5ab0d1cccc833be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc955d31f15378e4fe6d2434b87516744970c56bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc96d942427de31419500492fb66e479fc82c6c67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc9f6ee5e91d008920c6a4887649ed76ebe237ffb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xca2049141b65f78875e27db4096a45b7cd70870d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcaf2b7c158142c61fef29d1d5f77ffc51fac2473` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcba8272c2222ca02acb7c54235aba6c386e2515b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xccdd33b3041e534a2eac9ab71499f745cd677f23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcd65e9a56b5234d9c8405bbf2f2dd44d66dc1610` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcf07fc35cfeae7895c627d40868a044f83b681b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcf5c18798ef559e82c576abfa28ef057abbd64a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcfe8873d2965ad3709372d0d2a8fd5517ae2d863` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd0819e6948075188564a85a4eeda26887445ba8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd0aeea9124c58d3de0be2ee0fa2e63b0822a75f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd1b5adfbcda9fd241234ec30afdf09a187c7f902` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd539e00043349aaf7c4f4d6fb445d22186608075` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xda384d6bd6f6a17afbb1b22cb0812c2f76a3b812` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xda48d95e54e4f1fbf02f5e9f945d340f8985b2c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdc2c6a99978b8e299226dd02d5ad1c9815fa6dee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdfd967e15ced2d9f751e8bfd037f10132f39ec14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdfe9b06daa5a0b4439f2c9dd9cd36d7de6ff111a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe1d11551543bd6a8f5150a05fd4352b91a77bf7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe2da7fbcb38a90dbac74a3a2de5b9612cceff62b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe301ca4cfff8e0f93d5cd98b17c90330b8785bf8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe31257395bbce823d2db1fa3440f2f4637c5f8de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0xe3f3f8d6d14b9df861c761f4c855cfc8dc1db43d`; arbitrum `0xf0a67bd496d409b720b9a9e5d14cf23be8fadb42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe4846848e47ef421ca286057299d0f78ddac5ecd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe5acba2daed61c58936e570a779ec27c91a3e352` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe64e29392bc835111b21d9f3d83c5d9749319892` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe83d5e647fea588738387443f419c1dc003fffc3` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0xe872bcad58b105440968a9d39af044547bb79daf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe89676705eec638d88e92060e9b8b13131ec7cce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xea75e15077e0028eee4d58a4d578a4550061390a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xeba92a29070b5547e1be2e672fbf03e94ebb50eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xec57a85ffc26ea1e00bf82d823df8da999ec59aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xec90b76ff291f54e6b35e0cde7309baf15f0c161` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0xecb0ab1b57bcda08d96e5580b034ba02b9de0ad8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xeea2fa4d27cf1f5149b44dcd3c36915f30a0b022` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf350fd6f3dd887f8d46be26554055b03b4c52035` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf44d2ffae90ad88606107fec7b6aa23bce1f3ed9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf9916aa9cc276fe556156b50d6abe3e6f434c247` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfc4572934955a35155c5342fdee43283174909db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfd0aec4e5156ef69341c9dca60313c6fa52deeeb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfe7823de78173a9fac00f69f0ba84843f67afffc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xff39f360b425a75bf18bff3f1eb174de49f4c7ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xff7500eab475fa1ee832a45a702c26686d49e829` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 360
- Live contracts: 0
- Unknown liveness contracts: 360
- Source-verified contracts: 93
- Currently scope-matched contracts retained as-is: 0
- Classification counts: candidate review=29, contamination review=24, third party or infra=1, exact address book overlap=12, source verified unclassified=30, unverified unclassified=264

Showing first 200 of 360 contracts. The complete deployer expansion list is in `brief.json`.

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| candidate review | ATokenOracle<br>`0x9fa1188ca23e7f92db83c04bcf45fe1c82bbffc6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| candidate review | ATokenOracle<br>`0xbd50d480991f2b432da458d1759ba959408b4729` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| candidate review | ControllerFacade<br>`0xe7128748a9d70fb48af14f8e6907c5aa8415f065` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| candidate review | LinearRateModel<br>`0x1bf8a37c2989b8bcf7013bdba94b2543091859fe` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| candidate review | LinearRateModel<br>`0x56640fa2315eb2dc93aa3659620cece23e8dbf2b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| candidate review | LinearRateModel<br>`0x5af5e9180f0a49f7b15b35a41007f9158d6b0fa6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| candidate review | LinearRateModel<br>`0x6cbecaad370bc786739759323d4075ac7e9caafb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| candidate review | LinearRateModel<br>`0x860350608c2f8cd6f7b56e452a8fa6290f577597` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| candidate review | LinearRateModel<br>`0x8f7a7c34d855c3b5169851c2d8620ca1409292c9` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| candidate review | LinearRateModel<br>`0x91cd729fffa3fad1ea9101b194600f23dee1c7ad` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| candidate review | LinearRateModel<br>`0xc3c68340b3c7b1c6b78010b356ec1e5ea526d2ff` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| candidate review | LinearRateModel<br>`0xccd7a233313f9a0cb1d7c1bf26d9e722766f04ec` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| candidate review | LinearRateModel<br>`0xf61421e039f857dcc4ec8c975ca207f7cfb1515d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| candidate review | OracleFacade<br>`0x183145fc3346b530828cc07fce4c3675cf28d6f0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| candidate review | OracleFacade<br>`0xc79c23decc176bd03dea9ec6e56383589c0894a6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| candidate review | Proxy<br>`0x17b07cfbab33c0024040e7c299f8048f4a49679b` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| candidate review | Proxy<br>`0x82467d3d626eb21f1f4356a2ccdc9569e1c5316b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| candidate review | Proxy<br>`0x98144abf44e12b40a2ca0046e00f94cf7af6173b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| candidate review | Registry<br>`0xd8fabf4c0790901efb9d851aaf7fde45d6b2e4a6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| candidate review | Registry<br>`0xe22d240b6ba7143a20c45253ed605d2ede2b2991` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| candidate review | Registry<br>`0xfcc45fd3e143e1fe5a0f21f2cbfd87a9de334e30` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| candidate review | RiskEngine<br>`0x532964fd2434240490081a3a6f0ba1220ffdf658` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| candidate review | RiskEngine<br>`0x622eada71b78300d0e6cab66be78690a6d041fb3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| candidate review | RiskEngine<br>`0xc0ac97a0ea320aa1e32e9ded16fb580ef3c078da` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| candidate review | UniV2Controller<br>`0x6df0b4f7e3056d52fff8d9d3b5e45b4e29ee7bfd` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| candidate review | UniV2LpOracle<br>`0x692076e039ca499b59b1fddf7aebe9ecd1bc045c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| candidate review | UniV3Controller<br>`0x7db7856dda0ae7321b2760503fcf359d3c0114fe` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| candidate review | WETHController<br>`0x697cfba173537f9c59fee745bbd8a4a28f5381cc` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| candidate review | WETHOracle<br>`0xa1b5477967b96f46184562c44d84e6c2543b0616` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| contamination review | AccountFactory<br>`0x70ade2e34fdda195e39c0c00652e18d7c1433282` | non_address_book | unknown | unknown | verified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| contamination review | AccountManager<br>`0x0d36ac7bed397aeb5e7df5ea5fe37054cbc2b3fd` | non_address_book | unknown | unknown | verified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| contamination review | ATokenOracle<br>`0x6cb48ade65fe10fd55231b661adbb00ab4a7d8bb` | external_dependency_or_infra | unknown | unknown | verified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| contamination review | BaseController<br>`0x947e74f019a47ecccb8d81e802ec92d1364ed278` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| contamination review | ControllerFacade<br>`0x3009b02c2712de5698e4684984153475f6fd80e3` | non_address_book | unknown | unknown | verified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| contamination review | DefaultRateModel<br>`0x59be042b19ec606ef105802c659f13fbf14658c5` | non_address_book | unknown | unknown | verified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| contamination review | ERC4626Oracle<br>`0x35a1d15ef07aa3e22917e3c9af3de17fdd431459` | non_address_book | unknown | unknown | verified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| contamination review | GLPOracle<br>`0xbb1313c315c24824030f56953551ed4467e47975` | non_address_book | unknown | unknown | verified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| contamination review | LinearRateModel<br>`0x17dac14281e166c7b4584166fedc2ac68173ea98` | non_address_book | unknown | unknown | verified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| contamination review | OracleFacade<br>`0x08f81e1637230d25b4ea6d4a69d74373e433efb3` | external_dependency_or_infra | unknown | unknown | verified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| contamination review | RewardPoolController<br>`0x2ab248c6a51261ef86bb99fa0c210b097349d628` | non_address_book | unknown | unknown | verified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| contamination review | RewardRouterController<br>`0x48b7cb0489f0aed4e0d48f34b38851cf54c5b9af` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| contamination review | RewardRouterV2Controller<br>`0x3b3ac0dc06f2c13cc1ec87d838baca3eab161bf4` | non_address_book | unknown | unknown | verified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| contamination review | RiskEngine<br>`0x488d275da177795e4ce5eb93d4c37474412249bf` | non_address_book | unknown | unknown | verified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| contamination review | StableSwap2PoolController<br>`0x926fe4d703a244ee1cadd1b6c6ca097e09db2f05` | non_address_book | unknown | unknown | verified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| contamination review | TransformController<br>`0xfac8859851677074a3f029c44a3cb88ed94e825f` | non_address_book | unknown | unknown | verified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| contamination review | UniV2Controller<br>`0x2a3d679a1152b6b6dca437e014ca8fda72c2ef18` | non_address_book | unknown | unknown | verified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| contamination review | UniV2LpOracle<br>`0x64af464ad1fc652865dc09e92b1bcf5854cbc3b5` | external_dependency_or_infra | unknown | unknown | verified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| contamination review | UniV3Controller<br>`0x4f0da4c622c07d126c87fd3fa9b93bf5721f9edb` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| contamination review | UniV3TWAPOracle<br>`0x4366871d32ad6cf5b649cb5721f0aee18dfbbdde` | non_address_book | unknown | unknown | verified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| contamination review | WETHController<br>`0x44e4fe7067f4628caa7427ad88100269d2295c35` | non_address_book | unknown | unknown | verified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| contamination review | WETHOracle<br>`0x0f8011d2575c05dfd526c1aea7bfa8f082d7e830` | external_dependency_or_infra | unknown | unknown | verified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| contamination review | WSTETHOracle<br>`0x1dd8ce83b8c0da4d180b372458d342f55c02845b` | external_dependency_or_infra | unknown | unknown | verified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| contamination review | ZeroOracle<br>`0xb86f62b86abc37c97507e7e6320e5895c1732792` | external_dependency_or_infra | unknown | unknown | verified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| third party or infra | GLPOracle<br>`0xbba8e744b7e3d69909e413cf411b6cb92a27d4c9` | external_dependency_or_infra | unknown | unknown | verified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| exact address book overlap | AccountFactory<br>`0xce7df51aa782d2c5cee2a2a18568b105b1db9814` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| exact address book overlap | AccountManager<br>`0x23ad9605b6e7a02ab9f73068f5e68715f21c2b6b` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| exact address book overlap | Beacon<br>`0xb7ba3321fc5acd14395eb2f00f6c4e2e6c122eee` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| exact address book overlap | DefaultRateModel<br>`0x5a9eeca1419967b1e292538efdd39d73670dc3ab` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| exact address book overlap | LEther<br>`0xcb3703f47a547347b515a463968d03e0fd0b8228` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| exact address book overlap | LToken<br>`0x3c34c679a76697e12e8a7496173487fea004f7c0` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| exact address book overlap | Proxy<br>`0x62c5aa8277e49b3ead43dc67453ec91dc6826403` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| exact address book overlap | RewardRouterV2Controller<br>`0x3e1c3e175eba948eb74a68c2f946678a863550ce` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| exact address book overlap | StableSwap2PoolController<br>`0xfcc9ea8bbbbd2dcb558931b189027e42eef7e9d8` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| exact address book overlap | UnnamedContract<br>`0x017929647ba170709b970f9e70b1f7c2374b449a` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| exact address book overlap | UnnamedContract<br>`0x3068744f00d72390a1fa56536e2cd7ab30404b2b` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| exact address book overlap | UnnamedContract<br>`0x3c3b0b8f5859c0e2d7567870f8a5c0e94486f9b7` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| source verified unclassified | Account<br>`0x2ebbc910b201dd91c7ee74bdca161cab90fc5e29` | non_address_book | unknown | unknown | verified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| source verified unclassified | AccountManager<br>`0x3281c127366fc87ed9ea2a064f793f521f1402e5` | non_address_book | unknown | unknown | verified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| source verified unclassified | AccountManager<br>`0x67d27d6271690e4ed4e6fef283bae99c83964c77` | non_address_book | unknown | unknown | verified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| source verified unclassified | AccountManager<br>`0xaa9a13e7dc57cf646f22f82aef8ee460ec50a929` | non_address_book | unknown | unknown | verified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| source verified unclassified | AccountManager<br>`0xb08501a3020ae096c2edd6495d0957b615d8c093` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| source verified unclassified | AccountManager<br>`0xea3ca08b1852bfa336166d28259730f7cb51a787` | non_address_book | unknown | unknown | verified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| source verified unclassified | AccountManager<br>`0xf9b45da68cc80a79b08119926995d374f67a20b1` | non_address_book | unknown | unknown | verified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| source verified unclassified | AccountManager<br>`0xfd4541b987d539203d108251453b7f021222dfb3` | non_address_book | unknown | unknown | verified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| source verified unclassified | BaseController<br>`0x94a04c1f34a0465985c8badb1001735adf7a31fb` | non_address_book | unknown | unknown | verified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| source verified unclassified | Beacon<br>`0x44b65bd350f23cae00d4fbc508c920ae8415285a` | non_address_book | unknown | unknown | verified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| source verified unclassified | LEther<br>`0x331815d6b8b2d5d21439dec842a3412ea8137ef4` | non_address_book | unknown | unknown | verified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| source verified unclassified | LToken<br>`0x0c47b375937e1c9c6981f54920bf8fddd1c88938` | non_address_book | unknown | unknown | verified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| source verified unclassified | LToken<br>`0x7d7a9b083b5a506b5a622b6773db2398addb1463` | non_address_book | unknown | unknown | verified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| source verified unclassified | Proxy<br>`0x0fada606334ab777b980188a7f90d20c1baedd2e` | non_address_book | unknown | unknown | verified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| source verified unclassified | Proxy<br>`0x0fb61b8734e71db635ecdfd196b2543cd01fa336` | non_address_book | unknown | unknown | verified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| source verified unclassified | Proxy<br>`0x1daefa51188b240e3438ab3384e47b03be760b8c` | non_address_book | unknown | unknown | verified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| source verified unclassified | Proxy<br>`0x2ea96188ad13530f184bbb020adfb1610c3e2a5f` | non_address_book | unknown | unknown | verified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| source verified unclassified | Proxy<br>`0x3a20354bb2e9cab0e15b53cfa6a3cb82c01a7ee2` | non_address_book | unknown | unknown | verified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| source verified unclassified | Proxy<br>`0x55238c5e1b8abdb05b89855f2fb85d989157dc7b` | non_address_book | unknown | unknown | verified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| source verified unclassified | Proxy<br>`0x6b328f066a7fe3795001db88a0a4ce09075b7dc6` | non_address_book | unknown | unknown | verified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| source verified unclassified | Proxy<br>`0x94509e7dce68fcbbd808dd89901a45ef47aabd2e` | non_address_book | unknown | unknown | verified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| source verified unclassified | Proxy<br>`0xc45231cbae1796ed6eac7b50fc74f8ddc7f2014c` | non_address_book | unknown | unknown | verified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| source verified unclassified | Proxy<br>`0xc7f14cb309f1dc342c6a2964b6bae7796de37ef8` | non_address_book | unknown | unknown | verified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| source verified unclassified | Proxy<br>`0xcd44ccbc35b88d73fbe1809f16d4ab376d7e2d85` | non_address_book | unknown | unknown | verified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| source verified unclassified | Proxy<br>`0xff9cfcb1576dedd83ecc44be5342f17c08382ead` | non_address_book | unknown | unknown | verified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| source verified unclassified | RewardRouterController<br>`0x62a9e2c423e1796b924cc881ce8e7d3676020c84` | non_address_book | unknown | unknown | verified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| source verified unclassified | RewardRouterV2Controller<br>`0x4d0e7b873a4de468c40f94a73a6d6dac1568bbc9` | non_address_book | unknown | unknown | verified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| source verified unclassified | UniV3TWAPOracle<br>`0x542eff0bbc4c52d8c569b737c5f312c8052c61f2` | non_address_book | unknown | unknown | verified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| source verified unclassified | UniV3TWAPOracle<br>`0x964bd74b29a925669b14feaf788d776b19467451` | non_address_book | unknown | unknown | verified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| source verified unclassified | WSTETHOracle<br>`0x22bcf71251bdd902ac45b6a4bd49fe317eea7898` | non_address_book | unknown | unknown | verified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | 0x10dabc126abb2f22b550781aa5a38110c19d93e5<br>`0x76b9a40bc829abb0dcaddcb9ab5c29f9a75e426b` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | 0x11255fe8bda8bb41d258713daee2e55607a78984<br>`0x7eac93813ef0c1b24d899fe2fd25feb7e31e3549` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | 0x11255fe8bda8bb41d258713daee2e55607a78984<br>`0x93428d97571dfa4a6bf17c907a41d4dee288e45e` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | 0x11255fe8bda8bb41d258713daee2e55607a78984<br>`0x9f93a3a5fca9c98453254a0e5cdce905e763fd7f` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | 0x1e0d1b5f3a8876e68fb16cdc00f72797844843e8<br>`0x54805704a416a39bd36fc740194f9569e7e36b7c` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | 0x1e0d1b5f3a8876e68fb16cdc00f72797844843e8<br>`0xca12d81477e514fe93e28d98bb6e42a2ca317f47` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | 0x20ce093d09c561faae72d378ae7cb3ae0bdf1fbe<br>`0x0954fa0a6a71dda5939f90a0c179579e807a30f6` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | 0x2b808675f65723aa9954de4532ae211d13439905<br>`0xfcec11fb72e21b4719ed3fdb58ca72c49dbadc2e` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | 0x41f90984e81a0f412d4f0365a9adec31fca5809e<br>`0x96414d1e8576fb5fd5556eb08e4695b263987471` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | 0x483d3e23cd7e227528a4459a1e9b88f13020a698<br>`0x467f91cb4f062490144ccad7e80ef736c381183e` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | 0x598b6101554fdccd200117b46e320b06853d5493<br>`0x2b3d7a790432af83e322c6baf79deeb040f777f0` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | 0x598b6101554fdccd200117b46e320b06853d5493<br>`0x6e45fae7fa85d8a361a59ec6d89c24dc9e6785b6` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | 0x59fa4b50c555d8d8a462d86cbf9b27b79e0010f9<br>`0x5164453aa159d3b5e683d2e8c32aafbfa44bf273` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | 0x5a4da549dcf423dfb518686efdeb31da9c77f738<br>`0x63db0b5f9cc2495721cd11f59c4e2c723d9ef923` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | 0x6ddae7dd1d0dc574c850f677efe12fd5418c7e4a<br>`0x487cdc7d21ac8765eff6c0e681aea36ae1594471` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | 0x742e9a0c20071e5e7ac9b4abc0d34c02358b33d5<br>`0x338d81cc646a5c50c88866cf6c117da50115de76` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | 0x787ae0889bd07441b019c949d8d2002d58976ae2<br>`0x962cb37f6c1986417277fd896b0f9f6a6b3fb58a` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | 0x87e94db7eb49232a761a6f63e4b70c2c4a005b13<br>`0xcd44e2a79695b11997817f9f15ae8e468b5008c7` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | 0x9925d7eef59d9df5790c9b8de137942cd9f878b5<br>`0x0326e647408d4705373f66e5c59c65cfd1fdf9d7` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | 0x9d6dad33567c7d514aad6dcdb287696a9a4e65a1<br>`0x3c0e2c6518b629549fe67f2a202af94e2a9935f1` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | 0xae6029ea7e1c2f660b660f4b6af322b07f6c578d<br>`0x26cf52812a803d605a750eeade2a6e0538d29bb2` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | 0xc7ad6871853de2dbb019377320d2e23091a1a8be<br>`0xb57cfe887929c7fe850d7423ba85a48d361b7927` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | 0xe3f3f8d6d14b9df861c761f4c855cfc8dc1db43d<br>`0xf0a67bd496d409b720b9a9e5d14cf23be8fadb42` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | 0xf0e83f84a513c45d1e1797f268771230f35d5df4<br>`0x0d1a26d98cb1c8a1458ce18bc2bff4ec15062f36` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | 0xf619e6c4d2aa8c96741bae1e6f7da9a9cdbdd7ff<br>`0xe47a284d4e209edd3646112e25cde241b7b76099` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | UnnamedContract<br>`0x01f10ff511d517fe328b2e3ffd7305f983c31937` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | UnnamedContract<br>`0x02ad30f10357aa2651b7583de2269261ad792526` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | UnnamedContract<br>`0x02df47e5cfb3c0eeae8567137e4b682831e29ca4` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | UnnamedContract<br>`0x045bcf90b58d68ed6f8ad8d66b567e3389a7b3be` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | UnnamedContract<br>`0x05cb17037d2b6bab2a148030bbbbe4cbb7743cae` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | UnnamedContract<br>`0x05dccd629d24775023fb9bb5add54aa43b7206b9` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | UnnamedContract<br>`0x089a8f008b2618df09dcabf09fe5ecb54232c74f` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | UnnamedContract<br>`0x09eeeef65ced2a318f908d467a628790e30bd263` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | UnnamedContract<br>`0x0e99aa5a5ae46e727a21ee5b7ab827e8588c7108` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | UnnamedContract<br>`0x0f2d412c5ceef77ea341fb659f11eddb8cdc1ada` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | UnnamedContract<br>`0x0fd0c9a25138e8cdbb01d547e8ce07bece2b40a5` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | UnnamedContract<br>`0x1061c3e05ba5611d84e9db9fe7c907ad1f6e5d28` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | UnnamedContract<br>`0x10dabc126abb2f22b550781aa5a38110c19d93e5` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | UnnamedContract<br>`0x11255fe8bda8bb41d258713daee2e55607a78984` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | UnnamedContract<br>`0x132f7ec52a0ba019a47fa137c6f34ce34df93d58` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | UnnamedContract<br>`0x134b57c5b808d68e15d5640e5c1b80605c536140` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | UnnamedContract<br>`0x14fe8fa1470e6a6ace846a19b26f8c6fbb21f5dc` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | UnnamedContract<br>`0x15f2f581d0402723a57c5d2523d86bc751bf915c` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | UnnamedContract<br>`0x1689b790d67e7307d87d3ddcf99568c12016eb73` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | UnnamedContract<br>`0x16fd654e9288262b6e9280a8a1d1a3b7dbb90fbf` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | UnnamedContract<br>`0x17bf1a06f191dbddf52f5292c7da2a709ed71861` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | UnnamedContract<br>`0x17cef7a5ea1209291c23d207e3045fe9a18f5568` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | UnnamedContract<br>`0x183d5d5267f72b2a5242dd818f037edaba1bd773` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | UnnamedContract<br>`0x18f35b0b466b54496d74f42183480c601343fb6b` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | UnnamedContract<br>`0x1aa39a9556a8a7ce7dd51de6e98269a91e519320` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | UnnamedContract<br>`0x1b128e4acaf636a056f7599124d61c2a322b9585` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | UnnamedContract<br>`0x1d3f6fc6875ea29a9e187622867edf82f1b6bbc0` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | UnnamedContract<br>`0x1d70d513ce7a8b6692bdeab6c7d48057d679abce` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | UnnamedContract<br>`0x1e0d1b5f3a8876e68fb16cdc00f72797844843e8` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | UnnamedContract<br>`0x2076c814c954609770c829c235919be33ba83892` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | UnnamedContract<br>`0x2099a122f02bf322044944da24386c1a8b3958a0` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | UnnamedContract<br>`0x20ce093d09c561faae72d378ae7cb3ae0bdf1fbe` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | UnnamedContract<br>`0x213aabc4f08c08dfa0d95f5da6c36f90d43fed5a` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | UnnamedContract<br>`0x2199469d8593be0b6ae081afa027caf325621ecc` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | UnnamedContract<br>`0x21b26411f336705500f765ea4f3071bbde91d2f4` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | UnnamedContract<br>`0x22f68942a792895dc573f0eee6887dffb6eb52ba` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | UnnamedContract<br>`0x24f545b315a8dc8bca6ca5ee441dc702bd220c2d` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | UnnamedContract<br>`0x251ff58698fd1b6d4515329fe5f76320fb1b50f2` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | UnnamedContract<br>`0x2a857d845ba93146e3f233c0580e1af0682534eb` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | UnnamedContract<br>`0x2b6554bae66193ebfb1c2f2a7ebb5f895041ee16` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | UnnamedContract<br>`0x2b6c777f437fdbd4ab02b722ea03922f256e1d75` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | UnnamedContract<br>`0x2b808675f65723aa9954de4532ae211d13439905` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | UnnamedContract<br>`0x2c99b7930a14856764177066662137eae898c4db` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | UnnamedContract<br>`0x2d6bb7fe2136e93d4a276299d2165b99840fb51e` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | UnnamedContract<br>`0x2e65f9d9c86de0df47bd5fe0c7d94f6f0e8b2e8a` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | UnnamedContract<br>`0x3050e6cbb7a1a5d636b85f9897b84654706ff50c` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | UnnamedContract<br>`0x31ca61db409bba98930d8e60c0673780d6218349` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | UnnamedContract<br>`0x31eed722dd5142b6ba679db6d484eaf118d62266` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | UnnamedContract<br>`0x33df88ab2de948e2802b001fb29901f820f89b6f` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | UnnamedContract<br>`0x3770d4d76624136b79346c409161827452e4bb8a` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | UnnamedContract<br>`0x394ca6f5b4ff355d01f782165bd94d7c8c9eaaef` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | UnnamedContract<br>`0x39c6cb0ccdb3c4f202436ebe27bbc73a856bd2ec` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | UnnamedContract<br>`0x3b193b3167448428c247d9b9c0bc8dddd6a868a6` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | UnnamedContract<br>`0x3b7846bd0806d75724d8c968cfaa4144939cd67e` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | UnnamedContract<br>`0x3cd2b0af143746907f77a5fdc244d456c7779013` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | UnnamedContract<br>`0x3d956034c6b7e5155381927f5b4f264c2386b5ae` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | UnnamedContract<br>`0x400ba294240436a469cda449c3bb14f7b1d7e726` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | UnnamedContract<br>`0x4098760667979d1f34b4cf5a944043644958aa53` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | UnnamedContract<br>`0x40c1c96c6365b2a4a96a9c33fb8cac1d24dbbc84` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | UnnamedContract<br>`0x41f90984e81a0f412d4f0365a9adec31fca5809e` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | UnnamedContract<br>`0x466c7540846174e7ee6f45ab13351d27ef00d6f8` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | UnnamedContract<br>`0x47da07eef0d21cf3f10beb533100343a296416ab` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | UnnamedContract<br>`0x483d3e23cd7e227528a4459a1e9b88f13020a698` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | UnnamedContract<br>`0x48a19fa7f96fe6d7cceb523059df198df8a5481f` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | UnnamedContract<br>`0x48e26bbe6626ff0f2eac94fd245ef97ff71b67f8` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | UnnamedContract<br>`0x4a98b898af9b39462baecb7965298a256af38a9b` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | UnnamedContract<br>`0x4b3fa3e55ae4181a6114bac40d29035a55624fa3` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | UnnamedContract<br>`0x4ba2f9eea8193be98af001cbe37120ae27e1978e` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | UnnamedContract<br>`0x4d709f94bbaedf69aaec6725b5b1393e17b6901b` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | UnnamedContract<br>`0x4e969d9dd36f6678f9798187bbdbe53208c89946` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | UnnamedContract<br>`0x4f02e9717747cf3dc2b32379ef47530328878a3d` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | UnnamedContract<br>`0x4f063c164da6416717584cdc9a3fc3597e85b0ae` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | UnnamedContract<br>`0x50435e234e7e870db3e493a1ba92e72460516541` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | UnnamedContract<br>`0x50b367a1b99f64e89c292f6e4c8d781b2d5e88fd` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | UnnamedContract<br>`0x50e6025bbc2e034ee418d5bcbafd6086d9370f91` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | UnnamedContract<br>`0x5138a300289717315a03174b118176bc04976a0c` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | UnnamedContract<br>`0x530ab59d4b208f62aac025ab7e8b9a8212a800cc` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | UnnamedContract<br>`0x54c065081820fc446208266f0bafb3fdfd8c9b69` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |
| unverified unclassified | UnnamedContract<br>`0x5587df721b44f02f6d67a75c37ada137493ceb40` | non_address_book | unknown | unknown | unverified | n/a | `0xc5fc2cbf32c09f89f91caf2023884729116ea5d1` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Sentiment_Protocol_20220727.pdf](https://github.com/arbitraryexecution/publications/blob/main/assessments/Sentiment_Protocol_20220727.pdf) | unknown | Audit | 2022-07 | stale | Direct | n/a | no match | 0 | 0 | 0 | 32 | n/a |
| [Sentiment_Oracle_20220727.pdf](https://github.com/arbitraryexecution/publications/blob/main/assessments/Sentiment_Oracle_20220727.pdf) | unknown | Audit | 2022-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 34 | high |
| [2022.10.18 - Final - Sentiment Audit Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2022.10.18%20-%20Final%20-%20Sentiment%20Audit%20Report.pdf) | Sherlock | Contest | 2022-10 | stale | Direct | n/a | no match | 0 | 0 | 0 | 34 | n/a |
| [sentiment_v2_guardian.pdf](https://github.com/sentimentxyz/protocol-v2/blob/master/audits/sentiment_v2_guardian.pdf) | Guardian | Audit | 2024-08 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [sentiment_v2_sherlock.pdf](https://github.com/sentimentxyz/protocol-v2/blob/master/audits/sentiment_v2_sherlock.pdf) | Sherlock | Contest | 2024-08 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [sentiment_v2_zobront.md](https://github.com/sentimentxyz/protocol-v2/blob/master/audits/sentiment_v2_zobront.md) | Zobront | Audit | 2023-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 21 | high |
| [sentiment_v2_sherlock_2.pdf](https://github.com/sentimentxyz/protocol-v2/blob/master/audits/sentiment_v2_sherlock_2.pdf) | Sherlock | Contest | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [sentiment_v2_sherlock_3.pdf](https://github.com/sentimentxyz/protocol-v2/blob/master/audits/sentiment_v2_sherlock_3.pdf) | Sherlock | Contest | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3171] Sentiment_Protocol_20220727.pdf — no match: No reason recorded
- [3172] Sentiment_Oracle_20220727.pdf — no match: All Solidity files in the controller/src and oracle/src directories were in scope. The list is provided in Appendix B.
- [3173] 2022.10.18 - Final - Sentiment Audit Report.pdf — no match: No reason recorded
- [3174] sentiment_v2_guardian.pdf — no match: Extracted contract names from findings locations and invariants sections. No explicit scope table found, but contracts are clearly audited targets.
- [3175] sentiment_v2_sherlock.pdf — no match: Extracted from the report header: 'Date Audited: August 14 - August 24, 2024'. Contracts in scope are inferred from the repository and file paths mentioned in findings.
- [3176] sentiment_v2_zobront.md — no match: All contracts listed in the scope section of the audit report.
- [3177] sentiment_v2_sherlock_2.pdf — no match: Scope section lists three oracle contracts. Audit date is March 8-March 10, 2025, using end date.
- [3178] sentiment_v2_sherlock_3.pdf — no match: Only one contract in scope: MetaOracle.sol

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Sentiment_Protocol_20220727.pdf | Account | unmatched — not counted | — | — | no |
| Sentiment_Protocol_20220727.pdf | AccountFactory | unmatched — not counted | — | — | no |
| Sentiment_Protocol_20220727.pdf | AccountManager | unmatched — not counted | — | — | no |
| Sentiment_Protocol_20220727.pdf | BaseProxy | unmatched — not counted | — | — | no |
| Sentiment_Protocol_20220727.pdf | Beacon | unmatched — not counted | — | — | no |
| Sentiment_Protocol_20220727.pdf | BeaconProxy | unmatched — not counted | — | — | no |
| Sentiment_Protocol_20220727.pdf | DefaultRateModel | unmatched — not counted | — | — | no |
| Sentiment_Protocol_20220727.pdf | ERC20 | unmatched — not counted | — | — | no |
| Sentiment_Protocol_20220727.pdf | ERC4626 | unmatched — not counted | — | — | no |
| Sentiment_Protocol_20220727.pdf | Errors | unmatched — not counted | — | — | no |
| Sentiment_Protocol_20220727.pdf | Helpers | unmatched — not counted | — | — | no |
| Sentiment_Protocol_20220727.pdf | IAccount | unmatched — not counted | — | — | no |
| Sentiment_Protocol_20220727.pdf | IAccountFactory | unmatched — not counted | — | — | no |
| Sentiment_Protocol_20220727.pdf | IAccountManager | unmatched — not counted | — | — | no |
| Sentiment_Protocol_20220727.pdf | IBeacon | unmatched — not counted | — | — | no |
| Sentiment_Protocol_20220727.pdf | IBeaconProxy | unmatched — not counted | — | — | no |
| Sentiment_Protocol_20220727.pdf | IERC20 | unmatched — not counted | — | — | no |
| Sentiment_Protocol_20220727.pdf | IERC4626 | unmatched — not counted | — | — | no |
| Sentiment_Protocol_20220727.pdf | ILEther | unmatched — not counted | — | — | no |
| Sentiment_Protocol_20220727.pdf | ILToken | unmatched — not counted | — | — | no |
| Sentiment_Protocol_20220727.pdf | IOwnable | unmatched — not counted | — | — | no |
| Sentiment_Protocol_20220727.pdf | IRateModel | unmatched — not counted | — | — | no |
| Sentiment_Protocol_20220727.pdf | IRegistry | unmatched — not counted | — | — | no |
| Sentiment_Protocol_20220727.pdf | IRiskEngine | unmatched — not counted | — | — | no |
| Sentiment_Protocol_20220727.pdf | LEther | unmatched — not counted | — | — | no |
| Sentiment_Protocol_20220727.pdf | LToken | unmatched — not counted | — | — | no |
| Sentiment_Protocol_20220727.pdf | Ownable | unmatched — not counted | — | — | no |
| Sentiment_Protocol_20220727.pdf | Pausable | unmatched — not counted | — | — | no |
| Sentiment_Protocol_20220727.pdf | Proxy | unmatched — not counted | — | — | no |
| Sentiment_Protocol_20220727.pdf | Registry | unmatched — not counted | — | — | no |
| Sentiment_Protocol_20220727.pdf | RiskEngine | unmatched — not counted | — | — | no |
| Sentiment_Protocol_20220727.pdf | Storage | unmatched — not counted | — | — | no |
| Sentiment_Oracle_20220727.pdf | AaveV2Controller | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | AaveV3Controller | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | AaveEthController | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | CompoundController | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | CurveCryptoSwapController | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | StableSwapController | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | UniV2Controller | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | UniV3Controller | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | WETHController | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | YearnController | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | ControllerFacade | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | IControllerFacade | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | IController | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | Ownable | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | Errors | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | IPoolV3 | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | IProtocolDataProvider | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | ISwapRouterV3 | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | IUniV2Factory | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | IStableSwapPool | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | ICToken | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | ChainlinkOracle | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | AggregatorV3Interface | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | CTokenOracle | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | CurveTriCryptoOracle | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | UniV2LPOracle | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | YTokenOracle | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | WETHOracle | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | ATokenOracle | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | OracleFacade | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | IOracle | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | IERC20 | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | IAToken | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | IUniswapV2Pair | unmatched — not counted | — | listed in Appendix B | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | AaveV2Controller | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | AaveV3Controller | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | Account | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | AccountManager | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | AggregatorV3Interface | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | BalancerController | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | CTokenOracle | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | ChainlinkOracle | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | Controller | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | CurveLPStakingController | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | DefaultRateModel | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | ERC4626 | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | ERC4626Oracle | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | Errors | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | Helpers | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | ICToken | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | IERC4626 | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | IOracle | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | IStableSwapPool | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | IUniswapV2Pair | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | LEther | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | LToken | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | Oracle | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | OracleFacade | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | Protocol | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | Registry | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | RiskEngine | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | StableSwap2PoolController | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | UniV2Controller | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | UniV2LPOracle | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | UniV3Controller | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | WETHOracle | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | YTokenOracle | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | YearnController | unmatched — not counted | — | — | no |
| sentiment_v2_guardian.pdf | SuperPool | unmatched — not counted | — | Listed in findings locations and invariants | no |
| sentiment_v2_guardian.pdf | Pool | unmatched — not counted | — | Listed in findings locations and invariants | no |
| sentiment_v2_guardian.pdf | PositionManager | unmatched — not counted | — | Listed in findings locations and invariants | no |
| sentiment_v2_guardian.pdf | RiskEngine | unmatched — not counted | — | Listed in findings locations | no |
| sentiment_v2_guardian.pdf | RiskModule | unmatched — not counted | — | Listed in findings locations | no |
| sentiment_v2_guardian.pdf | LinearRateModel | unmatched — not counted | — | Listed in findings locations | no |
| sentiment_v2_guardian.pdf | ChainlinkEthOracle | unmatched — not counted | — | Listed in findings locations | no |
| sentiment_v2_guardian.pdf | ChainlinkUsdOracle | unmatched — not counted | — | Listed in findings locations | no |
| sentiment_v2_guardian.pdf | ERC6909 | unmatched — not counted | — | Listed in findings locations | no |
| sentiment_v2_guardian.pdf | Position | unmatched — not counted | — | Listed in findings locations | no |
| sentiment_v2_sherlock.pdf | RedstoneOracle | unmatched — not counted | — | listed in scope and findings | no |
| sentiment_v2_sherlock.pdf | RiskModule | unmatched — not counted | — | listed in scope and findings | no |
| sentiment_v2_sherlock.pdf | Pool | unmatched — not counted | — | listed in scope and findings | no |
| sentiment_v2_sherlock.pdf | SuperPoolFactory | unmatched — not counted | — | listed in scope and findings | no |
| sentiment_v2_sherlock.pdf | SuperPool | unmatched — not counted | — | listed in scope and findings | no |
| sentiment_v2_sherlock.pdf | PositionManager | unmatched — not counted | — | listed in scope and findings | no |
| sentiment_v2_sherlock.pdf | RiskEngine | unmatched — not counted | — | listed in scope and findings | no |
| sentiment_v2_zobront.md | FixedRateModel | unmatched — not counted | — | listed in scope | no |
| sentiment_v2_zobront.md | LinearRateModel | unmatched — not counted | — | listed in scope | no |
| sentiment_v2_zobront.md | PortfolioLens | unmatched — not counted | — | listed in scope | no |
| sentiment_v2_zobront.md | SuperPoolLens | unmatched — not counted | — | listed in scope | no |
| sentiment_v2_zobront.md | Errors | unmatched — not counted | — | listed in scope | no |
| sentiment_v2_zobront.md | IterableMap | unmatched — not counted | — | listed in scope | no |
| sentiment_v2_zobront.md | IterableSet | unmatched — not counted | — | listed in scope | no |
| sentiment_v2_zobront.md | ChainlinkEthOracle | unmatched — not counted | — | listed in scope | no |
| sentiment_v2_zobront.md | ChainlinkUsdOracle | unmatched — not counted | — | listed in scope | no |
| sentiment_v2_zobront.md | FixedPriceOracle | unmatched — not counted | — | listed in scope | no |
| sentiment_v2_zobront.md | ZeroOracle | unmatched — not counted | — | listed in scope | no |
| sentiment_v2_zobront.md | BasePosition | unmatched — not counted | — | listed in scope | no |
| sentiment_v2_zobront.md | SingleAssetPosition | unmatched — not counted | — | listed in scope | no |
| sentiment_v2_zobront.md | SingleDebtPosition | unmatched — not counted | — | listed in scope | no |
| sentiment_v2_zobront.md | SingleAssetRiskModule | unmatched — not counted | — | listed in scope | no |
| sentiment_v2_zobront.md | SingleDebtRiskModule | unmatched — not counted | — | listed in scope | no |
| sentiment_v2_zobront.md | Pool | unmatched — not counted | — | listed in scope | no |
| sentiment_v2_zobront.md | PoolFactory | unmatched — not counted | — | listed in scope | no |
| sentiment_v2_zobront.md | PositionManager | unmatched — not counted | — | listed in scope | no |
| sentiment_v2_zobront.md | RiskEngine | unmatched — not counted | — | listed in scope | no |
| sentiment_v2_zobront.md | SuperPool | unmatched — not counted | — | listed in scope | no |
| sentiment_v2_sherlock_2.pdf | AggV3Oracle | unmatched — not counted | — | listed in scope | no |
| sentiment_v2_sherlock_2.pdf | HyperliquidOracle | unmatched — not counted | — | listed in scope | no |
| sentiment_v2_sherlock_2.pdf | HyperliquidUsdcOracle | unmatched — not counted | — | listed in scope | no |
| sentiment_v2_sherlock_3.pdf | MetaOracle | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 61 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 260 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 8
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 142 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=6
- Match method counts: n/a

Zero-match audit list:

- [3171] Sentiment_Protocol_20220727.pdf
- [3172] Sentiment_Oracle_20220727.pdf
- [3173] 2022.10.18 - Final - Sentiment Audit Report.pdf
- [3174] sentiment_v2_guardian.pdf
- [3175] sentiment_v2_sherlock.pdf
- [3176] sentiment_v2_zobront.md
- [3177] sentiment_v2_sherlock_2.pdf
- [3178] sentiment_v2_sherlock_3.pdf

Fork inheritance lineage and inherited audits are included when available.
