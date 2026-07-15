# Agentic Audit Brief: TAU Labs

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: TAU Labs (`tau-labs`)
- Website: [https://www.628labs.xyz/](https://www.628labs.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, ethereum, plasma
- Contract surface: 221 unique implementations (581 raw deployments)
- Coverage basis: 0/4 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $6,531,012.84
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for TAU Labs. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 5 contract row(s) across ethereum, plasma. Structural roles: 5 core. 5 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 5
- Structural roles: core (5)
- Contract kinds: contract (5)
- Detected standards: erc20 (5), erc4626 (4), erc20permit (1)
- Frameworks: openzeppelin (5), openzeppelin-upgradeable (5)
- Upgradeable-pattern rows: 5

## Fork Analysis

1 of 3 contracts are derived from known codebases. 2 contracts have no detected origin.

### Forked Contracts

**PlasmaVault** (`0xc50b2d...65c64b`, chain 1)
Origin: turtle-club (`0xae4362...9a573c`)
Containment: 100.0% - 16 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x631033...1ae9c0`, chain 1)
- UnnamedContract (`0xb0f56b...c7a74f`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 5; live-surface rows included: 5 (4 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 3/4 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/4 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 4 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 217 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 59
- Confirmed-live implementations: 4 of 221 unique; 217 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/221
- Verified + Unaudited implementations: 221
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 221
- Raw deployments: 581
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (221)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveV3BalanceFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5a395...8c1053` | ⚠️ Unaudited |
| AaveV3BorrowFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xe3abae...de4c5e`; ethereum `0xf020b9...78d884` | ⚠️ Unaudited |
| AaveV3CollateralFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc06f56...c44b22` | ⚠️ Unaudited |
| AaveV3WithPriceOracleMiddlewareBalanceFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9eeee...a12612` | ⚠️ Unaudited |
| AccessManagerFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x0d6028...00a740`; ethereum `0xced97f...89305e`; ethereum `0xf902af...8ea3c1` | ⚠️ Unaudited |
| AmmCloseSwapLens | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x066cbd...bbaac2`; ethereum `0x17bf30...94095d`; ethereum `0x8d99d6...132aa0`; ethereum `0xff69f7...32aaf8` | ⚠️ Unaudited |
| AmmCloseSwapService | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6650de...825ee3`; ethereum `0x7dc23a...10ecb5` | ⚠️ Unaudited |
| AmmCloseSwapServiceDai | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x072467...1dd183`; ethereum `0x735b3f...6fc3d9`; ethereum `0xe14a72...a849e4` | ⚠️ Unaudited |
| AmmCloseSwapServiceStEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x578ba0...2973c2`; ethereum `0xe26126...eb6524` | ⚠️ Unaudited |
| AmmCloseSwapServiceStEthBaseV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa07f30...292734` | ⚠️ Unaudited |
| AmmCloseSwapServiceUsdc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x128ced...aa747f`; ethereum `0x623750...673d95`; ethereum `0x9a9f60...69f8e8` | ⚠️ Unaudited |
| AmmCloseSwapServiceUsdt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x11a02a...ab56f9`; ethereum `0x6d0045...d94237`; ethereum `0x8fe90f...743ed2` | ⚠️ Unaudited |
| AmmGovernanceService | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x4f7ef2...bda46d`; ethereum `0x8ab4d1...6e2023`; ethereum `0x8ec9ae...52158d`; ethereum `0xbd7407...95264d`; ethereum `0xbf0a6e...03f4bc` | ⚠️ Unaudited |
| AmmGovernanceServiceBaseV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb64f71...5f0470` | ⚠️ Unaudited |
| AmmOpenSwapService | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4ef45e...8016d1`; ethereum `0x78034b...7ae119` | ⚠️ Unaudited |
| AmmOpenSwapServiceStEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x042ec3...59cd2c`; ethereum `0x0ccccd...3ab361` | ⚠️ Unaudited |
| AmmPoolsLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1f44c5...40e04a`; ethereum `0xb653ed...940d01` | ⚠️ Unaudited |
| AmmPoolsLensBaseV1 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce9680...7db70d` | ⚠️ Unaudited |
| AmmPoolsLensEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8bea65...28be1e` | ⚠️ Unaudited |
| AmmPoolsLensStEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0a485...24904a` | ⚠️ Unaudited |
| AmmPoolsLensUsdm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x326293...eac8eb` | ⚠️ Unaudited |
| AmmPoolsLensWeEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0d64c...e165a6` | ⚠️ Unaudited |
| AmmPoolsService | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x912ae5...98f337`; ethereum `0x9bcde3...400517` | ⚠️ Unaudited |
| AmmPoolsServiceEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa30845...1a9bed` | ⚠️ Unaudited |
| AmmPoolsServiceStEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x406812...428be1`; ethereum `0xcd96ba...fbebbc` | ⚠️ Unaudited |
| AmmPoolsServiceUsdm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5765d0...95294c` | ⚠️ Unaudited |
| AmmPoolsServiceWeEth | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6966de...c5a318`; ethereum `0x7b071c...e475ac` | ⚠️ Unaudited |
| AmmStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x229e0b...7411fe`; ethereum `0x98123c...de36da`; ethereum `0xec6f77...d283e6` | ⚠️ Unaudited |
| AmmStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x364f11...f5b1ce`; ethereum `0x622827...593f2e` | ⚠️ Unaudited |
| AmmStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x4508ce...e8c0f0`; ethereum `0xb99f2a...c56e61` | ⚠️ Unaudited |
| AmmStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x91c35e...8f6ab1`; ethereum `0xb3d1c1...924ba5` | ⚠️ Unaudited |
| AmmStorageBaseV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x08a8ec...0197c6`; ethereum `0x95257e...94a281` | ⚠️ Unaudited |
| AmmStorageBaseV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2b0277...f114d0`; ethereum `0x9c9846...701017` | ⚠️ Unaudited |
| AmmStorageBaseV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x4f4f16...84ef8c`; ethereum `0x77fe3a...41e3b5` | ⚠️ Unaudited |
| AmmSwapsLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x41e347...0172cf`; ethereum `0x476c44...2dcd8c`; ethereum `0x5a1cf5...4c50c2` | ⚠️ Unaudited |
| AmmSwapsLensLibBaseV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1decfd...c7032c` | ⚠️ Unaudited |
| AmmTreasury | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x137000...2e7dc9`; ethereum `0x866d6c...a0eb49` | ⚠️ Unaudited |
| AmmTreasury | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x28bc58...96b687`; ethereum `0xabcb3a...49a82b` | ⚠️ Unaudited |
| AmmTreasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x6f4506...dc5944`; ethereum `0x916202...d3aa48`; ethereum `0xeb011b...f88a0c` | ⚠️ Unaudited |
| AmmTreasury | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xe9facd...b74dc1`; ethereum `0xed7d74...4e7523` | ⚠️ Unaudited |
| AmmTreasuryBaseV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x060bf7...40556a`; ethereum `0xa19b16...1bfaad` | ⚠️ Unaudited |
| AmmTreasuryBaseV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x390e7e...68aabd`; ethereum `0x9a449e...37123b` | ⚠️ Unaudited |
| AmmTreasuryBaseV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x30ae18...05153c`; ethereum `0x63395e...8dee4e` | ⚠️ Unaudited |
| AmmTreasuryBaseV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xb1c0cc...44f0c0`; ethereum `0xcc2ff2...d74196` | ⚠️ Unaudited |
| AmmTreasuryEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7193c...50dc22` | ⚠️ Unaudited |
| AssetManagementDai | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x160dae...cdace3`; ethereum `0xa6ac8b...96e2b0` | ⚠️ Unaudited |
| AssetManagementLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1d4c4c...5f6e09`; ethereum `0xb8dbde...192389` | ⚠️ Unaudited |
| AssetManagementUsdc | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7aa7b0...9bf260`; ethereum `0xd9f0c6...0d2a7b` | ⚠️ Unaudited |
| AssetManagementUsdt | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x6416e3...7f7ddd`; ethereum `0x8e679c...64d6b5` | ⚠️ Unaudited |
| AsyncActionBalanceFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37fb99...92bf6f` | ⚠️ Unaudited |
| AsyncActionFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04bd1e...671870` | ⚠️ Unaudited |
| BalanceFusesReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x870e1f...0aec1f` | ⚠️ Unaudited |
| BurnRequestFeeFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79e8b1...d29ab4` | ⚠️ Unaudited |
| CalculateWeightedLpTokenBalanceEthereum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x3843f9...c18915`; ethereum `0x6df58f...ca5971`; ethereum `0x77bf38...ff549c` | ⚠️ Unaudited |
| CallbackHandlerEuler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b219f...d98602` | ⚠️ Unaudited |
| CallbackHandlerReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b0584...20e393` | ⚠️ Unaudited |
| CockpitDataProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x124bc6...0e97dc`; ethereum `0x720e64...b144ee`; ethereum `0xacbb7e...cc09f5` | ⚠️ Unaudited |
| CollateralTokenOnMorphoMarketPriceFeedFactory | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0ed13e...8bb5a7` | ⚠️ Unaudited |
| ConfigureInstantWithdrawalFuse | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd58f0e...b33799` | ⚠️ Unaudited |
| ContextManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 23 deployments: ethereum `0x0f2e1c...9592b7`; ethereum `0x0fe8d7...62a702`; ethereum `0x1822a8...664d4f`; ethereum `0x226b2c...a6d167`; ethereum `0x3782bc...3c9fd8`; ethereum `0x3db87a...a910c1`; ethereum `0x446f85...700153`; ethereum `0x4f1f51...aa3dd2`; ethereum `0x503873...b3ab72`; ethereum `0x58f50b...f4cb9b`; ethereum `0x695d74...68de3a`; ethereum `0x75c991...b7bf5b`; ethereum `0x9627ed...236014`; ethereum `0xabc0fd...67df0e`; ethereum `0xba6839...270317`; ethereum `0xc223ea...8cc210`; ethereum `0xe5b4ff...49f8af`; ethereum `0xe62a03...fcab36`; ethereum `0xecb36d...90243a`; ethereum `0xeda1e6...78c0a4`; ethereum `0xeeddc5...fe7d10`; ethereum `0xfdb898...f1b526`; ethereum `0xfdd67a...8e731f` | ⚠️ Unaudited |
| ContextManagerFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x1a8404...2decc4`; ethereum `0x9a5b39...9a9850`; ethereum `0xea0b11...607815` | ⚠️ Unaudited |
| CurveStableswapNGSingleSideSupplyFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfcb0b6...18293a` | ⚠️ Unaudited |
| DualCrossReferencePriceFeedFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x78f46f...5a4357`; ethereum `0x8b94c1...d0b303` | ⚠️ Unaudited |
| EbisuAdjustInterestRateFuse | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf82a57...6c67f9` | ⚠️ Unaudited |
| EbisuAdjustTroveFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe30b07...7cc9e8` | ⚠️ Unaudited |
| EbisuWethEthAdapterAddressReader | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe88ed7...b53451` | ⚠️ Unaudited |
| EbisuZapperBalanceFuse | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3a7f1...eefb33` | ⚠️ Unaudited |
| EbisuZapperCreateFuse | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1aba47...37069e`; ethereum `0x586a81...2551f4` | ⚠️ Unaudited |
| EbisuZapperLeverModifyFuse | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3babe...836102` | ⚠️ Unaudited |
| Erc4626BalanceFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 18 deployments: ethereum `0x10e2c2...cdb336`; ethereum `0x1469e4...512ee8`; ethereum `0x19e332...6e7906`; ethereum `0x2c10c3...c75d5e`; ethereum `0x2e3266...79e7dd`; ethereum `0x318dc5...0c2edf`; ethereum `0x32971e...ecf8e7`; ethereum `0x560c83...7772f0`; ethereum `0x5d4474...2b9a9a`; ethereum `0x806b55...23fb94`; ethereum `0x8c8f2a...ce78af`; ethereum `0x933bff...f8749b`; ethereum `0xa0777a...0e0cee`; ethereum `0xa72f83...ee92cf`; ethereum `0xcb6bb5...ba6566`; ethereum `0xe1fd88...a9a7f3`; ethereum `0xf3d20c...27bf11`; ethereum `0xf9a1f7...1308fe` | ⚠️ Unaudited |
| ERC4626PriceFeed | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3c3f08...922d93`; ethereum `0xdbffc3...7f89b3` | ⚠️ Unaudited |
| ERC4626PriceFeedFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xe08aff...d1aa61`; ethereum `0xf58fcc...0c0fdc` | ⚠️ Unaudited |
| Erc4626SupplyFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 18 deployments: ethereum `0x01d4fa...d45cdf`; ethereum `0x06b53a...a5d3b2`; ethereum `0x12fd0e...515870`; ethereum `0x361baf...1c9434`; ethereum `0x53ecc2...c81a6b`; ethereum `0x59e58d...d38f89`; ethereum `0x5e58d1...fa6a88`; ethereum `0x62679b...2649e8`; ethereum `0x6b9489...7bfb90`; ethereum `0x83be46...e4e754`; ethereum `0x87e3b7...cd590b`; ethereum `0x95acdf...35485d`; ethereum `0x970b4f...836dfd`; ethereum `0xbd8a19...47ca9f`; ethereum `0xd6fa88...43b783`; ethereum `0xe49207...80b4ae`; ethereum `0xf16119...73d8e3`; ethereum `0xf492e2...7bf5e7` | ⚠️ Unaudited |
| ERC4626ZapIn | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9af838...76dac3` | ⚠️ Unaudited |
| ERC4626ZapInWithNativeToken | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x677251...d89c00` | ⚠️ Unaudited |
| EthPlusPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd529f4...580199` | ⚠️ Unaudited |
| EulerV2BalanceFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xa60785...eeacdc`; ethereum `0xae9a37...7baabd` | ⚠️ Unaudited |
| EulerV2BatchFuse | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45f3bf...7dda6f` | ⚠️ Unaudited |
| EulerV2BorrowFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x20c782...9e32c2`; ethereum `0x6b339a...f7f2f6` | ⚠️ Unaudited |
| EulerV2CollateralFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x07d809...e36514`; ethereum `0xf58d96...672618` | ⚠️ Unaudited |
| EulerV2ControllerFuse | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4bfea0...ca9b55`; ethereum `0x4dca6f...ec6c25` | ⚠️ Unaudited |
| EulerV2SupplyFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x225d3e...7e7bf0`; ethereum `0x9425cc...57f217`; ethereum `0xdd33b4...6fd5b5` | ⚠️ Unaudited |
| ExchangeRateValidatorPreHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef23ea...706199` | ⚠️ Unaudited |
| FeeManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x2bb5ca...3a4391`; ethereum `0x6951d7...1baa20`; ethereum `0xbde68f...4e2255` | ⚠️ Unaudited |
| FeeManagerFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x061d41...c88985`; ethereum `0x587a7a...b76aef`; ethereum `0xe8c0f9...3c1bc7` | ⚠️ Unaudited |
| FixedAirdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a94e4...7c4539` | ⚠️ Unaudited |
| FlowsService | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3486d...e665ac` | ⚠️ Unaudited |
| FluidInstadappClaimFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59da0c...788c25` | ⚠️ Unaudited |
| FluidInstadappStakingBalanceFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9d0e2...a16aba` | ⚠️ Unaudited |
| FluidInstadappStakingSupplyFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa61324...1d590f` | ⚠️ Unaudited |
| FluidProofClaimFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30ade0...558fe0` | ⚠️ Unaudited |
| FusionFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x034947...cf88a8`; ethereum `0x08732e...21d497`; ethereum `0x930434...d41367`; ethereum `0xba84b0...aabe08`; ethereum `0xd48d95...5d5e0d` | ⚠️ Unaudited |
| FusionFactory | registry | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xcd0590...d9b852` | ⚠️ Unaudited |
| GearboxV3FarmBalanceFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe88982...0b45f2` | ⚠️ Unaudited |
| GearboxV3FarmDTokenClaimFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf710b1...e67072` | ⚠️ Unaudited |
| GearboxV3FarmSupplyFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf6016a...61c34e` | ⚠️ Unaudited |
| HarvestDoHardWorkFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda45fe...b43e50` | ⚠️ Unaudited |
| IporFusionAccessManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 30 deployments: ethereum `0x1dc356...79ae8a`; ethereum `0x3df9d7...9eabae`; ethereum `0x428691...c6d585`; ethereum `0x49cced...527c06`; ethereum `0x4f9a58...2e256e`; ethereum `0x56e767...b4af56`; ethereum `0x57d771...ba6508`; ethereum `0x6857b2...66e0c7`; ethereum `0x69c121...1d5532`; ethereum `0x7c20c9...28cc6c`; ethereum `0x818912...7df7aa`; ethereum `0x82d3d0...52196c`; ethereum `0x85fd76...72325e`; ethereum `0x8bff06...1c654d`; ethereum `0x922350...eb1d42`; ethereum `0x956d09...ba8f4b`; ethereum `0x962661...20256d`; ethereum `0xae92a0...2ac544`; ethereum `0xb2d9f7...df8a05`; ethereum `0xb46dca...c1f434`; ethereum `0xb7394c...75be04`; ethereum `0xc025ec...d545df`; ethereum `0xcee55b...207a97`; ethereum `0xd1813b...2033a6`; ethereum `0xd887ea...eac106`; ethereum `0xdcf1ec...dd2e46`; ethereum `0xdd15eb...d192a9`; ethereum `0xe593cf...0050ba`; ethereum `0xfb1506...ccce9a`; ethereum `0xfe2242...ea07b5` | ⚠️ Unaudited |
| IporOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x20a5d2...b2cdd7`; ethereum `0x7ff633...b1091c`; ethereum `0x9c2a4e...51d64c`; ethereum `0xbed8a5...6d8562`; ethereum `0xcea315...c58f54`; ethereum `0xe76a43...069906` | ⚠️ Unaudited |
| IporOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x421c69...8a6876`; ethereum `0xcf7124...d71221` | ⚠️ Unaudited |
| IporOracleFacadeDataProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x161c5f...c11df0`; ethereum `0x7ebc09...f1b1b6` | ⚠️ Unaudited |
| IporProtocolRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x114f33...130132`; ethereum `0x1c26ab...37a28d`; ethereum `0x38a409...daaee2`; ethereum `0x47f13d...4635d9`; ethereum `0x695264...7d214c`; ethereum `0xc17548...82b838`; ethereum `0xf4d002...1cffbd`; ethereum `0xf9f580...eec3de` | ⚠️ Unaudited |
| IporProtocolRouterEthereum | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x16d104...3c26fd`; ethereum `0xcc735c...9461d6` | ⚠️ Unaudited |
| IporRiskManagementOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xa5f814...736af7`; ethereum `0xfb22c1...1d11b8` | ⚠️ Unaudited |
| IporToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e4746...289090` | ⚠️ Unaudited |
| IporWeighted | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x229253...518fbc`; ethereum `0x32d8d5...65ff49`; ethereum `0x53b4c5...b288d9`; ethereum `0xb00c99...9efe34`; ethereum `0xba610f...edcc7a`; ethereum `0xed21f0...44a81d` | ⚠️ Unaudited |
| IporWeighted | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x8712a2...5669bb`; ethereum `0x9d4bd8...e85140` | ⚠️ Unaudited |
| IpToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x9ac509...fda4cb`; ethereum `0xac5b04...166125`; ethereum `0xc40431...0c1f0c` | ⚠️ Unaudited |
| IpTokenDai | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8537b1...dadaf8` | ⚠️ Unaudited |
| IpTokenUsdt | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x7c0e72...621a88`; ethereum `0x9bd217...e1edc6` | ⚠️ Unaudited |
| IvTokenDai | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf93e0e...009b26` | ⚠️ Unaudited |
| IvTokenUsdt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xe176f8...52a95c`; ethereum `0xe966d1...e19048` | ⚠️ Unaudited |
| JosephDai | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x086d4d...b65045`; ethereum `0x7cd10f...be5d04` | ⚠️ Unaudited |
| JosephDai | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6f18b9...00787d`; ethereum `0x9cb5e8...d3cfd8` | ⚠️ Unaudited |
| JosephUsdt | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x33c5a4...4324ac`; ethereum `0x8ae47c...1c319b` | ⚠️ Unaudited |
| JosephUsdt | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x470c3a...baa37f`; ethereum `0xc52569...133277` | ⚠️ Unaudited |
| JosephUsdt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd29f9b...9fc1b0` | ⚠️ Unaudited |
| LiquidityMining | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x22363b...b9466d`; ethereum `0x32ab94...abeae3`; ethereum `0x758e7d...621a7e`; ethereum `0xac0dcb...ab644e`; ethereum `0xe00834...0efc02`; ethereum `0xfa556d...f51b1c` | ⚠️ Unaudited |
| LiquidityMiningEthereum | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0a06ec...c45edc`; ethereum `0xcc3fc4...0ff366` | ⚠️ Unaudited |
| LiquidityMiningEthereum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0984f...5ff846` | ⚠️ Unaudited |
| LiquidityMiningLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x769d54...b39e98` | ⚠️ Unaudited |
| LiquityBalanceFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf71339...9daa97` | ⚠️ Unaudited |
| MerklClaimFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47aca4...b4bbcc` | ⚠️ Unaudited |
| MidasBalanceFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1bfb9e...22e050`; ethereum `0x8193ca...c96eb2` | ⚠️ Unaudited |
| MidasRequestSupplyFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1b66a7...209a3c`; ethereum `0x45209c...bdcab8` | ⚠️ Unaudited |
| MidasSupplyFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x99bc01...bec386`; ethereum `0x9aa21e...ba6db1` | ⚠️ Unaudited |
| Migrations | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x85b23b...2cbe74`; ethereum `0xb56e99...253c2c` | ⚠️ Unaudited |
| MiltonDai | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 10 deployments: ethereum `0x16d236...4dd42e`; ethereum `0x1fbd08...0ff864`; ethereum `0x22d87b...e9a4d6`; ethereum `0x7a9990...00073a`; ethereum `0x9def0a...1143c7`; ethereum `0xb1cee7...8fea67`; ethereum `0xb6a547...ac11f2`; ethereum `0xbf71dd...ce79d5`; ethereum `0xcd7e5e...bc03be`; ethereum `0xf5f62c...03b5ce` | ⚠️ Unaudited |
| MiltonFacadeDataProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7520c9...25015b`; ethereum `0xd5ef0d...5b236c` | ⚠️ Unaudited |
| MiltonSpreadModelDai | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x9cf78e...68c5d9`; ethereum `0xfb2ee9...e95318` | ⚠️ Unaudited |
| MiltonSpreadModelUsdc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2a8998...5600ac`; ethereum `0x6bcb29...245467` | ⚠️ Unaudited |
| MiltonSpreadModelUsdt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x3eea8a...5eca9e`; ethereum `0x49f282...a3a8b0`; ethereum `0xd49b20...4efdc8`; ethereum `0xedaaf1...beac3d` | ⚠️ Unaudited |
| MiltonStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x5f4829...94c1d2`; ethereum `0x644149...831069` | ⚠️ Unaudited |
| MiltonUsdc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x371f6e...159d29`; ethereum `0x6a259c...e7eb48`; ethereum `0xdb75be...974579` | ⚠️ Unaudited |
| MiltonUsdt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 11 deployments: ethereum `0x0d5522...dc59b2`; ethereum `0x473285...a197b0`; ethereum `0x72f856...906283`; ethereum `0x80def4...4fa53e`; ethereum `0x8fcd17...ba8fcb`; ethereum `0xb92635...328b21`; ethereum `0xccadc4...a905e3`; ethereum `0xd15b8f...c53165`; ethereum `0xe37cfe...ef922b`; ethereum `0xe3c67a...099195`; ethereum `0xf739f3...f2c4db` | ⚠️ Unaudited |
| MiningCalculationAccountPowerUp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x9a293a...a28458`; ethereum `0xe8e51e...7ea585` | ⚠️ Unaudited |
| MorphoSupplyFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd08cb6...e6c8df` | ⚠️ Unaudited |
| OdosSwapperFuse | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc13f3f...1cb691` | ⚠️ Unaudited |
| OneValuePriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd7aa52...0e61cf` | ⚠️ Unaudited |
| OraclePublisher | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x254a66...b505ff`; ethereum `0xa735b8...7dd508` | ⚠️ Unaudited |
| PauseFunctionPreHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7846be...984d59` | ⚠️ Unaudited |
| PendleSwapPTFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeea381...d49f95` | ⚠️ Unaudited |
| PlasmaVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 18 deployments: ethereum `0x0552e2...bb6ca8`; ethereum `0x1fdf5d...4d1bad`; ethereum `0x20e934...b9ac44`; ethereum `0x3a58d6...8ef697`; ethereum `0x5904da...032eb2`; ethereum `0x5ddd76...787d88`; ethereum `0x604117...d434c5`; ethereum `0x60e36a...5ae74c`; ethereum `0x707d81...cb7a80`; ethereum `0x78cc13...7a64fe`; ethereum `0x981a6c...4db5bc`; ethereum `0xad685f...725706`; ethereum `0xae4362...9a573c`; ethereum `0xc1926c...e63b5d`; ethereum `0xd36f53...9a1c1d`; ethereum `0xfb696d...307541`; ethereum `0xffb090...6b0472`; plasma `0x0a7162...28ed7a` | ⚠️ Unaudited |
| PlasmaVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-393836 | `0xc50b2d...65c64b` | ⚠️ Unaudited |
| PlasmaVaultBase | unknown | non_address_book | non_address_book_inventory (excluded) | 9 | ethereum | n/a | 9 deployments: ethereum `0x08dd57...e48ee8`; ethereum `0x29d322...8fafbb`; ethereum `0x3151ce...809d90`; ethereum `0x64d47d...3a464f`; ethereum `0x6f66b8...6a8c40`; ethereum `0x9824dc...878607`; ethereum `0x9dc281...8126d9`; ethereum `0xb4790c...d447ae`; ethereum `0xb530a1...37a3ed` | ⚠️ Unaudited |
| PlasmaVaultBase | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2de732...0171ab`; ethereum `0x394356...49df44` | ⚠️ Unaudited |
| PlasmaVaultBase | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393837 | 2 deployments: ethereum `0x43a32d...4a1e68`; ethereum `0x978141...c7b37b` | ⚠️ Unaudited |
| PlasmaVaultBase | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x43ee02...9c7ca2`; ethereum `0x7ef926...6964d2`; ethereum `0xabab98...c18e3e` | ⚠️ Unaudited |
| PlasmaVaultBase | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x842494...7d5062`; ethereum `0xe9385e...b4fb5f` | ⚠️ Unaudited |
| PlasmaVaultFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x3bbe70...0da9a8`; ethereum `0x7c9119...3007e2`; ethereum `0xcdc799...edc09c`; ethereum `0xee47a6...7eb9a5` | ⚠️ Unaudited |
| PlasmaVaultRedeemFromRequestFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x906af6...53af0d` | ⚠️ Unaudited |
| PlasmaVaultRequestSharesFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x713038...e09542` | ⚠️ Unaudited |
| PowerToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x586ac8...6d49eb`; ethereum `0xf4725f...7f3ab1` | ⚠️ Unaudited |
| PowerToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x78dbf1...84a0f7`; ethereum `0xd72915...95409f` | ⚠️ Unaudited |
| PowerTokenLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a4fc8...d21ec3` | ⚠️ Unaudited |
| PreHooksInfoReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ecd96...e19821` | ⚠️ Unaudited |
| PriceManagerFactory | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x0fc2d5...b07609`; ethereum `0x6558eb...0ab162`; ethereum `0x7d49c6...e3fe82` | ⚠️ Unaudited |
| PriceOracleMiddleware | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x09321c...024da2`; ethereum `0xb7018c...66f2f7` | ⚠️ Unaudited |
| PriceOracleMiddleware | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6bf0ff...0385c9` | ⚠️ Unaudited |
| PriceOracleMiddlewareManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 15 deployments: ethereum `0x07fc09...062930`; ethereum `0x18fda4...187d5e`; ethereum `0x213bb7...75dc4d`; ethereum `0x3ac655...189b5a`; ethereum `0x45d0e1...74c115`; ethereum `0x4e3c90...83575b`; ethereum `0x654ff3...d776b1`; ethereum `0x6d16b7...4abc02`; ethereum `0x7c6f94...8ec03e`; ethereum `0x80c086...b8c1aa`; ethereum `0x8b1ebe...8029e8`; ethereum `0x962131...90ee87`; ethereum `0x9f6993...dc8548`; ethereum `0xc3eb0c...8d5787`; ethereum `0xcb5ef9...179362` | ⚠️ Unaudited |
| PriceOracleMiddlewareWithRoles | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xc9f32d...d664c6`; ethereum `0xeba87a...f9317c` | ⚠️ Unaudited |
| PtPriceFeedFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1cb493...26007c`; ethereum `0xe2a264...52db9b` | ⚠️ Unaudited |
| ReferralPlasmaVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x399502...063585` | ⚠️ Unaudited |
| RewardEulerTokenClaimFuse | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa2442...d0866a` | ⚠️ Unaudited |
| RewardsClaimManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 25 deployments: ethereum `0x11cbc3...10367f`; ethereum `0x1f8397...02ded0`; ethereum `0x23c8dc...21cdec`; ethereum `0x2d1a21...af2792`; ethereum `0x3b1dac...b967b1`; ethereum `0x3e9dba...b9c67c`; ethereum `0x4d99e7...3bddb3`; ethereum `0x4de58c...7d3e23`; ethereum `0x536783...7a91a9`; ethereum `0x5a5f43...18aa01`; ethereum `0x5cb733...208a71`; ethereum `0x7a79b5...749aea`; ethereum `0x84c87f...375cb1`; ethereum `0x9beff3...e42051`; ethereum `0xb20e1d...0cd802`; ethereum `0xb401b9...fdc3e2`; ethereum `0xb58423...79a4c8`; ethereum `0xcb1bbc...34f224`; ethereum `0xcd397f...ed6889`; ethereum `0xcdb0a6...8b5821`; ethereum `0xd0e170...937901`; ethereum `0xd6dc84...9a2946`; ethereum `0xda376f...214721`; ethereum `0xf4c6fe...93cdc8`; ethereum `0xf5db3e...d0be61` | ⚠️ Unaudited |
| RewardsManagerFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x274567...c54028`; ethereum `0x5d9f02...c3c71a`; ethereum `0xb03a4f...d6752e` | ⚠️ Unaudited |
| SDaiPriceFeedEthereum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x974672...70805d` | ⚠️ Unaudited |
| SiloV2BalanceFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x086aca...17998f` | ⚠️ Unaudited |
| SiloV2BorrowFuse | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d24b8...13005b` | ⚠️ Unaudited |
| SiloV2SupplyBorrowableCollateralFuse | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3d5c1...038fb5` | ⚠️ Unaudited |
| SiloV2SupplyNonBorrowableCollateralFuse | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x897d96...defa56` | ⚠️ Unaudited |
| SoapIndicatorRebalanceLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x213534...4d7100`; ethereum `0x4c9a6f...64a2b0`; ethereum `0x9cae0d...c2ce95`; ethereum `0xb70a2e...8d99e6`; ethereum `0xb933b5...0cc060`; ethereum `0xea87d3...64e0a1` | ⚠️ Unaudited |
| Spread28Days | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8d531...e8dad5` | ⚠️ Unaudited |
| Spread60Days | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36618c...9a81ab` | ⚠️ Unaudited |
| Spread90Days | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22c1cf...7795d5` | ⚠️ Unaudited |
| SpreadBaseV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x768762...a358fb` | ⚠️ Unaudited |
| SpreadCloseSwapService | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x948548...5dcacd` | ⚠️ Unaudited |
| SpreadRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x11cc7a...81ede2`; ethereum `0xac1c86...2338ed` | ⚠️ Unaudited |
| SpreadRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa14eb...0c90a8` | ⚠️ Unaudited |
| SpreadStorageLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb50c61...6c12c6` | ⚠️ Unaudited |
| SpreadStorageService | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45336f...f1493e` | ⚠️ Unaudited |
| StakeDaoV2BalanceFuse | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c59d9...1c3816` | ⚠️ Unaudited |
| StakeDaoV2ClaimFuse | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ec22c...77defc` | ⚠️ Unaudited |
| StakeDaoV2SupplyFuse | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5be6e7...ce3c1e` | ⚠️ Unaudited |
| StakeService | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x379038...36f6c7`; ethereum `0xf83027...deafea` | ⚠️ Unaudited |
| StanleyDai | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x8f0279...13a817`; ethereum `0xadeb2f...3c1872` | ⚠️ Unaudited |
| StanleyDsrDai | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe945ef...a339e4` | ⚠️ Unaudited |
| StanleyUsdc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb512e3...14114b` | ⚠️ Unaudited |
| StanleyUsdt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb6923e...5903d6` | ⚠️ Unaudited |
| StEthWrapperFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x176f64...e69584`; ethereum `0xab97e4...ea1bad` | ⚠️ Unaudited |
| StrategyAave | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x526d00...f1f62f`; ethereum `0xfa0186...999f8c` | ⚠️ Unaudited |
| StrategyAave | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x58703d...c5127d` | ⚠️ Unaudited |
| StrategyAave | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x77fcae...ba028f` | ⚠️ Unaudited |
| StrategyAave | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc84317...a574c9` | ⚠️ Unaudited |
| StrategyCompound | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x87cef1...9fc774`; ethereum `0xcf7be4...bc7de0` | ⚠️ Unaudited |
| StrategyCompound | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xbb8383...a2a5da`; ethereum `0xe4cd9a...9ab5b1` | ⚠️ Unaudited |
| StrategyCompound | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xc301ec...83d7df`; ethereum `0xe5257c...82f526` | ⚠️ Unaudited |
| StrategyCompound | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf84450...03d751` | ⚠️ Unaudited |
| StrategyDsrDai | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xc26be5...97239c`; ethereum `0xd45763...44d6db` | ⚠️ Unaudited |
| StrategyDsrDai | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xceceb6...60ec2d` | ⚠️ Unaudited |
| SwapExecutorEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e3654...1bd1c4` | ⚠️ Unaudited |
| SwapExecutorRestricted | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1a7034...5205e9`; ethereum `0xe092b9...5f1b09` | ⚠️ Unaudited |
| SyrupClaimFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b1a6b...41f537` | ⚠️ Unaudited |
| TradingCompetitionRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0aa4a0...05f824`; ethereum `0x3d1438...5623e6` | ⚠️ Unaudited |
| UniversalTokenSwapperEthFuse | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0xa07780...1fdbe5`; ethereum `0xd932d4...f2dbf0`; ethereum `0xee9a18...218768` | ⚠️ Unaudited |
| UniversalTokenSwapperFuse | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x54c860...df5d50`; ethereum `0x641b81...9675b3`; ethereum `0xa301d6...1f1584` | ⚠️ Unaudited |
| UniversalTokenSwapperWithVerificationFuse | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e0b22...da53e0` | ⚠️ Unaudited |
| UnnamedContract | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-393834 | `0x631033...1ae9c0` | ⚠️ Unaudited |
| UnnamedContract | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-393835 | `0xb0f56b...c7a74f` | ⚠️ Unaudited |
| UpdateBalancesIgnoreDustPreHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0cf053...fc1a5c` | ⚠️ Unaudited |
| UpdateWithdrawManagerMaintenanceFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x74ca34...0bb0d0` | ⚠️ Unaudited |
| VeloraSwapperFuse | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8771e2...15d48b` | ⚠️ Unaudited |
| VestingAirdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87858b...3e20e0` | ⚠️ Unaudited |
| WhitelistWrappedPlasmaVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x30378c...125151`; ethereum `0xfa5f2e...a7d8db` | ⚠️ Unaudited |
| WhitelistWrappedPlasmaVaultFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xabd643...b4374d` | ⚠️ Unaudited |
| WithdrawManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 26 deployments: ethereum `0x0a78c1...336d2d`; ethereum `0x19e5ac...02737c`; ethereum `0x22524f...2bd0a1`; ethereum `0x468de9...6d7b76`; ethereum `0x4ba0f2...25e6fd`; ethereum `0x5903e1...77b2dd`; ethereum `0x5b7aec...7b5c81`; ethereum `0x75742c...db6a86`; ethereum `0x784008...842c1b`; ethereum `0x79f140...79bbdb`; ethereum `0x7f4474...722349`; ethereum `0x8138fd...4584e1`; ethereum `0x83bc53...df28b7`; ethereum `0xa76aa0...11448c`; ethereum `0xa90196...44b77d`; ethereum `0xac8479...c69c2b`; ethereum `0xbacf97...80ad28`; ethereum `0xcb1cea...80b111`; ethereum `0xcb5d69...9f2bb1`; ethereum `0xd685ce...ff44d3`; ethereum `0xd9d6ac...a401f3`; ethereum `0xdaf066...bc2b3c`; ethereum `0xdbe385...7fb444`; ethereum `0xefde29...9fae28`; ethereum `0xf08cb4...ad1386`; ethereum `0xf215cf...fbd101` | ⚠️ Unaudited |
| WithdrawManagerFactory | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x00b0c4...6fe521`; ethereum `0x86ea41...b488ae`; ethereum `0xe37b58...33e587` | ⚠️ Unaudited |
| WrappedPlasmaVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x74714b...8b2c12`; ethereum `0x757e1b...fb7058` | ⚠️ Unaudited |
| WrappedPlasmaVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x3f68a6...3311f5`; ethereum `0xb17a9d...f353c8` | ⚠️ Unaudited |
| WstETHPriceFeedEthereum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4329e2...c5d8b0` | ⚠️ Unaudited |
| ZeroBalanceFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x3aae99...94ee51`; ethereum `0x48bd85...b1d1e6`; ethereum `0x759ddf...048e6e`; ethereum `0xb5c14b...0be9c9`; ethereum `0xbc2907...474efb` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xc50b2d...65c64b` | PlasmaVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x43a32d...4a1e68` | PlasmaVaultBase | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 209 |
| upstream | 10 |
| standard_library | 0 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
