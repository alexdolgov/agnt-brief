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

- Factory (`0x668ad0...cd4ac7`, chain 137)
- JetswapFactory (`0x0eb58e...dfcbd5`, chain 56)
- JetswapRouter (`0xbe65b8...714800`, chain 56)
- MasterChef (`0x63d6ec...b6f9f5`, chain 56)
- MasterChef (`0x4e2239...bf1d85`, chain 137)
- Multicall (`0xf64882...4ee3dd`, chain 137)
- pWINGS (`0x845e76...09ee25`, chain 137)
- Router (`0x5c6ec3...3e5923`, chain 137)
- WingsToken (`0x0487b8...498446`, chain 56)

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
| JetswapFactory | unknown | project_anchor | own_supporting | 0 | bsc | unit-387738 | `0x0eb58e...dfcbd5` | ✅ Audited |
| JetswapRouter | adapter | project_anchor | own_supporting | 0 | bsc | unit-387741 | `0xbe65b8...714800` | ✅ Audited |
| Multicall | unknown | project_anchor | own_supporting | 0 | polygon | unit-387736 | `0xf64882...4ee3dd` | ✅ Audited |

### ⚠️ Verified + Unaudited (52)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BEP20Token | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfb991a...d67ec7` | ⚠️ Unaudited |
| D100Presale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: bsc `0x2a950c...7ec051`; bsc `0x512c99...5ba005`; bsc `0x6e3887...a726a0`; bsc `0xbf04f7...c26e3c`; bsc `0xe28a6d...e79739` | ⚠️ Unaudited |
| Factory | unknown | project_anchor | own_supporting | 0 | polygon | unit-387734 | `0x668ad0...cd4ac7` | ⚠️ Unaudited |
| FortressIJO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2fc22a...e777d2` | ⚠️ Unaudited |
| FTSTimeLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x94222b...4783e8` | ⚠️ Unaudited |
| GFCEPresale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcf2ef2...718874` | ⚠️ Unaudited |
| GFORCE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x94babb...1b26ce` | ⚠️ Unaudited |
| GFORCEv2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5f1363...e64c66` | ⚠️ Unaudited |
| HarvestMoonTicket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9c0287...ef5b8d` | ⚠️ Unaudited |
| IJO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 10 deployments: bsc `0x0196f8...675ae2`; bsc `0x2e93e5...993995`; bsc `0x32d7e3...ad19bb`; bsc `0x444e4d...2c2c9a`; bsc `0x514571...8b31dc`; bsc `0x664a48...39d168`; bsc `0x781d39...1252e3`; bsc `0xc8be30...a063f6`; bsc `0xd197f9...fcc776`; bsc `0xedc54a...0540a3` | ⚠️ Unaudited |
| JetBar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf64882...4ee3dd` | ⚠️ Unaudited |
| JetfuelAutoVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 7 deployments: bsc `0x2d2112...d995dd`; bsc `0x76b7dc...cc9035`; bsc `0x98c2d6...638ac4`; bsc `0xc344a3...0a7f8a`; bsc `0xdbfc4c...a67656`; bsc `0xec4b91...57130c`; bsc `0xf4a7c7...53af8c` | ⚠️ Unaudited |
| JetfuelAutoVaultv2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0xa6b4c2...bdbb60`; bsc `0xa93a93...9ff690` | ⚠️ Unaudited |
| JetfuelBSCEXVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 6 deployments: bsc `0x0a8ab9...997d8b`; bsc `0x151395...9428c8`; bsc `0x2b6642...cb33c3`; bsc `0x346834...5f4b08`; bsc `0xa86301...2e5cf4`; bsc `0xec57bf...112a38` | ⚠️ Unaudited |
| JetfuelCakeBestVaultv2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7c6d9e...bd4afa` | ⚠️ Unaudited |
| JetfuelFortressVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x647db6...3e22d2`; bsc `0xeaa823...6450ef` | ⚠️ Unaudited |
| JetfuelFortressVaultBNB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x15e84d...753306` | ⚠️ Unaudited |
| JetfuelVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 76 deployments: bsc `0x032bb9...20ecda`; bsc `0x0350ef...d6c122`; bsc `0x04659c...5647c9`; bsc `0x053391...7e9426`; bsc `0x07134c...f7e4ac`; bsc `0x0f6563...ad75fd`; bsc `0x184ba4...30b7ba`; bsc `0x1ac019...af9c32`; bsc `0x1ae8f4...e722ae`; bsc `0x1d149c...2a50ec`; bsc `0x1d6543...c04377`; bsc `0x1e3c27...d3f72c`; bsc `0x1ffc0e...a9d2a8`; bsc `0x229e08...6dae58`; bsc `0x229eed...b3c888`; bsc `0x24ebdb...151ac4`; bsc `0x290fb3...8ec0d6`; bsc `0x29c12b...a78433`; bsc `0x2cb360...c2a970`; bsc `0x30c7fb...b619c2`; bsc `0x369fe6...ab0d09`; bsc `0x3a795a...197225`; bsc `0x3aa4bc...facd93`; bsc `0x3e703b...78208c`; bsc `0x414953...6b4f1c`; bsc `0x422528...539d3b`; bsc `0x4529b6...8cddfd`; bsc `0x458cba...b2979a`; bsc `0x47d8d8...b55d70`; bsc `0x47f0bf...c5f2e6`; bsc `0x4ad9a2...901afa`; bsc `0x4e52ae...c41254`; bsc `0x4e6aab...ef8ec9`; bsc `0x4f8664...1d4ac9`; bsc `0x572535...48d1f3`; bsc `0x6ba6c5...78a64b`; bsc `0x6c9147...1f475d`; bsc `0x741587...ca71d4`; bsc `0x758678...a4e730`; bsc `0x7603b7...63ecab`; bsc `0x7c3397...4771f4`; bsc `0x804ef8...671875`; bsc `0x88c30c...a69d71`; bsc `0x890ce0...91731b`; bsc `0x94c253...70b63a`; bsc `0x971340...085e0a`; bsc `0x980ede...6de316`; bsc `0x9933cf...2584d4`; bsc `0x99cc30...3f0104`; bsc `0xa10983...c5f7db`; bsc `0xa6d550...4474ff`; bsc `0xa8391b...cf40fb`; bsc `0xaef536...13c946`; bsc `0xaf1598...e83666`; bsc `0xb09bf4...16ddb0`; bsc `0xb787b2...3d140d`; bsc `0xbf964f...4e42cc`; bsc `0xc1eed5...b03340`; bsc `0xc3d6d2...6773d9`; bsc `0xc4f157...901b31`; bsc `0xc573b7...2169ff`; bsc `0xd13bbd...2fe227`; bsc `0xd1c249...cd3104`; bsc `0xd31c24...9b53ca`; bsc `0xd4d4c2...24d3a1`; bsc `0xdbb07d...1c7e26`; bsc `0xe08677...03ae8a`; bsc `0xe10b18...157470`; bsc `0xe2859c...fe14fb`; bsc `0xe4647b...5a6e7d`; bsc `0xe4a3ed...6bfae8`; bsc `0xe79c3e...98359b`; bsc `0xed9f4f...88665d`; bsc `0xf4b998...592158`; bsc `0xf98fff...e7446b`; bsc `0xfc8c3a...ab7483` | ⚠️ Unaudited |
| JetfuelVaultDittoBoost | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x3d6d41...73dc20`; bsc `0x3de32f...891122`; bsc `0xbd686a...b991ba` | ⚠️ Unaudited |
| JetfuelVaultV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x227f9a...cd2113`; bsc `0xdca31a...2caf8c` | ⚠️ Unaudited |
| JetfuelVenusVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x937f23...e10f98` | ⚠️ Unaudited |
| JetfuelVenusVaultBNB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc15bb3...e1cd89` | ⚠️ Unaudited |
| JetfuelVenusVaultv2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x050015...1da25f`; bsc `0xedd78f...2b154c`; bsc `0xf2178d...aecead` | ⚠️ Unaudited |
| JetswapBar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd07947...d61b47` | ⚠️ Unaudited |
| JetswapVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 11 deployments: bsc `0x06fd5c...c91b43`; bsc `0x3685ce...ebe6de`; bsc `0x465a5e...c826a4`; bsc `0x467d28...d7e11d`; bsc `0x755aac...99ae90`; bsc `0x7f2e9e...045644`; bsc `0xae1140...57c63b`; bsc `0xd0b1dc...fa31b5`; bsc `0xdd5920...40bdf6`; bsc `0xed2097...976fb0`; bsc `0xf2f113...17e664` | ⚠️ Unaudited |
| MasterChef | unknown | project_anchor | own_supporting | 0 | bsc | unit-387739 | `0x63d6ec...b6f9f5` | ⚠️ Unaudited |
| MasterChef | unknown | project_anchor | own_supporting | 0 | polygon | unit-387732 | `0x4e2239...bf1d85` | ⚠️ Unaudited |
| pWINGS | unknown | project_anchor | own_supporting | 0 | polygon | unit-387735 | `0x845e76...09ee25` | ⚠️ Unaudited |
| RewardPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 13 deployments: bsc `0x41aff2...bf2922`; bsc `0x680403...8a6d52`; bsc `0x7421fd...035908`; bsc `0x760ab5...b06db2`; bsc `0x761a60...22a39e`; bsc `0x845e76...09ee25`; bsc `0x8fee5a...10d772`; bsc `0x99c65a...830ad8`; bsc `0xa45e5a...dc1703`; bsc `0xc46ccf...698b40`; bsc `0xc528fc...fef902`; bsc `0xd8d9ee...4bcd2c`; bsc `0xeaf7f4...159f97` | ⚠️ Unaudited |
| Router | unknown | project_anchor | own_supporting | 0 | polygon | unit-387733 | `0x5c6ec3...3e5923` | ⚠️ Unaudited |
| SmartChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 28 deployments: bsc `0x013bc4...9dce60`; bsc `0x071b5b...614208`; bsc `0x11bbb1...1dbe0a`; bsc `0x1a567e...014b4a`; bsc `0x2240cb...6126d9`; bsc `0x37c621...7b797f`; bsc `0x41c8f1...72ac67`; bsc `0x44d0e3...f6a92b`; bsc `0x4acfae...60c79c`; bsc `0x5a7e0f...a1a352`; bsc `0x6116b3...da7741`; bsc `0x66ab40...45b93d`; bsc `0x76fe14...a7d973`; bsc `0x7c31e4...a87bb7`; bsc `0x802237...bbb30f`; bsc `0x863771...c892bd`; bsc `0x8825a4...563ef7`; bsc `0x8f68cd...10b3ed`; bsc `0x9766af...7bfecd`; bsc `0x98768a...5ec566`; bsc `0x9c760c...c96224`; bsc `0x9e24f0...9ed37f`; bsc `0xab32f7...774254`; bsc `0xb976c3...a3477a`; bsc `0xcb2253...ca87d3`; bsc `0xcce024...c76c61`; bsc `0xcd9921...1dc01c`; bsc `0xe7b83b...a54354` | ⚠️ Unaudited |
| SmartChefFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9c202a...d8ae1e` | ⚠️ Unaudited |
| StrategyApe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x3c975a...edf9b1`; bsc `0x600b2f...fe6b06`; bsc `0x7b9ec0...f7c2b8`; bsc `0x929589...69509e` | ⚠️ Unaudited |
| StrategyApeLP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0xbfb7c6...871d96`; bsc `0xd43ccd...44b705`; bsc `0xd76eaf...24f5a0` | ⚠️ Unaudited |
| StrategyAutoLP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 6 deployments: bsc `0x408951...47fdb7`; bsc `0x4477a1...dc1fbe`; bsc `0x4f9172...86e9ff`; bsc `0x7cf960...653353`; bsc `0x7dc4c7...9977e5`; bsc `0xc92d33...afa88b` | ⚠️ Unaudited |
| StrategyAutoLPv2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x87b797...2352f1`; bsc `0xbb566a...f9b1ef` | ⚠️ Unaudited |
| StrategyAutoV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x715067...4a944f`; bsc `0x98cf77...75e800` | ⚠️ Unaudited |
| StrategyBakeryLP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x005892...db964b`; bsc `0x684b86...3b0c7d`; bsc `0xcf2f2c...60a8fb` | ⚠️ Unaudited |
| StrategyCakeBest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6d8f1f...49a0e9` | ⚠️ Unaudited |
| StrategyCakeBestv2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb8ceea...c8714c` | ⚠️ Unaudited |
| StrategyCakeSmart | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: bsc `0x31a858...98f79a`; bsc `0x33c5fb...b0ef18`; bsc `0x35a073...f26250`; bsc `0x3ceea4...e0c1ec`; bsc `0xdcc595...31444b` | ⚠️ Unaudited |
| StrategyFortress | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0xdc012e...964e1a`; bsc `0xe54572...0de789` | ⚠️ Unaudited |
| StrategyFortressBNB | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x58b8b3...8c506d` | ⚠️ Unaudited |
| StrategyJetfuelBSCEX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 6 deployments: bsc `0x098daf...cd057c`; bsc `0x0e290b...8ab79c`; bsc `0x182b9f...fbf8da`; bsc `0x1df7b5...6596c0`; bsc `0x4c972b...270148`; bsc `0x8d46b4...c26527` | ⚠️ Unaudited |
| StrategyJetfuelLP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 20 deployments: bsc `0x01588b...daf7fc`; bsc `0x0f22fd...9ed5ec`; bsc `0x394639...11eaff`; bsc `0x3d8f1a...3d0688`; bsc `0x40fa8a...dae662`; bsc `0x4553a0...dd04aa`; bsc `0x4c3b71...4c2107`; bsc `0x5f07c5...58787d`; bsc `0x63f04f...09e392`; bsc `0x69b30f...72940c`; bsc `0x7ac683...830be9`; bsc `0x87af25...ad6898`; bsc `0x918058...1df4f2`; bsc `0xa2b7be...7d86a8`; bsc `0xbfbea4...d25819`; bsc `0xc828ae...aea8bb`; bsc `0xd02cc0...2466b2`; bsc `0xe4e38e...afb6ca`; bsc `0xf0674c...456cf7`; bsc `0xf6fdba...5140d0` | ⚠️ Unaudited |
| StrategyVenus | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3b4ac8...de2a57` | ⚠️ Unaudited |
| StrategyVenusBNBV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x956bce...7cdaa3` | ⚠️ Unaudited |
| StrategyVenusv2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x3c0c0e...1014aa`; bsc `0xbfbc24...849746` | ⚠️ Unaudited |
| StrategyWingsLP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 12 deployments: bsc `0x0d9ab0...3eedb6`; bsc `0x24bb78...5a63ce`; bsc `0x3245c3...0fc629`; bsc `0x5d9ebd...707ad8`; bsc `0x70ed48...9d8a30`; bsc `0x964505...4c718e`; bsc `0xa22dbb...f2e0b6`; bsc `0xa9190f...aa018d`; bsc `0xad74c8...7cbae8`; bsc `0xd962d1...84f3c8`; bsc `0xe2f6e2...8b7e9e`; bsc `0xe69467...e099bc` | ⚠️ Unaudited |
| StrategyWingsSingleVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf150fd...24e06f` | ⚠️ Unaudited |
| TRYONPresale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb65be4...76e0bf` | ⚠️ Unaudited |
| WingsToken | token | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | unit-387737 | `0x0487b8...498446` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x47e2b2...0a6b40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6b9040...263aaf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x733ea2...4ac038` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x813692...2891b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x897420...cc4210` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa1a441...35fd4d` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | unit-387740 | `0xbb4cdb...bc095c` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | unit-387731 | `0x0d500b...df1270` | ❓ Unverified |

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
| audit-by-etherauthority.pdf | MasterChef | ambiguous — not counted | MasterChef (alternative) `0x4e2239...bf1d85` — liveness: live (current_address_book_code)<br>MasterChef (alternative) `0x63d6ec...b6f9f5` — deployed 2021-05-16 19:28:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| audit-by-etherauthority.pdf | Multicall | own contract | Multicall (selected) `0xf64882...4ee3dd` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| audit-by-etherauthority.pdf | swapV2Factory | unmatched — not counted | — | listed in project files table | no |
| audit-by-etherauthority.pdf | swapV2Router02 | unmatched — not counted | — | listed in project files table | no |
| audit-by-etherauthority.pdf | WingsToken | unmatched — not counted | — | listed in project files table | no |
| audit-by-hash0x.pdf | MasterChef | ambiguous — not counted | MasterChef (alternative) `0x4e2239...bf1d85` — liveness: live (current_address_book_code)<br>MasterChef (alternative) `0x63d6ec...b6f9f5` — deployed 2021-05-16 19:28:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| audit-by-hash0x.pdf | Multicall | own contract | Multicall (selected) `0xf64882...4ee3dd` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| audit-by-hash0x.pdf | JetswapFactory | own contract | JetswapFactory (selected) `0x0eb58e...dfcbd5` — deployed 2021-05-03 07:48:25+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| audit-by-hash0x.pdf | JetswapRouter | own contract | JetswapRouter (selected) `0xbe65b8...714800` — deployed 2021-05-03 07:58:52+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| audit-by-hash0x.pdf | WingsToken | unmatched — not counted | — | listed in scope table with MD5 hash | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x63d6ec...b6f9f5` | MasterChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
