# Agentic Audit Brief: Verse

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 5 (1 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Verse (`verse`)
- Website: [https://verse.bitcoin.com](https://verse.bitcoin.com)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 104 unique implementations (179 raw deployments)
- Coverage basis: 1/1 confirmed own live verified implementations (100.0%); conservative 100.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $424,910.45
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Verse. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across ethereum. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: none
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- VerseToken (`0x249ca8...350a18`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/1 (100.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 103 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 1 of 104 unique; 103 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/56
- Verified + Unaudited implementations: 55
- Verified by bytecode match: 0
- Unverified implementations: 48
- Unique implementations: 104
- Raw deployments: 179
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-10 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Quantstamp | Tier 2 | 1 | 1.8% | 2022-05 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| VerseToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395721 | `0x249ca8...350a18` | ✅ Audited |

### ⚠️ Verified + Unaudited (55)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Adapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 10 deployments: ethereum `0x09de43...f4aa4d`; ethereum `0x0c5857...5640eb`; ethereum `0x108a24...45a71f`; ethereum `0x139769...00c202`; ethereum `0x4690db...9509aa`; ethereum `0x51caad...80b3a4`; ethereum `0x60cc8d...b6883a`; ethereum `0xbba7c5...91b93f`; ethereum `0xdf9305...67c409`; ethereum `0xe5eaae...72b85e` | ⚠️ Unaudited |
| APYViewer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x81eed3...587526`; ethereum `0xd01f5e...0e005d` | ⚠️ Unaudited |
| BAGCOIN | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x808688...9b522b` | ⚠️ Unaudited |
| BitDex | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xafeb70...2a429e` | ⚠️ Unaudited |
| BurnEngine | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b2a57...f73cb8` | ⚠️ Unaudited |
| CalculateCloneAddress | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x957b9e...f552a0` | ⚠️ Unaudited |
| CollectorETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a24c1...300b04` | ⚠️ Unaudited |
| Crowdsale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x85eafc...beb6d7` | ⚠️ Unaudited |
| DecimalPlaceHolder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xa3b580...913983`; ethereum `0xfd9bce...b733c3` | ⚠️ Unaudited |
| DGBagToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3bb3ab...7fa597`; ethereum `0x735e48...56f6b1` | ⚠️ Unaudited |
| DGKeeper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe60287...917ce5` | ⚠️ Unaudited |
| DGLight | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b520c...83588d` | ⚠️ Unaudited |
| DGTownHall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4f81c7...c71c8d`; ethereum `0x5cdde7...7eebc9` | ⚠️ Unaudited |
| LiquidFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9961f0...1a37d0` | ⚠️ Unaudited |
| LiquidityGuard | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c306c...4684b6` | ⚠️ Unaudited |
| LiquidityMaker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d467d...5325ad` | ⚠️ Unaudited |
| LiquidityTransformer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfef0d2...242063` | ⚠️ Unaudited |
| LiquidLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x34d62c...222b9a`; ethereum `0x6c75ae...54719c`; ethereum `0x9399d4...64f720`; ethereum `0xb86475...991604`; ethereum `0xcff8b3...328a07`; ethereum `0xe2ad2d...f36518` | ⚠️ Unaudited |
| LiquidPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7fff6...1fb23d` | ⚠️ Unaudited |
| LotteryETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x46eb00...537ea6`; ethereum `0xef897a...4886fa` | ⚠️ Unaudited |
| MSG | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x079730...95d511` | ⚠️ Unaudited |
| NFTDealer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x77130e...a9f822`; ethereum `0xb2063a...386ed6`; ethereum `0xc4302a...6b92bb`; ethereum `0xeeadee...47b9f7` | ⚠️ Unaudited |
| PoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x076546...ed93f6`; ethereum `0x30c584...00e58f`; ethereum `0x9d2fd3...c9cc89` | ⚠️ Unaudited |
| PositionNFTs | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x32e0a7...1a5f61`; ethereum `0x9d6d4e...c78b07`; ethereum `0xda6c0b...9ed670` | ⚠️ Unaudited |
| PowerFarmNFTs | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x2da2b3...e24c23`; ethereum `0x609fed...fe76e0`; ethereum `0xd29203...e7fa14` | ⚠️ Unaudited |
| PricingOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x944455...dfdb1a` | ⚠️ Unaudited |
| RaidPartyInsurance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x6ea9ad...0cac0e`; ethereum `0x766e26...8a460e`; ethereum `0xbf0d73...24a7ce`; ethereum `0xe61ab5...4d0179`; ethereum `0xeff20e...9e3a4f` | ⚠️ Unaudited |
| RefundSponsor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3fc68...f2325a` | ⚠️ Unaudited |
| SafeMathLibExt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda5139...69ac99` | ⚠️ Unaudited |
| SDAIOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6e700c...93af4d`; ethereum `0x9a8eaa...22768e` | ⚠️ Unaudited |
| SimpleFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 12 deployments: ethereum `0x17bdce...0605ef`; ethereum `0x29e9c9...3447f6`; ethereum `0x42535f...961dc7`; ethereum `0x4ba48d...6a125d`; ethereum `0x4e1f12...d4910c`; ethereum `0x4efff2...da6b10`; ethereum `0x8295e4...f88b01`; ethereum `0xc5af93...219aa8`; ethereum `0xcb2e16...d71a0e`; ethereum `0xd92055...023e07`; ethereum `0xdd5a9e...9598eb`; ethereum `0xded0c2...04cab2` | ⚠️ Unaudited |
| SimpleManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x92de42...78e6e8`; ethereum `0xce12de...352dd5` | ⚠️ Unaudited |
| SwapsFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x95fdf3...c24a62`; ethereum `0xee3e9e...1a06e2` | ⚠️ Unaudited |
| SwapsRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x8e7707...7533bc`; ethereum `0xb4b0ea...718671` | ⚠️ Unaudited |
| Token | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x448795...f24225`; ethereum `0xe3c1ff...32b719` | ⚠️ Unaudited |
| TokenHub | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x355404...0ef0d0`; ethereum `0x55df49...1d5422`; ethereum `0x998a1a...d1e4a2` | ⚠️ Unaudited |
| TokenKeeper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84111e...8367db` | ⚠️ Unaudited |
| TokenProfit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x104620...c0c8ae`; ethereum `0x87a567...4ba99b` | ⚠️ Unaudited |
| TypeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfcb553...684e9b` | ⚠️ Unaudited |
| VaultWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xa7bbef...c4c213`; ethereum `0xf285ae...843ba3` | ⚠️ Unaudited |
| VaultWrapperSky | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a9680...3a60fb` | ⚠️ Unaudited |
| VerseAirdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06accc...644e6a` | ⚠️ Unaudited |
| VerseBalances | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b0899...7bee07` | ⚠️ Unaudited |
| WBTCOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x0db00d...86b1bd`; ethereum `0x147bd3...2ca1e9`; ethereum `0x6404c8...bfb7c8`; ethereum `0x96ff7a...cd4e65`; ethereum `0xb88c89...4f6f69` | ⚠️ Unaudited |
| WethCustomOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7dba84...4a0f66` | ⚠️ Unaudited |
| WiseInsurance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7924a6...37e656` | ⚠️ Unaudited |
| WiseLending | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x37e49b...8107e4`; ethereum `0x84524b...bb9674`; ethereum `0x9f0f51...91d85c`; ethereum `0xbe3007...67160f` | ⚠️ Unaudited |
| WiseLendingTVL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72ff81...36ecf6` | ⚠️ Unaudited |
| WiseOracleHub | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x11d5f5...0e303c`; ethereum `0xd2caa7...5dd4b6`; ethereum `0xf8a8ea...af0178` | ⚠️ Unaudited |
| WiserStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0dec0f...739eba`; ethereum `0xee9979...750497` | ⚠️ Unaudited |
| WiseSecurity | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x5f8b6c...58400d`; ethereum `0x829c3a...31ba18`; ethereum `0xbe0270...acdf32` | ⚠️ Unaudited |
| WiseStakingNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x490984...a4fd65`; ethereum `0xc42433...64bf4b`; ethereum `0xf863a6...efbe94` | ⚠️ Unaudited |
| WiseToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x1def8c...a8b92f`; ethereum `0x66a0f6...ff5bd6`; ethereum `0xa2e3ad...16b315`; ethereum `0xec2da8...06a2bf` | ⚠️ Unaudited |
| wstETHManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x63faf7...4a60ac`; ethereum `0x9d12d4...db37ca`; ethereum `0xaa4aef...5ac1be`; ethereum `0xd32e94...dc479a` | ⚠️ Unaudited |
| WstETHOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x6ddc4e...190398`; ethereum `0x93aa80...1d63fc`; ethereum `0x9ab8a4...4cc1c4`; ethereum `0xc42e9f...674e08` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (48)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02c4f0...4c650b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0fb7c3...3c1f6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15729a...e390c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x178eff...287f55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19c97f...9b0138` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a3887...791a70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e940a...ef690e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2437af...c6f77d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2dedcd...ace529` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30621f...2b0408` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3489a8...37929f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34ae0b...b56241` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3bd4a5...89df9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44cd20...ebff17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x463796...a35fde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47a348...f483c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a1533...ec075d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f491d...7c8543` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51d2a2...2e9380` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5214a7...999042` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x563ecd...3b9e68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59bdda...37381e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6071fc...410f26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6139cf...fe6c84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62b551...22f0ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x638c27...9d07ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x696563...bfa9a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69a906...25fc92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b0f51...74dd60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73a111...3a3c0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b4baf...5e1501` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7bf50a...2f026c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b872e...442dfd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c6d04...255e39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x950672...31497f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa03594...3d5b3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa07b92...8ad501` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa40328...f5d367` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5ba62...ddf08a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaba585...2576cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad6492...9c0598` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb74480...643ed8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb67be...c516bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde39dd...20f14e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf196f3...6a8377` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd28f8...d61da1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe441b...d3ac82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfed1a3...e18ffc` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Bitcoin.com_final-audit-report.pdf](https://github.com/0xGuard-com/audit-reports/blob/master/bitcoin.com/Bitcoin.com_final-audit-report.pdf) | unknown | Audit | 2022-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [skynet.certik.com/projects/bitcoin-com](https://skynet.certik.com/projects/bitcoin-com) | CertiK | Audit | 2023-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [verse-security-audit.pdf](https://www.getverse.com/verse-security-audit.pdf) | Quantstamp | Audit | 2022-05 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 1 | high |
| [single-token-lp-audit.pdf](https://verse.bitcoin.com/single-token-lp-audit.pdf) | Chainsulting | Audit | 2023-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [dynamic-rewards-farming-audit.pdf](https://verse.bitcoin.com/dynamic-rewards-farming-audit.pdf) | Softstack | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [14107] Bitcoin.com_final-audit-report.pdf — no match: Scope table lists 4 contracts: SwapsFactory, SwapsPair, SwapsRouter, SwapsERC20. Audit date range 2022-02-11 to 2022-02-14, end date used.
- [14108] skynet.certik.com/projects/bitcoin-com — no match: Only SimpleFarm.sol is explicitly listed as an assessed contract. IERC20.sol and SafeERC20.sol are listed under 'Audited Files' but are likely dependencies, not primary scope contracts.
- [14109] verse-security-audit.pdf — matched: Scope explicitly mentions VerseToken and VerseClaimer contracts. Audit date from cover page.
- [14110] single-token-lp-audit.pdf — no match: All contracts listed in 'Source Unites in Scope' table and 'Tested Contract Files' section. Audit date from cover page and version history.
- [14111] dynamic-rewards-farming-audit.pdf — no match: Two contracts in scope: TokenWrapper and DynamicRewardFarm. Audit date from cover page and version history.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Bitcoin.com_final-audit-report.pdf | SwapsFactory | unmatched — not counted | — | listed in scope table | no |
| Bitcoin.com_final-audit-report.pdf | SwapsPair | unmatched — not counted | — | listed in scope table | no |
| Bitcoin.com_final-audit-report.pdf | SwapsRouter | unmatched — not counted | — | listed in scope table | no |
| Bitcoin.com_final-audit-report.pdf | SwapsERC20 | unmatched — not counted | — | listed in scope table | no |
| skynet.certik.com/projects/bitcoin-com | SimpleFarm | unmatched — not counted | — | Listed under 'Assessed Contracts' as SimpleFarm.sol | no |
| verse-security-audit.pdf | VerseToken | own contract | VerseToken (selected) `0x249ca8...350a18` — deployed 2022-12-07 03:09:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| verse-security-audit.pdf | VerseClaimer | unmatched — not counted | — | listed in scope and findings | no |
| single-token-lp-audit.pdf | LiquidityMaker | unmatched — not counted | — | listed in scope and findings | no |
| single-token-lp-audit.pdf | LiquidityHelper | unmatched — not counted | — | listed in scope | no |
| single-token-lp-audit.pdf | ISwapsERC20 | unmatched — not counted | — | listed in scope | no |
| single-token-lp-audit.pdf | ISwapsFactory | unmatched — not counted | — | listed in scope | no |
| single-token-lp-audit.pdf | IWETH | unmatched — not counted | — | listed in scope | no |
| single-token-lp-audit.pdf | ISwapsPair | unmatched — not counted | — | listed in scope | no |
| single-token-lp-audit.pdf | IERC20 | unmatched — not counted | — | listed in scope | no |
| single-token-lp-audit.pdf | ISwapsRouter | unmatched — not counted | — | listed in scope | no |
| dynamic-rewards-farming-audit.pdf | TokenWrapper | unmatched — not counted | — | Listed in scope table and tested contract files | no |
| dynamic-rewards-farming-audit.pdf | DynamicRewardFarm | unmatched — not counted | — | Listed in scope table and tested contract files | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 56 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 48 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 16 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=5
- Match method counts: unique_name=1

Zero-match audit list:

- [14107] Bitcoin.com_final-audit-report.pdf
- [14108] skynet.certik.com/projects/bitcoin-com
- [14110] single-token-lp-audit.pdf
- [14111] dynamic-rewards-farming-audit.pdf

Fork inheritance lineage and inherited audits are included when available.
