# Agentic Audit Brief: Avantis

## Export Authority

- Production state: **published scope**
- Raw selected rows: 10 across 5 audit(s)
- Eligible audit results: 5 (5 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

⚠️ Lifecycle status: DECLINING - TVL dropped 54.4% over 90 days

## Project Overview

- Project: Avantis (`avantis`)
- Website: [https://www.avantisfi.com](https://www.avantisfi.com)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: base
- Contract surface: 34 unique implementations (185 raw deployments)
- Coverage basis: 2/3 confirmed own live verified implementations (66.7%); conservative 66.7% with 0 needs-review implementation(s)
- DeFi Llama TVL: $31,297,482.40
- On-chain TVL (included contracts): $91,168,445.84
- TVL by chain: Base $91,168,445.84

## ⚠️ Limited Contract Surface

This brief covers only 3 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Avantis. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 3 contract row(s) across base. Structural roles: 2 supporting, 1 core. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 3
- Structural roles: supporting (2), core (1)
- Contract kinds: contract (2), abstract (1)
- Detected standards: erc1967proxy (2), erc165 (1), erc20 (1), ownable (1), ownable2step (1)
- Frameworks: openzeppelin (3), openzeppelin-upgradeable (2)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 3 contracts are derived from known codebases. 3 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- Token (`0x696f9436b67233384889472cd7cd58a6fb5df4f1`, chain 8453)
- TransparentUpgradeableProxy (`0x44914408af82bc9983bbb330e3578e1105e11d4e`, chain 8453)
- TransparentUpgradeableProxy (`0x8a311d7048c35985aa31c131b9a13e03a5f7422d`, chain 8453)

## Contract Surface Quality

- Logic-topography rows: 3; live-surface rows included: 3 (3 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 3/7 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/3 (66.7%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 3 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 30 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 15
- Confirmed-live implementations: 3 of 34 unique; 31 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 2/28
- Verified + Unaudited implementations: 26
- Verified by bytecode match: 0
- Unverified implementations: 6
- Unique implementations: 34
- Raw deployments: 185
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): $90,427,212.63
- Latest audit: 2024-09 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $90,427,212.63 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 2 | 7.1% | 2023-12 |
| Zellic | Tier 2 | 2 | 7.1% | 2024-09 |
| Zokyo | Tier 2 | 2 | 7.1% | 2023-12 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Trading | unknown | project_anchor | own_supporting | 1 | base | unit-379852 | `0x44914408af82bc9983bbb330e3578e1105e11d4e` | ✅ Audited |
| TradingStorage | unknown | project_anchor | own_supporting | 1 | base | unit-379851 | `0x8a311d7048c35985aa31c131b9a13e03a5f7422d` | ✅ Audited |

### ⚠️ Verified + Unaudited (26)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Token | token | project_anchor | own_supporting | 0 | base | unit-379846 | `0x696f9436b67233384889472cd7cd58a6fb5df4f1` | ⚠️ Unaudited |
| VaultManager | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xe9fb8c70af1b99f2baaa07aa926fcf3d237348dd` | ⚠️ Unaudited |
| Execute | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x9d15103f8fdbf9b989583a37a49724f6b3a41e31`; base `0x9d484628d76603796a492117f90788721bc5b7f8` | ⚠️ Unaudited |
| Multicall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 12 deployments: base `0x125d3eeb43f99f2d1450f3db38e4ddda03742fe8`; base `0x141d8b7f279785424070dd88a5bfc4c97a2a7257`; base `0x1602cc5de704c0a946515493683f2eeed53f4920`; base `0x20076b9e344d062ecb2d2faf06677057479296da`; base `0x261640f4a046e87f8e916efd83dc5f0e90e9ecda`; base `0x513137525c3282e125cbb1aa8858400f63ebb2be`; base `0x79ec9dfaf0264531cec88c28733bde64289ad1ab`; base `0x7a829c5c97a2bf8befb4b01d96a282e4763848d8`; base `0x98ae9ae88cd3bdf5d5599bd1b04b6f003ab79040`; base `0xb040be6b1c5f0ea44dcb6e6b1c276f38e3560222`; base `0xd4693314460d6fb598c1124aec40c03e2aa0a8a4`; base `0xe0aa215086ddf76098fe84d1ea5b71eacc775942` | ⚠️ Unaudited |
| Multicall | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x23035f0574adc543f5611eac9a518215fa29f33c`; base `0x603664308b6a23be87b5d81c656871825a0f82c5` | ⚠️ Unaudited |
| Multicall | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x88ab4ad767955f495b25fad394318b920533eb80`; base `0xc40153ecbdea90c4e0a409f38f4a50e58f5e7eda` | ⚠️ Unaudited |
| Multicall | periphery | non_address_book | standard_proxy_or_library (excluded) | 1 | base | n/a | `0xa7cfc43872f4d7b0e6141ee8c36f1f7fee5d099e` | ⚠️ Unaudited |
| OpClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x1c69cc8be2b29225b74743752a721ca21d0203a5`; base `0x93c08dac9b36c28e6065c4ef3d7bdc3dc76663ca` | ⚠️ Unaudited |
| PairInfos | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 15 deployments: base `0x18cbd536ba9a069e48f6419769d73da78eb9a975`; base `0x28f525100fefae8b1c63b4d4a52d0f305cc0e136`; base `0x4859a4dfa2f787f8b9acec5d4ac8e48bf43c6f6e`; base `0x7cc70d3acb7872f9c4f61fff13c1820bd9cfde64`; base `0x7e74639f5777c9a2e8f7bc019da9327d2ab5afb8`; base `0x86ff253f05e4c3f145fd4209e901c7a4cc2ba98d`; base `0x8f50eae05c74675109dbf0678f22a8ffee3b6de3`; base `0x9323cb21d72e9409192d12b2fbac88c88c2ad489`; base `0xa86a0d825796441f24b21f1813bbe52b74dae787`; base `0xd344d6c1b5cb22557997ceee1e406d40a2e90f8a`; base `0xd4d8eef0ae77e12abf34696efe3b498c6f075093`; base `0xdb7b172054aeecb5c6bc3f988bc19528318cfbfb`; base `0xdf85bfd38c6694fbffc67a60f5a09d9932b58df9`; base `0xef601ac9efd7210801a4d1ba362b5b03dc1cddeb`; base `0xf74074180d9d8d7259449c5dbb351d5c6130668f` | ⚠️ Unaudited |
| PairInfos | periphery | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x81f22d0cc22977c91befe648c9fddf1f2bd977e5` | ⚠️ Unaudited |
| PairStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 28 deployments: base `0x2f09260089c75112ef20621d947f96cea6969ca9`; base `0x3a93922fd64bac36ba63ebc52fe982bb7ce6d64d`; base `0x433cf9e346b8d15b4f9269c4c75144398262db49`; base `0x45ad5d71a38a291680798dc943d30bd2255e515d`; base `0x4dadd07575aebd1204ff566b7d90b4af9f0f8a04`; base `0x4ff0116543e7f24d2d2c251075bf540cb3de7eba`; base `0x65b3cc065991fde0a58640c54fcc22ddcda5bc39`; base `0x68e0dcae2c3cd40f91c18152f2c2fd84c43fd08f`; base `0x6b01810e829d217db2d51c964cf182bd8be7ef54`; base `0x6eca2480f672fbc235ce7075325bb6d7dad2b1e9`; base `0x6f839de7af9382b9778f996f40d61041b780f830`; base `0x7affc49628e9cb236156ca67ecfbc8ff91e29f50`; base `0x8311b4852efc1b28a532fbf1dae5c88b8c6a1700`; base `0x8b4027bb5bb062963ae65bd6496bfd5559daf4cc`; base `0x9894a06644d3bae4fe3b6a7976aaa150db351cec`; base `0x9db724c6eaa156a23ae6c53fbc2041e30d575a71`; base `0xb3048b8bc47be68965dda9603468e8518b50db66`; base `0xbf8d255830e71f071dc4bf06f8db8bcfeb2542b3`; base `0xceab8815c58cc3409f33298d73a74b9b9feb0968`; base `0xd2c75f14ac388011f9e3259beaff92b66a39187b`; base `0xd910d2312ad46ce74b468103c527c04f8998b195`; base `0xe41c5401b560b9d22ab86fb839ff337313372c26`; base `0xe4f1b20a7944e2ecfd2515546fd8d3892b0d08b0`; base `0xe7f661993706abcb92a59e21d23e266631b8ea15`; base `0xe8379485808a0cc86ad482bbc90699cc7be45934`; base `0xe87d9747ccd26add50639e93b5b3daea5af6ee77`; base `0xf68a5c8e7540d9f4b28efd077064064f354b0397`; base `0xf76370a0924fbfb010dc1efb3c05da9e34426aa1` | ⚠️ Unaudited |
| PairStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x5db3772136e5557efe028db05ee95c84d76faec4`; base `0x6a2be7f60c312b0dabde5a515bdee5ffc22b2a88` | ⚠️ Unaudited |
| PriceAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 14 deployments: base `0x0611a36cb46a19f5df3dc57951248a6f5f336ad9`; base `0x0cce4d12192ea86bde79f774409cf6f5ee72fca8`; base `0x1996eb377cb75572d2bc4a60b39cc3a22f921698`; base `0x1a172d9ba45ed78a41855a9918a9218cd898d287`; base `0x4efea74ffd48cfa37dd7282df0ee4b22f08e74f9`; base `0x5032922a9c75fcee55e9fe510f939d42cbef4ae3`; base `0x5e848711acf64b492f57550e0d80a4a23cad5f23`; base `0x6b693dad3cbdc7c969acfde2973e6c00d1382e5b`; base `0x6db4e7008f589e3d806dc3a4176756f684aaea85`; base `0x7e7f28170eabecefdde33100c04510784101312d`; base `0x93f547dec160c65c19c993b0aad6eb4b3c587ce4`; base `0xa4a1a9b747cce2fcab601049e8167649dee09b41`; base `0xbe4c3bdbd45cf79ba21e5396e1d0c8ff29073be5`; base `0xbeddace886664ad29fb1c1929cd4cf8ab2e2684f` | ⚠️ Unaudited |
| Referral | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x1a110bba13a1f16cca4b79758bd39290f29de82d` | ⚠️ Unaudited |
| Referral | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x45e0611972e930462781c75c7295504c0e49112b`; base `0xa3672c25e8118bd8ff1185ce00a28a10305228a4` | ⚠️ Unaudited |
| Referral | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x7f163ae5cdde135d96c27f5be626341a20019bd1`; base `0xa96f577821933d127b491d0f91202405b0dbb1bd`; base `0xfe417372088146476ca28fa35d00f5e0f60b64f7` | ⚠️ Unaudited |
| StakedToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x553000ac1a8d7f2d6372e4b7adb7efcba9a1ced5`; base `0xb85e0ffc5f7799170724c6220209826e9854194c`; base `0xd546040f08e6b3a4f1d21683b9bd9935d73bd9e9` | ⚠️ Unaudited |
| Token | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc009895d2f97966c1bddf36519cd44ccf789e070` | ⚠️ Unaudited |
| Trading | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 19 deployments: base `0x00695efc895ec1e549e8f16f7f1c713eb7ef1295`; base `0x16ad53406c0ff09e329bcd53302081e3a3564156`; base `0x16cb9a51960041960bc79359c2a397039e8d72c5`; base `0x3ae99070ee412275dab316a5513b03c39be92b28`; base `0x46246125ea8221f184f7c8670149a09b673cb6e7`; base `0x46395b611744408241835fc2fdd9e17183d24548`; base `0x6588285ff85032cb2a1a0f404e405e80cd3748b4`; base `0x6b199e7ecc732f7a2c4f851a1371483c10451507`; base `0x79c50438e00ad5e9a1bde2ea1acd8eb1aa6050c8`; base `0x828b64b99c0820e58521fc51591febf446bed78c`; base `0x99c10680dbf73b519443c61d66482565063c9669`; base `0xbd958a04fcf91e7a6a72e0918646fbd4389c70b0`; base `0xc10a2842f53dd44784ea51470851341eb918790b`; base `0xd52ea52c2a8460fcdd931bf2005a81926d3ffb30`; base `0xd7917d3fc67c8b2f52ca4ed69bb46248e8df7968`; base `0xd973b86d336ff55198d4d33f504a6e77306d9783`; base `0xe2127524187d34663b3789d4603a84bfb6f6c5dd`; base `0xeede119b1553db78751804074059c00b459c4d5f`; base `0xfc3a952c1ced32eb389043718f0340d7c90f9e6a` | ⚠️ Unaudited |
| Trading | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x5ff292d70ba9cd9e7ccb313782811b3d7120535f` | ⚠️ Unaudited |
| Trading | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x60ff7987fa2ad267fc6723b96bb2426bd7961248`; base `0xcb28068e0f6cf42dc480fce67ef6630391156ad8` | ⚠️ Unaudited |
| TradingCallbacks | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 17 deployments: base `0x00123005b7b62c4beff0a4b08247e06142833f9f`; base `0x00ee4236763bc79f354097a79f00f99cb0c53bda`; base `0x1fe035f203b9f48755521b56f133488dfb064680`; base `0x2067ff027d97b4f2f1cba1a2c846531a68cfdf15`; base `0x21b59c3a9384010c3182b0ead65eb0c883f5e706`; base `0x27282ce609d9812af67f0c4e7418ea95dc3442e9`; base `0x300a64687ebecc30f908d9f996421a93a2bdb960`; base `0x373faea72a86bd0eb33ef08e01c5918a95919349`; base `0x4263f0725962909899cb8a45d27f63744deea20c`; base `0x45452e412d93e0d7e023978d09455eb6de7a6330`; base `0x680149878b2bc3f5c0db4b4d62b9b8b879fc421c`; base `0x6a22930d0f6f0e39c406f1423abc4d5c287c5de0`; base `0x81a52f7284e8690d74aaac474219cead8b494701`; base `0x8550015ce849abeced0cb8f55f544a78895e14fa`; base `0x8dc5e67c014662a59b6c4b50748ea795370ba86c`; base `0x9af69b4ad8b4f1ff349fb5186219df1caf433e75`; base `0xb1c9c2c07ece4ea14108ffde8932c22893d8feca` | ⚠️ Unaudited |
| TradingStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 16 deployments: base `0x0e82149feb35a5edb540294129420a979dcd7dc9`; base `0x20155a0b84513189cfb92297a7b2f1036216e131`; base `0x22281877575c3f84562822e600876a5dc4d23318`; base `0x236a48becf55f4c8f9f59cdc05187ad889fecffa`; base `0x586f650cde0ef43e63818d2f1e4de9d514b4e4f2`; base `0x62c5442b2fb9012a8e7f50b604069dea1d371ca2`; base `0x717eb3493cc2394fba753a434630892eb992244a`; base `0x83dbaf0d491534bfdf54098d1b780b08df35a996`; base `0x9229b667dde658d5c98404a290cab4233b9e71e4`; base `0x9e6b80dbf9e8b7047e8ca1eb5ac36918b6d12422`; base `0xb4d2f8c421308a346c088b6edf941cd88c320c47`; base `0xb916e6847de484bdb37e16e7a81e695ffe4ae5c3`; base `0xd14447e1c7d77e5a694f4571f7f52f1565a7728c`; base `0xdbff9642962cc9a2d3fe9fa1960846ad88e7760b`; base `0xe8ae5603b0fe6265592cbfd36bb596e223e966d8`; base `0xf77e2bd968cd296679c9fbfee34301c9ac01db70` | ⚠️ Unaudited |
| Tranche | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 11 deployments: base `0x2db4fff86d94341f2fe137ff654f4b89ed473775`; base `0x548f3f61f1ca8d8eb36f323b6091b6ece090d500`; base `0x5d023a1a4fad735ad78a3f9012701b1223637c8f`; base `0x5fc6cd7b0ab384b4a0efb2df9d85c7e85d93952b`; base `0x80cd76bac3793422f9e3f9ad7faa4157c55032d8`; base `0x8bc80666b4c4bedb03f4f2a5493cf5c42228d2bc`; base `0x96878c16dc858658e62aca3c92a90a2860429361`; base `0xc149309556f166b0735bd985c1dace9f9cf56559`; base `0xc3769e440e3515ba374372837f76aafdc4fba26d`; base `0xdd6d9134268feb42c226d24ac0711750af068673`; base `0xe56ad25f6e3ae0143f00df6ba4182c919b2c35ed` | ⚠️ Unaudited |
| VaultManager | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 12 deployments: base `0x0ca0ba253f192b31fb76aa93a2d3ec8687527486`; base `0x12c16c4168e7d6d6ceae7ad8be773501a8a30546`; base `0x13c7e59312903787f0b9f71ab4adeced257de37a`; base `0x4ab200dca5e3c594fa7ab98af67b46b3c5ada864`; base `0x535940d3a4b7d30bdd43cc3d656f54927aa437b8`; base `0x6201d3b7457f8140c2fbac02049d2842b9cce9fc`; base `0x866e4ab1ae1873160f039fda39b8f3b5f5e3973d`; base `0x8e99ae5502aaabeb1b511c876cdd2a6203dd367d`; base `0xa7f4c25de45ccd76364722134607c3f71efdfe96`; base `0xc15c0a260db8ca26707e2982430032e18541ec18`; base `0xf9c4a5fa6f63632157c2873c2c40dcb1f0b9f60a`; base `0xffd83193fae18f86da1d5a718bd35e4778f811c5` | ⚠️ Unaudited |
| VeTranche | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: base `0x8b0cf27913da70f6732f250a647301b111aa23ac`; base `0xa0ab93f6284d2dc4b1903cfef111e4c9da5a9b46`; base `0xadeb64e81b2f76f9702b92093213a61fec21fcdd`; base `0xe5391d01933cdac18609a011b775764d237ae565` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (6)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Proxy (impl: 0xfa420c97e5c713b13d1c943a4faeb60845a1a730) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x8b2ca70266e114409cf7741524ac6e22ca28f086`; base `0xfa420c97e5c713b13d1c943a4faeb60845a1a730` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0aa1881d4904364ae7419cd11fcf1805be4752f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x22353ca850ac6bf0f1f1641f7a256f6e690f078b`; base `0x37de046173f66f9538aa6bb69a987ac00163f17c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5a780fe7ac97d3c0729eb3638e2025622506a163` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base | unit-379847 | `0x833589fcd6edb6e08f4c7c32d4f71b54bda02913` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb8c43f637b0f214e0af1c7ca1b9110fc1f9502ab` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 78
- Live contracts: 0
- Unknown liveness contracts: 78
- Source-verified contracts: 72
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: candidate auto own=49, candidate review=14, source verified unclassified=9, unverified unclassified=6

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| base | candidate auto own | PairInfos<br>`0x7cc70d3acb7872f9c4f61fff13c1820bd9cfde64` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| base | candidate auto own | PairInfos<br>`0x7e74639f5777c9a2e8f7bc019da9327d2ab5afb8` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| base | candidate auto own | PairInfos<br>`0x86ff253f05e4c3f145fd4209e901c7a4cc2ba98d` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| base | candidate auto own | PairInfos<br>`0x8f50eae05c74675109dbf0678f22a8ffee3b6de3` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| base | candidate auto own | PairInfos<br>`0x9323cb21d72e9409192d12b2fbac88c88c2ad489` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| base | candidate auto own | PairInfos<br>`0xa86a0d825796441f24b21f1813bbe52b74dae787` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| base | candidate auto own | PairStorage<br>`0x2f09260089c75112ef20621d947f96cea6969ca9` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| base | candidate auto own | PairStorage<br>`0x45ad5d71a38a291680798dc943d30bd2255e515d` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| base | candidate auto own | PairStorage<br>`0x4ff0116543e7f24d2d2c251075bf540cb3de7eba` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| base | candidate auto own | PairStorage<br>`0x6a2be7f60c312b0dabde5a515bdee5ffc22b2a88` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| base | candidate auto own | PairStorage<br>`0x6eca2480f672fbc235ce7075325bb6d7dad2b1e9` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| base | candidate auto own | PairStorage<br>`0x9db724c6eaa156a23ae6c53fbc2041e30d575a71` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| base | candidate auto own | PairStorage<br>`0xbf8d255830e71f071dc4bf06f8db8bcfeb2542b3` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| base | candidate auto own | PairStorage<br>`0xd2c75f14ac388011f9e3259beaff92b66a39187b` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| base | candidate auto own | PairStorage<br>`0xe41c5401b560b9d22ab86fb839ff337313372c26` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| base | candidate auto own | PairStorage<br>`0xf68a5c8e7540d9f4b28efd077064064f354b0397` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| base | candidate auto own | PriceAggregator<br>`0x0611a36cb46a19f5df3dc57951248a6f5f336ad9` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| base | candidate auto own | PriceAggregator<br>`0x1996eb377cb75572d2bc4a60b39cc3a22f921698` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| base | candidate auto own | PriceAggregator<br>`0x4efea74ffd48cfa37dd7282df0ee4b22f08e74f9` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| base | candidate auto own | PriceAggregator<br>`0xa4a1a9b747cce2fcab601049e8167649dee09b41` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| base | candidate auto own | PriceAggregator<br>`0xbe4c3bdbd45cf79ba21e5396e1d0c8ff29073be5` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| base | candidate auto own | Referral<br>`0x7f163ae5cdde135d96c27f5be626341a20019bd1` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| base | candidate auto own | Referral<br>`0xa3672c25e8118bd8ff1185ce00a28a10305228a4` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| base | candidate auto own | Trading<br>`0x6588285ff85032cb2a1a0f404e405e80cd3748b4` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| base | candidate auto own | Trading<br>`0x828b64b99c0820e58521fc51591febf446bed78c` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| base | candidate auto own | Trading<br>`0xbd958a04fcf91e7a6a72e0918646fbd4389c70b0` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| base | candidate auto own | Trading<br>`0xc10a2842f53dd44784ea51470851341eb918790b` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| base | candidate auto own | Trading<br>`0xcb28068e0f6cf42dc480fce67ef6630391156ad8` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| base | candidate auto own | Trading<br>`0xd973b86d336ff55198d4d33f504a6e77306d9783` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| base | candidate auto own | TradingStorage<br>`0x20155a0b84513189cfb92297a7b2f1036216e131` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| base | candidate auto own | TradingStorage<br>`0x22281877575c3f84562822e600876a5dc4d23318` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| base | candidate auto own | TradingStorage<br>`0x586f650cde0ef43e63818d2f1e4de9d514b4e4f2` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| base | candidate auto own | TradingStorage<br>`0x62c5442b2fb9012a8e7f50b604069dea1d371ca2` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| base | candidate auto own | TradingStorage<br>`0x83dbaf0d491534bfdf54098d1b780b08df35a996` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| base | candidate auto own | TradingStorage<br>`0xb4d2f8c421308a346c088b6edf941cd88c320c47` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| base | candidate auto own | TradingStorage<br>`0xd14447e1c7d77e5a694f4571f7f52f1565a7728c` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| base | candidate auto own | TradingStorage<br>`0xe8ae5603b0fe6265592cbfd36bb596e223e966d8` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| base | candidate auto own | TradingStorage<br>`0xf77e2bd968cd296679c9fbfee34301c9ac01db70` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| base | candidate auto own | Tranche<br>`0x548f3f61f1ca8d8eb36f323b6091b6ece090d500` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| base | candidate auto own | Tranche<br>`0x5d023a1a4fad735ad78a3f9012701b1223637c8f` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| base | candidate auto own | Tranche<br>`0xc149309556f166b0735bd985c1dace9f9cf56559` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| base | candidate auto own | Tranche<br>`0xc3769e440e3515ba374372837f76aafdc4fba26d` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| base | candidate auto own | VaultManager<br>`0x13c7e59312903787f0b9f71ab4adeced257de37a` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| base | candidate auto own | VaultManager<br>`0x535940d3a4b7d30bdd43cc3d656f54927aa437b8` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| base | candidate auto own | VaultManager<br>`0x866e4ab1ae1873160f039fda39b8f3b5f5e3973d` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| base | candidate auto own | VaultManager<br>`0x8e99ae5502aaabeb1b511c876cdd2a6203dd367d` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| base | candidate auto own | VaultManager<br>`0xffd83193fae18f86da1d5a718bd35e4778f811c5` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| base | candidate auto own | VeTranche<br>`0xa0ab93f6284d2dc4b1903cfef111e4c9da5a9b46` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| base | candidate auto own | VeTranche<br>`0xadeb64e81b2f76f9702b92093213a61fec21fcdd` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| base | candidate review | Execute<br>`0x9d15103f8fdbf9b989583a37a49724f6b3a41e31` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| base | candidate review | Execute<br>`0x9d484628d76603796a492117f90788721bc5b7f8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| base | candidate review | PairInfos<br>`0x28f525100fefae8b1c63b4d4a52d0f305cc0e136` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| base | candidate review | TradingCallbacks<br>`0x00ee4236763bc79f354097a79f00f99cb0c53bda` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| base | candidate review | TradingCallbacks<br>`0x27282ce609d9812af67f0c4e7418ea95dc3442e9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| base | candidate review | TradingCallbacks<br>`0x373faea72a86bd0eb33ef08e01c5918a95919349` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| base | candidate review | TradingCallbacks<br>`0x4263f0725962909899cb8a45d27f63744deea20c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| base | candidate review | TradingCallbacks<br>`0x6a22930d0f6f0e39c406f1423abc4d5c287c5de0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| base | candidate review | TransparentUpgradeableProxy<br>`0x1c69cc8be2b29225b74743752a721ca21d0203a5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| base | candidate review | TransparentUpgradeableProxy<br>`0x23035f0574adc543f5611eac9a518215fa29f33c` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| base | candidate review | TransparentUpgradeableProxy<br>`0x45e0611972e930462781c75c7295504c0e49112b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| base | candidate review | TransparentUpgradeableProxy<br>`0x5db3772136e5557efe028db05ee95c84d76faec4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| base | candidate review | TransparentUpgradeableProxy<br>`0x60ff7987fa2ad267fc6723b96bb2426bd7961248` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| base | candidate review | TransparentUpgradeableProxy<br>`0xc40153ecbdea90c4e0a409f38f4a50e58f5e7eda` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| base | source verified unclassified | Multicall<br>`0x125d3eeb43f99f2d1450f3db38e4ddda03742fe8` | non_address_book | unknown | unknown | verified | n/a | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| base | source verified unclassified | Multicall<br>`0x141d8b7f279785424070dd88a5bfc4c97a2a7257` | non_address_book | unknown | unknown | verified | n/a | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| base | source verified unclassified | Multicall<br>`0x20076b9e344d062ecb2d2faf06677057479296da` | non_address_book | unknown | unknown | verified | n/a | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| base | source verified unclassified | Multicall<br>`0x513137525c3282e125cbb1aa8858400f63ebb2be` | non_address_book | unknown | unknown | verified | n/a | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| base | source verified unclassified | Multicall<br>`0x603664308b6a23be87b5d81c656871825a0f82c5` | non_address_book | unknown | unknown | verified | n/a | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| base | source verified unclassified | Multicall<br>`0x88ab4ad767955f495b25fad394318b920533eb80` | non_address_book | unknown | unknown | verified | n/a | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| base | source verified unclassified | Multicall<br>`0xd4693314460d6fb598c1124aec40c03e2aa0a8a4` | non_address_book | unknown | unknown | verified | n/a | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| base | source verified unclassified | OpClaim<br>`0x93c08dac9b36c28e6065c4ef3d7bdc3dc76663ca` | non_address_book | unknown | unknown | verified | n/a | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| base | source verified unclassified | Token<br>`0xc009895d2f97966c1bddf36519cd44ccf789e070` | non_address_book | unknown | unknown | verified | n/a | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| base | unverified unclassified | 0x22353ca850ac6bf0f1f1641f7a256f6e690f078b<br>`0x37de046173f66f9538aa6bb69a987ac00163f17c` | non_address_book | unknown | unknown | unverified | n/a | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| base | unverified unclassified | 0xfa420c97e5c713b13d1c943a4faeb60845a1a730<br>`0x8b2ca70266e114409cf7741524ac6e22ca28f086` | non_address_book | unknown | unknown | unverified | n/a | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| base | unverified unclassified | UnnamedContract<br>`0x22353ca850ac6bf0f1f1641f7a256f6e690f078b` | non_address_book | unknown | unknown | unverified | n/a | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| base | unverified unclassified | UnnamedContract<br>`0x5a780fe7ac97d3c0729eb3638e2025622506a163` | non_address_book | unknown | unknown | unverified | n/a | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| base | unverified unclassified | UnnamedContract<br>`0xb8c43f637b0f214e0af1c7ca1b9110fc1f9502ab` | non_address_book | unknown | unknown | unverified | n/a | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |
| base | unverified unclassified | UnnamedContract<br>`0xfa420c97e5c713b13d1c943a4faeb60845a1a730` | non_address_book | unknown | unknown | unverified | n/a | `0xe4cc1b667217c1e9d9e827aef83a90f6c6fd797d` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Avantis_-_Zellic_Audit_Report_1.pdf](https://github.com/Avantis-Labs/audits/blob/master/Avantis_-_Zellic_Audit_Report_1.pdf) | Zellic | Audit | 2023-12 | stale | Direct | n/a | matched | 2 | 2 | 0 | 9 | n/a |
| [Avantis_-_Zellic_Audit_Report_2.pdf](https://github.com/Avantis-Labs/audits/blob/master/Avantis_-_Zellic_Audit_Report_2.pdf) | Zellic | Audit | 2024-09 | aging | Direct | n/a | matched | 2 | 2 | 0 | 7 | n/a |
| [Avantis_-_Zokyo_Audit_Report_1.pdf](https://github.com/Avantis-Labs/audits/blob/master/Avantis_-_Zokyo_Audit_Report_1.pdf) | Zokyo | Audit | 2023-12 | stale | Direct | n/a | matched | 2 | 2 | 0 | 9 | n/a |
| [spaces/76vAZHPcNKY10NzuKsC4/uploads/QugrQyVYa7gCMa8FUQdy/Avantis_-_Zellic_Audit_Report.pdf](https://586275454-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F76vAZHPcNKY10NzuKsC4%2Fuploads%2FQugrQyVYa7gCMa8FUQdy%2FAvantis_-_Zellic_Audit_Report.pdf) | Zellic | Audit | 2023-12 | stale | Direct | contract_name | matched | 2 | 2 | 0 | 9 | high |
| [spaces/76vAZHPcNKY10NzuKsC4/uploads/ap10BwpWhzNMappneMgr/Avantis audit report.pdf](https://586275454-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F76vAZHPcNKY10NzuKsC4%2Fuploads%2Fap10BwpWhzNMappneMgr%2FAvantis%20audit%20report.pdf) | unknown | Audit | 2023-12 | stale | Direct | contract_name | matched | 2 | 2 | 0 | 9 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3864] Avantis_-_Zellic_Audit_Report_1.pdf — matched: No reason recorded
- [3865] Avantis_-_Zellic_Audit_Report_2.pdf — matched: No reason recorded
- [3866] Avantis_-_Zokyo_Audit_Report_1.pdf — matched: No reason recorded
- [15577] spaces/76vAZHPcNKY10NzuKsC4/uploads/QugrQyVYa7gCMa8FUQdy/Avantis_-_Zellic_Audit_Report.pdf — matched: Scope section lists 11 contracts: Execute, PairInfos, PairStorage, PriceAggregator, Referral, Trading, TradingCallbacks, TradingStorage, Tranche, VaultManager, VeTranche. Audit date is December 1, 2023 from cover page.
- [15578] spaces/76vAZHPcNKY10NzuKsC4/uploads/ap10BwpWhzNMappneMgr/Avantis audit report.pdf — matched: Scope explicitly lists 11 contracts in the 'Auditing Strategy and Techniques Applied' section.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Avantis_-_Zellic_Audit_Report_1.pdf | Execute | unmatched — not counted | — | — | no |
| Avantis_-_Zellic_Audit_Report_1.pdf | PairInfos | unmatched — not counted | — | — | no |
| Avantis_-_Zellic_Audit_Report_1.pdf | PairStorage | unmatched — not counted | — | — | no |
| Avantis_-_Zellic_Audit_Report_1.pdf | PriceAggregator | unmatched — not counted | — | — | no |
| Avantis_-_Zellic_Audit_Report_1.pdf | Referral | unmatched — not counted | — | — | no |
| Avantis_-_Zellic_Audit_Report_1.pdf | Trading | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x44914408af82bc9983bbb330e3578e1105e11d4e` — deployed 2025-02-11 12:01:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Avantis_-_Zellic_Audit_Report_1.pdf | TradingCallbacks | unmatched — not counted | — | — | no |
| Avantis_-_Zellic_Audit_Report_1.pdf | TradingStorage | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x8a311d7048c35985aa31c131b9a13e03a5f7422d` — deployed 2024-01-27 10:44:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Avantis_-_Zellic_Audit_Report_1.pdf | Tranche | unmatched — not counted | — | — | no |
| Avantis_-_Zellic_Audit_Report_1.pdf | VaultManager | unmatched — not counted | — | — | no |
| Avantis_-_Zellic_Audit_Report_1.pdf | VeTranche | unmatched — not counted | — | — | no |
| Avantis_-_Zellic_Audit_Report_2.pdf | PairInfos | unmatched — not counted | — | — | no |
| Avantis_-_Zellic_Audit_Report_2.pdf | PairStorage | unmatched — not counted | — | — | no |
| Avantis_-_Zellic_Audit_Report_2.pdf | PriceAggregator | unmatched — not counted | — | — | no |
| Avantis_-_Zellic_Audit_Report_2.pdf | Referral | unmatched — not counted | — | — | no |
| Avantis_-_Zellic_Audit_Report_2.pdf | Trading | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x44914408af82bc9983bbb330e3578e1105e11d4e` — deployed 2025-02-11 12:01:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Avantis_-_Zellic_Audit_Report_2.pdf | TradingCallbacks | unmatched — not counted | — | — | no |
| Avantis_-_Zellic_Audit_Report_2.pdf | TradingStorage | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x8a311d7048c35985aa31c131b9a13e03a5f7422d` — deployed 2024-01-27 10:44:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Avantis_-_Zellic_Audit_Report_2.pdf | Tranche | unmatched — not counted | — | — | no |
| Avantis_-_Zellic_Audit_Report_2.pdf | VaultManager | unmatched — not counted | — | — | no |
| Avantis_-_Zokyo_Audit_Report_1.pdf | Execute.sol | unmatched — not counted | — | — | no |
| Avantis_-_Zokyo_Audit_Report_1.pdf | PairInfos.sol | unmatched — not counted | — | — | no |
| Avantis_-_Zokyo_Audit_Report_1.pdf | PairStorage.sol | unmatched — not counted | — | — | no |
| Avantis_-_Zokyo_Audit_Report_1.pdf | PriceAggregator.sol | unmatched — not counted | — | — | no |
| Avantis_-_Zokyo_Audit_Report_1.pdf | Referral.sol | unmatched — not counted | — | — | no |
| Avantis_-_Zokyo_Audit_Report_1.pdf | Trading.sol | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x44914408af82bc9983bbb330e3578e1105e11d4e` — deployed 2025-02-11 12:01:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Avantis_-_Zokyo_Audit_Report_1.pdf | TradingCallbacks.sol | unmatched — not counted | — | — | no |
| Avantis_-_Zokyo_Audit_Report_1.pdf | TradingStorage.sol | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x8a311d7048c35985aa31c131b9a13e03a5f7422d` — deployed 2024-01-27 10:44:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Avantis_-_Zokyo_Audit_Report_1.pdf | Tranche.sol | unmatched — not counted | — | — | no |
| Avantis_-_Zokyo_Audit_Report_1.pdf | VaultManager.sol | unmatched — not counted | — | — | no |
| Avantis_-_Zokyo_Audit_Report_1.pdf | VeTranche.sol | unmatched — not counted | — | — | no |
| spaces/76vAZHPcNKY10NzuKsC4/uploads/QugrQyVYa7gCMa8FUQdy/Avantis_-_Zellic_Audit_Report.pdf | Execute | unmatched — not counted | — | listed in scope | no |
| spaces/76vAZHPcNKY10NzuKsC4/uploads/QugrQyVYa7gCMa8FUQdy/Avantis_-_Zellic_Audit_Report.pdf | PairInfos | unmatched — not counted | — | listed in scope | no |
| spaces/76vAZHPcNKY10NzuKsC4/uploads/QugrQyVYa7gCMa8FUQdy/Avantis_-_Zellic_Audit_Report.pdf | PairStorage | unmatched — not counted | — | listed in scope | no |
| spaces/76vAZHPcNKY10NzuKsC4/uploads/QugrQyVYa7gCMa8FUQdy/Avantis_-_Zellic_Audit_Report.pdf | PriceAggregator | unmatched — not counted | — | listed in scope | no |
| spaces/76vAZHPcNKY10NzuKsC4/uploads/QugrQyVYa7gCMa8FUQdy/Avantis_-_Zellic_Audit_Report.pdf | Referral | unmatched — not counted | — | listed in scope | no |
| spaces/76vAZHPcNKY10NzuKsC4/uploads/QugrQyVYa7gCMa8FUQdy/Avantis_-_Zellic_Audit_Report.pdf | Trading | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x44914408af82bc9983bbb330e3578e1105e11d4e` — deployed 2025-02-11 12:01:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/76vAZHPcNKY10NzuKsC4/uploads/QugrQyVYa7gCMa8FUQdy/Avantis_-_Zellic_Audit_Report.pdf | TradingCallbacks | unmatched — not counted | — | listed in scope | no |
| spaces/76vAZHPcNKY10NzuKsC4/uploads/QugrQyVYa7gCMa8FUQdy/Avantis_-_Zellic_Audit_Report.pdf | TradingStorage | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x8a311d7048c35985aa31c131b9a13e03a5f7422d` — deployed 2024-01-27 10:44:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/76vAZHPcNKY10NzuKsC4/uploads/QugrQyVYa7gCMa8FUQdy/Avantis_-_Zellic_Audit_Report.pdf | Tranche | unmatched — not counted | — | listed in scope | no |
| spaces/76vAZHPcNKY10NzuKsC4/uploads/QugrQyVYa7gCMa8FUQdy/Avantis_-_Zellic_Audit_Report.pdf | VaultManager | unmatched — not counted | — | listed in scope | no |
| spaces/76vAZHPcNKY10NzuKsC4/uploads/QugrQyVYa7gCMa8FUQdy/Avantis_-_Zellic_Audit_Report.pdf | VeTranche | unmatched — not counted | — | listed in scope | no |
| spaces/76vAZHPcNKY10NzuKsC4/uploads/ap10BwpWhzNMappneMgr/Avantis audit report.pdf | Execute | unmatched — not counted | — | listed in scope | no |
| spaces/76vAZHPcNKY10NzuKsC4/uploads/ap10BwpWhzNMappneMgr/Avantis audit report.pdf | PairInfos | unmatched — not counted | — | listed in scope | no |
| spaces/76vAZHPcNKY10NzuKsC4/uploads/ap10BwpWhzNMappneMgr/Avantis audit report.pdf | PairStorage | unmatched — not counted | — | listed in scope | no |
| spaces/76vAZHPcNKY10NzuKsC4/uploads/ap10BwpWhzNMappneMgr/Avantis audit report.pdf | PriceAggregator | unmatched — not counted | — | listed in scope | no |
| spaces/76vAZHPcNKY10NzuKsC4/uploads/ap10BwpWhzNMappneMgr/Avantis audit report.pdf | Referral | unmatched — not counted | — | listed in scope | no |
| spaces/76vAZHPcNKY10NzuKsC4/uploads/ap10BwpWhzNMappneMgr/Avantis audit report.pdf | Trading | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x44914408af82bc9983bbb330e3578e1105e11d4e` — deployed 2025-02-11 12:01:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/76vAZHPcNKY10NzuKsC4/uploads/ap10BwpWhzNMappneMgr/Avantis audit report.pdf | TradingCallbacks | unmatched — not counted | — | listed in scope | no |
| spaces/76vAZHPcNKY10NzuKsC4/uploads/ap10BwpWhzNMappneMgr/Avantis audit report.pdf | TradingStorage | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x8a311d7048c35985aa31c131b9a13e03a5f7422d` — deployed 2024-01-27 10:44:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/76vAZHPcNKY10NzuKsC4/uploads/ap10BwpWhzNMappneMgr/Avantis audit report.pdf | Tranche | unmatched — not counted | — | listed in scope | no |
| spaces/76vAZHPcNKY10NzuKsC4/uploads/ap10BwpWhzNMappneMgr/Avantis audit report.pdf | VaultManager | unmatched — not counted | — | listed in scope | no |
| spaces/76vAZHPcNKY10NzuKsC4/uploads/ap10BwpWhzNMappneMgr/Avantis audit report.pdf | VeTranche | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | `0x696f9436b67233384889472cd7cd58a6fb5df4f1` | Token | token | $90,427,212.63 | Verified native implementation with $90,427,212.63 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 19 |
| upstream | 0 |
| standard_library | 10 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 10 own (10 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 43 unmatched
- Matched-own operational status: 10 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: unique_name=10

Fork inheritance lineage and inherited audits are included when available.
