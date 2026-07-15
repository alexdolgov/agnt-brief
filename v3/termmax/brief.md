# Agentic Audit Brief: TermMax

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 14 (0 matched; 14 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: TermMax (`termmax`)
- Website: [https://ts.finance/termmax/](https://ts.finance/termmax/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, berachain, bsc, ethereum
- Contract surface: 486 unique implementations (486 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $65,659,105.66
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for TermMax. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 8 contract row(s) across arbitrum, base, berachain, bsc, ethereum. Structural roles: 5 core, 2 infra, 1 supporting. 4 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 8
- Structural roles: core (5), infra (2), supporting (1)
- Contract kinds: contract (8)
- Detected standards: erc1967proxy (3), ownable (2), ownable2step (2), pausable (1)
- Frameworks: openzeppelin (7), chainlink (3), openzeppelin-upgradeable (2), uniswap-v3 (1)
- Upgradeable-pattern rows: 4

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Indexed contracts: 8; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 64 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 422 discovered implementations excluded (0 third-party/infra; 111 standard proxy/library)
- Proxy deployments represented within implementation groups: 153
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All verified address-book-owned implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 486
- Raw deployments: 486
- Audits discovered: 14 (14 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-12 (fresh)
- Audit staleness (calendar age): 3 fresh, 3 aging, 6 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (483)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccessManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x22013d...477cf3` | ⚠️ Unaudited |
| AccessManagerV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-258598 | `0xda4aaf...7acfdf` | ⚠️ Unaudited |
| AccessManagerV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | bsc | unit-258631 | `0x949876...ec793d` | ⚠️ Unaudited |
| AccessManagerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0005d1...a181e3` | ⚠️ Unaudited |
| AccessManagerV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | arbitrum | unit-258621 | `0xfad175...b04b9c` | ⚠️ Unaudited |
| AccountFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d0fc7...a2e75a` | ⚠️ Unaudited |
| AcreAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a6092...587ae0` | ⚠️ Unaudited |
| acreBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c0391...69d9d5` | ⚠️ Unaudited |
| AcreBtcCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b0fdf...fe701e` | ⚠️ Unaudited |
| AcreBtcDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c727b...4bb837` | ⚠️ Unaudited |
| AddressFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d8a9d...17d1d3` | ⚠️ Unaudited |
| AddressProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20ee00...e38cc7` | ⚠️ Unaudited |
| AmazingLiquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f6568...130362` | ⚠️ Unaudited |
| AmazingLiquidatorPt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35c146...28443f` | ⚠️ Unaudited |
| AuctionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68fe80...ba5366` | ⚠️ Unaudited |
| AvsOperator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8969d7...3960f5` | ⚠️ Unaudited |
| BNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a3938...687242` | ⚠️ Unaudited |
| BoringVaultPriceProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x130e22...3a0729` | ⚠️ Unaudited |
| BullionEnumerableNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x62bee1...cc368c` | ⚠️ Unaudited |
| BullionMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29646a...2776b4` | ⚠️ Unaudited |
| BullionNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52a6dd...d2f9dc` | ⚠️ Unaudited |
| Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca0641...febeb7` | ⚠️ Unaudited |
| Create2Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x652199...92ba62` | ⚠️ Unaudited |
| CumulativeMerkleDrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26542f...dd0c65` | ⚠️ Unaudited |
| cUSDO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a3e55...ee0102` | ⚠️ Unaudited |
| CustomAggregatorV3CompatibleFeedDiscounted | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x438630...95dc99` | ⚠️ Unaudited |
| CustomerManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0978aa...e3f004` | ⚠️ Unaudited |
| DadFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01c110...db072d` | ⚠️ Unaudited |
| DaiFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf07674...69ebbb` | ⚠️ Unaudited |
| DataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01b16e...18f003` | ⚠️ Unaudited |
| depositRootGenerator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10f2c5...c561d6` | ⚠️ Unaudited |
| DepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e0eb6...d80847` | ⚠️ Unaudited |
| DSChief | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e2a84...057152` | ⚠️ Unaudited |
| DSChiefFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e7ca0...8f1483` | ⚠️ Unaudited |
| DSToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x068083...cc5523` | ⚠️ Unaudited |
| eBtcRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81be35...31b523` | ⚠️ Unaudited |
| EETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b47a6...eff72f` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x1c6c0b...a5018c` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x823888...823bfe` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xd9a442...306a72` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | berachain | n/a | `0x0b3025...4e82da` | ⚠️ Unaudited |
| ERC4626VaultAdapter | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-258584 | `0x85ce30...1244f6` | ⚠️ Unaudited |
| ERC4626VaultAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2c5d57...328292` | ⚠️ Unaudited |
| ERC4626VaultAdapter | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-258616 | `0xa50929...f72546` | ⚠️ Unaudited |
| ERC4626VaultAdapterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x133bf4...70e294` | ⚠️ Unaudited |
| EtherealPreDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90d2af...74cc8f` | ⚠️ Unaudited |
| eUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4089dc...0cbe27` | ⚠️ Unaudited |
| EvacuationFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x882abf...d83a72` | ⚠️ Unaudited |
| EvacuVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c7df3...cc4467` | ⚠️ Unaudited |
| Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5a5f1...f2322b` | ⚠️ Unaudited |
| FallbackReserveFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20377b...5e28ab` | ⚠️ Unaudited |
| Faucet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x276c0e...a75dec` | ⚠️ Unaudited |
| FiatToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8cbde2...77a91a` | ⚠️ Unaudited |
| FiatTokenProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa0b869...06eb48` | ⚠️ Unaudited |
| FiatTokenUtil | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6315aa...0355a6` | ⚠️ Unaudited |
| FiatTokenV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x088247...57fe56` | ⚠️ Unaudited |
| FiatTokenV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7277a...3778a2` | ⚠️ Unaudited |
| FiatTokenV2_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2327a...4cbdcf` | ⚠️ Unaudited |
| FlashLoanFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb629c...185b8c` | ⚠️ Unaudited |
| GearingTokenWithERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x022e7d...2f8d5e` | ⚠️ Unaudited |
| GemFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x431e93...845692` | ⚠️ Unaudited |
| GemPit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69076e...83c275` | ⚠️ Unaudited |
| globalIndexLibrary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x325ea0...c85fb9` | ⚠️ Unaudited |
| hypeBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48599a...c83459` | ⚠️ Unaudited |
| HypeBtcCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x910cde...4a6f4c` | ⚠️ Unaudited |
| HypeBtcDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x389035...bbcac4` | ⚠️ Unaudited |
| hypeETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x140e71...1ff8ab` | ⚠️ Unaudited |
| HypeEthDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ed03d...fcd463` | ⚠️ Unaudited |
| HypeEthDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x109e2a...f6867c` | ⚠️ Unaudited |
| HypeUsdDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d874a...7f3a9e` | ⚠️ Unaudited |
| HypeUsdRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x33ed48...3c6fa9` | ⚠️ Unaudited |
| InankrETHRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8bc731...174ddb` | ⚠️ Unaudited |
| IncbETHRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1bb72...3f7a45` | ⚠️ Unaudited |
| InceptionBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f696f...a33eaf` | ⚠️ Unaudited |
| InceptionLibrary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a6a8a...d69f66` | ⚠️ Unaudited |
| InceptionRatioFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2356d4...3941bd` | ⚠️ Unaudited |
| InceptionRestaker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02e2fc...3a33f0` | ⚠️ Unaudited |
| InceptionTimeLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x650bd9...a8fb1e` | ⚠️ Unaudited |
| InceptionToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1aee5e...7649e2` | ⚠️ Unaudited |
| InETHxRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd812ba...2ba2fc` | ⚠️ Unaudited |
| InlsETHRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20f6d8...f09c36` | ⚠️ Unaudited |
| InmETHRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa22a7a...d57707` | ⚠️ Unaudited |
| InoETHRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbd6000...a3b38b` | ⚠️ Unaudited |
| InosETHRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f2784...bffe8c` | ⚠️ Unaudited |
| InrETHRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6d553...1e9f66` | ⚠️ Unaudited |
| InrEthVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63590b...e69aba` | ⚠️ Unaudited |
| InsfrxETHRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07f869...c13b1e` | ⚠️ Unaudited |
| InslisBNBRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc88b97...0e391c` | ⚠️ Unaudited |
| InstETHRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x343281...d5de39` | ⚠️ Unaudited |
| InstEthVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64a6c9...a9b84d` | ⚠️ Unaudited |
| InswETHRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xebfa03...d1e721` | ⚠️ Unaudited |
| IntBTCBNBRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12181a...c6a07f` | ⚠️ Unaudited |
| InVault_E1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1aa53b...d59f12` | ⚠️ Unaudited |
| InVault_E2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4fbf33...1def36` | ⚠️ Unaudited |
| InVault_S_E2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xebc5b1...63ee53` | ⚠️ Unaudited |
| InwbETHRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69c59c...050eb1` | ⚠️ Unaudited |
| JIV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x334b32...3e3d42` | ⚠️ Unaudited |
| JivCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x540f33...5d57ff` | ⚠️ Unaudited |
| KarakReserveManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x329f91...2d3151` | ⚠️ Unaudited |
| KodiakSwapAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x503601...bebd2b` | ⚠️ Unaudited |
| L1LineaReceiverETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x332754...ef27f1` | ⚠️ Unaudited |
| LevelMinting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84c035...05a44f` | ⚠️ Unaudited |
| LevelReserveLens | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x297599...e2cbad` | ⚠️ Unaudited |
| LevelReserveManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70d544...31fcef` | ⚠️ Unaudited |
| LeveragedQQQon | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x985de6...2f25f7` | ⚠️ Unaudited |
| LeveragedQQQonCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2163f6...ab5e36` | ⚠️ Unaudited |
| LeveragedQQQonDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29de44...c05c20` | ⚠️ Unaudited |
| LeveragedQQQonDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15e6fb...0c29e4` | ⚠️ Unaudited |
| LeveragedQQQonRedemptionVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x7aad8e...67e191` | ⚠️ Unaudited |
| LifiSwapAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4eba5e...7666d2` | ⚠️ Unaudited |
| LiquidityPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02656f...bac65b` | ⚠️ Unaudited |
| Liquifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2225c9...6b6ed3` | ⚠️ Unaudited |
| LoanFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1e357...f332b9` | ⚠️ Unaudited |
| LoyaltyPointsMarketSafe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d716d...f2cd24` | ⚠️ Unaudited |
| LRTSquare | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d987e...9a16a2` | ⚠️ Unaudited |
| LRTSquared | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x138f08...ea7743` | ⚠️ Unaudited |
| LRTSquaredAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd2b8c7...d02ff5` | ⚠️ Unaudited |
| LRTSquaredCore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1cb489...1957de` | ⚠️ Unaudited |
| lvlUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c1156...5aaf37` | ⚠️ Unaudited |
| MakerHelper | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-258580 | `0x513690...5dce92` | ⚠️ Unaudited |
| MakerHelper | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | bsc | unit-258649 | `0x066b58...9745ab` | ⚠️ Unaudited |
| MakerHelper | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | arbitrum | unit-258608 | `0x1ee3fa...73bf5c` | ⚠️ Unaudited |
| MakerHelper | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | berachain | unit-258644 | `0xbb3518...03423d` | ⚠️ Unaudited |
| MApolloCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x562bb5...420c55` | ⚠️ Unaudited |
| MApolloDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d371c...e4999c` | ⚠️ Unaudited |
| MarketViewer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x103402...f4f66c` | ⚠️ Unaudited |
| MarketViewer | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | berachain | unit-258646 | `0xfa8be6...8a6caf` | ⚠️ Unaudited |
| MasterMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x566c11...674335` | ⚠️ Unaudited |
| MBasisCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54d478...d439d0` | ⚠️ Unaudited |
| MBtcCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b904f...fd49c7` | ⚠️ Unaudited |
| MBtcDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f5b02...e887c9` | ⚠️ Unaudited |
| mEDGE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39c189...74fb87` | ⚠️ Unaudited |
| MEdgeCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x039150...c0ea2f` | ⚠️ Unaudited |
| MEdgeDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x057a3a...56a7d1` | ⚠️ Unaudited |
| MEdgeDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc904de...a73cc6` | ⚠️ Unaudited |
| MEdgeRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6142ad...cc3ad5` | ⚠️ Unaudited |
| Members | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e8640...107ac5` | ⚠️ Unaudited |
| MembershipManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x047a77...f15889` | ⚠️ Unaudited |
| MembershipNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x290d98...307106` | ⚠️ Unaudited |
| MetaMorpho | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2371e1...740618` | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x701907...8ce4ef` | ⚠️ Unaudited |
| mevBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x781367...e629a4` | ⚠️ Unaudited |
| MevBtcCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x931403...0a5b43` | ⚠️ Unaudited |
| MevBtcDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3549f6...f44b3c` | ⚠️ Unaudited |
| MevBtcRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x265041...d6ab3c` | ⚠️ Unaudited |
| MEvUsdDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06e727...75cf26` | ⚠️ Unaudited |
| MFarmDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x313c76...b78164` | ⚠️ Unaudited |
| MFarmRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb73d1e...411e89` | ⚠️ Unaudited |
| MFOneDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c3291...59fbfd` | ⚠️ Unaudited |
| MFOneRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d98b6...ff6c47` | ⚠️ Unaudited |
| mHYPER | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10e235...1080fb` | ⚠️ Unaudited |
| MHyperBtcCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c7a74...d085de` | ⚠️ Unaudited |
| MHyperBtcDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f6e58...959393` | ⚠️ Unaudited |
| MHyperBtcDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbccac5...895a52` | ⚠️ Unaudited |
| MHyperDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa62249...130e5e` | ⚠️ Unaudited |
| MHyperEthCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c6808...2e9850` | ⚠️ Unaudited |
| MHyperEthDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f4e7d...c74834` | ⚠️ Unaudited |
| MHyperRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x570c15...505e47` | ⚠️ Unaudited |
| MidasLzMintBurnOFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x55b40c...2349c6` | ⚠️ Unaudited |
| MidasTimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3eee3...241852` | ⚠️ Unaudited |
| MintableERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x009969...daf44f` | ⚠️ Unaudited |
| MintableERC20V2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x199aea...5ea53a` | ⚠️ Unaudited |
| Minter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x344363...1a0e2f` | ⚠️ Unaudited |
| MLiquidityCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b805d...f5a522` | ⚠️ Unaudited |
| MLiquidityDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67e14d...aaefac` | ⚠️ Unaudited |
| MLiquidityRedemptionVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e5aab...634c9e` | ⚠️ Unaudited |
| MMevDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ff00e...080d81` | ⚠️ Unaudited |
| MMevDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac5c4d...50e5e5` | ⚠️ Unaudited |
| MMevRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x482d1e...0d00cb` | ⚠️ Unaudited |
| MomFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x141a20...3669ea` | ⚠️ Unaudited |
| mPortofino | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x636cdf...d060b9` | ⚠️ Unaudited |
| MPortofinoRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9111d...0b0c31` | ⚠️ Unaudited |
| MRe7BtcCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x091f97...af383b` | ⚠️ Unaudited |
| MRe7BtcRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d9953...875615` | ⚠️ Unaudited |
| MRe7DepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53c764...ed62d8` | ⚠️ Unaudited |
| MSlDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x521f61...6ccb2f` | ⚠️ Unaudited |
| MSlRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d1c52...1762fc` | ⚠️ Unaudited |
| MSyrupUsdDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x307be9...057a8b` | ⚠️ Unaudited |
| msyrupUSDp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2530e3...567ea5` | ⚠️ Unaudited |
| MSyrupUsdpCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e2165...7a3fc4` | ⚠️ Unaudited |
| MSyrupUsdpRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5113bf...e1cc91` | ⚠️ Unaudited |
| MSyrupUsdtCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e9dbc...e4d70c` | ⚠️ Unaudited |
| MSyrupUsdtDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ca035...cd94bc` | ⚠️ Unaudited |
| MSyrupUsdtRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1314fb...1d2084` | ⚠️ Unaudited |
| mTBILL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7ab67...25897c` | ⚠️ Unaudited |
| MTBillDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e0357...490ada` | ⚠️ Unaudited |
| MTokenMain | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x123ffe...58d9e1` | ⚠️ Unaudited |
| MTokenMessager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24ce2a...028c7e` | ⚠️ Unaudited |
| MTokenMessagerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x102874...5fb878` | ⚠️ Unaudited |
| MTokenMessenger | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0be916...8f68c5` | ⚠️ Unaudited |
| MTokenMessengerLZ | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xb350d8...a6386f` | ⚠️ Unaudited |
| MTokenMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5fd20e...296cef` | ⚠️ Unaudited |
| Multicall3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7165c2...cd83d7` | ⚠️ Unaudited |
| MWildUsdCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19623f...77851e` | ⚠️ Unaudited |
| MWildUsdDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d8f82...b2ccd0` | ⚠️ Unaudited |
| MWildUsdDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa70009...e07b41` | ⚠️ Unaudited |
| NetworkRestakeResetHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x274bbd...cb2fc8` | ⚠️ Unaudited |
| ObeatUsdLzElevatedMinterBurner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07cf28...1ff579` | ⚠️ Unaudited |
| OdosV2Adapter | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-258575 | `0x2afef2...bf1779` | ⚠️ Unaudited |
| OdosV2Adapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0d64b9...cbe496` | ⚠️ Unaudited |
| OdosV2Adapter | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-258613 | `0x7de4ef...83e748` | ⚠️ Unaudited |
| OdosV2AdapterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x131f63...eecc86` | ⚠️ Unaudited |
| OkxSwapAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0b22d6...e18e0e` | ⚠️ Unaudited |
| OndoSwapAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16f6da...50eff4` | ⚠️ Unaudited |
| OneInchSwapAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x060352...78a3b8` | ⚠️ Unaudited |
| OnlyDeliveryGearingToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb0b11e...df404d` | ⚠️ Unaudited |
| OracleAggregator | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-258601 | `0xe3a316...2c1ade` | ⚠️ Unaudited |
| OracleAggregator | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-258637 | `0xc7de1a...9a6d37` | ⚠️ Unaudited |
| OracleAggregator | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-258609 | `0x2e1c76...bf98aa` | ⚠️ Unaudited |
| OracleAggregatorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16110f...9fabc2` | ⚠️ Unaudited |
| OracleAggregatorV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-258603 | `0xedb5df...c2c612` | ⚠️ Unaudited |
| OracleAggregatorV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | berachain | unit-258645 | `0xf5c666...d85d65` | ⚠️ Unaudited |
| OracleAggregatorWithSequencerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc1114e...b2caad` | ⚠️ Unaudited |
| OrderManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x03c4fc...92acb9` | ⚠️ Unaudited |
| OrderManagerV1Plus | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x014544...c84c73` | ⚠️ Unaudited |
| OrderManagerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x103402...f4f66c` | ⚠️ Unaudited |
| PancakeSmartAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x043516...41d14b` | ⚠️ Unaudited |
| PendlePrincipalToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x113206...103589` | ⚠️ Unaudited |
| PendleSwapV3Adapter | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-258574 | `0x0b3025...4e82da` | ⚠️ Unaudited |
| PendleSwapV3Adapter | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-258618 | `0xb0eccb...284a8b` | ⚠️ Unaudited |
| PreOrder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b7a14...97ff44` | ⚠️ Unaudited |
| PreTMX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x667519...fcada5` | ⚠️ Unaudited |
| PriceFeedFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x057b80...266733` | ⚠️ Unaudited |
| PriceFeedFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-258594 | `0xcac930...0da844` | ⚠️ Unaudited |
| PriceProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28a6e7...c1f32f` | ⚠️ Unaudited |
| ProtocolParamsFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x842832...b44cb6` | ⚠️ Unaudited |
| ProtocolRevenueManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf8749...e0d322` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10d9a4...ff8110` | ⚠️ Unaudited |
| RedemptionVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f1372...14975f` | ⚠️ Unaudited |
| RedemptionVaultWIthBUIDL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe123eb...ccc7e9` | ⚠️ Unaudited |
| RedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x283cbe...e32f39` | ⚠️ Unaudited |
| RedemptionVaultWithUSTB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x489a79...40d701` | ⚠️ Unaudited |
| RegulationsManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1fcb83...2cd0b4` | ⚠️ Unaudited |
| RewardsDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf2ed5f...249a1a` | ⚠️ Unaudited |
| RollupFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x09e014...837cf9` | ⚠️ Unaudited |
| RsEthAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd52ba0...baab2a` | ⚠️ Unaudited |
| Safe | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-258583 | `0x8409a9...d47e8f` | ⚠️ Unaudited |
| SafeProxy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-258647 | `0x719e77...c1cf79` | ⚠️ Unaudited |
| SEthFiStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76c57e...805ad8` | ⚠️ Unaudited |
| SimpleAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x69340d...fe1dff` | ⚠️ Unaudited |
| StableERC4626For4626 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x609f20...d74cab` | ⚠️ Unaudited |
| StableERC4626ForCustomize | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b3838...56d14a` | ⚠️ Unaudited |
| StableERC4626ForVenus | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x437e7b...a1dacd` | ⚠️ Unaudited |
| StakedlvlUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4737d9...4067ae` | ⚠️ Unaudited |
| StakedUSDeAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce2326...bd0cea` | ⚠️ Unaudited |
| StakedUSDeV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d39a5...7a3497` | ⚠️ Unaudited |
| StakingManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ad639...72fa1e` | ⚠️ Unaudited |
| STBT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24f5b8...0fc948` | ⚠️ Unaudited |
| StbtTimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0eb8f1...7b6f47` | ⚠️ Unaudited |
| STBTv2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f0868...5a37aa` | ⚠️ Unaudited |
| SwapAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xda4aaf...7acfdf` | ⚠️ Unaudited |
| Swapper1InchV6 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x747cac...52232e` | ⚠️ Unaudited |
| SyrupAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad298d...ac8493` | ⚠️ Unaudited |
| SyrupUSDCAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa869cb...198b67` | ⚠️ Unaudited |
| TACmBtcDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x570f37...5bbc08` | ⚠️ Unaudited |
| TACmBtcRedemptionVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6808e4...9ccdf4` | ⚠️ Unaudited |
| TACmEDGE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c5b87...7aa26c` | ⚠️ Unaudited |
| TACmEdgeRedemptionVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x375af4...ae36d8` | ⚠️ Unaudited |
| TACmMEV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d3147...910202` | ⚠️ Unaudited |
| TapFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x521c42...51f14f` | ⚠️ Unaudited |
| tBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4eed11...fde211` | ⚠️ Unaudited |
| TerminalVaultAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ae453...a49c7f` | ⚠️ Unaudited |
| TermMax4626Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05e777...47eba1` | ⚠️ Unaudited |
| TermMax4626Factory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-258597 | `0xd594eb...1151fa` | ⚠️ Unaudited |
| TermMax4626Factory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-258625 | `0x67dcdc...324129` | ⚠️ Unaudited |
| TermMax4626Factory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-258620 | `0xe306a0...aeb217` | ⚠️ Unaudited |
| TermMax4626Factory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | berachain | unit-258639 | `0x3d2c21...a5db93` | ⚠️ Unaudited |
| TermMaxBeefySharePriceFeedAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x349e28...e885b7` | ⚠️ Unaudited |
| TermMaxFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-258578 | `0x37ba99...043dbc` | ⚠️ Unaudited |
| TermMaxFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-258630 | `0x8df05e...f12019` | ⚠️ Unaudited |
| TermMaxFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x14920e...fca096` | ⚠️ Unaudited |
| TermMaxFactoryV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-258593 | `0xc53ab7...810987` | ⚠️ Unaudited |
| TermMaxFactoryV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-258633 | `0x96839e...95fc2b` | ⚠️ Unaudited |
| TermMaxFactoryV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-258638 | `0xdffe6d...2573b5` | ⚠️ Unaudited |
| TermMaxFactoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x08c50b...8f5fd1` | ⚠️ Unaudited |
| TermMaxFactoryV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-258607 | `0x18b8a9...c2e301` | ⚠️ Unaudited |
| TermMaxFactoryV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | berachain | unit-258640 | `0x4bc4f8...670f7f` | ⚠️ Unaudited |
| TermMaxMarket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03f2af...6f6e1a` | ⚠️ Unaudited |
| TermMaxMarketV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a63f8...6486bc` | ⚠️ Unaudited |
| TermMaxOndoPriceFeedAdapterFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03301c...7a031c` | ⚠️ Unaudited |
| TermMaxOrder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1649e4...a36fd6` | ⚠️ Unaudited |
| TermMaxOrderV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x22013d...477cf3` | ⚠️ Unaudited |
| TermMaxPriceFeedFactoryV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-258606 | `0xfd9b5e...a7de2b` | ⚠️ Unaudited |
| TermMaxPriceFeedFactoryV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-258623 | `0x353e12...3f68fd` | ⚠️ Unaudited |
| TermMaxPriceFeedFactoryV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-258610 | `0x4acdd5...7560b9` | ⚠️ Unaudited |
| TermMaxPriceFeedFactoryV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | berachain | unit-258641 | `0x5832cc...c10366` | ⚠️ Unaudited |
| TermMaxRewardContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb2c53e...13e394` | ⚠️ Unaudited |
| TermMaxRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x2afef2...bf1779` | ⚠️ Unaudited |
| TermMaxRouter_Repay_Gt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x04b945...8ef588` | ⚠️ Unaudited |
| TermMaxRouter_V1_1_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1159bf...69eb8f` | ⚠️ Unaudited |
| TermMaxRouter_V1_1_2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-258592 | `0xc47591...79fb11` | ⚠️ Unaudited |
| TermMaxRouter_V1_1_2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x38832f...e7f8f5` | ⚠️ Unaudited |
| TermMaxRouter_V1_1_2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | bsc | unit-258635 | `0xb7634d...2704a4` | ⚠️ Unaudited |
| TermMaxRouter_V1_1_2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | arbitrum | unit-258614 | `0x7fa333...b0322e` | ⚠️ Unaudited |
| TermMaxSwapAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x09bb81...5073dc` | ⚠️ Unaudited |
| TermMaxUSPCPriceFeedAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf71127...f66dd8` | ⚠️ Unaudited |
| TermMaxVault | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-258585 | `0x984408...b735d1` | ⚠️ Unaudited |
| TermMaxVault | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-258599 | `0xdeb8a9...6a1f6e` | ⚠️ Unaudited |
| TermMaxVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x14920e...fca096` | ⚠️ Unaudited |
| TermMaxVault | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-258627 | `0x86c958...0eca51` | ⚠️ Unaudited |
| TermMaxVault | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-258629 | `0x89653e...96dfad` | ⚠️ Unaudited |
| TermMaxVault | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-258615 | `0x8c5161...5fcadc` | ⚠️ Unaudited |
| TermMaxVault | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-258619 | `0xc94b75...dd11b3` | ⚠️ Unaudited |
| TermMaxVaultFactoryV1Plus | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a9ecf...e2fa61` | ⚠️ Unaudited |
| TermMaxVaultFactoryV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-258581 | `0x5b8b26...24f027` | ⚠️ Unaudited |
| TermMaxVaultFactoryV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-258622 | `0x140104...0f170b` | ⚠️ Unaudited |
| TermMaxVaultFactoryV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-258636 | `0xc63858...1548eb` | ⚠️ Unaudited |
| TermMaxVaultFactoryV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-258617 | `0xa7c931...84c5eb` | ⚠️ Unaudited |
| TermMaxVaultFactoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x03c4fc...92acb9` | ⚠️ Unaudited |
| TermMaxVaultFactoryV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | berachain | unit-258642 | `0x65fc69...090ef1` | ⚠️ Unaudited |
| TermMaxVaultV1Plus | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d9d09...5e6b9b` | ⚠️ Unaudited |
| TermMaxVaultV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x03c4fc...92acb9` | ⚠️ Unaudited |
| TermMaxViewer | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-258604 | `0xf574c1...babf09` | ⚠️ Unaudited |
| TermMaxViewer | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | bsc | unit-258626 | `0x809060...06580c` | ⚠️ Unaudited |
| TermMaxViewer | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | arbitrum | unit-258648 | `0x012bfc...595dff` | ⚠️ Unaudited |
| TermMaxWeETHPriceCapAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9bba8a...adc6a0` | ⚠️ Unaudited |
| TermMaxXauePricefeedAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71fcb2...d66bca` | ⚠️ Unaudited |
| TERPOC | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2022be...6a877d` | ⚠️ Unaudited |
| tETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72cca9...761e96` | ⚠️ Unaudited |
| TEthCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42e82b...1215b5` | ⚠️ Unaudited |
| TEthDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x46eab5...d09e78` | ⚠️ Unaudited |
| TEthRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc32652...750ebf` | ⚠️ Unaudited |
| TNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c377a...f11708` | ⚠️ Unaudited |
| TokenFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d7598...d66bbc` | ⚠️ Unaudited |
| TopFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0eda20...733ed4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x007115...ef7d9d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x016e07...da2a5f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0295e0...a5ae46` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x030b69...6a0bf3` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0312a9...19ac4b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x03fda2...f26ec3` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x056339...6b2e5b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x09740e...728378` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0a2a51...722395` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0aecdf...6f4802` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0d89c1...17d123` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0f50b4...4e49c0` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x10cc8d...f693bd` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x12570b...acfc68` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x141f0e...9172b1` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x15a4c3...ee3862` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x15f724...348c57` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x1615cb...5d76e4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x164645...b146dd` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x16d4f9...7cdb67` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x18f7f9...ee8648` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x19ab19...ca9f0b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x1a57ab...e128cc` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x1ce3e1...0955dd` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x1fe179...9291c7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x202266...683464` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x20c548...1c5bee` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x21f3bc...0ea749` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x238a70...e466ba` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x27c0d4...7780b8` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x27e120...5985c2` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x27e6f2...1b0ea7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x2a8c22...88b656` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x2ce151...574b43` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x2db1ec...fe0085` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x2ddc91...8e91c6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x2f98a1...8091d6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x307267...589fd0` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x30acce...338c06` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x30d9d1...3efc1a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x319a05...3d5106` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x33757a...f43ee7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x34031e...dfd0dd` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x37769a...7af6ae` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x39592b...69ae4d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x39f050...341455` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x3b099b...6b7f24` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x3de2e7...42f5d4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x414384...a0c3de` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x41c607...efa663` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x43881b...005f68` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x48e284...bb49c4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x4bcfda...95001a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x513bd4...1aaf9a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x5356b8...565234` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x545522...498c2a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x548857...92785b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x5572eb...062d78` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x568143...de744f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x5696b6...e966af` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x57b3be...9ecdab` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x5a096a...90bf1d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x5a4286...a2e0c1` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x5ad2e3...8d2dfa` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x5aea6d...6af5c0` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x5e1549...0e47f6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x5f09af...e55d61` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x605a84...18db0a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x649f86...986aeb` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x65c4e0...0f15ca` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x65df72...df039b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x66c559...49566c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x6d62d3...4823b6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x6e17a8...d93322` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x6f149f...94aa35` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x6f51d8...e83be6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x711077...03ce75` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x76cc16...3f7bbd` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x783339...33cfb6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x7a4c56...41b3b8` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x7cf9de...116c05` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x7d5b8a...b040bb` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x7e8c63...34da93` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x81c097...7f6f42` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x841eeb...24e29a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x8493f1...73789a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x87c905...afb0cf` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x88956c...264403` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x8d51db...50e68c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x8f382a...ee1386` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x92004d...6decde` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x9a5cf6...2d8387` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x9aebf5...bdd358` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x9c3743...ac446f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x9f49b0...ff9524` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x9f7dd5...e2f972` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x9fb442...9f661a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xa01227...dea417` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xa19f6e...f5eca6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xa48cfd...eee17f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xafcc1c...a352b5` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xb5d648...74186d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xbdc030...74f15c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xbf2a93...7e6e7c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xc344db...4f2368` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xc8495e...783085` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xd78987...5da146` | ⚠️ Unaudited |
| TsbFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10a73b...68d295` | ⚠️ Unaudited |
| TubFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3b670...d1b987` | ⚠️ Unaudited |
| TUsdeCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f0c37...01d526` | ⚠️ Unaudited |
| TUsdeDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x507f40...a029d0` | ⚠️ Unaudited |
| TUsdeRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ac3e6...77a603` | ⚠️ Unaudited |
| UniswapV3Adapter | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-258577 | `0x34f7b5...123c0b` | ⚠️ Unaudited |
| UniswapV3Adapter | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-258611 | `0x609f20...d74cab` | ⚠️ Unaudited |
| UpgradeableSTBT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32a67b...60528f` | ⚠️ Unaudited |
| USDe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c9edd...1e68b3` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0ef8fa...42d705` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1b7a4c...736fff` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x200057...d903a2` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2093bb...a37a6a` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2ecd15...2fab81` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x46c4ab...cc29a8` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x57aaf0...bb6a41` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x857b4f...d16f8b` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xcd5fe2...59b7ee` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xd0ff89...fead1a` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xd5edf7...54e35e` | ⚠️ Unaudited |
| VaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01d8c1...862e3e` | ⚠️ Unaudited |
| VaultFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-258579 | `0x4778cb...20dff5` | ⚠️ Unaudited |
| Verifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23369a...4a86ce` | ⚠️ Unaudited |
| VoxFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x414b1d...2499bf` | ⚠️ Unaudited |
| WBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2260fa...c2c599` | ⚠️ Unaudited |
| WETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x353f89...c4bf52` | ⚠️ Unaudited |
| WETH9 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc02aaa...756cc2` | ⚠️ Unaudited |
| WhitelistManager | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-258589 | `0xb84f2a...fbf317` | ⚠️ Unaudited |
| WhitelistManager | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | bsc | unit-258624 | `0x6119e2...5704f1` | ⚠️ Unaudited |
| WhitelistManager | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | arbitrum | unit-258612 | `0x7a5719...e51d43` | ⚠️ Unaudited |
| WhitelistManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x2c5d57...328292` | ⚠️ Unaudited |
| WhitelistManager | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | berachain | unit-258643 | `0x6cf2b7...9ce308` | ⚠️ Unaudited |
| WithdrawRequestNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ed97c...0a9cd4` | ⚠️ Unaudited |
| WrappedEEthAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c3f5f...1fcb69` | ⚠️ Unaudited |
| WrappedRebasingERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78c6b2...1f5e33` | ⚠️ Unaudited |
| WSTBT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x288a80...bc4c83` | ⚠️ Unaudited |
| WstETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f39c5...5e2ca0` | ⚠️ Unaudited |
| wstETH_Burner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7581e...9b2a0f` | ⚠️ Unaudited |
| WstEthAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa74f99...dbb9d7` | ⚠️ Unaudited |
| WstETHPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdce393...328219` | ⚠️ Unaudited |
| wUSDO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82b09f...791c04` | ⚠️ Unaudited |
| XERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x425bbf...2f2180` | ⚠️ Unaudited |
| XERC20Lockbox | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c8588...047f37` | ⚠️ Unaudited |
| ZeroGBtcvCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f2115...cb9e9a` | ⚠️ Unaudited |
| ZeroGEthvDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac79fe...deb0fe` | ⚠️ Unaudited |
| ZeroGEthvDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01feb0...e6afcc` | ⚠️ Unaudited |
| ZeroGEthvRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x364fb0...e049aa` | ⚠️ Unaudited |
| zeroGUSDV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x733ace...5fa347` | ⚠️ Unaudited |
| ZeroGUsdvCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8cf944...442aab` | ⚠️ Unaudited |
| ZeroGUsdvDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x091074...080e8a` | ⚠️ Unaudited |
| ZkTrueUpInit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b8b78...07b738` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (3)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-258628 | `0x883192...18f853` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-258632 | `0x954529...d322d1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-258634 | `0xa71500...a2a856` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [ABDK_Term_Structure_Audit_Report_Circom_v_1_0_20230829.pdf](https://github.com/term-structure/audits/blob/main/Term-Structure-protocol(sunset)/ABDK/ABDK_Term_Structure_Audit_Report_Circom_v_1_0_20230829.pdf) | ABDK | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 26 | high |
| [ABDK_Term_Structure_Audit_Report_Solidity_v_1_0_20230829.pdf](https://github.com/term-structure/audits/blob/main/Term-Structure-protocol(sunset)/ABDK/ABDK_Term_Structure_Audit_Report_Solidity_v_1_0_20230829.pdf) | ABDK | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 25 | high |
| [ABDK_Term_Structure_Audit_Report_Solidity_v_1_0_PartII_20230927.pdf](https://github.com/term-structure/audits/blob/main/Term-Structure-protocol(sunset)/ABDK/ABDK_Term_Structure_Audit_Report_Solidity_v_1_0_PartII_20230927.pdf) | ABDK | Audit | 2023-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [ABDK_Term_Structure_Audit_Report_v_1_0_20240508.pdf](https://github.com/term-structure/audits/blob/main/Term-Structure-protocol(sunset)/ABDK/ABDK_Term_Structure_Audit_Report_v_1_0_20240508.pdf) | ABDK | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 43 | high |
| [HashCloak_Term_Structure_Audit_Report_Circom_20231020.pdf](https://github.com/term-structure/audits/blob/main/Term-Structure-protocol(sunset)/HashCloak/HashCloak_Term_Structure_Audit_Report_Circom_20231020.pdf) | HashCloak | Audit | 2023-10 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [HashCloak_Term_Structure_Audit_Report_Solidity_20231020.pdf](https://github.com/term-structure/audits/blob/main/Term-Structure-protocol(sunset)/HashCloak/HashCloak_Term_Structure_Audit_Report_Solidity_20231020.pdf) | HashCloak | Audit | 2023-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [TermMax-ABDK-audit-report-Phase1-v2.pdf](https://github.com/term-structure/audits/blob/main/TermMax/TermMax-ABDK-audit-report-Phase1-v2.pdf) | ABDK | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [TermMax-ABDK-audit-report-Phase2.pdf](https://github.com/term-structure/audits/blob/main/TermMax/TermMax-ABDK-audit-report-Phase2.pdf) | ABDK | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 41 | high |
| [TermMax-ABDK-audit-report-Phase3-v2.pdf](https://github.com/term-structure/audits/blob/main/TermMax/TermMax-ABDK-audit-report-Phase3-v2.pdf) | ABDK | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 29 | high |
| [TermMax-ABDK-audit-report-TMX-v-1-0.pdf](https://github.com/term-structure/audits/blob/main/TermMax/TermMax-ABDK-audit-report-TMX-v-1-0.pdf) | ABDK | Audit | 2025-12 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [TermMax-Cantina-competition-20250320.pdf](https://github.com/term-structure/audits/blob/main/TermMax/TermMax-Cantina-competition-20250320.pdf) | Spearbit | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 9 | medium |
| [Audit Reports](https://github.com/term-structure/audits) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Spearbit](https://cantina.xyz/competitions/205f8ca3-27fc-4da2-a2e6-0d43e1c60a41) | Spearbit | Contest | 2024-12 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 25 | high |
| [DeFiSafety](https://defisafety.com/app/pqrs/613) | DeFiSafety | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [18369] ABDK_Term_Structure_Audit_Report_Circom_v_1_0_20230829.pdf — no match: Extracted 26 circuit files from the Project Scope section. Audit date from changelog: 29.08.23.
- [18370] ABDK_Term_Structure_Audit_Report_Solidity_v_1_0_20230829.pdf — no match: Extracted contract names from the 'Project scope' section listing files. Audit date from changelog: 29.08.23.
- [18371] ABDK_Term_Structure_Audit_Report_Solidity_v_1_0_PartII_20230927.pdf — no match: Scope section lists 7 files: AccountFacet.sol, EvacuVerifier.sol, ILoanFacet.sol, LoanFacet.sol, RollupFacet.sol, Utils.sol, Verifier.sol. Audit date from changelog: 27.09.23.
- [18372] ABDK_Term_Structure_Audit_Report_v_1_0_20240508.pdf — no match: Extracted from 'Project scope' section listing Circom and Solidity files. Audit date from cover page '8th May 2024'.
- [18373] HashCloak_Term_Structure_Audit_Report_Circom_20231020.pdf — no match: The report focuses on Circom circuits, not smart contracts. No contract names were found in scope.
- [18374] HashCloak_Term_Structure_Audit_Report_Solidity_20231020.pdf — no match: Extracted contract names from files affected in findings. Audit date is the updated date (October 4, 2023) as the delivery date is September 25, 2023 but updated later.
- [18375] TermMax-ABDK-audit-report-Phase1-v2.pdf — no match: Extracted 10 contracts from the scope section (page 6) and file paths. Audit date from changelog: version 2.0 dated 01.10.25 (October 1, 2025).
- [18376] TermMax-ABDK-audit-report-Phase2.pdf — no match: Extracted contract names from the 'Project scope' section which lists files. The audit date is from the changelog and document header: 7th July 2025.
- [18377] TermMax-ABDK-audit-report-Phase3-v2.pdf — no match: Extracted contract names from the 'Project scope' section (pages 9-10) which lists all files in scope. The audit date is from the changelog: version 2.0 dated 01.10.25 (October 1, 2025).
- [18378] TermMax-ABDK-audit-report-TMX-v-1-0.pdf — no match: Only one contract, TMX, is explicitly in scope. The report mentions TMX.sol as the audited source file.
- [18379] TermMax-Cantina-competition-20250320.pdf — no match: No explicit scope section found; contract names extracted from findings and test imports. Date from cover page: 'TermMax Competition March20,2025' interpreted as March 20, 2025.
- [18380] Audit Reports — no match: The provided text is a GitHub repository page listing, not an audit report. No contracts, scope, or audit date are identifiable.
- [18381] Spearbit — no match: All contracts listed in the Scope section of the audit report.
- [18382] DeFiSafety — no match: The provided text is a navigation header for DeFiSafety's website, not an audit report. No contracts or audit date are identifiable.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| ABDK_Term_Structure_Audit_Report_Circom_v_1_0_20230829.pdf | spec | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_Circom_v_1_0_20230829.pdf | normal | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_Circom_v_1_0_20230829.pdf | evacuation | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_Circom_v_1_0_20230829.pdf | request | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_Circom_v_1_0_20230829.pdf | mechanism | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_Circom_v_1_0_20230829.pdf | unit | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_Circom_v_1_0_20230829.pdf | unit_set | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_Circom_v_1_0_20230829.pdf | token | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_Circom_v_1_0_20230829.pdf | state | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_Circom_v_1_0_20230829.pdf | sig | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_Circom_v_1_0_20230829.pdf | req | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_Circom_v_1_0_20230829.pdf | prep_req | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_Circom_v_1_0_20230829.pdf | order | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_Circom_v_1_0_20230829.pdf | nullifier | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_Circom_v_1_0_20230829.pdf | fee | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_Circom_v_1_0_20230829.pdf | channel | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_Circom_v_1_0_20230829.pdf | bool | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_Circom_v_1_0_20230829.pdf | account | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_Circom_v_1_0_20230829.pdf | _mod | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_Circom_v_1_0_20230829.pdf | tag_comparators | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_Circom_v_1_0_20230829.pdf | merkle_tree_poseidon | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_Circom_v_1_0_20230829.pdf | indexer | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_Circom_v_1_0_20230829.pdf | fp | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_Circom_v_1_0_20230829.pdf | req_type | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_Circom_v_1_0_20230829.pdf | fmt | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_Circom_v_1_0_20230829.pdf | bits | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_Solidity_v_1_0_20230829.pdf | EvacuationVerifier | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_Solidity_v_1_0_20230829.pdf | Governance | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_Solidity_v_1_0_20230829.pdf | Rolluper | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_Solidity_v_1_0_20230829.pdf | TsbFactory | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_Solidity_v_1_0_20230829.pdf | TsbToken | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_Solidity_v_1_0_20230829.pdf | Verifier | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_Solidity_v_1_0_20230829.pdf | Viewer | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_Solidity_v_1_0_20230829.pdf | ZkTrueUp | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_Solidity_v_1_0_20230829.pdf | Utils | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_Solidity_v_1_0_20230829.pdf | Struct | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_Solidity_v_1_0_20230829.pdf | Storage | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_Solidity_v_1_0_20230829.pdf | Operations | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_Solidity_v_1_0_20230829.pdf | CustomError | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_Solidity_v_1_0_20230829.pdf | Config | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_Solidity_v_1_0_20230829.pdf | Checker | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_Solidity_v_1_0_20230829.pdf | Bytes | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_Solidity_v_1_0_20230829.pdf | IZkTrueUp | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_Solidity_v_1_0_20230829.pdf | IWETH | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_Solidity_v_1_0_20230829.pdf | IVerifier | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_Solidity_v_1_0_20230829.pdf | ITsbToken | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_Solidity_v_1_0_20230829.pdf | ITsbFactory | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_Solidity_v_1_0_20230829.pdf | IPoseidonUnit2 | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_Solidity_v_1_0_20230829.pdf | IGovernance | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_Solidity_v_1_0_20230829.pdf | IFlashLoanReceiver | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_Solidity_v_1_0_20230829.pdf | AggregatorV3Interface | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_Solidity_v_1_0_PartII_20230927.pdf | AccountFacet | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_Solidity_v_1_0_PartII_20230927.pdf | EvacuVerifier | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_Solidity_v_1_0_PartII_20230927.pdf | ILoanFacet | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_Solidity_v_1_0_PartII_20230927.pdf | LoanFacet | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_Solidity_v_1_0_PartII_20230927.pdf | RollupFacet | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_Solidity_v_1_0_PartII_20230927.pdf | Utils | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_Solidity_v_1_0_PartII_20230927.pdf | Verifier | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_v_1_0_20240508.pdf | AccountFacet | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_v_1_0_20240508.pdf | AccountLib | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_v_1_0_20240508.pdf | AccountStorage | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_v_1_0_20240508.pdf | IAccountFacet | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_v_1_0_20240508.pdf | EvacuationFacet | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_v_1_0_20240508.pdf | EvacuationLib | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_v_1_0_20240508.pdf | EvacuationStorage | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_v_1_0_20240508.pdf | IEvacuationFacet | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_v_1_0_20240508.pdf | IPot | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_v_1_0_20240508.pdf | SDaiPriceFeed | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_v_1_0_20240508.pdf | IWstETH | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_v_1_0_20240508.pdf | wstETHPriceFeed | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_v_1_0_20240508.pdf | FlashLoanFacet | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_v_1_0_20240508.pdf | ZkTrueUpInit | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_v_1_0_20240508.pdf | Bytes | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_v_1_0_20240508.pdf | Config | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_v_1_0_20240508.pdf | Delegate | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_v_1_0_20240508.pdf | InitialConfig | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_v_1_0_20240508.pdf | Operations | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_v_1_0_20240508.pdf | Signature | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_v_1_0_20240508.pdf | Utils | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_v_1_0_20240508.pdf | ILoanFacet | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_v_1_0_20240508.pdf | LoanFacet | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_v_1_0_20240508.pdf | LoanLib | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_v_1_0_20240508.pdf | LoanStorage | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_v_1_0_20240508.pdf | IRollupFacet | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_v_1_0_20240508.pdf | RollupFacet | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_v_1_0_20240508.pdf | RollupLib | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_v_1_0_20240508.pdf | RollupStorage | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_v_1_0_20240508.pdf | ITsbFacet | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_v_1_0_20240508.pdf | TsbFacet | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_v_1_0_20240508.pdf | TsbStorage | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_v_1_0_20240508.pdf | mechanism | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_v_1_0_20240508.pdf | request | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_v_1_0_20240508.pdf | const/_mod | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_v_1_0_20240508.pdf | fmt | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_v_1_0_20240508.pdf | op_type | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_v_1_0_20240508.pdf | gadgets/_mod | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_v_1_0_20240508.pdf | type/_mod | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_v_1_0_20240508.pdf | order | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_v_1_0_20240508.pdf | req | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_v_1_0_20240508.pdf | zkTrueUp/normal | unmatched — not counted | — | listed in scope | no |
| ABDK_Term_Structure_Audit_Report_v_1_0_20240508.pdf | spec | unmatched — not counted | — | listed in scope | no |
| HashCloak_Term_Structure_Audit_Report_Solidity_20231020.pdf | FlashLoanFacet | unmatched — not counted | — | Files affected: FlashLoanFacet.sol#L48, FlashLoanFacet.sol#L54 | no |
| HashCloak_Term_Structure_Audit_Report_Solidity_20231020.pdf | ZkTrueUpInit | unmatched — not counted | — | Files affected: ZkTrueUpInit.sol#L52-L57 | no |
| TermMax-ABDK-audit-report-Phase1-v2.pdf | OnlyProxyCall | unmatched — not counted | — | listed in scope | no |
| TermMax-ABDK-audit-report-Phase1-v2.pdf | TransferUtilsV2 | unmatched — not counted | — | listed in scope | no |
| TermMax-ABDK-audit-report-Phase1-v2.pdf | IERC20SwapAdapter | unmatched — not counted | — | listed in scope | no |
| TermMax-ABDK-audit-report-Phase1-v2.pdf | ERC20SwapAdapterV2 | unmatched — not counted | — | listed in scope | no |
| TermMax-ABDK-audit-report-Phase1-v2.pdf | ERC4626VaultAdapterV2 | unmatched — not counted | — | listed in scope | no |
| TermMax-ABDK-audit-report-Phase1-v2.pdf | KyberswapV2AdapterV2 | unmatched — not counted | — | listed in scope | no |
| TermMax-ABDK-audit-report-Phase1-v2.pdf | OdosV2AdapterV2 | unmatched — not counted | — | listed in scope | no |
| TermMax-ABDK-audit-report-Phase1-v2.pdf | PendleSwapV3AdapterV2 | unmatched — not counted | — | listed in scope | no |
| TermMax-ABDK-audit-report-Phase1-v2.pdf | UniswapV3AdapterV2 | unmatched — not counted | — | listed in scope | no |
| TermMax-ABDK-audit-report-Phase1-v2.pdf | PendleHelper | unmatched — not counted | — | listed in scope | no |
| TermMax-ABDK-audit-report-Phase2.pdf | ITermMaxMarketV2 | unmatched — not counted | — | listed in scope | no |
| TermMax-ABDK-audit-report-Phase2.pdf | TermMaxMarketV2 | unmatched — not counted | — | listed in scope | no |
| TermMax-ABDK-audit-report-Phase2.pdf | TermMaxOrderV2 | unmatched — not counted | — | listed in scope | no |
| TermMax-ABDK-audit-report-Phase2.pdf | VaultEventsV2 | unmatched — not counted | — | listed in scope | no |
| TermMax-ABDK-audit-report-Phase2.pdf | FactoryEventsV2 | unmatched — not counted | — | listed in scope | no |
| TermMax-ABDK-audit-report-Phase2.pdf | GearingTokenEventsV2 | unmatched — not counted | — | listed in scope | no |
| TermMax-ABDK-audit-report-Phase2.pdf | TermMaxTokenEvents | unmatched — not counted | — | listed in scope | no |
| TermMax-ABDK-audit-report-Phase2.pdf | TransactionReentrancyGuard | unmatched — not counted | — | listed in scope | no |
| TermMax-ABDK-audit-report-Phase2.pdf | MarketConstantsV2 | unmatched — not counted | — | listed in scope | no |
| TermMax-ABDK-audit-report-Phase2.pdf | TermMaxStorageV2 | unmatched — not counted | — | listed in scope | no |
| TermMax-ABDK-audit-report-Phase2.pdf | ITermMaxVaultV2 | unmatched — not counted | — | listed in scope | no |
| TermMax-ABDK-audit-report-Phase2.pdf | OrderManagerV2 | unmatched — not counted | — | listed in scope | no |
| TermMax-ABDK-audit-report-Phase2.pdf | TermMaxVaultV2 | unmatched — not counted | — | listed in scope | no |
| TermMax-ABDK-audit-report-Phase2.pdf | VaultStorageV2 | unmatched — not counted | — | listed in scope | no |
| TermMax-ABDK-audit-report-Phase2.pdf | ITermMaxVaultFactoryV2 | unmatched — not counted | — | listed in scope | no |
| TermMax-ABDK-audit-report-Phase2.pdf | TermMaxVaultFactoryV2 | unmatched — not counted | — | listed in scope | no |
| TermMax-ABDK-audit-report-Phase2.pdf | TermMaxFactoryV2 | unmatched — not counted | — | listed in scope | no |
| TermMax-ABDK-audit-report-Phase2.pdf | TermMaxPriceFeedFactoryV2 | unmatched — not counted | — | listed in scope | no |
| TermMax-ABDK-audit-report-Phase2.pdf | AccessManagerV2 | unmatched — not counted | — | listed in scope | no |
| TermMax-ABDK-audit-report-Phase2.pdf | IAaveV3Minimal | unmatched — not counted | — | listed in scope | no |
| TermMax-ABDK-audit-report-Phase2.pdf | VaultErrorsV2 | unmatched — not counted | — | listed in scope | no |
| TermMax-ABDK-audit-report-Phase2.pdf | TermMaxTokenErrors | unmatched — not counted | — | listed in scope | no |
| TermMax-ABDK-audit-report-Phase2.pdf | IOracleV2 | unmatched — not counted | — | listed in scope | no |
| TermMax-ABDK-audit-report-Phase2.pdf | OracleAggregatorV2 | unmatched — not counted | — | listed in scope | no |
| TermMax-ABDK-audit-report-Phase2.pdf | ITermMaxPriceFeed | unmatched — not counted | — | listed in scope | no |
| TermMax-ABDK-audit-report-Phase2.pdf | TermMaxERC4626PriceFeed | unmatched — not counted | — | listed in scope | no |
| TermMax-ABDK-audit-report-Phase2.pdf | TermMaxPriceFeedConverter | unmatched — not counted | — | listed in scope | no |
| TermMax-ABDK-audit-report-Phase2.pdf | TermMaxPTPriceFeed | unmatched — not counted | — | listed in scope | no |
| TermMax-ABDK-audit-report-Phase2.pdf | ITermMaxRouterV2 | unmatched — not counted | — | listed in scope | no |
| TermMax-ABDK-audit-report-Phase2.pdf | TermMaxRouterV2 | unmatched — not counted | — | listed in scope | no |
| TermMax-ABDK-audit-report-Phase2.pdf | TermMaxSwapAdapter | unmatched — not counted | — | listed in scope | no |
| TermMax-ABDK-audit-report-Phase2.pdf | TermMaxTokenAdapter | unmatched — not counted | — | listed in scope | no |
| TermMax-ABDK-audit-report-Phase2.pdf | PreTMX | unmatched — not counted | — | listed in scope | no |
| TermMax-ABDK-audit-report-Phase2.pdf | AbstractGearingTokenV2 | unmatched — not counted | — | listed in scope | no |
| TermMax-ABDK-audit-report-Phase2.pdf | GearingTokenWithERC20V2 | unmatched — not counted | — | listed in scope | no |
| TermMax-ABDK-audit-report-Phase2.pdf | IGearingTokenV2 | unmatched — not counted | — | listed in scope | no |
| TermMax-ABDK-audit-report-Phase2.pdf | IMintableERC20V2 | unmatched — not counted | — | listed in scope | no |
| TermMax-ABDK-audit-report-Phase2.pdf | ITermMaxToken | unmatched — not counted | — | listed in scope | no |
| TermMax-ABDK-audit-report-Phase2.pdf | MintableERC20V2 | unmatched — not counted | — | listed in scope | no |
| TermMax-ABDK-audit-report-Phase2.pdf | StakingBuffer | unmatched — not counted | — | listed in scope | no |
| TermMax-ABDK-audit-report-Phase2.pdf | TermMaxToken | unmatched — not counted | — | listed in scope | no |
| TermMax-ABDK-audit-report-Phase3-v2.pdf | ITermMaxMarketV2 | unmatched — not counted | — | listed in scope | no |
| TermMax-ABDK-audit-report-Phase3-v2.pdf | TermMaxMarketV2 | unmatched — not counted | — | listed in scope | no |
| TermMax-ABDK-audit-report-Phase3-v2.pdf | TermMaxOrderV2 | unmatched — not counted | — | listed in scope | no |
| TermMax-ABDK-audit-report-Phase3-v2.pdf | AccessManagerV2 | unmatched — not counted | — | listed in scope | no |
| TermMax-ABDK-audit-report-Phase3-v2.pdf | TermMaxTokenErrors | unmatched — not counted | — | listed in scope | no |
| TermMax-ABDK-audit-report-Phase3-v2.pdf | GearingTokenEventsV2 | unmatched — not counted | — | listed in scope | no |
| TermMax-ABDK-audit-report-Phase3-v2.pdf | TermMaxTokenEvents | unmatched — not counted | — | listed in scope | no |
| TermMax-ABDK-audit-report-Phase3-v2.pdf | IAaveV3Minimal | unmatched — not counted | — | listed in scope | no |
| TermMax-ABDK-audit-report-Phase3-v2.pdf | TermMaxFactoryV2 | unmatched — not counted | — | listed in scope | no |
| TermMax-ABDK-audit-report-Phase3-v2.pdf | TermMaxPriceFeedFactoryV2 | unmatched — not counted | — | listed in scope | no |
| TermMax-ABDK-audit-report-Phase3-v2.pdf | MarketConstantsV2 | unmatched — not counted | — | listed in scope | no |
| TermMax-ABDK-audit-report-Phase3-v2.pdf | ITermMaxPriceFeed | unmatched — not counted | — | listed in scope | no |
| TermMax-ABDK-audit-report-Phase3-v2.pdf | TermMaxERC4626PriceFeed | unmatched — not counted | — | listed in scope | no |
| TermMax-ABDK-audit-report-Phase3-v2.pdf | TermMaxPriceFeedConverter | unmatched — not counted | — | listed in scope | no |
| TermMax-ABDK-audit-report-Phase3-v2.pdf | TermMaxPTPriceFeed | unmatched — not counted | — | listed in scope | no |
| TermMax-ABDK-audit-report-Phase3-v2.pdf | IOracleV2 | unmatched — not counted | — | listed in scope | no |
| TermMax-ABDK-audit-report-Phase3-v2.pdf | OracleAggregatorV2 | unmatched — not counted | — | listed in scope | no |
| TermMax-ABDK-audit-report-Phase3-v2.pdf | TermMaxSwapAdapter | unmatched — not counted | — | listed in scope | no |
| TermMax-ABDK-audit-report-Phase3-v2.pdf | TermMaxTokenAdapter | unmatched — not counted | — | listed in scope | no |
| TermMax-ABDK-audit-report-Phase3-v2.pdf | TermMaxRouterV2 | unmatched — not counted | — | listed in scope | no |
| TermMax-ABDK-audit-report-Phase3-v2.pdf | PreTMX | unmatched — not counted | — | listed in scope | no |
| TermMax-ABDK-audit-report-Phase3-v2.pdf | AbstractGearingTokenV2 | unmatched — not counted | — | listed in scope | no |
| TermMax-ABDK-audit-report-Phase3-v2.pdf | GearingTokenWithERC20V2 | unmatched — not counted | — | listed in scope | no |
| TermMax-ABDK-audit-report-Phase3-v2.pdf | IGearingTokenV2 | unmatched — not counted | — | listed in scope | no |
| TermMax-ABDK-audit-report-Phase3-v2.pdf | IMintableERC20V2 | unmatched — not counted | — | listed in scope | no |
| TermMax-ABDK-audit-report-Phase3-v2.pdf | ITermMaxToken | unmatched — not counted | — | listed in scope | no |
| TermMax-ABDK-audit-report-Phase3-v2.pdf | MintableERC20V2 | unmatched — not counted | — | listed in scope | no |
| TermMax-ABDK-audit-report-Phase3-v2.pdf | StakingBuffer | unmatched — not counted | — | listed in scope | no |
| TermMax-ABDK-audit-report-Phase3-v2.pdf | TermMaxToken | unmatched — not counted | — | listed in scope | no |
| TermMax-ABDK-audit-report-TMX-v-1-0.pdf | TMX | unmatched — not counted | — | listed in scope as original code file | no |
| TermMax-Cantina-competition-20250320.pdf | TermMaxMarket | unmatched — not counted | — | mentioned in findings and scope | no |
| TermMax-Cantina-competition-20250320.pdf | TermMaxOrder | unmatched — not counted | — | mentioned in findings and scope | no |
| TermMax-Cantina-competition-20250320.pdf | TermMaxVault | unmatched — not counted | — | mentioned in findings and scope | no |
| TermMax-Cantina-competition-20250320.pdf | OrderManager | unmatched — not counted | — | mentioned in findings and scope | no |
| TermMax-Cantina-competition-20250320.pdf | VaultFactory | unmatched — not counted | — | mentioned in findings and scope | no |
| TermMax-Cantina-competition-20250320.pdf | TermMaxRouter | unmatched — not counted | — | mentioned in findings and scope | no |
| TermMax-Cantina-competition-20250320.pdf | MockSwapAdapter | unmatched — not counted | — | mentioned in test imports | no |
| TermMax-Cantina-competition-20250320.pdf | MockERC20 | unmatched — not counted | — | mentioned in test imports | no |
| TermMax-Cantina-competition-20250320.pdf | MockPriceFeed | unmatched — not counted | — | mentioned in test imports | no |
| Spearbit | AccessManager | unmatched — not counted | — | listed in scope | no |
| Spearbit | Ownable | unmatched — not counted | — | listed in scope | no |
| Spearbit | ITermMaxFactory | unmatched — not counted | — | listed in scope | no |
| Spearbit | TermMaxFactory | unmatched — not counted | — | listed in scope | no |
| Spearbit | Constants | unmatched — not counted | — | listed in scope | no |
| Spearbit | MathLib | unmatched — not counted | — | listed in scope | no |
| Spearbit | TermMaxCurve | unmatched — not counted | — | listed in scope | no |
| Spearbit | TermMaxStorage | unmatched — not counted | — | listed in scope | no |
| Spearbit | AbstractGearingToken | unmatched — not counted | — | listed in scope | no |
| Spearbit | GearingTokenWithERC20 | unmatched — not counted | — | listed in scope | no |
| Spearbit | IFlashRepayer | unmatched — not counted | — | listed in scope | no |
| Spearbit | IGearingToken | unmatched — not counted | — | listed in scope | no |
| Spearbit | IMintableERC20 | unmatched — not counted | — | listed in scope | no |
| Spearbit | MintableERC20 | unmatched — not counted | — | listed in scope | no |
| Spearbit | IFlashLoanReceiver | unmatched — not counted | — | listed in scope | no |
| Spearbit | ITermMaxMarket | unmatched — not counted | — | listed in scope | no |
| Spearbit | TermMaxMarket | unmatched — not counted | — | listed in scope | no |
| Spearbit | PTWithRedStonePriceFeed | unmatched — not counted | — | listed in scope | no |
| Spearbit | PendleHelper | unmatched — not counted | — | listed in scope | no |
| Spearbit | ERC20SwapAdapter | unmatched — not counted | — | listed in scope | no |
| Spearbit | PendleSwapV3Adapter | unmatched — not counted | — | listed in scope | no |
| Spearbit | UniswapV3Adapter | unmatched — not counted | — | listed in scope | no |
| Spearbit | ISwapAdapter | unmatched — not counted | — | listed in scope | no |
| Spearbit | ITermMaxRouter | unmatched — not counted | — | listed in scope | no |
| Spearbit | TermMaxRouter | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 311 |
| upstream | 4 |
| standard_library | 114 |
| needs_review | 57 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 14
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 218 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=10, low=3, medium=1
- Match method counts: n/a

Zero-match audit list:

- [18369] ABDK_Term_Structure_Audit_Report_Circom_v_1_0_20230829.pdf
- [18370] ABDK_Term_Structure_Audit_Report_Solidity_v_1_0_20230829.pdf
- [18371] ABDK_Term_Structure_Audit_Report_Solidity_v_1_0_PartII_20230927.pdf
- [18372] ABDK_Term_Structure_Audit_Report_v_1_0_20240508.pdf
- [18373] HashCloak_Term_Structure_Audit_Report_Circom_20231020.pdf
- [18374] HashCloak_Term_Structure_Audit_Report_Solidity_20231020.pdf
- [18375] TermMax-ABDK-audit-report-Phase1-v2.pdf
- [18376] TermMax-ABDK-audit-report-Phase2.pdf
- [18377] TermMax-ABDK-audit-report-Phase3-v2.pdf
- [18378] TermMax-ABDK-audit-report-TMX-v-1-0.pdf
- [18379] TermMax-Cantina-competition-20250320.pdf
- [18380] Audit Reports
- [18381] Spearbit
- [18382] DeFiSafety

Fork inheritance lineage and inherited audits are included when available.
