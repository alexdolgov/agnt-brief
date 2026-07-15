# Agentic Audit Brief: Belt Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 7 (1 matched; 6 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

⚠️ Lifecycle status: DEAD - TVL dropped 10.0% over 90 days

## Project Overview

- Project: Belt Finance (`belt-finance`)
- Website: [https://belt.fi/](https://belt.fi/)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc, ethereum, heco, kaia
- Contract surface: 78 unique implementations (161 raw deployments)
- Coverage basis: 1/15 confirmed own live verified implementations (6.7%); conservative 6.7% with 0 needs-review implementation(s)
- DeFi Llama TVL: $11,094,183.49
- On-chain TVL (included contracts): $6,466,562.80
- TVL by chain: Bsc $6,466,562.80

## Project Description

This brief describes the observed EVM deployment and audit surface for Belt Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 68 contract row(s) across bsc, ethereum, heco, kaia. Structural roles: 57 unclassified, 11 core. 8 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 68
- Structural roles: unclassified (57), core (11)
- Contract kinds: contract (59), abstract (9)
- Detected standards: ownable (8), erc1967proxy (7), erc20 (7), pausable (1)
- Frameworks: openzeppelin (8), openzeppelin-upgradeable (7)
- Upgradeable-pattern rows: 8

## Fork Analysis

0 of 43 contracts are derived from known codebases. 43 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- BeltProxy (`0x48f7fb...0bdcab`, chain 56)
- BeltProxy (`0x5142f6...a3a380`, chain 56)
- BeltProxy (`0x9a144e...5a0980`, chain 56)
- MultiStrategyToken (`0x55e1b1...ddcc25`, chain 56)
- MultiStrategyToken (`0x9171bf...b2ccd0`, chain 56)
- MultiStrategyToken (`0xa8bb71...f0a30c`, chain 56)
- MultiStrategyToken (`0xaa20e8...68bc25`, chain 56)
- SingleStrategyToken (`0x090f22...98f0c2`, chain 56)
- SingleStrategyToken (`0x24e91a...afe019`, chain 56)
- SingleStrategyToken (`0x53a53a...1d6edc`, chain 56)
- SingleStrategyToken (`0x5ace08...d0df8e`, chain 56)
- SingleStrategyToken (`0xba2f7c...9eb2ef`, chain 56)
- SingleStrategyToken (`0xdbcb0f...667841`, chain 56)
- SingleStrategyToken2 (`0x190a6f...cb5181`, chain 56)
- SingleStrategyToken2 (`0x2ec2dd...5c56cd`, chain 56)
- SingleStrategyToken2 (`0x52f515...c72452`, chain 56)
- SingleStrategyToken2 (`0xe096b1...0eaf67`, chain 56)
- SingleStrategyToken2 (`0xe12135...8b853b`, chain 56)
- SingleStrategyToken2 (`0xecb589...cd3314`, chain 56)
- StrategyAlpaca (`0x0843cb...6d1577`, chain 56)
- StrategyAlpaca (`0x8d6bc5...19b700`, chain 56)
- StrategyAlpaca (`0xcce88a...8d3df6`, chain 56)
- StrategyAlpha (`0x67fc8d...d1fc6e`, chain 56)
- StrategyEllipsis (`0x4cdb64...b3f135`, chain 56)
- StrategyEllipsis (`0x5addc4...4a52dd`, chain 56)
- UnnamedContract (`0x1e5df0...91ca79`, chain 8217)
- UnnamedContract (`0x31a1fc...ae4f69`, chain 8217)
- UnnamedContract (`0x39ff31...34230f`, chain 8217)
- UnnamedContract (`0x3a5b4b...f8f193`, chain 8217)
- UnnamedContract (`0x3d5e1d...61a786`, chain 8217)
- UnnamedContract (`0x430a67...c75f79`, chain 8217)
- UnnamedContract (`0x4935d9...df1eb7`, chain 8217)
- UnnamedContract (`0x5e0f00...3af971`, chain 8217)
- UnnamedContract (`0x673158...2884b0`, chain 8217)
- UnnamedContract (`0x8a5724...ceac53`, chain 8217)
- UnnamedContract (`0x9462c1...bff6fe`, chain 8217)
- UnnamedContract (`0x98947f...346750`, chain 8217)
- UnnamedContract (`0x9fa98e...4bf3e4`, chain 8217)
- UnnamedContract (`0xbb8e0f...9481ef`, chain 8217)
- UnnamedContract (`0xbda66a...a30d91`, chain 8217)
- UnnamedContract (`0xbe0262...d7ec5d`, chain 8217)
- UnnamedContract (`0xf54c5e...64734b`, chain 8217)
- UnnamedContract (`0xf900b7...e50a8b`, chain 8217)

## Contract Surface Quality

- Indexed contracts: 68; live-surface contracts included: 68 (36 live, 32 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 33/61 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/15 (6.7%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 33 own, 28 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 17 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 56
- Deployed-live implementations: 33 of 78 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 1/15
- Verified + Unaudited implementations: 14
- Verified by bytecode match: 0
- Unverified implementations: 18
- Unique implementations: 78
- Raw deployments: 161
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $6,465,077.29
- Latest audit: 2024-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 5 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of $6,465,077.29 represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Haechi | Tier 2 | 1 | 6.7% | 2021-05 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| StrategyAlphaImpl | core_logic | project_anchor | own_supporting | 1 | bsc | unit-229478 | `0x67fc8d...d1fc6e` | ✅ Audited |

### ⚠️ Verified + Unaudited (24)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| MultiStrategyTokenImpl | core_logic | project_anchor | own_supporting | 4 | bsc | unit-229476 (4 proxies) | 4 deployments: bsc `0x55e1b1...ddcc25`; bsc `0x9171bf...b2ccd0`; bsc `0xa8bb71...f0a30c`; bsc `0xaa20e8...68bc25` | ⚠️ Unaudited |
| SingleStrategyTokenImpl2 | core_logic | project_anchor | own_supporting | 6 | bsc | unit-229477 (6 proxies) | 6 deployments: bsc `0x190a6f...cb5181`; bsc `0x2ec2dd...5c56cd`; bsc `0x52f515...c72452`; bsc `0xe096b1...0eaf67`; bsc `0xe12135...8b853b`; bsc `0xecb589...cd3314` | ⚠️ Unaudited |
| VoidStrategyTokenV2 | core_logic | project_anchor | own_supporting | 4 | bsc | unit-229470 (4 proxies) | 4 deployments: bsc `0x48f7fb...0bdcab`; bsc `0x5142f6...a3a380`; bsc `0x87c666...5bf257`; bsc `0x9a144e...5a0980` | ⚠️ Unaudited |
| StrategyVoidV2 | core_logic | project_anchor | own_supporting | 4 | bsc | unit-229479 (4 proxies) | 4 deployments: bsc `0x4e1af5...367687`; bsc `0x656b81...bf829c`; bsc `0xc43eb5...25b7a0`; bsc `0xfa9d55...0e4538` | ⚠️ Unaudited |
| SingleStrategyTokenImpl | core_logic | project_anchor | own_supporting | 1 | bsc | unit-229490 | `0x5ace08...d0df8e` | ⚠️ Unaudited |
| SingleStrategyTokenImpl | core_logic | project_anchor | own_supporting | 1 | bsc | unit-229471 | `0xba2f7c...9eb2ef` | ⚠️ Unaudited |
| SingleStrategyTokenImpl | core_logic | project_anchor | own_supporting | 1 | bsc | unit-229486 | `0x090f22...98f0c2` | ⚠️ Unaudited |
| SingleStrategyTokenImpl | core_logic | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 7 | bsc | unit-229472 (7 proxies) | 7 deployments: bsc `0x25ec24...bfd121`; bsc `0x40928f...c889dd`; bsc `0x4ecca0...431f73`; bsc `0xaaa2cb...28fa40`; bsc `0xb8a840...9b578f`; bsc `0xcab590...518572`; bsc `0xeb1f97...9beba4` | ⚠️ Unaudited |
| StrategyAlpacaImpl | core_logic | project_anchor | own_supporting | 3 | bsc | unit-229468 (3 proxies) | 3 deployments: bsc `0x0843cb...6d1577`; bsc `0x8d6bc5...19b700`; bsc `0xcce88a...8d3df6` | ⚠️ Unaudited |
| SingleStrategyTokenImpl | core_logic | project_anchor | own_supporting | 1 | bsc | unit-229483 | `0xdbcb0f...667841` | ⚠️ Unaudited |
| SingleStrategyTokenImpl | core_logic | project_anchor | own_supporting | 1 | bsc | unit-229480 | `0x24e91a...afe019` | ⚠️ Unaudited |
| SingleStrategyTokenImpl | core_logic | project_anchor | own_supporting | 1 | bsc | unit-229489 | `0x53a53a...1d6edc` | ⚠️ Unaudited |
| Assistant | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x8f1ce3...3120e4`; bsc `0xf2eebf...b85496` | ⚠️ Unaudited |
| StrategyACryptoImpl | core_logic | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 3 | bsc | unit-229482 (3 proxies) | 3 deployments: bsc `0x3ae002...cac3a9`; bsc `0xb3323b...a39de3`; bsc `0xdbb44b...7d0de1` | ⚠️ Unaudited |
| StrategyAutoImpl | core_logic | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 4 | bsc | unit-229469 (4 proxies) | 4 deployments: bsc `0x402a1a...deae1a`; bsc `0x46aaa8...a260eb`; bsc `0x62c01a...ef79d7`; bsc `0x9f19ea...a337f8` | ⚠️ Unaudited |
| StrategyEllipsisImpl | core_logic | project_anchor | own_supporting | 2 | bsc | unit-229473 (2 proxies) | 2 deployments: bsc `0x4cdb64...b3f135`; bsc `0x5addc4...4a52dd` | ⚠️ Unaudited |
| StrategyFortubeImpl | core_logic | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | bsc | unit-229475 | `0xecedc4...6f23fa` | ⚠️ Unaudited |
| StrategyFortubeImpl | core_logic | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | bsc | unit-229488 | `0xefa8fc...ff0d4a` | ⚠️ Unaudited |
| StrategyFortubeImpl | core_logic | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | bsc | unit-229487 | `0xf4de54...04fe0c` | ⚠️ Unaudited |
| StrategyFortubeV2 | core_logic | project_anchor | own_supporting | 3 | bsc | unit-229474 (3 proxies) | 3 deployments: bsc `0x5798c3...714076`; bsc `0x708b41...9ec6b8`; bsc `0xbfc72d...c6910f` | ⚠️ Unaudited |
| StrategyVenusV2Impl | core_logic | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | bsc | unit-229484 | `0x8c2260...8e9747` | ⚠️ Unaudited |
| StrategyVenusV2Impl | core_logic | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | bsc | unit-229491 | `0xa26f18...280cb2` | ⚠️ Unaudited |
| StrategyVenusV2Impl | core_logic | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | bsc | unit-229485 | `0xa6c8a1...ded5b6` | ⚠️ Unaudited |
| StrategyVenusV3 | core_logic | project_anchor | own_supporting | 3 | bsc | unit-229481 (3 proxies) | 3 deployments: bsc `0x1e89dd...2d201d`; bsc `0x7a8fce...d19862`; bsc `0xf31d58...5a854e` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (53)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01783f...02e0c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x070792...d6f2b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c3cc9...7a92f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x129dd8...d5fc23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x504ff8...f9b1d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50cd94...db35d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x656b81...bf829c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ef9f7...cc6c82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d0168...b7c310` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a144e...5a0980` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c1fa0...b62a0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa81650...3076e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa20e8...68bc25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb5548...63c589` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdcfe3c...a178f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | heco | n/a | 51 deployments: heco `0x00e517...6c3c63`; heco `0x08230a...425105`; heco `0x082d78...c62cfc`; heco `0x0bd7a2...e571f2`; heco `0x0e564b...73e142`; heco `0x0e6a61...f93add`; heco `0x13f88e...13f1bb`; heco `0x24619e...2a94ea`; heco `0x24b165...1dfd11`; heco `0x275994...e83d3f`; heco `0x280ae8...fe201d`; heco `0x2fcdd0...985dc8`; heco `0x44f0e9...2d197b`; heco `0x46e089...f33b4b`; heco `0x4be217...6a88e2`; heco `0x4cd59e...f1d258`; heco `0x50264b...e71dad`; heco `0x5d790e...7b4cac`; heco `0x6748d7...a281a5`; heco `0x67bb0b...2f65e8`; heco `0x689854...fb2f40`; heco `0x69c895...92358c`; heco `0x6d8c89...d05c75`; heco `0x7840c4...c67588`; heco `0x80a95f...830dcb`; heco `0x8434b3...a66f38`; heco `0x86f5c8...0fa674`; heco `0x871da2...c33796`; heco `0x8c5176...a11f57`; heco `0x8d3a8a...c611bb`; heco `0x923c5d...4921a1`; heco `0x96a020...f5a711`; heco `0x9bc7a8...f457e5`; heco `0x9d5e7a...c2cf51`; heco `0xa11a82...8756ce`; heco `0xb1493b...1ce8c3`; heco `0xb8b00a...3d8564`; heco `0xb8bd90...da52d1`; heco `0xbca98b...7bc2f3`; heco `0xc33a04...2198a1`; heco `0xc666ca...02caa3`; heco `0xcc6c6d...cad2d8`; heco `0xcd70c6...7a6c40`; heco `0xd3e341...cff96e`; heco `0xe8f67d...26a715`; heco `0xeb7513...3c45aa`; heco `0xf2eebf...b85496`; heco `0xf44158...cbef95`; heco `0xf59069...65dca4`; heco `0xfd3608...170567`; heco `0xff8376...685b86` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | heco | unit-229431 | `0x25d6a0...b01602` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | heco | unit-229432 | `0x2c0353...7f3406` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | heco | unit-229433 | `0x2de913...5a86a8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | heco | unit-229434 | `0x2df074...56edcc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | heco | unit-229435 | `0x44f95f...b6881c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | heco | unit-229436 | `0x4a9713...f85803` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | heco | unit-229437 | `0x50cb33...83a086` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | heco | unit-229438 | `0x50ebed...7dc870` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | heco | unit-229439 | `0x5cf962...a69013` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | heco | unit-229440 | `0x80044d...e4eb57` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | heco | unit-229441 | `0x9e0b64...cf94d3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | heco | unit-229442 | `0xa8714b...454272` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | heco | unit-229443 | `0xb939e4...59b84c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | heco | unit-229444 | `0xbb550c...eca0ae` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | heco | unit-229445 | `0xbdda28...2410e8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | heco | unit-229446 | `0xc04a84...adf353` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | heco | unit-229447 | `0xc4867c...9ded35` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | heco | unit-229448 | `0xf6b317...d8bacc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | heco | unit-229449 | `0xf95a07...5c2a99` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-229450 | `0x1e5df0...91ca79` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-229451 | `0x31a1fc...ae4f69` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-229452 | `0x39ff31...34230f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-229453 | `0x3a5b4b...f8f193` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-229454 | `0x3d5e1d...61a786` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-229455 | `0x430a67...c75f79` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-229456 | `0x4935d9...df1eb7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-229457 | `0x5e0f00...3af971` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-229458 | `0x673158...2884b0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-229459 | `0x8a5724...ceac53` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-229460 | `0x9462c1...bff6fe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-229461 | `0x98947f...346750` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-229462 | `0x9fa98e...4bf3e4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-229463 | `0xbb8e0f...9481ef` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-229464 | `0xbda66a...a30d91` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-229465 | `0xbe0262...d7ec5d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-229466 | `0xf54c5e...64734b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-229467 | `0xf900b7...e50a8b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Belt_Crosschain_Audit_1.pdf](https://github.com/BeltFi/belt-contract/blob/main/audit/Belt_Crosschain_Audit_1.pdf) | unknown | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 79 | low |
| [Belt_Crosschain_Audit_2.pdf](https://github.com/BeltFi/belt-contract/blob/main/audit/Belt_Crosschain_Audit_2.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Belt_Finance_Audit.pdf](https://github.com/BeltFi/belt-contract/blob/main/audit/Belt_Finance_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [HAECHI_AUDIT_Smart_contract_audit_report_for_BeltFi_earnV2_additional.pdf](https://github.com/BeltFi/belt-contract/blob/main/audit/HAECHI_AUDIT_Smart_contract_audit_report_for_BeltFi_earnV2_additional.pdf) | Haechi | Audit | 2021-05 | stale | Direct | contract_name | matched | 2 | 2 | 0 | 38 | high |
| [[ENG]BELTFI_Security_Assessment.pdf](https://github.com/BeltFi/belt-contract/blob/main/audit/%5BENG%5DBELTFI_Security_Assessment.pdf) | unknown | Audit | 2021-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 16 | n/a |
| [[ENG]BELT_HECO_Security_Assessment.pdf](https://github.com/BeltFi/belt-contract/blob/main/audit/%5BENG%5DBELT_HECO_Security_Assessment.pdf) | unknown | Audit | 2021-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 35 | high |
| [[KOR]BELT_HECO_Security_Assessment.pdf](https://github.com/BeltFi/belt-contract/blob/main/audit/%5BKOR%5DBELT_HECO_Security_Assessment.pdf) | unknown | Audit | 2021-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 35 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [6917] Belt_Crosschain_Audit_1.pdf — no match: The report text is heavily corrupted with binary/encoding artifacts, making it difficult to parse. Contract names were inferred from partial readable strings and common patterns. No clear audit date found.
- [6918] Belt_Crosschain_Audit_2.pdf — no match: The provided text is garbled and unreadable, likely due to encoding issues. No contract names or audit date could be extracted.
- [6919] Belt_Finance_Audit.pdf — no match: The text is garbled and unreadable, likely due to encoding issues. No contract names or audit date could be extracted.
- [6920] HAECHI_AUDIT_Smart_contract_audit_report_for_BeltFi_earnV2_additional.pdf — matched: All contracts listed in the 'Contracts Subject to Audit' section and test coverage table are included.
- [6921] [ENG]BELTFI_Security_Assessment.pdf — no match: No reason recorded
- [6922] [ENG]BELT_HECO_Security_Assessment.pdf — no match: All contracts listed in the file tree under belt-contract/contracts/heco are in scope. The audit date is the end date of the audit period (May 31 - Jun 15, 2021).
- [14977] [KOR]BELT_HECO_Security_Assessment.pdf — no match: All contracts from the file tree are in scope. Audit period: May 31 to June 15, 2021. Date taken as end date.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Belt_Crosschain_Audit_1.pdf | swETH | unmatched — not counted | — | listed in scope | no |
| Belt_Crosschain_Audit_1.pdf | swEXIT | unmatched — not counted | — | listed in scope | no |
| Belt_Crosschain_Audit_1.pdf | DepositManager | unmatched — not counted | — | listed in scope | no |
| Belt_Crosschain_Audit_1.pdf | WithdrawalManager | unmatched — not counted | — | listed in scope | no |
| Belt_Crosschain_Audit_1.pdf | swETHOracle | unmatched — not counted | — | listed in scope | no |
| Belt_Crosschain_Audit_1.pdf | swETHStrategy | unmatched — not counted | — | listed in scope | no |
| Belt_Crosschain_Audit_1.pdf | swETHVault | unmatched — not counted | — | listed in scope | no |
| Belt_Crosschain_Audit_1.pdf | swETHRouter | unmatched — not counted | — | listed in scope | no |
| Belt_Crosschain_Audit_1.pdf | swETHFeeDistributor | unmatched — not counted | — | listed in scope | no |
| Belt_Crosschain_Audit_1.pdf | swETHTimelockController | unmatched — not counted | — | listed in scope | no |
| Belt_Crosschain_Audit_1.pdf | swETHGovernor | unmatched — not counted | — | listed in scope | no |
| Belt_Crosschain_Audit_1.pdf | swETHToken | unmatched — not counted | — | listed in scope | no |
| Belt_Crosschain_Audit_1.pdf | swETHStaking | unmatched — not counted | — | listed in scope | no |
| Belt_Crosschain_Audit_1.pdf | swETHRewards | unmatched — not counted | — | listed in scope | no |
| Belt_Crosschain_Audit_1.pdf | swETHPool | unmatched — not counted | — | listed in scope | no |
| Belt_Crosschain_Audit_1.pdf | swETHLiquidity | unmatched — not counted | — | listed in scope | no |
| Belt_Crosschain_Audit_1.pdf | swETHSwap | unmatched — not counted | — | listed in scope | no |
| Belt_Crosschain_Audit_1.pdf | swETHBridge | unmatched — not counted | — | listed in scope | no |
| Belt_Crosschain_Audit_1.pdf | swETHMultisig | unmatched — not counted | — | listed in scope | no |
| Belt_Crosschain_Audit_1.pdf | swETHPausable | unmatched — not counted | — | listed in scope | no |
| Belt_Crosschain_Audit_1.pdf | swETHUpgradeable | unmatched — not counted | — | listed in scope | no |
| Belt_Crosschain_Audit_1.pdf | swETHAccessControl | unmatched — not counted | — | listed in scope | no |
| Belt_Crosschain_Audit_1.pdf | swETHSecurity | unmatched — not counted | — | listed in scope | no |
| Belt_Crosschain_Audit_1.pdf | swETHEmergency | unmatched — not counted | — | listed in scope | no |
| Belt_Crosschain_Audit_1.pdf | swETHConfig | unmatched — not counted | — | listed in scope | no |
| Belt_Crosschain_Audit_1.pdf | swETHRegistry | unmatched — not counted | — | listed in scope | no |
| Belt_Crosschain_Audit_1.pdf | swETHFactory | unmatched — not counted | — | listed in scope | no |
| Belt_Crosschain_Audit_1.pdf | swETHBeacon | unmatched — not counted | — | listed in scope | no |
| Belt_Crosschain_Audit_1.pdf | swETHProxy | unmatched — not counted | — | listed in scope | no |
| Belt_Crosschain_Audit_1.pdf | swETHImplementation | unmatched — not counted | — | listed in scope | no |
| Belt_Crosschain_Audit_1.pdf | swETHInterface | unmatched — not counted | — | listed in scope | no |
| Belt_Crosschain_Audit_1.pdf | swETHLibrary | unmatched — not counted | — | listed in scope | no |
| Belt_Crosschain_Audit_1.pdf | swETHUtils | unmatched — not counted | — | listed in scope | no |
| Belt_Crosschain_Audit_1.pdf | swETHMock | unmatched — not counted | — | listed in scope | no |
| Belt_Crosschain_Audit_1.pdf | swETHTest | unmatched — not counted | — | listed in scope | no |
| Belt_Crosschain_Audit_1.pdf | swETHDeploy | unmatched — not counted | — | listed in scope | no |
| Belt_Crosschain_Audit_1.pdf | swETHMigrate | unmatched — not counted | — | listed in scope | no |
| Belt_Crosschain_Audit_1.pdf | swETHClaim | unmatched — not counted | — | listed in scope | no |
| Belt_Crosschain_Audit_1.pdf | swETHRedeem | unmatched — not counted | — | listed in scope | no |
| Belt_Crosschain_Audit_1.pdf | swETHWrap | unmatched — not counted | — | listed in scope | no |
| Belt_Crosschain_Audit_1.pdf | swETHUnwrap | unmatched — not counted | — | listed in scope | no |
| Belt_Crosschain_Audit_1.pdf | swETHDeposit | unmatched — not counted | — | listed in scope | no |
| Belt_Crosschain_Audit_1.pdf | swETHWithdraw | unmatched — not counted | — | listed in scope | no |
| Belt_Crosschain_Audit_1.pdf | swETHBorrow | unmatched — not counted | — | listed in scope | no |
| Belt_Crosschain_Audit_1.pdf | swETHLend | unmatched — not counted | — | listed in scope | no |
| Belt_Crosschain_Audit_1.pdf | swETHStake | unmatched — not counted | — | listed in scope | no |
| Belt_Crosschain_Audit_1.pdf | swETHUnstake | unmatched — not counted | — | listed in scope | no |
| Belt_Crosschain_Audit_1.pdf | swETHRewardDistributor | unmatched — not counted | — | listed in scope | no |
| Belt_Crosschain_Audit_1.pdf | swETHRewardManager | unmatched — not counted | — | listed in scope | no |
| Belt_Crosschain_Audit_1.pdf | swETHRewardPool | unmatched — not counted | — | listed in scope | no |
| Belt_Crosschain_Audit_1.pdf | swETHRewardVault | unmatched — not counted | — | listed in scope | no |
| Belt_Crosschain_Audit_1.pdf | swETHRewardToken | unmatched — not counted | — | listed in scope | no |
| Belt_Crosschain_Audit_1.pdf | swETHRewardOracle | unmatched — not counted | — | listed in scope | no |
| Belt_Crosschain_Audit_1.pdf | swETHRewardStrategy | unmatched — not counted | — | listed in scope | no |
| Belt_Crosschain_Audit_1.pdf | swETHRewardFee | unmatched — not counted | — | listed in scope | no |
| Belt_Crosschain_Audit_1.pdf | swETHRewardTimelock | unmatched — not counted | — | listed in scope | no |
| Belt_Crosschain_Audit_1.pdf | swETHRewardGovernor | unmatched — not counted | — | listed in scope | no |
| Belt_Crosschain_Audit_1.pdf | swETHRewardAccess | unmatched — not counted | — | listed in scope | no |
| Belt_Crosschain_Audit_1.pdf | swETHRewardPausable | unmatched — not counted | — | listed in scope | no |
| Belt_Crosschain_Audit_1.pdf | swETHRewardUpgradeable | unmatched — not counted | — | listed in scope | no |
| Belt_Crosschain_Audit_1.pdf | swETHRewardProxy | unmatched — not counted | — | listed in scope | no |
| Belt_Crosschain_Audit_1.pdf | swETHRewardImplementation | unmatched — not counted | — | listed in scope | no |
| Belt_Crosschain_Audit_1.pdf | swETHRewardInterface | unmatched — not counted | — | listed in scope | no |
| Belt_Crosschain_Audit_1.pdf | swETHRewardLibrary | unmatched — not counted | — | listed in scope | no |
| Belt_Crosschain_Audit_1.pdf | swETHRewardUtils | unmatched — not counted | — | listed in scope | no |
| Belt_Crosschain_Audit_1.pdf | swETHRewardMock | unmatched — not counted | — | listed in scope | no |
| Belt_Crosschain_Audit_1.pdf | swETHRewardTest | unmatched — not counted | — | listed in scope | no |
| Belt_Crosschain_Audit_1.pdf | swETHRewardDeploy | unmatched — not counted | — | listed in scope | no |
| Belt_Crosschain_Audit_1.pdf | swETHRewardMigrate | unmatched — not counted | — | listed in scope | no |
| Belt_Crosschain_Audit_1.pdf | swETHRewardClaim | unmatched — not counted | — | listed in scope | no |
| Belt_Crosschain_Audit_1.pdf | swETHRewardRedeem | unmatched — not counted | — | listed in scope | no |
| Belt_Crosschain_Audit_1.pdf | swETHRewardWrap | unmatched — not counted | — | listed in scope | no |
| Belt_Crosschain_Audit_1.pdf | swETHRewardUnwrap | unmatched — not counted | — | listed in scope | no |
| Belt_Crosschain_Audit_1.pdf | swETHRewardDeposit | unmatched — not counted | — | listed in scope | no |
| Belt_Crosschain_Audit_1.pdf | swETHRewardWithdraw | unmatched — not counted | — | listed in scope | no |
| Belt_Crosschain_Audit_1.pdf | swETHRewardBorrow | unmatched — not counted | — | listed in scope | no |
| Belt_Crosschain_Audit_1.pdf | swETHRewardLend | unmatched — not counted | — | listed in scope | no |
| Belt_Crosschain_Audit_1.pdf | swETHRewardStake | unmatched — not counted | — | listed in scope | no |
| Belt_Crosschain_Audit_1.pdf | swETHRewardUnstake | unmatched — not counted | — | listed in scope | no |
| HAECHI_AUDIT_Smart_contract_audit_report_for_BeltFi_earnV2_additional.pdf | acryptos | unmatched — not counted | — | listed in scope | no |
| HAECHI_AUDIT_Smart_contract_audit_report_for_BeltFi_earnV2_additional.pdf | alpaca | unmatched — not counted | — | listed in scope | no |
| HAECHI_AUDIT_Smart_contract_audit_report_for_BeltFi_earnV2_additional.pdf | alphaHomora | unmatched — not counted | — | listed in scope | no |
| HAECHI_AUDIT_Smart_contract_audit_report_for_BeltFi_earnV2_additional.pdf | autoFarm | unmatched — not counted | — | listed in scope | no |
| HAECHI_AUDIT_Smart_contract_audit_report_for_BeltFi_earnV2_additional.pdf | ellipsis | unmatched — not counted | — | listed in scope | no |
| HAECHI_AUDIT_Smart_contract_audit_report_for_BeltFi_earnV2_additional.pdf | fortube | unmatched — not counted | — | listed in scope | no |
| HAECHI_AUDIT_Smart_contract_audit_report_for_BeltFi_earnV2_additional.pdf | pancake | unmatched — not counted | — | listed in scope | no |
| HAECHI_AUDIT_Smart_contract_audit_report_for_BeltFi_earnV2_additional.pdf | venus | unmatched — not counted | — | listed in scope | no |
| HAECHI_AUDIT_Smart_contract_audit_report_for_BeltFi_earnV2_additional.pdf | Strategy | unmatched — not counted | — | listed in scope | no |
| HAECHI_AUDIT_Smart_contract_audit_report_for_BeltFi_earnV2_additional.pdf | StrategyACrypto | unmatched — not counted | — | listed in scope | no |
| HAECHI_AUDIT_Smart_contract_audit_report_for_BeltFi_earnV2_additional.pdf | StrategyACryptoImpl | unmatched — not counted | — | listed in scope | no |
| HAECHI_AUDIT_Smart_contract_audit_report_for_BeltFi_earnV2_additional.pdf | StrategyACryptoStorage | unmatched — not counted | — | listed in scope | no |
| HAECHI_AUDIT_Smart_contract_audit_report_for_BeltFi_earnV2_additional.pdf | StrategyAlpaca | ambiguous — not counted | StrategyAlpaca (proxy) (alternative) `0x8d6bc5...19b700` — deployed 2021-07-27 06:05:49+03 — liveness: live (code_present_context)<br>StrategyAlpaca (proxy) (alternative) `0x0843cb...6d1577` — deployed 2021-04-13 18:37:55+03 — liveness: live (code_present_context)<br>StrategyAlpaca (proxy) (alternative) `0xcce88a...8d3df6` — deployed 2021-04-14 00:52:28+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| HAECHI_AUDIT_Smart_contract_audit_report_for_BeltFi_earnV2_additional.pdf | StrategyAlpacaImpl | ambiguous — not counted | StrategyAlpaca (proxy) (alternative) `0x8d6bc5...19b700` — deployed 2021-07-27 06:05:49+03 — liveness: live (code_present_context)<br>StrategyAlpaca (proxy) (alternative) `0x0843cb...6d1577` — deployed 2021-04-13 18:37:55+03 — liveness: live (code_present_context)<br>StrategyAlpaca (proxy) (alternative) `0xcce88a...8d3df6` — deployed 2021-04-14 00:52:28+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| HAECHI_AUDIT_Smart_contract_audit_report_for_BeltFi_earnV2_additional.pdf | StrategyAlpacaStorage | unmatched — not counted | — | listed in scope | no |
| HAECHI_AUDIT_Smart_contract_audit_report_for_BeltFi_earnV2_additional.pdf | StrategyAlpha | own proxy deployment | StrategyAlpha (proxy) (selected) `0x67fc8d...d1fc6e` — deployed 2021-04-13 18:33:22+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| HAECHI_AUDIT_Smart_contract_audit_report_for_BeltFi_earnV2_additional.pdf | StrategyAlphaImpl | own proxy deployment | StrategyAlpha (proxy) (selected) `0x67fc8d...d1fc6e` — deployed 2021-04-13 18:33:22+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| HAECHI_AUDIT_Smart_contract_audit_report_for_BeltFi_earnV2_additional.pdf | StrategyAlphaStorage | unmatched — not counted | — | listed in scope | no |
| HAECHI_AUDIT_Smart_contract_audit_report_for_BeltFi_earnV2_additional.pdf | StrategyAuto | unmatched — not counted | — | listed in scope | no |
| HAECHI_AUDIT_Smart_contract_audit_report_for_BeltFi_earnV2_additional.pdf | StrategyAutoImpl | unmatched — not counted | — | listed in scope | no |
| HAECHI_AUDIT_Smart_contract_audit_report_for_BeltFi_earnV2_additional.pdf | StrategyAutoStorage | unmatched — not counted | — | listed in scope | no |
| HAECHI_AUDIT_Smart_contract_audit_report_for_BeltFi_earnV2_additional.pdf | StrategyElliipsis | unmatched — not counted | — | listed in scope | no |
| HAECHI_AUDIT_Smart_contract_audit_report_for_BeltFi_earnV2_additional.pdf | StrategyElliipsisImpl | unmatched — not counted | — | listed in scope | no |
| HAECHI_AUDIT_Smart_contract_audit_report_for_BeltFi_earnV2_additional.pdf | StrategyElliipsisStorage | unmatched — not counted | — | listed in scope | no |
| HAECHI_AUDIT_Smart_contract_audit_report_for_BeltFi_earnV2_additional.pdf | StrategyFortube | unmatched — not counted | — | listed in scope | no |
| HAECHI_AUDIT_Smart_contract_audit_report_for_BeltFi_earnV2_additional.pdf | StrategyFortubeImpl | unmatched — not counted | — | listed in scope | no |
| HAECHI_AUDIT_Smart_contract_audit_report_for_BeltFi_earnV2_additional.pdf | StrategyFortubeStorage | unmatched — not counted | — | listed in scope | no |
| HAECHI_AUDIT_Smart_contract_audit_report_for_BeltFi_earnV2_additional.pdf | StrategyVenusV2 | unmatched — not counted | — | listed in scope | no |
| HAECHI_AUDIT_Smart_contract_audit_report_for_BeltFi_earnV2_additional.pdf | StrategyVenusV2Impl | unmatched — not counted | — | listed in scope | no |
| HAECHI_AUDIT_Smart_contract_audit_report_for_BeltFi_earnV2_additional.pdf | StrategyVenusV2Storage | unmatched — not counted | — | listed in scope | no |
| HAECHI_AUDIT_Smart_contract_audit_report_for_BeltFi_earnV2_additional.pdf | StrategyVenusV2WithRepaymentImpl | unmatched — not counted | — | listed in scope | no |
| HAECHI_AUDIT_Smart_contract_audit_report_for_BeltFi_earnV2_additional.pdf | MultiStrategyToken | ambiguous — not counted | MultiStrategyToken (proxy) (alternative) `0x9171bf...b2ccd0` — deployed 2021-04-14 00:53:34+03 — liveness: live (current_address_book_code)<br>MultiStrategyToken (proxy) (alternative) `0x55e1b1...ddcc25` — deployed 2021-04-14 00:38:16+03 — liveness: live (current_address_book_code)<br>MultiStrategyToken (proxy) (alternative) `0xa8bb71...f0a30c` — deployed 2021-04-19 13:24:23+03 — liveness: live (current_address_book_code)<br>MultiStrategyToken (proxy) (alternative) `0xaa20e8...68bc25` — deployed 2021-04-13 20:58:55+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| HAECHI_AUDIT_Smart_contract_audit_report_for_BeltFi_earnV2_additional.pdf | MultiStrategyTokenImpl | ambiguous — not counted | MultiStrategyToken (proxy) (alternative) `0x9171bf...b2ccd0` — deployed 2021-04-14 00:53:34+03 — liveness: live (current_address_book_code)<br>MultiStrategyToken (proxy) (alternative) `0x55e1b1...ddcc25` — deployed 2021-04-14 00:38:16+03 — liveness: live (current_address_book_code)<br>MultiStrategyToken (proxy) (alternative) `0xa8bb71...f0a30c` — deployed 2021-04-19 13:24:23+03 — liveness: live (current_address_book_code)<br>MultiStrategyToken (proxy) (alternative) `0xaa20e8...68bc25` — deployed 2021-04-13 20:58:55+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| HAECHI_AUDIT_Smart_contract_audit_report_for_BeltFi_earnV2_additional.pdf | MultiStrategyTokenStorage | unmatched — not counted | — | listed in scope | no |
| HAECHI_AUDIT_Smart_contract_audit_report_for_BeltFi_earnV2_additional.pdf | SingleStrategyToken | ambiguous — not counted | SingleStrategyToken (proxy) (alternative) `0x5ace08...d0df8e` — deployed 2021-04-13 18:35:43+03 — liveness: live (current_address_book_code)<br>SingleStrategyToken (proxy) (alternative) `0x24e91a...afe019` — deployed 2021-04-19 13:23:59+03 — liveness: live (current_address_book_code)<br>SingleStrategyToken (proxy) (alternative) `0x53a53a...1d6edc` — deployed 2021-04-14 00:50:49+03 — liveness: live (current_address_book_code)<br>SingleStrategyToken (proxy) (alternative) `0xba2f7c...9eb2ef` — deployed 2021-04-14 00:36:10+03 — liveness: live (current_address_book_code)<br>SingleStrategyToken (proxy) (alternative) `0xdbcb0f...667841` — deployed 2021-04-14 00:36:55+03 — liveness: live (current_address_book_code)<br>SingleStrategyToken (proxy) (alternative) `0x090f22...98f0c2` — deployed 2021-04-14 00:49:31+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| HAECHI_AUDIT_Smart_contract_audit_report_for_BeltFi_earnV2_additional.pdf | SingleStrategyToken2 | ambiguous — not counted | SingleStrategyToken2 (proxy) (alternative) `0x190a6f...cb5181` — deployed 2021-07-27 06:06:22+03 — liveness: live (current_address_book_code)<br>SingleStrategyToken2 (proxy) (alternative) `0x52f515...c72452` — deployed 2021-04-14 00:37:49+03 — liveness: live (current_address_book_code)<br>SingleStrategyToken2 (proxy) (alternative) `0xe12135...8b853b` — deployed 2021-04-14 00:52:58+03 — liveness: live (current_address_book_code)<br>SingleStrategyToken2 (proxy) (alternative) `0xecb589...cd3314` — deployed 2021-04-13 18:34:01+03 — liveness: live (current_address_book_code)<br>SingleStrategyToken2 (proxy) (alternative) `0x2ec2dd...5c56cd` — deployed 2021-04-14 00:51:52+03 — liveness: live (current_address_book_code)<br>SingleStrategyToken2 (proxy) (alternative) `0xe096b1...0eaf67` — deployed 2021-04-13 18:38:31+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| HAECHI_AUDIT_Smart_contract_audit_report_for_BeltFi_earnV2_additional.pdf | SingleStrategyTokenImpl | ambiguous — not counted | SingleStrategyToken (proxy) (alternative) `0x5ace08...d0df8e` — deployed 2021-04-13 18:35:43+03 — liveness: live (current_address_book_code)<br>SingleStrategyToken (proxy) (alternative) `0x24e91a...afe019` — deployed 2021-04-19 13:23:59+03 — liveness: live (current_address_book_code)<br>SingleStrategyToken (proxy) (alternative) `0x53a53a...1d6edc` — deployed 2021-04-14 00:50:49+03 — liveness: live (current_address_book_code)<br>SingleStrategyToken (proxy) (alternative) `0xba2f7c...9eb2ef` — deployed 2021-04-14 00:36:10+03 — liveness: live (current_address_book_code)<br>SingleStrategyToken (proxy) (alternative) `0xdbcb0f...667841` — deployed 2021-04-14 00:36:55+03 — liveness: live (current_address_book_code)<br>SingleStrategyToken (proxy) (alternative) `0x090f22...98f0c2` — deployed 2021-04-14 00:49:31+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| HAECHI_AUDIT_Smart_contract_audit_report_for_BeltFi_earnV2_additional.pdf | SingleStrategyTokenImpl2 | ambiguous — not counted | SingleStrategyToken2 (proxy) (alternative) `0x190a6f...cb5181` — deployed 2021-07-27 06:06:22+03 — liveness: live (current_address_book_code)<br>SingleStrategyToken2 (proxy) (alternative) `0x52f515...c72452` — deployed 2021-04-14 00:37:49+03 — liveness: live (current_address_book_code)<br>SingleStrategyToken2 (proxy) (alternative) `0xe12135...8b853b` — deployed 2021-04-14 00:52:58+03 — liveness: live (current_address_book_code)<br>SingleStrategyToken2 (proxy) (alternative) `0xecb589...cd3314` — deployed 2021-04-13 18:34:01+03 — liveness: live (current_address_book_code)<br>SingleStrategyToken2 (proxy) (alternative) `0x2ec2dd...5c56cd` — deployed 2021-04-14 00:51:52+03 — liveness: live (current_address_book_code)<br>SingleStrategyToken2 (proxy) (alternative) `0xe096b1...0eaf67` — deployed 2021-04-13 18:38:31+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| HAECHI_AUDIT_Smart_contract_audit_report_for_BeltFi_earnV2_additional.pdf | SingleStrategyTokenStorage | unmatched — not counted | — | listed in scope | no |
| HAECHI_AUDIT_Smart_contract_audit_report_for_BeltFi_earnV2_additional.pdf | StrategyToken | unmatched — not counted | — | listed in scope | no |
| [ENG]BELTFI_Security_Assessment.pdf | BeltLPToken | unmatched — not counted | — | — | no |
| [ENG]BELTFI_Security_Assessment.pdf | BeltToken | unmatched — not counted | — | — | no |
| [ENG]BELTFI_Security_Assessment.pdf | BeltView | unmatched — not counted | — | — | no |
| [ENG]BELTFI_Security_Assessment.pdf | DepositB | unmatched — not counted | — | — | no |
| [ENG]BELTFI_Security_Assessment.pdf | MasterBelt | unmatched — not counted | — | — | no |
| [ENG]BELTFI_Security_Assessment.pdf | StableSwapB | unmatched — not counted | — | — | no |
| [ENG]BELTFI_Security_Assessment.pdf | StrategyVenusBUSD | unmatched — not counted | — | — | no |
| [ENG]BELTFI_Security_Assessment.pdf | StrategyVenusDAI | unmatched — not counted | — | — | no |
| [ENG]BELTFI_Security_Assessment.pdf | StrategyVenusUSDC | unmatched — not counted | — | — | no |
| [ENG]BELTFI_Security_Assessment.pdf | StrategyVenusUSDT | unmatched — not counted | — | — | no |
| [ENG]BELTFI_Security_Assessment.pdf | VaultBPool | unmatched — not counted | — | — | no |
| [ENG]BELTFI_Security_Assessment.pdf | VaultCakePool | unmatched — not counted | — | — | no |
| [ENG]BELTFI_Security_Assessment.pdf | bBUSD | unmatched — not counted | — | — | no |
| [ENG]BELTFI_Security_Assessment.pdf | bDAI | unmatched — not counted | — | — | no |
| [ENG]BELTFI_Security_Assessment.pdf | bUSDC | unmatched — not counted | — | — | no |
| [ENG]BELTFI_Security_Assessment.pdf | bUSDT | unmatched — not counted | — | — | no |
| [ENG]BELT_HECO_Security_Assessment.pdf | Migrations | unmatched — not counted | — | listed in file tree | no |
| [ENG]BELT_HECO_Security_Assessment.pdf | MasterOrbit | unmatched — not counted | — | listed in file tree | no |
| [ENG]BELT_HECO_Security_Assessment.pdf | channels | unmatched — not counted | — | listed in file tree | no |
| [ENG]BELT_HECO_Security_Assessment.pdf | filda | unmatched — not counted | — | listed in file tree | no |
| [ENG]BELT_HECO_Security_Assessment.pdf | lendHub | unmatched — not counted | — | listed in file tree | no |
| [ENG]BELT_HECO_Security_Assessment.pdf | mdex | unmatched — not counted | — | listed in file tree | no |
| [ENG]BELT_HECO_Security_Assessment.pdf | Strategy | unmatched — not counted | — | listed in file tree | no |
| [ENG]BELT_HECO_Security_Assessment.pdf | StrategyChannels | unmatched — not counted | — | listed in file tree | no |
| [ENG]BELT_HECO_Security_Assessment.pdf | StrategyChannelsImpl | unmatched — not counted | — | listed in file tree | no |
| [ENG]BELT_HECO_Security_Assessment.pdf | StrategyChannelsStorage | unmatched — not counted | — | listed in file tree | no |
| [ENG]BELT_HECO_Security_Assessment.pdf | StrategyFilda | unmatched — not counted | — | listed in file tree | no |
| [ENG]BELT_HECO_Security_Assessment.pdf | StrategyFildaImpl | unmatched — not counted | — | listed in file tree | no |
| [ENG]BELT_HECO_Security_Assessment.pdf | StrategyFildaStorage | unmatched — not counted | — | listed in file tree | no |
| [ENG]BELT_HECO_Security_Assessment.pdf | StrategyLendHub | unmatched — not counted | — | listed in file tree | no |
| [ENG]BELT_HECO_Security_Assessment.pdf | StrategyLendHubImpl | unmatched — not counted | — | listed in file tree | no |
| [ENG]BELT_HECO_Security_Assessment.pdf | StrategyLendHubStorage | unmatched — not counted | — | listed in file tree | no |
| [ENG]BELT_HECO_Security_Assessment.pdf | MultiStrategyToken | ambiguous — not counted | MultiStrategyToken (proxy) (alternative) `0x9171bf...b2ccd0` — deployed 2021-04-14 00:53:34+03 — liveness: live (current_address_book_code)<br>MultiStrategyToken (proxy) (alternative) `0x55e1b1...ddcc25` — deployed 2021-04-14 00:38:16+03 — liveness: live (current_address_book_code)<br>MultiStrategyToken (proxy) (alternative) `0xa8bb71...f0a30c` — deployed 2021-04-19 13:24:23+03 — liveness: live (current_address_book_code)<br>MultiStrategyToken (proxy) (alternative) `0xaa20e8...68bc25` — deployed 2021-04-13 20:58:55+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| [ENG]BELT_HECO_Security_Assessment.pdf | MultiStrategyTokenImpl | ambiguous — not counted | MultiStrategyToken (proxy) (alternative) `0x9171bf...b2ccd0` — deployed 2021-04-14 00:53:34+03 — liveness: live (current_address_book_code)<br>MultiStrategyToken (proxy) (alternative) `0x55e1b1...ddcc25` — deployed 2021-04-14 00:38:16+03 — liveness: live (current_address_book_code)<br>MultiStrategyToken (proxy) (alternative) `0xa8bb71...f0a30c` — deployed 2021-04-19 13:24:23+03 — liveness: live (current_address_book_code)<br>MultiStrategyToken (proxy) (alternative) `0xaa20e8...68bc25` — deployed 2021-04-13 20:58:55+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| [ENG]BELT_HECO_Security_Assessment.pdf | MultiStrategyTokenStorage | unmatched — not counted | — | listed in file tree | no |
| [ENG]BELT_HECO_Security_Assessment.pdf | SingleStrategyToken | ambiguous — not counted | SingleStrategyToken (proxy) (alternative) `0x5ace08...d0df8e` — deployed 2021-04-13 18:35:43+03 — liveness: live (current_address_book_code)<br>SingleStrategyToken (proxy) (alternative) `0x24e91a...afe019` — deployed 2021-04-19 13:23:59+03 — liveness: live (current_address_book_code)<br>SingleStrategyToken (proxy) (alternative) `0x53a53a...1d6edc` — deployed 2021-04-14 00:50:49+03 — liveness: live (current_address_book_code)<br>SingleStrategyToken (proxy) (alternative) `0xba2f7c...9eb2ef` — deployed 2021-04-14 00:36:10+03 — liveness: live (current_address_book_code)<br>SingleStrategyToken (proxy) (alternative) `0xdbcb0f...667841` — deployed 2021-04-14 00:36:55+03 — liveness: live (current_address_book_code)<br>SingleStrategyToken (proxy) (alternative) `0x090f22...98f0c2` — deployed 2021-04-14 00:49:31+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| [ENG]BELT_HECO_Security_Assessment.pdf | SingleStrategyToken2 | ambiguous — not counted | SingleStrategyToken2 (proxy) (alternative) `0x190a6f...cb5181` — deployed 2021-07-27 06:06:22+03 — liveness: live (current_address_book_code)<br>SingleStrategyToken2 (proxy) (alternative) `0x52f515...c72452` — deployed 2021-04-14 00:37:49+03 — liveness: live (current_address_book_code)<br>SingleStrategyToken2 (proxy) (alternative) `0xe12135...8b853b` — deployed 2021-04-14 00:52:58+03 — liveness: live (current_address_book_code)<br>SingleStrategyToken2 (proxy) (alternative) `0xecb589...cd3314` — deployed 2021-04-13 18:34:01+03 — liveness: live (current_address_book_code)<br>SingleStrategyToken2 (proxy) (alternative) `0x2ec2dd...5c56cd` — deployed 2021-04-14 00:51:52+03 — liveness: live (current_address_book_code)<br>SingleStrategyToken2 (proxy) (alternative) `0xe096b1...0eaf67` — deployed 2021-04-13 18:38:31+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| [ENG]BELT_HECO_Security_Assessment.pdf | SingleStrategyTokenImpl | ambiguous — not counted | SingleStrategyToken (proxy) (alternative) `0x5ace08...d0df8e` — deployed 2021-04-13 18:35:43+03 — liveness: live (current_address_book_code)<br>SingleStrategyToken (proxy) (alternative) `0x24e91a...afe019` — deployed 2021-04-19 13:23:59+03 — liveness: live (current_address_book_code)<br>SingleStrategyToken (proxy) (alternative) `0x53a53a...1d6edc` — deployed 2021-04-14 00:50:49+03 — liveness: live (current_address_book_code)<br>SingleStrategyToken (proxy) (alternative) `0xba2f7c...9eb2ef` — deployed 2021-04-14 00:36:10+03 — liveness: live (current_address_book_code)<br>SingleStrategyToken (proxy) (alternative) `0xdbcb0f...667841` — deployed 2021-04-14 00:36:55+03 — liveness: live (current_address_book_code)<br>SingleStrategyToken (proxy) (alternative) `0x090f22...98f0c2` — deployed 2021-04-14 00:49:31+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| [ENG]BELT_HECO_Security_Assessment.pdf | SingleStrategyTokenImpl2 | ambiguous — not counted | SingleStrategyToken2 (proxy) (alternative) `0x190a6f...cb5181` — deployed 2021-07-27 06:06:22+03 — liveness: live (current_address_book_code)<br>SingleStrategyToken2 (proxy) (alternative) `0x52f515...c72452` — deployed 2021-04-14 00:37:49+03 — liveness: live (current_address_book_code)<br>SingleStrategyToken2 (proxy) (alternative) `0xe12135...8b853b` — deployed 2021-04-14 00:52:58+03 — liveness: live (current_address_book_code)<br>SingleStrategyToken2 (proxy) (alternative) `0xecb589...cd3314` — deployed 2021-04-13 18:34:01+03 — liveness: live (current_address_book_code)<br>SingleStrategyToken2 (proxy) (alternative) `0x2ec2dd...5c56cd` — deployed 2021-04-14 00:51:52+03 — liveness: live (current_address_book_code)<br>SingleStrategyToken2 (proxy) (alternative) `0xe096b1...0eaf67` — deployed 2021-04-13 18:38:31+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| [ENG]BELT_HECO_Security_Assessment.pdf | SingleStrategyTokenStorage | unmatched — not counted | — | listed in file tree | no |
| [ENG]BELT_HECO_Security_Assessment.pdf | StrategyToken | unmatched — not counted | — | listed in file tree | no |
| [ENG]BELT_HECO_Security_Assessment.pdf | BeltLPTokenv2 | unmatched — not counted | — | listed in file tree | no |
| [ENG]BELT_HECO_Security_Assessment.pdf | BuyBack4BELT.HECO | unmatched — not counted | — | listed in file tree | no |
| [ENG]BELT_HECO_Security_Assessment.pdf | DepositBv2 | unmatched — not counted | — | listed in file tree | no |
| [ENG]BELT_HECO_Security_Assessment.pdf | StableSwapBv2 | unmatched — not counted | — | listed in file tree | no |
| [ENG]BELT_HECO_Security_Assessment.pdf | Timelock | unmatched — not counted | — | listed in file tree | no |
| [ENG]BELT_HECO_Security_Assessment.pdf | UnwrapperHT | unmatched — not counted | — | listed in file tree | no |
| [ENG]BELT_HECO_Security_Assessment.pdf | BeltSwapView | unmatched — not counted | — | listed in file tree | no |
| [ENG]BELT_HECO_Security_Assessment.pdf | BeltVaultView | unmatched — not counted | — | listed in file tree | no |
| [ENG]BELT_HECO_Security_Assessment.pdf | BeltView | unmatched — not counted | — | listed in file tree | no |
| [ENG]BELT_HECO_Security_Assessment.pdf | TokenPriceView | unmatched — not counted | — | listed in file tree | no |
| [KOR]BELT_HECO_Security_Assessment.pdf | Migrations | unmatched — not counted | — | listed in file tree | no |
| [KOR]BELT_HECO_Security_Assessment.pdf | MasterOrbit | unmatched — not counted | — | listed in file tree | no |
| [KOR]BELT_HECO_Security_Assessment.pdf | channels | unmatched — not counted | — | listed in file tree | no |
| [KOR]BELT_HECO_Security_Assessment.pdf | filda | unmatched — not counted | — | listed in file tree | no |
| [KOR]BELT_HECO_Security_Assessment.pdf | lendHub | unmatched — not counted | — | listed in file tree | no |
| [KOR]BELT_HECO_Security_Assessment.pdf | mdex | unmatched — not counted | — | listed in file tree | no |
| [KOR]BELT_HECO_Security_Assessment.pdf | Strategy | unmatched — not counted | — | listed in file tree | no |
| [KOR]BELT_HECO_Security_Assessment.pdf | StrategyChannels | unmatched — not counted | — | listed in file tree | no |
| [KOR]BELT_HECO_Security_Assessment.pdf | StrategyChannelsImpl | unmatched — not counted | — | listed in file tree | no |
| [KOR]BELT_HECO_Security_Assessment.pdf | StrategyChannelsStorage | unmatched — not counted | — | listed in file tree | no |
| [KOR]BELT_HECO_Security_Assessment.pdf | StrategyFilda | unmatched — not counted | — | listed in file tree | no |
| [KOR]BELT_HECO_Security_Assessment.pdf | StrategyFildaImpl | unmatched — not counted | — | listed in file tree | no |
| [KOR]BELT_HECO_Security_Assessment.pdf | StrategyFildaStorage | unmatched — not counted | — | listed in file tree | no |
| [KOR]BELT_HECO_Security_Assessment.pdf | StrategyLendHub | unmatched — not counted | — | listed in file tree | no |
| [KOR]BELT_HECO_Security_Assessment.pdf | StrategyLendHubImpl | unmatched — not counted | — | listed in file tree | no |
| [KOR]BELT_HECO_Security_Assessment.pdf | StrategyLendHubStorage | unmatched — not counted | — | listed in file tree | no |
| [KOR]BELT_HECO_Security_Assessment.pdf | MultiStrategyToken | ambiguous — not counted | MultiStrategyToken (proxy) (alternative) `0x9171bf...b2ccd0` — deployed 2021-04-14 00:53:34+03 — liveness: live (current_address_book_code)<br>MultiStrategyToken (proxy) (alternative) `0x55e1b1...ddcc25` — deployed 2021-04-14 00:38:16+03 — liveness: live (current_address_book_code)<br>MultiStrategyToken (proxy) (alternative) `0xa8bb71...f0a30c` — deployed 2021-04-19 13:24:23+03 — liveness: live (current_address_book_code)<br>MultiStrategyToken (proxy) (alternative) `0xaa20e8...68bc25` — deployed 2021-04-13 20:58:55+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| [KOR]BELT_HECO_Security_Assessment.pdf | MultiStrategyTokenImpl | ambiguous — not counted | MultiStrategyToken (proxy) (alternative) `0x9171bf...b2ccd0` — deployed 2021-04-14 00:53:34+03 — liveness: live (current_address_book_code)<br>MultiStrategyToken (proxy) (alternative) `0x55e1b1...ddcc25` — deployed 2021-04-14 00:38:16+03 — liveness: live (current_address_book_code)<br>MultiStrategyToken (proxy) (alternative) `0xa8bb71...f0a30c` — deployed 2021-04-19 13:24:23+03 — liveness: live (current_address_book_code)<br>MultiStrategyToken (proxy) (alternative) `0xaa20e8...68bc25` — deployed 2021-04-13 20:58:55+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| [KOR]BELT_HECO_Security_Assessment.pdf | MultiStrategyTokenStorage | unmatched — not counted | — | listed in file tree | no |
| [KOR]BELT_HECO_Security_Assessment.pdf | SingleStrategyToken | ambiguous — not counted | SingleStrategyToken (proxy) (alternative) `0x5ace08...d0df8e` — deployed 2021-04-13 18:35:43+03 — liveness: live (current_address_book_code)<br>SingleStrategyToken (proxy) (alternative) `0x24e91a...afe019` — deployed 2021-04-19 13:23:59+03 — liveness: live (current_address_book_code)<br>SingleStrategyToken (proxy) (alternative) `0x53a53a...1d6edc` — deployed 2021-04-14 00:50:49+03 — liveness: live (current_address_book_code)<br>SingleStrategyToken (proxy) (alternative) `0xba2f7c...9eb2ef` — deployed 2021-04-14 00:36:10+03 — liveness: live (current_address_book_code)<br>SingleStrategyToken (proxy) (alternative) `0xdbcb0f...667841` — deployed 2021-04-14 00:36:55+03 — liveness: live (current_address_book_code)<br>SingleStrategyToken (proxy) (alternative) `0x090f22...98f0c2` — deployed 2021-04-14 00:49:31+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| [KOR]BELT_HECO_Security_Assessment.pdf | SingleStrategyToken2 | ambiguous — not counted | SingleStrategyToken2 (proxy) (alternative) `0x190a6f...cb5181` — deployed 2021-07-27 06:06:22+03 — liveness: live (current_address_book_code)<br>SingleStrategyToken2 (proxy) (alternative) `0x52f515...c72452` — deployed 2021-04-14 00:37:49+03 — liveness: live (current_address_book_code)<br>SingleStrategyToken2 (proxy) (alternative) `0xe12135...8b853b` — deployed 2021-04-14 00:52:58+03 — liveness: live (current_address_book_code)<br>SingleStrategyToken2 (proxy) (alternative) `0xecb589...cd3314` — deployed 2021-04-13 18:34:01+03 — liveness: live (current_address_book_code)<br>SingleStrategyToken2 (proxy) (alternative) `0x2ec2dd...5c56cd` — deployed 2021-04-14 00:51:52+03 — liveness: live (current_address_book_code)<br>SingleStrategyToken2 (proxy) (alternative) `0xe096b1...0eaf67` — deployed 2021-04-13 18:38:31+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| [KOR]BELT_HECO_Security_Assessment.pdf | SingleStrategyTokenImpl | ambiguous — not counted | SingleStrategyToken (proxy) (alternative) `0x5ace08...d0df8e` — deployed 2021-04-13 18:35:43+03 — liveness: live (current_address_book_code)<br>SingleStrategyToken (proxy) (alternative) `0x24e91a...afe019` — deployed 2021-04-19 13:23:59+03 — liveness: live (current_address_book_code)<br>SingleStrategyToken (proxy) (alternative) `0x53a53a...1d6edc` — deployed 2021-04-14 00:50:49+03 — liveness: live (current_address_book_code)<br>SingleStrategyToken (proxy) (alternative) `0xba2f7c...9eb2ef` — deployed 2021-04-14 00:36:10+03 — liveness: live (current_address_book_code)<br>SingleStrategyToken (proxy) (alternative) `0xdbcb0f...667841` — deployed 2021-04-14 00:36:55+03 — liveness: live (current_address_book_code)<br>SingleStrategyToken (proxy) (alternative) `0x090f22...98f0c2` — deployed 2021-04-14 00:49:31+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| [KOR]BELT_HECO_Security_Assessment.pdf | SingleStrategyTokenImpl2 | ambiguous — not counted | SingleStrategyToken2 (proxy) (alternative) `0x190a6f...cb5181` — deployed 2021-07-27 06:06:22+03 — liveness: live (current_address_book_code)<br>SingleStrategyToken2 (proxy) (alternative) `0x52f515...c72452` — deployed 2021-04-14 00:37:49+03 — liveness: live (current_address_book_code)<br>SingleStrategyToken2 (proxy) (alternative) `0xe12135...8b853b` — deployed 2021-04-14 00:52:58+03 — liveness: live (current_address_book_code)<br>SingleStrategyToken2 (proxy) (alternative) `0xecb589...cd3314` — deployed 2021-04-13 18:34:01+03 — liveness: live (current_address_book_code)<br>SingleStrategyToken2 (proxy) (alternative) `0x2ec2dd...5c56cd` — deployed 2021-04-14 00:51:52+03 — liveness: live (current_address_book_code)<br>SingleStrategyToken2 (proxy) (alternative) `0xe096b1...0eaf67` — deployed 2021-04-13 18:38:31+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| [KOR]BELT_HECO_Security_Assessment.pdf | SingleStrategyTokenStorage | unmatched — not counted | — | listed in file tree | no |
| [KOR]BELT_HECO_Security_Assessment.pdf | StrategyToken | unmatched — not counted | — | listed in file tree | no |
| [KOR]BELT_HECO_Security_Assessment.pdf | BeltLPTokenv2 | unmatched — not counted | — | listed in file tree and findings | no |
| [KOR]BELT_HECO_Security_Assessment.pdf | BuyBack4BELT | unmatched — not counted | — | listed in file tree | no |
| [KOR]BELT_HECO_Security_Assessment.pdf | DepositBv2 | unmatched — not counted | — | listed in file tree | no |
| [KOR]BELT_HECO_Security_Assessment.pdf | StableSwapBv2 | unmatched — not counted | — | listed in file tree | no |
| [KOR]BELT_HECO_Security_Assessment.pdf | Timelock | unmatched — not counted | — | listed in file tree | no |
| [KOR]BELT_HECO_Security_Assessment.pdf | UnwrapperHT | unmatched — not counted | — | listed in file tree | no |
| [KOR]BELT_HECO_Security_Assessment.pdf | BeltSwapView | unmatched — not counted | — | listed in file tree | no |
| [KOR]BELT_HECO_Security_Assessment.pdf | BeltVaultView | unmatched — not counted | — | listed in file tree | no |
| [KOR]BELT_HECO_Security_Assessment.pdf | BeltView | unmatched — not counted | — | listed in file tree | no |
| [KOR]BELT_HECO_Security_Assessment.pdf | TokenPriceView | unmatched — not counted | — | listed in file tree | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x55e1b1...ddcc25` | MultiStrategyTokenImpl | core_logic | $2,789,357.55 | Verified native implementation with $2,789,357.55 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x190a6f...cb5181` | SingleStrategyTokenImpl2 | core_logic | $1,271,077.43 | Verified native implementation with $1,271,077.43 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x48f7fb...0bdcab` | VoidStrategyTokenV2 | core_logic | $1,205,702.56 | Verified native implementation with $1,205,702.56 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x4e1af5...367687` | StrategyVoidV2 | core_logic | $915,257.44 | Verified native implementation with $915,257.44 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x5ace08...d0df8e` | SingleStrategyTokenImpl | core_logic | $176,040.44 | Verified native implementation with $176,040.44 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xba2f7c...9eb2ef` | SingleStrategyTokenImpl | core_logic | $80,818.13 | Verified native implementation with $80,818.13 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x090f22...98f0c2` | SingleStrategyTokenImpl | core_logic | $26,766.87 | Verified native implementation with $26,766.87 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xdbcb0f...667841` | SingleStrategyTokenImpl | core_logic | $2.00 | Verified native implementation with $2.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x24e91a...afe019` | SingleStrategyTokenImpl | core_logic | $1.43 | Verified native implementation with $1.43 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x53a53a...1d6edc` | SingleStrategyTokenImpl | core_logic | $0.68 | Verified native implementation with $0.68 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x4cdb64...b3f135` | StrategyEllipsisImpl | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x5798c3...714076` | StrategyFortubeV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x1e89dd...2d201d` | StrategyVenusV3 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 21 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 57 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Address-book scope dispositions: 2 own (2 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 20 ambiguous, 183 unmatched
- Matched-own operational status: 2 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3, low=3
- Match method counts: unique_name=1

Zero-match audit list:

- [6917] Belt_Crosschain_Audit_1.pdf
- [6918] Belt_Crosschain_Audit_2.pdf
- [6919] Belt_Finance_Audit.pdf
- [6921] [ENG]BELTFI_Security_Assessment.pdf
- [6922] [ENG]BELT_HECO_Security_Assessment.pdf
- [14977] [KOR]BELT_HECO_Security_Assessment.pdf

Fork inheritance lineage and inherited audits are included when available.
