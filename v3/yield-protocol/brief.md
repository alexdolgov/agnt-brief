# Agentic Audit Brief: Yield Protocol

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

- Project: Yield Protocol (`yield-protocol`)
- Website: [https://github.com/yieldprotocol](https://github.com/yieldprotocol)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, ethereum, hyperliquid
- Contract surface: 141 unique implementations (292 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $203,353.90
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Yield Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 33 contract row(s) across arbitrum, base, ethereum, hyperliquid. Structural roles: 15 unclassified, 13 core, 5 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 33
- Structural roles: unclassified (15), core (13), supporting (5)
- Contract kinds: contract (30), unclassified (3)
- Detected standards: none
- Frameworks: openzeppelin (12), foundry (2), chainlink (1)
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 33; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 95 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 46 discovered implementations shown in the inventory but excluded from coverage (13 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 9
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/72
- Verified + Unaudited implementations: 72
- Verified by bytecode match: 0
- Unverified implementations: 69
- Unique implementations: 141
- Raw deployments: 292
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-10 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (72)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccumulatorMultiOracle | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-263213 | `0x0ad9ef...2e7848` | ⚠️ Unaudited |
| Assert | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-263215 | `0x320116...edb5f7` | ⚠️ Unaudited |
| Assert | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-263225 | `0xe1d7cd...58fdc9` | ⚠️ Unaudited |
| Cauldron | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x228438...77322d`; ethereum `0xbb5963...c99eaa` | ⚠️ Unaudited |
| Cauldron | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-263210 | `0xc88191...3ca867` | ⚠️ Unaudited |
| Cauldron | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-263214 | `0x23cc87...892e30` | ⚠️ Unaudited |
| CrabOracle | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-263198 | `0x35d753...5879f9` | ⚠️ Unaudited |
| Cvx3CrvOracle | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-263203 | `0x52e860...d7dc99` | ⚠️ Unaudited |
| EmergencyBrake | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x0479f8...18feef`; ethereum `0x097705...f7b007`; arbitrum `0x9ca4d6...abefea` | ⚠️ Unaudited |
| EmergencyBrake | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-263206 | `0x823759...659fcc` | ⚠️ Unaudited |
| EmergencyBrake | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-263209 | `0xaa7b33...4cf106` | ⚠️ Unaudited |
| EmergencyBrake | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-263219 | `0x667f18...8091df` | ⚠️ Unaudited |
| EmergencyBrake | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-263220 | `0x84066c...be26ad` | ⚠️ Unaudited |
| Escrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc5da2b...70ebca` | ⚠️ Unaudited |
| FiatTokenV2_1 | token | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xcbb7c0...ed33bf` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 2 deployments: ethereum `0x1abaea...1bc33c`; ethereum `0xa0b869...06eb48` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | non_address_book | non_address_book_inventory (excluded) | 2 | base | n/a | 2 deployments: base `0x60a3e3...1adb42`; base `0x833589...a02913` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xaf88d0...8e5831` | ⚠️ Unaudited |
| FlashJoin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: ethereum `0xec202c...196899`; arbitrum `0xcb60bd...ca3470` | ⚠️ Unaudited |
| FlashLiquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9f14f...3ced36` | ⚠️ Unaudited |
| FYToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 30 deployments: ethereum `0x53c2a1...8e5593`; ethereum `0xb38ba3...1dd6a0`; ethereum `0xfcb9b8...e72eeb`; arbitrum `0x035072...269e32`; arbitrum `0x0e7727...f04170`; arbitrum `0x2e8f62...805f22`; arbitrum `0x3b560c...4c0d5c`; arbitrum `0x4f9b5e...e80729`; arbitrum `0x523803...4edea5`; arbitrum `0x5655a9...352464`; arbitrum `0x5bb78e...1f7ccd`; arbitrum `0x5ed71c...01bdca`; arbitrum `0x60a6a7...f3a60a`; arbitrum `0x68e9e0...662a1a`; arbitrum `0x69f402...e37618`; arbitrum `0x6ef79d...9857f3`; arbitrum `0x892fa6...ca15e1`; arbitrum `0x8c41fc...80480f`; arbitrum `0x9b1988...184c5f`; arbitrum `0x9ca40b...ddb281`; arbitrum `0xa3ecaf...701c73`; arbitrum `0xa9bc73...dca9b8`; arbitrum `0xc24da4...ada6e1`; arbitrum `0xc4b24e...1b80c5`; arbitrum `0xca9d3b...54d470`; arbitrum `0xcbb7eb...7f06cc`; arbitrum `0xd94736...b12d11`; arbitrum `0xe1e878...f9a4ab`; arbitrum `0xec1b42...87851c`; arbitrum `0xee508c...012b23` | ⚠️ Unaudited |
| FYTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xa718ff...0aa67c`; ethereum `0xf374ab...0a396f` | ⚠️ Unaudited |
| Giver | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-263208 | `0xa98f32...47f873` | ⚠️ Unaudited |
| IdentityOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0108c4...5ce1cf` | ⚠️ Unaudited |
| IdentityOracle | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-263195 | `0x15d566...d58bfc` | ⚠️ Unaudited |
| Join | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 13 deployments: ethereum `0x08ffcb...a0eec4`; ethereum `0x5bb78e...1f7ccd`; ethereum `0x610498...25227d`; ethereum `0x6fb97c...a045a8`; ethereum `0x7cb6ce...71e705`; ethereum `0xc76a01...b389b2`; ethereum `0xd72ee2...c0d604`; ethereum `0xd94736...b12d11`; ethereum `0xee508c...012b23`; ethereum `0xfec845...800f61`; arbitrum `0x1229c7...d5d1ee`; arbitrum `0xaf93a0...96fb10`; arbitrum `0xc31cce...7e9810` | ⚠️ Unaudited |
| JoinFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0c2fc3...7c9242`; ethereum `0x729764...dd81e8` | ⚠️ Unaudited |
| Ladle | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-263226 | `0x6cb18f...65066a` | ⚠️ Unaudited |
| Ladle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xb57d6a...629a75`; ethereum `0xeda38a...d32cc3` | ⚠️ Unaudited |
| Ladle | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | arbitrum | unit-263227 | `0x16e25c...5d0560` | ⚠️ Unaudited |
| Pool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 15 deployments: ethereum `0x2e4b70...8c79ca`; ethereum `0x3771c9...3e3c9e`; ethereum `0x407353...114227`; ethereum `0x5d14ab...de4c9b`; ethereum `0x6bac09...3a04fc`; ethereum `0x80142a...302797`; ethereum `0xef8261...1e7da0`; ethereum `0xf5fd5a...83577c`; arbitrum `0x0fa29e...ca1dd5`; arbitrum `0x13ab94...122170`; arbitrum `0x6651f8...d0e323`; arbitrum `0x7fc2c4...54fc04`; arbitrum `0x8c8a44...5af309`; arbitrum `0xf76906...7f20d6`; arbitrum `0xfcb9b8...e72eeb` | ⚠️ Unaudited |
| PoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x486635...5396ed`; ethereum `0x9cc976...aaddfa`; ethereum `0xe4d5a6...9944be` | ⚠️ Unaudited |
| PoolNonTv | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 38 deployments: ethereum `0xe2f6f4...6f0d9e`; arbitrum `0x02dbfa...dabea6`; arbitrum `0x1cd29a...84c518`; arbitrum `0x1dc344...9aa571`; arbitrum `0x1eec5e...ab2e7a`; arbitrum `0x2769ab...bbd7d0`; arbitrum `0x29e0de...4df3f7`; arbitrum `0x2e0c2b...f9ece4`; arbitrum `0x32cbdc...b561da`; arbitrum `0x3e0a63...e55eee`; arbitrum `0x3ea461...14e689`; arbitrum `0x530648...f06b6d`; arbitrum `0x536edc...f7121b`; arbitrum `0x53b0c1...3bcbd3`; arbitrum `0x54d47f...6cbb2e`; arbitrum `0x58086b...1c9861`; arbitrum `0x5f55b2...cdd6fa`; arbitrum `0x65142d...9d155a`; arbitrum `0x7388f2...a30e41`; arbitrum `0x7f0dd4...969a24`; arbitrum `0x83e99a...a463ef`; arbitrum `0x9a364e...05ee68`; arbitrum `0x9f873e...841efb`; arbitrum `0xa73ba1...1334b6`; arbitrum `0xa8b291...dc7f15`; arbitrum `0xa98f32...47f873`; arbitrum `0xb268e2...8ad9bb`; arbitrum `0xb71db5...a0eb98`; arbitrum `0xbc62d8...f9213a`; arbitrum `0xbfcee2...e5d8f9`; arbitrum `0xc6078e...e19867`; arbitrum `0xcf275f...c45fa3`; arbitrum `0xddeb62...974ca3`; arbitrum `0xdf19b3...06a556`; arbitrum `0xe888e0...f9ddfc`; arbitrum `0xf0ba5c...9c23d3`; arbitrum `0xf6c1bd...596c28`; arbitrum `0xf7f6eb...e82a0b` | ⚠️ Unaudited |
| PoolView | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce4bc6...afa952` | ⚠️ Unaudited |
| PoolView | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-263216 | `0x3e9d89...1a9cf6` | ⚠️ Unaudited |
| Relay | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa4dab7...34f5f0` | ⚠️ Unaudited |
| RETHOracle | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-263197 | `0x318d52...9b5340` | ⚠️ Unaudited |
| SafeERC20Namer | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-263199 | `0x39bb9c...ce1706` | ⚠️ Unaudited |
| SafeERC20Namer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc484f3...577703` | ⚠️ Unaudited |
| SafeERC20Namer | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-263222 | `0xbd6bee...4bff8b` | ⚠️ Unaudited |
| Solvency | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-263218 | `0x5a6552...ec10e9` | ⚠️ Unaudited |
| Solvency | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: arbitrum `0x608274...8b4d3c`; arbitrum `0x78e180...4fb2b3`; arbitrum `0x95750d...9a11ec`; arbitrum `0x96f9e6...a3223a` | ⚠️ Unaudited |
| StEthConverter | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-263207 | `0x93d232...3eb106` | ⚠️ Unaudited |
| Strategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 33 deployments: ethereum `0x1144e1...ced295`; ethereum `0x7acfe2...1e2ccd`; ethereum `0x8e8d6a...1c0c39`; ethereum `0x93dee1...feb437`; ethereum `0xcda62a...b0f7d2`; ethereum `0xfbc322...516b5d`; arbitrum `0x067fb3...705812`; arbitrum `0x0a4b2e...3134e8`; arbitrum `0x2c918c...4bfba6`; arbitrum `0x3353e1...2622c7`; arbitrum `0x33e6b1...3d0635`; arbitrum `0x3b4ffd...c01a47`; arbitrum `0x4276be...3861dd`; arbitrum `0x477152...d95886`; arbitrum `0x5582b8...558955`; arbitrum `0x5aeb4e...2eafd0`; arbitrum `0x7012af...59c3fa`; arbitrum `0x861509...39339a`; arbitrum `0x8b814a...7956e1`; arbitrum `0x92a5b3...fbd5c8`; arbitrum `0x9847d0...b34cce`; arbitrum `0xa6624d...711145`; arbitrum `0xa9d104...5fba4a`; arbitrum `0xad1983...a940b3`; arbitrum `0xbd7a10...bdfe38`; arbitrum `0xc3a965...c61974`; arbitrum `0xc7d2e9...6d2257`; arbitrum `0xceaf1c...0431db`; arbitrum `0xd5b43b...f27151`; arbitrum `0xdc705f...593c11`; arbitrum `0xe7214a...c7efda`; arbitrum `0xe779cd...32b1e1`; arbitrum `0xfe2aba...7c5643` | ⚠️ Unaudited |
| StrategyOracle | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-263202 | `0x3ea461...14e689` | ⚠️ Unaudited |
| StrategyRescue | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-263194 | `0x070229...ca62bb` | ⚠️ Unaudited |
| TetherJoin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x06aaf3...b8ba75` | ⚠️ Unaudited |
| TetherToken | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x687496...782f38` | ⚠️ Unaudited |
| TetherToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdac17f...831ec7` | ⚠️ Unaudited |
| Timelock | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-263200 | `0x3b870d...ac51e3` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x77ff81...76bfc6`; ethereum `0xa5e64f...3482ed` | ⚠️ Unaudited |
| Timelock | governance | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-263224 | `0xd0a228...641b6c` | ⚠️ Unaudited |
| Unwind | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: arbitrum `0x54523f...4ec648`; arbitrum `0x78b85b...5bcfd6`; arbitrum `0xa9871f...341ea3`; arbitrum `0xc54734...9272b9`; arbitrum `0xe84adc...3489a2` | ⚠️ Unaudited |
| Wand | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x21f779...81239f`; ethereum `0x62b929...7d3568`; ethereum `0x804bf1...494c63` | ⚠️ Unaudited |
| WETH9 | token | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: ethereum `0xc02aaa...756cc2`; base `0x420000...000006` | ⚠️ Unaudited |
| Witch | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x532759...032d35`; ethereum `0x8dcc6e...b20f16` | ⚠️ Unaudited |
| Witch | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-263204 | `0x53c376...ad5061` | ⚠️ Unaudited |
| Witch | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-263211 | `0x07c2c7...4fffb6` | ⚠️ Unaudited |
| Witch | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-263212 | `0x08173d...00d669` | ⚠️ Unaudited |
| WrapEtherModule | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-263217 | `0x4cd01e...134568` | ⚠️ Unaudited |
| YieldMath | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: ethereum `0x856ddd...34868d`; ethereum `0xf003bd...ca6851`; arbitrum `0x511707...7be0da` | ⚠️ Unaudited |
| YieldMathExtensions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea3d45...47aa1e` | ⚠️ Unaudited |
| YieldMathExtensions | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-263223 | `0xc445d7...ea9acd` | ⚠️ Unaudited |
| YieldNotionalLever | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-263196 | `0x256dc6...bd5c06` | ⚠️ Unaudited |
| YieldStEthLever | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-263201 | `0x3d8058...421bc4` | ⚠️ Unaudited |
| YieldStrategyLever | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-263205 | `0x5582b8...558955` | ⚠️ Unaudited |
| YoEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05584e...7a0efb` | ⚠️ Unaudited |
| YoGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0cf9a8...7bb0cf`; ethereum `0xecd62a...3c816e` | ⚠️ Unaudited |
| YoMorphoAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x946fd0...b805f0` | ⚠️ Unaudited |
| YoRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x542d29...bc8ae8` | ⚠️ Unaudited |
| YoSwapAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59bad3...a03f57` | ⚠️ Unaudited |
| YoVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xa9c5f1...443052`; ethereum `0xda92d2...2dc169` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (69)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x07df2a...8259b3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x08d2f5...b4c400` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x0b2027...4e1ab6` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x1344a3...de0369` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x1bf78b...b5da57` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x210f4e...27b414` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x22768f...c0b8ea` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x23cc87...892e30` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x271828...e025d3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x28721b...670cbd` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x30e734...ce97db` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x358538...b38f3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3682fb...6ea444` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37aea3...02a9f8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x403105...531f12` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x41bf71...7a12f7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x53fba8...0d0d5c` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x5c69be...c5aa6f` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x6008db...a90e17` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x660bb2...65f3fb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x6bdc1f...318693` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x7af5d9...7921d9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x7cdce8...3fed1d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x84066c...be26ad` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x892fa6...ca15e1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x8a9262...f47138` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x95750d...9a11ec` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x95b3b8...cc7aa3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x96bf9a...455767` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x97f1d4...729d06` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x9ca89f...2fe551` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xa81414...dd9bb4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xb06181...947465` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xb132c1...c8008b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xc1361a...3c7e99` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xc597e9...236016` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xcdce5c...ad9f52` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xcdcea3...33843d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce9603...2a9ced` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xcfdc01...d76ca3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xd47a74...b338c2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xd5b43b...f27151` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xd65956...f4558a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xdc3758...348991` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xe7a977...010a2e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xef2cd7...b669e7` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xf2f7c3...4876c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x25c057...1bbf3e` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0x30e734...ce97db` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x3a717f...5c4cde` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0x44386d...4258dd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x723796...0df584` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x750b3a...cd02f2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x83c4cb...4d42d9` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0x89343a...a3efd8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x8e9696...a39c89` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0x93343c...1b08f9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x9d34df...398dc9` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0x9ea997...46c104` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa9078e...7b13e0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-263221 | `0xb5d97b...6c8832` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xb8b238...fc6b01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc4cb24...66e482` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xc597e9...236016` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xce3d36...83d29d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe6a63e...14b7ab` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xeaa886...455560` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xed84bd...e57bd2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xedc965...955e8a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [YieldV2.pdf](https://github.com/trailofbits/publications/blob/master/reviews/YieldV2.pdf) | Trail of Bits | Audit | 2021-10 | stale | Direct | n/a | no match | 0 | 0 | 0 | 15 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [14161] YieldV2.pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| YieldV2.pdf | AccessControl | unmatched — not counted | — | — | no |
| YieldV2.pdf | Cauldron | unmatched — not counted | — | — | no |
| YieldV2.pdf | ERC20Rewards | unmatched — not counted | — | — | no |
| YieldV2.pdf | FYToken | unmatched — not counted | — | — | no |
| YieldV2.pdf | IsContract | unmatched — not counted | — | — | no |
| YieldV2.pdf | Join | unmatched — not counted | — | — | no |
| YieldV2.pdf | Ladle | unmatched — not counted | — | — | no |
| YieldV2.pdf | Math64x64 | unmatched — not counted | — | — | no |
| YieldV2.pdf | Pool | unmatched — not counted | — | — | no |
| YieldV2.pdf | PoolFactory | unmatched — not counted | — | — | no |
| YieldV2.pdf | Relay | unmatched — not counted | — | — | no |
| YieldV2.pdf | Router | unmatched — not counted | — | — | no |
| YieldV2.pdf | Strategy | unmatched — not counted | — | — | no |
| YieldV2.pdf | Timelock | unmatched — not counted | — | — | no |
| YieldV2.pdf | Witch | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 72 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 69 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 15 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [14161] YieldV2.pdf

Fork inheritance lineage and inherited audits are included when available.
