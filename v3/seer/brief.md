# Agentic Audit Brief: Seer

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

- Project: Seer (`seer`)
- Website: [https://seer.pm/](https://seer.pm/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, ethereum, gnosis, optimism
- Contract surface: 259 unique implementations (400 raw deployments)
- Coverage basis: 0/16 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $983,763.97
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Seer. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 16 contract row(s) across base, ethereum, gnosis, optimism. Structural roles: 9 supporting, 7 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 16
- Structural roles: supporting (9), unclassified (7)
- Contract kinds: contract (16)
- Detected standards: erc165 (5)
- Frameworks: openzeppelin (8)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 26 contracts are derived from known codebases. 26 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x1ba2db142a69b2d0b0edbe666a9bd457e344d9b5`, chain 1)
- UnnamedContract (`0x2018038203aee8e7a29dabd73771b0355d4f85ad`, chain 1)
- UnnamedContract (`0x179d8f8c811b8c759c33809dbc6c5cedc62d05dd`, chain 10)
- UnnamedContract (`0x3124e97ebf4c9592a17d40e54623953ff3c77a73`, chain 10)
- UnnamedContract (`0x44921b4c7510fb306d8e58cf3894fa2bc8a79f00`, chain 10)
- UnnamedContract (`0x886ef0a78fabbae942f1da1791a8ed02a5af8bc6`, chain 10)
- UnnamedContract (`0xab797c4c6022a401c31543e316d3cd04c67a87fc`, chain 10)
- UnnamedContract (`0xd194319d1804c1051dd21ba1dc931ca72410b79f`, chain 10)
- UnnamedContract (`0xfe8bf5140f00de6f75bafa3ca0f4ebf2084a46b2`, chain 10)
- UnnamedContract (`0xd194319d1804c1051dd21ba1dc931ca72410b79f`, chain 100)
- UnnamedContract (`0x179d8f8c811b8c759c33809dbc6c5cedc62d05dd`, chain 8453)
- UnnamedContract (`0x3124e97ebf4c9592a17d40e54623953ff3c77a73`, chain 8453)
- UnnamedContract (`0x886ef0a78fabbae942f1da1791a8ed02a5af8bc6`, chain 8453)
- UnnamedContract (`0xc72f738e331b6b7a5d77661277074bb60ca0ca9e`, chain 8453)
- UnnamedContract (`0xd194319d1804c1051dd21ba1dc931ca72410b79f`, chain 8453)
- UnnamedContract (`0xf5ccbf74121edba492725f325d55356d517723b9`, chain 8453)
- UnnamedContract (`0xfe8bf5140f00de6f75bafa3ca0f4ebf2084a46b2`, chain 8453)
- ConditionalRouter (`0x774284d5cdfec3a0a0ebc7283ad4d5b33013c29c`, chain 100)
- FutarchyFactory (`0xe789e4a240d153ac55e32106821e785e71f6b792`, chain 100)
- FutarchyRouter (`0xe2996f6bc88ba0f2ad3a6e2a71ac55884ec9f74e`, chain 100)
- GnosisRouter (`0xec9048b59b3467415b1a38f63416407ea0c70fb8`, chain 100)
- MainnetRouter (`0x886ef0a78fabbae942f1da1791a8ed02a5af8bc6`, chain 1)
- MarketFactory (`0x1f728c2fd6a3008935c1446a965a313e657b7904`, chain 1)
- MarketFactory (`0x83183da839ce8228e31ae41222ead9edbb5cdcf1`, chain 100)
- RealityProxy (`0xc260adfac11f97c001dc143d2a4f45b98e0f2d6c`, chain 100)
- Wrapped1155Factory (`0xd194319d1804c1051dd21ba1dc931ca72410b79f`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 16; live-surface rows included: 16 (16 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 33/33 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/16 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 33 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 226 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Confirmed-live implementations: 33 of 259 unique; 226 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/71
- Verified + Unaudited implementations: 71
- Verified by bytecode match: 0
- Unverified implementations: 188
- Unique implementations: 259
- Raw deployments: 400
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (71)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AlgebraEternalFarming | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x607bbfd4cebd869aad04331f8a2ad0c3c396674b` | ⚠️ Unaudited |
| AlgebraFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xa0864cca6e114013ab0e27cbd5b6f4c8947da766` | ⚠️ Unaudited |
| AlgebraLimitFarming | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xa01e2785d2d04cc0a09bde9c3ea49bf0ad7811f2` | ⚠️ Unaudited |
| AlgebraPoolDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xc1b576ac6ec749d5ace1787bf9ec6340908ddb47` | ⚠️ Unaudited |
| CentralVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 4 deployments: gnosis `0x0ec66212a45f6b289e1965ac218d95b350c2b84d`; gnosis `0x4f49a8c1a2e9efa394151a67ee786b8d25f0f82b`; gnosis `0x7f22651ab788219d4dcecc637099a8209ad57894`; gnosis `0xde8d8f8d62f6baee1a265453e149d211fb249995` | ⚠️ Unaudited |
| ConditionalRouter | adapter | project_anchor | own_supporting | 0 | gnosis | unit-392419 | `0x774284d5cdfec3a0a0ebc7283ad4d5b33013c29c` | ⚠️ Unaudited |
| ConditionalTokens | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xc59b0e4de5f1248c1140964e0ff287b192407e0c`; gnosis `0xceafdd6bc0bef976fdcd1112955828e00543c0ce` | ⚠️ Unaudited |
| CreditsManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 4 deployments: gnosis `0x17592efe59a318a6b0afe32145ee04eafeea8a61`; gnosis `0x43bd67ab2b296f8987b9ff929a3856cd7143af17`; gnosis `0xb29d0c9875d93483891c0645fdc13d665a4d2d70`; gnosis `0xfeb801b97b10625fabee2a7839cddb6e37c9768b` | ⚠️ Unaudited |
| Disbursement | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff2e231b3d6260937edc698da5f77b6d3d377370` | ⚠️ Unaudited |
| DutchXCompleteModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba22d73c079ceb97db93f2effb1f1054fe1cfcd6` | ⚠️ Unaudited |
| DutchXSellerModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3ebeb3a6a535131f2861f866d98d555580aa84d` | ⚠️ Unaudited |
| Enum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1e1ae60607f24a6647d0339050cb69c312f43ee` | ⚠️ Unaudited |
| FarmingCenter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xde51ddf1ae7d5bbd7bf1a0e40aaa1f6c12579106` | ⚠️ Unaudited |
| FarmingCenterVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xf18a78e9e6de7f85af7b1f87b61ed4b4de66f00a` | ⚠️ Unaudited |
| Fixed192x64Math | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75a6d6251511af081f77f2b531c14808fb3805f3` | ⚠️ Unaudited |
| ForesightCredits | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x09e7014d2c15eb8c5ee25853fe6842ff5e2c94f9` | ⚠️ Unaudited |
| FPMMDeterministicFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x9083a2b699c0a4ad06f63580bde2635d26a3eef0` | ⚠️ Unaudited |
| FutarchyFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 3 deployments: ethereum `0xf9369c0f7a84cac3b7ef78c837cf7313309d3678`; gnosis `0xa6cb18fcdc17a2b44e5cad2d80a6d5942d30a345`; gnosis `0xecfbc2272c85dee97d7816cb25a4ffb80230942f` | ⚠️ Unaudited |
| FutarchyFactory | registry | project_anchor | own_supporting | 0 | gnosis | unit-392426 | `0xe789e4a240d153ac55e32106821e785e71f6b792` | ⚠️ Unaudited |
| FutarchyProposal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x0956b70ac0eca45db9661a1cee96b2e7062d8a1c`; gnosis `0xbba6c5de2685150189b1393df6329af4df05be7d`; gnosis `0xd342be91a711e70736c4f0880af3438b835eab66` | ⚠️ Unaudited |
| FutarchyProposal | unknown | project_anchor | own_supporting | 0 | gnosis | unit-392427 | `0xec4fb999db0e8ca28011d85ead177810055b484c` | ⚠️ Unaudited |
| FutarchyRealityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0xa638f22cdd13013494971b0e1325718aa45280dc`; gnosis `0xb5786fa17cc3e262d855240a074978c133438e7b`; gnosis `0xc64c753685e744ce6905ed76c66b5eb778025d0f` | ⚠️ Unaudited |
| FutarchyRealityProxy | unknown | project_anchor | own_supporting | 0 | gnosis | unit-392418 | `0x03e1fcfe3f1edc5833001588fb6377cb50a61cfc` | ⚠️ Unaudited |
| FutarchyRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 3 deployments: ethereum `0xac9bf8eba6bd31f8e8c76f8e8b2aad0bd93f98dc`; gnosis `0x7495a583ba85875d59407781b4958ed6e0e1228f`; gnosis `0x74c4df5021738ac18dc56fe5917bf9146dc19c7c` | ⚠️ Unaudited |
| FutarchyRouter | adapter | project_anchor | own_supporting | 0 | gnosis | unit-392425 | `0xe2996f6bc88ba0f2ad3a6e2a71ac55884ec9f74e` | ⚠️ Unaudited |
| GnosisRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 11 deployments: gnosis `0x1c676107eee61cc2b400df92ae0fe08ea818ea9a`; gnosis `0x1cc00aacd2ff107a4936b99474bb31bd9fd75b61`; gnosis `0x2070b8ab2de4001f48f7404433772f8cff59e140`; gnosis `0x790510148176b74c881928da0d0b1ff1d990509f`; gnosis `0x7babb8aabe1f34c29083251e4f23d314ceeb281d`; gnosis `0x7e9757b3358927af94c0c16b3093136a42d7f72a`; gnosis `0x8046a07bbcfd564de263837024f82d3bd977fa79`; gnosis `0xacf776b879b8fda25492302b68b9b2c6b99c6a70`; gnosis `0xe94d6564ec3c4918cf4401fd7ac444c5c4837389`; gnosis `0xf68ff43b643df752132463aa1dbc9c75d7349d07`; gnosis `0xfe8bf5140f00de6f75bafa3ca0f4ebf2084a46b2` | ⚠️ Unaudited |
| GnosisRouter | adapter | project_anchor | own_supporting | 0 | gnosis | unit-392428 | `0xec9048b59b3467415b1a38f63416407ea0c70fb8` | ⚠️ Unaudited |
| GovernedRecipient | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 8 deployments: gnosis `0x126afb5e8218ce49f34317a3f3ffefde5bca2dc4`; gnosis `0x5693ca984c3580fe2e5c61f0d6096d4ba57d6872`; gnosis `0x6beae26e4e772d824b514711d1cd8ca226558350`; gnosis `0x8da08aa544b8016ff9530f625ae8c6c0dfd4792a`; gnosis `0x9e850eb9699ac8417d3401ff1d89115214667b19`; gnosis `0xa5354485d6945c70f4e2e7f121195466b032e0a6`; gnosis `0xa70f53f6f00e81ddf4514d0556248d93b2777a2a`; gnosis `0xceeb6a9013699199aacd44ab87c4d6abcf583183` | ⚠️ Unaudited |
| LiquidityManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x031778c7a1c08787aba7a2e0b5149feb5decabd7` | ⚠️ Unaudited |
| LMSRMarketMakerFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37186b5d78ebb1f37bc56e5dca7f18ab98256c4b` | ⚠️ Unaudited |
| MainnetRouter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-392406 | `0x886ef0a78fabbae942f1da1791a8ed02a5af8bc6` | ⚠️ Unaudited |
| MainnetRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe8bf5140f00de6f75bafa3ca0f4ebf2084a46b2` | ⚠️ Unaudited |
| Market | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392407 | `0x8bdc504dc3a05310059c1c67e0a2667309d27b93` | ⚠️ Unaudited |
| Market | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 31 deployments: gnosis `0x0b5f90febc2fc44c43985b2a712f159ca059d93a`; gnosis `0x0d479ac08488d62076c22706bc5737edd6a3ac09`; gnosis `0x20a3b1c26680ddcb29739d15597f5380961bc2d2`; gnosis `0x21a72f30d9e2e80533ef1cfea00aa8186ad1d6a3`; gnosis `0x225030be0350f324ec067f6427bec363ae117711`; gnosis `0x2324741962ff5b8331dbbdc88de8cf1c06fa5ca8`; gnosis `0x60eb95536f44c696d115d943ab98c26cbfc110bf`; gnosis `0x612f809c9a09c2cd64aaa37fa9e858391707bc1e`; gnosis `0x61cdb9e8fb29dcb33183c044d882a64dca32f459`; gnosis `0x6ac12ed768ab387081c2c18963285d780b4ef581`; gnosis `0x829c911551d4cb55dfbeef1447dc7b879088dbcb`; gnosis `0x87aabb417e1a195c1c5be24a6132a50a2de0baf7`; gnosis `0x87cf5c07a29a03f0735736c58f84126e21d0173c`; gnosis `0x8b8de54ae884058b0f3767828ff3686c20454778`; gnosis `0x9510c9bad4b5831f86d771403365a83f619e8aeb`; gnosis `0x9b6cca98ebb9be434b262f3c402daa3a287d8de1`; gnosis `0x9baeeeb80c2eefa5825664955945bb8162cda933`; gnosis `0x9e2272ab091d9f9f1aaa9f17c7318c692b24ad10`; gnosis `0x9ef70c6acd328fdbf08e0efdfd3460ff2680bc7f`; gnosis `0xab903cdaf1068e86018f098c369b0a645c3f98ac`; gnosis `0xabe35cf0953169d9384f5953633f02996b4802f9`; gnosis `0xbbf8f7e40a9234d965f59802c1b3720b21bcc32e`; gnosis `0xc57764377e06fa317457a123b2c25f031c088e17`; gnosis `0xc72f738e331b6b7a5d77661277074bb60ca0ca9e`; gnosis `0xe0d2852b59856e183b8bac05b7e172c57af51915`; gnosis `0xe820d073f8885f4a24328ba9fbb8a745114bb647`; gnosis `0xf279890e57bd23ca24ad45078b74065db7bb134e`; gnosis `0xf444a3a29dda175cf9b59d46af66eee7668423fd`; gnosis `0xfbebbbaa625a345bf6d310cd12ad4483e0cd2df0`; gnosis `0xfc5e5544bf8856ccf95857fef54cde00c8cb63ce`; gnosis `0xfe414db77da686f2050877565b7223b7da4b7c36` | ⚠️ Unaudited |
| Market | unknown | project_anchor | own_supporting | 0 | gnosis | unit-392421 | `0x8f76bc35f8c72e5e2ec55ebed785da5efaa9636a` | ⚠️ Unaudited |
| MarketFactory | registry | project_anchor | own_supporting | 0 | ethereum | unit-392404 | `0x1f728c2fd6a3008935c1446a965a313e657b7904` | ⚠️ Unaudited |
| MarketFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 21 deployments: ethereum `0x3124e97ebf4c9592a17d40e54623953ff3c77a73`; ethereum `0x336695ec9efbafd6322fb82eaadbcda02e38f348`; gnosis `0x1246c7e5ac59ba73a45a62e3081b548f02f58e90`; gnosis `0x2dbe07d6a22c8d7e397df5a01888148857582467`; gnosis `0x2e3937ceff8e0ac5563b5d212bbe8f6cb8ecb68e`; gnosis `0x47fc00bbfc6dcfb64f33405517e65ca9293a78fb`; gnosis `0x4c98aa5cf10e8e202335ad0665ea36b3fa8e6ed0`; gnosis `0x69ad6000b76532cf5e91c5a60aa296815cb792b3`; gnosis `0x724478b8128c7e8e4f08d9220ca97b7fecd86c09`; gnosis `0x846f8febda71f730cd968b655b2998f57592e6c5`; gnosis `0x8dd6faabfe756e117b018d71cc62cbc69e96e949`; gnosis `0x9498d267fa9125d9f35b36d47b9ebde5a9c7bcc8`; gnosis `0xa9912171c79200f9572fe0abd209532a0712ce33`; gnosis `0xaa43e743a24262abbedb247e08f9357fc0a82ed7`; gnosis `0xab797c4c6022a401c31543e316d3cd04c67a87fc`; gnosis `0xc73323208740452d3856c7ff65fa527af2b1131c`; gnosis `0xd1220eed2a71bf5415b7c1a925ba6c1884821948`; gnosis `0xe619f55fa792f04d474788237fb47d802214a2e6`; gnosis `0xe61f8ca04d3c92313a22257706cef7d8ed13a788`; gnosis `0xeb021407f8b7fbae4feb90f1dac5aa0b2fc20e6d`; gnosis `0xf365bee37a5624d1053eda57c40f85048f9818bf` | ⚠️ Unaudited |
| MarketFactory | registry | project_anchor | own_supporting | 0 | gnosis | unit-392420 | `0x83183da839ce8228e31ae41222ead9edbb5cdcf1` | ⚠️ Unaudited |
| MarketView | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392408 | `0xb2ab74afe47e6f9d8c392fa15b139ac02684771a` | ⚠️ Unaudited |
| MarketView | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 15 deployments: ethereum `0x44921b4c7510fb306d8e58cf3894fa2bc8a79f00`; ethereum `0xab797c4c6022a401c31543e316d3cd04c67a87fc`; gnosis `0x0427d45906c8e1c156d8e06c1fefc4584b916d9f`; gnosis `0x3e202f8643f47f2d4ff85ab43b34cfb2f757142a`; gnosis `0x4ba0c4cf195695bffce0f349953b6bc8dfdd4cc4`; gnosis `0x5f26f0964127b45170f8b811375c5334b1a5bbba`; gnosis `0x783b4bc2cbd5221dd95f7fdd9505d276f02244ae`; gnosis `0x995dc9c89b6605a1e8cc028b37cb8e568e27626f`; gnosis `0xbb85caa9a52af56239e57b2392dd3df513dfdf8d`; gnosis `0xd1f885c2d368a2700c8edf74d23f34d5ef36414a`; gnosis `0xd34b071ee9aa581cc4fb6bdb854b47340be849e2`; gnosis `0xd45d4b7736bb7158aac2fc12bc3997c5e95d35e7`; gnosis `0xda834fe8ecd5f56c03429a7ff2adf541f99d9dbf`; gnosis `0xe1834d6aa6d075596e07db17fe71e9ed36475172`; gnosis `0xfe6f08b0c9ef09738814dcaacb66b06f06a56aa0` | ⚠️ Unaudited |
| MarketView | unknown | project_anchor | own_supporting | 0 | gnosis | unit-392422 | `0x95493f3e3f151ed9ee9338a4fc1f49c00890f59c` | ⚠️ Unaudited |
| MultiDrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 12 deployments: gnosis `0x0838bc1441bde6bf6fbb88ebde417f4f25b704ef`; gnosis `0x08ed8d358d29d2fca81916ce7a725ed6c8b0fb2a`; gnosis `0x0c556afe7d7214fc9e7ab906014db695b5a2e795`; gnosis `0x129de273d17ae580850f0e3b296fd5cd6ac9c29e`; gnosis `0x28abd3190674dc57e4d3bebeec22f78d121810d5`; gnosis `0x39c06ad7db7f3085a2e7bee711453f6c3855cb6c`; gnosis `0x3c918dc30b0ee1461682ebc8d3a51b568e8905d4`; gnosis `0x42a305498e666050608fbe1e1b54a485ed7bb10b`; gnosis `0x53dfb9e2747dfc9ade7c01916ee29816b7ab33c6`; gnosis `0x714615b563a372edeb75f602adf01a79145d1953`; gnosis `0x8eca58628d3b5808c8dd2beced0a92add1c6b74e`; gnosis `0x91a4955a0a22dddbb071389d1ff2631531e8d95f` | ⚠️ Unaudited |
| NFTDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x586c7b71721efc126b82acc1f809159acc31b545` | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | `0x91fd594c46d8b01e62dbdebed2401dde01817834` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0x023b8c515aca703a23627a2bcdaa9c116d08866e`; gnosis `0x215694e4116b144c3d4f3a1e8e33754a6a2f7525` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 2 deployments: gnosis `0x3f03d5c3bc06c6b6905cc23c6925ded79237b2fd`; gnosis `0x63f6984880d403125f355311dbef0651845fb658` | ⚠️ Unaudited |
| ParimutuelVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 3 deployments: gnosis `0x506dcc9781b895b02559014544a83bd39f0b6137`; gnosis `0x659a901826eb87b869e78b3d840ecb36242810c9`; gnosis `0x9627ae0e82bc7e4e410aff50a090dfca85ecdf69` | ⚠️ Unaudited |
| PickemSlateFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 4 deployments: gnosis `0x2a9fa7bad74e85d91c8f9fc1258f065e285b0cad`; gnosis `0x4df41e864657791c0b3c5f655b4104a1ec1612f5`; gnosis `0xa2cd7c895a4bc1bca1cd1455a6cdb8f7e1d9bb67`; gnosis `0xfe5754856adcee110c189d5c20adb26481aac3c3` | ⚠️ Unaudited |
| Quoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xcbad9fdf0d2814659eb26f600efdeaf005eda0f7` | ⚠️ Unaudited |
| Realitio_v2_1_ArbitratorWithAppeals | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x179d8f8c811b8c759c33809dbc6c5cedc62d05dd` | ⚠️ Unaudited |
| RealitioArbitratorProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12bb49deb8f293435e27f6f4ab140184604ce346` | ⚠️ Unaudited |
| RealitioForeignArbitrationProxyWithAppeals | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5ccbf74121edba492725f325d55356d517723b9` | ⚠️ Unaudited |
| RealitioHomeArbitrationProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xa9fc6f0f2a85fbad7eeec4a63c49014a0a8f1d3c` | ⚠️ Unaudited |
| RealitioProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x57d020f4b5517f79711a8298e2d9b4516210afca` | ⚠️ Unaudited |
| RealityProxy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392409 | `0xc72f738e331b6b7a5d77661277074bb60ca0ca9e` | ⚠️ Unaudited |
| RealityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 6 deployments: gnosis `0x132bcfb0003234a791deb118f8271bcfda4037dd`; gnosis `0x41ab65d6e3a0d015607cb765e1c20621a66aa10c`; gnosis `0x691215e578dfe81fa7479814305fcdfb5b2c7d63`; gnosis `0xdec7c093623e971ace6b023a15548b85a1c4a210`; gnosis `0xee30cb9d605e04b4068fc09b30e182cf03503490`; gnosis `0xf7e64845a8737466cad5687ffd718ef242e6e9af` | ⚠️ Unaudited |
| RealityProxy | unknown | project_anchor | own_supporting | 0 | gnosis | unit-392423 | `0xc260adfac11f97c001dc143d2a4f45b98e0f2d6c` | ⚠️ Unaudited |
| RewardClaimHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8be713fee0b3f437be4793a23f96fec7eae4316` | ⚠️ Unaudited |
| Seer_LP_Point | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 6 deployments: gnosis `0x26427dde0301388a906c77647e4bd8d1e147eb4f`; gnosis `0x27091224891de2bd8248e921617a035a565659ab`; gnosis `0x85e39f5b984de2b31be21cb6d56c317c51a9edb3`; gnosis `0xb477c4c1e7bab20176c7389ac858389fdd7b92ad`; gnosis `0xbc9a9424cdb3644e80bad621b7a5736aed174d66`; gnosis `0xef116964cf46037f27cab8b5fb15613a2142a86f` | ⚠️ Unaudited |
| SeerCredits | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 3 deployments: gnosis `0x3a0d8671efcbc172edbe32f91169bbc984dc607c`; gnosis `0xedd48e43ebd4e2b31238a5cba8fd548fc051acaf`; gnosis `0xf67736598281f913f4f27a8a2e9cd0c8e0cd466b` | ⚠️ Unaudited |
| SlateFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 3 deployments: gnosis `0x2068651ac24439f1cbf4bc0fe926972d17edad3e`; gnosis `0x31ac36cbaa3e7e57a1542f6623fc775ec86ecbac`; gnosis `0xb5a01f794418e51c5872861759470b3be622f1d9` | ⚠️ Unaudited |
| SportsSlateFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 7 deployments: gnosis `0x293dfe3ffe40454598ebc745d46da3d3c44640d1`; gnosis `0x6938ef4d41a4ae162c0a1f742341da16c4dc070a`; gnosis `0x7e53af55d7dbb0711719066373a1440299a732d8`; gnosis `0x8a670acc427c0d8ec168def7c8ece8ef977f2999`; gnosis `0x931fc621ecabd0894a5f9a5b0af9cc358f3fc6c4`; gnosis `0x96f61c636c0373cf0068e386408e61f8b32a3619`; gnosis `0xca6dbafb77666a0a96983a904a28cdb8f70340a3` | ⚠️ Unaudited |
| SwapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xffb643e73f280b97809a8b41f7232ab401a04ee1` | ⚠️ Unaudited |
| SwaprSavingsXDaiRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x4f774e1dbddbf03351204f1f53f160ce108a09aa` | ⚠️ Unaudited |
| TradeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x14a3f8e6d7be4645f0ef7f92d1e5ab17d50a4bd0` | ⚠️ Unaudited |
| TradeQuoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x7a797a253712c0ac8dfd9271e18f8cc3460607c1` | ⚠️ Unaudited |
| TradingCredits | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 3 deployments: gnosis `0x02d727a6a93eb45d2c20f6d9c7a97ae8fce2e5c2`; gnosis `0x075b4c46f87daf3969ada24643257476b3decc15`; gnosis `0x122f6bf90fb8051911005c1407f81e9572ca35a8` | ⚠️ Unaudited |
| UniswapV3Factory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f98431c8ad98523631ae4a59f267346ea31f984` | ⚠️ Unaudited |
| Whitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3af2ae62f0d3353c9f15b7fe678ccdaf2b2157c9`; ethereum `0x5250b9241d0c63a2b60afb7f2b24b12d94d8ae7d` | ⚠️ Unaudited |
| Wrapped1155Factory | registry | project_anchor | own_supporting | 0 | ethereum | unit-392410 | `0xd194319d1804c1051dd21ba1dc931ca72410b79f` | ⚠️ Unaudited |
| WrappedERC20Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 5 deployments: gnosis `0x383753af6ca47e1b46b000e07ab210fd04f2887a`; gnosis `0x5bc8dde5d07c6bf24911240aa6f9b0190ae3b557`; gnosis `0x940b602a3891fbb41650e83b6cf8aca0f1b3c2f1`; gnosis `0xb105c8444bd64308d747f108b01df27c74dcae3c`; gnosis `0xd0ee785c434eb42e1d439e4fd75334a4c66d6c40` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (188)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a1babf37a61174b30f17244e9dd55a729f96d6d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392403 | `0x1ba2db142a69b2d0b0edbe666a9bd457e344d9b5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392405 | `0x2018038203aee8e7a29dabd73771b0355d4f85ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25c676314988473da0d3312a173979b68e64721f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4239987bb8c9f7334ae7c16344dda2b2b75a6671` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47a38ccaec0a5e127decb2b2635973241e335a77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x880d952cbeb0ee71905bc2dab0951f62e6006788` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd88e1fa7420be158b35e815c3ba07cd743c6bdb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd7b94fdf42affcd99ec2628ba1661f8eb9bd8b44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe97b78ffd0ee65e389985159f2033b90248a9114` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeaa5a221f4406951f748cc87527a15e6f2d6d709` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-392411 | `0x179d8f8c811b8c759c33809dbc6c5cedc62d05dd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-392412 | `0x3124e97ebf4c9592a17d40e54623953ff3c77a73` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-392413 | `0x44921b4c7510fb306d8e58cf3894fa2bc8a79f00` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-392414 | `0x886ef0a78fabbae942f1da1791a8ed02a5af8bc6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-392415 | `0xab797c4c6022a401c31543e316d3cd04c67a87fc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-392416 | `0xd194319d1804c1051dd21ba1dc931ca72410b79f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-392417 | `0xfe8bf5140f00de6f75bafa3ca0f4ebf2084a46b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x00ca76a758c12bc3088de09eba5957a9970dede3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x016e6239e89fe558da26931c12e7f177dff7dd0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x0236524c5e90c27ae6e996a1a8a113927990b191` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x02b547867ed03771969d53b677d0dcaadb1dcbcb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x030e3bc80f289deb191ea16f42c0bd26a967269d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x03835bee471fc5ff81ed9a6cb39342e93a3017c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x03cb705dbd397f62501bd1bfc67e57810a43acf2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x03d03464bf9eb20059ca6ef6391e9c5d79d5e012` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x04cdb6a4e6f91dedba50c3c0efa040549bceccde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x0791e89ed43b895a9acc653dfdb0cdcc67497408` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x07dd329293000003a159153f6ed12ff7c3a23981` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x0956b70ac0eca45db9661a1cee96b2e7062d8a1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x099efd8cd80b344702fbfffa81dcaeaee9b91ff4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x09e84caddffe54e6d611baa74ba6366dc3cd9ef8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x0bd27172bd507df93178022998a82b284d53d101` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x0d32733ef1abea8f10dabc26f3851759994015c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x0db8c35045a830dc7f2a4dd87ef90e7a9cd0534f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x100d17499a93f3077a841850acac1f12862f4460` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x12bb49deb8f293435e27f6f4ab140184604ce346` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x13ba6a99925248287a642d4a2aa79266fea3d070` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x14662a441c72cbe609155a02a5b433fc0d4c1443` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x16a4344b444d0ba00c869f519d326ddebc42e2ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x17181c00300b674280a96216242801cb5477b6c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x1773750876d882af10365cb08d5e60cd6bad9b1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x179d8f8c811b8c759c33809dbc6c5cedc62d05dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x189d7090efaddb13098ecc834358cfbc489e33ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x19b1a763b8d2b75a17312f27cd719d2691947319` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x19ecfa2e074a3fee5cd89e6f4a292c3728b40065` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x1b2a23405b7401ffa9568f9541527f621e3f3ea6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x1b780d55694db1545402c5efdf043478ceb72dc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x1ba2db142a69b2d0b0edbe666a9bd457e344d9b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x1ea2e05aca8a4b24b541f6ca7f73292b2fad0825` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x1f728c2fd6a3008935c1446a965a313e657b7904` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x1ff0e9b2eb93614966ead1df42ca5ecc2c8596ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x204a20a508925601de0e0ee6b1114176052f8be7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x221456acfd185ee168052b3da899939303775c7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x2342b838f9fafb14789b91d6702123a481496041` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x25a3e57e3070ea5b43e14f7796fa13806bc9da05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x2831df5db56cf591265f4c1ae6858667730f391d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x28f2938c64c57d265fbb56906a46bd8e45ceb77d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x2a59619b33895108c4fd08922e8e5b135b16c241` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x2b8ad6c8730651d206e5337bce5f97d1e71a4ce9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x2cb70f640fc31bdb4b70781db96eb89996408120` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x2db41ea81e2f6611a29dbce74f3c797606180a4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x2e51bf252fb4c844d82236ba27f28e8b190cea37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x3038ad1187450acaa9d2da060a97e750a66ff0e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x3124e97ebf4c9592a17d40e54623953ff3c77a73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x3332bbed37cfddccd54d7fe3f36b649ee908550a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x336695ec9efbafd6322fb82eaadbcda02e38f348` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x34578a6a464195e6ddc6e3c937ff9f52ee449f59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x38801c48047e7a92b82e12d697d08951b02fbb44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x3a4634fb2e9fe707b1c1ce6e72d3aff4a858ccab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x3dc2a253533dc88e9fd6dfec8810bab832a196e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x4115c995fbfc8c49103d29dfb9a7a8bb9559618f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x43a3658f219da156c84e19cea7b3494df92a9ed5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x43c1a38d4c4138c0af8d0f03729085858dab3e4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x43f30640c462f41b1846ab29f698f50b5b4f6e79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x44921b4c7510fb306d8e58cf3894fa2bc8a79f00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x478189dc3905a08e456c348905c1e5b03de8023d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x4cf6471b139d3d2da3218236f800263f5e76368d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x4f547e64b1e1fb5a82895e2eaf877c227e92fb86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x55bae11ea80d536262afad682294c758c4ac426a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x5759c084e284b0c6f34405e5ae4b421910099735` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x5817da163b9fd0affb410bc67b951dd01c561d27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x591af101caf2b7351c74c25f5e64bc2e062d2843` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x592e6d844e422fa6262369e4682b5f9553a6b232` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x5a863800f7974f5feeb1b310f8dedbf93e8cf9df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x5be39c00fb89688e8c38732fb204b084ca5f8965` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x5eaa42d3de8c865e9bc3866a568c17f341d486e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x6082be2160c0ae71672e69ada7a3876a2a1b5f3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x615fbbd63bab20266e0748fca97d14054c82018a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x6437529b2973ae3e59c505003abc5e4d165a2d04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x64a4f9956e2eae975ed8421e8cb8257cd33b2134` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x654e8e99aee71c1fe116ca6413e857d3230fd3e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x70664c4cefc3712390cc58d2c120c6a599da8900` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x73f98977ba13ad71275ba5bba0189e9dc2dc42b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x7563c95e6837d3256162ecaa7b5984681515eaa3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x769578e626f00a3257d2a95da514eb3f1ab8305d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x7e1acbb3c118a57e25c5fdcb1bfeae7443dfd1db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x7ece7743cc476b4343919b85b2c53aff50ed3b15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x7f40260b0c163da7e287c601d88ec444e1a3a41e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x8030a061afaf3e2b9a0e193a9c871513994fe3ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x806d57e74d081c981375cd8048b060085a4ee9af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x821d40673293a5a957a05b4895f92a9aba8528e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x841f325973be1d653d1f36b4c0d74fd9e818076e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x84c6fc8bfd5c21ba5083cba9cbc5f270272aee5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x85306c76d1e6cd63bd92c1a1e073d4e002ea3598` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x8819f224f7ba523333a6a66d4ffc082f990cca73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x886ef0a78fabbae942f1da1791a8ed02a5af8bc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x89038bd3c429cbe292ce8dfea491ace2a4274273` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x894f1e9b341a400896d7e482f8877539cbb304e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x89527d0ae0637e008a57569336be2a83fba76910` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x8a9647951c475dd2dd226a3e2eade63da2eac6c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x8b4ad95bf7eec6ef42e56830e7dae1adc73f9db3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x8e81fea3ba4e27d407a5f694ab6ccdd59e3f7261` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x8f83a80769b8e26d2644dc77fa8333e3b123cc8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x8ffdefeb3b3c4cd59e63f2e746b5a0fb7332ac58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x9784944ed0a0e07fb6d941fec275e60972dd2b57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x98a164191ddf48689acff65cddd7a97f560b4245` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x99dd9b5c52ad59247b8ede089f17eb9c004b4474` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x9aea5a5a698e08aaf06bfbad4d25ba2cf188ccad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x9b1f039a7eca6023043e4c80c408bdca85f49ee2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x9d2166667f497b57d1ce356ed4c6e244b511f7c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x9da1fd006377ddf51ba2222f8dafc95bf8000ddd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xa1a9868b5dd0a7732236ac4774d69815cdbeb0f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xa2a7b2f23da9b3ef0fd5850959e37ab403e5da5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xa48b4dfe87bba08de26f9a95256f9a2fba904a9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xa591807f431c0ae15846e253a1d1915c038fa1cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xa638f22cdd13013494971b0e1325718aa45280dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xa6e4286c32e68679181beacaa8384894550c6f06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xa7f7117a38f78a2bc5834f59f092f57d4d333a56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xa834cc1e3ba541187c81074fe7929681eca75e9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xa8457b25e99f44fa3eb72fe7b15c1c15fff61e4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xab964d63bc22702c28274474e64791dc3ab8ea92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xac9bf8eba6bd31f8e8c76f8e8b2aad0bd93f98dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xace2c61e250c2d019b9ed7fef6a441022d6ec7d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xae300296486a63621f7f31e1b94ad22d32347dea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xafc6fde59d84b75978f66637cb26f8eb48ede6f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xb0f1d26ed9419dd810876ab1143608627401270b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xb19126c2cb2689429a0276b423e6e75be250e141` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xb2ab74afe47e6f9d8c392fa15b139ac02684771a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xb437217cf8338c0d958fa6db654aa6be291a7394` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xb5330e756d0a991071d4921e0c53fd7d61154573` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xb745fe2ee8d44e608d1ea56aec5dfaa58d5b3202` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xb89733665e63ecc1256e0729a9d950ef949450b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xb917d735c9e83afe54b734adcb9c2c8020522476` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xba333adae501fd39970ff0e0679a94a26a877970` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xbaabc8820d69ac47c804af11668331b0dd706fb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xbb60619ab05eb99868bc6bbe3093d5fac704759b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xbdf42243d843d34204f50cec4f4308e432b511f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xbe0034964b0c524c639c4692e5ac07a21ec8af7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xc2d432c0d11a08306d768ecfdff3141b9d9d063d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xc7b072b4368e7a221a2de74dac549edcef34cfa3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xcbbbabd15895ae7b2e28be6f250729098f1c69fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xcbec935552b7e61e188fe8d5c00df0dadced59ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xcd07b09bafaa5277da52c8065c48b424f0a1550b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-392424 | `0xd194319d1804c1051dd21ba1dc931ca72410b79f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xd1f878b27041cc14832586686a0ac81a0c215143` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xd248807aef8915ac44d10b122df57a5bcc02d415` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xd4e7f4c595d047872fcd4b13d60d05632ab8eac9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xd6cc87307306539cd03086f613823da78a5a5ea2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xd7e119c920d0e06b4a51a4841b1047c84b7f6917` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xd90546eef456113e7fdece7b408cbd6164900cc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xdacc7669a94106fca4fe0a61b26a0417bf1fb78c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xdd193f64dbe184891f0beb3510ad69b5dc849bd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xdeb5dc052e55bf81c6d75cd47c961e0b280b3791` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xe1e55a38426e478d842e2f5ba958ab75a21647d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xe36967c5c9938402bbf7b773c550f20fd371007e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xe5a4dfff551add6efd317b11e1e3aab556add300` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xe81c8b6e1cf8bc89d362770ba7c4c5038f162568` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xe939dd8346ac97e647201064d104189a52aec4ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xe9d43df440604b16d814c3ae08b9dd04d44414e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xeb311c67595ac5240f2813c15e476771229dcf5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xefa6cb3804303decfa8677a373cf9c944af0f485` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xf06f41b56afa578ab5c695534fb40645016f99bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xf1e3157185bbbdc4dc7d71a89e37aa1dfb461fd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xf5ccbf74121edba492725f325d55356d517723b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xf8b24dd252516d967087851bb3eb636cc363ff82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xf9369c0f7a84cac3b7ef78c837cf7313309d3678` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xfafaf01443c85d184d76610eb6a09e34ec33cd15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xfb4c45a988f70d0f8efb5ab3a7feb00d463c16b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xfdafab0f23b8f9e6662d2504ee2e89f3c0d5aad3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xff62fb742b2b7699cb544c927b6cb841ca015199` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-392429 | `0x179d8f8c811b8c759c33809dbc6c5cedc62d05dd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-392430 | `0x3124e97ebf4c9592a17d40e54623953ff3c77a73` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-392431 | `0x886ef0a78fabbae942f1da1791a8ed02a5af8bc6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-392432 | `0xc72f738e331b6b7a5d77661277074bb60ca0ca9e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-392433 | `0xd194319d1804c1051dd21ba1dc931ca72410b79f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-392434 | `0xf5ccbf74121edba492725f325d55356d517723b9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-392435 | `0xfe8bf5140f00de6f75bafa3ca0f4ebf2084a46b2` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [audit-reports.md](https://seer-3.gitbook.io/seer-documentation/other/audit-reports.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21122] audit-reports.md — no match: The provided text is a documentation index page listing audit reports for a 'Core' module, but it does not contain the actual audit report content. No contract names, file paths, or audit dates are identifiable.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| gnosis | `0x774284d5cdfec3a0a0ebc7283ad4d5b33013c29c` | ConditionalRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0xe789e4a240d153ac55e32106821e785e71f6b792` | FutarchyFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0xec4fb999db0e8ca28011d85ead177810055b484c` | FutarchyProposal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x03e1fcfe3f1edc5833001588fb6377cb50a61cfc` | FutarchyRealityProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0xe2996f6bc88ba0f2ad3a6e2a71ac55884ec9f74e` | FutarchyRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0xec9048b59b3467415b1a38f63416407ea0c70fb8` | GnosisRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x886ef0a78fabbae942f1da1791a8ed02a5af8bc6` | MainnetRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8bdc504dc3a05310059c1c67e0a2667309d27b93` | Market | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x8f76bc35f8c72e5e2ec55ebed785da5efaa9636a` | Market | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1f728c2fd6a3008935c1446a965a313e657b7904` | MarketFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x83183da839ce8228e31ae41222ead9edbb5cdcf1` | MarketFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb2ab74afe47e6f9d8c392fa15b139ac02684771a` | MarketView | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x95493f3e3f151ed9ee9338a4fc1f49c00890f59c` | MarketView | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc72f738e331b6b7a5d77661277074bb60ca0ca9e` | RealityProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0xc260adfac11f97c001dc143d2a4f45b98e0f2d6c` | RealityProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd194319d1804c1051dd21ba1dc931ca72410b79f` | Wrapped1155Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 70 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 188 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=1
- Match method counts: n/a

Zero-match audit list:

- [21122] audit-reports.md

Fork inheritance lineage and inherited audits are included when available.
