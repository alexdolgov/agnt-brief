# Agentic Audit Brief: GMD Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: GMD Protocol (`gmd-protocol`)
- Website: [https://gmd-protocol.gitbook.io/gmd-protocol](https://gmd-protocol.gitbook.io/gmd-protocol)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, avalanche
- Contract surface: 242 unique implementations (242 raw deployments)
- Coverage basis: 0/8 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $839,701.35
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for GMD Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 8 contract row(s) across arbitrum. Structural roles: 5 core, 3 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 8
- Structural roles: core (5), supporting (3)
- Contract kinds: contract (8)
- Detected standards: ownable (8), erc20 (6)
- Frameworks: openzeppelin (8)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 11 contracts are derived from known codebases. 11 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x48c81451d1fddeca84b47ff86f91708fa5c32e93`, chain 42161)
- UnnamedContract (`0x846ecf0462981cc0f2674f14be6da2056fc16bda`, chain 42161)
- UnnamedContract (`0xd706a8a16e71e40f791169715a94cec1f89b08ef`, chain 42161)
- esGMD (`0x49e050df648e9477c7545fe1779b940f879b787a`, chain 42161)
- GMD (`0x4945970efeec98d393b4b979b9be265a3ae28a8b`, chain 42161)
- GMDBFRvault (`0x56009e94418ddfe8604331eceff38db0738775f8`, chain 42161)
- gmdBTC (`0x147ff11d9b9ae284c271b2faae7068f4ca9bb619`, chain 42161)
- gmdETH (`0x1e95a37be8a17328fbf4b25b9ce3ce81e271beb3`, chain 42161)
- gmdUSDC (`0x3db4b7da67dd5af61cb9b3c70501b1bdb24b2c22`, chain 42161)
- gmdUSDT (`0x34101fe647ba02238256b5c5a58aeaa2e532a049`, chain 42161)
- GMDvault (`0x8080b5ce6dfb49a6b86370d6982b3e2a86fbbb08`, chain 42161)

## Contract Surface Quality

- Logic-topography rows: 8; live-surface rows included: 8 (8 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 11/11 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/8 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 11 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 230 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 11 of 242 unique; 231 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/48
- Verified + Unaudited implementations: 48
- Verified by bytecode match: 0
- Unverified implementations: 194
- Unique implementations: 242
- Raw deployments: 242
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-11 (stale)
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
| arbitrumGMDbridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x60d8da49b91a1a26fb5a8f207ce5e32e6a296cda` | ⚠️ Unaudited |
| btcvaultv2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb0f3e3f5c52ece66fe44ac7ecedbd06b7aec11b2` | ⚠️ Unaudited |
| BuyBack | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5f0feef4dafea7fb4d6ca89c047767885226b5f9` | ⚠️ Unaudited |
| CashbackLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x357c3a9b984ee7b0c88adcc678138552275194dd` | ⚠️ Unaudited |
| CrossChainPrice | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3c2c662041e541637ca9550067ed456b925b1ded` | ⚠️ Unaudited |
| data | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3b2af911cb0702eb9691189aee5ae83405c9e915` | ⚠️ Unaudited |
| DataRetrievalContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3c6fd1ad1d7274ed60878cfa5528ae67044fd72f` | ⚠️ Unaudited |
| esGBOT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0e9fa491b5327500e2cb4f21dd6852c0edf21c10` | ⚠️ Unaudited |
| esGMD | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240986 | `0x49e050df648e9477c7545fe1779b940f879b787a` | ⚠️ Unaudited |
| EthPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x999e0e091014eed2683aca527805394be2447291` | ⚠️ Unaudited |
| GBOT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x32e4d98d3010ac12d75019c484caa78665b03986` | ⚠️ Unaudited |
| gETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0f1711c7b25437c1a29c6e2bad0e2bc18496d7d1` | ⚠️ Unaudited |
| gethstaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1b3fe9d5df6d0973c58c031703b150ab023f3865` | ⚠️ Unaudited |
| GLPPrice | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4c52cb1d46c46a506c3b660bc9c4c437b500a22d` | ⚠️ Unaudited |
| GMD | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240985 | `0x4945970efeec98d393b4b979b9be265a3ae28a8b` | ⚠️ Unaudited |
| GMDBFRvault | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240987 | `0x56009e94418ddfe8604331eceff38db0738775f8` | ⚠️ Unaudited |
| gmdBTC | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240980 | `0x147ff11d9b9ae284c271b2faae7068f4ca9bb619` | ⚠️ Unaudited |
| gmdETH | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240981 | `0x1e95a37be8a17328fbf4b25b9ce3ce81e271beb3` | ⚠️ Unaudited |
| GMDstaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1d2da8454488ff4bf21999c59913d4c337f0aca4` | ⚠️ Unaudited |
| gmdUSDC | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240983 | `0x3db4b7da67dd5af61cb9b3c70501b1bdb24b2c22` | ⚠️ Unaudited |
| gmdUSDT | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240982 | `0x34101fe647ba02238256b5c5a58aeaa2e532a049` | ⚠️ Unaudited |
| GMDvault | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240988 | `0x8080b5ce6dfb49a6b86370d6982b3e2a86fbbb08` | ⚠️ Unaudited |
| gmUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x10c25c205118c0201fd1acc5bc03bbf935c80005` | ⚠️ Unaudited |
| gmUSDArb | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe3875996fc7a9315cb0d633b2a1af5b91d68b674` | ⚠️ Unaudited |
| GMvaultMigration | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe6e3febf24ead0e60b157b77e72618df06b83a18` | ⚠️ Unaudited |
| GND | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xade997d8488fa56dde91b1e8a9473a2ea9f4c6c7` | ⚠️ Unaudited |
| gndPresale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x51b08eab7c2f50ff539377dc953d6ab712c3eac5` | ⚠️ Unaudited |
| LiquidityAmounts | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8af42f8da6f7d195ce0ab7789c5523ddcc576067` | ⚠️ Unaudited |
| LPstaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0e5419bf7eaacd07790d27bd4957ccee9971b858` | ⚠️ Unaudited |
| LPToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0372046e44ee37fb71711590b734fbd5b7711eb4` | ⚠️ Unaudited |
| LPTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb887e91ec65ed4a7c943d1ebb87ad8770af3a0c3` | ⚠️ Unaudited |
| Migration | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x01c4a967f8577ccd7812468a3239c5ecd4a3d027` | ⚠️ Unaudited |
| OtcSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x29cf62536c1019a8adac35a61a7f12b82a6c12ae` | ⚠️ Unaudited |
| PriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8660f28220f280dfab99d1dc81237a262620a718` | ⚠️ Unaudited |
| PriceFeed2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7aa2b33a56e72e50429355b3ebd2572240c30857` | ⚠️ Unaudited |
| SalaryDistribution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc438a1ad32ed8ff16e73bdcf56cab1e6ba6e2a93` | ⚠️ Unaudited |
| SalaryMod | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaa35361b162415655ff2e70c655c29bab346ef1d` | ⚠️ Unaudited |
| sGETHToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x21222082e66ded1733faa1a04576a620dcf1057b` | ⚠️ Unaudited |
| TknPresale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x39027f95172808b6ef385ceb0414be39b85132f7` | ⚠️ Unaudited |
| TokenSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x017c6fc5e2b2d36a0ed829b15863609ca28f12f8` | ⚠️ Unaudited |
| univ3swap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x512a1d8b24cb0fd5cb2d446efbfabaca5b4541ae` | ⚠️ Unaudited |
| vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x38dfcebfc79ae62ea50297a6cff16c6f61b0ea08` | ⚠️ Unaudited |
| vaultv2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0dc6634fc00236186fafd8c9e2878712e0aab445` | ⚠️ Unaudited |
| xGND | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x40ea7f6d6964413d4a26a0a268542dae9f55768e` | ⚠️ Unaudited |
| xGNDstaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2ca217854cdc40171644f276a7edb3fdc6e09620` | ⚠️ Unaudited |
| YFX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5517c5f22177bcf7b320a2a5daf2334344efb38c` | ⚠️ Unaudited |
| zGND | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x40b96dac9386e252e86eacf330c138561b9de37c` | ⚠️ Unaudited |
| zGNDstaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf373f08c99aa93e845585f6fdfe2c45dbdb600db` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (194)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0066cb3c54b62cae98c45ec897a636ac8f4efcbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x00af44222493add3659d5bba4104dc75d6f5adae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x01af2c31eff8fd2b57e2b5c586b7d81a76031731` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x032c7b7de95efa3787c300495e95e0645bcbd6f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x03f47665896dab147a8677f92d3f81880fd6dce2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x05a06ced4dcdfb380db22105906f82d4e11ffbb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x09d40cd9ad987eb3cb497e1d6d1ba4ac362c741e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0a54d30f2364d84cc429b8bec6f2c19a578afe93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0bd8705afd0558632eb412debb8089232c8293d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0c8acf05cca04e93187c0957c3260b2fb2476f6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0cb4f4c36de0111b9ffa6faec60b9cf316ce644e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0e6700d769abfdf58a83799501627389626eb54a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0e9832cf4ff4c3e2e25a9e580af06fb041fde229` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x140bc97a1e3df53850d0e205bd2c6f190d120963` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x14986a9e9ed8bce6aed97a30291bd8cfeaf45e01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x14f1532bbbedc1c911bb9aa2254104561a3e0e5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1640857ee668f0fa317d008e4261dbdfed4403fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x167c7bc303b05e94caef602fbce6fb32deba9dda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x18842c8eb498c1151ab89bfb092f93fabf5a2230` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1b62619f34035321bc15b8732e062e42e8c34370` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x21cbe83667af51866b7aa5f0f6e88ddb3a5e5f24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x22491647f3ea91ebd58487619e34113b1457025d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x25afada2653707a02f066f3d7832fb07cdb4aae4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x27d7f3edbbe427be5662f20cef502fef9392299d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2935f359ed431be38961ae90df61ba4882de9d42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x29adef49c9c5983b3da6aaa3081b5e35a897958d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2fe4ed9fbadae15a3d033e33ae90cafc271caf0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x31efdf341a94c30a427d3236081611ccb8d7d436` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x32d5af9822268f6556b83635fbe714eb0760cb75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3312cca2840f8c5517bb731dcdd8609f586705db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x358e7f13b8467215297970be6fcec3991677e20b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x35b2c15763d0331328985e150114c01804fd18d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x373217e8daee6744d4470e2b8955f4f86e70ecf3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x388a7f7ad456d1495d80a108427127cd8d1d5178` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3945870330f6a2c464a9f39e9f1f7aa3303256c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3ea8d7f3c5803781075a1012cce9a378f65acc31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3ee778afccfad5c3dea076c63718f73898a9cee2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3f7f681726fe3d392c348a32198117bc9e53d1e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x41bc7b957a8a3e0542048838e92812d25331acf7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x458b699d29e1d31cab3cf6d717d96d3d08a3c036` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4591b505ad61c114b9b5140f651f6dd141684793` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4783eeedfabaf8d8a637e4cbb2c52ac50ad331db` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240984 | `0x48c81451d1fddeca84b47ff86f91708fa5c32e93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x48f0fe7563bff70164c9061a763b36b7966471c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4a723de8af2be96292da3f824a96bfa053d4af66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4d00b3885c6db423aff88b4384ba9377bc78ca3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4d5e071c6cc499d120942560f8613b4c156b9948` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5088a423933dbfd94af2d64ad3db3d4ab768107f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x52eafd5989185716880c6e60211b68c1d7114bb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x564828e7cd29a6154d01690ca164940fac64b358` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x56c2ea89d5b7c80044c261e0c8e60b6e18bae633` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x57d02420c24cc273153f661632ab98d040960441` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x58666567042a41ca4d47d9c4776ab2b23a500833` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x587a0f59fcb1a7d74dd5655c63c45a1ddd36ecb3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5c6f0d3775d65f874d1b2295653fd17b2b7b15d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5e46dfe1a96a4c64354315257b8712fb42272a04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5e637cd426c7ab2012c781b2521bb998f37a9b59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5f01d28467953fda3dc0e2828daeabda0b06cdf3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5f77cb3f8ed2a3c16b819e12dd6f3ad23687e84a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6192e6e1eda72369f4be419269911159ed6556db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x63e365aedc24cb5c8cc6c61061092cbf7d94ecd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x64036bb76e3c4f6fccfd50c0267a000d45efa2fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6923c8a82ed62f0f52f78e2bd9ca9ed9ad31d5e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6994c7fc7afb80fa9e852db3708246ee5c58f7f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6a76f5fba4f1c688cb6154a7dd70b594ebf910c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6bcc0a18f9e437d51ddd5eaa2fcdf27e5cd7d222` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6cafba87ea8252fd09fc5bd4180f33768c99d104` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6e79a1c370767f5ddf1b54adc7f1b23ca3649665` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7027097af38993ea7f715078dc9cc5a0491e4006` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x708d06f870855780f2a642cc9a141ce4aa5aa652` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x71c3e6ca608b72dc033f05cbe0ceb3507fc17272` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x75dc0c239c6847c9d9ce7b7f112fed7f4cdc9dd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x76660381e9b41d5cf7b7dd8d3c76a0683f1bc0b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x76e786c995d0015319b8538a4362feead461ef71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7700dab2c9f7d6fb9b85290c4d5a74c4ddc24b9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7763a1e00d522dd0a15859bbf20c6ec6303694e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x79dee23de661ee0c851eb48c0cd904ccab2f29b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7b38be8bdbe2727ce52b90c62c7f43870fbb09b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7c6efc7f9ca01f1932b29335f130302f5f57905e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7f7a331cbe9ce4f01ec52c3c2c49a3719cd87663` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x7f9a20548d9482041dc33435a7fb25be7c4b98b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8129fe02796438b9cf40cde5bf58d9cb8079525e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240989 | `0x846ecf0462981cc0f2674f14be6da2056fc16bda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x887eaa074481ff69ea878bdface7b5a64c4dbb6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x89d94729c8628d6692dfc2b8a20f34640f6fb137` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8a19f6bc381caf24c7122296aa51047105924074` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8abd4ce22ec350eeeed181c5ed68e1b50faa999f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8d1b48f64d20f9740178ea6eebf2eda3c93f85ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8d3a3a598705afa27506b7a4368b0e25d11a7806` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8e9938434f163732b5b01138c7f982895a42ed66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9002b0e22fadcfa073aacbe17ccff00fb2dcb440` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9050e0ccf7ec7f8042331e4feb51f489d4400c36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x90bf6c8e909b7827e00ad81645b8830e9288bb2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x90fdc4110167a490404c13f52e4f88529ab02288` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x92f07e04dd4788c4b7f5f4bda565929c90130613` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x930eaec236333ac935536e265a0769b791471999` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x93a16d2f34e1d72d63590dcc438d4158f3afc205` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x95906f3c87e3780628730f3388d01ceba332d9c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x95a740c78ed91471fd29dc2d18d8a3e250787f9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x96b3a028f6bbdbaf9bda37af381aea8f62dd6440` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x983b3682959169e7dafcd9261610d15a788da8fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x99879d65d64533173cbc6c3e5a5a647566a8d1b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x99e6239c7d3ce04b9cfdff44af726b47c9308707` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9b2055b91328ca3ad32f6a8ecdf4903cec14caf6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9c003210265836036e3dc098c34df972174a2e75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9c336e2529c88c926a0b66c9ae7722aa90d1cafb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9daec3871330846271f1a89cd1bcf80f385b476b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9efa095455c67e69122ad266da593492aa044340` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9fb39bcf34e046afde67745812640c94cd545e2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa06819ee0f6a7a4305ea585424d1eff9adef717c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa1d3dafb505ed70cc316ce542498a1e2d16a2f24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa3a3646132f71fb8ad8b40479aab8a8eba249797` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa4586d2587b7d03d344cbc28aecd8a6264c6e787` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa55a4459edae2199d0d91837ab55a178eefa2d9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa6fb9ff6dd1e1dcceaf9696d18187edeeeb7dfcb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa71af4b025ccd2426451e0d6626c7797e4d398dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa7ce4434a29549864a46fce8662fd671c06ba49a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa8288bf49809eac8b167325bcf533d89cd6eeb4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa8dfdc7f1334d732e6460f10adfcac481ddbdc5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa8efe932ce67d361c545009e9c90eef1822c83c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaa70b24f5b7a2980a91176cf1f223c6e42d5cc88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xab9c1cafb3f15f1f36ab800db92b8c5cfca1e7d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xae23e9990a766153ae6b9e111dc84853d06ab88d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xafb07324daff76ec85de74b4e35d55e460f39356` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb06132b8e107c4e37307d8d31387e0b8d439728e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb06f51f61abb41aad30b6aae3d29c63db7493b9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb09390076fcc6ae4d432b4f1e1c47e8ca134aedc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb0b9335a6f4e764f4a3782822e0b7866d3f87da6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb272b6ad4f0266cc8b5044b2772a84350301e268` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb5885b6ef02a4827f14808e413171e7ee8d73a3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb62a11352909f3505d14977a19bcfa3912d163b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbc6e59ae3aae1d643828ae2728cc564ab7c1dcb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbc767df4e46e1b85924dd9c1d4b1ac7c31c4af42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbcce776e2ed82fa381d84d3af14d3b3c8af310d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbd18826a3e463ddd5e7f5449f5c048fb13a062f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbe293ca768bf4284bf07ad937a0d800e9d079af4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc0edc6f3c2a88d87781802138792723205a7a19d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc2b3ed30ad9e7e7ce554789362f18c77841aece9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc4154c3048686b9c8b83ed15f4e52484366b07e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc451947763fc89d0d4b574a73d969bb09e7ce254` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc5125f6c8877dcfbc46f035c447b09fe3243aabb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc5182e92bf001bae7049c4496cad96662db1a186` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc528032694351b96287ef52f8101a5ad5b1bccbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc67b25cf13890934903106f61a446ca5035d13fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc75b07de6f8567e817ccd7732e7f01aa9b4b9fe3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc7a6098f7378fe6a7496445040f7dabfd8612b35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc82d2a70f189af990bd09b4c1430a3aa3ccc0bae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc833ceaf50f2621d9f92cba5ef28fb42cc1d6fa1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc876c43403a753ec8c9a5f3ea4a24d11c2aba2b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc91fbd6986e9e502834fb9ef1d67473a7816a306` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xca5f4a1e1f1fa36a79ad61be714aa7ac4a0ed4f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcab87f413b1530d8ccaacf55116e44a3db7f7f11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcd239e01c36d3079c0daef355c61cff591c40db1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcde277b980a3d3001d470f675937c300af89c046` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xce76f71bb476a76bd2192e43abedcd6ab6b54bc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd18dbdac2d583f7ee75a0c9f1db14582ecc6ee3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd320fe89f4ab0a7106992101b0404720be56c0f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd490415b40ddf5b191bb26190d9a8dbeff451096` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd5f06128a00184befa020acbe8a9fd6425a66c22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd64030d74d4d420ef78c5d3b901cc473965ba3b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd67a097dce9d4474737e6871684ae3c05460f571` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240990 | `0xd706a8a16e71e40f791169715a94cec1f89b08ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd85c02951cf339eb19472d1b569461083844da66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd9fac9f821598a142ae5d3cf0a1cfc73a4e452b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdbb1755a0f3580df8c2dc3bca07f4799d731e71a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdcfbc04ddb1e2baceaf6be41097b6594ac7aa1ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe0e64cb20e554162139ff96dbff30f23a0171150` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe29d970e93f90190fd9cb86e3f2556613a3a9a01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe32a823411c82c53bda742b0bd0eb1d24d6fa3a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe6e03662b5a9488f9b30bfacf4e9e10e2b33cc16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe9d686737c6fd680070caedba654eb8e4e641464` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xead18973cf02d6b9690469d38b9e49d689aa6ded` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xeae39ea748317ad9194aa45a6d558ee5a27da22e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xebe978c66573dbf59d5a72039bbe7780f07d99b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xec13336bbd50790a00cdc0feddf11287eaf92529` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xed27bcc8f6532fe159065588a81c181eefca0f85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xeda7307c4132c1965a069c64be404ec22cada673` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xef94d409e2f249f2189bfaf71cfc11bc723cf7e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xeffae8eb4ca7db99e954adc060b736db78928467` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf30dfe4a5e0755c85bd4d45eb144559e3785124b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf3a8fc9be1402b107f9582c545c7e388c4e72efd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf40ee4061c543770cca5e8d13cff54696a3570b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf4844386d694eb42f2728b658caaddf461a972f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf60e045db3ba2dd6d21ee3a0d40eadb8df9981e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf6a9f64350aeeba91fd42c5434af8208c3367b53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf9d93ac91c7da2aee428ab490da3615e441c99dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfa481a061f354b5295f3f643e9107769025255b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfab2f02cc624362128750849c5209bbed4c86341` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfb825e93822dd971ebdfdb2180a751958dbd5e16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfbc906e95c753e14cfcd83eeec3d19c44d2ff208` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfc085030e18d231b21619886132b48f56a0291d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfeb4fc1efc11a255f7cf273f7cd1c5c9af1f825b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfefccabcdbd094e11fbfda55f8f75be9d3282eff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xff9af416153846da1dc4ae96c8a41ad2c87c3100` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 190
- Live contracts: 0
- Unknown liveness contracts: 190
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=190

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x0066cb3c54b62cae98c45ec897a636ac8f4efcbb` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0x00af44222493add3659d5bba4104dc75d6f5adae` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0x01af2c31eff8fd2b57e2b5c586b7d81a76031731` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0x032c7b7de95efa3787c300495e95e0645bcbd6f6` | non_address_book | unknown | unknown | unverified | n/a | `0xd70811f1e4992aa051d54e29a04c8925b32fba7d` |
| unverified unclassified | UnnamedContract<br>`0x03f47665896dab147a8677f92d3f81880fd6dce2` | non_address_book | unknown | unknown | unverified | n/a | `0xd70811f1e4992aa051d54e29a04c8925b32fba7d` |
| unverified unclassified | UnnamedContract<br>`0x05a06ced4dcdfb380db22105906f82d4e11ffbb8` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0x09d40cd9ad987eb3cb497e1d6d1ba4ac362c741e` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0x0a54d30f2364d84cc429b8bec6f2c19a578afe93` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0x0bd8705afd0558632eb412debb8089232c8293d7` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0x0c8acf05cca04e93187c0957c3260b2fb2476f6e` | non_address_book | unknown | unknown | unverified | n/a | `0xd70811f1e4992aa051d54e29a04c8925b32fba7d` |
| unverified unclassified | UnnamedContract<br>`0x0cb4f4c36de0111b9ffa6faec60b9cf316ce644e` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0x0e6700d769abfdf58a83799501627389626eb54a` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0x0e9832cf4ff4c3e2e25a9e580af06fb041fde229` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0x140bc97a1e3df53850d0e205bd2c6f190d120963` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0x14986a9e9ed8bce6aed97a30291bd8cfeaf45e01` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0x14f1532bbbedc1c911bb9aa2254104561a3e0e5a` | non_address_book | unknown | unknown | unverified | n/a | `0xd70811f1e4992aa051d54e29a04c8925b32fba7d` |
| unverified unclassified | UnnamedContract<br>`0x1640857ee668f0fa317d008e4261dbdfed4403fd` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0x167c7bc303b05e94caef602fbce6fb32deba9dda` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0x18842c8eb498c1151ab89bfb092f93fabf5a2230` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0x1b62619f34035321bc15b8732e062e42e8c34370` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0x21cbe83667af51866b7aa5f0f6e88ddb3a5e5f24` | non_address_book | unknown | unknown | unverified | n/a | `0xd70811f1e4992aa051d54e29a04c8925b32fba7d` |
| unverified unclassified | UnnamedContract<br>`0x22491647f3ea91ebd58487619e34113b1457025d` | non_address_book | unknown | unknown | unverified | n/a | `0xd70811f1e4992aa051d54e29a04c8925b32fba7d` |
| unverified unclassified | UnnamedContract<br>`0x25afada2653707a02f066f3d7832fb07cdb4aae4` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0x27d7f3edbbe427be5662f20cef502fef9392299d` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0x2935f359ed431be38961ae90df61ba4882de9d42` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0x29adef49c9c5983b3da6aaa3081b5e35a897958d` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0x2fe4ed9fbadae15a3d033e33ae90cafc271caf0a` | non_address_book | unknown | unknown | unverified | n/a | `0xd70811f1e4992aa051d54e29a04c8925b32fba7d` |
| unverified unclassified | UnnamedContract<br>`0x31efdf341a94c30a427d3236081611ccb8d7d436` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0x32d5af9822268f6556b83635fbe714eb0760cb75` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0x3312cca2840f8c5517bb731dcdd8609f586705db` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0x358e7f13b8467215297970be6fcec3991677e20b` | non_address_book | unknown | unknown | unverified | n/a | `0xd70811f1e4992aa051d54e29a04c8925b32fba7d` |
| unverified unclassified | UnnamedContract<br>`0x35b2c15763d0331328985e150114c01804fd18d9` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0x373217e8daee6744d4470e2b8955f4f86e70ecf3` | non_address_book | unknown | unknown | unverified | n/a | `0xd70811f1e4992aa051d54e29a04c8925b32fba7d` |
| unverified unclassified | UnnamedContract<br>`0x388a7f7ad456d1495d80a108427127cd8d1d5178` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0x3945870330f6a2c464a9f39e9f1f7aa3303256c2` | non_address_book | unknown | unknown | unverified | n/a | `0xd70811f1e4992aa051d54e29a04c8925b32fba7d` |
| unverified unclassified | UnnamedContract<br>`0x3ea8d7f3c5803781075a1012cce9a378f65acc31` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0x3ee778afccfad5c3dea076c63718f73898a9cee2` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0x3f7f681726fe3d392c348a32198117bc9e53d1e2` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0x41bc7b957a8a3e0542048838e92812d25331acf7` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0x458b699d29e1d31cab3cf6d717d96d3d08a3c036` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0x4591b505ad61c114b9b5140f651f6dd141684793` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0x4783eeedfabaf8d8a637e4cbb2c52ac50ad331db` | non_address_book | unknown | unknown | unverified | n/a | `0xd70811f1e4992aa051d54e29a04c8925b32fba7d` |
| unverified unclassified | UnnamedContract<br>`0x48f0fe7563bff70164c9061a763b36b7966471c6` | non_address_book | unknown | unknown | unverified | n/a | `0xd70811f1e4992aa051d54e29a04c8925b32fba7d` |
| unverified unclassified | UnnamedContract<br>`0x4a723de8af2be96292da3f824a96bfa053d4af66` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0x4d00b3885c6db423aff88b4384ba9377bc78ca3e` | non_address_book | unknown | unknown | unverified | n/a | `0xd70811f1e4992aa051d54e29a04c8925b32fba7d` |
| unverified unclassified | UnnamedContract<br>`0x4d5e071c6cc499d120942560f8613b4c156b9948` | non_address_book | unknown | unknown | unverified | n/a | `0xd70811f1e4992aa051d54e29a04c8925b32fba7d` |
| unverified unclassified | UnnamedContract<br>`0x5088a423933dbfd94af2d64ad3db3d4ab768107f` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0x52eafd5989185716880c6e60211b68c1d7114bb8` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0x564828e7cd29a6154d01690ca164940fac64b358` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0x56c2ea89d5b7c80044c261e0c8e60b6e18bae633` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0x57d02420c24cc273153f661632ab98d040960441` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0x58666567042a41ca4d47d9c4776ab2b23a500833` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0x587a0f59fcb1a7d74dd5655c63c45a1ddd36ecb3` | non_address_book | unknown | unknown | unverified | n/a | `0xd70811f1e4992aa051d54e29a04c8925b32fba7d` |
| unverified unclassified | UnnamedContract<br>`0x5c6f0d3775d65f874d1b2295653fd17b2b7b15d2` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0x5e46dfe1a96a4c64354315257b8712fb42272a04` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0x5e637cd426c7ab2012c781b2521bb998f37a9b59` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0x5f01d28467953fda3dc0e2828daeabda0b06cdf3` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0x5f77cb3f8ed2a3c16b819e12dd6f3ad23687e84a` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0x6192e6e1eda72369f4be419269911159ed6556db` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0x63e365aedc24cb5c8cc6c61061092cbf7d94ecd8` | non_address_book | unknown | unknown | unverified | n/a | `0xd70811f1e4992aa051d54e29a04c8925b32fba7d` |
| unverified unclassified | UnnamedContract<br>`0x64036bb76e3c4f6fccfd50c0267a000d45efa2fc` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0x6923c8a82ed62f0f52f78e2bd9ca9ed9ad31d5e9` | non_address_book | unknown | unknown | unverified | n/a | `0xd70811f1e4992aa051d54e29a04c8925b32fba7d` |
| unverified unclassified | UnnamedContract<br>`0x6994c7fc7afb80fa9e852db3708246ee5c58f7f6` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0x6a76f5fba4f1c688cb6154a7dd70b594ebf910c6` | non_address_book | unknown | unknown | unverified | n/a | `0xd70811f1e4992aa051d54e29a04c8925b32fba7d` |
| unverified unclassified | UnnamedContract<br>`0x6bcc0a18f9e437d51ddd5eaa2fcdf27e5cd7d222` | non_address_book | unknown | unknown | unverified | n/a | `0xd70811f1e4992aa051d54e29a04c8925b32fba7d` |
| unverified unclassified | UnnamedContract<br>`0x6cafba87ea8252fd09fc5bd4180f33768c99d104` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0x6e79a1c370767f5ddf1b54adc7f1b23ca3649665` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0x7027097af38993ea7f715078dc9cc5a0491e4006` | non_address_book | unknown | unknown | unverified | n/a | `0xd70811f1e4992aa051d54e29a04c8925b32fba7d` |
| unverified unclassified | UnnamedContract<br>`0x708d06f870855780f2a642cc9a141ce4aa5aa652` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0x71c3e6ca608b72dc033f05cbe0ceb3507fc17272` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0x75dc0c239c6847c9d9ce7b7f112fed7f4cdc9dd5` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0x76660381e9b41d5cf7b7dd8d3c76a0683f1bc0b8` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0x76e786c995d0015319b8538a4362feead461ef71` | non_address_book | unknown | unknown | unverified | n/a | `0xd70811f1e4992aa051d54e29a04c8925b32fba7d` |
| unverified unclassified | UnnamedContract<br>`0x7700dab2c9f7d6fb9b85290c4d5a74c4ddc24b9c` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0x7763a1e00d522dd0a15859bbf20c6ec6303694e9` | non_address_book | unknown | unknown | unverified | n/a | `0xd70811f1e4992aa051d54e29a04c8925b32fba7d` |
| unverified unclassified | UnnamedContract<br>`0x79dee23de661ee0c851eb48c0cd904ccab2f29b3` | non_address_book | unknown | unknown | unverified | n/a | `0xd70811f1e4992aa051d54e29a04c8925b32fba7d` |
| unverified unclassified | UnnamedContract<br>`0x7b38be8bdbe2727ce52b90c62c7f43870fbb09b2` | non_address_book | unknown | unknown | unverified | n/a | `0xd70811f1e4992aa051d54e29a04c8925b32fba7d` |
| unverified unclassified | UnnamedContract<br>`0x7c6efc7f9ca01f1932b29335f130302f5f57905e` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0x7f7a331cbe9ce4f01ec52c3c2c49a3719cd87663` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0x8129fe02796438b9cf40cde5bf58d9cb8079525e` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0x887eaa074481ff69ea878bdface7b5a64c4dbb6f` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0x89d94729c8628d6692dfc2b8a20f34640f6fb137` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0x8a19f6bc381caf24c7122296aa51047105924074` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0x8abd4ce22ec350eeeed181c5ed68e1b50faa999f` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0x8d1b48f64d20f9740178ea6eebf2eda3c93f85ba` | non_address_book | unknown | unknown | unverified | n/a | `0xd70811f1e4992aa051d54e29a04c8925b32fba7d` |
| unverified unclassified | UnnamedContract<br>`0x8d3a3a598705afa27506b7a4368b0e25d11a7806` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0x8e9938434f163732b5b01138c7f982895a42ed66` | non_address_book | unknown | unknown | unverified | n/a | `0xd70811f1e4992aa051d54e29a04c8925b32fba7d` |
| unverified unclassified | UnnamedContract<br>`0x9002b0e22fadcfa073aacbe17ccff00fb2dcb440` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0x9050e0ccf7ec7f8042331e4feb51f489d4400c36` | non_address_book | unknown | unknown | unverified | n/a | `0xd70811f1e4992aa051d54e29a04c8925b32fba7d` |
| unverified unclassified | UnnamedContract<br>`0x90bf6c8e909b7827e00ad81645b8830e9288bb2c` | non_address_book | unknown | unknown | unverified | n/a | `0xd70811f1e4992aa051d54e29a04c8925b32fba7d` |
| unverified unclassified | UnnamedContract<br>`0x90fdc4110167a490404c13f52e4f88529ab02288` | non_address_book | unknown | unknown | unverified | n/a | `0xd70811f1e4992aa051d54e29a04c8925b32fba7d` |
| unverified unclassified | UnnamedContract<br>`0x92f07e04dd4788c4b7f5f4bda565929c90130613` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0x930eaec236333ac935536e265a0769b791471999` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0x93a16d2f34e1d72d63590dcc438d4158f3afc205` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0x95906f3c87e3780628730f3388d01ceba332d9c7` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0x95a740c78ed91471fd29dc2d18d8a3e250787f9b` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0x96b3a028f6bbdbaf9bda37af381aea8f62dd6440` | non_address_book | unknown | unknown | unverified | n/a | `0xd70811f1e4992aa051d54e29a04c8925b32fba7d` |
| unverified unclassified | UnnamedContract<br>`0x983b3682959169e7dafcd9261610d15a788da8fd` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0x99879d65d64533173cbc6c3e5a5a647566a8d1b2` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0x99e6239c7d3ce04b9cfdff44af726b47c9308707` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0x9b2055b91328ca3ad32f6a8ecdf4903cec14caf6` | non_address_book | unknown | unknown | unverified | n/a | `0xd70811f1e4992aa051d54e29a04c8925b32fba7d` |
| unverified unclassified | UnnamedContract<br>`0x9c003210265836036e3dc098c34df972174a2e75` | non_address_book | unknown | unknown | unverified | n/a | `0xd70811f1e4992aa051d54e29a04c8925b32fba7d` |
| unverified unclassified | UnnamedContract<br>`0x9c336e2529c88c926a0b66c9ae7722aa90d1cafb` | non_address_book | unknown | unknown | unverified | n/a | `0xd70811f1e4992aa051d54e29a04c8925b32fba7d` |
| unverified unclassified | UnnamedContract<br>`0x9daec3871330846271f1a89cd1bcf80f385b476b` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0x9efa095455c67e69122ad266da593492aa044340` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0x9fb39bcf34e046afde67745812640c94cd545e2e` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0xa06819ee0f6a7a4305ea585424d1eff9adef717c` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0xa1d3dafb505ed70cc316ce542498a1e2d16a2f24` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0xa3a3646132f71fb8ad8b40479aab8a8eba249797` | non_address_book | unknown | unknown | unverified | n/a | `0xd70811f1e4992aa051d54e29a04c8925b32fba7d` |
| unverified unclassified | UnnamedContract<br>`0xa4586d2587b7d03d344cbc28aecd8a6264c6e787` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0xa55a4459edae2199d0d91837ab55a178eefa2d9a` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0xa6fb9ff6dd1e1dcceaf9696d18187edeeeb7dfcb` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0xa71af4b025ccd2426451e0d6626c7797e4d398dc` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0xa7ce4434a29549864a46fce8662fd671c06ba49a` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0xa8288bf49809eac8b167325bcf533d89cd6eeb4a` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0xa8dfdc7f1334d732e6460f10adfcac481ddbdc5b` | non_address_book | unknown | unknown | unverified | n/a | `0xd70811f1e4992aa051d54e29a04c8925b32fba7d` |
| unverified unclassified | UnnamedContract<br>`0xa8efe932ce67d361c545009e9c90eef1822c83c7` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0xaa70b24f5b7a2980a91176cf1f223c6e42d5cc88` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0xab9c1cafb3f15f1f36ab800db92b8c5cfca1e7d8` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0xae23e9990a766153ae6b9e111dc84853d06ab88d` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0xafb07324daff76ec85de74b4e35d55e460f39356` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0xb06132b8e107c4e37307d8d31387e0b8d439728e` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0xb06f51f61abb41aad30b6aae3d29c63db7493b9c` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0xb09390076fcc6ae4d432b4f1e1c47e8ca134aedc` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0xb0b9335a6f4e764f4a3782822e0b7866d3f87da6` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0xb272b6ad4f0266cc8b5044b2772a84350301e268` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0xb5885b6ef02a4827f14808e413171e7ee8d73a3a` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0xb62a11352909f3505d14977a19bcfa3912d163b8` | non_address_book | unknown | unknown | unverified | n/a | `0xd70811f1e4992aa051d54e29a04c8925b32fba7d` |
| unverified unclassified | UnnamedContract<br>`0xbc6e59ae3aae1d643828ae2728cc564ab7c1dcb9` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0xbc767df4e46e1b85924dd9c1d4b1ac7c31c4af42` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0xbcce776e2ed82fa381d84d3af14d3b3c8af310d6` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0xbd18826a3e463ddd5e7f5449f5c048fb13a062f8` | non_address_book | unknown | unknown | unverified | n/a | `0xd70811f1e4992aa051d54e29a04c8925b32fba7d` |
| unverified unclassified | UnnamedContract<br>`0xbe293ca768bf4284bf07ad937a0d800e9d079af4` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0xc0edc6f3c2a88d87781802138792723205a7a19d` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0xc2b3ed30ad9e7e7ce554789362f18c77841aece9` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0xc4154c3048686b9c8b83ed15f4e52484366b07e7` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0xc451947763fc89d0d4b574a73d969bb09e7ce254` | non_address_book | unknown | unknown | unverified | n/a | `0xd70811f1e4992aa051d54e29a04c8925b32fba7d` |
| unverified unclassified | UnnamedContract<br>`0xc5125f6c8877dcfbc46f035c447b09fe3243aabb` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0xc5182e92bf001bae7049c4496cad96662db1a186` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0xc528032694351b96287ef52f8101a5ad5b1bccbd` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0xc67b25cf13890934903106f61a446ca5035d13fe` | non_address_book | unknown | unknown | unverified | n/a | `0xd70811f1e4992aa051d54e29a04c8925b32fba7d` |
| unverified unclassified | UnnamedContract<br>`0xc75b07de6f8567e817ccd7732e7f01aa9b4b9fe3` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0xc7a6098f7378fe6a7496445040f7dabfd8612b35` | non_address_book | unknown | unknown | unverified | n/a | `0xd70811f1e4992aa051d54e29a04c8925b32fba7d` |
| unverified unclassified | UnnamedContract<br>`0xc82d2a70f189af990bd09b4c1430a3aa3ccc0bae` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0xc833ceaf50f2621d9f92cba5ef28fb42cc1d6fa1` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0xc876c43403a753ec8c9a5f3ea4a24d11c2aba2b1` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0xc91fbd6986e9e502834fb9ef1d67473a7816a306` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0xca5f4a1e1f1fa36a79ad61be714aa7ac4a0ed4f1` | non_address_book | unknown | unknown | unverified | n/a | `0xd70811f1e4992aa051d54e29a04c8925b32fba7d` |
| unverified unclassified | UnnamedContract<br>`0xcab87f413b1530d8ccaacf55116e44a3db7f7f11` | non_address_book | unknown | unknown | unverified | n/a | `0xd70811f1e4992aa051d54e29a04c8925b32fba7d` |
| unverified unclassified | UnnamedContract<br>`0xcd239e01c36d3079c0daef355c61cff591c40db1` | non_address_book | unknown | unknown | unverified | n/a | `0xd70811f1e4992aa051d54e29a04c8925b32fba7d` |
| unverified unclassified | UnnamedContract<br>`0xcde277b980a3d3001d470f675937c300af89c046` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0xce76f71bb476a76bd2192e43abedcd6ab6b54bc5` | non_address_book | unknown | unknown | unverified | n/a | `0xd70811f1e4992aa051d54e29a04c8925b32fba7d` |
| unverified unclassified | UnnamedContract<br>`0xd18dbdac2d583f7ee75a0c9f1db14582ecc6ee3f` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0xd320fe89f4ab0a7106992101b0404720be56c0f9` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0xd490415b40ddf5b191bb26190d9a8dbeff451096` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0xd5f06128a00184befa020acbe8a9fd6425a66c22` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0xd64030d74d4d420ef78c5d3b901cc473965ba3b4` | non_address_book | unknown | unknown | unverified | n/a | `0xd70811f1e4992aa051d54e29a04c8925b32fba7d` |
| unverified unclassified | UnnamedContract<br>`0xd67a097dce9d4474737e6871684ae3c05460f571` | non_address_book | unknown | unknown | unverified | n/a | `0xd70811f1e4992aa051d54e29a04c8925b32fba7d` |
| unverified unclassified | UnnamedContract<br>`0xd85c02951cf339eb19472d1b569461083844da66` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0xd9fac9f821598a142ae5d3cf0a1cfc73a4e452b3` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0xdbb1755a0f3580df8c2dc3bca07f4799d731e71a` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0xdcfbc04ddb1e2baceaf6be41097b6594ac7aa1ae` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0xe0e64cb20e554162139ff96dbff30f23a0171150` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0xe29d970e93f90190fd9cb86e3f2556613a3a9a01` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0xe32a823411c82c53bda742b0bd0eb1d24d6fa3a7` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0xe6e03662b5a9488f9b30bfacf4e9e10e2b33cc16` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0xe9d686737c6fd680070caedba654eb8e4e641464` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0xead18973cf02d6b9690469d38b9e49d689aa6ded` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0xeae39ea748317ad9194aa45a6d558ee5a27da22e` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0xebe978c66573dbf59d5a72039bbe7780f07d99b4` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0xec13336bbd50790a00cdc0feddf11287eaf92529` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0xed27bcc8f6532fe159065588a81c181eefca0f85` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0xeda7307c4132c1965a069c64be404ec22cada673` | non_address_book | unknown | unknown | unverified | n/a | `0xd70811f1e4992aa051d54e29a04c8925b32fba7d` |
| unverified unclassified | UnnamedContract<br>`0xef94d409e2f249f2189bfaf71cfc11bc723cf7e8` | non_address_book | unknown | unknown | unverified | n/a | `0xd70811f1e4992aa051d54e29a04c8925b32fba7d` |
| unverified unclassified | UnnamedContract<br>`0xeffae8eb4ca7db99e954adc060b736db78928467` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0xf30dfe4a5e0755c85bd4d45eb144559e3785124b` | non_address_book | unknown | unknown | unverified | n/a | `0xd70811f1e4992aa051d54e29a04c8925b32fba7d` |
| unverified unclassified | UnnamedContract<br>`0xf3a8fc9be1402b107f9582c545c7e388c4e72efd` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0xf40ee4061c543770cca5e8d13cff54696a3570b7` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0xf4844386d694eb42f2728b658caaddf461a972f2` | non_address_book | unknown | unknown | unverified | n/a | `0xd70811f1e4992aa051d54e29a04c8925b32fba7d` |
| unverified unclassified | UnnamedContract<br>`0xf60e045db3ba2dd6d21ee3a0d40eadb8df9981e9` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0xf6a9f64350aeeba91fd42c5434af8208c3367b53` | non_address_book | unknown | unknown | unverified | n/a | `0xd70811f1e4992aa051d54e29a04c8925b32fba7d` |
| unverified unclassified | UnnamedContract<br>`0xf9d93ac91c7da2aee428ab490da3615e441c99dd` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0xfa481a061f354b5295f3f643e9107769025255b7` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0xfab2f02cc624362128750849c5209bbed4c86341` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0xfb825e93822dd971ebdfdb2180a751958dbd5e16` | non_address_book | unknown | unknown | unverified | n/a | `0xd70811f1e4992aa051d54e29a04c8925b32fba7d` |
| unverified unclassified | UnnamedContract<br>`0xfbc906e95c753e14cfcd83eeec3d19c44d2ff208` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0xfc085030e18d231b21619886132b48f56a0291d0` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0xfeb4fc1efc11a255f7cf273f7cd1c5c9af1f825b` | non_address_book | unknown | unknown | unverified | n/a | `0xd70811f1e4992aa051d54e29a04c8925b32fba7d` |
| unverified unclassified | UnnamedContract<br>`0xfefccabcdbd094e11fbfda55f8f75be9d3282eff` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |
| unverified unclassified | UnnamedContract<br>`0xff9af416153846da1dc4ae96c8a41ad2c87c3100` | non_address_book | unknown | unknown | unverified | n/a | `0x4bf7a0c21660879fdd051f5ee92cd2936779ec57` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [DL audit link](https://sourcehat.com/audits/GMDAOVault) | SourceHat | Audit | 2022-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [- [Audits]()](https://gmd-protocol.gitbook.io/gmd-protocol/protocol-links/audits.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20440] DL audit link — no match: Only the Vault contract is explicitly in scope. Other contracts (GLPRouter, GLPPriceFeed, GDtoken, IWETH) are interfaces or dependencies not audited.
- [20441] - [Audits]() — no match: The provided text is a documentation index page listing two audit reports with links, but does not contain the actual audit report content. No contract names or scope details are present.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| DL audit link | Vault | unmatched — not counted | — | Listed in scope as 'GMDAO's Vault contract' and described in the report. | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | `0x49e050df648e9477c7545fe1779b940f879b787a` | esGMD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x4945970efeec98d393b4b979b9be265a3ae28a8b` | GMD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x56009e94418ddfe8604331eceff38db0738775f8` | GMDBFRvault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x147ff11d9b9ae284c271b2faae7068f4ca9bb619` | gmdBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x1e95a37be8a17328fbf4b25b9ce3ce81e271beb3` | gmdETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x3db4b7da67dd5af61cb9b3c70501b1bdb24b2c22` | gmdUSDC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x34101fe647ba02238256b5c5a58aeaa2e532a049` | gmdUSDT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x8080b5ce6dfb49a6b86370d6982b3e2a86fbbb08` | GMDvault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 48 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 194 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 1 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, low=1
- Match method counts: n/a

Zero-match audit list:

- [20440] DL audit link
- [20441] - [Audits]()

Fork inheritance lineage and inherited audits are included when available.
