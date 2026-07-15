# Agentic Audit Brief: xWin Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 1 (1 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: xWin Finance (`xwin-finance`)
- Website: [https://xwin.finance](https://xwin.finance)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, bsc, polygon
- Contract surface: 134 unique implementations (297 raw deployments)
- Coverage basis: 1/4 confirmed own live verified implementations (25.0%); conservative 25.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $4,565,346.90
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for xWin Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 7 contract row(s) across arbitrum, bsc, polygon. Structural roles: 3 unclassified, 2 core, 2 infra. 3 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 7
- Structural roles: unclassified (3), core (2), infra (2)
- Contract kinds: contract (7)
- Detected standards: erc1967proxy (2), erc20 (2), ownable (2), accesscontrol (1)
- Frameworks: openzeppelin (3), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 3

## Fork Analysis

0 of 5 contracts are derived from known codebases. 5 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- TransparentUpgradeableProxy (`0xa4ae0d...25a9fc`, chain 56)
- TransparentUpgradeableProxy (`0xd09774...900a60`, chain 56)
- xWinLockedStake (`0xd6f854...61b810`, chain 56)
- xWinMasterChef (`0x367712...d979e7`, chain 56)
- XWINToken (`0xd88ca0...bb5d28`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 7; live-surface rows included: 7 (7 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 4/4 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/4 (25.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 4 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 130 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 144
- Confirmed-live implementations: 4 of 134 unique; 130 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/99
- Verified + Unaudited implementations: 98
- Verified by bytecode match: 0
- Unverified implementations: 35
- Unique implementations: 134
- Raw deployments: 297
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CertiK | Tier 2 | 1 | 1.0% | 2023-06 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| xWinBuddyChef | unknown | project_anchor | own_supporting | 1 | bsc | unit-397355 | 2 deployments: bsc `0x4b87a6...c2e903`; bsc `0xda728c...899092` | ✅ Audited |

### ⚠️ Verified + Unaudited (98)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| FundV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 7 | bsc | n/a | 8 deployments: bsc `0x0a0817...f495e5`; bsc `0x284b4a...5d0b48`; bsc `0x3809f2...be1563`; bsc `0x4d4f94...c64e4a`; bsc `0x61d572...837f37`; bsc `0xaaff5e...22aabe`; bsc `0xe949d2...b63f02`; bsc `0xfa4d4b...70635c` | ⚠️ Unaudited |
| FundV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 5 | arbitrum | n/a | 6 deployments: arbitrum `0x00cc95...3c74a8`; arbitrum `0x03d6fe...9a6988`; arbitrum `0x5b0d58...ac47d2`; arbitrum `0x70223e...33a1b5`; arbitrum `0xc9f555...3a0221`; arbitrum `0xed83fd...eeeed7` | ⚠️ Unaudited |
| FundV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: bsc `0x31518c...60ba38`; bsc `0x76d6cc...edc447`; arbitrum `0x263e48...a5b5ae`; arbitrum `0x813b16...a58415`; arbitrum `0x8ec9c0...802b8e` | ⚠️ Unaudited |
| FundV2Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x8d2500...5c2048`; arbitrum `0x935b12...d3deaa` | ⚠️ Unaudited |
| FundV2Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x91d881...89db25`; bsc `0x9ab3c5...bc60a0` | ⚠️ Unaudited |
| FundV2Factory | registry | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x9ebc52...628a68` | ⚠️ Unaudited |
| FundV2Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x22c0fa...707eeb`; arbitrum `0x6cc1ca...1dfc03` | ⚠️ Unaudited |
| PancakePair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd4a3dc...0e5fb4` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x44195a...748edb`; bsc `0xfbcddb...b369e7`; arbitrum `0x7e2177...e2f137` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x02c727...f0efb6`; bsc `0xed302c...935b46` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x06cabf...c4e248`; bsc `0x4aaff5...1ced31` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x080330...bd096b`; bsc `0xaf91db...8535f9` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 4 | bsc | n/a | 5 deployments: bsc `0x0f0414...95e46a`; bsc `0x30f77a...8d9146`; bsc `0x74f33a...10a2ae`; bsc `0xdcd5d7...2d4884`; bsc `0xeb0228...890010` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x15e58d...b8ffb1`; bsc `0xe4cc29...bbae86` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x178063...4183d1`; bsc `0x278b82...0f0871` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | bsc | n/a | 4 deployments: bsc `0x1aa2c6...bbaf94`; bsc `0x5747de...0f1b2c`; bsc `0x5f3348...2117be`; bsc `0xef4995...20fe71` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x2088a8...522678`; bsc `0xc82d14...15dcbe` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x21ad7a...e151c8`; bsc `0x64b117...d8e569` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | bsc | n/a | 4 deployments: bsc `0x27f30d...7a8611`; bsc `0x8961f2...fa6008`; bsc `0xa9c087...208463`; bsc `0xab731d...ead19d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x3bb0ae...d09cb5`; bsc `0x516316...9796e2` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 6 deployments: bsc `0x41b744...6d124e`; bsc `0x52d40e...b7c8ab`; bsc `0x77d2ff...134b0b`; bsc `0x88c026...271304`; bsc `0x9006ae...dde617`; bsc `0xb0bc79...081d6e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x42e58f...60a1d2`; bsc `0xa09e6e...678c78` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x4601fa...0e95e3`; bsc `0xc1bc33...8a0c15`; bsc `0xe1f3c7...01267b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x475b0d...b62d52`; bsc `0x61469e...1b534c`; bsc `0xef3ca7...262626` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x513a2e...8cce5b`; bsc `0x59fade...ccb69d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x519b63...1cba69`; bsc `0xc50a87...6960e3` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x51c6d9...48f15b`; bsc `0x63c603...0ad1d2` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x593a50...21fac8`; bsc `0xcde959...0470d5` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x6079ce...e86acd`; bsc `0xcf5900...71c56d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x659f88...1dd5d4`; bsc `0xd2ff6d...fd45a8` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x66c88c...3bac62`; bsc `0xcd009b...0b9edc` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x82be05...02d285`; bsc `0xc9145e...bee46a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x87fbe9...249b90`; bsc `0x9a5471...4cc78f`; bsc `0xb26012...845944` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x8987f3...e9952f`; bsc `0x9a9b49...38e3da` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x9031de...661221`; bsc `0x9dc471...90aaa2` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | bsc | n/a | 4 deployments: bsc `0x9dfba2...0058c0`; bsc `0xc733d2...d37447`; bsc `0xd560f9...e9864d`; bsc `0xef8605...d27e63` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xa95228...30ef07`; bsc `0xfdf5eb...83fd62` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xac01d1...f3d390`; bsc `0xe1a24f...8daf17` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xae6522...345c6a`; bsc `0xb80504...2bd505` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xc79d64...cb3c8e`; bsc `0xf15a03...02f186` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xc9471c...c94cb8`; bsc `0xdd3e73...64c5ec` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xdc5be5...f1e99e`; bsc `0xf209df...3cb575` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xf3a926...bc0222`; bsc `0xf9390d...29320a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 6 | arbitrum | n/a | 7 deployments: arbitrum `0x107c86...bbb428`; arbitrum `0x2adac8...62cab3`; arbitrum `0x438c6f...a95250`; arbitrum `0x827a3e...fb3083`; arbitrum `0xa5de4f...42ce65`; arbitrum `0xee5693...df7c79`; arbitrum `0xffd330...eff011` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x190d05...5912b2`; arbitrum `0x92fa5d...1b34e0` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x2070f6...c77026`; arbitrum `0xb65fce...4e07cd` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x5aacdb...75de8a`; arbitrum `0xe77dc6...2bdd2e` | ⚠️ Unaudited |
| UniSwapV2TWAPOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7a8aa0...1299ac` | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x072f09...b08462`; bsc `0x5f1adc...c654e2`; bsc `0xbf694d...aac9b4`; bsc `0xc54a8d...97e62c` | ⚠️ Unaudited |
| xWinAllocations | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x24cfbb...6ae62a`; bsc `0x60baf2...42f4f4`; bsc `0xde6a27...9558e1` | ⚠️ Unaudited |
| xWinAllocations | unknown | non_address_book | non_address_book_inventory (excluded) | 8 | bsc | n/a | 9 deployments: bsc `0x396d75...ba106c`; bsc `0x3b62af...496f4b`; bsc `0x57951b...201a37`; bsc `0x5c85e5...24c9f6`; bsc `0x6559fb...69c57a`; bsc `0x92befe...5d06a5`; bsc `0xc9fa9b...6e398e`; bsc `0xda9814...66785f`; bsc `0xfc560c...4af0fb` | ⚠️ Unaudited |
| xWinAllocations | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0xd60373...1b15ab`; bsc `0xe7b6bb...30f226` | ⚠️ Unaudited |
| xWinAllocations | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | polygon | n/a | 3 deployments: polygon `0x75dab5...252a5a`; polygon `0xb4319e...440f69`; polygon `0xc1c53b...d422ac` | ⚠️ Unaudited |
| xWinBBMA | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x5efaab...f57d55`; bsc `0xbeac35...8db739` | ⚠️ Unaudited |
| xWinBBMA | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x91faf1...21421c` | ⚠️ Unaudited |
| xWinDCA | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2e0dd8...5895d7` | ⚠️ Unaudited |
| xWinDCA | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x482ae9...b8602a`; bsc `0xcd5919...ae7705` | ⚠️ Unaudited |
| xWinDCAArb | unknown | non_address_book | non_address_book_inventory (excluded) | 8 | bsc | n/a | 9 deployments: bsc `0x268001...0ed7eb`; bsc `0x3914a8...86f166`; bsc `0x5a20bd...91f479`; bsc `0x5b36a6...74f1a3`; bsc `0x8d77d4...5ef474`; bsc `0xa0c558...5782d1`; bsc `0xc224cd...964608`; bsc `0xfb1072...0e06d1`; bsc `0xfe641d...8f9beb` | ⚠️ Unaudited |
| xWinDCAArb | unknown | non_address_book | non_address_book_inventory (excluded) | 5 | arbitrum | n/a | 6 deployments: arbitrum `0x48334e...1f6ce4`; arbitrum `0x4917b1...e99184`; arbitrum `0x583454...8ec8ba`; arbitrum `0x72d24b...170534`; arbitrum `0x9ccd1d...ad8c80`; arbitrum `0xc9471c...c94cb8` | ⚠️ Unaudited |
| xWinDCAArb | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x556aa1...5cf1d0` | ⚠️ Unaudited |
| xWinDefi | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1bf7fe...fe8092` | ⚠️ Unaudited |
| xWinEmitEvent | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x05542f...202ed2`; bsc `0xc4c017...703cc6` | ⚠️ Unaudited |
| xWinEmitEvent | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x3f2bef...25c062` | ⚠️ Unaudited |
| xWinEmitEvent | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x87b340...7b8e5a`; arbitrum `0xdb0b5e...68533d` | ⚠️ Unaudited |
| xWinERC20Alpha | token | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x0a6527...5c5b24`; bsc `0x396231...b2882b`; bsc `0xb97f61...55ecb5` | ⚠️ Unaudited |
| xWinERC20Alpha | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x3c7a18...634240`; arbitrum `0x5daa15...709578` | ⚠️ Unaudited |
| xWinERC20Alpha | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | arbitrum | n/a | 3 deployments: arbitrum `0x07f42f...bfb537`; arbitrum `0x4c4cbc...61fa71`; arbitrum `0xa3960c...64d552` | ⚠️ Unaudited |
| xWinFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x4fdca7...d0bc18`; bsc `0x8f52e0...e56088`; bsc `0x9236a0...269b22` | ⚠️ Unaudited |
| xWinFeeCollectionWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x1cf446...6be53b`; bsc `0x212569...76d35c` | ⚠️ Unaudited |
| xWinFeeCollectionWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x83202e...2717c9`; arbitrum `0xc6c06e...0ad65e` | ⚠️ Unaudited |
| xWinFixedRateStableCoin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x076cb2...054c40` | ⚠️ Unaudited |
| xWinFund | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x548c42...3c7488`; bsc `0x963039...4b9dc5`; bsc `0xfccdbb...c1feba` | ⚠️ Unaudited |
| xWinIRT | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x5a8a66...208e08`; bsc `0xf995f6...403395` | ⚠️ Unaudited |
| xWinIRT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa7ccd3...3bfd25` | ⚠️ Unaudited |
| xWinLiquidStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x051dcb...361fe1`; bsc `0x9fd5bf...fc1099` | ⚠️ Unaudited |
| xWinLockedStake | unknown | project_anchor | own_supporting | 1 | bsc | unit-397354 | 2 deployments: bsc `0xa4ae0d...25a9fc`; bsc `0xd6f854...61b810` | ⚠️ Unaudited |
| xWinMasterChef | unknown | project_anchor | own_supporting | 1 | bsc | unit-397353 | 2 deployments: bsc `0x367712...d979e7`; bsc `0xd09774...900a60` | ⚠️ Unaudited |
| xWinPriceMaster | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xb12337...5e48e2`; bsc `0xd712df...90c77a` | ⚠️ Unaudited |
| xWinPriceMaster | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x4259ed...e3feed` | ⚠️ Unaudited |
| xWinPriceMaster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: bsc `0x7fc355...1d1110`; arbitrum `0x3986e3...92bff7` | ⚠️ Unaudited |
| xWinPriceMaster | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x631b0f...aabd52`; arbitrum `0x8a3c24...83c667` | ⚠️ Unaudited |
| xWinSingleAsset | unknown | non_address_book | non_address_book_inventory (excluded) | 7 | bsc | n/a | 8 deployments: bsc `0x0c34aa...7a9ae7`; bsc `0x1d2430...f23de9`; bsc `0x605926...6ba83f`; bsc `0x7348be...4da53e`; bsc `0x7a0dec...42116c`; bsc `0x8b7fca...77bdb2`; bsc `0x911ba5...314a5e`; bsc `0xcbca44...8a2742` | ⚠️ Unaudited |
| xWinSingleAsset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x1aa6d6...43fb8d`; bsc `0x5a65a6...09efaa` | ⚠️ Unaudited |
| xWinSingleAsset | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x9e0039...6a8803`; bsc `0xf4979c...886395`; bsc `0xf538ab...4de84a` | ⚠️ Unaudited |
| xWinSingleAssetAave | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x1db49d...34af2c` | ⚠️ Unaudited |
| xWinSingleAssetAave | unknown | non_address_book | non_address_book_inventory (excluded) | 6 | arbitrum | n/a | 6 deployments: arbitrum `0x093d04...4125d5`; arbitrum `0x1602d4...b4d763`; arbitrum `0x69fa36...93b0f0`; arbitrum `0x6ae475...aebda6`; arbitrum `0x8a0fa3...90ff62`; arbitrum `0xc41f7e...2f688e` | ⚠️ Unaudited |
| xWinSingleAssetOla | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x431de8...848291`; bsc `0x9446be...60c7f2` | ⚠️ Unaudited |
| xWinSingleAssetOla | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x664160...dc43b1`; bsc `0x697648...12d7d6`; bsc `0xcebd36...95f956` | ⚠️ Unaudited |
| xWinSplitFeeWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 5 | bsc | n/a | 6 deployments: bsc `0x16c486...bfa29e`; bsc `0x50c0e1...8211d1`; bsc `0x7ae229...791329`; bsc `0x915017...cac3dc`; bsc `0xba37d8...7cdf7f`; bsc `0xd66b0f...0097c2` | ⚠️ Unaudited |
| xWinSplitFeeWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x721115...2241de`; bsc `0x949b90...9d1c24` | ⚠️ Unaudited |
| xWinSwapV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x549388...800707` | ⚠️ Unaudited |
| xWinSwapV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: bsc `0x5125b2...720499`; arbitrum `0x24745c...1fed3f`; arbitrum `0x2d119a...58f6b1`; arbitrum `0x3d40f1...cbcca5` | ⚠️ Unaudited |
| xWinSwapV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x667b40...2978a1`; arbitrum `0x800b49...70406a` | ⚠️ Unaudited |
| xWinSwapV3Pancake | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5dd260...dc9fb9` | ⚠️ Unaudited |
| xWinSwapV3Pancake | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x9ce3fc...93d8d1`; bsc `0xcd839b...cbf578` | ⚠️ Unaudited |
| xWinSystemExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x1ed789...86b73f`; bsc `0x96160d...1c948c` | ⚠️ Unaudited |
| xWinSystemExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0xa26e81...bdad8c`; arbitrum `0xba083e...b46d3d` | ⚠️ Unaudited |
| XWINToken | token | project_anchor | own_supporting | 0 | bsc | unit-397352 | `0xd88ca0...bb5d28` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (35)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x018bac...3d38ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1a0088...600948` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x24478c...860489` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x24745c...1fed3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2b4b73...d3366a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2d119a...58f6b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x321c78...c8c511` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x32ad48...d036f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x35ff1d...093ea5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x36ccae...5726b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x373a8a...c68bca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4259ed...e3feed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x436769...7094c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x44e5c1...d129d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x476ae5...8e0e78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x532096...dd3023` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x584f58...0c84a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5d969a...0cb568` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x637cce...11e585` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6384f4...292888` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7f4ac4...9886da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x935b12...d3deaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9d7371...247f42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa26e81...bdad8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xab1ec2...1c067a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc9ea91...6b5350` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcc624a...d5ef20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcf8244...9b88af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd43b0a...22710b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe2d8b2...cca8c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe7d831...385d35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe8786d...fdb95c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf4ed0b...0fc43e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf5c65b...89f405` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf6a925...15a119` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [skynet.certik.com/projects/xwinfinance](https://skynet.certik.com/projects/xwinfinance) | CertiK | Audit | 2023-06 | stale | Direct | contract_name | matched | 1 | 1 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2340] skynet.certik.com/projects/xwinfinance — matched: Extracted from audited files and assessed contracts sections. Audit date from 'Last Audit was delivered on 6/18/2023'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| skynet.certik.com/projects/xwinfinance | xWinBBMA | unmatched — not counted | — | listed in audited files | no |
| skynet.certik.com/projects/xwinfinance | xWinBuddyChef | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x4b87a6...c2e903` — deployed 2023-06-11 06:05:49+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| skynet.certik.com/projects/xwinfinance | fundV2 | unmatched — not counted | — | listed in assessed contracts | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0xa4ae0d...25a9fc` | xWinLockedStake | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x367712...d979e7` | xWinMasterChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xd88ca0...bb5d28` | XWINToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 57 |
| upstream | 1 |
| standard_library | 22 |
| needs_review | 54 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (1 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 2 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: unique_name=1

Fork inheritance lineage and inherited audits are included when available.
