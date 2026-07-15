# Agentic Audit Brief: TeleSwap

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

- Project: TeleSwap (`teleswap`)
- Website: [https://teleswap.xyz](https://teleswap.xyz)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, bsc, ethereum, optimism, polygon, unichain
- Contract surface: 64 unique implementations (100 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $242,282.64
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for TeleSwap in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 6 contracts are derived from known codebases. 6 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x93ad6c...217d3b`, chain 1)
- UnnamedContract (`0xec4a7d...5e9d52`, chain 10)
- UnnamedContract (`0x45e4d5...279a96`, chain 130)
- UnnamedContract (`0x93ad6c...217d3b`, chain 137)
- UnnamedContract (`0xec4a7d...5e9d52`, chain 8453)
- UnnamedContract (`0xec4a7d...5e9d52`, chain 42161)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 6/6 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 6 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 58 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 14
- Confirmed-live implementations: 6 of 64 unique; 58 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/34
- Verified + Unaudited implementations: 34
- Verified by bytecode match: 0
- Unverified implementations: 30
- Unique implementations: 64
- Raw deployments: 100
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (34)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BitcoinNFTMarketplace | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe2b360...d19ddb` | ⚠️ Unaudited |
| BitcoinRelay | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 5 deployments: polygon `0x7c5e6b...f9af38`; polygon `0x7deb66...132ea3`; polygon `0x984ccd...24fcf4`; polygon `0xc7a7c6...bf2467`; polygon `0xe880e7...6917b0` | ⚠️ Unaudited |
| BitcoinRelayLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x013f6d...676a29`; bsc `0xfcd688...b44d02` | ⚠️ Unaudited |
| BitcoinRelayLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa669d7...341ced` | ⚠️ Unaudited |
| Brc20RouterLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x3edec6...7adc17`; bsc `0x88641b...6818f6` | ⚠️ Unaudited |
| Brc20RouterLogic | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xab82c4...0084c7` | ⚠️ Unaudited |
| BscConnectorLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x90a50a...741e53`; bsc `0xe36b16...c9b6e7` | ⚠️ Unaudited |
| BurnRouterLogic | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x2787d4...9a3c15` | ⚠️ Unaudited |
| BurnRouterLogic | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x000987...86c75f` | ⚠️ Unaudited |
| BurnRouterLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: bsc `0xdcbb3d...f74418`; polygon `0xaccb15...8dc974` | ⚠️ Unaudited |
| CCBurnRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 11 deployments: polygon `0x2c4400...3e4843`; polygon `0x340ba3...7f633d`; polygon `0x3b5dd6...ff8648`; polygon `0x4a51c5...94f00e`; polygon `0x868a2a...90441f`; polygon `0x88f7e9...e28b93`; polygon `0x8a9ce6...071010`; polygon `0xa47453...74520d`; polygon `0xae469f...d420ac`; polygon `0xc58a12...4c07be`; polygon `0xd4ea6f...9aaea6` | ⚠️ Unaudited |
| CCExchangeRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb40244...92a1be` | ⚠️ Unaudited |
| CcExchangeRouterLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x521174...45e9b8`; polygon `0x7b07b8...e85e69` | ⚠️ Unaudited |
| CcExchangeRouterLogic | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xca5416...cd4f0d` | ⚠️ Unaudited |
| CcExchangeRouterLogic | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0xd1e9ff...a095a3` | ⚠️ Unaudited |
| CCTransferRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x79a138...372ec3` | ⚠️ Unaudited |
| CcTransferRouterLogic | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xa38ad0...bec5ff` | ⚠️ Unaudited |
| CcTransferRouterLogic | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x04367d...823707` | ⚠️ Unaudited |
| CcTransferRouterLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: bsc `0x3d6d7b...6a632e`; polygon `0x117fc5...526f52` | ⚠️ Unaudited |
| CollateralPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: polygon `0x5cec62...0e2da0`; polygon `0x8fc7a7...33d6d2`; polygon `0xc10a67...3bce6b` | ⚠️ Unaudited |
| InstantPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: polygon `0x186605...3aba3a`; polygon `0x534b40...29c41a`; polygon `0x6d0ad1...a678fd` | ⚠️ Unaudited |
| InstantRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x80dd89...a5f8a7`; polygon `0xf75b11...351a01` | ⚠️ Unaudited |
| LiquidityMining | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xad1f97...587ebe` | ⚠️ Unaudited |
| LockersLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 6 deployments: bsc `0x31193d...c35493`; bsc `0x507f19...c6740d`; bsc `0xe40ba1...3a4fc3`; polygon `0x47d033...c69985`; polygon `0x729c6c...d3bf16`; polygon `0xaafdfd...3669ef` | ⚠️ Unaudited |
| LockersManagerLogic | governance | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x84f74e...3987a5` | ⚠️ Unaudited |
| LockersManagerLogic | governance | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0xf5d6d3...046166` | ⚠️ Unaudited |
| PriceOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x7aabb0...3b1d63`; polygon `0x96b76a...b0165e` | ⚠️ Unaudited |
| TeleBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x515d72...2febde` | ⚠️ Unaudited |
| TeleBTCLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x467e5a...032bb9`; bsc `0xc58c11...bda574` | ⚠️ Unaudited |
| TeleOrdinalLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x1edcaf...92b54f` | ⚠️ Unaudited |
| TeleOrdinalLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 4 deployments: polygon `0x4b5f92...a73cce`; polygon `0x5cf9c2...0c514b`; polygon `0xf0b8d1...ee4ae6`; polygon `0xf63136...19186f` | ⚠️ Unaudited |
| UniswapV2Connector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: bsc `0x856d80...9e777b`; polygon `0x0c2896...ff0597` | ⚠️ Unaudited |
| YieldFarmingLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x1d5062...d00e66` | ⚠️ Unaudited |
| YieldFarmingLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbff350...52de02` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (30)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258272 | `0x93ad6c...217d3b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-258274 | `0xec4a7d...5e9d52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x10d3cd...f278d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x23d7c6...ba3c8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x50de2a...774297` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf53987...1e4ee5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-258276 | `0x45e4d5...279a96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x076484...dc17d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0ba43d...40dca5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x167d89...c60a0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1b9408...0736e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x29aeab...bf0065` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x511691...f95ecb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7fbf53...ac80e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x82cdf1...aeffbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x88f1bc...f32850` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-258278 | `0x93ad6c...217d3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa03b76...e2bf46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa59beb...93282c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa62ae6...d3327b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa6a8d7...c028d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa9e317...b0b213` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xad5570...d801f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc1465e...594f80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc4720d...adb2f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc82cdc...d1e1a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe2dc1a...ca93c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf802e0...6f8a2b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-258282 | `0xec4a7d...5e9d52` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-258280 | `0xec4a7d...5e9d52` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Quantstamp-Bitcoin-EVM.pdf](https://github.com/TeleportDAO/audits/blob/main/reports/Quantstamp-Bitcoin-EVM.pdf) | Quantstamp | Audit | 2023-02 | stale | Direct | n/a | no match | 0 | 0 | 0 | 20 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [14003] Quantstamp-Bitcoin-EVM.pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Quantstamp-Bitcoin-EVM.pdf | BitcoinHelper | unmatched — not counted | — | — | no |
| Quantstamp-Bitcoin-EVM.pdf | BitcoinRelay | unmatched — not counted | — | — | no |
| Quantstamp-Bitcoin-EVM.pdf | CCBurnRouter | unmatched — not counted | — | — | no |
| Quantstamp-Bitcoin-EVM.pdf | CCExchangeRouter | unmatched — not counted | — | — | no |
| Quantstamp-Bitcoin-EVM.pdf | CCTransferRouter | unmatched — not counted | — | — | no |
| Quantstamp-Bitcoin-EVM.pdf | CollateralPool | unmatched — not counted | — | — | no |
| Quantstamp-Bitcoin-EVM.pdf | CollateralPoolFactory | unmatched — not counted | — | — | no |
| Quantstamp-Bitcoin-EVM.pdf | Context | unmatched — not counted | — | — | no |
| Quantstamp-Bitcoin-EVM.pdf | ERC20 | unmatched — not counted | — | — | no |
| Quantstamp-Bitcoin-EVM.pdf | InstantPool | unmatched — not counted | — | — | no |
| Quantstamp-Bitcoin-EVM.pdf | InstantRouter | unmatched — not counted | — | — | no |
| Quantstamp-Bitcoin-EVM.pdf | LockersLib | unmatched — not counted | — | — | no |
| Quantstamp-Bitcoin-EVM.pdf | LockersLogic | unmatched — not counted | — | — | no |
| Quantstamp-Bitcoin-EVM.pdf | PriceOracle | unmatched — not counted | — | — | no |
| Quantstamp-Bitcoin-EVM.pdf | PriceProxy | unmatched — not counted | — | — | no |
| Quantstamp-Bitcoin-EVM.pdf | SafeMath | unmatched — not counted | — | — | no |
| Quantstamp-Bitcoin-EVM.pdf | TeleBTC | unmatched — not counted | — | — | no |
| Quantstamp-Bitcoin-EVM.pdf | TypedMemView | unmatched — not counted | — | — | no |
| Quantstamp-Bitcoin-EVM.pdf | UniswapV2Connector | unmatched — not counted | — | — | no |
| Quantstamp-Bitcoin-EVM.pdf | WETH | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 33 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 30 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 20 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [14003] Quantstamp-Bitcoin-EVM.pdf

Fork inheritance lineage and inherited audits are included when available.
