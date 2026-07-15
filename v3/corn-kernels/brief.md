# Agentic Audit Brief: Corn Kernels

## Export Authority

- Production state: **published scope**
- Raw selected rows: 3 across 3 audit(s)
- Eligible audit results: 6 (3 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Corn Kernels (`corn-kernels`)
- Website: [https://usecorn.com/](https://usecorn.com/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum, sepolia
- Contract surface: 261 unique implementations (261 raw deployments)
- Coverage basis: 2/13 confirmed own live verified implementations (15.4%); conservative 15.4% with 0 needs-review implementation(s)
- DeFi Llama TVL: $283,452.18
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Corn Kernels. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 20 contract row(s) across ethereum, sepolia. Structural roles: 9 core, 8 supporting, 2 infra, 1 unclassified. 11 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 20
- Structural roles: core (9), supporting (8), infra (2), unclassified (1)
- Contract kinds: contract (15), abstract (4), unclassified (1)
- Detected standards: erc1967proxy (9), erc20 (4), ownable (4), pausable (3), erc20permit (2), accesscontrol (1), erc165 (1), erc4626 (1)
- Frameworks: openzeppelin (16), openzeppelin-upgradeable (8), solmate (3), layerzero (2), foundry (1)
- Upgradeable-pattern rows: 11

## Fork Analysis

0 of 17 contracts are derived from known codebases. 17 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x8236a8...634494`, chain 1)
- UnnamedContract (`0xd533a9...34cd52`, chain 1)
- UnnamedContract (`0xdac17f...831ec7`, chain 1)
- UnnamedContract (`0xf469fb...0a012e`, chain 1)
- aBTC (`0x5e14fe...f2a0be`, chain 1)
- BeaconProxy (`0xd9d920...159def`, chain 1)
- BitcornOFT (`0x386e7a...e45fb6`, chain 1)
- CornOFT (`0x44f49f...7fd8c6`, chain 1)
- crvUSDStablecoin (`0xf939e0...ac1b4e`, chain 1)
- EnzoBTC (`0x6a9a65...fbce4a`, chain 1)
- FiatTokenProxy (`0xa0b869...06eb48`, chain 1)
- SolvBTCV3 (`0x7a56e1...652f97`, chain 1)
- stBTC (`0xf6718b...28b8a3`, chain 1)
- TransparentUpgradeableProxy (`0x004e9c...350568`, chain 1)
- UUPSProxy (`0xcd5fe2...59b7ee`, chain 1)
- waBTC (`0x09def5...fbe34b`, chain 1)
- WETH9 (`0xc02aaa...756cc2`, chain 1)

## Contract Surface Quality

- Indexed contracts: 20; live-surface contracts included: 20 (13 live, 7 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 17/30 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/13 (15.4%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 17 own, 13 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 231 discovered implementations excluded (19 third-party/infra; 18 standard proxy/library)
- Proxy deployments represented within implementation groups: 42
- Deployed-live implementations: 17 of 261 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 2/13
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 261
- Raw deployments: 261
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-03 (aging)
- Audit staleness (calendar age): 0 fresh, 5 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: 15.4% (Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Spearbit | Tier 1 | 2 | 15.4% | 2025-03 |
| Zenith | Tier 2 | 1 | 7.7% | 2024-11 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BitcornOFT | unknown | project_anchor | third_party_dependency | 1 | ethereum | unit-233380 | `0x386e7a...e45fb6` | ✅ Audited |
| CornOFT | unknown | project_anchor | third_party_dependency | 1 | ethereum | unit-233373 | `0x44f49f...7fd8c6` | ✅ Audited |

### ⚠️ Verified + Unaudited (227)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| aBTC | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233350 | `0x5e14fe...f2a0be` | ⚠️ Unaudited |
| AddressProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20ee00...e38cc7` | ⚠️ Unaudited |
| AggMonetaryPolicy-monetarypolicybasedonaggregatedpricesforcrvUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0901b5...48e62b` | ⚠️ Unaudited |
| AggregatorStablePrice-aggregatorofstablecoinpricesforcrvUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18672b...0e4e62` | ⚠️ Unaudited |
| AssetRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb82335...48bd80` | ⚠️ Unaudited |
| AuctionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68fe80...ba5366` | ⚠️ Unaudited |
| AvsOperator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8969d7...3960f5` | ⚠️ Unaudited |
| BeaconProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-233376 | `0xd9d920...159def` | ⚠️ Unaudited |
| Bitcorn | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x025364...51c1bd` | ⚠️ Unaudited |
| BNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a3938...687242` | ⚠️ Unaudited |
| BoringVaultPriceProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x130e22...3a0729` | ⚠️ Unaudited |
| Bridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b67c2...7a4717` | ⚠️ Unaudited |
| BridgeV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1fe8a...2059c8` | ⚠️ Unaudited |
| CCIPDVNAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x771d10...3b9cbf` | ⚠️ Unaudited |
| CCIPPeer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17ea3d...908ee1` | ⚠️ Unaudited |
| CelerMinterReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c3f1f...465c95` | ⚠️ Unaudited |
| ChainlinkOracleClient | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc905e7...534688` | ⚠️ Unaudited |
| CLAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2298d4...9b1fbb` | ⚠️ Unaudited |
| Consortium | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f8048...c5478e` | ⚠️ Unaudited |
| CornDeployer | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-233339 | `0x0969f8...9ae733` | ⚠️ Unaudited |
| CornSilo | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-233378 | `0x8bc934...48f23c` | ⚠️ Unaudited |
| CornSiloZapV1 | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-233379 | `0x29a4e7...2ef7ff` | ⚠️ Unaudited |
| Create2Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x652199...92ba62` | ⚠️ Unaudited |
| crvUSD Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17c6e1...41f4d4` | ⚠️ Unaudited |
| crvUSDControllerFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9332f...0738bc` | ⚠️ Unaudited |
| crvUSDdeleveragezap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2bc706...f81d74` | ⚠️ Unaudited |
| crvUSDStablecoin | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233369 | `0xf939e0...ac1b4e` | ⚠️ Unaudited |
| CryptoFromPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b38ce...db7a25` | ⚠️ Unaudited |
| CryptoFromPoolsRate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38e762...3ba2f8` | ⚠️ Unaudited |
| CryptoFromPoolsRateWAgg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a9ae9...c91aab` | ⚠️ Unaudited |
| CryptoFromPoolVaultWAgg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x002688...1b09be` | ⚠️ Unaudited |
| CryptoFromPoolWAgg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d89d8...e1d5ca` | ⚠️ Unaudited |
| CryptoWithStablePriceETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x966cbd...32ca06` | ⚠️ Unaudited |
| CryptoWithStablePriceSfrxeth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28d788...113c29` | ⚠️ Unaudited |
| CryptoWithStablePriceTBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbef434...fc4217` | ⚠️ Unaudited |
| CryptoWithStablePriceWBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07374b...3e46fa` | ⚠️ Unaudited |
| CryptoWithStablePriceWsteth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21f5f6...51b304` | ⚠️ Unaudited |
| CumulativeMerkleDrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26542f...dd0c65` | ⚠️ Unaudited |
| DadFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01c110...db072d` | ⚠️ Unaudited |
| DaiFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf07674...69ebbb` | ⚠️ Unaudited |
| DeadDVN | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x747c74...92f6ac` | ⚠️ Unaudited |
| DelayRedeemRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x720081...eb859d` | ⚠️ Unaudited |
| depositRootGenerator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10f2c5...c561d6` | ⚠️ Unaudited |
| directBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11964b...09954b` | ⚠️ Unaudited |
| DirectBTCMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x704a2f...9481ee` | ⚠️ Unaudited |
| DirectStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07a5d3...0eef57` | ⚠️ Unaudited |
| DSChief | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e2a84...057152` | ⚠️ Unaudited |
| DSChiefFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e7ca0...8f1483` | ⚠️ Unaudited |
| DSToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x068083...cc5523` | ⚠️ Unaudited |
| DVN | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x006e12...872de7` | ⚠️ Unaudited |
| DVNFeeLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x021e40...ba1e8d` | ⚠️ Unaudited |
| eBtcRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81be35...31b523` | ⚠️ Unaudited |
| EETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b47a6...eff72f` | ⚠️ Unaudited |
| Endpoint | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66a71d...5cd675` | ⚠️ Unaudited |
| EndpointV2View | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x175bfe...92888f` | ⚠️ Unaudited |
| EnzoBTC | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233352 | `0x6a9a65...fbce4a` | ⚠️ Unaudited |
| EnzoBTCOFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99de52...7d63d5` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x316c1b...2ab302` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x7efb35...c5c567` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xe53dce...f83c31` | ⚠️ Unaudited |
| ERC4626VaultWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f9873...a10fc7` | ⚠️ Unaudited |
| FBTCPartnerVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x512258...8f198c` | ⚠️ Unaudited |
| FBTCProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3a30f...85b1ae` | ⚠️ Unaudited |
| FiatToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8cbde2...77a91a` | ⚠️ Unaudited |
| FiatTokenProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-233374 | `0xa0b869...06eb48` | ⚠️ Unaudited |
| FiatTokenUtil | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6315aa...0355a6` | ⚠️ Unaudited |
| FiatTokenV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x088247...57fe56` | ⚠️ Unaudited |
| FiatTokenV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7277a...3778a2` | ⚠️ Unaudited |
| FiatTokenV2_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2327a...4cbdcf` | ⚠️ Unaudited |
| FPValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07245e...e4df89` | ⚠️ Unaudited |
| GemFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x431e93...845692` | ⚠️ Unaudited |
| GemPit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69076e...83c275` | ⚠️ Unaudited |
| GIN | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5fd95...b0c05d` | ⚠️ Unaudited |
| globalIndexLibrary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x325ea0...c85fb9` | ⚠️ Unaudited |
| GMPBasculeV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3ecfe...9338ed` | ⚠️ Unaudited |
| Governor | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-233348 | `0x515c7d...f3f7b5` | ⚠️ Unaudited |
| HealthcalculatorzapforcrvUSDcontroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf61ee...830d6a` | ⚠️ Unaudited |
| IBCVoucher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77d81c...8a5b9f` | ⚠️ Unaudited |
| L1LineaReceiverETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x332754...ef27f1` | ⚠️ Unaudited |
| LayerZeroOracleMock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x980205...3ec981` | ⚠️ Unaudited |
| LayerZeroTokenMock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe7c30...d3a098` | ⚠️ Unaudited |
| LBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12364c...348eea` | ⚠️ Unaudited |
| LBTCOFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1290a6...8f44ad` | ⚠️ Unaudited |
| LeveragezapforcrvUSDcontroller(sfrxETHmarket) | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb556fa...7f2eac` | ⚠️ Unaudited |
| LiquidCashier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x485fd9...03c12e` | ⚠️ Unaudited |
| LiquidFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaec1fb...039a3b` | ⚠️ Unaudited |
| LiquidityGaugeV6 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00b71a...a2de99` | ⚠️ Unaudited |
| LiquidityPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02656f...bac65b` | ⚠️ Unaudited |
| LiquidOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f26b0...8404ac` | ⚠️ Unaudited |
| LiquidVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1693b...9ffa3b` | ⚠️ Unaudited |
| Liquifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2225c9...6b6ed3` | ⚠️ Unaudited |
| LLAMMA - crvUSD AMM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ec8e0...dbd93a` | ⚠️ Unaudited |
| LombardConsortium | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e1871...763565` | ⚠️ Unaudited |
| LombardTimeLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x055e84...e77e59` | ⚠️ Unaudited |
| LombardTokenPoolV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61003b...f56095` | ⚠️ Unaudited |
| LoyaltyPointsMarketSafe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d716d...f2cd24` | ⚠️ Unaudited |
| LRTSquare | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d987e...9a16a2` | ⚠️ Unaudited |
| LRTSquared | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x138f08...ea7743` | ⚠️ Unaudited |
| LRTSquaredAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd2b8c7...d02ff5` | ⚠️ Unaudited |
| LRTSquaredCore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1cb489...1957de` | ⚠️ Unaudited |
| LzExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ab536...57ad21` | ⚠️ Unaudited |
| Mailbox | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x052359...2f0080` | ⚠️ Unaudited |
| MasterMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x566c11...674335` | ⚠️ Unaudited |
| MembershipManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x047a77...f15889` | ⚠️ Unaudited |
| MembershipNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x290d98...307106` | ⚠️ Unaudited |
| MiniMeTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x003ea7...f15505` | ⚠️ Unaudited |
| MintStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81d7da...6b2c59` | ⚠️ Unaudited |
| MomFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x141a20...3669ea` | ⚠️ Unaudited |
| MPTValidatorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9ae26...e07b2d` | ⚠️ Unaudited |
| MPTValidatorV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b4ca2...abefb2` | ⚠️ Unaudited |
| MPTValidatorV5 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe04f26...08e832` | ⚠️ Unaudited |
| Multicall3 | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xca11bd...76ca11` | ⚠️ Unaudited |
| MultiClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32facb...203a5f` | ⚠️ Unaudited |
| NativeLBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b89d7...df635d` | ⚠️ Unaudited |
| NEC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc80c0...b97a5e` | ⚠️ Unaudited |
| NectarController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d5a41...05d98d` | ⚠️ Unaudited |
| NetworkRestakeResetHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x274bbd...cb2fc8` | ⚠️ Unaudited |
| NonceContractRadar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x087ceb...384e2e` | ⚠️ Unaudited |
| OneWayLendingFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34024b...41f38c` | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0330f9...acb1e0` | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16cc4e...170347` | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x173272...453059` | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xbec6f0...b56af7` | ⚠️ Unaudited |
| PegKeeper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ef89e...4dccae` | ⚠️ Unaudited |
| PegPrice | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x226845...6c5445` | ⚠️ Unaudited |
| PodOwner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ac774...e76f52` | ⚠️ Unaudited |
| PreOrder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b7a14...97ff44` | ⚠️ Unaudited |
| PriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb26ac1...29090c` | ⚠️ Unaudited |
| PriceProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28a6e7...c1f32f` | ⚠️ Unaudited |
| ProtocolRevenueManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf8749...e0d322` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x271689...25ddd3` | ⚠️ Unaudited |
| ProxyMock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72233f...dee7db` | ⚠️ Unaudited |
| PUMP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ed540...4b079c` | ⚠️ Unaudited |
| PumpLockMint | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77d22a...04eaad` | ⚠️ Unaudited |
| PumpToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2cd264...d49cfe` | ⚠️ Unaudited |
| PumpTokenOFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xadc9c9...f4f9a8` | ⚠️ Unaudited |
| PumpTokenOFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb1b27...ef3a52` | ⚠️ Unaudited |
| ReadLib1002 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x74f55b...9fdb9d` | ⚠️ Unaudited |
| ReceiveUln301 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x245b6e...23eefc` | ⚠️ Unaudited |
| ReceiveUln302 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc02ab4...6024c2` | ⚠️ Unaudited |
| ReceiveUln302View | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf6c8bd...18c46d` | ⚠️ Unaudited |
| Redeem | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6882ae...57497d` | ⚠️ Unaudited |
| RegulationsManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1fcb83...2cd0b4` | ⚠️ Unaudited |
| Relayer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x153fb4...eb12d4` | ⚠️ Unaudited |
| RelayerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd55f5...be306a` | ⚠️ Unaudited |
| RelayerV2Radar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61ab01...39d849` | ⚠️ Unaudited |
| Restaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04f744...b7b5c0` | ⚠️ Unaudited |
| RewardPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29b06c...50a415` | ⚠️ Unaudited |
| RockXETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3376eb...61514a` | ⚠️ Unaudited |
| RockXRedeem | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3774af...4ba818` | ⚠️ Unaudited |
| RockXRestaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x351eea...69a098` | ⚠️ Unaudited |
| Secondarymonetarypolicy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x188041...8aeaf8` | ⚠️ Unaudited |
| SecondarymonetarypolicyforWBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e1f16...b10f9c` | ⚠️ Unaudited |
| SemiLog monetary policy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a2878...5b40dd` | ⚠️ Unaudited |
| SendUln301 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd23108...daf705` | ⚠️ Unaudited |
| SendUln302 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb2ea7...72dce1` | ⚠️ Unaudited |
| SEthFiStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76c57e...805ad8` | ⚠️ Unaudited |
| sfrxETH2crvUSDleveragezap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43ecff...ce11bc` | ⚠️ Unaudited |
| Sigma | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18d0d9...d021b5` | ⚠️ Unaudited |
| SimpleSwapFacility | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-233375 | `0x554335...e66ba1` | ⚠️ Unaudited |
| SolvBTCV3 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-233377 | `0x7a56e1...652f97` | ⚠️ Unaudited |
| StakeAndBake | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9088d8...be497a` | ⚠️ Unaudited |
| StakeAndBakeNativeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0bca0f...7eae88` | ⚠️ Unaudited |
| StakedLBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x072072...782bd9` | ⚠️ Unaudited |
| StakedLBTCOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e28ef...1fdc1c` | ⚠️ Unaudited |
| StakingManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ad639...72fa1e` | ⚠️ Unaudited |
| stBTC | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233368 | `0xf6718b...28b8a3` | ⚠️ Unaudited |
| SusdeMonetaryPolicy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf574cb...6efef7` | ⚠️ Unaudited |
| SwapFacilitySwapAndBridgeZap | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-233346 | `0x1c2c9e...f3e6b1` | ⚠️ Unaudited |
| Swapper1InchV6 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x747cac...52232e` | ⚠️ Unaudited |
| TapFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x521c42...51f14f` | ⚠️ Unaudited |
| TellerWithMultiAssetSupportDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51d9c2...bf1a5f` | ⚠️ Unaudited |
| TetherToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e98db...fdba1b` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4954a...755024` | ⚠️ Unaudited |
| TimelockControllerEnumerable | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-233344 | `0x0a3bd9...5ee310` | ⚠️ Unaudited |
| TNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c377a...f11708` | ⚠️ Unaudited |
| TokenAuthority | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2989c3...0a4663` | ⚠️ Unaudited |
| TokenBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50002c...1cd907` | ⚠️ Unaudited |
| TopFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0eda20...733ed4` | ⚠️ Unaudited |
| TransferProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0ab75...bc342b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-233381 | `0x004e9c...350568` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0295e0...a5ae46` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x02e3e2...af25ea` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x047d41...10d6da` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x1419b4...0e3386` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x1fcca6...404e1e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x27e120...5985c2` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x2ec37d...8f6646` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x33757a...f43ee7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x3b099b...6b7f24` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x4befa2...269e9d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x552b0c...42fa05` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x6f149f...94aa35` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xb08fbe...1f061e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xd78987...5da146` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xe54291...abc716` | ⚠️ Unaudited |
| Treasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ebb3f...e73056` | ⚠️ Unaudited |
| TreasuryFeeHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe20403...6fc6d2` | ⚠️ Unaudited |
| TreasuryV2Radar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdcc1a1...994068` | ⚠️ Unaudited |
| TubFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3b670...d1b987` | ⚠️ Unaudited |
| UltraLightNode | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b19bd...a18c1c` | ⚠️ Unaudited |
| UltraLightNodeV2Radar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe4fb2...9fc220` | ⚠️ Unaudited |
| USD0LpOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2aeb5c...49ae32` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0ef8fa...42d705` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1b7a4c...736fff` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x200057...d903a2` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2093bb...a37a6a` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2ecd15...2fab81` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x46c4ab...cc29a8` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x57aaf0...bb6a41` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x857b4f...d16f8b` | ⚠️ Unaudited |
| UUPSProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-233372 | `0xcd5fe2...59b7ee` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xd0ff89...fead1a` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xd5edf7...54e35e` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x078452...98880e` | ⚠️ Unaudited |
| Vote | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e9ae4...938227` | ⚠️ Unaudited |
| VoxFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x414b1d...2499bf` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0145fd...5b97a9` | ⚠️ Unaudited |
| waBTC | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233341 | `0x09def5...fbe34b` | ⚠️ Unaudited |
| waBtcOFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x370168...377d28` | ⚠️ Unaudited |
| WBTC-crvUSDleveragezap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2518b...2de4d7` | ⚠️ Unaudited |
| WETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x353f89...c4bf52` | ⚠️ Unaudited |
| WETH9 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233361 | `0xc02aaa...756cc2` | ⚠️ Unaudited |
| WithdrawRequestNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ed97c...0a9cd4` | ⚠️ Unaudited |
| WrapperLockEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x991f0e...f3690e` | ⚠️ Unaudited |
| wstETH_Burner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7581e...9b2a0f` | ⚠️ Unaudited |
| wstETH-crvUSDleveragezap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x293436...fc74fd` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (32)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b3757...5aa955` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2de76b...52af49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x485bbc...6f071a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x541fd7...df8b77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6788f5...fee842` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c7ab2...a716ff` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x6e0bb5...7ec1fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76b0d2...b0a155` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233354 | `0x8236a8...634494` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-233356 | `0x8516f1...9a0010` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x85adfa...772d14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x939197...2b593e` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x9cf9f0...dd71ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7f061...0dcd1f` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-233358 | `0xad2bef...1193d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8ce59...625ebb` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-233359 | `0xbf5eb7...b56fea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb566e...e1aaaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc0966...169a8c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233363 | `0xd533a9...34cd52` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xda5ddd...3cdfb2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233365 | `0xdac17f...831ec7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd7b5e...a5445b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf0b24...902ee6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe33de1...da6d47` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-233366 | `0xe5e99e...6b24fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeaedd2...d9f755` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xecac9c...5c11c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeeeeee...eeeeee` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233367 | `0xf469fb...0a012e` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | sepolia | unit-233370 | `0x025364...51c1bd` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | sepolia | unit-233371 | `0xa7f061...0dcd1f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [cantina-airdrop-1.pdf](https://github.com/usecorn/audits/blob/main/airdrop/cantina-airdrop-1.pdf) | Spearbit | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Zenith-Bitcorn-OFT-Swap-Facility.pdf](https://github.com/usecorn/audits/blob/main/bitcorn/Zenith-Bitcorn-OFT-Swap-Facility.pdf) | Zenith | Audit | 2024-11 | aging | Direct | contract_name | matched | 1 | 1 | 0 | 3 | high |
| [cantina-bitcorn-oft-1.pdf](https://github.com/usecorn/audits/blob/main/bitcorn/cantina-bitcorn-oft-1.pdf) | Spearbit | Audit | 2024-12 | aging | Direct | contract_name | matched | 1 | 1 | 0 | 3 | high |
| [cantina-bitcorn-oft-2.pdf](https://github.com/usecorn/audits/blob/main/bitcorn/cantina-bitcorn-oft-2.pdf) | Spearbit | Audit | 2024-12 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [cantina-bitcorn-oft-3.pdf](https://github.com/usecorn/audits/blob/main/bitcorn/cantina-bitcorn-oft-3.pdf) | Spearbit | Audit | 2025-03 | aging | Direct | contract_name | matched | 1 | 1 | 0 | 2 | medium |
| [Spearbit-Bitcorn-CornSilo-Review.pdf](https://github.com/usecorn/audits/blob/main/cornsilo/Spearbit-Bitcorn-CornSilo-Review.pdf) | Spearbit | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [16935] cantina-airdrop-1.pdf — no match: The report covers a review of PR 45 and VestingWallet.sol. The only contract explicitly in scope is VestingWallet.sol, and IVestingWallet.sol is referenced as an interface. No other contracts are mentioned.
- [16936] Zenith-Bitcorn-OFT-Swap-Facility.pdf — matched: Scope section lists repository usecorn/bitcorn-oft with commit hash. Contracts identified from findings: SwapFacility, WrappedBitcornNativeOFTAdapter, BitcornOFT, and ERC20PausableUpgradeable (parent). Audit dates: Nov 27 – Nov 29, 2024.
- [16937] cantina-bitcorn-oft-1.pdf — matched: Scope section states 'all the smart contracts present in the repository at the reviewed commit hash'. Extracted contract names from findings context.
- [16938] cantina-bitcorn-oft-2.pdf — no match: Scope section on page 3 states: 'The scope of the review included all the smart contracts reviewed in a previous engagement as well as the newly added SimpleSwapFacility, in place of SwapFacility.' Contract names extracted from findings and file references.
- [16939] cantina-bitcorn-oft-3.pdf — matched: No explicit scope section; contracts inferred from findings context.
- [16940] Spearbit-Bitcorn-CornSilo-Review.pdf — no match: Contracts extracted from the Executive Summary table and findings context. The report covers Cornbase protocol with repositories corn-silo, bitcorn-token, silo-thorchain-aggregator. Audit date is May 15, 2024 from the report header.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| cantina-airdrop-1.pdf | VestingWallet | unmatched — not counted | — | Listed in scope and findings context | no |
| cantina-airdrop-1.pdf | IVestingWallet | unmatched — not counted | — | Referenced in findings (IVestingWallet.sol#L152-L156) | no |
| Zenith-Bitcorn-OFT-Swap-Facility.pdf | SwapFacility | unmatched — not counted | — | listed in scope and findings | no |
| Zenith-Bitcorn-OFT-Swap-Facility.pdf | WrappedBitcornNativeOFTAdapter | unmatched — not counted | — | listed in scope and findings | no |
| Zenith-Bitcorn-OFT-Swap-Facility.pdf | BitcornOFT | own proxy deployment | BitcornOFT (proxy) (selected) `0x386e7a...e45fb6` — deployed 2024-11-14 21:39:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Zenith-Bitcorn-OFT-Swap-Facility.pdf | ERC20PausableUpgradeable | unmatched — not counted | — | mentioned in findings as parent contract | no |
| cantina-bitcorn-oft-1.pdf | BitcornOFT | own proxy deployment | BitcornOFT (proxy) (selected) `0x386e7a...e45fb6` — deployed 2024-11-14 21:39:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cantina-bitcorn-oft-1.pdf | WrappedBitcornNativeOFTAdapter | unmatched — not counted | — | mentioned in findings context | no |
| cantina-bitcorn-oft-1.pdf | SwapFacility | unmatched — not counted | — | mentioned in findings context | no |
| cantina-bitcorn-oft-1.pdf | Auth | unmatched — not counted | — | mentioned in findings context | no |
| cantina-bitcorn-oft-2.pdf | WrappedBitcornNativeOFTAdapter | unmatched — not counted | — | Findings 3.1.1, 3.1.2 | no |
| cantina-bitcorn-oft-2.pdf | SimpleSwapFacility | unmatched — not counted | — | Findings 3.1.3, 3.2.1, 3.2.2, 3.2.3, 3.3.1, 3.3.2, 3.3.3, 3.3.4 | no |
| cantina-bitcorn-oft-2.pdf | Vault | unmatched — not counted | — | Finding 3.2.1 | no |
| cantina-bitcorn-oft-2.pdf | SwapFacilitySwapAndBridgeZap | unmatched — not counted | — | Findings 3.4.1, 3.4.2 | no |
| cantina-bitcorn-oft-3.pdf | CornOFT | own proxy deployment | CornOFT (proxy) (selected) `0x44f49f...7fd8c6` — deployed 2025-02-25 21:12:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cantina-bitcorn-oft-3.pdf | AuthNoOwner | unmatched — not counted | — | mentioned in finding context | no |
| cantina-bitcorn-oft-3.pdf | OFTVotes | unmatched — not counted | — | mentioned in finding context | no |
| Spearbit-Bitcorn-CornSilo-Review.pdf | CornSilo | unmatched — not counted | — | Listed in scope and findings throughout report | no |
| Spearbit-Bitcorn-CornSilo-Review.pdf | Bitcorn | unmatched — not counted | — | Listed in scope and findings throughout report | no |
| Spearbit-Bitcorn-CornSilo-Review.pdf | CornSiloZap | unmatched — not counted | — | Listed in scope and findings throughout report | no |
| Spearbit-Bitcorn-CornSilo-Review.pdf | TSAggregator | unmatched — not counted | — | Listed in scope and findings throughout report | no |
| Spearbit-Bitcorn-CornSilo-Review.pdf | TSAggregatorCornSiloEth | unmatched — not counted | — | Listed in scope and findings throughout report | no |
| Spearbit-Bitcorn-CornSilo-Review.pdf | IBitcorn | unmatched — not counted | — | Listed in scope and findings throughout report | no |
| Spearbit-Bitcorn-CornSilo-Review.pdf | ISwapFacility | unmatched — not counted | — | Listed in scope and findings throughout report | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x5e14fe...f2a0be` | aBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf939e0...ac1b4e` | crvUSDStablecoin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6a9a65...fbce4a` | EnzoBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa0b869...06eb48` | FiatTokenProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7a56e1...652f97` | SolvBTCV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf6718b...28b8a3` | stBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcd5fe2...59b7ee` | UUPSProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x09def5...fbe34b` | waBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc02aaa...756cc2` | WETH9 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 202 |
| upstream | 4 |
| standard_library | 23 |
| needs_review | 32 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 3 own (3 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 21 unmatched
- Matched-own operational status: 3 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=5, medium=1
- Match method counts: unique_name=3

Zero-match audit list:

- [16935] cantina-airdrop-1.pdf
- [16938] cantina-bitcorn-oft-2.pdf
- [16940] Spearbit-Bitcorn-CornSilo-Review.pdf

Fork inheritance lineage and inherited audits are included when available.
