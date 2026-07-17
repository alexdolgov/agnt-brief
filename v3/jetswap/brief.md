# Agentic Audit Brief: JetSwap

## Export Authority

- Production state: **published scope**
- Raw selected rows: 4 across 2 audit(s)
- Eligible audit results: 2 (2 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: JetSwap (`jetswap`)
- Website: [https://jetswap.finance/](https://jetswap.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc, fantom, polygon
- Contract surface: 63 unique implementations (273 raw deployments)
- Coverage basis: 3/8 confirmed own live verified implementations (37.5%); conservative 37.5% with 0 needs-review implementation(s)
- DeFi Llama TVL: $309,127.67
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for JetSwap. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 9 contract row(s) across bsc, polygon. Structural roles: 8 core, 1 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 9
- Structural roles: core (8), supporting (1)
- Contract kinds: contract (9)
- Detected standards: ownable (4), erc20 (3), erc20permit (1)
- Frameworks: openzeppelin (8)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 9 contracts are derived from known codebases. 9 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- Factory (`0x668ad0ed2622c62e24f0d5ab6b6ac1b9d2cd4ac7`, chain 137)
- JetswapFactory (`0x0eb58e5c8aa63314ff5547289185cc4583dfcbd5`, chain 56)
- JetswapRouter (`0xbe65b8f75b9f20f4c522e0067a3887fada714800`, chain 56)
- MasterChef (`0x63d6ec1cdef04464287e2af710ffef9780b6f9f5`, chain 56)
- MasterChef (`0x4e22399070ad5ad7f7beb7d3a7b543e8ecbf1d85`, chain 137)
- Multicall (`0xf6488205957f0b4497053d6422f49e27944ee3dd`, chain 137)
- pWINGS (`0x845e76a8691423fbc4ecb8dd77556cb61c09ee25`, chain 137)
- Router (`0x5c6ec38fb0e2609672bdf628b1fd605a523e5923`, chain 137)
- WingsToken (`0x0487b824c8261462f88940f97053e65bdb498446`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 9; live-surface rows included: 9 (9 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 9/11 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 3/8 (37.5%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 8 own, 3 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 52 discovered implementations shown in the inventory but excluded from coverage (3 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 9 of 63 unique; 54 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 3/55
- Verified + Unaudited implementations: 52
- Verified by bytecode match: 0
- Unverified implementations: 8
- Unique implementations: 63
- Raw deployments: 273
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 3 | 5.5% | 2021-04 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| JetswapFactory | unknown | project_anchor | own_supporting | 0 | bsc | unit-387738 | `0x0eb58e5c8aa63314ff5547289185cc4583dfcbd5` | ✅ Audited |
| JetswapRouter | adapter | project_anchor | own_supporting | 0 | bsc | unit-387741 | `0xbe65b8f75b9f20f4c522e0067a3887fada714800` | ✅ Audited |
| Multicall | unknown | project_anchor | own_supporting | 0 | polygon | unit-387736 | `0xf6488205957f0b4497053d6422f49e27944ee3dd` | ✅ Audited |

### ⚠️ Verified + Unaudited (52)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BEP20Token | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfb991a9bcbafc9931eb78ca6816e388f90d67ec7` | ⚠️ Unaudited |
| D100Presale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: bsc `0x2a950cafa914d898cbf7a7daa71eebc73e7ec051`; bsc `0x512c99ffd331ddaa9a7886b3fb7fd51a0d5ba005`; bsc `0x6e388722e72bdda97abc41c8d6a4f8016da726a0`; bsc `0xbf04f7fde6e98ed0edb3014753d6c2517bc26e3c`; bsc `0xe28a6de3135b2c29f27ed71a783c7f7476e79739` | ⚠️ Unaudited |
| Factory | unknown | project_anchor | own_supporting | 0 | polygon | unit-387734 | `0x668ad0ed2622c62e24f0d5ab6b6ac1b9d2cd4ac7` | ⚠️ Unaudited |
| FortressIJO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2fc22a43bb759cfa07fed29cf4b40d2508e777d2` | ⚠️ Unaudited |
| FTSTimeLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x94222bd8c1fc5ca4014fec75550aaced124783e8` | ⚠️ Unaudited |
| GFCEPresale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcf2ef295115068bb4e4a37451210a97a02718874` | ⚠️ Unaudited |
| GFORCE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x94babbe728d9411612ee41b20241a6fa251b26ce` | ⚠️ Unaudited |
| GFORCEv2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5f136383e230f972739fae2e81e7e774afe64c66` | ⚠️ Unaudited |
| HarvestMoonTicket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9c0287709e3c60bfccefdfbfccefdad57aef5b8d` | ⚠️ Unaudited |
| IJO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 10 deployments: bsc `0x0196f8e442006a35a89734de83fc04c0d6675ae2`; bsc `0x2e93e5b4c8b4f0dae62b1769a773168416993995`; bsc `0x32d7e319bdafe2ae7d654d2157f43aa457ad19bb`; bsc `0x444e4d45bf63cf9c0c99fc0e702e1815d12c2c9a`; bsc `0x51457145187e3b6dedcd10808f1a49efc08b31dc`; bsc `0x664a48bd82cc1912c502b4418305d8216139d168`; bsc `0x781d39bbb45f17726e6bd957e7e716f0871252e3`; bsc `0xc8be300cc14ce7b611d2c7d72bcbf2e530a063f6`; bsc `0xd197f91e2fc06456a0614dd2162c039920fcc776`; bsc `0xedc54a3f2effba3b446ed7d08fcedd6a8e0540a3` | ⚠️ Unaudited |
| JetBar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf6488205957f0b4497053d6422f49e27944ee3dd` | ⚠️ Unaudited |
| JetfuelAutoVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 7 deployments: bsc `0x2d211236ccad202bc5548d0243d0e7819ed995dd`; bsc `0x76b7dc95ad02a03304ab91f5539a14457fcc9035`; bsc `0x98c2d69af130d66dd59602c84c6fe40d11638ac4`; bsc `0xc344a33ac93023a18d75bdce967f9d46f50a7f8a`; bsc `0xdbfc4ce183eda7675882df62fa833583bba67656`; bsc `0xec4b9185e61101ceb91fa70e99419d4beb57130c`; bsc `0xf4a7c7be33cf17a35d59e91414a826edb653af8c` | ⚠️ Unaudited |
| JetfuelAutoVaultv2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0xa6b4c20a45df1b47d15c66af601f5aa599bdbb60`; bsc `0xa93a93f76bc96b8dfa43e93e0b3528e7f59ff690` | ⚠️ Unaudited |
| JetfuelBSCEXVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 6 deployments: bsc `0x0a8ab9f4c04b62ba48d513b39f0ae0c3e6997d8b`; bsc `0x151395a29fc24d6e114aa13f3357e931f39428c8`; bsc `0x2b66426a019e43e9e025c62278076a38c6cb33c3`; bsc `0x3468348d60429b5a735940a84dc5762f0c5f4b08`; bsc `0xa863019030f9020009bbb331ee5e8af0882e5cf4`; bsc `0xec57bf1ed0a2297a3e3911bf6fa389aa2c112a38` | ⚠️ Unaudited |
| JetfuelCakeBestVaultv2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7c6d9eef78b07fc13d6742b6473a4ffb1dbd4afa` | ⚠️ Unaudited |
| JetfuelFortressVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x647db6dce3c36ac1a3ba48f0f6b767a6c73e22d2`; bsc `0xeaa8234d9bf8dfc6c8c24d3d24be3cad256450ef` | ⚠️ Unaudited |
| JetfuelFortressVaultBNB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x15e84d6ed8997590e02b25d3d3ceee9686753306` | ⚠️ Unaudited |
| JetfuelVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 76 deployments: bsc `0x032bb900363be7a2fa566694a7f065f13820ecda`; bsc `0x0350efc06dc9ab70f49da99ee46274031dd6c122`; bsc `0x04659c73819887446eb27d9c01732c9e3a5647c9`; bsc `0x053391821dd9633e5aa64ece38aa471df77e9426`; bsc `0x07134cef77f80ed45bc6c3da0f658639cef7e4ac`; bsc `0x0f65639de6a3285191b8e308fcc0dec734ad75fd`; bsc `0x184ba48939c49f54b0aa31f76177eba40130b7ba`; bsc `0x1ac0193a6a4691b832ce3b299cad934988af9c32`; bsc `0x1ae8f478571e7bc7cac067a8fcd298749be722ae`; bsc `0x1d149c549a88035334b9829fed0172641e2a50ec`; bsc `0x1d6543b57fe973a09ceebf6e6872de0aa6c04377`; bsc `0x1e3c2717cdce6489b6c96b64de25aff972d3f72c`; bsc `0x1ffc0e4504788f11e6f012c24ca63507b0a9d2a8`; bsc `0x229e084e2c88a09aa04eedbf93c3d728d06dae58`; bsc `0x229eedaca481a673cd7f318dffd35489fdb3c888`; bsc `0x24ebdb0e354c36f50979ba68c13eca9f59151ac4`; bsc `0x290fb3bd38d636dd26a63c972a2fc43aa58ec0d6`; bsc `0x29c12b9ce7df205c944725520718d10aafa78433`; bsc `0x2cb360a4d2d080cec904c80e88bf87125cc2a970`; bsc `0x30c7fb75ffc22a2dc1b0ecbe2bdf69c7b6b619c2`; bsc `0x369fe670d19f549f077a71534ca6bd7d49ab0d09`; bsc `0x3a795a0c7ba98d965982c6150977258ef9197225`; bsc `0x3aa4bc2820c238e843a7397fa7d5b3c944facd93`; bsc `0x3e703bde370fae75c08b90815e342c7aa578208c`; bsc `0x4149531aed145a15ccc361c469b0c79fe26b4f1c`; bsc `0x4225281fdaffab7d943dffbf7ca29ebb34539d3b`; bsc `0x4529b618bc77a6291f08744b9f095bd9408cddfd`; bsc `0x458cbacd6bafe37cf5079915fd7ff44980b2979a`; bsc `0x47d8d83f7fb66855be4fe3bc3517f0ed29b55d70`; bsc `0x47f0bf62b067177d80a8e775e811d7762ec5f2e6`; bsc `0x4ad9a2aba8155a3c4d9148d8db3212926f901afa`; bsc `0x4e52ae85329474ec9e2469bdd1d0491ea2c41254`; bsc `0x4e6aabb2850f948f9b2e4b2634f6747bb8ef8ec9`; bsc `0x4f86643416395db376569fa4f09aee29ea1d4ac9`; bsc `0x5725356da7f05322148f19fd10f89e846048d1f3`; bsc `0x6ba6c5aa9b3b24bb786e31adb4ae36397678a64b`; bsc `0x6c9147392dce94b22496634248cc4d74b41f475d`; bsc `0x741587e173b4a192f247e4b0756e84ba6bca71d4`; bsc `0x7586788d5d4221a6554eff01203cbb4f4fa4e730`; bsc `0x7603b766c9398624dc714cd3326618019963ecab`; bsc `0x7c33977171739fbfdb6571512baf257e6f4771f4`; bsc `0x804ef864d199e28c1f48d179faeb53683b671875`; bsc `0x88c30c134a980e2314edbc622a2418a2dfa69d71`; bsc `0x890ce0e68515d5e1e5eb76300a5f62caf891731b`; bsc `0x94c25380950c606a30d6390ce1755d7d9670b63a`; bsc `0x971340ac93bae18351b59ead692430e717085e0a`; bsc `0x980edec0a2a62e3d396a1a60ee8101f5116de316`; bsc `0x9933cfa1a85039f32c61a5d4993b55268b2584d4`; bsc `0x99cc3060487fa635cfd9bcff69417d225b3f0104`; bsc `0xa10983a758dbd8998215db48b44a0ada77c5f7db`; bsc `0xa6d55074b038a082748c88d9c3e56821c44474ff`; bsc `0xa8391bcec6e011596eb27add45a2e58f47cf40fb`; bsc `0xaef5365b8868a5766e42df5c095c61dc6013c946`; bsc `0xaf15987c889296f6f597affd382f695e88e83666`; bsc `0xb09bf4bbf08425d9c46ed82df3c45a14c316ddb0`; bsc `0xb787b2c4c66e16c0d14adde6856f2788533d140d`; bsc `0xbf964f5518ffdf499047947ae3fdb209db4e42cc`; bsc `0xc1eed5d6cf082fa9f370839330d96e9d0db03340`; bsc `0xc3d6d27ff4f607c803fd31cc31bbdcdd116773d9`; bsc `0xc4f157f1f0cadf70b9687d5eaf90deedea901b31`; bsc `0xc573b7e6e7d31ab2a9a1e64d0a7969495b2169ff`; bsc `0xd13bbda5061c99f770b675e2e0b1380b332fe227`; bsc `0xd1c249dc749e6458813da36a3de0bb4a75cd3104`; bsc `0xd31c245ab7aa92b16bfd061c148a2d10b49b53ca`; bsc `0xd4d4c2e8d4297d8a28693bb2f3a89989e524d3a1`; bsc `0xdbb07d6252795de1e9812ef0a746a7d1bf1c7e26`; bsc `0xe08677a821259171dfabc5ccbbeb5bd94b03ae8a`; bsc `0xe10b18b4b4f09bb6b2f2ad23297a8d0f79157470`; bsc `0xe2859c4e50bbd88bdeb4988869bfde3d78fe14fb`; bsc `0xe4647bb421e81491529fe204eb7f442d025a6e7d`; bsc `0xe4a3ede011d13d1b24c0670952f9145cc56bfae8`; bsc `0xe79c3e42ade3005b1791a41af386ebe06a98359b`; bsc `0xed9f4f3123d0cf74bb243ea5f4f1667b2a88665d`; bsc `0xf4b99820fb97e67003973be5461cae7a9f592158`; bsc `0xf98fff7bade336f84bec835a4a1f2a9b7fe7446b`; bsc `0xfc8c3aecf046eb1e7423ac5b94ecff1776ab7483` | ⚠️ Unaudited |
| JetfuelVaultDittoBoost | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x3d6d415be40159f207540f95e398f29a7173dc20`; bsc `0x3de32fe1dc3fda78a9bcc14fe10f3924b6891122`; bsc `0xbd686a8cdf1fdc223ff89c78ba3f5f1098b991ba` | ⚠️ Unaudited |
| JetfuelVaultV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x227f9a94815d3a30ef8ffb7302a1793d05cd2113`; bsc `0xdca31a4d1ca28080b0b6a02dead39aaa602caf8c` | ⚠️ Unaudited |
| JetfuelVenusVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x937f23ef476b6747b37f2125cbb257fc42e10f98` | ⚠️ Unaudited |
| JetfuelVenusVaultBNB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc15bb35a1752a40be9d5090e784a896074e1cd89` | ⚠️ Unaudited |
| JetfuelVenusVaultv2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x050015dedfd2b063a706c98bfa82b3c98b1da25f`; bsc `0xedd78f7e9f423cb75b0afc4c9d681a8cd92b154c`; bsc `0xf2178d0768b92164c4588a2ba12f64238eaecead` | ⚠️ Unaudited |
| JetswapBar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd079475f820bb3a01932083382aed733d3d61b47` | ⚠️ Unaudited |
| JetswapVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 11 deployments: bsc `0x06fd5cab123990a0dd0ba2130bfa76da26c91b43`; bsc `0x3685ce07f83807c9e4fc3a604129a039fbebe6de`; bsc `0x465a5e8501bf38898a8aead87f0d864adcc826a4`; bsc `0x467d28dfcd3207034a2c03cc9bf4de0a1bd7e11d`; bsc `0x755aac39603599d2a10c407c3d06dee96999ae90`; bsc `0x7f2e9e374e97f171c9ed3e0910111b15b9045644`; bsc `0xae11408c036fced4c03cd46915daeb573357c63b`; bsc `0xd0b1dc1b39a730d634902c01c61316a97afa31b5`; bsc `0xdd59204d413f2cd5477287a4a4a4ae572240bdf6`; bsc `0xed2097330741ac6aa574c0eda26a7ad41c976fb0`; bsc `0xf2f11389ce9cf23c37b03131df914772ba17e664` | ⚠️ Unaudited |
| MasterChef | unknown | project_anchor | own_supporting | 0 | bsc | unit-387739 | `0x63d6ec1cdef04464287e2af710ffef9780b6f9f5` | ⚠️ Unaudited |
| MasterChef | unknown | project_anchor | own_supporting | 0 | polygon | unit-387732 | `0x4e22399070ad5ad7f7beb7d3a7b543e8ecbf1d85` | ⚠️ Unaudited |
| pWINGS | unknown | project_anchor | own_supporting | 0 | polygon | unit-387735 | `0x845e76a8691423fbc4ecb8dd77556cb61c09ee25` | ⚠️ Unaudited |
| RewardPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 13 deployments: bsc `0x41aff2c6bdf200d205de307f597db738c0bf2922`; bsc `0x680403f3e305e80ee996ae899fafec4ac48a6d52`; bsc `0x7421fd69261844536e0814c3b5cb44c560035908`; bsc `0x760ab54119a06504e5ac12f5fd80bd8318b06db2`; bsc `0x761a6031e6c0c683116a8efd28b86a6f3122a39e`; bsc `0x845e76a8691423fbc4ecb8dd77556cb61c09ee25`; bsc `0x8fee5a066ac1c0b662eaec26fc7b62878410d772`; bsc `0x99c65a010c8b4e0a3d7071dd21f9d37b53830ad8`; bsc `0xa45e5a2258c8124ce11165eebf85991d47dc1703`; bsc `0xc46ccf3fbc5a28f1ac4a37f0522d49275b698b40`; bsc `0xc528fcbf46457cf08e6bd34346e79e9385fef902`; bsc `0xd8d9ee1ef6578becc9ce5be30bd2a983454bcd2c`; bsc `0xeaf7f40ee3d2b0a1ae88781a2d5cd3dfbb159f97` | ⚠️ Unaudited |
| Router | unknown | project_anchor | own_supporting | 0 | polygon | unit-387733 | `0x5c6ec38fb0e2609672bdf628b1fd605a523e5923` | ⚠️ Unaudited |
| SmartChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 28 deployments: bsc `0x013bc4281cca84c3c2fac7203c4d2859099dce60`; bsc `0x071b5b7029411483bc9b8e1e873dd1623b614208`; bsc `0x11bbb1277a32d58f73a68380aaea70c3371dbe0a`; bsc `0x1a567e5d28584fe20d41a8ad2d7271afbe014b4a`; bsc `0x2240cbebd9e04ff31c516a623d3aa802096126d9`; bsc `0x37c621f117d02ac6f873b5089a6cbbb5927b797f`; bsc `0x41c8f17e7ff23ea16b253612f33018184172ac67`; bsc `0x44d0e3db6924ae650c09927d823a694a7ef6a92b`; bsc `0x4acfae59193976ee1b02020730c9b0c47360c79c`; bsc `0x5a7e0fea9e20e2298ec69444718f637c41a1a352`; bsc `0x6116b3f0c6608dda66e5f39fb09176b3ebda7741`; bsc `0x66ab4010407712fcadb95e9003d60d72a645b93d`; bsc `0x76fe142b05ff6afbc10b56c7fd8aec3030a7d973`; bsc `0x7c31e43f2431c1c94b69a8719540a6bb2da87bb7`; bsc `0x8022376125c31d4d205608736c924154dbbbb30f`; bsc `0x8637712c73bb65737767c8d17c151d3efac892bd`; bsc `0x8825a44182b94641f9299c32ef44d21235563ef7`; bsc `0x8f68cd2560a90712013d00b453e579772810b3ed`; bsc `0x9766af3ca0897b465bfba700330c5e1e527bfecd`; bsc `0x98768a65174fbf9d19a138529e0779381b5ec566`; bsc `0x9c760c38646681be20d7f45b8a9d10e0ccc96224`; bsc `0x9e24f0d899795b94c9b6ce8134f8c3e8f79ed37f`; bsc `0xab32f72c550901031557cfa3d74224111a774254`; bsc `0xb976c32dad2daf02fa91cb219f93ae62cea3477a`; bsc `0xcb225352d8d3b0c70e805c4e89aa1e4414ca87d3`; bsc `0xcce0248e307edb891ea9f0ee5cdef7c12cc76c61`; bsc `0xcd9921e21c1796255b7d6f055eed832f7c1dc01c`; bsc `0xe7b83b7c91520a5c11b61b5ee68173e30ca54354` | ⚠️ Unaudited |
| SmartChefFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9c202a3bf2ed24c6667f607d62b1fabbfcd8ae1e` | ⚠️ Unaudited |
| StrategyApe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x3c975a1f55d897cf7541693e732d6d474bedf9b1`; bsc `0x600b2f2a9b85d8c1b1b46a769a9e3022a9fe6b06`; bsc `0x7b9ec0d578230f252f332b8b2c632f4467f7c2b8`; bsc `0x92958982aca653d9ab19b65295e09b26a569509e` | ⚠️ Unaudited |
| StrategyApeLP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0xbfb7c6dd4037285a387d021fdad9383a71871d96`; bsc `0xd43ccd89278d9f5a1ab38117f13618f63344b705`; bsc `0xd76eaf7ea4dd631ebf3e4269086df9d0b024f5a0` | ⚠️ Unaudited |
| StrategyAutoLP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 6 deployments: bsc `0x408951aa05906cda702e52139a027d29d247fdb7`; bsc `0x4477a12e4b16e14c17dca58fc2950b4715dc1fbe`; bsc `0x4f917267c7790e362f1b5d14ab397a920486e9ff`; bsc `0x7cf9601735c80e7b7deb2508163328df59653353`; bsc `0x7dc4c71c3df0732d18ac2bb8a3891ae55a9977e5`; bsc `0xc92d3399f664c43cf0569e9b6b93019b0eafa88b` | ⚠️ Unaudited |
| StrategyAutoLPv2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x87b7972453d03e344d4fdf8dd5bef6ca692352f1`; bsc `0xbb566aa4255e4a7f0660f3b9ca80632bdcf9b1ef` | ⚠️ Unaudited |
| StrategyAutoV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x715067fb405dc42bb0a201c31748dc15c24a944f`; bsc `0x98cf774f3dd86a7bec58174e426c3fb35a75e800` | ⚠️ Unaudited |
| StrategyBakeryLP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x00589273cfda2d74a0bee8cc7316919d52db964b`; bsc `0x684b86319c9c6a78b7f87675e8120a96f53b0c7d`; bsc `0xcf2f2c16f2cc5b36d85f2c2c062aebf04f60a8fb` | ⚠️ Unaudited |
| StrategyCakeBest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6d8f1fd50f0ce0d93ded70ec2194e5a6bb49a0e9` | ⚠️ Unaudited |
| StrategyCakeBestv2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb8ceea3951097a5efc46746aeafc339b28c8714c` | ⚠️ Unaudited |
| StrategyCakeSmart | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: bsc `0x31a85811322211f5f7b2405e5eb2b2567f98f79a`; bsc `0x33c5fbe4772aba8235f62010c72857039db0ef18`; bsc `0x35a07398be19b4ee113ba858e8bf5bb538f26250`; bsc `0x3ceea4753071083e3ed9dbf674d6f42945e0c1ec`; bsc `0xdcc5953161d3872f96a560b496419a597231444b` | ⚠️ Unaudited |
| StrategyFortress | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0xdc012ee194179ceb4f5431015148b0da1f964e1a`; bsc `0xe545721e35ad2cd9f1616b22509de643eb0de789` | ⚠️ Unaudited |
| StrategyFortressBNB | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x58b8b3430c70e76a33e91a6c942078b8f88c506d` | ⚠️ Unaudited |
| StrategyJetfuelBSCEX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 6 deployments: bsc `0x098daf85bed3ad16a284c4c5f2b04e5d84cd057c`; bsc `0x0e290bb18a5d90c84b7a5c0ed01b7c9c108ab79c`; bsc `0x182b9f1ee9f9d9af5371153fd73c70a9d0fbf8da`; bsc `0x1df7b5df1b29a850d642dd989f2b9664a56596c0`; bsc `0x4c972be9fce2a654a912026c244d8edfa7270148`; bsc `0x8d46b4d4cab15156462f5cec509010fb00c26527` | ⚠️ Unaudited |
| StrategyJetfuelLP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 20 deployments: bsc `0x01588b79b8b9c5dfd4d7199a978c4404d5daf7fc`; bsc `0x0f22fde83f24a50fd677dc7707bedeac749ed5ec`; bsc `0x394639fca6eeb4279bef71cbd9b7c988a211eaff`; bsc `0x3d8f1accee8e263f837138829b6c4517473d0688`; bsc `0x40fa8abe4150b6d9d3d6cc16ec7a4f5503dae662`; bsc `0x4553a0b1a82690ab3a58604ddd7cf7f1a9dd04aa`; bsc `0x4c3b71f7233df55c7a865544107a4d9c694c2107`; bsc `0x5f07c5ce9b6756b91e31365dfb2f1ca20558787d`; bsc `0x63f04fa44e5df591fbc093ca4a72b45e7809e392`; bsc `0x69b30f5d9dc7503aa4c2c1cab78a5e2d7872940c`; bsc `0x7ac6832e4ad2105ae4888d8bf93636f377830be9`; bsc `0x87af253a602f4f1373f0c8285d1b7496f2ad6898`; bsc `0x9180583c1ab03587b545629dd60d2be0bf1df4f2`; bsc `0xa2b7bef45ca795ffae4ec5197e86492d2f7d86a8`; bsc `0xbfbea46ecd61ee1f7d5d1e765e2548eda0d25819`; bsc `0xc828ae3f0b0c7ca45ef1f6f81fc9dff6b3aea8bb`; bsc `0xd02cc0a97dcf693c55865a56609d6b196a2466b2`; bsc `0xe4e38e2bc5adda3b93790f31e146212672afb6ca`; bsc `0xf0674c8da9fe50907230f7e6ce4fde6901456cf7`; bsc `0xf6fdba39344f72b57edcd4e9eaa83caf765140d0` | ⚠️ Unaudited |
| StrategyVenus | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3b4ac854160d97da09a183559cc8441f30de2a57` | ⚠️ Unaudited |
| StrategyVenusBNBV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x956bce4f086dc4579b960ed80336ef79737cdaa3` | ⚠️ Unaudited |
| StrategyVenusv2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x3c0c0e0732ce790c4d30dbaa0a0eccb3c01014aa`; bsc `0xbfbc24bcca99ee7a332495fe203a06b759849746` | ⚠️ Unaudited |
| StrategyWingsLP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 12 deployments: bsc `0x0d9ab0182a8004014dd22b7b6f614d07d13eedb6`; bsc `0x24bb788b3631d833642fd177d6774428be5a63ce`; bsc `0x3245c349acf3aa0370825a69a6d8ee6b700fc629`; bsc `0x5d9ebde919f6ee1a37263ee9d7bbdc5821707ad8`; bsc `0x70ed4836e746547fb0e910ace95fa545cb9d8a30`; bsc `0x964505cb24ecee087db5b5626b4e3fff694c718e`; bsc `0xa22dbba46780ff55eba4662393d9a17568f2e0b6`; bsc `0xa9190fbe894a386388b560df6fe9185aa8aa018d`; bsc `0xad74c817ca4b1c302bae6fcdfa743709e07cbae8`; bsc `0xd962d17807693b1cd32ec76d811f1dc8e184f3c8`; bsc `0xe2f6e2b039073f3b2d21323612c5160e458b7e9e`; bsc `0xe694672049674f93016c81fb7a92852549e099bc` | ⚠️ Unaudited |
| StrategyWingsSingleVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf150fd19a8f88668099eab23291162124f24e06f` | ⚠️ Unaudited |
| TRYONPresale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb65be412326e54811ff47f0130c0d8be0776e0bf` | ⚠️ Unaudited |
| WingsToken | token | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | unit-387737 | `0x0487b824c8261462f88940f97053e65bdb498446` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x47e2b224e0b8bb05d144d156e5ed3986280a6b40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6b9040ef98aa616f19321d2edf33ea82c6263aaf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x733ea2617e29d90c9f3da6389387f960cd4ac038` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x81369235c726dfe3f9ea8bb5f0b84e08f72891b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x897420993b0ba1adc4ed14c5989fa6d97fcc4210` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa1a441966e48360d12dc887eb24e5f7c8035fd4d` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | unit-387740 | `0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | unit-387731 | `0x0d500b1d8e8ef31e21c99d1db9a6444d3adf1270` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [audit-by-etherauthority.pdf](https://jetswap.finance/audit-by-etherauthority.pdf) | unknown | Audit | 2021-03 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 4 | high |
| [audit-by-hash0x.pdf](https://jetswap.finance/audit-by-hash0x.pdf) | unknown | Audit | 2021-04 | stale | Direct | contract_name | matched | 3 | 0 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13302] audit-by-etherauthority.pdf — matched: All five contracts listed in the 'Project files' table are explicitly in scope. The audit date is from the cover page: 'Prepared on :23/03/2021'.
- [13303] audit-by-hash0x.pdf — matched: Five contracts explicitly listed in scope table on page 4. Audit date from cover page: 21/04/2021.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| audit-by-etherauthority.pdf | MasterChef | ambiguous — not counted | MasterChef (alternative) `0x4e22399070ad5ad7f7beb7d3a7b543e8ecbf1d85` — liveness: live (current_address_book_code)<br>MasterChef (alternative) `0x63d6ec1cdef04464287e2af710ffef9780b6f9f5` — deployed 2021-05-16 19:28:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| audit-by-etherauthority.pdf | Multicall | own contract | Multicall (selected) `0xf6488205957f0b4497053d6422f49e27944ee3dd` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| audit-by-etherauthority.pdf | swapV2Factory | unmatched — not counted | — | listed in project files table | no |
| audit-by-etherauthority.pdf | swapV2Router02 | unmatched — not counted | — | listed in project files table | no |
| audit-by-etherauthority.pdf | WingsToken | unmatched — not counted | — | listed in project files table | no |
| audit-by-hash0x.pdf | MasterChef | ambiguous — not counted | MasterChef (alternative) `0x4e22399070ad5ad7f7beb7d3a7b543e8ecbf1d85` — liveness: live (current_address_book_code)<br>MasterChef (alternative) `0x63d6ec1cdef04464287e2af710ffef9780b6f9f5` — deployed 2021-05-16 19:28:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| audit-by-hash0x.pdf | Multicall | own contract | Multicall (selected) `0xf6488205957f0b4497053d6422f49e27944ee3dd` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| audit-by-hash0x.pdf | JetswapFactory | own contract | JetswapFactory (selected) `0x0eb58e5c8aa63314ff5547289185cc4583dfcbd5` — deployed 2021-05-03 07:48:25+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| audit-by-hash0x.pdf | JetswapRouter | own contract | JetswapRouter (selected) `0xbe65b8f75b9f20f4c522e0067a3887fada714800` — deployed 2021-05-03 07:58:52+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| audit-by-hash0x.pdf | WingsToken | unmatched — not counted | — | listed in scope table with MD5 hash | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x63d6ec1cdef04464287e2af710ffef9780b6f9f5` | MasterChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 50 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 13 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 4 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 2 ambiguous, 4 unmatched
- Matched-own operational status: 4 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: unique_name=4

Fork inheritance lineage and inherited audits are included when available.
