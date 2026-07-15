# Agentic Audit Brief: BIMA CDP

## Export Authority

- Production state: **published scope**
- Raw selected rows: 5 across 3 audit(s)
- Eligible audit results: 3 (3 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: BIMA CDP (`bima-cdp`)
- Website: [https://bima.money/](https://bima.money/)
- Lifecycle: active (Tier 0, 66.7% below peak)
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc, ethereum, sonic
- Contract surface: 72 unique implementations (126 raw deployments)
- Coverage basis: 4/42 confirmed own live verified implementations (9.5%); conservative 9.5% with 0 needs-review implementation(s)
- DeFi Llama TVL: $6,207,050.85
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for BIMA CDP. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 61 contract row(s) across bsc, ethereum, sonic. Structural roles: 28 unclassified, 17 supporting, 14 core, 2 infra. 3 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 61
- Structural roles: unclassified (28), supporting (17), core (14), infra (2)
- Contract kinds: contract (61)
- Detected standards: erc20 (6), pausable (6), ownable (3), erc1967proxy (2), erc20permit (2)
- Frameworks: openzeppelin (30), layerzero (24), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 3

## Fork Analysis

1 of 71 contracts are derived from known codebases. 70 contracts have no detected origin.

### Forked Contracts

**TroveManager** (`0x5066dc...d36b97`, chain 1)
Origin: mellow-protocol (`0x8ed4f2...657938`)
Containment: 100.0% - 79 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x294672...ec4c05`, chain 1)
- UnnamedContract (`0xf40300...bee88c`, chain 1)
- UnnamedContract (`0x264990...ca5ebf`, chain 56)
- UnnamedContract (`0x623f27...79d9df`, chain 56)
- UnnamedContract (`0x6a6298...3dd490`, chain 56)
- UnnamedContract (`0x87fed3...cdfaec`, chain 56)
- UnnamedContract (`0x49ce2e...faef15`, chain 146)
- UnnamedContract (`0x6a6298...3dd490`, chain 146)
- UnnamedContract (`0x6bede1...fdb68c`, chain 146)
- UnnamedContract (`0x87fed3...cdfaec`, chain 146)
- UnnamedContract (`0x8bcd59...ae53ef`, chain 146)
- Bfbtc (`0x623f27...79d9df`, chain 1)
- BimaBurner (`0x93ee18...f80f09`, chain 56)
- BimaCore (`0x227e93...2380ab`, chain 1)
- BimaCore (`0x227e93...2380ab`, chain 56)
- BimaCore (`0x227e93...2380ab`, chain 146)
- BimaToken (`0x49ce2e...faef15`, chain 1)
- BimaToken (`0x49ce2e...faef15`, chain 56)
- BimaVault (`0xc4bbfb...126799`, chain 1)
- BimaVault (`0xc4bbfb...126799`, chain 56)
- BimaVault (`0xc4bbfb...126799`, chain 146)
- BimaWrappedCollateral (`0x59063f...2018e1`, chain 1)
- BimaWrappedCollateral (`0x856db2...232ce0`, chain 1)
- BimaWrappedCollateral (`0xdc0cca...655197`, chain 1)
- BimaWrappedCollateralFactory (`0x76de9b...129dbf`, chain 1)
- BimaWrappedCollateralFactory (`0x76de9b...129dbf`, chain 56)
- BimaWrappedCollateralFactory (`0x76de9b...129dbf`, chain 146)
- BorrowerOperations (`0x87fed3...cdfaec`, chain 1)
- DebtToken (`0x6bede1...fdb68c`, chain 1)
- EnzoBTC (`0x6a9a65...fbce4a`, chain 1)
- Factory (`0xc57901...759376`, chain 1)
- Factory (`0xc57901...759376`, chain 56)
- Factory (`0xc57901...759376`, chain 146)
- GasPool (`0xcbf153...ae8b89`, chain 1)
- GasPool (`0xcbf153...ae8b89`, chain 56)
- GasPool (`0xcbf153...ae8b89`, chain 146)
- IncentiveVoting (`0x558741...ddb7a8`, chain 1)
- IncentiveVoting (`0x558741...ddb7a8`, chain 56)
- IncentiveVoting (`0x558741...ddb7a8`, chain 146)
- LiquidationManager (`0x2d3b9e...6b73ba`, chain 1)
- LiquidationManager (`0x2d3b9e...6b73ba`, chain 56)
- LiquidationManager (`0x2d3b9e...6b73ba`, chain 146)
- MultiCollateralHintHelpers (`0x6a6298...3dd490`, chain 1)
- MultiTroveGetter (`0x42186e...0dcf6b`, chain 1)
- MultiTroveGetter (`0x42186e...0dcf6b`, chain 56)
- MultiTroveGetter (`0x42186e...0dcf6b`, chain 146)
- PriceFeed (`0x4b248f...9cbff2`, chain 1)
- PriceFeed (`0x4b248f...9cbff2`, chain 56)
- PriceFeed (`0x4b248f...9cbff2`, chain 146)
- SortedTroves (`0x870a10...c56b4a`, chain 1)
- SortedTroves (`0x870a10...c56b4a`, chain 56)
- SortedTroves (`0x870a10...c56b4a`, chain 146)
- StabilityPool (`0x5f2283...82d627`, chain 1)
- StabilityPool (`0x5f2283...82d627`, chain 56)
- StabilityPool (`0x5f2283...82d627`, chain 146)
- StakedUsbd (`0xda44aa...06f92a`, chain 1)
- TokenLocker (`0x09a028...f75bf7`, chain 1)
- TokenLocker (`0x09a028...f75bf7`, chain 56)
- TokenLocker (`0x09a028...f75bf7`, chain 146)
- TransparentUpgradeableProxy (`0xecac9c...5c11c1`, chain 1)
- TransparentUpgradeableProxy (`0xecac9c...5c11c1`, chain 146)
- TroveManager (`0x8ed4f2...657938`, chain 1)
- TroveManager (`0xa20c3d...800ff2`, chain 1)
- TroveManager (`0x8ed4f2...657938`, chain 56)
- TroveManager (`0xa20c3d...800ff2`, chain 56)
- TroveManager (`0x8ed4f2...657938`, chain 146)
- TroveManager (`0xa20c3d...800ff2`, chain 146)
- TroveManagerGetters (`0x6e26de...d7b1b1`, chain 1)
- TroveManagerGetters (`0x6e26de...d7b1b1`, chain 56)
- TroveManagerGetters (`0x6e26de...d7b1b1`, chain 146)

## Contract Surface Quality

- Logic-topography rows: 61; live-surface rows included: 61 (61 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 72/85 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 4/42 (9.5%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 49 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 23 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 6
- Confirmed-live implementations: 49 of 72 unique; 23 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 4/56
- Verified + Unaudited implementations: 52
- Verified by bytecode match: 2
- Unverified implementations: 16
- Unique implementations: 72
- Raw deployments: 126
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-06 (aging)
- Audit staleness (calendar age): 0 fresh, 3 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 4 match-unverified
- Tier 1 coverage: 9.5% (Cyfrin, Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Cyfrin | Tier 1 | 2 | 3.6% | 2024-09 |
| Spearbit | Tier 1 | 2 | 3.6% | 2025-06 |
| Unknown | Tier 2 | 1 | 1.8% | 2024-09 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BimaToken | token | project_anchor | own_supporting | 0 | bsc | unit-230352 | `0x49ce2e...faef15` | ✅ Audited |
| DebtToken | token | project_anchor | own_supporting | 0 | bsc | unit-230358 | `0x6bede1...fdb68c` | ✅ Audited |

### ⚠️ Verified + Unaudited (52)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Bfbtc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ca67a...6069f0` | ⚠️ Unaudited |
| Bfbtc | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230300 | `0x623f27...79d9df` | ⚠️ Unaudited |
| Bfbtc | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xcdfb58...c7fb15` | ⚠️ Unaudited |
| BimaBurner | unknown | project_anchor | own_supporting | 0 | bsc | unit-230364 | 3 deployments: ethereum `0xf0de02...8c92c1`; bsc `0x93ee18...f80f09`; sonic `0x93ee18...f80f09` | ⚠️ Unaudited |
| BimaCore | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230288 | `0x227e93...2380ab` | ⚠️ Unaudited |
| BimaCore | unknown | project_anchor | own_supporting | 0 | bsc | unit-230348 | `0x227e93...2380ab` | ⚠️ Unaudited |
| BimaCore | unknown | project_anchor | own_supporting | 0 | sonic | unit-230328 | `0x227e93...2380ab` | ⚠️ Unaudited |
| BimaPSM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x42ad68...523d67`; ethereum `0x705fd2...4792d4`; ethereum `0x97bb31...6009e9`; ethereum `0xea811c...a888fe` | ⚠️ Unaudited |
| BimaToken | token | project_anchor | own_supporting | 0 | ethereum | unit-230294 | `0x49ce2e...faef15` | ⚠️ Unaudited |
| BimaVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-230318 | `0xc4bbfb...126799` | ⚠️ Unaudited |
| BimaVault | core_logic | project_anchor | own_supporting | 0 | bsc | unit-230366 | `0xc4bbfb...126799` | ⚠️ Unaudited |
| BimaVault | core_logic | project_anchor | own_supporting | 0 | sonic | unit-230344 | `0xc4bbfb...126799` | ⚠️ Unaudited |
| BimaWrappedCollateral | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230298 | `0x59063f...2018e1` | ⚠️ Unaudited |
| BimaWrappedCollateral | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230308 | `0x856db2...232ce0` | ⚠️ Unaudited |
| BimaWrappedCollateral | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230324 | `0xdc0cca...655197` | ⚠️ Unaudited |
| BimaWrappedCollateralFactory | registry | project_anchor | own_supporting | 0 | ethereum | unit-230306 | 3 deployments: ethereum `0x76de9b...129dbf`; bsc `0x76de9b...129dbf`; sonic `0x76de9b...129dbf` | ⚠️ Unaudited |
| BitFiStablecoinManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb69865...d21f06` | ⚠️ Unaudited |
| BitFiStablecoinZap | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x140b55...4b66cb` | ⚠️ Unaudited |
| DebtToken | token | project_anchor | own_supporting | 0 | ethereum | unit-230304 | `0x6bede1...fdb68c` | ⚠️ Unaudited |
| EnzoBTC | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230303 | `0x6a9a65...fbce4a` | ⚠️ Unaudited |
| EnzoBTCOFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99de52...7d63d5` | ⚠️ Unaudited |
| EnzoNetwork | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7efb35...c5c567`; ethereum `0xdc2156...950068` | ⚠️ Unaudited |
| EnzoNetwork | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x8dd5ac...8d18c3`; ethereum `0xe8ca7c...43fd71` | ⚠️ Unaudited |
| Factory | registry | project_anchor | own_supporting | 0 | ethereum | unit-230319 | 3 deployments: ethereum `0xc57901...759376`; bsc `0xc57901...759376`; sonic `0xc57901...759376` | ⚠️ Unaudited |
| GasPool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-230321 | 3 deployments: ethereum `0xcbf153...ae8b89`; bsc `0xcbf153...ae8b89`; sonic `0xcbf153...ae8b89` | ⚠️ Unaudited |
| IncentiveVoting | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230297 | `0x558741...ddb7a8` | ⚠️ Unaudited |
| IncentiveVoting | unknown | project_anchor | own_supporting | 0 | bsc | unit-230354 | `0x558741...ddb7a8` | ⚠️ Unaudited |
| IncentiveVoting | unknown | project_anchor | own_supporting | 0 | sonic | unit-230333 | `0x558741...ddb7a8` | ⚠️ Unaudited |
| LBTC | unknown | project_anchor | own_supporting | 1 | sonic | unit-230370 | `0xecac9c...5c11c1` | ⚠️ Unaudited |
| LiquidationManager | governance | project_anchor | own_supporting | 0 | ethereum | unit-230291 | 3 deployments: ethereum `0x2d3b9e...6b73ba`; bsc `0x2d3b9e...6b73ba`; sonic `0x2d3b9e...6b73ba` | ⚠️ Unaudited |
| MintSecurity | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x316c1b...2ab302`; ethereum `0x47c4ac...620a1c` | ⚠️ Unaudited |
| MintStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x81d7da...6b2c59`; ethereum `0xb3cf78...3d02ab` | ⚠️ Unaudited |
| MultiTroveGetter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230293 | 3 deployments: ethereum `0x42186e...0dcf6b`; bsc `0x42186e...0dcf6b`; sonic `0x42186e...0dcf6b` | ⚠️ Unaudited |
| PriceFeed | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-230295 | 3 deployments: ethereum `0x4b248f...9cbff2`; bsc `0x4b248f...9cbff2`; sonic `0x4b248f...9cbff2` | ⚠️ Unaudited |
| ProxyMock | unknown | project_anchor | own_supporting | 1 | ethereum | unit-230369 | `0xecac9c...5c11c1` | ⚠️ Unaudited |
| SortedTroves | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230309 | 3 deployments: ethereum `0x870a10...c56b4a`; bsc `0x870a10...c56b4a`; sonic `0x870a10...c56b4a` | ⚠️ Unaudited |
| StabilityPool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-230299 | `0x5f2283...82d627` | ⚠️ Unaudited |
| StabilityPool | core_logic | project_anchor | own_supporting | 0 | bsc | unit-230355 | `0x5f2283...82d627` | ⚠️ Unaudited |
| StabilityPool | core_logic | project_anchor | own_supporting | 0 | sonic | unit-230334 | `0x5f2283...82d627` | ⚠️ Unaudited |
| StakedBitFiStablecoin | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x688745...a871c5`; ethereum `0xd32224...951734` | ⚠️ Unaudited |
| StakedUsbd | token | project_anchor | own_core | 0 | ethereum | n/a | 8 deployments: ethereum `0x15ba04...1d1eef`; ethereum `0x190909...4b7504`; ethereum `0x424147...fd71ae`; ethereum `0x7d0ae6...421522`; ethereum `0xb4b22a...a6a3d0`; ethereum `0xbf095f...79d6df`; ethereum `0xcbc829...fe023d`; ethereum `0xda44aa...06f92a` | ⚠️ Unaudited |
| StakedUsbdOftAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x450bd4...e0b42f`; ethereum `0x64a5ec...035b2a`; ethereum `0x6e75ce...008e49`; ethereum `0x9e5017...9264a3`; ethereum `0xb76847...5a7f9d`; ethereum `0xc302c5...36c13b`; ethereum `0xc49914...0c8170`; ethereum `0xf9d835...52db57` | ⚠️ Unaudited |
| StakingModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x048408...07705f`; ethereum `0x59961e...d9959c`; ethereum `0x71e7c8...fc4621`; ethereum `0xbf35d5...8ef409`; ethereum `0xc0e4ea...3112fb`; ethereum `0xda1cc5...eb0755`; ethereum `0xf4f2c2...db3bcf`; ethereum `0xfbbe9c...1cb468` | ⚠️ Unaudited |
| TokenAuthority | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2989c3...0a4663` | ⚠️ Unaudited |
| TokenLocker | token | project_anchor | own_supporting | 0 | ethereum | unit-230286 | `0x09a028...f75bf7` | ⚠️ Unaudited |
| TokenLocker | token | project_anchor | own_supporting | 0 | bsc | unit-230347 | `0x09a028...f75bf7` | ⚠️ Unaudited |
| TokenLocker | token | project_anchor | own_supporting | 0 | sonic | unit-230327 | `0x09a028...f75bf7` | ⚠️ Unaudited |
| TroveManager | governance | project_anchor | own_supporting | 0 | ethereum | unit-230296 | 4 deployments: ethereum `0x5066dc...d36b97`; ethereum `0xa20c3d...800ff2`; bsc `0xa20c3d...800ff2`; sonic `0xa20c3d...800ff2` | ⚠️ Unaudited |
| TroveManager | governance | project_anchor | own_supporting | 0 | ethereum | unit-230313 | `0x8ed4f2...657938` | ⚠️ Unaudited |
| TroveManager | governance | project_anchor | own_supporting | 0 | bsc | unit-230363 | `0x8ed4f2...657938` | ⚠️ Unaudited |
| TroveManager | governance | project_anchor | own_supporting | 0 | sonic | unit-230342 | `0x8ed4f2...657938` | ⚠️ Unaudited |
| TroveManagerGetters | governance | project_anchor | own_supporting | 0 | ethereum | unit-230305 | 3 deployments: ethereum `0x6e26de...d7b1b1`; bsc `0x6e26de...d7b1b1`; sonic `0x6e26de...d7b1b1` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (2)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BorrowerOperations | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-230310 | 3 deployments: ethereum `0x87fed3...cdfaec`; bsc `0x87fed3...cdfaec`; sonic `0x87fed3...cdfaec` | ✅ Audited (bytecode match) |
| MultiCollateralHintHelpers | periphery | project_anchor | own_supporting | 0 | ethereum | unit-230302 | 3 deployments: ethereum `0x6a6298...3dd490`; bsc `0x6a6298...3dd490`; sonic `0x6a6298...3dd490` | ✅ Audited (bytecode match) |

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (16)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x128eb2...d55f1b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230290 | `0x294672...ec4c05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3bbd33...458a92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x536394...c78395` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f339e...a7ff47` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230325 | `0xf40300...bee88c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-230349 | `0x264990...ca5ebf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-230356 | `0x623f27...79d9df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x632d27...d419d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8ae19e...ebc8a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9bc574...98a3ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc8fd30...b128eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd59be1...c349fa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-230331 | `0x49ce2e...faef15` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-230336 | `0x6bede1...fdb68c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-230341 | `0x8bcd59...ae53ef` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [2024-09-27-cyfrin-bima-v2.0.pdf](https://github.com/Bima-Labs/bima-core-audits/blob/main/aduits/2024-09-27-cyfrin-bima-v2.0.pdf) | Cyfrin | Audit | 2024-09 | aging | Direct | contract_name | matched | 2 | 0 | 0 | 33 | high |
| [20241023-Bima-Final-Audit-Report.pdf](https://github.com/Bima-Labs/bima-core-audits/blob/main/aduits/20241023-Bima-Final-Audit-Report.pdf) | Unknown | Audit | 2024-09 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 21 | high |
| [cantina_competition_bima_december2024.pdf](https://github.com/Bima-Labs/bima-core-audits/blob/main/aduits/cantina_competition_bima_december2024.pdf) | Spearbit | Audit | 2025-06 | aging | Direct | contract_name | matched | 2 | 0 | 0 | 21 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2480] 2024-09-27-cyfrin-bima-v2.0.pdf — matched: All contracts listed in the Audit Scope section (page 3-4) are included. Interfaces are also in scope but not extracted as separate contracts.
- [2481] 20241023-Bima-Final-Audit-Report.pdf — matched: All contracts listed in the 'Files in Scope' table were extracted. The audit date is the end date of the timeline (Sat Sep 28 2024).
- [2482] cantina_competition_bima_december2024.pdf — matched: Extracted contract names from findings context and file paths. Audit date from document title: 'Bima Money Competition June29,2025'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2024-09-27-cyfrin-bima-v2.0.pdf | MultiCollateralHintHelpers | own contract | MultiCollateralHintHelpers (selected) `0x6a6298...3dd490` — deployed 2025-03-21 17:05:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-09-27-cyfrin-bima-v2.0.pdf | MultiTroveGetter | ambiguous — not counted | MultiTroveGetter (alternative) `0x42186e...0dcf6b` — deployed 2025-05-02 14:35:08+03 — liveness: live (current_address_book_code)<br>MultiTroveGetter (alternative) `0x42186e...0dcf6b` — deployed 2025-03-21 17:05:23+03 — liveness: live (current_address_book_code)<br>MultiTroveGetter (alternative) `0x42186e...0dcf6b` — deployed 2025-05-22 12:25:17+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2024-09-27-cyfrin-bima-v2.0.pdf | TroveManagerGetters | ambiguous — not counted | TroveManagerGetters (alternative) `0x6e26de...d7b1b1` — deployed 2025-03-21 17:05:35+03 — liveness: live (current_address_book_code)<br>TroveManagerGetters (alternative) `0x6e26de...d7b1b1` — deployed 2025-05-22 12:25:20+03 — liveness: live (current_address_book_code)<br>TroveManagerGetters (alternative) `0x6e26de...d7b1b1` — deployed 2025-05-02 14:35:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2024-09-27-cyfrin-bima-v2.0.pdf | BabelCore | unmatched — not counted | — | listed in scope | no |
| 2024-09-27-cyfrin-bima-v2.0.pdf | BorrowerOperations | own contract | BorrowerOperations (selected) `0x87fed3...cdfaec` — deployed 2025-03-21 17:03:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-09-27-cyfrin-bima-v2.0.pdf | DebtToken | ambiguous — not counted | DebtToken (alternative) `0x6bede1...fdb68c` — deployed 2025-05-22 12:24:40+03 — liveness: live (code_present_context)<br>DebtToken (alternative) `0x6bede1...fdb68c` — deployed 2025-03-21 17:03:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2024-09-27-cyfrin-bima-v2.0.pdf | Factory | ambiguous — not counted | Factory (alternative) `0xc57901...759376` — deployed 2025-03-21 17:03:11+03 — liveness: live (code_present_context)<br>Factory (alternative) `0xc57901...759376` — deployed 2025-05-22 12:24:32+03 — liveness: live (code_present_context)<br>Factory (alternative) `0xc57901...759376` — deployed 2025-05-02 14:34:37+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2024-09-27-cyfrin-bima-v2.0.pdf | GasPool | ambiguous — not counted | GasPool (alternative) `0xcbf153...ae8b89` — deployed 2025-05-02 14:34:30+03 — liveness: live (current_address_book_code)<br>GasPool (alternative) `0xcbf153...ae8b89` — deployed 2025-05-22 12:24:22+03 — liveness: live (code_present_context)<br>GasPool (alternative) `0xcbf153...ae8b89` — deployed 2025-03-21 17:02:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2024-09-27-cyfrin-bima-v2.0.pdf | LiquidationManager | ambiguous — not counted | LiquidationManager (alternative) `0x2d3b9e...6b73ba` — deployed 2025-05-22 12:24:35+03 — liveness: live (code_present_context)<br>LiquidationManager (alternative) `0x2d3b9e...6b73ba` — deployed 2025-05-02 14:34:40+03 — liveness: live (code_present_context)<br>LiquidationManager (alternative) `0x2d3b9e...6b73ba` — deployed 2025-03-21 17:03:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2024-09-27-cyfrin-bima-v2.0.pdf | PriceFeed | ambiguous — not counted | PriceFeed (alternative) `0x4b248f...9cbff2` — deployed 2025-03-21 17:02:35+03 — liveness: live (code_present_context)<br>PriceFeed (alternative) `0x4b248f...9cbff2` — deployed 2025-05-22 12:24:17+03 — liveness: live (code_present_context)<br>PriceFeed (alternative) `0x4b248f...9cbff2` — deployed 2025-05-02 14:34:27+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2024-09-27-cyfrin-bima-v2.0.pdf | SortedTroves | ambiguous — not counted | SortedTroves (alternative) `0x870a10...c56b4a` — deployed 2025-03-21 17:02:59+03 — liveness: live (code_present_context)<br>SortedTroves (alternative) `0x870a10...c56b4a` — deployed 2025-05-22 12:24:28+03 — liveness: live (code_present_context)<br>SortedTroves (alternative) `0x870a10...c56b4a` — deployed 2025-05-02 14:34:33+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2024-09-27-cyfrin-bima-v2.0.pdf | StabilityPool | ambiguous — not counted | StabilityPool (alternative) `0x5f2283...82d627` — deployed 2025-03-21 17:03:59+03 — liveness: live (code_present_context)<br>StabilityPool (alternative) `0x5f2283...82d627` — deployed 2025-05-02 14:34:48+03 — liveness: live (code_present_context)<br>StabilityPool (alternative) `0x5f2283...82d627` — deployed 2025-05-22 12:24:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2024-09-27-cyfrin-bima-v2.0.pdf | StorkOracleWrapper | unmatched — not counted | — | listed in scope | no |
| 2024-09-27-cyfrin-bima-v2.0.pdf | TroveManager | ambiguous — not counted | TroveManager (alternative) `0x5066dc...d36b97` — deployed 2025-09-03 16:54:59+03 — liveness: live (current_address_book_code)<br>TroveManager (alternative) `0xa20c3d...800ff2` — deployed 2025-05-22 14:58:01+03 — liveness: live (current_address_book_code)<br>TroveManager (alternative) `0x8ed4f2...657938` — deployed 2025-05-22 12:24:52+03 — liveness: live (code_present_context)<br>TroveManager (alternative) `0xa20c3d...800ff2` — deployed 2025-03-23 22:56:35+03 — liveness: live (current_address_book_code)<br>TroveManager (alternative) `0xa20c3d...800ff2` — deployed 2025-05-02 14:54:07+03 — liveness: live (current_address_book_code)<br>TroveManager (alternative) `0x8ed4f2...657938` — deployed 2025-03-21 17:04:11+03 — liveness: live (code_present_context)<br>TroveManager (alternative) `0x8ed4f2...657938` — deployed 2025-05-02 14:34:51+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2024-09-27-cyfrin-bima-v2.0.pdf | AdminVoting | unmatched — not counted | — | listed in scope | no |
| 2024-09-27-cyfrin-bima-v2.0.pdf | AirdropDistributor | unmatched — not counted | — | listed in scope | no |
| 2024-09-27-cyfrin-bima-v2.0.pdf | AllocationVesting | unmatched — not counted | — | listed in scope | no |
| 2024-09-27-cyfrin-bima-v2.0.pdf | BoostCalculator | unmatched — not counted | — | listed in scope | no |
| 2024-09-27-cyfrin-bima-v2.0.pdf | EmissionSchedule | unmatched — not counted | — | listed in scope | no |
| 2024-09-27-cyfrin-bima-v2.0.pdf | FeeReceiver | unmatched — not counted | — | listed in scope | no |
| 2024-09-27-cyfrin-bima-v2.0.pdf | IncentiveVoting | ambiguous — not counted | IncentiveVoting (alternative) `0x558741...ddb7a8` — deployed 2025-05-02 14:34:57+03 — liveness: live (code_present_context)<br>IncentiveVoting (alternative) `0x558741...ddb7a8` — deployed 2025-03-21 17:04:35+03 — liveness: live (code_present_context)<br>IncentiveVoting (alternative) `0x558741...ddb7a8` — deployed 2025-05-22 12:25:01+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2024-09-27-cyfrin-bima-v2.0.pdf | InterimAdmin | unmatched — not counted | — | listed in scope | no |
| 2024-09-27-cyfrin-bima-v2.0.pdf | PrismaToken | unmatched — not counted | — | listed in scope | no |
| 2024-09-27-cyfrin-bima-v2.0.pdf | TokenLocker | ambiguous — not counted | TokenLocker (alternative) `0x09a028...f75bf7` — deployed 2025-05-22 12:24:56+03 — liveness: live (code_present_context)<br>TokenLocker (alternative) `0x09a028...f75bf7` — deployed 2025-05-02 14:34:54+03 — liveness: live (code_present_context)<br>TokenLocker (alternative) `0x09a028...f75bf7` — deployed 2025-03-21 17:04:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2024-09-27-cyfrin-bima-v2.0.pdf | Vault | unmatched — not counted | — | listed in scope | no |
| 2024-09-27-cyfrin-bima-v2.0.pdf | BabelBase | unmatched — not counted | — | listed in scope | no |
| 2024-09-27-cyfrin-bima-v2.0.pdf | BabelMath | unmatched — not counted | — | listed in scope | no |
| 2024-09-27-cyfrin-bima-v2.0.pdf | BabelOwnable | unmatched — not counted | — | listed in scope | no |
| 2024-09-27-cyfrin-bima-v2.0.pdf | DelegatedOps | unmatched — not counted | — | listed in scope | no |
| 2024-09-27-cyfrin-bima-v2.0.pdf | SystemStart | unmatched — not counted | — | listed in scope | no |
| 2024-09-27-cyfrin-bima-v2.0.pdf | ConvexDepositFactory | unmatched — not counted | — | listed in scope | no |
| 2024-09-27-cyfrin-bima-v2.0.pdf | ConvexDepositToken | unmatched — not counted | — | listed in scope | no |
| 2024-09-27-cyfrin-bima-v2.0.pdf | CurveDepositFactory | unmatched — not counted | — | listed in scope | no |
| 2024-09-27-cyfrin-bima-v2.0.pdf | CurveDepositToken | unmatched — not counted | — | listed in scope | no |
| 2024-09-27-cyfrin-bima-v2.0.pdf | CurveProxy | unmatched — not counted | — | listed in scope | no |
| 20241023-Bima-Final-Audit-Report.pdf | StabilityPool | ambiguous — not counted | StabilityPool (alternative) `0x5f2283...82d627` — deployed 2025-03-21 17:03:59+03 — liveness: live (code_present_context)<br>StabilityPool (alternative) `0x5f2283...82d627` — deployed 2025-05-02 14:34:48+03 — liveness: live (code_present_context)<br>StabilityPool (alternative) `0x5f2283...82d627` — deployed 2025-05-22 12:24:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 20241023-Bima-Final-Audit-Report.pdf | BabelCore | unmatched — not counted | — | listed in scope table | no |
| 20241023-Bima-Final-Audit-Report.pdf | BorrowerOperations | own contract | BorrowerOperations (selected) `0x87fed3...cdfaec` — deployed 2025-03-21 17:03:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 20241023-Bima-Final-Audit-Report.pdf | PriceFeed | ambiguous — not counted | PriceFeed (alternative) `0x4b248f...9cbff2` — deployed 2025-03-21 17:02:35+03 — liveness: live (code_present_context)<br>PriceFeed (alternative) `0x4b248f...9cbff2` — deployed 2025-05-22 12:24:17+03 — liveness: live (code_present_context)<br>PriceFeed (alternative) `0x4b248f...9cbff2` — deployed 2025-05-02 14:34:27+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 20241023-Bima-Final-Audit-Report.pdf | DebtToken | ambiguous — not counted | DebtToken (alternative) `0x6bede1...fdb68c` — deployed 2025-05-22 12:24:40+03 — liveness: live (code_present_context)<br>DebtToken (alternative) `0x6bede1...fdb68c` — deployed 2025-03-21 17:03:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 20241023-Bima-Final-Audit-Report.pdf | GasPool | ambiguous — not counted | GasPool (alternative) `0xcbf153...ae8b89` — deployed 2025-05-02 14:34:30+03 — liveness: live (current_address_book_code)<br>GasPool (alternative) `0xcbf153...ae8b89` — deployed 2025-05-22 12:24:22+03 — liveness: live (code_present_context)<br>GasPool (alternative) `0xcbf153...ae8b89` — deployed 2025-03-21 17:02:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 20241023-Bima-Final-Audit-Report.pdf | SortedTroves | ambiguous — not counted | SortedTroves (alternative) `0x870a10...c56b4a` — deployed 2025-03-21 17:02:59+03 — liveness: live (code_present_context)<br>SortedTroves (alternative) `0x870a10...c56b4a` — deployed 2025-05-22 12:24:28+03 — liveness: live (code_present_context)<br>SortedTroves (alternative) `0x870a10...c56b4a` — deployed 2025-05-02 14:34:33+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 20241023-Bima-Final-Audit-Report.pdf | Factory | ambiguous — not counted | Factory (alternative) `0xc57901...759376` — deployed 2025-03-21 17:03:11+03 — liveness: live (code_present_context)<br>Factory (alternative) `0xc57901...759376` — deployed 2025-05-22 12:24:32+03 — liveness: live (code_present_context)<br>Factory (alternative) `0xc57901...759376` — deployed 2025-05-02 14:34:37+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 20241023-Bima-Final-Audit-Report.pdf | StorkOracleWrapper | unmatched — not counted | — | listed in scope table | no |
| 20241023-Bima-Final-Audit-Report.pdf | TroveManager | ambiguous — not counted | TroveManager (alternative) `0x5066dc...d36b97` — deployed 2025-09-03 16:54:59+03 — liveness: live (current_address_book_code)<br>TroveManager (alternative) `0xa20c3d...800ff2` — deployed 2025-05-22 14:58:01+03 — liveness: live (current_address_book_code)<br>TroveManager (alternative) `0x8ed4f2...657938` — deployed 2025-05-22 12:24:52+03 — liveness: live (code_present_context)<br>TroveManager (alternative) `0xa20c3d...800ff2` — deployed 2025-03-23 22:56:35+03 — liveness: live (current_address_book_code)<br>TroveManager (alternative) `0xa20c3d...800ff2` — deployed 2025-05-02 14:54:07+03 — liveness: live (current_address_book_code)<br>TroveManager (alternative) `0x8ed4f2...657938` — deployed 2025-03-21 17:04:11+03 — liveness: live (code_present_context)<br>TroveManager (alternative) `0x8ed4f2...657938` — deployed 2025-05-02 14:34:51+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 20241023-Bima-Final-Audit-Report.pdf | LiquidationManager | ambiguous — not counted | LiquidationManager (alternative) `0x2d3b9e...6b73ba` — deployed 2025-05-22 12:24:35+03 — liveness: live (code_present_context)<br>LiquidationManager (alternative) `0x2d3b9e...6b73ba` — deployed 2025-05-02 14:34:40+03 — liveness: live (code_present_context)<br>LiquidationManager (alternative) `0x2d3b9e...6b73ba` — deployed 2025-03-21 17:03:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 20241023-Bima-Final-Audit-Report.pdf | AdminVoting | unmatched — not counted | — | listed in scope table | no |
| 20241023-Bima-Final-Audit-Report.pdf | AirdropDistributor | unmatched — not counted | — | listed in scope table | no |
| 20241023-Bima-Final-Audit-Report.pdf | AllocationVesting | unmatched — not counted | — | listed in scope table | no |
| 20241023-Bima-Final-Audit-Report.pdf | IncentiveVoting | ambiguous — not counted | IncentiveVoting (alternative) `0x558741...ddb7a8` — deployed 2025-05-02 14:34:57+03 — liveness: live (code_present_context)<br>IncentiveVoting (alternative) `0x558741...ddb7a8` — deployed 2025-03-21 17:04:35+03 — liveness: live (code_present_context)<br>IncentiveVoting (alternative) `0x558741...ddb7a8` — deployed 2025-05-22 12:25:01+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 20241023-Bima-Final-Audit-Report.pdf | BoostCalculator | unmatched — not counted | — | listed in scope table | no |
| 20241023-Bima-Final-Audit-Report.pdf | InterimAdmin | unmatched — not counted | — | listed in scope table | no |
| 20241023-Bima-Final-Audit-Report.pdf | BabelToken | unmatched — not counted | — | listed in scope table | no |
| 20241023-Bima-Final-Audit-Report.pdf | Vault | unmatched — not counted | — | listed in scope table | no |
| 20241023-Bima-Final-Audit-Report.pdf | FeeReceiver | unmatched — not counted | — | listed in scope table | no |
| 20241023-Bima-Final-Audit-Report.pdf | EmissionSchedule | unmatched — not counted | — | listed in scope table | no |
| 20241023-Bima-Final-Audit-Report.pdf | TokenLocker | ambiguous — not counted | TokenLocker (alternative) `0x09a028...f75bf7` — deployed 2025-05-22 12:24:56+03 — liveness: live (code_present_context)<br>TokenLocker (alternative) `0x09a028...f75bf7` — deployed 2025-05-02 14:34:54+03 — liveness: live (code_present_context)<br>TokenLocker (alternative) `0x09a028...f75bf7` — deployed 2025-03-21 17:04:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| cantina_competition_bima_december2024.pdf | PriceFeed | ambiguous — not counted | PriceFeed (alternative) `0x4b248f...9cbff2` — deployed 2025-03-21 17:02:35+03 — liveness: live (code_present_context)<br>PriceFeed (alternative) `0x4b248f...9cbff2` — deployed 2025-05-22 12:24:17+03 — liveness: live (code_present_context)<br>PriceFeed (alternative) `0x4b248f...9cbff2` — deployed 2025-05-02 14:34:27+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| cantina_competition_bima_december2024.pdf | TokenLocker | ambiguous — not counted | TokenLocker (alternative) `0x09a028...f75bf7` — deployed 2025-05-22 12:24:56+03 — liveness: live (code_present_context)<br>TokenLocker (alternative) `0x09a028...f75bf7` — deployed 2025-05-02 14:34:54+03 — liveness: live (code_present_context)<br>TokenLocker (alternative) `0x09a028...f75bf7` — deployed 2025-03-21 17:04:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| cantina_competition_bima_december2024.pdf | StabilityPool | ambiguous — not counted | StabilityPool (alternative) `0x5f2283...82d627` — deployed 2025-03-21 17:03:59+03 — liveness: live (code_present_context)<br>StabilityPool (alternative) `0x5f2283...82d627` — deployed 2025-05-02 14:34:48+03 — liveness: live (code_present_context)<br>StabilityPool (alternative) `0x5f2283...82d627` — deployed 2025-05-22 12:24:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| cantina_competition_bima_december2024.pdf | TroveManager | ambiguous — not counted | TroveManager (alternative) `0x5066dc...d36b97` — deployed 2025-09-03 16:54:59+03 — liveness: live (current_address_book_code)<br>TroveManager (alternative) `0xa20c3d...800ff2` — deployed 2025-05-22 14:58:01+03 — liveness: live (current_address_book_code)<br>TroveManager (alternative) `0x8ed4f2...657938` — deployed 2025-05-22 12:24:52+03 — liveness: live (code_present_context)<br>TroveManager (alternative) `0xa20c3d...800ff2` — deployed 2025-03-23 22:56:35+03 — liveness: live (current_address_book_code)<br>TroveManager (alternative) `0xa20c3d...800ff2` — deployed 2025-05-02 14:54:07+03 — liveness: live (current_address_book_code)<br>TroveManager (alternative) `0x8ed4f2...657938` — deployed 2025-03-21 17:04:11+03 — liveness: live (code_present_context)<br>TroveManager (alternative) `0x8ed4f2...657938` — deployed 2025-05-02 14:34:51+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| cantina_competition_bima_december2024.pdf | Vault | unmatched — not counted | — | listed in scope context lines | no |
| cantina_competition_bima_december2024.pdf | LiquidationManager | ambiguous — not counted | LiquidationManager (alternative) `0x2d3b9e...6b73ba` — deployed 2025-05-22 12:24:35+03 — liveness: live (code_present_context)<br>LiquidationManager (alternative) `0x2d3b9e...6b73ba` — deployed 2025-05-02 14:34:40+03 — liveness: live (code_present_context)<br>LiquidationManager (alternative) `0x2d3b9e...6b73ba` — deployed 2025-03-21 17:03:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| cantina_competition_bima_december2024.pdf | Factory | ambiguous — not counted | Factory (alternative) `0xc57901...759376` — deployed 2025-03-21 17:03:11+03 — liveness: live (code_present_context)<br>Factory (alternative) `0xc57901...759376` — deployed 2025-05-22 12:24:32+03 — liveness: live (code_present_context)<br>Factory (alternative) `0xc57901...759376` — deployed 2025-05-02 14:34:37+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| cantina_competition_bima_december2024.pdf | AdminVoting | unmatched — not counted | — | listed in scope context lines | no |
| cantina_competition_bima_december2024.pdf | BoostCalculator | unmatched — not counted | — | listed in scope context lines | no |
| cantina_competition_bima_december2024.pdf | CurveDepositToken | unmatched — not counted | — | listed in scope context lines | no |
| cantina_competition_bima_december2024.pdf | ConvexDepositToken | unmatched — not counted | — | listed in scope context lines | no |
| cantina_competition_bima_december2024.pdf | IncentiveVoting | ambiguous — not counted | IncentiveVoting (alternative) `0x558741...ddb7a8` — deployed 2025-05-02 14:34:57+03 — liveness: live (code_present_context)<br>IncentiveVoting (alternative) `0x558741...ddb7a8` — deployed 2025-03-21 17:04:35+03 — liveness: live (code_present_context)<br>IncentiveVoting (alternative) `0x558741...ddb7a8` — deployed 2025-05-22 12:25:01+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| cantina_competition_bima_december2024.pdf | BorrowOperations | unmatched — not counted | — | listed in scope context lines | no |
| cantina_competition_bima_december2024.pdf | BimaVault | ambiguous — not counted | BimaVault (alternative) `0xc4bbfb...126799` — deployed 2025-05-22 12:25:10+03 — liveness: live (code_present_context)<br>BimaVault (alternative) `0xc4bbfb...126799` — deployed 2025-03-21 17:04:59+03 — liveness: live (code_present_context)<br>BimaVault (alternative) `0xc4bbfb...126799` — deployed 2025-05-02 14:35:02+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| cantina_competition_bima_december2024.pdf | BimaCore | ambiguous — not counted | BimaCore (alternative) `0x227e93...2380ab` — deployed 2025-03-21 17:02:23+03 — liveness: live (code_present_context)<br>BimaCore (alternative) `0x227e93...2380ab` — deployed 2025-05-22 12:24:13+03 — liveness: live (code_present_context)<br>BimaCore (alternative) `0x227e93...2380ab` — deployed 2025-05-02 14:34:24+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| cantina_competition_bima_december2024.pdf | BimaToken | own contract | BimaToken (selected) `0x49ce2e...faef15` — deployed 2025-05-22 12:25:05+03 — liveness: live (code_present_context)<br>BimaToken (alternative) `0x49ce2e...faef15` — deployed 2025-03-21 17:04:47+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2025-05-22 was 38d from audit; next candidate 100d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cantina_competition_bima_december2024.pdf | DebtToken | own contract | DebtToken (selected) `0x6bede1...fdb68c` — deployed 2025-05-22 12:24:40+03 — liveness: live (code_present_context)<br>DebtToken (alternative) `0x6bede1...fdb68c` — deployed 2025-03-21 17:03:35+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2025-05-22 was 38d from audit; next candidate 100d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cantina_competition_bima_december2024.pdf | SortedTroves | ambiguous — not counted | SortedTroves (alternative) `0x870a10...c56b4a` — deployed 2025-03-21 17:02:59+03 — liveness: live (code_present_context)<br>SortedTroves (alternative) `0x870a10...c56b4a` — deployed 2025-05-22 12:24:28+03 — liveness: live (code_present_context)<br>SortedTroves (alternative) `0x870a10...c56b4a` — deployed 2025-05-02 14:34:33+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| cantina_competition_bima_december2024.pdf | MockOracle | unmatched — not counted | — | listed in scope context lines | no |
| cantina_competition_bima_december2024.pdf | MockCurveDepositToken | unmatched — not counted | — | listed in scope context lines | no |
| cantina_competition_bima_december2024.pdf | MockOracle_PoC | unmatched — not counted | — | listed in scope context lines | no |
| cantina_competition_bima_december2024.pdf | StakedBTC | unmatched — not counted | — | listed in scope context lines | no |
| cantina_competition_bima_december2024.pdf | StakedBTC2 | unmatched — not counted | — | listed in scope context lines | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x623f27...79d9df` | Bfbtc | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x93ee18...f80f09` | BimaBurner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x227e93...2380ab` | BimaCore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x227e93...2380ab` | BimaCore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x227e93...2380ab` | BimaCore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x49ce2e...faef15` | BimaToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc4bbfb...126799` | BimaVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xc4bbfb...126799` | BimaVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xc4bbfb...126799` | BimaVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x59063f...2018e1` | BimaWrappedCollateral | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x856db2...232ce0` | BimaWrappedCollateral | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xdc0cca...655197` | BimaWrappedCollateral | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x76de9b...129dbf` | BimaWrappedCollateralFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6bede1...fdb68c` | DebtToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6a9a65...fbce4a` | EnzoBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc57901...759376` | Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcbf153...ae8b89` | GasPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x558741...ddb7a8` | IncentiveVoting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x558741...ddb7a8` | IncentiveVoting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x558741...ddb7a8` | IncentiveVoting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2d3b9e...6b73ba` | LiquidationManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x42186e...0dcf6b` | MultiTroveGetter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x870a10...c56b4a` | SortedTroves | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5f2283...82d627` | StabilityPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x5f2283...82d627` | StabilityPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x5f2283...82d627` | StabilityPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x15ba04...1d1eef` | StakedUsbd | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x09a028...f75bf7` | TokenLocker | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x09a028...f75bf7` | TokenLocker | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x09a028...f75bf7` | TokenLocker | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5066dc...d36b97` | TroveManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8ed4f2...657938` | TroveManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x8ed4f2...657938` | TroveManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x8ed4f2...657938` | TroveManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6e26de...d7b1b1` | TroveManagerGetters | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 57 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 13 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 5 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 32 ambiguous, 43 unmatched
- Matched-own operational status: 5 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3
- Match method counts: temporal_name=2, unique_name=3

Fork inheritance lineage and inherited audits are included when available.
