# Agentic Audit Brief: Augur

## Export Authority

- Production state: **published scope**
- Raw selected rows: 22 across 4 audit(s)
- Eligible audit results: 7 (4 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `badfb69ca75b1f24c1a11ab95b6fafb44eb35f63eed2bc554b58d06f531dd5bd`

## Project Overview

- Project: Augur (`augur`)
- Website: [https://augur.net/](https://augur.net/)
- Lifecycle: active (Tier 0, 90.5% below peak)
- Generated: 2026-07-24T07:45:00.000Z
- Pipeline run: brief-priority-deployer-expansion-20260724-v1
- Chains: ethereum
- Contract surface: 141 unique implementations (151 raw deployments)
- Coverage basis: 9/23 confirmed own live verified implementations (39.1%); conservative 39.1% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,260,713.35
- On-chain TVL (included contracts): $4,454,398.26
- TVL by chain: Ethereum $4,454,398.26

## Project Description

This brief describes the observed EVM deployment and audit surface for Augur. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 23 contract row(s) across ethereum. Structural roles: 18 core, 4 supporting, 1 unclassified. 8 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 23
- Structural roles: core (18), supporting (4), unclassified (1)
- Contract kinds: contract (23)
- Detected standards: erc20 (2), erc1155 (1), erc20permit (1)
- Frameworks: openzeppelin (12), openzeppelin-upgradeable (8)
- Upgradeable-pattern rows: 8

## Fork Analysis

0 of 29 contracts are derived from known codebases. 29 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x1dd864ed6f291b31c86aaf228db387cd60a20e18`, chain 1)
- UnnamedContract (`0x3a1b0dde9bf5ff6c1c5d115b12b036edfd3bf32a`, chain 1)
- UnnamedContract (`0x5836bedb48834474c8e11fbc005e7fb2c2a35d7d`, chain 1)
- UnnamedContract (`0x73961558c6d1e8c5df845975d4d49dca3db18887`, chain 1)
- UnnamedContract (`0xc2930a5eb22e8d8812934d59508fe940e9f91c4e`, chain 1)
- UnnamedContract (`0xd2a04e60a4b7f6077ac2a87a8cfd81722b75b9cf`, chain 1)
- Affiliates (`0x3a4131e478992cd856d2f8be4cb5cd8e56e635b3`, chain 1)
- AffiliateValidator (`0x2a256518dddce6e2e95b56a95991d4fa990be659`, chain 1)
- Augur (`0x23916a8f5c3846e3100e5f587ff14f3098722f5d`, chain 1)
- AugurTrading (`0x63a1eed178323c5ee0ad72fbd8a8cf1a7902881e`, chain 1)
- AugurWalletRegistry (`0x9fa160f92a10b431f255bf1a70a1c1e5808e5128`, chain 1)
- BuyParticipationTokens (`0x1aacc93f3ee47d7de20171468d9c2458d5602483`, chain 1)
- CancelOrder (`0x465bf82912497a424a4669e92319d9355dcfb0d0`, chain 1)
- CreateOrder (`0x8a97cbe557f1153b04d4edbe4eca0159b8138937`, chain 1)
- Exchange (`0x61935cbdd02287b511119ddb11aeb42f1593b7ef`, chain 1)
- FillOrder (`0xc42e71b9a6e38dd05cfb51be6751a4d10d66ba35`, chain 1)
- Orders (`0x483156fe50f752c63aa671a806db10d5cabd7a8f`, chain 1)
- ProfitLoss (`0x2c167231cf521aaabc8abe09f4e2bcb728f26c01`, chain 1)
- RedeemStake (`0x9ac7b28a7e684d1b2776d6b9045e8f9150f58401`, chain 1)
- RelayHub (`0x5648b6306380689af8d2de7bdd23d916b9ee0db5`, chain 1)
- ReputationToken (`0x221657776846890989a759ba2973e427dff5c9bb`, chain 1)
- ShareToken (`0x9e4799ff2023819b1272eee430eadf510edf85f0`, chain 1)
- Trade (`0x0cd32f92e3ea33d81d8cf60e20dddfdef4915667`, chain 1)
- UniswapV2Factory (`0x5c69bee701ef814a2b6a3edd4b1652cb9cc5aa6f`, chain 1)
- UniswapV2Pair (`0xa478c2975ab1ea89e8196811f51a7b7ade33eb11`, chain 1)
- UniswapV2Router02 (`0x7a250d5630b4cf539739df2c5dacb4c659f2488d`, chain 1)
- Universe (`0x49244bd018ca9fd1f06ecc07b9e9de773246e5aa`, chain 1)
- WarpSync (`0xe0c69aefaa7611de493bce9525abf2a2c3c7fc4d`, chain 1)
- ZeroXTrade (`0x8346f3074994fd9a813c735d629b257d93780eed`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 23; live-surface rows included: 23 (23 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 29/29 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 9/23 (39.1%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 29 own, 6 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 106 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 4
- Confirmed-live implementations: 29 of 141 unique; 112 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 9/80
- Verified + Unaudited implementations: 71
- Verified by bytecode match: 0
- Unverified implementations: 61
- Unique implementations: 141
- Raw deployments: 151
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2018-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 7 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 9 match-unverified
- Tier 1 coverage: 4.3% (ChainSecurity)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Zeppelin | Tier 2 | 9 | 11.3% | 2018-03 |
| LeastAuthority | Tier 2 | 3 | 3.8% | 2017-12 |
| ChainSecurity | Tier 1 | 1 | 1.3% | 2017-12 |

## Contract Surface

### ✅ Verified + Audited (9)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ReputationToken | token | project_anchor | own_supporting | 0 | ethereum | unit-227345 | `0x221657776846890989a759ba2973e427dff5c9bb` | ✅ Audited |
| Augur | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227346 | `0x23916a8f5c3846e3100e5f587ff14f3098722f5d` | ✅ Audited |
| CancelOrder | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227351 | `0x465bf82912497a424a4669e92319d9355dcfb0d0` | ✅ Audited |
| CreateOrder | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227361 | `0x8a97cbe557f1153b04d4edbe4eca0159b8138937` | ✅ Audited |
| FillOrder | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227367 | `0xc42e71b9a6e38dd05cfb51be6751a4d10d66ba35` | ✅ Audited |
| Orders | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227352 | `0x483156fe50f752c63aa671a806db10d5cabd7a8f` | ✅ Audited |
| ShareToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227363 | `0x9e4799ff2023819b1272eee430eadf510edf85f0` | ✅ Audited |
| Trade | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227342 | `0x0cd32f92e3ea33d81d8cf60e20dddfdef4915667` | ✅ Audited |
| Universe | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227353 | `0x49244bd018ca9fd1f06ecc07b9e9de773246e5aa` | ✅ Audited |

### ⚠️ Verified + Unaudited (71)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Affiliates | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227350 | `0x3a4131e478992cd856d2f8be4cb5cd8e56e635b3` | ⚠️ Unaudited |
| AffiliateValidator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227347 | `0x2a256518dddce6e2e95b56a95991d4fa990be659` | ⚠️ Unaudited |
| Augur | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75228dce4d82566d93068a8d5d49435216551599` | ⚠️ Unaudited |
| AugurTrading | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227357 | `0x63a1eed178323c5ee0ad72fbd8a8cf1a7902881e` | ⚠️ Unaudited |
| AugurWalletRegistry | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227364 | `0x9fa160f92a10b431f255bf1a70a1c1e5808e5128` | ⚠️ Unaudited |
| BuyParticipationTokens | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227343 | `0x1aacc93f3ee47d7de20171468d9c2458d5602483` | ⚠️ Unaudited |
| CancelOrder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3448209268e97652bb67ea12777d4dfba81e3aaf` | ⚠️ Unaudited |
| CaptureTheFlag | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2faf4460ff24799b4e999363f4060879f5006396` | ⚠️ Unaudited |
| Cash | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x9b4af4a3295cf476a2b00736f7332f35bbee960e`; ethereum `0xd5524179cb7ae012f5b642c1d6d700bbaa76b96b` | ⚠️ Unaudited |
| ChaiBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77c31eba23043b9a72d13470f3a3a311344d7438` | ⚠️ Unaudited |
| ClaimTradingProceeds | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4334477348222a986fc88a05410aa6b07507872a` | ⚠️ Unaudited |
| CompleteSets | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6bff4f91016c2b4aac140b2d8d7317b36afe5ab` | ⚠️ Unaudited |
| Controlled | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6da4e67755fb48e26af50915991f57665f66759c` | ⚠️ Unaudited |
| Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3337164e91b9f05c87c7662c7ac684e8e0ff3e7` | ⚠️ Unaudited |
| Coordinator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9401f3915c387da331b9b6af5e2a57e580f6a201` | ⚠️ Unaudited |
| CreateOrder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f27b0598949dbf9e539bbd217f15bf3f5e97999` | ⚠️ Unaudited |
| Delegator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x10b5589fc6922f5c27061ac79ad9a4af35e15806`; ethereum `0xd7a14019aeeba25e676a1b596bb19b6f37db74d2` | ⚠️ Unaudited |
| DevUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xdaed44b9c185ac30ecf0d81c492180ce74e87046`; ethereum `0xf15fbafc74e10a9761b6aefd5d2239f098f8fb1e` | ⚠️ Unaudited |
| DisputeCrowdsourcer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x183614d40cee16bf6fcd9dff51556f398ec8d360` | ⚠️ Unaudited |
| DisputeCrowdsourcerFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1be98680ff697390cbc4cdc414a1be8add733bf7` | ⚠️ Unaudited |
| ERC20BridgeProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ed95d1746bf1e4dab58d8ed4724f1ef95b20db0` | ⚠️ Unaudited |
| Eth2DaiBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ac2d6f5f5afc669d3ca38f830dad2b4f238ad3f` | ⚠️ Unaudited |
| Exchange | unknown | project_anchor | own_supporting | 1 | ethereum | unit-227370 | `0x61935cbdd02287b511119ddb11aeb42f1593b7ef` | ⚠️ Unaudited |
| Exchange | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb27f1db0a7e473304a5a06e54bdf035f671400c0` | ⚠️ Unaudited |
| FeeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0dfed99988fcc9bdfa1f4fb0084942e1be6e2de` | ⚠️ Unaudited |
| FeeTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe86a4beb10155a5bd7ebb430ce13438341e808a8` | ⚠️ Unaudited |
| FeeWindow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56cc82bbb3049dc3366bf26061d09ed3fd061881` | ⚠️ Unaudited |
| FeeWindowFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b4140771615b25f22a4bf52f77e35cdccc5b663` | ⚠️ Unaudited |
| FillOrder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39c230f89981274177e79708c921582bd4bd0303` | ⚠️ Unaudited |
| Forwarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x132a04f3f6196b499a7ed512c15e002d5dcefa9a`; ethereum `0x4699d5c42a3bc7dd9c72d218ccea45954af24f53`; ethereum `0x4ef40d1bf0983899892946830abf99eca2dbc5ce` | ⚠️ Unaudited |
| InitialReporter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4fa2b609c19edf731ec33f54f54602a92dfcde6d` | ⚠️ Unaudited |
| InitialReporterFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbca52c29b535fd63bdc7ca35efa56116550f4c59` | ⚠️ Unaudited |
| Mailbox | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4dcb585b8c8c52c2d25d5a7c2672646bc24b3b66` | ⚠️ Unaudited |
| MailboxFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe33ca1ebb783343035b11a7e755c29c28b763540` | ⚠️ Unaudited |
| Map | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94c01429d67a275de013e457eff6e028e10763d9` | ⚠️ Unaudited |
| MapFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67f53b749fe432274e3f53752a91da89ef86777e` | ⚠️ Unaudited |
| Market | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x380070670fb427ae8070631eef6f2d0824d8ce01`; ethereum `0xb9fb1a6fa14a8296b1de7a2653b1fe6c9dfc1dcb` | ⚠️ Unaudited |
| MarketFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x518530aca60154403012f17c7b8e26f88f7494ee` | ⚠️ Unaudited |
| OICash | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12f51386583ae7f2b8f3f8cb94b716e4f54fa4fe` | ⚠️ Unaudited |
| Order | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75d789ef6344579fbe75a4d2d9217ec23b005f8f` | ⚠️ Unaudited |
| Orders | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0ba8692bc945efe0638313cab40ab8e4f83191a` | ⚠️ Unaudited |
| OrdersFetcher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa97a3e2ac932bc7a9c65393ee2c0f9d2f7b2e692` | ⚠️ Unaudited |
| OrdersFinder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01f2aba090b5fa26a64ea9e5afd32f6aab6ba3df` | ⚠️ Unaudited |
| Penalizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67c6e83f247fa404708a09032475eda551e768fa` | ⚠️ Unaudited |
| ProfitLoss | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227348 | `0x2c167231cf521aaabc8abe09f4e2bcb728f26c01` | ⚠️ Unaudited |
| RedeemStake | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227362 | `0x9ac7b28a7e684d1b2776d6b9045e8f9150f58401` | ⚠️ Unaudited |
| RelayHub | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227354 | `0x5648b6306380689af8d2de7bdd23d916b9ee0db5` | ⚠️ Unaudited |
| Reporting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12702a2034caf72ff4ad8efbf7ed405737d6e6ae` | ⚠️ Unaudited |
| RepPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x023e27edd55dfbeb0925685175afcc2867686aa6` | ⚠️ Unaudited |
| ReputationToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c114b96b7a0e679c2594e3884f11526797e43d1` | ⚠️ Unaudited |
| ReputationTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8fee0da3a35f612f88fb58d7028d14c7d99a3643` | ⚠️ Unaudited |
| ShareToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a21d90745dfed999aa0b6e08d648855c5f14663` | ⚠️ Unaudited |
| ShareTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60a977354a6ba44310b2ee061bcf19632450e51d` | ⚠️ Unaudited |
| StakeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ae81a75aa2ea4647a31f099c239bc76433141ea` | ⚠️ Unaudited |
| Staking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x2a17c35ff147b32f13f19f2e311446eeb02503f3`; ethereum `0x69cb36c6d68d3b3300a6bcb846b87533064660e7`; ethereum `0xce038242f6a6a6145eb1d2f8b63506c68c6fc0aa` | ⚠️ Unaudited |
| Staking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x5fc73bf8c6158fbe205a5e14126b363ab915b8b1`; ethereum `0xe533d7eb513bc90230ec9069a92eac25e1356beb` | ⚠️ Unaudited |
| Staking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa26e80e7dea86279c6d778d702cc413e6cffa777` | ⚠️ Unaudited |
| StakingProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c427e553a1754ed39a61df90c1d6d7ff6f7ce12` | ⚠️ Unaudited |
| TestPaymasterEverythingAccepted | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf50b17a7ca64447ae782dc6c4aabe992c37476c7` | ⚠️ Unaudited |
| Time | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9f0e0ce26874aafc1de658b99dbf391ea2fc527` | ⚠️ Unaudited |
| Trade | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24e2b1d415e6e0d04042eaa45dc2a08fc33ca6cd` | ⚠️ Unaudited |
| TradingEscapeHatch | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e130ec3b6fd96ac7db4076638bd5964ad9e0d13` | ⚠️ Unaudited |
| UniswapV2Factory | registry | project_anchor | own_supporting | 0 | ethereum | unit-227356 | `0x5c69bee701ef814a2b6a3edd4b1652cb9cc5aa6f` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227365 | `0xa478c2975ab1ea89e8196811f51a7b7ade33eb11` | ⚠️ Unaudited |
| UniswapV2Router02 | adapter | project_anchor | own_supporting | 0 | ethereum | unit-227359 | `0x7a250d5630b4cf539739df2c5dacb4c659f2488d` | ⚠️ Unaudited |
| Universe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfbcd5e4dbf9e95ce56d55cb3a4fd72415ca400ff` | ⚠️ Unaudited |
| UniverseFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe62e470c8fba49aea4e87779d536c5923d01bb95` | ⚠️ Unaudited |
| WarpSync | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227369 | `0xe0c69aefaa7611de493bce9525abf2a2c3c7fc4d` | ⚠️ Unaudited |
| ZeroExGovernor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d3455421bbc5ed534a83c88fd80387dc8271392` | ⚠️ Unaudited |
| ZeroXTrade | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227360 | `0x8346f3074994fd9a813c735d629b257d93780eed` | ⚠️ Unaudited |
| ZrxVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xba7f8b5fb1b19c1211c5d49550fcd149177a5eaf`; ethereum `0xce2a4b118813cbfa27ee11cf8e67b101867fa85e` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (61)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x061ba3b746641c24e2ceab7cabcddbbef829bc92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06eb3bb92121774753b58c735d989843a9eaacb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08d1708b659b2d5ffb4c08b7bdabafedcdb0b0b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16c0e70d497de975c930d44cef04f48ca80c14cb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x1985365e9f78359a9b6ad760e32412f4a445e862` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c36b06fc0d9354a96cf155b861b141ed10c3312` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227344 | `0x1dd864ed6f291b31c86aaf228db387cd60a20e18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e8229e00ddcb78f5b4fd9b1aa6175dd89c5fcaf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2050190b9a0621680583708124956e46a5495d3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2518033d0f4520526d10d71236482c5de1974091` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d78ac6b1b29a6adddf46340dc3e3ac3d8cc3e05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38a795580d0f687e399913a00ddef6a17612c722` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3900f52ca55c3fc77a5b5bbea003f42bf8a15f72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x393a1ff5eb44f952bb55cb0bedc3dde4ed043088` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227349 | `0x3a1b0dde9bf5ff6c1c5d115b12b036edfd3bf32a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ba1f0dd1f9a5ca688dd2a7f066358a8f2e6471b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3fc45795726579de008309923014e737791664ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47b3361914b2a4491d545be41fe312b62c3960c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x533344cfdf2a3e911e2cf4c6f5ed08e791f5355f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x55dc8f21d20d4c6ed3c82916a438a413ca68e335` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227355 | `0x5836bedb48834474c8e11fbc005e7fb2c2a35d7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ff2c495055d4f6284f317a9c2edb7045497b14f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60c8803a8f3db8529f3d18db52c73fa9a2249a96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60f7f337fbc4af02ba7560a847ff3a6f2f117ed7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65d13619e4495665da113c1612b5bf0bcae4193d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a3b7c553d47c08651641ef00cb3befae97bf415` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x6b175474e89094c44da98b954eedeac495271d0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6bc8cf67434cd449ba13a50ca7af22044c11eb37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6cb9a1e39a88623705e6b30ac3824140ff2d6751` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71995a3fc0236ed4d5d8ee04a23b727aea39caac` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227358 | `0x73961558c6d1e8c5df845975d4d49dca3db18887` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7fbb876589b680492a753cf830a16bc4cb73fd36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d69d77dfc40d0e2e3b17d883794dece7a8c6ead` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96ddba19b69d6ea2549f6a12d005595167414744` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c09063005d4dc794bb06fa128b8757a9ccb62dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ea309d4f96d6433c75a6b9c5a596cf19a87edb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa00703843435fbd75d907beb6ff5be30f8ecc5aa` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3ac9844514b96bb502627ca9dceb57c4be289e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac8ba65b222edc67d8681403346680b69e9dda9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaef4d02a22053f5b9d55e2af0a45393e6f1b606e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4fc3a60bb7f2333dd1ec4c9331ffbdcd1effb25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbae04c0fff1df607fd881740aa56ce9858069ee4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbcc9946143534e28c3bad116cea0f81b9b208799` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf1e3a8405906904b3692446e0fb4e309628a9fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbfe7b0afadcf420a32cb78a5ab9de40469deb8be` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227366 | `0xc2930a5eb22e8d8812934d59508fe940e9f91c4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7612135356ba8f75dbf517b55d88a91977492dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xccc2431a7335f21d9268ba62f0b32b0f2efc463f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd53c634e93fa1214d028acaaf6a12912ba26a2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf0c58607e518d89d25083bccafe1576bd43c175` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xd2486ed7fdb3f2325d95e4e648f2c92aa2948ff5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227368 | `0xd2a04e60a4b7f6077ac2a87a8cfd81722b75b9cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd5ac4d66bc75e64f9ef5d687f6557988b53b080e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd69769fa07c710c7b5b4c7f7f9189dbfd325976d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xdac17f958d2ee523a2206206994597c13d831ec7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe35e720202f5313775831d62b09dbe3f113aa1db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe97ea901d034ba2e018155264f77c417ce7717f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeead9cf3d52492a30b262c4e985b1d3adb87b834` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf342f3a80fdc9b48713d58fe97e17f5cc764ee62` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 131
- Live contracts: 18
- Unknown liveness contracts: 113
- Source-verified contracts: 77
- Currently scope-matched contracts retained as-is: 5
- Classification counts: currently scope matched=5, candidate review=42, exact address book overlap=13, source verified unclassified=22, unverified unclassified=49

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| currently scope matched | Augur<br>`0x23916a8f5c3846e3100e5f587ff14f3098722f5d` | project_anchor | unknown | live | verified | n/a | `0x4925dc0baf2bcf7d20b19f5b2fc2be44e3806931` |
| currently scope matched | CreateOrder<br>`0x8a97cbe557f1153b04d4edbe4eca0159b8138937` | project_anchor | unknown | live | verified | n/a | `0x4925dc0baf2bcf7d20b19f5b2fc2be44e3806931` |
| currently scope matched | FillOrder<br>`0xc42e71b9a6e38dd05cfb51be6751a4d10d66ba35` | project_anchor | unknown | live | verified | n/a | `0x4925dc0baf2bcf7d20b19f5b2fc2be44e3806931` |
| currently scope matched | Orders<br>`0x483156fe50f752c63aa671a806db10d5cabd7a8f` | project_anchor | unknown | live | verified | n/a | `0x4925dc0baf2bcf7d20b19f5b2fc2be44e3806931` |
| currently scope matched | ShareToken<br>`0x9e4799ff2023819b1272eee430eadf510edf85f0` | project_anchor | unknown | live | verified | n/a | `0x4925dc0baf2bcf7d20b19f5b2fc2be44e3806931` |
| candidate review | Augur<br>`0x75228dce4d82566d93068a8d5d49435216551599` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd82369aaec27c7a749afdb4eb71add9e64154cd6` |
| candidate review | CaptureTheFlag<br>`0x2faf4460ff24799b4e999363f4060879f5006396` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x7f5540ca5c53dfc137701fb3115b4ddee4b544d9` |
| candidate review | Cash<br>`0x9b4af4a3295cf476a2b00736f7332f35bbee960e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd82369aaec27c7a749afdb4eb71add9e64154cd6` |
| candidate review | CompleteSets<br>`0xa6bff4f91016c2b4aac140b2d8d7317b36afe5ab` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd82369aaec27c7a749afdb4eb71add9e64154cd6` |
| candidate review | Controlled<br>`0x6da4e67755fb48e26af50915991f57665f66759c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd82369aaec27c7a749afdb4eb71add9e64154cd6` |
| candidate review | Controller<br>`0xb3337164e91b9f05c87c7662c7ac684e8e0ff3e7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd82369aaec27c7a749afdb4eb71add9e64154cd6` |
| candidate review | CreateOrder<br>`0x7f27b0598949dbf9e539bbd217f15bf3f5e97999` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd82369aaec27c7a749afdb4eb71add9e64154cd6` |
| candidate review | Delegator<br>`0x10b5589fc6922f5c27061ac79ad9a4af35e15806` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd82369aaec27c7a749afdb4eb71add9e64154cd6` |
| candidate review | Delegator<br>`0xd5524179cb7ae012f5b642c1d6d700bbaa76b96b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd82369aaec27c7a749afdb4eb71add9e64154cd6` |
| candidate review | Delegator<br>`0xd7a14019aeeba25e676a1b596bb19b6f37db74d2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd82369aaec27c7a749afdb4eb71add9e64154cd6` |
| candidate review | DisputeCrowdsourcer<br>`0x183614d40cee16bf6fcd9dff51556f398ec8d360` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd82369aaec27c7a749afdb4eb71add9e64154cd6` |
| candidate review | DisputeCrowdsourcerFactory<br>`0x1be98680ff697390cbc4cdc414a1be8add733bf7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd82369aaec27c7a749afdb4eb71add9e64154cd6` |
| candidate review | Exchange<br>`0xb27f1db0a7e473304a5a06e54bdf035f671400c0` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x3b39078f2a3e1512eecc8d6792fdc7f33e1cd2cf` |
| candidate review | FeeToken<br>`0xe0dfed99988fcc9bdfa1f4fb0084942e1be6e2de` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd82369aaec27c7a749afdb4eb71add9e64154cd6` |
| candidate review | FeeTokenFactory<br>`0xe86a4beb10155a5bd7ebb430ce13438341e808a8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd82369aaec27c7a749afdb4eb71add9e64154cd6` |
| candidate review | FeeWindow<br>`0x56cc82bbb3049dc3366bf26061d09ed3fd061881` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd82369aaec27c7a749afdb4eb71add9e64154cd6` |
| candidate review | FeeWindowFactory<br>`0x5b4140771615b25f22a4bf52f77e35cdccc5b663` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd82369aaec27c7a749afdb4eb71add9e64154cd6` |
| candidate review | FillOrder<br>`0x39c230f89981274177e79708c921582bd4bd0303` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd82369aaec27c7a749afdb4eb71add9e64154cd6` |
| candidate review | Forwarder<br>`0x132a04f3f6196b499a7ed512c15e002d5dcefa9a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x3b39078f2a3e1512eecc8d6792fdc7f33e1cd2cf` |
| candidate review | Forwarder<br>`0x4699d5c42a3bc7dd9c72d218ccea45954af24f53` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x7f5540ca5c53dfc137701fb3115b4ddee4b544d9` |
| candidate review | Forwarder<br>`0x4ef40d1bf0983899892946830abf99eca2dbc5ce` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x3b39078f2a3e1512eecc8d6792fdc7f33e1cd2cf` |
| candidate review | InitialReporter<br>`0x4fa2b609c19edf731ec33f54f54602a92dfcde6d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd82369aaec27c7a749afdb4eb71add9e64154cd6` |
| candidate review | InitialReporterFactory<br>`0xbca52c29b535fd63bdc7ca35efa56116550f4c59` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd82369aaec27c7a749afdb4eb71add9e64154cd6` |
| candidate review | Mailbox<br>`0x4dcb585b8c8c52c2d25d5a7c2672646bc24b3b66` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd82369aaec27c7a749afdb4eb71add9e64154cd6` |
| candidate review | MailboxFactory<br>`0xe33ca1ebb783343035b11a7e755c29c28b763540` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd82369aaec27c7a749afdb4eb71add9e64154cd6` |
| candidate review | Map<br>`0x94c01429d67a275de013e457eff6e028e10763d9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd82369aaec27c7a749afdb4eb71add9e64154cd6` |
| candidate review | MapFactory<br>`0x67f53b749fe432274e3f53752a91da89ef86777e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd82369aaec27c7a749afdb4eb71add9e64154cd6` |
| candidate review | MarketFactory<br>`0x518530aca60154403012f17c7b8e26f88f7494ee` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd82369aaec27c7a749afdb4eb71add9e64154cd6` |
| candidate review | Orders<br>`0xd0ba8692bc945efe0638313cab40ab8e4f83191a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd82369aaec27c7a749afdb4eb71add9e64154cd6` |
| candidate review | OrdersFetcher<br>`0xa97a3e2ac932bc7a9c65393ee2c0f9d2f7b2e692` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd82369aaec27c7a749afdb4eb71add9e64154cd6` |
| candidate review | Penalizer<br>`0x67c6e83f247fa404708a09032475eda551e768fa` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x7f5540ca5c53dfc137701fb3115b4ddee4b544d9` |
| candidate review | ReputationToken<br>`0x6c114b96b7a0e679c2594e3884f11526797e43d1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd82369aaec27c7a749afdb4eb71add9e64154cd6` |
| candidate review | ReputationTokenFactory<br>`0x8fee0da3a35f612f88fb58d7028d14c7d99a3643` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd82369aaec27c7a749afdb4eb71add9e64154cd6` |
| candidate review | ShareToken<br>`0x2a21d90745dfed999aa0b6e08d648855c5f14663` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd82369aaec27c7a749afdb4eb71add9e64154cd6` |
| candidate review | ShareTokenFactory<br>`0x60a977354a6ba44310b2ee061bcf19632450e51d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd82369aaec27c7a749afdb4eb71add9e64154cd6` |
| candidate review | StakeManager<br>`0x5ae81a75aa2ea4647a31f099c239bc76433141ea` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x7f5540ca5c53dfc137701fb3115b4ddee4b544d9` |
| candidate review | TestPaymasterEverythingAccepted<br>`0xf50b17a7ca64447ae782dc6c4aabe992c37476c7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x7f5540ca5c53dfc137701fb3115b4ddee4b544d9` |
| candidate review | Time<br>`0xe9f0e0ce26874aafc1de658b99dbf391ea2fc527` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd82369aaec27c7a749afdb4eb71add9e64154cd6` |
| candidate review | Trade<br>`0x24e2b1d415e6e0d04042eaa45dc2a08fc33ca6cd` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd82369aaec27c7a749afdb4eb71add9e64154cd6` |
| candidate review | TradingEscapeHatch<br>`0x9e130ec3b6fd96ac7db4076638bd5964ad9e0d13` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd82369aaec27c7a749afdb4eb71add9e64154cd6` |
| candidate review | Universe<br>`0xfbcd5e4dbf9e95ce56d55cb3a4fd72415ca400ff` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd82369aaec27c7a749afdb4eb71add9e64154cd6` |
| candidate review | UniverseFactory<br>`0xe62e470c8fba49aea4e87779d536c5923d01bb95` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd82369aaec27c7a749afdb4eb71add9e64154cd6` |
| exact address book overlap | Affiliates<br>`0x3a4131e478992cd856d2f8be4cb5cd8e56e635b3` | project_anchor | unknown | live | verified | n/a | `0x4925dc0baf2bcf7d20b19f5b2fc2be44e3806931` |
| exact address book overlap | AffiliateValidator<br>`0x2a256518dddce6e2e95b56a95991d4fa990be659` | project_anchor | unknown | live | verified | n/a | `0x4925dc0baf2bcf7d20b19f5b2fc2be44e3806931` |
| exact address book overlap | AugurTrading<br>`0x63a1eed178323c5ee0ad72fbd8a8cf1a7902881e` | project_anchor | unknown | live | verified | n/a | `0x4925dc0baf2bcf7d20b19f5b2fc2be44e3806931` |
| exact address book overlap | AugurWalletRegistry<br>`0x9fa160f92a10b431f255bf1a70a1c1e5808e5128` | project_anchor | unknown | live | verified | n/a | `0x4925dc0baf2bcf7d20b19f5b2fc2be44e3806931` |
| exact address book overlap | BuyParticipationTokens<br>`0x1aacc93f3ee47d7de20171468d9c2458d5602483` | project_anchor | unknown | live | verified | n/a | `0x4925dc0baf2bcf7d20b19f5b2fc2be44e3806931` |
| exact address book overlap | ProfitLoss<br>`0x2c167231cf521aaabc8abe09f4e2bcb728f26c01` | project_anchor | unknown | live | verified | n/a | `0x4925dc0baf2bcf7d20b19f5b2fc2be44e3806931` |
| exact address book overlap | RedeemStake<br>`0x9ac7b28a7e684d1b2776d6b9045e8f9150f58401` | project_anchor | unknown | live | verified | n/a | `0x4925dc0baf2bcf7d20b19f5b2fc2be44e3806931` |
| exact address book overlap | UnnamedContract<br>`0x3a1b0dde9bf5ff6c1c5d115b12b036edfd3bf32a` | project_anchor | unknown | live | unverified | n/a | `0x4925dc0baf2bcf7d20b19f5b2fc2be44e3806931` |
| exact address book overlap | UnnamedContract<br>`0x5836bedb48834474c8e11fbc005e7fb2c2a35d7d` | project_anchor | unknown | live | unverified | n/a | `0x4925dc0baf2bcf7d20b19f5b2fc2be44e3806931` |
| exact address book overlap | UnnamedContract<br>`0x73961558c6d1e8c5df845975d4d49dca3db18887` | project_anchor | unknown | live | unverified | n/a | `0x4925dc0baf2bcf7d20b19f5b2fc2be44e3806931` |
| exact address book overlap | UnnamedContract<br>`0xc2930a5eb22e8d8812934d59508fe940e9f91c4e` | project_anchor | unknown | live | unverified | n/a | `0x4925dc0baf2bcf7d20b19f5b2fc2be44e3806931` |
| exact address book overlap | UnnamedContract<br>`0xd2a04e60a4b7f6077ac2a87a8cfd81722b75b9cf` | project_anchor | unknown | live | unverified | n/a | `0x4925dc0baf2bcf7d20b19f5b2fc2be44e3806931` |
| exact address book overlap | ZeroXTrade<br>`0x8346f3074994fd9a813c735d629b257d93780eed` | project_anchor | unknown | live | verified | n/a | `0x4925dc0baf2bcf7d20b19f5b2fc2be44e3806931` |
| source verified unclassified | ChaiBridge<br>`0x77c31eba23043b9a72d13470f3a3a311344d7438` | non_address_book | unknown | unknown | verified | n/a | `0x3b39078f2a3e1512eecc8d6792fdc7f33e1cd2cf` |
| source verified unclassified | Coordinator<br>`0x9401f3915c387da331b9b6af5e2a57e580f6a201` | non_address_book | unknown | unknown | verified | n/a | `0x3b39078f2a3e1512eecc8d6792fdc7f33e1cd2cf` |
| source verified unclassified | DevUtils<br>`0xdaed44b9c185ac30ecf0d81c492180ce74e87046` | non_address_book | unknown | unknown | verified | n/a | `0x3b39078f2a3e1512eecc8d6792fdc7f33e1cd2cf` |
| source verified unclassified | DevUtils<br>`0xf15fbafc74e10a9761b6aefd5d2239f098f8fb1e` | non_address_book | unknown | unknown | verified | n/a | `0x3b39078f2a3e1512eecc8d6792fdc7f33e1cd2cf` |
| source verified unclassified | ERC20BridgeProxy<br>`0x8ed95d1746bf1e4dab58d8ed4724f1ef95b20db0` | non_address_book | unknown | unknown | verified | n/a | `0x3b39078f2a3e1512eecc8d6792fdc7f33e1cd2cf` |
| source verified unclassified | Eth2DaiBridge<br>`0x0ac2d6f5f5afc669d3ca38f830dad2b4f238ad3f` | non_address_book | unknown | unknown | verified | n/a | `0x3b39078f2a3e1512eecc8d6792fdc7f33e1cd2cf` |
| source verified unclassified | Market<br>`0xb9fb1a6fa14a8296b1de7a2653b1fe6c9dfc1dcb` | non_address_book | unknown | unknown | verified | n/a | `0x4925dc0baf2bcf7d20b19f5b2fc2be44e3806931` |
| source verified unclassified | OICash<br>`0x12f51386583ae7f2b8f3f8cb94b716e4f54fa4fe` | non_address_book | unknown | unknown | verified | n/a | `0x4925dc0baf2bcf7d20b19f5b2fc2be44e3806931` |
| source verified unclassified | Order<br>`0x75d789ef6344579fbe75a4d2d9217ec23b005f8f` | non_address_book | unknown | unknown | verified | n/a | `0xd82369aaec27c7a749afdb4eb71add9e64154cd6` |
| source verified unclassified | OrdersFinder<br>`0x01f2aba090b5fa26a64ea9e5afd32f6aab6ba3df` | non_address_book | unknown | unknown | verified | n/a | `0xd82369aaec27c7a749afdb4eb71add9e64154cd6` |
| source verified unclassified | Reporting<br>`0x12702a2034caf72ff4ad8efbf7ed405737d6e6ae` | non_address_book | unknown | unknown | verified | n/a | `0xd82369aaec27c7a749afdb4eb71add9e64154cd6` |
| source verified unclassified | RepPriceOracle<br>`0x023e27edd55dfbeb0925685175afcc2867686aa6` | non_address_book | unknown | unknown | verified | n/a | `0xd82369aaec27c7a749afdb4eb71add9e64154cd6` |
| source verified unclassified | Staking<br>`0x2a17c35ff147b32f13f19f2e311446eeb02503f3` | non_address_book | unknown | unknown | verified | n/a | `0x3b39078f2a3e1512eecc8d6792fdc7f33e1cd2cf` |
| source verified unclassified | Staking<br>`0x69cb36c6d68d3b3300a6bcb846b87533064660e7` | non_address_book | unknown | unknown | verified | n/a | `0x3b39078f2a3e1512eecc8d6792fdc7f33e1cd2cf` |
| source verified unclassified | Staking<br>`0xce038242f6a6a6145eb1d2f8b63506c68c6fc0aa` | non_address_book | unknown | unknown | verified | n/a | `0x3b39078f2a3e1512eecc8d6792fdc7f33e1cd2cf` |
| source verified unclassified | Staking<br>`0xe533d7eb513bc90230ec9069a92eac25e1356beb` | non_address_book | unknown | unknown | verified | n/a | `0x3b39078f2a3e1512eecc8d6792fdc7f33e1cd2cf` |
| source verified unclassified | StakingProxy<br>`0x5fc73bf8c6158fbe205a5e14126b363ab915b8b1` | non_address_book | unknown | unknown | verified | n/a | `0x3b39078f2a3e1512eecc8d6792fdc7f33e1cd2cf` |
| source verified unclassified | StakingProxy<br>`0x9c427e553a1754ed39a61df90c1d6d7ff6f7ce12` | non_address_book | unknown | unknown | verified | n/a | `0x3b39078f2a3e1512eecc8d6792fdc7f33e1cd2cf` |
| source verified unclassified | StakingProxy<br>`0xa26e80e7dea86279c6d778d702cc413e6cffa777` | non_address_book | unknown | unknown | verified | n/a | `0x3b39078f2a3e1512eecc8d6792fdc7f33e1cd2cf` |
| source verified unclassified | ZeroExGovernor<br>`0x7d3455421bbc5ed534a83c88fd80387dc8271392` | non_address_book | unknown | unknown | verified | n/a | `0x3b39078f2a3e1512eecc8d6792fdc7f33e1cd2cf` |
| source verified unclassified | ZrxVault<br>`0xba7f8b5fb1b19c1211c5d49550fcd149177a5eaf` | non_address_book | unknown | unknown | verified | n/a | `0x3b39078f2a3e1512eecc8d6792fdc7f33e1cd2cf` |
| source verified unclassified | ZrxVault<br>`0xce2a4b118813cbfa27ee11cf8e67b101867fa85e` | non_address_book | unknown | unknown | verified | n/a | `0x3b39078f2a3e1512eecc8d6792fdc7f33e1cd2cf` |
| unverified unclassified | UnnamedContract<br>`0x061ba3b746641c24e2ceab7cabcddbbef829bc92` | non_address_book | unknown | unknown | unverified | n/a | `0x4925dc0baf2bcf7d20b19f5b2fc2be44e3806931` |
| unverified unclassified | UnnamedContract<br>`0x06eb3bb92121774753b58c735d989843a9eaacb9` | non_address_book | unknown | unknown | unverified | n/a | `0x3b39078f2a3e1512eecc8d6792fdc7f33e1cd2cf` |
| unverified unclassified | UnnamedContract<br>`0x08d1708b659b2d5ffb4c08b7bdabafedcdb0b0b8` | non_address_book | unknown | unknown | unverified | n/a | `0x3b39078f2a3e1512eecc8d6792fdc7f33e1cd2cf` |
| unverified unclassified | UnnamedContract<br>`0x16c0e70d497de975c930d44cef04f48ca80c14cb` | non_address_book | unknown | unknown | unverified | n/a | `0x7f5540ca5c53dfc137701fb3115b4ddee4b544d9` |
| unverified unclassified | UnnamedContract<br>`0x1c36b06fc0d9354a96cf155b861b141ed10c3312` | non_address_book | unknown | unknown | unverified | n/a | `0x3b39078f2a3e1512eecc8d6792fdc7f33e1cd2cf` |
| unverified unclassified | UnnamedContract<br>`0x1e8229e00ddcb78f5b4fd9b1aa6175dd89c5fcaf` | non_address_book | unknown | unknown | unverified | n/a | `0x7f5540ca5c53dfc137701fb3115b4ddee4b544d9` |
| unverified unclassified | UnnamedContract<br>`0x2050190b9a0621680583708124956e46a5495d3e` | non_address_book | unknown | unknown | unverified | n/a | `0x4925dc0baf2bcf7d20b19f5b2fc2be44e3806931` |
| unverified unclassified | UnnamedContract<br>`0x2518033d0f4520526d10d71236482c5de1974091` | non_address_book | unknown | unknown | unverified | n/a | `0x4925dc0baf2bcf7d20b19f5b2fc2be44e3806931` |
| unverified unclassified | UnnamedContract<br>`0x2d78ac6b1b29a6adddf46340dc3e3ac3d8cc3e05` | non_address_book | unknown | unknown | unverified | n/a | `0x4925dc0baf2bcf7d20b19f5b2fc2be44e3806931` |
| unverified unclassified | UnnamedContract<br>`0x38a795580d0f687e399913a00ddef6a17612c722` | non_address_book | unknown | unknown | unverified | n/a | `0x3b39078f2a3e1512eecc8d6792fdc7f33e1cd2cf` |
| unverified unclassified | UnnamedContract<br>`0x3900f52ca55c3fc77a5b5bbea003f42bf8a15f72` | non_address_book | unknown | unknown | unverified | n/a | `0x7f5540ca5c53dfc137701fb3115b4ddee4b544d9` |
| unverified unclassified | UnnamedContract<br>`0x393a1ff5eb44f952bb55cb0bedc3dde4ed043088` | non_address_book | unknown | unknown | unverified | n/a | `0x3b39078f2a3e1512eecc8d6792fdc7f33e1cd2cf` |
| unverified unclassified | UnnamedContract<br>`0x3ba1f0dd1f9a5ca688dd2a7f066358a8f2e6471b` | non_address_book | unknown | unknown | unverified | n/a | `0x4925dc0baf2bcf7d20b19f5b2fc2be44e3806931` |
| unverified unclassified | UnnamedContract<br>`0x3fc45795726579de008309923014e737791664ff` | non_address_book | unknown | unknown | unverified | n/a | `0x3b39078f2a3e1512eecc8d6792fdc7f33e1cd2cf` |
| unverified unclassified | UnnamedContract<br>`0x47b3361914b2a4491d545be41fe312b62c3960c4` | non_address_book | unknown | unknown | unverified | n/a | `0x4925dc0baf2bcf7d20b19f5b2fc2be44e3806931` |
| unverified unclassified | UnnamedContract<br>`0x533344cfdf2a3e911e2cf4c6f5ed08e791f5355f` | non_address_book | unknown | unknown | unverified | n/a | `0x3b39078f2a3e1512eecc8d6792fdc7f33e1cd2cf` |
| unverified unclassified | UnnamedContract<br>`0x55dc8f21d20d4c6ed3c82916a438a413ca68e335` | non_address_book | unknown | unknown | unverified | n/a | `0x3b39078f2a3e1512eecc8d6792fdc7f33e1cd2cf` |
| unverified unclassified | UnnamedContract<br>`0x5ff2c495055d4f6284f317a9c2edb7045497b14f` | non_address_book | unknown | unknown | unverified | n/a | `0x3b39078f2a3e1512eecc8d6792fdc7f33e1cd2cf` |
| unverified unclassified | UnnamedContract<br>`0x60c8803a8f3db8529f3d18db52c73fa9a2249a96` | non_address_book | unknown | unknown | unverified | n/a | `0x4925dc0baf2bcf7d20b19f5b2fc2be44e3806931` |
| unverified unclassified | UnnamedContract<br>`0x60f7f337fbc4af02ba7560a847ff3a6f2f117ed7` | non_address_book | unknown | unknown | unverified | n/a | `0x7f5540ca5c53dfc137701fb3115b4ddee4b544d9` |
| unverified unclassified | UnnamedContract<br>`0x65d13619e4495665da113c1612b5bf0bcae4193d` | non_address_book | unknown | unknown | unverified | n/a | `0x4925dc0baf2bcf7d20b19f5b2fc2be44e3806931` |
| unverified unclassified | UnnamedContract<br>`0x6a3b7c553d47c08651641ef00cb3befae97bf415` | non_address_book | unknown | unknown | unverified | n/a | `0x3b39078f2a3e1512eecc8d6792fdc7f33e1cd2cf` |
| unverified unclassified | UnnamedContract<br>`0x6bc8cf67434cd449ba13a50ca7af22044c11eb37` | non_address_book | unknown | unknown | unverified | n/a | `0x3b39078f2a3e1512eecc8d6792fdc7f33e1cd2cf` |
| unverified unclassified | UnnamedContract<br>`0x6cb9a1e39a88623705e6b30ac3824140ff2d6751` | non_address_book | unknown | unknown | unverified | n/a | `0x3b39078f2a3e1512eecc8d6792fdc7f33e1cd2cf` |
| unverified unclassified | UnnamedContract<br>`0x71995a3fc0236ed4d5d8ee04a23b727aea39caac` | non_address_book | unknown | unknown | unverified | n/a | `0x7f5540ca5c53dfc137701fb3115b4ddee4b544d9` |
| unverified unclassified | UnnamedContract<br>`0x7fbb876589b680492a753cf830a16bc4cb73fd36` | non_address_book | unknown | unknown | unverified | n/a | `0x4925dc0baf2bcf7d20b19f5b2fc2be44e3806931` |
| unverified unclassified | UnnamedContract<br>`0x8d69d77dfc40d0e2e3b17d883794dece7a8c6ead` | non_address_book | unknown | unknown | unverified | n/a | `0x4925dc0baf2bcf7d20b19f5b2fc2be44e3806931` |
| unverified unclassified | UnnamedContract<br>`0x96ddba19b69d6ea2549f6a12d005595167414744` | non_address_book | unknown | unknown | unverified | n/a | `0x3b39078f2a3e1512eecc8d6792fdc7f33e1cd2cf` |
| unverified unclassified | UnnamedContract<br>`0x9c09063005d4dc794bb06fa128b8757a9ccb62dd` | non_address_book | unknown | unknown | unverified | n/a | `0x3b39078f2a3e1512eecc8d6792fdc7f33e1cd2cf` |
| unverified unclassified | UnnamedContract<br>`0x9ea309d4f96d6433c75a6b9c5a596cf19a87edb8` | non_address_book | unknown | unknown | unverified | n/a | `0x3b39078f2a3e1512eecc8d6792fdc7f33e1cd2cf` |
| unverified unclassified | UnnamedContract<br>`0xa00703843435fbd75d907beb6ff5be30f8ecc5aa` | non_address_book | unknown | unknown | unverified | n/a | `0x3b39078f2a3e1512eecc8d6792fdc7f33e1cd2cf` |
| unverified unclassified | UnnamedContract<br>`0xa3ac9844514b96bb502627ca9dceb57c4be289e3` | non_address_book | unknown | unknown | unverified | n/a | `0x3b39078f2a3e1512eecc8d6792fdc7f33e1cd2cf` |
| unverified unclassified | UnnamedContract<br>`0xac8ba65b222edc67d8681403346680b69e9dda9e` | non_address_book | unknown | unknown | unverified | n/a | `0x7f5540ca5c53dfc137701fb3115b4ddee4b544d9` |
| unverified unclassified | UnnamedContract<br>`0xaef4d02a22053f5b9d55e2af0a45393e6f1b606e` | non_address_book | unknown | unknown | unverified | n/a | `0x7f5540ca5c53dfc137701fb3115b4ddee4b544d9` |
| unverified unclassified | UnnamedContract<br>`0xb4fc3a60bb7f2333dd1ec4c9331ffbdcd1effb25` | non_address_book | unknown | unknown | unverified | n/a | `0x4925dc0baf2bcf7d20b19f5b2fc2be44e3806931` |
| unverified unclassified | UnnamedContract<br>`0xbae04c0fff1df607fd881740aa56ce9858069ee4` | non_address_book | unknown | unknown | unverified | n/a | `0x4925dc0baf2bcf7d20b19f5b2fc2be44e3806931` |
| unverified unclassified | UnnamedContract<br>`0xbcc9946143534e28c3bad116cea0f81b9b208799` | non_address_book | unknown | unknown | unverified | n/a | `0x4925dc0baf2bcf7d20b19f5b2fc2be44e3806931` |
| unverified unclassified | UnnamedContract<br>`0xbf1e3a8405906904b3692446e0fb4e309628a9fe` | non_address_book | unknown | unknown | unverified | n/a | `0x3b39078f2a3e1512eecc8d6792fdc7f33e1cd2cf` |
| unverified unclassified | UnnamedContract<br>`0xbfe7b0afadcf420a32cb78a5ab9de40469deb8be` | non_address_book | unknown | unknown | unverified | n/a | `0x3b39078f2a3e1512eecc8d6792fdc7f33e1cd2cf` |
| unverified unclassified | UnnamedContract<br>`0xc7612135356ba8f75dbf517b55d88a91977492dc` | non_address_book | unknown | unknown | unverified | n/a | `0x3b39078f2a3e1512eecc8d6792fdc7f33e1cd2cf` |
| unverified unclassified | UnnamedContract<br>`0xccc2431a7335f21d9268ba62f0b32b0f2efc463f` | non_address_book | unknown | unknown | unverified | n/a | `0x3b39078f2a3e1512eecc8d6792fdc7f33e1cd2cf` |
| unverified unclassified | UnnamedContract<br>`0xcd53c634e93fa1214d028acaaf6a12912ba26a2f` | non_address_book | unknown | unknown | unverified | n/a | `0x3b39078f2a3e1512eecc8d6792fdc7f33e1cd2cf` |
| unverified unclassified | UnnamedContract<br>`0xcf0c58607e518d89d25083bccafe1576bd43c175` | non_address_book | unknown | unknown | unverified | n/a | `0x4925dc0baf2bcf7d20b19f5b2fc2be44e3806931` |
| unverified unclassified | UnnamedContract<br>`0xd5ac4d66bc75e64f9ef5d687f6557988b53b080e` | non_address_book | unknown | unknown | unverified | n/a | `0x4925dc0baf2bcf7d20b19f5b2fc2be44e3806931` |
| unverified unclassified | UnnamedContract<br>`0xd69769fa07c710c7b5b4c7f7f9189dbfd325976d` | non_address_book | unknown | unknown | unverified | n/a | `0x4925dc0baf2bcf7d20b19f5b2fc2be44e3806931` |
| unverified unclassified | UnnamedContract<br>`0xe35e720202f5313775831d62b09dbe3f113aa1db` | non_address_book | unknown | unknown | unverified | n/a | `0x4925dc0baf2bcf7d20b19f5b2fc2be44e3806931` |
| unverified unclassified | UnnamedContract<br>`0xe97ea901d034ba2e018155264f77c417ce7717f9` | non_address_book | unknown | unknown | unverified | n/a | `0x3b39078f2a3e1512eecc8d6792fdc7f33e1cd2cf` |
| unverified unclassified | UnnamedContract<br>`0xeead9cf3d52492a30b262c4e985b1d3adb87b834` | non_address_book | unknown | unknown | unverified | n/a | `0x4925dc0baf2bcf7d20b19f5b2fc2be44e3806931` |
| unverified unclassified | UnnamedContract<br>`0xf342f3a80fdc9b48713d58fe97e17f5cc764ee62` | non_address_book | unknown | unknown | unverified | n/a | `0x3b39078f2a3e1512eecc8d6792fdc7f33e1cd2cf` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [ChainSecurity - Augur Core v1.pdf](https://github.com/AugurProject/augur-audits/blob/master/augur-core/ChainSecurity%20-%20Augur%20Core%20v1.pdf) | ChainSecurity | Audit | 2017-12 | stale | Direct | n/a | matched | 1 | 0 | 0 | 8 | n/a |
| [LeastAuthority - Augur Core v1.pdf](https://github.com/AugurProject/augur-audits/blob/master/augur-core/LeastAuthority%20-%20Augur%20Core%20v1.pdf) | LeastAuthority | Audit | 2017-12 | stale | Direct | n/a | matched | 3 | 0 | 0 | 9 | n/a |
| [Zeppelin - Augur Core v3.1.pdf](https://github.com/AugurProject/augur-audits/blob/master/augur-core/Zeppelin%20-%20Augur%20Core%20v3.1.pdf) | Zeppelin | Audit | 2018-03 | stale | Direct | n/a | matched | 9 | 0 | 0 | 35 | n/a |
| [Zeppelin - Augur Core v3.pdf](https://github.com/AugurProject/augur-audits/blob/master/augur-core/Zeppelin%20-%20Augur%20Core%20v3.pdf) | Zeppelin | Audit | 2018-03 | stale | Direct | n/a | matched | 9 | 0 | 0 | 86 | n/a |
| [keythereum-audit.md](https://github.com/AugurProject/augur-audits/blob/master/keythereum/keythereum-audit.md) | unknown | Audit | 2017-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Zeppelin Solutions - Serpent Compiler Audit v1.0.0.pdf](https://github.com/AugurProject/augur-audits/blob/master/serpent-compiler/Zeppelin%20Solutions%20-%20Serpent%20Compiler%20Audit%20v1.0.0.pdf) | Zeppelin Solutions | Audit | 2017-07 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Coinspect - Solidity Compiler Audit v1.0.pdf](https://github.com/AugurProject/augur-audits/blob/master/solidity-compiler/Coinspect%20-%20Solidity%20Compiler%20Audit%20v1.0.pdf) | Coinspect | Audit | 2017-11 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2984] ChainSecurity - Augur Core v1.pdf — matched: No reason recorded
- [2985] LeastAuthority - Augur Core v1.pdf — matched: No reason recorded
- [2986] Zeppelin - Augur Core v3.1.pdf — matched: No reason recorded
- [2987] Zeppelin - Augur Core v3.pdf — matched: No reason recorded
- [2988] keythereum-audit.md — no match: Audit of JavaScript library keythereum; scope includes three source files. Date range March-April 2017, end date used.
- [2989] Zeppelin Solutions - Serpent Compiler Audit v1.0.0.pdf — no match: The audit is of the Serpent compiler itself, not specific smart contracts. No contract names are in scope.
- [2990] Coinspect - Solidity Compiler Audit v1.0.pdf — no match: The audit scope lists libraries (libdevcore, liblll, Libsolidity, solc) rather than specific smart contracts. No individual contract names are in scope.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| ChainSecurity - Augur Core v1.pdf | Cash.sol | unmatched — not counted | — | — | no |
| ChainSecurity - Augur Core v1.pdf | Controlled.sol | unmatched — not counted | — | — | no |
| ChainSecurity - Augur Core v1.pdf | Controller.sol | unmatched — not counted | — | — | no |
| ChainSecurity - Augur Core v1.pdf | Extractable.sol | unmatched — not counted | — | — | no |
| ChainSecurity - Augur Core v1.pdf | Mailbox.sol | unmatched — not counted | — | — | no |
| ChainSecurity - Augur Core v1.pdf | Market.sol | unmatched — not counted | — | — | no |
| ChainSecurity - Augur Core v1.pdf | Set.sol | unmatched — not counted | — | — | no |
| ChainSecurity - Augur Core v1.pdf | StakeToken.sol | unmatched — not counted | — | — | no |
| ChainSecurity - Augur Core v1.pdf | Universe.sol | own contract | Universe (selected) `0x49244bd018ca9fd1f06ecc07b9e9de773246e5aa` — deployed 2020-07-28 00:50:55+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| LeastAuthority - Augur Core v1.pdf | ClaimTradingProceeds | unmatched — not counted | — | — | no |
| LeastAuthority - Augur Core v1.pdf | CompleteSets | unmatched — not counted | — | — | no |
| LeastAuthority - Augur Core v1.pdf | Controller | unmatched — not counted | — | — | no |
| LeastAuthority - Augur Core v1.pdf | Delegator | unmatched — not counted | — | — | no |
| LeastAuthority - Augur Core v1.pdf | FillOrder | own contract | FillOrder (selected) `0xc42e71b9a6e38dd05cfb51be6751a4d10d66ba35` — deployed 2020-07-28 00:27:44+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| LeastAuthority - Augur Core v1.pdf | Market | unmatched — not counted | — | — | no |
| LeastAuthority - Augur Core v1.pdf | RepPriceOracle | unmatched — not counted | — | — | no |
| LeastAuthority - Augur Core v1.pdf | Reporting | unmatched — not counted | — | — | no |
| LeastAuthority - Augur Core v1.pdf | ReportingWindow | unmatched — not counted | — | — | no |
| LeastAuthority - Augur Core v1.pdf | StakeToken | unmatched — not counted | — | — | no |
| LeastAuthority - Augur Core v1.pdf | Trade | own contract | Trade (selected) `0x0cd32f92e3ea33d81d8cf60e20dddfdef4915667` — deployed 2020-07-28 00:31:24+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| LeastAuthority - Augur Core v1.pdf | Universe | own contract | Universe (selected) `0x49244bd018ca9fd1f06ecc07b9e9de773246e5aa` — deployed 2020-07-28 00:50:55+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Zeppelin - Augur Core v3.1.pdf | AddressArrays | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.1.pdf | Augur | own contract | Augur (selected) `0x23916a8f5c3846e3100e5f587ff14f3098722f5d` — deployed 2020-07-27 23:50:20+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Zeppelin - Augur Core v3.1.pdf | BaseReportingParticipant | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.1.pdf | BasicToken | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.1.pdf | Bytes32Arrays | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.1.pdf | CancelOrder | own contract | CancelOrder (selected) `0x465bf82912497a424a4669e92319d9355dcfb0d0` — deployed 2020-07-28 00:24:01+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Zeppelin - Augur Core v3.1.pdf | Cash | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.1.pdf | CashAutoConverter | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.1.pdf | ClaimTradingProceeds | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.1.pdf | CompleteSets | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.1.pdf | ContractExists | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.1.pdf | Controller | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.1.pdf | CreateOrder | own contract | CreateOrder (selected) `0x8a97cbe557f1153b04d4edbe4eca0159b8138937` — deployed 2020-07-28 00:26:26+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Zeppelin - Augur Core v3.1.pdf | Delegator | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.1.pdf | DirectionExtentions | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.1.pdf | DisputeBond | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.1.pdf | DisputeCrowdsourcer | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.1.pdf | Extractable | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.1.pdf | FeeToken | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.1.pdf | FeeWindow | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.1.pdf | FillOrder | own contract | FillOrder (selected) `0xc42e71b9a6e38dd05cfb51be6751a4d10d66ba35` — deployed 2020-07-28 00:27:44+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Zeppelin - Augur Core v3.1.pdf | InitialReporter | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.1.pdf | LegacyReputationToken | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.1.pdf | Mailbox | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.1.pdf | Map | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.1.pdf | Market | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.1.pdf | MarketValidator | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.1.pdf | Orders | own contract | Orders (selected) `0x483156fe50f752c63aa671a806db10d5cabd7a8f` — deployed 2020-07-28 00:28:31+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Zeppelin - Augur Core v3.1.pdf | ParticipationToken | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.1.pdf | RepPriceOracle | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.1.pdf | Reporting | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.1.pdf | ReputationToken | own contract | ReputationToken (selected) `0x221657776846890989a759ba2973e427dff5c9bb` — deployed 2020-07-28 00:50:55+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Zeppelin - Augur Core v3.1.pdf | RunningAverage | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.1.pdf | SafeMathInt256 | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.1.pdf | SafeMathUint256 | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.1.pdf | Set | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.1.pdf | ShareToken | own contract | ShareToken (selected) `0x9e4799ff2023819b1272eee430eadf510edf85f0` — deployed 2020-07-28 00:23:25+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Zeppelin - Augur Core v3.1.pdf | StakeToken | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.1.pdf | StandardToken | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.1.pdf | Trade | own contract | Trade (selected) `0x0cd32f92e3ea33d81d8cf60e20dddfdef4915667` — deployed 2020-07-28 00:31:24+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Zeppelin - Augur Core v3.1.pdf | TradingEscapeHatch | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.1.pdf | Uint256Arrays | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.1.pdf | Universe | own contract | Universe (selected) `0x49244bd018ca9fd1f06ecc07b9e9de773246e5aa` — deployed 2020-07-28 00:50:55+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Zeppelin - Augur Core v3.1.pdf | VariableSupplyToken | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | AddressArrays | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | Augur | own contract | Augur (selected) `0x23916a8f5c3846e3100e5f587ff14f3098722f5d` — deployed 2020-07-27 23:50:20+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Zeppelin - Augur Core v3.pdf | BaseReportingParticipant | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | BasicToken | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | Bytes32Arrays | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | CancelOrder | own contract | CancelOrder (selected) `0x465bf82912497a424a4669e92319d9355dcfb0d0` — deployed 2020-07-28 00:24:01+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Zeppelin - Augur Core v3.pdf | Cash | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | CashAutoConverter | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | ClaimTradingProceeds | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | CompleteSets | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | ContractDeployer | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | ContractExists | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | Controller | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | CreateOrder | own contract | CreateOrder (selected) `0x8a97cbe557f1153b04d4edbe4eca0159b8138937` — deployed 2020-07-28 00:26:26+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Zeppelin - Augur Core v3.pdf | Delegator | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | DirectionExtentions | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | DisputeBond | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | DisputeCrowdsourcer | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | Extractable | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | FeeToken | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | FeeWindow | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | FillOrder | own contract | FillOrder (selected) `0xc42e71b9a6e38dd05cfb51be6751a4d10d66ba35` — deployed 2020-07-28 00:27:44+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Zeppelin - Augur Core v3.pdf | IAugur | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | IAugurFactory | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | ICancelOrder | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | ICancelOrderFactory | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | ICash | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | ICashAutoConverter | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | ICashAutoConverterFactory | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | IClaimTradingProceeds | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | IClaimTradingProceedsFactory | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | ICompleteSets | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | ICompleteSetsFactory | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | IController | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | IControllerFactory | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | ICreateOrder | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | ICreateOrderFactory | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | IDisputeBond | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | IDisputeBondFactory | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | IDisputeCrowdsourcer | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | IDisputeCrowdsourcerFactory | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | IFeeToken | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | IFeeTokenFactory | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | IFeeWindow | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | IFeeWindowFactory | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | IFillOrder | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | IFillOrderFactory | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | IInitialReporter | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | IInitialReporterFactory | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | IMailbox | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | IMailboxFactory | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | IMarket | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | IMarketFactory | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | IOrders | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | IOrdersFactory | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | IParticipationToken | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | IParticipationTokenFactory | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | IRegistrationToken | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | IReportingWindow | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | IReportingWindowFactory | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | IReputationToken | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | IReputationTokenFactory | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | IShareToken | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | IShareTokenFactory | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | IStakeToken | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | IStakeTokenFactory | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | ITrade | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | ITradeFactory | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | ITradingEscapeHatch | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | ITradingEscapeHatchFactory | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | IUniverse | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | IUniverseFactory | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | InitialReporter | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | LegacyReputationToken | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | Mailbox | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | Map | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | Market | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | MarketValidator | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | Orders | own contract | Orders (selected) `0x483156fe50f752c63aa671a806db10d5cabd7a8f` — deployed 2020-07-28 00:28:31+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Zeppelin - Augur Core v3.pdf | ParticipationToken | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | RepPriceOracle | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | Reporting | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | ReputationToken | own contract | ReputationToken (selected) `0x221657776846890989a759ba2973e427dff5c9bb` — deployed 2020-07-28 00:50:55+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Zeppelin - Augur Core v3.pdf | RunningAverage | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | SafeMathInt256 | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | SafeMathUint256 | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | Set | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | ShareToken | own contract | ShareToken (selected) `0x9e4799ff2023819b1272eee430eadf510edf85f0` — deployed 2020-07-28 00:23:25+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Zeppelin - Augur Core v3.pdf | StakeToken | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | StandardToken | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | Trade | own contract | Trade (selected) `0x0cd32f92e3ea33d81d8cf60e20dddfdef4915667` — deployed 2020-07-28 00:31:24+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Zeppelin - Augur Core v3.pdf | TradingEscapeHatch | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | Uint256Arrays | unmatched — not counted | — | — | no |
| Zeppelin - Augur Core v3.pdf | Universe | own contract | Universe (selected) `0x49244bd018ca9fd1f06ecc07b9e9de773246e5aa` — deployed 2020-07-28 00:50:55+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Zeppelin - Augur Core v3.pdf | VariableSupplyToken | unmatched — not counted | — | — | no |
| keythereum-audit.md | index.js | unmatched — not counted | — | listed in scope | no |
| keythereum-audit.md | exports.js | unmatched — not counted | — | listed in scope | no |
| keythereum-audit.md | test/keys.js | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x3a4131e478992cd856d2f8be4cb5cd8e56e635b3` | Affiliates | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2a256518dddce6e2e95b56a95991d4fa990be659` | AffiliateValidator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x63a1eed178323c5ee0ad72fbd8a8cf1a7902881e` | AugurTrading | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9fa160f92a10b431f255bf1a70a1c1e5808e5128` | AugurWalletRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1aacc93f3ee47d7de20171468d9c2458d5602483` | BuyParticipationTokens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x61935cbdd02287b511119ddb11aeb42f1593b7ef` | Exchange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2c167231cf521aaabc8abe09f4e2bcb728f26c01` | ProfitLoss | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9ac7b28a7e684d1b2776d6b9045e8f9150f58401` | RedeemStake | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe0c69aefaa7611de493bce9525abf2a2c3c7fc4d` | WarpSync | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8346f3074994fd9a813c735d629b257d93780eed` | ZeroXTrade | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 77 |
| upstream | 3 |
| standard_library | 0 |
| needs_review | 61 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 22 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 141 unmatched
- Matched-own operational status: 22 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, low=2
- Match method counts: unique_name=22

Zero-match audit list:

- [2988] keythereum-audit.md
- [2989] Zeppelin Solutions - Serpent Compiler Audit v1.0.0.pdf
- [2990] Coinspect - Solidity Compiler Audit v1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
