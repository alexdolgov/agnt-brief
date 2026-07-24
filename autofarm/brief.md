# Agentic Audit Brief: Autofarm

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

⚠️ Lifecycle status: DEAD - TVL dropped 11.8% over 90 days

## Project Overview

- Project: Autofarm (`autofarm`)
- Website: [https://autofarm.network/](https://autofarm.network/)
- Lifecycle: dead (Tier 0, 99.7% below peak)
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: aurora, avalanche, boba, bsc, celo, cronos, fantom, gnosis, harmony, heco, kaia, moonbeam, moonriver, polygon
- Contract surface: 423 unique implementations (558 raw deployments)
- Coverage basis: 0/3 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $5,194,480.81
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Autofarm. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 3 contract row(s) across aurora, avalanche, boba, bsc, celo, cronos, fantom, gnosis, harmony, heco, kaia, moonbeam, moonriver, polygon. Structural roles: 2 core, 1 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 3
- Structural roles: core (2), supporting (1)
- Contract kinds: contract (3)
- Detected standards: ownable (3)
- Frameworks: openzeppelin (2)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 7 contracts are derived from known codebases. 7 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xb27150dc6ee59ad4464cc7a89229b5870e568be2`, chain 56)
- UnnamedContract (`0x7f426f6dc648e50464a0392e60e1bb465a67e9cf`, chain 137)
- UnnamedContract (`0x8583063110b5d29036eced4db1cc147e78a86a77`, chain 8217)
- AutoFarmV2_CrossChain (`0x77286f5257e090b1bedbc6df6726d53cbf8573a6`, chain 1284)
- AutoFarmV2_CrossChain (`0xfada8cc923514f1d7b0586ad554b4a0cead4680e`, chain 1285)
- AutoFarmV2_CrossChain (`0xdd11b66b90402f294a017c4688509c364312303f`, chain 42220)
- UnnamedContract (`0x9c57658139afb41949cebc07d806f37d29d13eea`, chain 1666600000)

## Contract Surface Quality

- Logic-topography rows: 3; live-surface rows included: 3 (3 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 7/8 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/3 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 7 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 415 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 7 of 423 unique; 416 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/35
- Verified + Unaudited implementations: 35
- Verified by bytecode match: 0
- Unverified implementations: 388
- Unique implementations: 423
- Raw deployments: 558
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (35)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Address | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x481ca976d8fffb079fe410100cdedfa76ba1694b` | ⚠️ Unaudited |
| AutoFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: bsc `0x0df9c5fb57bc3b90e73563e9adb672bea2fd41fb`; bsc `0x17f619f4eec6742cea2d287dbbcf61ba3360172f`; bsc `0x267ef119c0b13179aa74d0d06b72df7514fc1bb8`; bsc `0x65620c0d20d28cf6bea3749502d597447e187b62`; bsc `0x68def7d5361350ebac92d6b9fbe672b54d68e3d5` | ⚠️ Unaudited |
| AutoFarmV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 8 deployments: bsc `0x0895196562c7868c5be92459fae7f877ed450452`; bsc `0x1217ff378278726f334dd2a0285e0a04190a7b99`; bsc `0x238a9da806bbbcf4605b8051e01d28c96450e4ab`; bsc `0x25f9b77ef2d13d16fd0f5bdb3f84df82ba00a89e`; bsc `0xf0d2d0cd3e3cf05075fcdcededbbce1e62a898f1`; bsc `0xf44d42a60c2c68246c1d8b0b9c33f839c0e32dfb`; bsc `0xf6c361f82c744881fb58563e6c0563601007cde2`; bsc `0xfad31b26428cdc97a4f57f82105fb3d6bb17968a` | ⚠️ Unaudited |
| AutoFarmV2_CrossChain | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-227833 | `0x77286f5257e090b1bedbc6df6726d53cbf8573a6` | ⚠️ Unaudited |
| AutoFarmV2_CrossChain | unknown | project_anchor | own_supporting | 0 | moonriver | unit-227834 | `0xfada8cc923514f1d7b0586ad554b4a0cead4680e` | ⚠️ Unaudited |
| AutoFarmV2_CrossChain | unknown | project_anchor | own_supporting | 0 | celo | unit-227837 | `0xdd11b66b90402f294a017c4688509c364312303f` | ⚠️ Unaudited |
| AutoFarmV2_CrossChain | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | 6 deployments: gnosis `0xfada8cc923514f1d7b0586ad554b4a0cead4680e`; polygon `0x89d065572136814230a55ddeeddec9df34eb0b76`; avalanche `0x864a0b7f8466247a0e44558d29cdc37d4623f213`; aurora `0x3b2763c77343ce87cb42f9ac70a0175ddb5b69a5`; aurora `0x4b6ed34fa26a0a86fde513e7d3239dc85ab2f68f`; aurora `0x62537419c8327ab66165bae205da8fcb6871a700` | ⚠️ Unaudited |
| AUTOToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 7 deployments: bsc `0x09750927d289131d40d6e5ff34d431432bfdaff0`; bsc `0x2099a8bfe7487455a26341d1ddaf2d1fcab62a85`; bsc `0x37facf96e9aa8b79213bae073362d7cb8d7a9870`; bsc `0x4508abb72232271e452258530d4ed799c685eccb`; bsc `0x9fa3c8bf755f50a303c7f8617631fbe24f29188f`; bsc `0xaa3a59a4fc4ea0896086660cd383e0dd77759bba`; bsc `0xd2653285774f448fd4a2e0a3f165c453ff848ceb` | ⚠️ Unaudited |
| AUTOv2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x12300ea3d3444e9106c65913de24c58462abfe24`; bsc `0xa184088a740c695e156f91f5cc086a06bb78b827`; bsc `0xee22d7479d37a5739457152128164b1133ef3220`; bsc `0xf930533173c0b66a8863f4e6883176f09038d3a6` | ⚠️ Unaudited |
| Berry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 6 deployments: bsc `0x0cef58f80fad7904556fc7801e46a7618e3d5faa`; bsc `0x0e30017797d418440354a081785842ad937fdbdb`; bsc `0x4bb2cbd7f0eae5270588be6661b936df8c0bfbd3`; bsc `0x4faf8ae6bd41e3cd07d6543d6109dc605a7238a1`; bsc `0x89c0be3d87e0f28073390e997527d765f9384ed4`; bsc `0xc2f0d62e6b5572385d276d4ce9993e6558207fcc` | ⚠️ Unaudited |
| BerryBox | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x08f2303633a8e376ee02d0c4f07952bf05be998e`; bsc `0x1a9038a5ab188216a798de0624582c1c8bce80ce` | ⚠️ Unaudited |
| BerryDataNFT | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0aef47fe18180f61b87de7e85712652bd8a14da8` | ⚠️ Unaudited |
| BerryDispute | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x624d25cb42c7f0940531101d47414e3a58ebcf9f` | ⚠️ Unaudited |
| BerryLibrary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x734e3b5bd16b43eb82f203950f983ef6003390e1` | ⚠️ Unaudited |
| BerryMaster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7e7fe9e40fc3b8a7ce85da44801f9efe9bdbee2e` | ⚠️ Unaudited |
| BerryMaster | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xf859bf77cbe8699013d6dbc7c2b926aaf307f830` | ⚠️ Unaudited |
| BerryStake | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x283af939416eebf8413b382338bf1537c1f6b3ae` | ⚠️ Unaudited |
| BerryTransfer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xee9a080a7773669870f58d024d25b157cb5b30ca` | ⚠️ Unaudited |
| ChefMaster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 7 deployments: bsc `0x1e37097fc71fd892219b266f9bb12558719417f9`; bsc `0x5906ab916fe72a5e4ecb52d86845c4dcf1ae8984`; bsc `0x72618d2a5efad5b2c238af66ee2a1a8e81e594b8`; bsc `0x81c9e81b47ea9d8dc7a4ae66a4e28407074e3cca`; bsc `0x8ce94299a46f96936f757f88501a858087ced915`; bsc `0xa1a240dbc0bc7aed2065700ecd1443df23b8a0ba`; bsc `0xb88a386a534ec46083cb6f77567c15067b64f01a` | ⚠️ Unaudited |
| FarmerToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x864a0b7f8466247a0e44558d29cdc37d4623f213` | ⚠️ Unaudited |
| IbTokenOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x958a906585a6d2cf5367f38f1ea306bbadd9a8be` | ⚠️ Unaudited |
| Multicall | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xd26ddb60efb6267db68f18801491c2292c4e0a23` | ⚠️ Unaudited |
| Strat1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x1a40a8c7d965f3929e0c56bb301ebe82f5ff0d48`; bsc `0x9ba2a91d20a23548336e22e2ef699ff5e1b6f55b` | ⚠️ Unaudited |
| StratSwipe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1f042f2fd6878edcd75f1f1400bc1d53671e66ce` | ⚠️ Unaudited |
| StratVLEV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 42 deployments: bsc `0x13057e42bbf1b5d980ea79df5549be49ee624910`; bsc `0x1a2eb775720a1e166e6eeb583b10116cf45de82c`; bsc `0x238d2bf95a3c8835054e62364e14e4daffe6395b`; bsc `0x2c48d2db2200ccaca9a5151ac88ab1dd410866b0`; bsc `0x3a795f4071f4baebd5be5a00bf1886a5f8f613e1`; bsc `0x40afa7e39037e67210890a105a374a576710a4de`; bsc `0x414b4f745072cacd98cbaaa752850e63f17330c9`; bsc `0x440c7ece155e59c742fed817f8f6b9e57bde7c32`; bsc `0x48620b6a00ff75d17082c81bd97896517332c6fe`; bsc `0x52a9f3ef303e64723e70719f2bdf9f9c4ffff1f0`; bsc `0x54d00180c6a2bafebc5076b15c5ec79302a0cb39`; bsc `0x5796b4e037e60f97360bda147cdd749c4d1743ff`; bsc `0x57d6990ac68cfce528b9580f9efe0146576e4b01`; bsc `0x602817e63abca2caaae6b23c089ee4587b525f4b`; bsc `0x65579f670c8c3a38b93f912036e34dca9bf58a12`; bsc `0x6a1878c9ae3e69061d2a6b32f7346d283b65d073`; bsc `0x6f5bf5ed983cbda107c7518c9428c5db7e3e6db5`; bsc `0x89e1509810378f73b4bc0c1decb87fcca6fbe9a1`; bsc `0x8e24b8136c3076829a4ed0412cd8f302fa651d84`; bsc `0x91277c4a038da7ed1bdb54df4cf95ecdd70307ff`; bsc `0x95d3ee15b902711cc0ed39271cb5480fced80192`; bsc `0x97d41b6f6b42c4577f290bb3864a5032ecc54032`; bsc `0xa05d4f39ac22c5fe8b2bd3600c88f051433a1dec`; bsc `0xb2059ddaac191b29308176b1efea08c1f39345f5`; bsc `0xb33f66bd8ad8d91d7c7ad328ca280ebf95349fa5`; bsc `0xc71b7278a37aba871fba4aabd66bf91628ab95f7`; bsc `0xc7322b5c0c250f712c3efeb62141e9eb437da24c`; bsc `0xcc48c51cea82afcb8a748807799ba6d6bd0ab5dd`; bsc `0xcd3a59ba91d8930baf59389c5ec9aa0ca8f29af3`; bsc `0xd12b91e069dd7bcd1decbb14ea80f38cb69d84db`; bsc `0xd21c3baa527755b6ae53484122a54a6f6ad5dcc9`; bsc `0xd57e8730792f3d1358506914e5d2dbb2b6a1dd3f`; bsc `0xd9dc1329b86a3d19963dd7b8a7cc5ec4960f0f0a`; bsc `0xdcd765e412283d4133949697e0359d3ba4d50437`; bsc `0xe041ad792e7497189dfed6dd29e55e054b12ee3f`; bsc `0xe2477627fa2db8ba2a4fe467876023987c3a7e8e`; bsc `0xe4bf08ba1678b28ad8fa431c4e6fcd0aad01fd09`; bsc `0xe839e18f188089032ebc4c9e1ff38a32d6907808`; bsc `0xebc44c645c297fbef2e149e1ac50166cade6a3c3`; bsc `0xf67cceaf8bf755d03e9328cdebb38bb40baae43f`; bsc `0xf7cdda468497383fb46d42d673b980c73523c492`; bsc `0xfffe1b26e0b2134d7be0440a9a336c215dcf159a` | ⚠️ Unaudited |
| StratX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 43 deployments: bsc `0x0989454fcf48c66aee3fe8cf4feccae2e9b4205d`; bsc `0x0b4305c4bce8cd7d96625b08dbaa2eb29e288bf0`; bsc `0x0ce9299529dbd160458922ce69d06bdd65205fe3`; bsc `0x1004a537a1c39ee9d38110bfe3042627c2cd5bbe`; bsc `0x164d0474ed98187c13fca034f80a40d120517b70`; bsc `0x172d40422ba9699a6bff92244fea0d0018240ec5`; bsc `0x1a57155890b65a4a9308dfcfe445374619a98eba`; bsc `0x1edf8edc9a666a5522c846e71e135da45aacd2d7`; bsc `0x306258d81005a354e2824997f6d031a9aed247f8`; bsc `0x3448669ce5d2d21fc8c1e416187d4b65e92bc1f1`; bsc `0x36ac93c81bcb5f8fea25d18c2c16261940dab483`; bsc `0x375e7f904cad86f788b4682dab8979f4a1811477`; bsc `0x38d40992921b7aa6a9a7c3e2bb8a31ca9421c8a7`; bsc `0x3a84753f6280bab7158a1be0ae9cfd5313249084`; bsc `0x3b4e269413fe19728c423c8772b270368bfc0c5b`; bsc `0x3f45803fe1586b91ac1419b7b21d9cc24d5c23f0`; bsc `0x4551e51d882a7cf23b80f189fcce2aa1c1b6ee99`; bsc `0x512090bfc8416bab0e8df0541aa0759e8abb58a8`; bsc `0x5935db1774e479297422298de65c60cb2de63ad8`; bsc `0x5f93026bcf9120ccf719882fcde147a52da8ca5c`; bsc `0x65168c89a16fbed4e2e418d5245ff626bd66874b`; bsc `0x671c9060bd9dcb81b384f680849b18357782c893`; bsc `0x6f6851ecbffde955d37136968411a438850b3ed0`; bsc `0x7f7b23253e4a6b317699e85fc0bdc41947563ff1`; bsc `0x8a1a10db17bdd48128f2df4c7846bee7c2e195cd`; bsc `0x8db789ec00b617e4ca7c68033e622db68ddbb5d5`; bsc `0x9b3f9f2387a32c60ee4dcd67148a0426ff918fd4`; bsc `0xa5ca6b946eb8a2218045489c7514d5b63b6b1e22`; bsc `0xa7df74a1664d4243d44c6de36f5a34afc7cfc2f1`; bsc `0xac622bd8082de3abe865b8d38242e6cd8c73a234`; bsc `0xad1245b0068c9a1faecfa0c2f4c68b58b12090e0`; bsc `0xae9720c6dac3495e6537d4b39e62ea81d14868e8`; bsc `0xbaa6776bbaee2cf018401b6178172c05009b370c`; bsc `0xc75b6ffd235660537aa3c058e2e2f028d9f87f60`; bsc `0xd84cf43f5ca4b6a12142ccdc44b53cfe5afdb2fc`; bsc `0xdd42e881e51ced2705648711f1786a30381dd917`; bsc `0xdf3dadd3767e43b304943c3fba91f46b3d15e9e5`; bsc `0xe23ec91c8166f26445ae6ccf96ebee63a9871b54`; bsc `0xe8adf98a266d0dba1caac2e857a3bf125bcc2f72`; bsc `0xe9d78be4c1467242820393fd7b969784cb791130`; bsc `0xeae1f35f44fb5b07af511ad7000e05ee7138311b`; bsc `0xed3f07579aac2854ae8d27dfa97314e0fab78687`; bsc `0xf2aec8da15e910da8b6da0c343c05315b747209d` | ⚠️ Unaudited |
| StratX_AUTO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc5eb5a3490d2a2e4a1e1c9a1b965b4eef4f9eb40` | ⚠️ Unaudited |
| StratX_Pathed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x3aa4f1ad7094d263dad4ead5b8bc09ddc211e024`; bsc `0x7328cbbaa8c9c81726de6de28ffd1ddc5b78e7e4` | ⚠️ Unaudited |
| Timelock | governance | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2044b1cd18c3794920a041a5811466d0c6a023b9` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 6 deployments: bsc `0x28579eca0a326e53340edd93e18698d379876a04`; bsc `0x2a84a577fd178d3935ef8f247afe3067656fdb21`; bsc `0x6aa35f2458d72c6f6eabbf08c6ac8d4ad077b5ff`; bsc `0x7d09acfbcf00ac6d408a7d756b0f380f1a9025b5`; bsc `0x99d334b487e0cfcd5ef867f980d1a597b3807b89`; bsc `0xc2f7badf1f33d029d2e6ff200b2410fd56bd2596` | ⚠️ Unaudited |
| TimelockController_RewardsDistributor2 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 4 deployments: gnosis `0x1dc6cd9f76972039cd8e071ec65cc4bd035449a1`; avalanche `0x4b6ed34fa26a0a86fde513e7d3239dc85ab2f68f`; avalanche `0x562bdceff7aa89936e52e16eb52abd1770e42cbe`; aurora `0xaea5f423361e799950e09d38c4dabac2db77e800` | ⚠️ Unaudited |
| TimelockController_RewardsDistributor3 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x0c98e59e8327f156ab12a042f5e1f0adb97c0931` | ⚠️ Unaudited |
| TokenTimelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x4a712a0c8fd6b75aa5afbc2b06b4f33126549451`; bsc `0xa2ddd7844a174c4366b3e1c9c0aece958ad9e6d7` | ⚠️ Unaudited |
| TokenVesting | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x3cb2f8f2312ab981c4da6f98735a2af79e781a3f`; bsc `0x6aec9e1a535060a13d6a3a9f62f773333c0b4fc4` | ⚠️ Unaudited |
| WBNB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6461ac51ac85698e3db8b8a666c660c51e9f914c` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (388)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | 4 deployments: cronos `0x76b8c3ecdf99483335239e66f34191f11534cbaa`; fantom `0x76b8c3ecdf99483335239e66f34191f11534cbaa`; fantom `0x9c30e4b50b4b3804d3b50f01619c61fe44ed894e`; boba `0x864a0b7f8466247a0e44558d29cdc37d4623f213` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x02c690c1e2494953202c9bdde424dc6af22c1936` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x044c72dab322c0f84157c4af73ee8583d24518b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0711c0b4dc24a64b9581f50da6f2e738fd82f971` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x07f7ac9f97a5579ed5579693dec414b6957023ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0acdbb5ea948f4a3f680b50ba4a03933046d1e94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0bf2e7662774c6f1067a848543e285e4049d4d1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0e1644f73cd77940145217898bc2d99c088775e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x140f38bd17c5855d209340f57ef330f312be8c76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x14d598776cca802e5c4f4d693d51079ac681e466` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x155b4c33ee5ad3fbb368738f31f6248fe9068f08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x15b7096015a7d318b804310032e092c19fa2c3c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x16725183003bc79d6d808b19753144d6c28f12e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x17441a06ffffa550364640c3e928d7161f3119c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x18fb6e32530c543f1eaa318b4683f859788ca80f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1ad82a553bdbabf1f9f2fc64394e9c8859ba5341` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1e132f6f84983af87f708debd35b66b3276a99af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1fe1aadff3d8d8e8d39c5da589064492ee4ef6c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x31bae9b6651b0e83f032aa6bd305abf15ed4102d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x328dd6a8d668f9568e7b7430d99f1ead6f484a0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x332387eaaddffb67fc97861ae345a16bf01483ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3397844adfcff2ebf24022a88d361c70722f3371` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3594430c5c20f02c56661043a4caeeb0b3c1b5b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x379439d9fae7729c489232659206c0897db0b2e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x37afb00b14cdd6806e651b24512643b8ba028e79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x382ef1c81dc4d3814def01c57f2c6a843e76520d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x38a70d505691e3ed8cc6f9233c2253a2de64d56c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x42c1fcb8277e49096a111ceff0b79ad81ede0207` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x467643d60ca1632d2bfd04fc8e1f209968e2ff81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x46d6b3a4fcb5f177d6ed0e6d9f1e6844b90e56b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x48d1f94bfb30334fbe1d7077974510a7c88d0b59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4db402a2072e031fb5de6b91f7748f460caacd2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x508e84d5a704cace0830248a5cc47c7407cd1e8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x52453aaa308b18710155783ca3a8b31f7eebd3fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5a6b1eabd4c85ab55f5a82409dce423540e2aee1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5cbb8e576c3b938ce6528b588d398a8e44c266c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5dc52e4709a7eacef2af7b7b482a692e94b9d03a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5e93b39c0b6054d46baa90947014375a40f0a074` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6030a7770753cb723120faba8e0a8e247efbd2d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6196eb8aba4f4defd9945d5ecf413dea5a33d3b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x63a8488900d1dce6878c4ac9c2ea6cf7da7f212b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x730fcbc72adb44653e1d5ceeaced3fefbc49f7fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7515a2801882254ecfc04146a9d289cfed6d898a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x75d813c01b1206a80426737eeddb4df41d2d5b5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x761d214107cec7091343773ae9b736fe3cdec8cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x76b8c3ecdf99483335239e66f34191f11534cbaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7ed81a08a97a5618d97fa15bdd5758d684987885` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x819e88d1d391836a776255dd55d1eaea2ecc8928` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x82004f92eebee7eeed9ab2937287ce00fd53c72b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8fe813304c2471d5054d7baccc7cff0c1f078113` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x93dbc20622631e3f819a7ab996ccf68326cc21e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x970195883352d340bff71c76cc9afd0c3ada0077` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x997d60a844f10698ee1139c676918068fad2b093` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9c30e4b50b4b3804d3b50f01619c61fe44ed894e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9dc12ac57c00f1129cc700ede101d90e13ede9f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa2fd943d44ee48b0443c983de14f4c0fb4e3ff89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa409c29309ee4031690386094938886e2f5686d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xadfdf433ccb858011885371b816d3e720dfd5ebc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-227838 | `0xb27150dc6ee59ad4464cc7a89229b5870e568be2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb8283a557143aa9c8b701c687e22c0ea32f3cdb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb951f703d6b98024c053cb6bf33543357bb847bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbcb546af567c1ce6b9d207daf2a0cc988b7905b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc33645898ad4f9c643b6bf8b31bebc1420bbac2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc9233881be346b023cf39f7115a4a47a90fb835c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd2933104758e18f95d4ee25a0d98219bd2c1d192` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xde51a046cc599d98d5bd6db2e3a36b7c8ad6cbdb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe4b404183ddb6416c42a9f22b1b8d58dd033f4a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xea54f310f24c594d625fb92dffebec973d62bbb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xea6b0b1aac76f17f1fca10adfae9d1da5ff8567c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xee18b2d080ad3e61621ca31ec0fcbbaaac7259cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xefe8fba3e62c165ace8b873e8acb319d164653d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf030f47ce01572b9aaa7d2e95d06522c99389afc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf131123a40e9c2e0e7bd4ddce20d5baa7e474253` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf2ffec39ed39864f5f8f9d3bf7cb8e976d962cdf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf44693e671bd8154bfeb06401be6e1dd79365862` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf7a6395572d3f5d2dc918983d4e0cc44dd35aca1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x0aec91ede59dbe29d4c678430c5e7fb51a4b4443` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x140f38bd17c5855d209340f57ef330f312be8c76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x143371cde723891e3e9c30a8db84c411268653bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x1a40a8c7d965f3929e0c56bb301ebe82f5ff0d48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x2dcc0c264c709d8be2a375bb1d2b8e63bd7bfcd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x438587eab690b69db1bf08d44475b3eb7ca65b11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x51ad82034346de4602209979556d85af2e592d8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x53c3b106fcc2e212f98b4be8b0996c05ed1cce01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x67cc99a4e76a3af7df524fb3aac6d5c3970a4436` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x6b88b050af659939adb1b2208ea89f1251f43b73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x704fcd6c93d064f8e633c8e2c98053e1eb6aad1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x76b8c3ecdf99483335239e66f34191f11534cbaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x7e8503a336aa795f5f30e8be92cc07430ad35b13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x8eadda76d739cd0031363f714e9848b066d0f2a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x95ef70ff0d0fcd62edb406850f69f18b42a239ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x9961453981582786b2aacbeb46a01dfd59d6fc7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x9ba2a91d20a23548336e22e2ef699ff5e1b6f55b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x9c30e4b50b4b3804d3b50f01619c61fe44ed894e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x9c83f0171f373b52415ab017bb805c021e0f8c20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x9c9d2972c1ac50ec4b607c1abfce1e0236377ebe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xacc391693de3d745047c9bf1e631d49ff5e397a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xad2db12795ced89ca2d1819710233106115e3034` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xaea5f423361e799950e09d38c4dabac2db77e800` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xaf03df49d0acf76b81674e1250611491a3d3c063` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xb55b06236653a1439323a66e56c2a6c02e68e423` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xbb0bb47bd12b079a7d8b1a53a793b621e4264399` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xbbda4832710baa21e056b649c2a7b68aa8916723` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xc9a95011bff79dece9280b19c2eba1538f39f6d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xd5d0e35e65189ad88b7e345b90824f7fb99f4437` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xd92b9c3cd53bb39610b8a9b6668217a65d930cff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xdbb5f32f8b27abb6eacb596614f42193e0f4e46e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xe0ccde8647068ba6dc4db06353a208ff397a850a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xe3fa2fe56e7f7c685c0cabc320cffd332aaf879e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xe8c9dd41503d3d9f48f78894f4557563f58ca48c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xed2ce4e98cbb2c786c88f3e958040faba469a8fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xefe8fba3e62c165ace8b873e8acb319d164653d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xf06a06a9a7aeff24e3ba71989569a820be36e663` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xf97b1f1577f8ec5c542be5ba8f029044bb7f8c73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xfbd73f08b9bfcb96aea8a1863f57347c44904359` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xfd4371ce4c302789f6d2e53894b8098469304c56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xffcdb4b37535d1dcbf4fbb6a5a341b0269e6cf3e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | heco | unit-227832 | `0x96a29c4bce3126266983f535b41c30dba80d5d99` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-227835 | `0x7f426f6dc648e50464a0392e60e1bb465a67e9cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xad2db12795ced89ca2d1819710233106115e3034` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x036f2f1c2a995cfa2df1f79942dee6cd4444472f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x1deaeed6c18e11fe77f331854d9226d98332ef38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x24b8320d9f0dba62faeaa8692123da0bc53eede3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x2dcc0c264c709d8be2a375bb1d2b8e63bd7bfcd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x362358d443f321b9036b138ca887276b5226ddbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x36ac93c81bcb5f8fea25d18c2c16261940dab483` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x3aace14c910c3a186ffe1094f6e52d25acbf7b49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x68def7d5361350ebac92d6b9fbe672b54d68e3d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x9b5900d8122f36c0e86fed014abe012f294d77cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xa881b995e279ffed740efe9800c7f0fcb2de3617` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xca4b647ea721eafcf2a29d7c43bc0eb23fb3509a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xccd19e8eab187e4b9f44e42836dba78aac604cd2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xe0ccde8647068ba6dc4db06353a208ff397a850a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xed2ce4e98cbb2c786c88f3e958040faba469a8fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xfada8cc923514f1d7b0586ad554b4a0cead4680e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x04f121209adf4622ee8a908a62001d6bcaa4d0d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x06ba9fb89982f88e420ffdd4e3698557e26cdd09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x0c98e59e8327f156ab12a042f5e1f0adb97c0931` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x143371cde723891e3e9c30a8db84c411268653bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x16cfb244a3a4e6776c1b731b565515dae32c7d54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x1a40a8c7d965f3929e0c56bb301ebe82f5ff0d48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x21145564b1b4dfc195bea79f2843a6299e8f630b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x21be489c84cfcc4ac0da06fd756db885635b482e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x266b63bffd05b157eada1f381ad68583c999c8ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x3e0be2786431e28c0fd4b00ba09eec5a1be3cf76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x438587eab690b69db1bf08d44475b3eb7ca65b11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x4869f219bf8d0c89010154e6b8a9920c6ac99a98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x5662b58bd44619ea74a6b01d9c5dc89656e9d0a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x59bc491986722d2bc78089cd38f9e9798ebfe339` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x5b13cc8a120a20afcb40229846a61020e42adb63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x5b88a19d625e524a7c9cc7e7c8c5430400113681` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x5d3ac98ed0ccf70493295c8136f4bf1c40e8489a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x67cc99a4e76a3af7df524fb3aac6d5c3970a4436` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x686efdb6f49dc908b85a13efba8e31a5cb2fc501` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x719be39f708506d6e31ce27193f98130a4e231d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x72e54b83f64de6cf99798dbd1591cd48b62ff515` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x75cef576cbe80cef6d6270086e8bd0a82b925088` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x7a3772850ce76d661d841ea4af7d8240ff215a81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x7e8503a336aa795f5f30e8be92cc07430ad35b13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x7f4f008b6da59667998673563dc46524f9fa6932` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x835460b80883ba7983bbdcc5981501b836332e41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x86178bd58cd2f5eb9d145762f3bac52486ea57ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x864a0b7f8466247a0e44558d29cdc37d4623f213` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x89d03a238780634db11b4c26adbc936fee8dee31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x8b854a029850aab7d05a0f9e3f42903d98be795d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x95ef70ff0d0fcd62edb406850f69f18b42a239ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x9e8d79287adb6e6e73bde777b0b7442eb0325fd2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x9f77ded3713c88bcc3bad07afb16e824ec2a6831` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xab16069d3e9e352343b2040ce7d7715c585994f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xacc391693de3d745047c9bf1e631d49ff5e397a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xad1245b0068c9a1faecfa0c2f4c68b58b12090e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xaea5f423361e799950e09d38c4dabac2db77e800` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xaf03df49d0acf76b81674e1250611491a3d3c063` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xb4b71fb46590ae1e4f7e3da71f23ad1a8f809da7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xb55b06236653a1439323a66e56c2a6c02e68e423` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xb881712724214bc887132942e7ed47ac3bbb106f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xbf19c3fe078258f1d1c34bec7e624ad8a1de343a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xbf328d09710a8df370935f2ec3e131f037448627` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xc9a95011bff79dece9280b19c2eba1538f39f6d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xd20ac8b6d7ec750cd2957d6ec2a483522a1483c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xd899eeee9dedd70cf4e96d39015017374d1005dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xe91dc80a284237155526825c6411001ef0b160bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xea68c140ea18dfa14cb8781b1738b49cc0540ffa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xed2ce4e98cbb2c786c88f3e958040faba469a8fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xfdb5e2adb1a9b21fd9c277b1d9ecca437f58ae59` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-227839 | `0x8583063110b5d29036eced4db1cc147e78a86a77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x036f2f1c2a995cfa2df1f79942dee6cd4444472f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0880ae2520a1092e5e66b48457409165208ea2b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0b14cf23cf1fe17ff83caef08d18a3b5a6ca0c5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0c98e59e8327f156ab12a042f5e1f0adb97c0931` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0e9bfbec359c5799a2d298a2da9c6cd5dbf1c615` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1078988f5f6e7bfb5f17dc874897d4babc2f6d38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x12196f4985d1337f641156f6bbd95110f273edfb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x143d7b433982aa81569033e8c4bb7cf08767479d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x15a7db03097c6d30e86f77ed8faae2c597d9af97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x166e272443368ab796d6c799774696d6f123fce3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x173b92b59c8d0e3e5a9e895ff52b63b31331761e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1e99f6e77dbbf3e5feb7e15078ef00309f154e2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1f784f8184a33614c99f85c371944d2716bcc0d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x22496a7f13637cf740832212052bb6aab3d3187c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x24b8320d9f0dba62faeaa8692123da0bc53eede3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x260c93288546040b3030ce353b6107f333c9333b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x260e7d21597f48d81d31dc0f98b1560f0d4de0a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2ca290d968fb72c306e1542bfef1c6be6051ec1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2d894f080470519eb9efe8c9fa8400fcd25d18d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2ee0f5bf04dd5d7967948a5bebcebd6f5147dfb1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x31e29159c904304f929ac2773d4e52ac890eda44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x38d40992921b7aa6a9a7c3e2bb8a31ca9421c8a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x39ea1b5bd5ed7d2ee79a0e067e8a493f1464be60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3aace14c910c3a186ffe1094f6e52d25acbf7b49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4460d494521298222464796e40a11827bee6185b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x452d65f3bd55735bcb265171235feed684625183` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x48620b6a00ff75d17082c81bd97896517332c6fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4dd60dec5de0106595b0cc72b152d00fda95b478` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4ff8d00d65698625b175165edd65c55fc637dcc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x50c5516a042b3787d6ff5f3305beb92dd6a2fab1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x554df30f4ccf95939c8c59ec1df14ffb52c1552f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x56b89048c279ee136ebb213eea33e31214f3eb12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x579cca33fa4ac24b45ef3fe2a5f6fedd54dac235` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5aefdb4d32a4d05a9f0fd71ca524da295e631218` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5ca61aa5ef64d464692110bdcdd18241cd7e4887` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x608480d4c25c1b641092303cf9f45f7607b19c5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x62d9dbf80dc36444463ca87b5e69a28f97a46337` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x631a14d3483aa7da5b8244d1cb188d9f6605a6da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x686e4fe64b2c5e72fe47c3c0c2f4c3a092092fbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x703730b6f1b0d7f3d03dcd662384f688c65c58ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x718e4d28015594fd6a4f45b381d9e1da0667c576` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x71970c419f37f0b3e492ecf0334079c1fd796696` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7347c5e408a187540b22d5291191daf3e32aeaa0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x74fa2b46ef049b770d50e382f76478e5b3a16c62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x757858c6333e26ce2d34dfa9e0187efae18e2864` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x76b8c3ecdf99483335239e66f34191f11534cbaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x78d5f20f9e6d4a6a95e59c5b6a664f0acb4c904f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7997f3296fb687b94a96bb48b16a94ab4ee8a600` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7adba1d426b1bec70dda0bf2748c96d98ed47cca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7f5d7012700f495ae43fc39d602ba60a9df795ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x868fe217bb9b954b75d0e568e9a01144b7b07fcd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8b08898e2613c3725bb857c72b12f8a3356bc832` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x92453c65af220c8bf8ec5c011aee36425ebb5105` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x93e6dc2abd2d88442c0e255adcd64617390d526a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x99c1de2631801e7c60ae2ce972e7a2fd2b98d27e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa039d2b45ba0f0e114e50edf7f6e595d66158a3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa1737e99340a39a68fe3d90a46a607401656c44a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa20283308001aafd1e7fdf5460e23a16bf9d814d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa30278310eadfb88725e9d2d17c643876c064da5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa40b92cde72139c0f43da05b46ba4d43e3230057` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa55dc6b174fc4304559a1e5bbd522314fb88da66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa5bb4c5dfbf09f276256b1bacb4fa4f2a26bb503` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa5efee3036d34f51f645a7686b26f6b7aa841714` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa7eac0eb6cb82cd47e233a575e56f6b7c94f8f23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa881b995e279ffed740efe9800c7f0fcb2de3617` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa993ae7e47b5e39be8f7e994bd8d30a279f6dcbe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaac353b2d1bc2dd8f437aaee4e011a7be39b60b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaae5820feac3cf86b9a0f2e953fdd02afefc3b5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xae9720c6dac3495e6537d4b39e62ea81d14868e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb278ef88a0e49bb2354966f3e095db085e1b0347` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb6dddf6a240f1d2d4c3905f6989b9631b3947499` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb72ef7800677a54e36d8b7cef616f5b3884b466f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbb15fb6a01a594a40d56759c0f2da025205ad69e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbb390447e843269609cd6fac92413f5778c7d726` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbe487a9a9e98bfc444b092e1a57551c991d187a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc388d51023de972bde95bca379472c82b9417d49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc3ba6869cd55e2c40a92e37cee03fcf85823c13b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc4d81c3983132cc93b0b3020c87a2392bd6be2e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd218c16e203fc7bb0a73cb9e876542830f174048` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd2adf2c6b12121e43c82ec45470a2e71119ce708` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd60d41610e13e434fe9a53b94eb62592185142f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd784dd3706366d6cf9dd7d379148de9221f67fc3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd8b9e93ad5453d93db70fffa3e58d57c06223bed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xda4f3ee1e9136a3a2b3c03950916cf7f45e4f86a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe2babe722f1f0b7698513aeb9e3066f5bf452460` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe442bee197bef943f7adaead3f2485ffc56bd605` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xeb9dba411e0515a1519307cf8b08f82bc6a978a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xeca70add5ce0ce95e7ecf5b77703e0886e9c3556` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xee02ea0d5ed8a6de6c93d2a8c545567b65ccf3c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xee7fbb895a74516fa5ad5aec6122f3446580f365` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf1bed99dc5c1db8ca05757d84550cd1af57063ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf23a3bb0c2543cb792087266d8e93c9d622b6cd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf5a5cd2afc02b349aeaa4da86dc5be1dcaf9f8be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf843b09c4fde89d6c7e5f415994557ec5c927fe7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf977e09b96652fdef137ee235bc769bc516a3cb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfac25172075188a08eb15088953857086228c0c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x00fbc42e60f0c723a208f3f88230125f9dfd2370` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x062f307d90f1fcaf8fcf9cebdbaee2ee31387714` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x087225aec39362fe4167c1cfeca0d2924ad81723` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x09750927d289131d40d6e5ff34d431432bfdaff0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x0d6a7b8413b78fcb48d1d392f003d68f2028371c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x0df9c5fb57bc3b90e73563e9adb672bea2fd41fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x0ec7d207b9828fda09a6e6839d1399f250adc470` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x0f06e1063ea6bb2b2b337920ab20cc5197ac1a1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x10734066876c3de63eb72a08c805e1cdd417a7b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x143371cde723891e3e9c30a8db84c411268653bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x2511c5da992cb874a0673ccf4a6ad0c73fc51a55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x294df23a39bed9cd91b404def3d6b685889fdc3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x2f366186a40e67a7df4fc596b3e37e2f7e135726` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x30ed2939f421f4cbd2477e67e1bedd3bd5081aa5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x31c8184d8e08058de6a62e38e9a499af4cc494eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x328a361c624e0c42aa4e5f14b185f8ae03ff97ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x32d8c86eaaeee80c2036b8e272581c2de96d8912` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x39ea1b5bd5ed7d2ee79a0e067e8a493f1464be60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x3a795f4071f4baebd5be5a00bf1886a5f8f613e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x3b4e269413fe19728c423c8772b270368bfc0c5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x3d63c23c42efb524afd4f5d1184b1baae5dfdbf5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x3fcbf678a8f66b6464e4fccd190df86485d82ef6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x438587eab690b69db1bf08d44475b3eb7ca65b11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x43f747c76e1b914eed46513ba93aac7232d69a0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x450e40833562434e092b41dc1d036798fec53d6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x4596b1402263543288b09999f70f8dcbc2a9d1b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x47883a10c85525b652f6cf1d35a6c699b1594fdc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x48bc4bebb3c830eb660312e113668fa4fdf1fb0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x48d1f94bfb30334fbe1d7077974510a7c88d0b59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x4c3da4584250758bf949f0d0890c13b1d519b5c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x4f03d9e025ec54998a25896f69bbe36f1ec79541` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x530ec201f67fe60431e347e819b4e4d845611c24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x5dc52e4709a7eacef2af7b7b482a692e94b9d03a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x5ed6ca6156b27fe4596807324cea4abfc7444d12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x60c590e7744562d6b641eb6d18b38600709548af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x61ed55c146c2de3058482ea903f7cc9c4a54ff05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x67cc99a4e76a3af7df524fb3aac6d5c3970a4436` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x6a6ccd0abbd81e6c0d87d34975e3851f7f179190` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x6c3205a73f509d5c37a89734ad58f2f291137c00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x6dedb26cdb94a7a5233887e3c2c06a72188ba7b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x6f0e21ed4366c075578b641e8407db406022f435` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x6f6636891da3c76122f0a73f9c542d945c9cbcc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x6f6851ecbffde955d37136968411a438850b3ed0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x6f7829b4ea1eed734b5e1d2ffbe870fb48c59f75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x7003de2f0555f356ca2aede86b6de21c100f7555` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x7251865636bf1435f8389d4edf69587b3ceee472` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x7397abafc1412c9ba46d1cc8c88f8f0855d1ca26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x740e60c9c14198c5d49f15fc0d95a52d76a0347e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x7b514ff881da97c4110d94d3348e7b8c66e1a715` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x7b84c0f93170db9237173da41058e58e6e257991` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x7d29b59fe2c2c614860e87b5ab19606346558113` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x825921cbed2ae738f46d45d6d597dd229be8d4b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x82c919b169d6c6b068ac8c25c5fa2621452b6cf0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x8b492a4862f11cc97ada3947c6d302a347e574ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x8dbd87485a3dff31fee7f0e4d71b059bbe3ea055` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x8e61dcf462a679a0a2828e0e13ad00a5f47b1574` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x94e36bab8d51ce6cb8b2b57e1ead7ad54b98300c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x9769bec2d86bf4ebefe093f4c63d174689db7c65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x9ae422eb08fa4df5097f312fa00455c61fec7954` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x9c9d2972c1ac50ec4b607c1abfce1e0236377ebe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x9e61146d65e94e68877ba022f75644859ef15985` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xa8ebfd90dcc29a76d0a8cc1008631126d5020311` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xaceb3818b860e653a75ae064c0172fadd27755a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xad1245b0068c9a1faecfa0c2f4c68b58b12090e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xaf89990149c30c672e305aa361cfa0c06b518fe9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xb1243bedfb9caab4d22e331330aef62560ee443c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xb2059ddaac191b29308176b1efea08c1f39345f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xb633335f547e5ea1d92e10f188cda65b53282266` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xb88007b1ca26284a3c8afaca0134f9d0c11d6f6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xbb56f77b28a09998773d673986e3e356c5cf8381` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xbba51c0f05f665e5da7a7466d69fdd9820d3b8ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xc0bd31b94f2e5e474c499bd2eeda80d06a787d19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xc1c06c508c14ee9d939ad9e98b24a9d503f53ee6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xc220a84439d4639d1ea5cc2ef0794629d1bb31a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xc222e17b2720d1c391413da36678fde393203487` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xc694c41e945273372ccf5eae1682cd235241dfba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xc96442931022552abe436364a0d1bcaea40d7860` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xcde4faba07376ed53a57a4686337312868d504c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xcea6be17111c89b77c1e9c1d4ca2eac44f4dae97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xd21e29fbe18588426d7106e7f5e5d299fbdc6475` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xd489f7661bed3ec10525d6d312da42c29de941c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xd74dc7c4498cb7999cd15c73c119ea138cdba899` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xd8ce4c38fe650c02a10a2892b60ecb1ec577cc2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xdc5eea3ba6f83297101b713e0121e9de1e6c2596` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xdf7797460b334fc176acfb0f47e2d379ad411e59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xe0d56bafab8d106807e0504c522ac3ac460c83ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xe50c10da8328b93768332ffb5484395ab4b8ced9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xe61d398ae2570a1bf41e2fddeda0994b723004f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xe67cc5175fb9577c892824ad1d8039f3cdf5f89b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xe6f44a1c755b79e7a7eb5a1022a80af277ec153c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xea8417053cd2b6c0fe3952a39627f60042943be7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xea8a72db5e5d831697c0781d5015505ee2835f4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xeae1f35f44fb5b07af511ad7000e05ee7138311b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xedd978bc49163a72aaf61a32fb8566d76f71ceea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xef44f3354dd8585f1d7be80a6c648b93ef956649` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xefa291a6e1f2cd0966d91bd774e6ad5ac22e56dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xf083f992f89e658551a7b4bff123487c060dff36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xf25769a32f6c299d8c722c1bf033df34915f97aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xf3106774ff826e02492f6baa293970fc56ac8e90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xf5854f68d0f2ce7c3ca430c800070722855a6be7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xf609d00403ca3862c000a633b7916fb56b358a11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xf6e06253d42b32b4a56d6dcf14c2fb21a7342ee5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xf8ac5d9ca83945e244d7920349aec20616511d25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xfaf371cdbf441969c55ca6c5a47eae770ac5a98b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xfb080afb9584fd09cb640c5159837f2989904ee1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | harmony | unit-227836 | `0x9c57658139afb41949cebc07d806f37d29d13eea` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 533
- Live contracts: 0
- Unknown liveness contracts: 533
- Source-verified contracts: 157
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: candidate review=11, candidate hard block=26, contamination review=2, source verified unclassified=118, unverified unclassified=376

Showing first 200 of 533 contracts. The complete deployer expansion list is in `brief.json`.

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| aurora | candidate hard block | AutoFarmV2_CrossChain<br>`0x3b2763c77343ce87cb42f9ac70a0175ddb5b69a5` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | candidate hard block | AutoFarmV2_CrossChain<br>`0x4b6ed34fa26a0a86fde513e7d3239dc85ab2f68f` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | candidate hard block | Multicall<br>`0xd26ddb60efb6267db68f18801491c2292c4e0a23` | non_address_book | periphery | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | candidate hard block | TimelockController_RewardsDistributor2<br>`0xaea5f423361e799950e09d38c4dabac2db77e800` | non_address_book | operational_periphery | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0x00fbc42e60f0c723a208f3f88230125f9dfd2370` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0x062f307d90f1fcaf8fcf9cebdbaee2ee31387714` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0x087225aec39362fe4167c1cfeca0d2924ad81723` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0x09750927d289131d40d6e5ff34d431432bfdaff0` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0x0d6a7b8413b78fcb48d1d392f003d68f2028371c` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0x0df9c5fb57bc3b90e73563e9adb672bea2fd41fb` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0x0ec7d207b9828fda09a6e6839d1399f250adc470` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0x0f06e1063ea6bb2b2b337920ab20cc5197ac1a1b` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0x10734066876c3de63eb72a08c805e1cdd417a7b1` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0x143371cde723891e3e9c30a8db84c411268653bf` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0x2511c5da992cb874a0673ccf4a6ad0c73fc51a55` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0x294df23a39bed9cd91b404def3d6b685889fdc3e` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0x2f366186a40e67a7df4fc596b3e37e2f7e135726` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0x30ed2939f421f4cbd2477e67e1bedd3bd5081aa5` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0x31c8184d8e08058de6a62e38e9a499af4cc494eb` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0x328a361c624e0c42aa4e5f14b185f8ae03ff97ca` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0x32d8c86eaaeee80c2036b8e272581c2de96d8912` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0x39ea1b5bd5ed7d2ee79a0e067e8a493f1464be60` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0x3a795f4071f4baebd5be5a00bf1886a5f8f613e1` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0x3b4e269413fe19728c423c8772b270368bfc0c5b` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0x3d63c23c42efb524afd4f5d1184b1baae5dfdbf5` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0x3fcbf678a8f66b6464e4fccd190df86485d82ef6` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0x438587eab690b69db1bf08d44475b3eb7ca65b11` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0x43f747c76e1b914eed46513ba93aac7232d69a0c` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0x450e40833562434e092b41dc1d036798fec53d6f` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0x4596b1402263543288b09999f70f8dcbc2a9d1b4` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0x47883a10c85525b652f6cf1d35a6c699b1594fdc` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0x48bc4bebb3c830eb660312e113668fa4fdf1fb0e` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0x48d1f94bfb30334fbe1d7077974510a7c88d0b59` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0x4c3da4584250758bf949f0d0890c13b1d519b5c3` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0x4f03d9e025ec54998a25896f69bbe36f1ec79541` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0x530ec201f67fe60431e347e819b4e4d845611c24` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0x5dc52e4709a7eacef2af7b7b482a692e94b9d03a` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0x5ed6ca6156b27fe4596807324cea4abfc7444d12` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0x60c590e7744562d6b641eb6d18b38600709548af` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0x61ed55c146c2de3058482ea903f7cc9c4a54ff05` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0x67cc99a4e76a3af7df524fb3aac6d5c3970a4436` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0x6a6ccd0abbd81e6c0d87d34975e3851f7f179190` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0x6c3205a73f509d5c37a89734ad58f2f291137c00` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0x6dedb26cdb94a7a5233887e3c2c06a72188ba7b7` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0x6f0e21ed4366c075578b641e8407db406022f435` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0x6f6636891da3c76122f0a73f9c542d945c9cbcc6` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0x6f6851ecbffde955d37136968411a438850b3ed0` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0x6f7829b4ea1eed734b5e1d2ffbe870fb48c59f75` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0x7003de2f0555f356ca2aede86b6de21c100f7555` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0x7251865636bf1435f8389d4edf69587b3ceee472` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0x7397abafc1412c9ba46d1cc8c88f8f0855d1ca26` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0x740e60c9c14198c5d49f15fc0d95a52d76a0347e` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0x7b514ff881da97c4110d94d3348e7b8c66e1a715` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0x7b84c0f93170db9237173da41058e58e6e257991` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0x7d29b59fe2c2c614860e87b5ab19606346558113` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0x825921cbed2ae738f46d45d6d597dd229be8d4b0` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0x82c919b169d6c6b068ac8c25c5fa2621452b6cf0` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0x8b492a4862f11cc97ada3947c6d302a347e574ed` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0x8dbd87485a3dff31fee7f0e4d71b059bbe3ea055` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0x8e61dcf462a679a0a2828e0e13ad00a5f47b1574` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0x94e36bab8d51ce6cb8b2b57e1ead7ad54b98300c` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0x9769bec2d86bf4ebefe093f4c63d174689db7c65` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0x9ae422eb08fa4df5097f312fa00455c61fec7954` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0x9c9d2972c1ac50ec4b607c1abfce1e0236377ebe` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0x9e61146d65e94e68877ba022f75644859ef15985` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0xa8ebfd90dcc29a76d0a8cc1008631126d5020311` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0xaceb3818b860e653a75ae064c0172fadd27755a9` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0xad1245b0068c9a1faecfa0c2f4c68b58b12090e0` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0xaf89990149c30c672e305aa361cfa0c06b518fe9` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0xb1243bedfb9caab4d22e331330aef62560ee443c` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0xb2059ddaac191b29308176b1efea08c1f39345f5` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0xb633335f547e5ea1d92e10f188cda65b53282266` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0xb88007b1ca26284a3c8afaca0134f9d0c11d6f6b` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0xbb56f77b28a09998773d673986e3e356c5cf8381` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0xbba51c0f05f665e5da7a7466d69fdd9820d3b8ce` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0xc0bd31b94f2e5e474c499bd2eeda80d06a787d19` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0xc1c06c508c14ee9d939ad9e98b24a9d503f53ee6` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0xc220a84439d4639d1ea5cc2ef0794629d1bb31a4` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0xc222e17b2720d1c391413da36678fde393203487` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0xc694c41e945273372ccf5eae1682cd235241dfba` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0xc96442931022552abe436364a0d1bcaea40d7860` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0xcde4faba07376ed53a57a4686337312868d504c1` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0xcea6be17111c89b77c1e9c1d4ca2eac44f4dae97` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0xd21e29fbe18588426d7106e7f5e5d299fbdc6475` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0xd489f7661bed3ec10525d6d312da42c29de941c4` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0xd74dc7c4498cb7999cd15c73c119ea138cdba899` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0xd8ce4c38fe650c02a10a2892b60ecb1ec577cc2f` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0xdc5eea3ba6f83297101b713e0121e9de1e6c2596` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0xdf7797460b334fc176acfb0f47e2d379ad411e59` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0xe0d56bafab8d106807e0504c522ac3ac460c83ff` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0xe50c10da8328b93768332ffb5484395ab4b8ced9` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0xe61d398ae2570a1bf41e2fddeda0994b723004f8` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0xe67cc5175fb9577c892824ad1d8039f3cdf5f89b` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0xe6f44a1c755b79e7a7eb5a1022a80af277ec153c` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0xea8417053cd2b6c0fe3952a39627f60042943be7` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0xea8a72db5e5d831697c0781d5015505ee2835f4e` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0xeae1f35f44fb5b07af511ad7000e05ee7138311b` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0xedd978bc49163a72aaf61a32fb8566d76f71ceea` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0xef44f3354dd8585f1d7be80a6c648b93ef956649` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0xefa291a6e1f2cd0966d91bd774e6ad5ac22e56dc` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0xf083f992f89e658551a7b4bff123487c060dff36` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0xf25769a32f6c299d8c722c1bf033df34915f97aa` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0xf3106774ff826e02492f6baa293970fc56ac8e90` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0xf5854f68d0f2ce7c3ca430c800070722855a6be7` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0xf609d00403ca3862c000a633b7916fb56b358a11` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0xf6e06253d42b32b4a56d6dcf14c2fb21a7342ee5` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0xf8ac5d9ca83945e244d7920349aec20616511d25` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0xfaf371cdbf441969c55ca6c5a47eae770ac5a98b` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| aurora | unverified unclassified | UnnamedContract<br>`0xfb080afb9584fd09cb640c5159837f2989904ee1` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| avalanche | candidate hard block | TimelockController_RewardsDistributor2<br>`0x4b6ed34fa26a0a86fde513e7d3239dc85ab2f68f` | non_address_book | operational_periphery | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| avalanche | candidate hard block | TimelockController_RewardsDistributor2<br>`0x562bdceff7aa89936e52e16eb52abd1770e42cbe` | non_address_book | operational_periphery | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x036f2f1c2a995cfa2df1f79942dee6cd4444472f` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x0880ae2520a1092e5e66b48457409165208ea2b2` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x0b14cf23cf1fe17ff83caef08d18a3b5a6ca0c5a` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x0c98e59e8327f156ab12a042f5e1f0adb97c0931` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x0e9bfbec359c5799a2d298a2da9c6cd5dbf1c615` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1078988f5f6e7bfb5f17dc874897d4babc2f6d38` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x12196f4985d1337f641156f6bbd95110f273edfb` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x143d7b433982aa81569033e8c4bb7cf08767479d` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x15a7db03097c6d30e86f77ed8faae2c597d9af97` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x166e272443368ab796d6c799774696d6f123fce3` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x173b92b59c8d0e3e5a9e895ff52b63b31331761e` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1e99f6e77dbbf3e5feb7e15078ef00309f154e2c` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1f784f8184a33614c99f85c371944d2716bcc0d5` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x22496a7f13637cf740832212052bb6aab3d3187c` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x24b8320d9f0dba62faeaa8692123da0bc53eede3` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x260c93288546040b3030ce353b6107f333c9333b` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x260e7d21597f48d81d31dc0f98b1560f0d4de0a8` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x2ca290d968fb72c306e1542bfef1c6be6051ec1d` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x2d894f080470519eb9efe8c9fa8400fcd25d18d1` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x2ee0f5bf04dd5d7967948a5bebcebd6f5147dfb1` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x31e29159c904304f929ac2773d4e52ac890eda44` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x38d40992921b7aa6a9a7c3e2bb8a31ca9421c8a7` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x39ea1b5bd5ed7d2ee79a0e067e8a493f1464be60` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x3aace14c910c3a186ffe1094f6e52d25acbf7b49` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x4460d494521298222464796e40a11827bee6185b` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x452d65f3bd55735bcb265171235feed684625183` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x48620b6a00ff75d17082c81bd97896517332c6fe` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x4dd60dec5de0106595b0cc72b152d00fda95b478` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x4ff8d00d65698625b175165edd65c55fc637dcc4` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x50c5516a042b3787d6ff5f3305beb92dd6a2fab1` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x554df30f4ccf95939c8c59ec1df14ffb52c1552f` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x56b89048c279ee136ebb213eea33e31214f3eb12` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x579cca33fa4ac24b45ef3fe2a5f6fedd54dac235` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x5aefdb4d32a4d05a9f0fd71ca524da295e631218` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x5ca61aa5ef64d464692110bdcdd18241cd7e4887` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x608480d4c25c1b641092303cf9f45f7607b19c5c` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x62d9dbf80dc36444463ca87b5e69a28f97a46337` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x631a14d3483aa7da5b8244d1cb188d9f6605a6da` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x686e4fe64b2c5e72fe47c3c0c2f4c3a092092fbd` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x703730b6f1b0d7f3d03dcd662384f688c65c58ca` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x718e4d28015594fd6a4f45b381d9e1da0667c576` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x71970c419f37f0b3e492ecf0334079c1fd796696` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x7347c5e408a187540b22d5291191daf3e32aeaa0` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x74fa2b46ef049b770d50e382f76478e5b3a16c62` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x757858c6333e26ce2d34dfa9e0187efae18e2864` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x76b8c3ecdf99483335239e66f34191f11534cbaa` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x78d5f20f9e6d4a6a95e59c5b6a664f0acb4c904f` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x7997f3296fb687b94a96bb48b16a94ab4ee8a600` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x7adba1d426b1bec70dda0bf2748c96d98ed47cca` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x7f5d7012700f495ae43fc39d602ba60a9df795ec` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x868fe217bb9b954b75d0e568e9a01144b7b07fcd` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x8b08898e2613c3725bb857c72b12f8a3356bc832` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x92453c65af220c8bf8ec5c011aee36425ebb5105` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x93e6dc2abd2d88442c0e255adcd64617390d526a` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x99c1de2631801e7c60ae2ce972e7a2fd2b98d27e` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xa039d2b45ba0f0e114e50edf7f6e595d66158a3b` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xa1737e99340a39a68fe3d90a46a607401656c44a` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xa20283308001aafd1e7fdf5460e23a16bf9d814d` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xa30278310eadfb88725e9d2d17c643876c064da5` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xa40b92cde72139c0f43da05b46ba4d43e3230057` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xa55dc6b174fc4304559a1e5bbd522314fb88da66` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xa5bb4c5dfbf09f276256b1bacb4fa4f2a26bb503` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xa5efee3036d34f51f645a7686b26f6b7aa841714` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xa7eac0eb6cb82cd47e233a575e56f6b7c94f8f23` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xa881b995e279ffed740efe9800c7f0fcb2de3617` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xa993ae7e47b5e39be8f7e994bd8d30a279f6dcbe` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xaac353b2d1bc2dd8f437aaee4e011a7be39b60b4` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xaae5820feac3cf86b9a0f2e953fdd02afefc3b5b` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xae9720c6dac3495e6537d4b39e62ea81d14868e8` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xb278ef88a0e49bb2354966f3e095db085e1b0347` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xb6dddf6a240f1d2d4c3905f6989b9631b3947499` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xb72ef7800677a54e36d8b7cef616f5b3884b466f` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xbb15fb6a01a594a40d56759c0f2da025205ad69e` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xbb390447e843269609cd6fac92413f5778c7d726` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xbe487a9a9e98bfc444b092e1a57551c991d187a6` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xc388d51023de972bde95bca379472c82b9417d49` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xc3ba6869cd55e2c40a92e37cee03fcf85823c13b` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xc4d81c3983132cc93b0b3020c87a2392bd6be2e0` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xd218c16e203fc7bb0a73cb9e876542830f174048` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xd2adf2c6b12121e43c82ec45470a2e71119ce708` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xd60d41610e13e434fe9a53b94eb62592185142f4` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xd784dd3706366d6cf9dd7d379148de9221f67fc3` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xd8b9e93ad5453d93db70fffa3e58d57c06223bed` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xda4f3ee1e9136a3a2b3c03950916cf7f45e4f86a` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xe2babe722f1f0b7698513aeb9e3066f5bf452460` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xe442bee197bef943f7adaead3f2485ffc56bd605` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xeb9dba411e0515a1519307cf8b08f82bc6a978a2` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xeca70add5ce0ce95e7ecf5b77703e0886e9c3556` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xee02ea0d5ed8a6de6c93d2a8c545567b65ccf3c5` | non_address_book | unknown | unknown | unverified | n/a | `0xf482404f0ee4bbc780199b2995a43882a8595ada` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [skynet.certik.com/projects/autofarm](https://skynet.certik.com/projects/autofarm) | CertiK | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2379] skynet.certik.com/projects/autofarm — no match: The provided text is a project overview page from CertiK Skynet, not an audit report. It contains no scope section, contract listings, or audit findings. The only contract address mentioned (0xa184088a740c695e156f91f5cc086a06bb78b827) is for the AUTO token, but it is not explicitly listed as in scope for an audit. No audit date is identifiable.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| moonbeam | `0x77286f5257e090b1bedbc6df6726d53cbf8573a6` | AutoFarmV2_CrossChain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | `0xfada8cc923514f1d7b0586ad554b4a0cead4680e` | AutoFarmV2_CrossChain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0xdd11b66b90402f294a017c4688509c364312303f` | AutoFarmV2_CrossChain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 116 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 304 |

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

- [2379] skynet.certik.com/projects/autofarm

Fork inheritance lineage and inherited audits are included when available.
