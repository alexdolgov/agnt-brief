# Agentic Audit Brief: HOPR

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `12555af2097191e60e7a3dc0743058c9046ed87a105382bdae663a49f79103f7`

## Project Overview

- Project: HOPR (`hopr`)
- Website: [https://hoprnet.org](https://hoprnet.org)
- Lifecycle: unknown
- Generated: 2026-07-17T12:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: chain-31337, ethereum, gnosis
- Contract surface: 119 unique implementations (266 raw deployments)
- Coverage basis: 0/24 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $862,408.19
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for HOPR. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 26 contract row(s) across chain-31337, ethereum, gnosis. Structural roles: 18 supporting, 4 core, 4 unclassified. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 26
- Structural roles: supporting (18), core (4), unclassified (4)
- Contract kinds: contract (23), abstract (3)
- Detected standards: erc1967proxy (1), erc20 (1), ownable (1)
- Frameworks: openzeppelin (1), openzeppelin-upgradeable (1), solady (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 28 contracts are derived from known codebases. 28 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xd057604a14982fe8d88c5fc25aac3267ea142a08`, chain 100)
- UnnamedContract (`0xd4fdec44db9d44b8f2b6d529620f9c0c7066a2c1`, chain 100)
- HoprAnnouncements (`0xdff6cdf1a12905f424b812004e78cafb78b4991d`, chain 100)
- HoprAnnouncements (`0xedb388a829806e170acf9e7b4a993372beddc9bd`, chain 100)
- HoprAnnouncementsProxy (`0x060dbc55867f0ffc20e69f9273113aeb90f4d049`, chain 100)
- HoprAnnouncementsProxy (`0x225b4b6ffe08228db1182946b5f9e905f1a19a4d`, chain 100)
- HoprAnnouncementsProxy (`0xe08e8efac66c83a5e2ce9e0a696f8416a5ab6136`, chain 100)
- HoprChannels (`0x55271288d8c0ba3b2ff2d55bdc5fdafee6188732`, chain 100)
- HoprChannels (`0x69e63a01a2209f733c83eca619ddda2bea4d5cdf`, chain 100)
- HoprChannels (`0x81a79fcde8ffe6452e51d8e0493b37c2a5a09c57`, chain 100)
- HoprNodeManagementModule (`0x1167fb204298799b0b9e98896d58958caed164b0`, chain 100)
- HoprNodeManagementModule (`0x3b008cb90d252b731ceb8952a6ed78b84ab31ea3`, chain 100)
- HoprNodeManagementModule (`0x5f36592e29d90558bc629a4afd87d37d38d9a595`, chain 100)
- HoprNodeSafeMigration (`0x593ea8942e8b1d36f7714a15d43b5914def7b449`, chain 100)
- HoprNodeSafeMigration (`0x74dfcdf50340b772696caef3f3bc4cd776d37e8a`, chain 100)
- HoprNodeSafeMigration (`0xb9a6f18b40f632869defa4bbb2212c63767eb159`, chain 100)
- HoprNodeSafeRegistry (`0x0e4e1a2d851663462523bf38ca56259aceccbc76`, chain 100)
- HoprNodeSafeRegistry (`0x7b8e16ada4720eb87b8000b9d5700eebbb6b1b5c`, chain 100)
- HoprNodeSafeRegistry (`0x8cdf9a10646403c9aa797610d4c782ad26d334f4`, chain 100)
- HoprNodeStakeFactory (`0x6827ec1bf6232b07f30c2f2924ea681412b07687`, chain 100)
- HoprNodeStakeFactory (`0x8e9e7bedae175d57054d15e8870e00e5bc66d954`, chain 100)
- HoprNodeStakeFactory (`0xe9a9cf50534eb0817f9fbb115e00bf8463e973db`, chain 100)
- HoprTicketPriceOracle (`0x147899ca57111d9081df125c2bcbd839981f04c2`, chain 100)
- HoprTicketPriceOracle (`0x95566efb62b7d1e95a9ba05e1e43042a95da1e42`, chain 100)
- HoprTicketPriceOracle (`0xca2c60433ec6a10ddeabbbe3ce7f9737b1a0628c`, chain 100)
- HoprWinningProbabilityOracle (`0x3c5cbdfc873a6a52093c1d3801e29c2d78b26c7f`, chain 100)
- HoprWinningProbabilityOracle (`0x5136bac09c78af89bda56f5086a3f3e2ee4eafca`, chain 100)
- HoprWinningProbabilityOracle (`0x74329f8153cbb33aabded79ee84748fe8923c5e3`, chain 100)

## Contract Surface Quality

- Logic-topography rows: 26; live-surface rows included: 26 (26 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 26/35 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/24 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 26 own, 11 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 82 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 3
- Confirmed-live implementations: 26 of 119 unique; 93 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/48
- Verified + Unaudited implementations: 48
- Verified by bytecode match: 0
- Unverified implementations: 71
- Unique implementations: 119
- Raw deployments: 266
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (48)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BoostUtilsLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x8197525557233031b110038ae52dfc3c4a75567a` | ⚠️ Unaudited |
| ERC677Mock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 6 deployments: gnosis `0x223c4fe6d9c19cbdc6c66aa9a6b7ce5a445bf884`; gnosis `0x4decc7e6c63ff6c40630654a3b9c92b937369998`; gnosis `0x668c6d2a5cc054a47654d0cc292521cbb2a3f373`; gnosis `0x6f0b0ac37b89c937b5b79822806c4173f0eb0b7b`; gnosis `0xbce5af8c8c459d0fa7f8a82de27d43d2b62c558f`; gnosis `0xcb17f11d2a2017e305b124dd5e6ab5be63334254` | ⚠️ Unaudited |
| HoprAnnouncements | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 11 deployments: gnosis `0x0347a131861881604ea841b678210ba60b8e6d82`; gnosis `0x2ecec248ec225834e272a03e10016f890994f29a`; gnosis `0x5ce40e4b330ea20d9217f0120e3329b98017f9fb`; gnosis `0x619eabe23fd0e2291b50a507719aa633fe6069b8`; gnosis `0x7257fbdcbc81a37f8c830deb8dd3b715f1d1bba5`; gnosis `0x9c2e991a0b2579d1873f1d8e39550245ebf11f46`; gnosis `0xca77a29b5a993bbe4a983d7461bf0a296698d048`; gnosis `0xd78bca8452b8ea281a659f380e0ef710c64eb85b`; gnosis `0xe45a8dbdadafd86ab7e2368b4749864083331cfc`; gnosis `0xe79cfb480447980f86988dd580411c4b280b2814`; gnosis `0xf1c143b1ba20c7606d56aa2fa94502d25744b982` | ⚠️ Unaudited |
| HoprAnnouncements | unknown | project_anchor | own_supporting | 1 | gnosis | unit-242020 | 2 deployments: gnosis `0x225b4b6ffe08228db1182946b5f9e905f1a19a4d`; gnosis `0xdff6cdf1a12905f424b812004e78cafb78b4991d` | ⚠️ Unaudited |
| HoprAnnouncements | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0x45bba0c36ae14b9259b87f291f65e81b3d64acb9`; gnosis `0x5afe60f4f74159f8f68dadce6202b938cda80dad` | ⚠️ Unaudited |
| HoprAnnouncements | unknown | project_anchor | own_supporting | 1 | gnosis | unit-242022 | 2 deployments: gnosis `0xe08e8efac66c83a5e2ce9e0a696f8416a5ab6136`; gnosis `0xedb388a829806e170acf9e7b4a993372beddc9bd` | ⚠️ Unaudited |
| HoprAnnouncementsProxy | unknown | project_anchor | own_supporting | 0 | gnosis | unit-241986 | `0x060dbc55867f0ffc20e69f9273113aeb90f4d049` | ⚠️ Unaudited |
| HoprAnnouncementsProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 2 deployments: gnosis `0x191ee0d1494eb159a5f758bc7c05e434cfaff6e1`; gnosis `0x45b000742a693ab00fa4839a086dfb6155a15d3c` | ⚠️ Unaudited |
| HoprBoost | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 6 deployments: gnosis `0x2fc87247085f4658adb698cdbf4d732c704f1e06`; gnosis `0x38eede932296ec59234c228b4da0735e1ef3808b`; gnosis `0x43575668ac2c5066697101f27b4dc94819e490b7`; gnosis `0x81eba2b7d0893c8a65f3ca8f9126e9a0cb3b3d22`; gnosis `0x94ff5855b73efba088597e968e3782470eca3f8c`; gnosis `0xff1f463683092e4b62115548e95d55e42df72cac` | ⚠️ Unaudited |
| HoprChannels | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 18 deployments: gnosis `0x09b77f370c2f379f3db42b799fa7edbb37d9e51a`; gnosis `0x0b0e0e04938fe688dd854703414568b9724f2ff7`; gnosis `0x0c1cc35c3c4643aefa0a495d72a1223c1899e9d4`; gnosis `0x2ccd294e00593ce482216b88f3b481df5eeff357`; gnosis `0x414f3cbf5eabacf0b26f4145d642574b672a4ba2`; gnosis `0x4663ef95617fdb156346a36b6bd64df014115a52`; gnosis `0x5bd809bdbaa8d3d5f37743ae86bfef766dee56b6`; gnosis `0x693bac5ce61c720ddc68533991ceb41199d8f8ae`; gnosis `0x77c9414043d27fdc98a6a2d73fc77b9b383092a7`; gnosis `0x7a33eb3900db3e02a4c149e49dbc1f0359921b16`; gnosis `0x7e8c876eab41238e3d03b5e202ee5bc94425d8c3`; gnosis `0x9680f21d4583ad27f2e6bc3005edf120fff057b7`; gnosis `0xb20ee6e0b714e531cabf2c29fba147f4e5905b7b`; gnosis `0xc060582564b12335cd804339842f5509dbf6f74d`; gnosis `0xd54ee5aded3a4d2059a6f01debdb033bb5453433`; gnosis `0xe4ae7d64aa3b55f4c32c3d5b0d14d58324e8d1dc`; gnosis `0xe6203f94fa1761a4481a365c637b8044de286f01`; gnosis `0xfabee463f31e39ec8952bbfb4490c41103bf573e` | ⚠️ Unaudited |
| HoprChannels | unknown | project_anchor | own_supporting | 0 | gnosis | unit-241993 | `0x55271288d8c0ba3b2ff2d55bdc5fdafee6188732` | ⚠️ Unaudited |
| HoprChannels | unknown | project_anchor | own_supporting | 0 | gnosis | unit-241997 | `0x69e63a01a2209f733c83eca619ddda2bea4d5cdf` | ⚠️ Unaudited |
| HoprChannels | unknown | project_anchor | own_supporting | 0 | gnosis | unit-242001 | `0x81a79fcde8ffe6452e51d8e0493b37c2a5a09c57` | ⚠️ Unaudited |
| HoprDummyProxyForNetworkRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 8 deployments: gnosis `0x306c54123f0197bec232fe754f0b7cb9059d6db9`; gnosis `0x4d1a65716cba81b7b9b34ae6adc67c8eafb0af20`; gnosis `0x717cb24f3118b6d0895e3065d495e21a77c20e13`; gnosis `0x720a25152c8343f05dfd6a328df13b7312c42295`; gnosis `0x879fa1eedfe2fa49e69fa729dc0298b6a07423c0`; gnosis `0x8b33f0bddb1de051c6af70cf165e9ea0ebe822a5`; gnosis `0x9bcba0c73fc68b445fa398f98b8a1650dea81ce3`; gnosis `0xb167f8c83a5e7ffb4b0ad978274498961d3b2ca2` | ⚠️ Unaudited |
| HoprNetworkRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 16 deployments: gnosis `0x0dd5c8a4686a899db113865df03554b3d8f8c8b0`; gnosis `0x15a315e1320cff0de84671c0139042ee320ce38d`; gnosis `0x16078a834d8b396ea003927d3891bd9d04ed48ad`; gnosis `0x278a44a487d2ca9303c2b9abe00605b075cba69f`; gnosis `0x3eb3e9f5e2f9c348d29506a950f1cb7030b7df0d`; gnosis `0x582b4b586168621daf83beb2aeadb5fb20f8d50d`; gnosis `0x5def7a6990a63a3f4e01746644f1aaf48cebdb0a`; gnosis `0x6078afff71547b4ee8e7edda9f2591f8364cdf0c`; gnosis `0x6648120435c4413a588217c7e4bb6a4f11298740`; gnosis `0x79be26dbaf036a69e1eb398bb4c5a1cd2c159e34`; gnosis `0x7c6eead3602f1e10dfbaf4ccc6fc61b5fea3b736`; gnosis `0x819e6a81e1e3f96cf1ac9200477c2d09c676959d`; gnosis `0xd89e74cfc2689a79b280628f2502a17287cdb0f6`; gnosis `0xdd7b845405e931a7177270e2955e9683da19cfb1`; gnosis `0xed4977ebf25137d5e5e039a7a848149d67679f6c`; gnosis `0xf08e27c3a09627d605bfd164459f7caf18d1d25f` | ⚠️ Unaudited |
| HoprNodeManagementModule | unknown | project_anchor | own_supporting | 0 | gnosis | unit-241988 | `0x1167fb204298799b0b9e98896d58958caed164b0` | ⚠️ Unaudited |
| HoprNodeManagementModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 10 deployments: gnosis `0x1e158754342432d866f1ab6e2e23dd71e496bc6b`; gnosis `0x32863c4974fbb6253e338a0cb70c382dced2efcb`; gnosis `0x3f59b44bff48427373db13504c2830ada2d600a3`; gnosis `0x4db69d5d0ccad110a6f327bc837fe5b7e1ffbdae`; gnosis `0x5d6ad492888472f585de6b2aced217ed3db87ae7`; gnosis `0x79c3bf06e96a9373765284afb0a35e9529e2b3f2`; gnosis `0x7bf108c2707658971e24e488aaceae73535b2b9c`; gnosis `0xb7397c218766ebe6a1a634df523a1a7e412e67ea`; gnosis `0xe74ebb2a63ac86a84d6c0040a17465e3997f3f68`; gnosis `0xe8d914ef66b4ff086c6fbcb1e0ea97c0a9d2f3de` | ⚠️ Unaudited |
| HoprNodeManagementModule | unknown | project_anchor | own_supporting | 0 | gnosis | unit-241990 | `0x3b008cb90d252b731ceb8952a6ed78b84ab31ea3` | ⚠️ Unaudited |
| HoprNodeManagementModule | unknown | project_anchor | own_supporting | 0 | gnosis | unit-241995 | `0x5f36592e29d90558bc629a4afd87d37d38d9a595` | ⚠️ Unaudited |
| HoprNodeSafeMigration | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 4 deployments: gnosis `0x06e01a5cebad283c0f00f857c06fbd804b054910`; gnosis `0x6e3ef29b17fb33c1db372b06b19ce937894b317a`; gnosis `0xe95b481aa95e1d071a4b250ea5f9dd498a19646b`; gnosis `0xe9670b5d87c87111c9050d915971b73b9f5021a9` | ⚠️ Unaudited |
| HoprNodeSafeMigration | operational_periphery | project_anchor | own_supporting | 0 | gnosis | unit-241994 | `0x593ea8942e8b1d36f7714a15d43b5914def7b449` | ⚠️ Unaudited |
| HoprNodeSafeMigration | operational_periphery | project_anchor | own_supporting | 0 | gnosis | unit-241999 | `0x74dfcdf50340b772696caef3f3bc4cd776d37e8a` | ⚠️ Unaudited |
| HoprNodeSafeMigration | operational_periphery | project_anchor | own_supporting | 0 | gnosis | unit-242005 | `0xb9a6f18b40f632869defa4bbb2212c63767eb159` | ⚠️ Unaudited |
| HoprNodeSafeRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 5 deployments: gnosis `0x0bf6bd25ac47fe9d41a99b135cb439b89138f05a`; gnosis `0x4f7c7de3ba2b29ed8b2448df2213ca43f94e45c0`; gnosis `0x549dce2ce8ba1c177b080d372580fa4d85123671`; gnosis `0xafa257f2799835d2e29e7ec7ee448530f9d8cb20`; gnosis `0xe15c24a0910311c83ac78b5930d771089e93077b` | ⚠️ Unaudited |
| HoprNodeSafeRegistry | registry | project_anchor | own_supporting | 0 | gnosis | unit-241987 | `0x0e4e1a2d851663462523bf38ca56259aceccbc76` | ⚠️ Unaudited |
| HoprNodeSafeRegistry | registry | project_anchor | own_supporting | 0 | gnosis | unit-242000 | `0x7b8e16ada4720eb87b8000b9d5700eebbb6b1b5c` | ⚠️ Unaudited |
| HoprNodeSafeRegistry | registry | project_anchor | own_supporting | 0 | gnosis | unit-242002 | `0x8cdf9a10646403c9aa797610d4c782ad26d334f4` | ⚠️ Unaudited |
| HoprNodeStakeFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 12 deployments: gnosis `0x048d04c9f5f74d65e76626b943779dec6edcefec`; gnosis `0x098b275485c406573d042848d66eb9d63fca311c`; gnosis `0x1b2263195722ec759ef3fd6191fe35f314c62dfb`; gnosis `0x3667f00c5470778c3b97910652e9db57f582c23a`; gnosis `0x439f5457ff58cee941f7d946cb919c52ea30cfb3`; gnosis `0x5f5b459db681996292ad58cc10e88027033149b8`; gnosis `0x63e44a4e1349d1c3f0cfc52c4dae7710a6345761`; gnosis `0x791d190b2c95397f4bce7bd8032fd67dcea7a5f2`; gnosis `0x878ea9591726e70aa06f820c3ba5142a0c8ab58b`; gnosis `0x87e1ebd42f0f79d88e5af212d0c24dc155ea78c0`; gnosis `0xcb0841cc3dbde97ac52b945f02ee4f3d8707d977`; gnosis `0xfb22ecee9fb5b91c096d34649892ecc509912684` | ⚠️ Unaudited |
| HoprNodeStakeFactory | registry | project_anchor | own_supporting | 0 | gnosis | unit-241996 | `0x6827ec1bf6232b07f30c2f2924ea681412b07687` | ⚠️ Unaudited |
| HoprNodeStakeFactory | registry | project_anchor | own_supporting | 0 | gnosis | unit-242003 | `0x8e9e7bedae175d57054d15e8870e00e5bc66d954` | ⚠️ Unaudited |
| HoprNodeStakeFactory | registry | project_anchor | own_supporting | 0 | gnosis | unit-242009 | `0xe9a9cf50534eb0817f9fbb115e00bf8463e973db` | ⚠️ Unaudited |
| HoprSafeProxyForNetworkRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 3 deployments: gnosis `0x0d1a8f1b13fd1d64696c5e03dd45cd139e40de0c`; gnosis `0x20559cbd3c2edcd0b396431226c00d2cd102eb3f`; gnosis `0x2bc6b78b0aa892e97714f0e3b1c74487f92c5884` | ⚠️ Unaudited |
| HoprStakeSeason5 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xd80fbbfe9d057254d80eebb49f17aca66a238e2d` | ⚠️ Unaudited |
| HoprStakeSeason6 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 10 deployments: gnosis `0x20b77371fa897332491c4463bdede3cad614d901`; gnosis `0x27f10230f14c439bbc667433c3da020e04a6e780`; gnosis `0x46eeeeb63f8d8ce2f2cdec655a9aa1a3152b274d`; gnosis `0x617cfca008182d03284c0ce6d159f79a0733399d`; gnosis `0x84f238243fa06cac8e9811cc36d49cb6a86d4c62`; gnosis `0x884439b39360729d7b4e4d43a01459b14d75c969`; gnosis `0xa02af160a280957a8881879ee9239a614ab47f0d`; gnosis `0xb8dcc6760ed9681a2bf816c0f3f58ade320e055b`; gnosis `0xe2e8fc56094db9b5ee718159e013d09bffdf4903`; gnosis `0xfe749f8ef3601c6adb8d9eab6c274915b8d04fec` | ⚠️ Unaudited |
| HoprStakeSeason7 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 6 deployments: gnosis `0x26d1cec4ba2f98ff35ec549fcd1b82a90bb32065`; gnosis `0x4a813d7354841dcc437a04ce8a9f8edc8c7559a3`; gnosis `0x5041668ede2107b88e1c63e17690b7ddc2f457fc`; gnosis `0x65c39e6bd97f80b5ae5d2120a47644578fd2b8dc`; gnosis `0xca7801a1c0df0effc0031330efe98dae40230d80`; gnosis `0xfe9340116590ac44a6cb48f6ee9ae499a9918531` | ⚠️ Unaudited |
| HoprStakingProxyForNetworkRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 11 deployments: gnosis `0x0248b31dae66bf28360f9f5da9ef7f046441ded5`; gnosis `0x0c87812f2cbd60176e4df1f81940c7174215db24`; gnosis `0x1c0c4efb9a2cce18d66eaffc585876d8ca768013`; gnosis `0x32c4f15b80cdd75ca2f4be9faef3503c15895cd0`; gnosis `0x628ed93eebf1840bf26e8fb62bce4f1bccde9e95`; gnosis `0x84f6f86dc4df8304b1568e046c8053602addd691`; gnosis `0x9937fa1497be80c473c14b944e213bb381f18c34`; gnosis `0xab9e6d4978061da926563284dae849ef5ebf448e`; gnosis `0xb1a1ca4e7ad91ccfc9dcc94f8fe43cfb7e907a18`; gnosis `0xc1351a3ec7ecd5c57b44798752dbcc5f549932ad`; gnosis `0xca9b1bc189f977b2a9217598d0300d956b6a719f` | ⚠️ Unaudited |
| HoprTicketPriceOracle | operational_periphery | project_anchor | own_supporting | 0 | gnosis | unit-241989 | `0x147899ca57111d9081df125c2bcbd839981f04c2` | ⚠️ Unaudited |
| HoprTicketPriceOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 12 deployments: gnosis `0x27de67e72a57d18e99d0828a31298d4cc1c43d46`; gnosis `0x281a91fea199a3bab5d7d5f05833b257e2fd7741`; gnosis `0x344f8dd6dbcd5bc0b396ddd47f20fdc9a89c3c90`; gnosis `0x442df1d946303fb088c9377eefdaea84146da0a6`; gnosis `0x46aa0d83b8a28005580ae83477056f4ada9afa2f`; gnosis `0x4dd10ea363323935b933778f5d869d87747c7b44`; gnosis `0x624af123a0149670848fa95e972b35ffee6a48fb`; gnosis `0xca5656fe6f2d847aca32cf5f38e51d2054ca1273`; gnosis `0xca9559e2fba20bcdf455879b17158a28f26f6b39`; gnosis `0xcffe25caf9b1cca3cc4b54842a4e0e520a05ae17`; gnosis `0xf69a919baf23e16a83fcebb56f6b50602a91fd6e`; gnosis `0xfa251d4c367683d6181531afd5964e660acf43a0` | ⚠️ Unaudited |
| HoprTicketPriceOracle | operational_periphery | project_anchor | own_supporting | 0 | gnosis | unit-242004 | `0x95566efb62b7d1e95a9ba05e1e43042a95da1e42` | ⚠️ Unaudited |
| HoprTicketPriceOracle | operational_periphery | project_anchor | own_supporting | 0 | gnosis | unit-242006 | `0xca2c60433ec6a10ddeabbbe3ce7f9737b1a0628c` | ⚠️ Unaudited |
| HoprToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 16 deployments: gnosis `0x306691425babb4b6cd515dba3a714160354bda9c`; gnosis `0x31efbe75ef4b94d21c868c424eaafc5f32d9d35b`; gnosis `0x428246bd8632f727fec70662b10dc37b519624df`; gnosis `0x42aa2ac875abe8d7194b2e80510ffc44f08d82a4`; gnosis `0x4daccc8b4a2ba8e6d9294011312772b64ee428bd`; gnosis `0x66225de86cac02b32f34992eb3410f59de416698`; gnosis `0x69f2cd4d8fd8a17f7e506d2d937b7971ec5c68ec`; gnosis `0x748aeccc56dfac6099d4aa1a4de51f97ec7def49`; gnosis `0x75b0c29607b7567318779c0f1994bba2de150bde`; gnosis `0x9c312f8997f215ada9802da9fb281206350ead2b`; gnosis `0xd47336dcda0315686ef2e3d60106d30d89318b18`; gnosis `0xdb221569131881ef716197cf783467692e377a65`; gnosis `0xe32a15a220f5a996014687c7046d9832cb9a3898`; gnosis `0xeda0314ae77361e6ba558053919d10bcb60f236c`; gnosis `0xf1adf07d0d4e1befdde79066771d057337e55c08`; gnosis `0xf9a45b171df1d9b8af242c22ada645222b89adf7` | ⚠️ Unaudited |
| HoprWinningProbabilityOracle | operational_periphery | project_anchor | own_supporting | 0 | gnosis | unit-241991 | `0x3c5cbdfc873a6a52093c1d3801e29c2d78b26c7f` | ⚠️ Unaudited |
| HoprWinningProbabilityOracle | operational_periphery | project_anchor | own_supporting | 0 | gnosis | unit-241992 | `0x5136bac09c78af89bda56f5086a3f3e2ee4eafca` | ⚠️ Unaudited |
| HoprWinningProbabilityOracle | operational_periphery | project_anchor | own_supporting | 0 | gnosis | unit-241998 | `0x74329f8153cbb33aabded79ee84748fe8923c5e3` | ⚠️ Unaudited |
| HoprWinningProbabilityOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 2 deployments: gnosis `0xa641822a52acbdc0c0123337f715c1d9756c21bd`; gnosis `0xf2d64bb29a5207dfcf6185161e43364d3b2d9a27` | ⚠️ Unaudited |
| HoprWinningProbablityOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 3 deployments: gnosis `0x02e1009fd222917ee7bdfdbf8ae1e56c4ae3f6f3`; gnosis `0x7eb8d762fe794a108e568ad2097562cc5d3a1359`; gnosis `0xc15675d4cca538d91a91a8d3ecfbb8499c3b0471` | ⚠️ Unaudited |
| MyERC20Swapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 3 deployments: gnosis `0x9354126822bef74d1efc6f0f0b50703388dd7f52`; gnosis `0xadb77ff6d5da1e57475956f1ac69ceeba5a068b8`; gnosis `0xb331b22815e1dc0eedee370fbc4f793eff78ee97` | ⚠️ Unaudited |
| UniswapV2Swapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x44ae0c2911e1cd04b4b7b66b6583c6948fd43e06` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (71)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xd4fdec44db9d44b8f2b6d529620f9c0c7066a2c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x03a13cfd79009b56b7d62c68fc3b8fbb3b2b0752` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x15b362617891169f7e448d88322d572f205e3c78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x2f3243adc9805f6dd3e01c9e9ed31675a5b16902` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x3065d24595cbcadb03b33c91c00593dc6119ef14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x3c00454fb6559e4807b36b40bfc704eef5b9775a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x3e7c4720934ff6a9fe122cb761f36a11e9b848d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x3faf312607bf4fd346f22d588ca24c0cad962305` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x3fca373de74f7643038a9d83b996ed35605dd2a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x43bfd18535983233b39d79a5c426ed5c33093203` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x44f9383000905c1c94fab6efc32441a69c1eb38d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x490be8ac0fe25ac93c3133ae73cec0c433961a34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x4c3bb6470b72a749db1bb394c024a92ab60a793e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x4d3d5fe22d7e4078af8c3d1106f71f42d4062694` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x4e7031069760877cae542d64e1f630c495b3e958` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x51b0bda0af2d760302ca433adedd3858f9bfb4c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x53225b539b39a7a8cc5bf2f0f9f4b73e15569029` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x545e7f67f80e60928052bd0385e76f71dc694262` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x58d2938bb8b4cf8954b2169b032122645592b953` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x5bc5e9cd02d0caab0a478b69a7c97068fe5f031f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x600aa477eaa2f7dfc06c4d04314679405efdb226` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x6279e6966b5702af5cf28c2643470a42dbaf4886` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x6508ca6da67492512954d711f42b9b4680388de9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x683d3859dfb5a8c0f00703f9466f4cc09a6431d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x6af01f9b2ee06349a93032e9625d739fd8c199b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x6ccbfe8f403748285fc51f3618a28fd83fee935c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x6e078019eee40b249fa3a876e7a6b089b77cff9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x712284b2184490b99f7139bd6db50fa5330bddf8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x715978dc28c44410a187c7d3d5a308c7d7b1096d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x71b66fd833f0bb7473b388e2a7e2fa5e1c85e09e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x74f38cf6ce668d9513c195cceb0ae96feb0a1e05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x7535253433526db01500a226cfb25efa5af8e884` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x75b1e7e99f1cdded81ea3cf162746f68f1ea4d50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x810c39897b0fb2f7801878dca399e4f92f8afe5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x8506b40a57afadc1e7f31f0a693843e39c1f3f59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x8d9978466161c2897f483a93f51adea9e52d8d32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x920cc23b58add4621327e6bee1282ba47ec17be0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x9d665647c833687c2afd353b4a6dc65650d76114` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xa11cc45ddf3564ac17da2c15a9e22ad932b66a5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xa2e2f71f687914f5dc2010632bc2debb1b9fc1d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xa8ad804139585d12fdb787a4274d57378b302125` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xae254e8e28680f7b1a5ce1a2b24d1aa5e8fc41a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xb12bc245b2f2a5ce4abc10dbf2828b36ee615ba7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xb3b09fa6504f9d59f1a9740f68f3e904ca857a82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xc51a5616689ed23800a7948f1a67a7635adc2141` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xc76e4c5774b354488143551fdb7221c6a53438cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xc797f94d98f08003d8fb23dab0982645546cf2e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xc87850338815d8bbaddbfc5d67938500525f8f5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xcb8f0bdb575d5695732a10400e877784504ac853` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xcc0ffa538c3eee252c25077859e72ecb50de7013` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-242007 | `0xd057604a14982fe8d88c5fc25aac3267ea142a08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xd2c191dd9757d9f19f9815751a1a29b9933ffa63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xd47a3fac305c2e272ad2344c1b718b2f70f81955` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-242008 | `0xd4fdec44db9d44b8f2b6d529620f9c0c7066a2c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xe89c68311edf0f10a1aa89c4976220604c4abb43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xe9ac0501004877d5ad530d58b1f149dd0736b9e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xea4673c9b049bfdd89d136d1de76ac6e6853d44a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xed3b6d8c36a0a0406b6d8314e716980e136e40fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xf20190bc14b6481a79f216b7b5f7683bdc820b25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xf4c6e161036bc7cd087642d5601f56e3e2871aa3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xffb525604eaf206fdef48e199dba377f7fe1deec` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | n/a | `0x0000000000000000000000000000000000000000` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-242010 | `0x0ecb0e77e6bde494665993dad5b3b14c026c08bd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-242011 | `0x37406b53c672083cd70a2eb44732c7276ede2049` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-242012 | `0x376b4a2243b74667ea186fc89114355599e6b5c4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-242013 | `0x42c47173d81fb51fc23a1be3804e0cba4972e6dd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-242014 | `0x51dfbbd2612d76ecc5a157f3c236b2b1cdffa733` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-242015 | `0x81c9a8b5c1fd9e4b5c134dab131ebc0b35d25994` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-242016 | `0x8c4c7942a75754ebe57c8baa2341d1f4922124c5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-242017 | `0xcf4c708eeda485f3fe5ceacec86eae46ef3fc87d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-242018 | `0xfd5c1c0f5299b51282a0bcb0465ff7f536f320a9` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [ChainSecurity_HOPRNet_PaymentChannel_Audit.pdf](https://reports.chainsecurity.com/HOPRNet/ChainSecurity_HOPRNet_PaymentChannel_Audit.pdf) | ChainSecurity | Audit | 2021-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [www.chainsecurity.com/security-audit/hopr-payment-channels](https://www.chainsecurity.com/security-audit/hopr-payment-channels) | ChainSecurity | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 1 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3185] ChainSecurity_HOPRNet_PaymentChannel_Audit.pdf — no match: Only one contract in scope: HoprChannels.sol
- [11795] www.chainsecurity.com/security-audit/hopr-payment-channels — no match: Only one contract name (HoprChannels) is explicitly mentioned as being reviewed. No file paths, addresses, or audit date are provided.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| ChainSecurity_HOPRNet_PaymentChannel_Audit.pdf | HoprChannels | ambiguous — not counted | HoprChannels (alternative) `0x55271288d8c0ba3b2ff2d55bdc5fdafee6188732` — deployed 2026-01-06 17:19:00+03 — liveness: live (current_address_book_code)<br>HoprChannels (alternative) `0x69e63a01a2209f733c83eca619ddda2bea4d5cdf` — deployed 2026-01-06 17:17:35+03 — liveness: live (current_address_book_code)<br>HoprChannels (alternative) `0x81a79fcde8ffe6452e51d8e0493b37c2a5a09c57` — deployed 2026-01-27 16:14:45+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| www.chainsecurity.com/security-audit/hopr-payment-channels | HoprChannels | ambiguous — not counted | HoprChannels (alternative) `0x55271288d8c0ba3b2ff2d55bdc5fdafee6188732` — deployed 2026-01-06 17:19:00+03 — liveness: live (current_address_book_code)<br>HoprChannels (alternative) `0x69e63a01a2209f733c83eca619ddda2bea4d5cdf` — deployed 2026-01-06 17:17:35+03 — liveness: live (current_address_book_code)<br>HoprChannels (alternative) `0x81a79fcde8ffe6452e51d8e0493b37c2a5a09c57` — deployed 2026-01-27 16:14:45+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| gnosis | `0x225b4b6ffe08228db1182946b5f9e905f1a19a4d` | HoprAnnouncements | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0xe08e8efac66c83a5e2ce9e0a696f8416a5ab6136` | HoprAnnouncements | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x060dbc55867f0ffc20e69f9273113aeb90f4d049` | HoprAnnouncementsProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x55271288d8c0ba3b2ff2d55bdc5fdafee6188732` | HoprChannels | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x69e63a01a2209f733c83eca619ddda2bea4d5cdf` | HoprChannels | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x81a79fcde8ffe6452e51d8e0493b37c2a5a09c57` | HoprChannels | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x1167fb204298799b0b9e98896d58958caed164b0` | HoprNodeManagementModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x3b008cb90d252b731ceb8952a6ed78b84ab31ea3` | HoprNodeManagementModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x5f36592e29d90558bc629a4afd87d37d38d9a595` | HoprNodeManagementModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x593ea8942e8b1d36f7714a15d43b5914def7b449` | HoprNodeSafeMigration | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x74dfcdf50340b772696caef3f3bc4cd776d37e8a` | HoprNodeSafeMigration | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0xb9a6f18b40f632869defa4bbb2212c63767eb159` | HoprNodeSafeMigration | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x0e4e1a2d851663462523bf38ca56259aceccbc76` | HoprNodeSafeRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x7b8e16ada4720eb87b8000b9d5700eebbb6b1b5c` | HoprNodeSafeRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x8cdf9a10646403c9aa797610d4c782ad26d334f4` | HoprNodeSafeRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x6827ec1bf6232b07f30c2f2924ea681412b07687` | HoprNodeStakeFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x8e9e7bedae175d57054d15e8870e00e5bc66d954` | HoprNodeStakeFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0xe9a9cf50534eb0817f9fbb115e00bf8463e973db` | HoprNodeStakeFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x147899ca57111d9081df125c2bcbd839981f04c2` | HoprTicketPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x95566efb62b7d1e95a9ba05e1e43042a95da1e42` | HoprTicketPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0xca2c60433ec6a10ddeabbbe3ce7f9737b1a0628c` | HoprTicketPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x3c5cbdfc873a6a52093c1d3801e29c2d78b26c7f` | HoprWinningProbabilityOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x5136bac09c78af89bda56f5086a3f3e2ee4eafca` | HoprWinningProbabilityOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x74329f8153cbb33aabded79ee84748fe8923c5e3` | HoprWinningProbabilityOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 47 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 71 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 2 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, low=1
- Match method counts: n/a

Zero-match audit list:

- [3185] ChainSecurity_HOPRNet_PaymentChannel_Audit.pdf
- [11795] www.chainsecurity.com/security-audit/hopr-payment-channels

Fork inheritance lineage and inherited audits are included when available.
