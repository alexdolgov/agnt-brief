# Agentic Audit Brief: Planet

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Planet (`planet`)
- Website: [https://app.planet.finance/](https://app.planet.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc
- Contract surface: 108 unique implementations (314 raw deployments)
- Coverage basis: 0/2 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,658,794.00
- On-chain TVL (included contracts): $1,332,809.80
- TVL by chain: Bsc $1,332,809.80

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Planet. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 4 contract row(s) across bsc, ethereum. Structural roles: 4 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 4
- Structural roles: unclassified (4)
- Contract kinds: contract (4)
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 2 contracts are derived from known codebases. 2 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- GErc20Delegator (`0x0c6dd143f4b86567d6c21e8ccfd0300f00896442`, chain 56)
- GErc20Delegator (`0xb7ed4a5af620b52022fb26035c565277035d4fd7`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 4; live-surface rows included: 4 (2 live, 2 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/4 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/2 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 2 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 106 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 106
- Confirmed-live implementations: 2 of 108 unique; 106 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/100
- Verified + Unaudited implementations: 100
- Verified by bytecode match: 0
- Unverified implementations: 8
- Unique implementations: 108
- Raw deployments: 314
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (100)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| GErc20Delegate | token | non_address_book | non_address_book_inventory (excluded) | 5 | bsc | n/a | 5 deployments: bsc `0x045e2df638ebec29130dd3be61161cba5f00a9c8`; bsc `0x9c53267a58a54df78dad8db48a118222998c71b4`; bsc `0xb56aea60744ed5aea8f1639dd1f574b102618d46`; bsc `0xc73009ceecf7a11da93d1472211486bb883beb40`; bsc `0xe983cf03314830d9b4d5e87594bb50215438e19a` | ⚠️ Unaudited |
| GErc20Delegate | token | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xcd221e1504442671671d3330cb8e916a5edc3fc7` | ⚠️ Unaudited |
| GErc20Delegator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x2acaf66e67876d18cc5a27eb90aa32b06ab4785b`; bsc `0x5e11ec8ec1a57a93e5ddc8ad950cea60ead9014b`; bsc `0x84a785e400c43d341d5cbcdc7f0dceb49cae7d00`; bsc `0xe58aa5826eb6e0568982018c0db833adbff925df` | ⚠️ Unaudited |
| Locked_Strategy_Penalty_GAMMA | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x60a895073adc0e5f5a22c60bdfc584d79b5219a1`; bsc `0x78cb2462800462521db49958d5773d084c89e483` | ⚠️ Unaudited |
| AggregatedStrategy_GAMMA | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x05e148f1040728ef07e0b4cec33c4b20aa695a39`; bsc `0xd6678a6351757ad6cdb894d0f3097929dc2c2f63` | ⚠️ Unaudited |
| AggregatedStrategy_GAMMA | unknown | non_address_book | non_address_book_inventory (excluded) | 5 | bsc | n/a | 6 deployments: bsc `0x2e54c8fa17954f51bec0249695c93afd072e6e07`; bsc `0x79d84ebb0fc78ee97ee95fc1da1fc4257f38fce2`; bsc `0x7ab46a66ff2b0ea3b541f73377570619000a262a`; bsc `0xaa37532acd1f93ae1db334db5093f98545572fcc`; bsc `0xbea71859e22d106a5728737193ce98b6b9bf2916`; bsc `0xf6c105fffabcce5d9b67b1fae34660f95ab1efa0` | ⚠️ Unaudited |
| AggregatedStrategy_GAMMA | unknown | non_address_book | non_address_book_inventory (excluded) | 5 | bsc | n/a | 6 deployments: bsc `0x31636e47efe076b23dee7fd1d89c962deccd63e9`; bsc `0x7113a7d4e7cd85e4aa2f42f68c56cdabd513663d`; bsc `0x763ba9c688decf64fdcec220972c954df4fc4bea`; bsc `0x7cfdb08fd04fcdcccaabcdeccef29ac2db564769`; bsc `0xc6aa190957dc5d70199da6f2853bb969cb316cb0`; bsc `0xffe80fbdfc324305c61794ba38fd2f041cb98b19` | ⚠️ Unaudited |
| AggregatedStrategy_GAMMA | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | bsc | n/a | 4 deployments: bsc `0x33933bad418bf695632db7a5b3fdaf5fafa4e925`; bsc `0x7520ec943056da6f6b1e697acd47ee32d43edcfc`; bsc `0x7d892dd15165d389652df245484e04531b648bf9`; bsc `0xe88e0eb774fba1f7f55307432e20dd7cbd8d2ae2` | ⚠️ Unaudited |
| AggregatedStrategy_GAMMA | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x3496294f8ab14904cb5427556ae217ccfd09fcb1`; bsc `0x9658ebc59d438d724ee35ca0b81b1b6998ea6772`; bsc `0xd0121b07c279498ca4e7c03ebea7508b5620a4c3` | ⚠️ Unaudited |
| AggregatedStrategy_GAMMA | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x3edbae9b2f565894a19cbf21d2f2b18f9d50939e`; bsc `0x4027a5cda69da74674a09af4aacc255d0d7a6e6d` | ⚠️ Unaudited |
| AggregatedStrategy_GAMMA | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x4b06ab63029fdf687c57dc95cc1164a96ad759ae`; bsc `0xb13191bfaec1302e9456ee36d62752bea0b3cd07` | ⚠️ Unaudited |
| AggregatedStrategy_GAMMA | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x552ccc5e70cb24af47895d4eda42a145445da3a9`; bsc `0x82656f93513afe739d1787933afab1c43b8da594`; bsc `0xf23c7dd3252c3c964c2b36630a0d4519f4675c39`; bsc `0xf7d54b2bcb736402c33241ed35ea9177a1c7d66a` | ⚠️ Unaudited |
| AggregatedStrategy_GAMMA | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x5b14aa5c2c25f3300340db11c3564d22ecd32f68`; bsc `0x95a20eed4fce2785a61042416df855df35a03a9d` | ⚠️ Unaudited |
| AggregatedStrategy_GAMMA | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x64ee24e2461a5279810e752068360ebe2068828b`; bsc `0x872e64b50296608428346ea4671a70ab453572aa` | ⚠️ Unaudited |
| AggregatedStrategy_GAMMA | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x6da3e886df52d4e509167d82393a827ec2491a94`; bsc `0xeac54dff8f4ac909d9c47d849bdc34fb5af80068` | ⚠️ Unaudited |
| AggregatedStrategy_GAMMA | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | bsc | n/a | 4 deployments: bsc `0x7df2dc9c0bd9beade4823fb277b884466a75232d`; bsc `0x8e87204a300977a358115e20f7d8a6e93b83f8e6`; bsc `0xaf2773d0eeff2bcf67045bfe8f750dc143633279`; bsc `0xffe99a5cce139e4fb128cbbd612ef92e510a96bb` | ⚠️ Unaudited |
| AggregatedStrategy_GAMMA | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0xb06351e686aa3495d04db2c9776a4cd71493a3ea`; bsc `0xed9a27e5935c2b8164ebb484c693a9ac1d0f7637`; bsc `0xf9b1b6c989c066e7ab3127827a52ba248038356e` | ⚠️ Unaudited |
| AirdropContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb76ab2b7bcb2879283df6940a9504682e1c3cc61` | ⚠️ Unaudited |
| AQUA | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x72b7d61e8fc8cf971960dd9cfa59b8c829d91991`; bsc `0x82c41b3b276f4dbdc4fb8d067601b4c3a4b336ed` | ⚠️ Unaudited |
| AquaFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc46342b50049d470d123e1da966504d973e9cb85` | ⚠️ Unaudited |
| AquaStrategy_AQUA | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: bsc `0x76263d34c2b996f88e3de6a4c625d14cce009eed`; bsc `0xac3988aaa90b4179e14c1be34fe061ebf4347c74`; bsc `0xb143db94b830000b4f8825f87a5ecf80debf29da`; bsc `0xc7038a7b1a757f7739442173d081f3b4429856f8`; bsc `0xee2059150ae8c3c77d7f3302347aeb9abc8c2b93` | ⚠️ Unaudited |
| AquaStrategy_BELT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0xbed78843ed7e37520240835deccc7448ed39f0c6`; bsc `0xf5b92242842f820d3c0b74eb7d4e9fd200a38696` | ⚠️ Unaudited |
| AquaStrategy_PCS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x1e85923ec3101e4d0dc60cc473b21d76564bad96`; bsc `0x5ebbc227dcc76cbd0f2bff1cac28f0199b285962`; bsc `0x82caef4e1106d2236a8f9730894bb2a5c546e8f7`; bsc `0xadbdf1b8bab19f1233a030b0253f4aba4c668619` | ⚠️ Unaudited |
| AquaStrategy_Urarnus | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3b83dbbd89520c1a6ebb9581c44da6ee8f07c7e3` | ⚠️ Unaudited |
| BEP20Token | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x39723ed2c3f2820d713789e9da6aaafe59735caa` | ⚠️ Unaudited |
| ConvertToBoost | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 10 deployments: bsc `0x27ea1773da535480aef1c90fb06bab4fc0698346`; bsc `0x2cfed1838844346d4cf3b7f2522b9665cdb2ab6d`; bsc `0x79c133e9c6fbc070ce9260d5bf49d09515e18151`; bsc `0x7a91c0fc6d8558d10d063621639fdd764f75366b`; bsc `0x7aff5f0b16696e541acd7a0262f0a7042225d2d6`; bsc `0x866ad5b222c64082b62baac108ab9ab0957bf3ea`; bsc `0x8dc2fe13b8e7ea11d027a6a7dec00bba05676d03`; bsc `0xa8dd559e6f193bbc5de0e8ca79eabf6001c11824`; bsc `0xe931f726d638c6eb85a4517613a5a75a30e543c5`; bsc `0xf5f59630fa64fa70b37415594ce89237db961041` | ⚠️ Unaudited |
| ConvertToBoost | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x2e24c77279b55a343f1ebc8b94df5a69821b338d`; bsc `0x87d5734f9f2cbdb2fc3eb5d242bb7cc08cfb5849` | ⚠️ Unaudited |
| EligibilityDataProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x0956f18a7cf4af80ff003d497f907025eec2d400`; bsc `0xa41ab64143b7d73e4958e1d641e27fb4d6218e5b` | ⚠️ Unaudited |
| EligibilityDataProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x1e41b79deb60a2274ee366ee44e2f8fc8bbd09c3`; bsc `0x25ab120e6ac1ceeb5ed5996ac1da17d5e0e5aaa5` | ⚠️ Unaudited |
| EligibilityDataProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: bsc `0x1e676201a4c646dd00ea468c5fe492b50604f8eb`; bsc `0x20c340f4c230cd230bc8db36631c19feced06b46`; bsc `0x2c7dc9f9501c5ee82ce0c98053fd7920db1cbf72`; bsc `0xc2f54924845c377744ee45e7c47a26e04c17e778`; bsc `0xe54e8b4c4df1dd79fe5bb9da5ab4a9846c888a81` | ⚠️ Unaudited |
| EligibilityDataProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x4d25abefe31d769a9610b7b97a415e8ac7c5687b`; bsc `0x7f7c6fdee9acc2834a0d7325dcee86f67af2cf85` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x2977e10ff38bed7b62a0e64c6446fff11bcab225`; bsc `0x584f74eff0e4e4a6056c62a60c7f728fcdc6fa83`; bsc `0xf3aa34ffdc313be813fdbc9aa216c4e2c2841024` | ⚠️ Unaudited |
| Gamma | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb3cb6d2f8f2fde203a022201c81a96c167607f15` | ⚠️ Unaudited |
| Gammatroller | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x0577c2ee36552a3e0757a1c4d12a170a89652a7a`; bsc `0x368b81fd1a45c4f7d33e52d1161eedb4772ac6cb` | ⚠️ Unaudited |
| Gammatroller | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x06d8a2ad5ee451dbdcb0de2ab54c3641e09aaa95`; bsc `0x62282d22f2819738138017d59805ec9224af28f4` | ⚠️ Unaudited |
| Gammatroller | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x1e0c9d09f9995b95ec4175aaa18b49f49f6165a3`; bsc `0x7153108655fbe0d2d687ffdc0956df142d874289` | ⚠️ Unaudited |
| Gammatroller | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xd282362648d6a06001628977281874e8239975e0`; bsc `0xf54f9e7070a1584532572a6f640f09c606bb9a83` | ⚠️ Unaudited |
| GBNB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: bsc `0x190354707ad8221be30bf5f097fa51c9b1ebdb29`; bsc `0x24664791b015659fcb71ab2c9c0d56996462082f`; bsc `0x34360e3dec115a8eef81f49e82a867baf802f8f8`; bsc `0x6ecf557012f3fff888f69f938e5e71b901000d40`; bsc `0xf610c09ff708c4a6cadc65ac92ae7b33c2e724b3` | ⚠️ Unaudited |
| GErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 7 deployments: bsc `0x0071d7c11023981271c4eda79c77c34acaa8161c`; bsc `0x16551b94095cbeb89d77cfa411a6d9dab56ff241`; bsc `0x5eb52211702fecdd174cbc77e70e95706cc0e1ba`; bsc `0xc4ef6172c3968889b3c8e81aa3966f227e27decd`; bsc `0xe6ec7a520869b61d6ce7e0015849eede3d13c947`; bsc `0xeaa4a8c27064230b6058ce558a64c38659e557ca`; bsc `0xf476dabea14f41a550268c0327baa936684eeae8` | ⚠️ Unaudited |
| GErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x058ce5e19c931888d6493752d6d4b5b303dc0a3b`; bsc `0x9b81d1df15fd9c07007d9a9b8ff75d40a5a80d94` | ⚠️ Unaudited |
| GErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x06d6f7c83f74c913e592a8736a93e89868d4868d`; bsc `0x4c2bddc208b58534eddc1fba7b2828cab70797b5` | ⚠️ Unaudited |
| GErc20Delegate | unknown | project_anchor | own_supporting | 1 | bsc | unit-391028 | 2 deployments: bsc `0x0c6dd143f4b86567d6c21e8ccfd0300f00896442`; bsc `0xfdcebce3fcccda7b5e04e414a18b862624a65a22` | ⚠️ Unaudited |
| GErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x0cf2c6bb87394373f383f0364a132ad06aaaffec`; bsc `0xa15baacdadc70eaf9bfa7fb9989990fd54c26ee2`; bsc `0xfcda2840b1705a39c129c223bb598684a8df4031` | ⚠️ Unaudited |
| GErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x0e4e0dda60b6bf0a1fad261c0e390ad078505fe4`; bsc `0x4bdde0904abb1695775cc79c69dd0d61507232e4` | ⚠️ Unaudited |
| GErc20Delegate | unknown | project_anchor | own_supporting | 1 | bsc | unit-391027 | 2 deployments: bsc `0x15ab6164fd1acfa58b751ac5aa68f136a5a9bcaf`; bsc `0xb7ed4a5af620b52022fb26035c565277035d4fd7` | ⚠️ Unaudited |
| GErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x2a29572b771a8d8057a046fe80c45a77dbb6e804`; bsc `0x3666c9705818a5d9559c328b8d299929c2ac3a40` | ⚠️ Unaudited |
| GErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 7 | bsc | n/a | 8 deployments: bsc `0x2cf16c2f07fdb9c2fc04e55296dd3f9f32c59063`; bsc `0x411ff9b14ef0f964fd10f0d01c94bd9a598abb10`; bsc `0x506e532a19ee94363662a6ded2add23207c8794f`; bsc `0x5898ce70b8fa6b7c469ab1d023deb4cf4ed3ff64`; bsc `0x708205c30b978604eb59c4a6994a12791909ee8f`; bsc `0xb845ec55ef704b1a0f3e82ac25b837a1b861beea`; bsc `0xe4b90be9d9f6127f4e298ddd00e8e090fa9a1c86`; bsc `0xfafed6c27338f071b3412d3095c128a0ea51f3d5` | ⚠️ Unaudited |
| GErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x313288de811be0b72c1e1c66e5e9f7c23d6ebbbc`; bsc `0x820cde110d5f17b9f985fbb80f10d4f7158f130f` | ⚠️ Unaudited |
| GErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x37c39612d17567369e0c0674acb7f96283dfb3e0`; bsc `0x4a80df1c680c4af36fab9a3d9b6466b6c8683749`; bsc `0xd14885cbaba5153e2fdd72c485de6c165dacbfdc` | ⚠️ Unaudited |
| GErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x3bbf3ebfbae93659312c0736dabce7fcdebbcb6c`; bsc `0xf701a48e5c751a213b7c540f84b64b5a6109962e` | ⚠️ Unaudited |
| GErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x3c0ad3462ab234346298761c00c892374d1d8073`; bsc `0x88fd42e447d39c3259b53623f2536bd855e47c48` | ⚠️ Unaudited |
| GErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x3d1df2010a2a76d15c975adb2cef943ff390428d`; bsc `0x7a9cb040e4ddd5271c36a8c8deadd3ba1b5a5949` | ⚠️ Unaudited |
| GErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x45646b30c3bb8c02bcfe10314308a8055e705ebf`; bsc `0x90a0932fcbcc31c3da5ad224a29c8d0dadc8adba` | ⚠️ Unaudited |
| GErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x586c8fffe7a9d891126a143743b5cdac30eb3a0b`; bsc `0xb3a350f549113c60d074587dc40cd25c83d4d3b0` | ⚠️ Unaudited |
| GErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x6022ba7e5a70e1baa98d47a566f3495a26511b25`; bsc `0xc0dad063312e953cf51f9ce36351e312f26ece15` | ⚠️ Unaudited |
| GErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x63dca1e77f27468ee543d89401330491e6568f7c`; bsc `0x66fd9d390de6172691ec0ddf0ac7f231c1f9a434`; bsc `0x928fa017ebf781947102690c9b176996b2e00f22` | ⚠️ Unaudited |
| GErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x7c8300867c975f0c248214089fd29f4fb4a1cacd`; bsc `0xcf868739c89034f3d4060a361d1faa6542017c28` | ⚠️ Unaudited |
| GErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x7de0d93d8964a3c9429cc9dacfffacb801f5dafb`; bsc `0x854a534cefaf8fd20a70c9dc976c4f65324d7b42` | ⚠️ Unaudited |
| GErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x87942c705b26da76ce31f32bde1a80f0c5ff59ab`; bsc `0xcfa5b884689dc09e4503e84f7877d3a583fcceef` | ⚠️ Unaudited |
| GErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x8b2f098411ce4b32c9d2110fef257cf01d006ba5`; bsc `0xa3909313c81a7b0cdf2349d706fbb8e36516db1c` | ⚠️ Unaudited |
| GErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x939e98eec2aa37bab8c5d94bc90c6e00911d27b4`; bsc `0xbb22495ae7c949217e85202bb84ea6cf55506559` | ⚠️ Unaudited |
| GErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x9990893e985c118bfa45a079263a09d2dcb08948`; bsc `0xa652e6c8f3e257ab2ae366d61a3bf75f55e5eb2e` | ⚠️ Unaudited |
| GErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x9adf5ddd440dbf327b128be97dd020676c129bef`; bsc `0xeb23d803ec8d598662441807456620cf96eb0470` | ⚠️ Unaudited |
| GErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x9e674ee62aae7b08e29961490a6c45fbe8be13a2`; bsc `0xb3a4ce0654524dcf4b5165cee280ebe69a6e8133` | ⚠️ Unaudited |
| GErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xa5ae8459e710f95ca0c93d73f63a66d9996f1ace`; bsc `0xb97b73f7bf3ef1c48388c8bc1a5b5d3b9bdb2d23` | ⚠️ Unaudited |
| GErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xaf7602fb6a83f04886032467b487101b80ebccc0`; bsc `0xd6eec97d295504baaea0f43995682e96c9dac25c` | ⚠️ Unaudited |
| JumpRateModelV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x471c4240a0d9cbf33136457a5287cf9d227f1bd5`; bsc `0x8f1a40f26e717ebb58288f4c8242aa636ad93604`; bsc `0xdb6f9e7c0972b764e50d9cbe4ba453345c8566f5`; bsc `0xeb057631a6a7ef28b1ffb8a76ac5019bed8c0f5c` | ⚠️ Unaudited |
| Locked_Strategy_GAMMA | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: bsc `0x03574cb638951ed6f4ee389cac4c58c09956c0e5`; bsc `0x07923b2a8d65ab5a64e4240a5de48fd403f37c43`; bsc `0x328237f1047108be3e3faba93d610d333029a124`; bsc `0x46ec3987998658a8917fca2fdf6f5dc412cfdef2`; bsc `0x98fd55b6c6ab2c8b90a49e1adc98797c49f16e72` | ⚠️ Unaudited |
| Locked_Strategy_GAMMA | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x088c9e8cc6a382d0ca6f3db01bd28dae0dee9909`; bsc `0x1b71bd7b1644fc4b2ad1e1fb5c29308e90d2fc52`; bsc `0x9fc9d790fce9c920e02cbd06787b365714ee4fa4` | ⚠️ Unaudited |
| Locked_Strategy_GAMMA | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x09da19bb6e50e30478cc3a97750a2fc2b0285e47`; bsc `0xda93ad27fc336e2355d65cc758e1e7b5436b12d2` | ⚠️ Unaudited |
| Locked_Strategy_GAMMA | unknown | non_address_book | non_address_book_inventory (excluded) | 4 | bsc | n/a | 5 deployments: bsc `0x0fef4584df237080a0de60eec12631f0a184ad3b`; bsc `0x5c4c2a8afb539974d747b8e9d95f1133c8639ffd`; bsc `0x710679f0e2d82838b01bf8861338021b3a42ecb1`; bsc `0xe18da39f264bb9ed93d8a283b9f664d162b98e06`; bsc `0xff96531b0991c1ae0ec5e3ec38126da12288e93f` | ⚠️ Unaudited |
| Locked_Strategy_GAMMA | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | bsc | n/a | 4 deployments: bsc `0x2c7ea70259dd5153b7f8bab177126fce850bfb1d`; bsc `0x6867fa79098f505aa0dfbd8370d04e0ab2234f92`; bsc `0x966dec320a2d5452015d8762ee41519c8e598fa7`; bsc `0xadb34c8d63848eaf5760d8d1de776bbae3d044a8` | ⚠️ Unaudited |
| Locked_Strategy_GAMMA | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x2c9f2b54d3bf969093c683619aa46c604bf96047`; bsc `0x893fcf6dee11bdd3cf1f00cf0f00edeabb05ce9a`; bsc `0xbf67a565a4ce1958233b061fc964ca09f166c0fa` | ⚠️ Unaudited |
| Locked_Strategy_GAMMA | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x30a2a380b82df1773680059f3ac85964d55f1527`; bsc `0x536af913e51d6e4b195d284eb86a005d05a4b1af` | ⚠️ Unaudited |
| Locked_Strategy_GAMMA | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | bsc | n/a | 4 deployments: bsc `0x7c3a307d444c496f15526aef766534ca51d0ed9a`; bsc `0x888d5d31d842d27f95866d167d746bfbde8fe527`; bsc `0xe49425a6b8109fd80c2764eda25e445f9db131f6`; bsc `0xf6a5c2aa3a5d825ab5bdf3c276037f61d553275d` | ⚠️ Unaudited |
| Locked_Strategy_Penalty_GAMMA | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x28c55ae3f24c6f7e45d63714421fd1c88e77c363`; bsc `0xdadd914f81fc8a1efa4da755d9ebdb1aa5646eef` | ⚠️ Unaudited |
| Locked_Strategy_Penalty_GAMMA | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 6 deployments: bsc `0x39d5c975977ac6ada063ead35061372c603b5b71`; bsc `0x5b80c203a4d01eec7c61afba2723b7bb8221dd1f`; bsc `0x60172b8fca3531e588928123d4f573d7477747e9`; bsc `0x9d73e1f517e7b20780ead993a11c1807aece611c`; bsc `0xe5b3925517ef7a2c1c2d48c1c85947eea5423794`; bsc `0xe988c569989132122b873b9607e7a678e63b7843` | ⚠️ Unaudited |
| Locked_Strategy_Penalty_GAMMA | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x5d39c7b3cb80339edf9fee88c918abcfd5b24681`; bsc `0xca1d63abb932a68a26bbe2bf59344bc8cede23dd` | ⚠️ Unaudited |
| Locked_Strategy_Penalty_GAMMA | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x7fdc0fb2c7ed9246d12c69df65c9f7cf35f969a8`; bsc `0x9d5e7fc7310c2edc5f4a66a154d5e80200fe12ee` | ⚠️ Unaudited |
| PlanetDiscountDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x09535e43da14ffc54bf85ed6de4b65028ccf4b55`; bsc `0x52a62b3b6dd43e9c02ec9ad8f687acb165345444`; bsc `0xb46bf9e394a28cbbe29ccf09e895fafdf4051c0f` | ⚠️ Unaudited |
| PlanetDiscountDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x2238accfe94bffa27b67bb446700270235cafd67`; bsc `0x79333d2cce7782451417a85c9c4beae370ef1439` | ⚠️ Unaudited |
| PlanetDiscountDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x264a91684fc760d6d4a45c20e7b497eeb5498f3b`; bsc `0x8c7e39592d07ccc86d7978c69dcc01f31eac8265` | ⚠️ Unaudited |
| PlanetDiscountDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x3c47871fcd44c9cf93be6d542e8c7a79b05e37f3`; bsc `0x513062dea8a699cc482ffbc717a459be34059ba1` | ⚠️ Unaudited |
| PlanetFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x0116b4203dbe73a255627134f24072f3918c7039`; bsc `0x405960aeaad7ec8b419dedb511dfe9d112dfc22d` | ⚠️ Unaudited |
| PlanetFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 29 deployments: bsc `0x076e742be28679791b084866446e35f8507b8edc`; bsc `0x221a5ed97027eebca34256156332ab2cb65b9202`; bsc `0x36f34469ed391bc95328a52e41b00dc4bafa64ee`; bsc `0x449a6b9b00e8558b36b3037f66b90b55dca118ce`; bsc `0x4c24bcc5a81b8572da6727bbb06a77e7dc8dc6ca`; bsc `0x4f6bd1b74b901c16881c8aa30cfde34deb5f0b74`; bsc `0x5b9d16c761b826c4faebe670af72ef3d77a02612`; bsc `0x6aa76c650b84aac83122428af044f6b9423ae877`; bsc `0x7399c041f5f7e624cae52e8bb57a2cb88cb9f163`; bsc `0x73c6b886c43a807029751ac66b3ec15dec6da164`; bsc `0x74f3c55142ab110d37da4d212a03474965e4696d`; bsc `0x78e1c0963eb1202b949ffdb60dcc3ce823cca458`; bsc `0x7bf079b0a9c180c97852fe6fddee6ad0b036588e`; bsc `0x7c18c2007f71717f480ceb295ddf3883bac0bb2c`; bsc `0x84a246d72a2dbc0b53c286a49c3a848bfaa7b091`; bsc `0x9e51a56876f1eac180e7b3bb686fbbbf961ce84d`; bsc `0xa014adda2c1a5e9afe557b96389048cfad34f712`; bsc `0xa08a8b32b89577d4d8ab348cc21307b1c19674b2`; bsc `0xa1e6ed2b746c3a6cba6825ee33ed0e5b5e31adad`; bsc `0xa2ee3a759a19e3a97cd1013d8d8f1fe733b1ab18`; bsc `0xab20ddcc9b45b12c44cd1f14284941e6cd9ce0f1`; bsc `0xad4169fda423ccd68eb36c80cdcd3a6469db8dbc`; bsc `0xbe45adb69369cf441a10c8fe7b610116f5279abc`; bsc `0xbe88fdc441f5297bc7ced0298b2773a62031a7ca`; bsc `0xc0a1e48a674b749f2eae1c02c3409c3e8a4de150`; bsc `0xc757ea2929bfd894134ace80e7d53d2612d7a75f`; bsc `0xd6358d9e5fe2de467325ff5d58f8e816c8e66171`; bsc `0xf631de55b09ae8676e094cce539070a0bc5efd83`; bsc `0xf9800aefb556e24b3ab6117649663317b984d80c` | ⚠️ Unaudited |
| PlanetFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x302ab4534693598b649b79c56a7dad595094681b`; bsc `0xdf0a0314e1e8e59dce9dc0a7fdb2b5b83cdd6c4d` | ⚠️ Unaudited |
| PlanetFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x3336cd647e711f2db03901c24092e4117038d303`; bsc `0xf5ed1cc15c2a4c0ffa9180ffdd6cd96e96bbd1b7` | ⚠️ Unaudited |
| PlanetFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xf37f4aad86ddd9f361cd37a1575bc3e2fbba4324`; bsc `0xf7f60ef361c6ca8f23a209dbbc4db9f291d9f1de` | ⚠️ Unaudited |
| PlanetFinance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x0ac58fd25f334975b1b61732cf79564b6200a933`; bsc `0xb87f7016585510505478d1d160bdf76c1f41b53d` | ⚠️ Unaudited |
| PlanetLiquidStakingAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x4d8c3cff20f9154b6e33222ffcf15d601cc482d0`; bsc `0x6e8b65c34dee4d4336b5e9e0c919c42724abf7af` | ⚠️ Unaudited |
| PlanetLiquidStakingAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x8ece8a60e890a29aa0967a7f08dcae843b5c9c1a`; bsc `0xc5760f4d631dc7fcaf280bb2961369f9498e8177` | ⚠️ Unaudited |
| PlanetMigrateV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x17c1c4888c50c1247011dae2e0d4f0bbf93e5d0c`; bsc `0x2694f8c66b3b6a972da67569e28ac4558f783356`; bsc `0x9b3145b0bdba967862ef9c25e268a83bebcbd5b5`; bsc `0xabf89620ae35e18e0bff26c3c5c1aa21d5c16e2b` | ⚠️ Unaudited |
| PlanetPair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7cde1a8ee90e7b03fbd554dfea9c341326719f0f` | ⚠️ Unaudited |
| PlanetRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x79fa9625ac5b26d320d8fdf427b8133d9eff455f`; bsc `0xe112668191070467bdd0952ccbc650a2f467b467` | ⚠️ Unaudited |
| PlanetZapOneInch | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x108daeb2036addd7fd3676354915c973966893a4`; bsc `0x12f8839d91bbeff0ff75401a01c98734f70d1591` | ⚠️ Unaudited |
| pToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 8 deployments: bsc `0x170c6948fcdbae4e59b2b617a95e9c5e7d697551`; bsc `0x4aa6565d34701b697fbdd5bd862f712b0497cc72`; bsc `0x6ff38289254a2ba6d7098797a2b0169b6bfaa8aa`; bsc `0x733fa5286cdcb7debb491551fa5862c4a78c605a`; bsc `0x7941e293693d729cb1b05cef70c6ad0c33864925`; bsc `0x95836a960b2e02cddfe0644e7285ab1524d312a0`; bsc `0xb68d3b426a46bf99b4e6a0287a4ff10657481186`; bsc `0xe8ed6347b4f196d5f5eeb1b8fd54a93168a09385` | ⚠️ Unaudited |
| Reservoir | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: bsc `0x0faeab379586404a2a621e25dda195c99dd77ff4`; bsc `0x50b006f39dd1350bc834f501ec3d8a35f17b3795`; bsc `0x61c53a217f224152c51014ffa45f7093906e9f8a`; bsc `0x7cf0e175908fc6d7f51ce793271d5c0bd674660f`; bsc `0xc8f4769b40ff4c76f219de2726d2455cf4ad775b` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x084e9b6928888a1d372b87e3d7bb3f90700df137`; bsc `0xc19f95dd867d7cbacd8922648ef13c971c8de4ea` | ⚠️ Unaudited |
| Tokenomics_Automation | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x443906f8982a013548217e81ed1e8a8bb2dab095`; bsc `0xf3ae30000cb8541e0643ec3f7e1030085b094ed4` | ⚠️ Unaudited |
| Tokenomics_Automation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0xb2549aa68baa6a7b0634465fd42d6f405336126a`; bsc `0xe7144db9305a957e671d34b912100da6bbb317b7`; bsc `0xffcee446be63bdd33fdde20848ce30a0c692edf8` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (8)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0fb8d996899289e378d0061f366c9cbccb7d14ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x89b23438ce87f97e8ebf023ade4226b441b52f39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8cd21d591d053d6bdeefbc6562fa5413e2a84050` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9852839aa09765c686365b94dc99efed57cebe03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa58aae79310620dec29f46f7497f005a9f7142d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc4929ed2f7973703cc5c7fa273d0b15c95acb810` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdb68c822b5f9d89109a1841e2051fce76567b8ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe4a7eeb7279736652ec65124df05ccc46ab7e51b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Planet_Finance_Smart_Contract_Security_Audit_Halborn_v1_1.pdf](https://github.com/HalbornSecurity/PublicReports/blob/master/Solidity%20Smart%20Contract%20Audits/Planet_Finance_Smart_Contract_Security_Audit_Halborn_v1_1.pdf) | Halborn | Audit | 2021-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2957] Planet_Finance_Smart_Contract_Security_Audit_Halborn_v1_1.pdf — no match: Scope section explicitly lists 8 smart contracts. Audit date from document revision history: final version dated 06/22/2021.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Planet_Finance_Smart_Contract_Security_Audit_Halborn_v1_1.pdf | AquaFarm | unmatched — not counted | — | listed in scope section | no |
| Planet_Finance_Smart_Contract_Security_Audit_Halborn_v1_1.pdf | AquaStrategy_4BELT | unmatched — not counted | — | listed in scope section | no |
| Planet_Finance_Smart_Contract_Security_Audit_Halborn_v1_1.pdf | AquaStrategy_AQUA | unmatched — not counted | — | listed in scope section | no |
| Planet_Finance_Smart_Contract_Security_Audit_Halborn_v1_1.pdf | AquaStrategy_PCS | unmatched — not counted | — | listed in scope section | no |
| Planet_Finance_Smart_Contract_Security_Audit_Halborn_v1_1.pdf | AquaToken | unmatched — not counted | — | listed in scope section | no |
| Planet_Finance_Smart_Contract_Security_Audit_Halborn_v1_1.pdf | PlanetFactory | unmatched — not counted | — | listed in scope section | no |
| Planet_Finance_Smart_Contract_Security_Audit_Halborn_v1_1.pdf | PlanetRouter | unmatched — not counted | — | listed in scope section | no |
| Planet_Finance_Smart_Contract_Security_Audit_Halborn_v1_1.pdf | TimelockController | unmatched — not counted | — | listed in scope section | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x0c6dd143f4b86567d6c21e8ccfd0300f00896442` | GErc20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x15ab6164fd1acfa58b751ac5aa68f136a5a9bcaf` | GErc20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 97 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 8 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 8 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [2957] Planet_Finance_Smart_Contract_Security_Audit_Halborn_v1_1.pdf

Fork inheritance lineage and inherited audits are included when available.
