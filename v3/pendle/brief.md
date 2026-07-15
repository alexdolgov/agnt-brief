# Agentic Audit Brief: Pendle

## Export Authority

- Production state: **published scope**
- Raw selected rows: 11 across 11 audit(s)
- Eligible audit results: 27 (11 matched; 16 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Pendle (`pendle`)
- Website: [https://pendle.finance/](https://pendle.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, base, berachain, bsc, ethereum, mantle, optimism, plasma, sonic
- Contract surface: 472 unique implementations (472 raw deployments)
- Coverage basis: 2/7 confirmed own live verified implementations (28.6%); conservative 28.6% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,217,850,291.34
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Pendle. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 7 contract row(s) across arbitrum, avalanche, base, berachain, bsc, ethereum, mantle, optimism, plasma, sonic. Structural roles: 4 core, 3 infra. 3 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 7
- Structural roles: core (4), infra (3)
- Contract kinds: contract (7)
- Detected standards: erc1967proxy (3), erc20 (3), erc20permit (2)
- Frameworks: openzeppelin (6)
- Upgradeable-pattern rows: 3

## Fork Analysis

1 of 11 contracts are derived from known codebases. 10 contracts have no detected origin.

### Forked Contracts

**PendleMarket** (`0xd0354d...eccca2`, chain 1)
Origin: aarna-protocol (`0x3f5ea5...182418`)
Containment: 88.2% - 15 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original):
- _storage()
- getNonOverrideLnFeeRateRoot()

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x466ced...961cf8`, chain 1)
- UnnamedContract (`0x888888...58f946`, chain 1)
- UnnamedContract (`0xd4f480...c2151d`, chain 1)
- UnnamedContract (`0xdc035d...07384f`, chain 1)
- Dai (`0x6b1754...271d0f`, chain 1)
- PENDLE (`0x808507...8da827`, chain 1)
- StakedPendle (`0x999999...664144`, chain 1)
- TransparentUpgradeableProxy (`0xecac9c...5c11c1`, chain 1)
- TransparentUpgradeableProxy (`0xecac9c...5c11c1`, chain 8453)
- WstETH (`0x7f39c5...5e2ca0`, chain 1)

## Contract Surface Quality

- Indexed contracts: 7; live-surface contracts included: 7 (7 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 11/13 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/7 (28.6%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 11 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 461 discovered implementations excluded (0 third-party/infra; 22 standard proxy/library)
- Proxy deployments represented within implementation groups: 81
- Deployed-live implementations: 11 of 472 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 2/7
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 472
- Raw deployments: 472
- Audits discovered: 24 (24 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 11
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-01 (fresh)
- Audit staleness (calendar age): 5 fresh, 4 aging, 13 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: 14.3% (ChainSecurity)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| WatchPug | Tier 2 | 2 | 28.6% | 2026-01 |
| 0xleastwood | Tier 2 | 1 | 14.3% | 2022-09 |
| Ackee Blockchain | Tier 2 | 1 | 14.3% | 2022-05 |
| ChainSecurity | Tier 1 | 1 | 14.3% | 2025-08 |
| CMichel | Tier 2 | 1 | 14.3% | 2022-08 |
| Dedaub | Tier 2 | 1 | 14.3% | 2022-07 |
| Dingbats | Tier 2 | 1 | 14.3% | n/a |
| HickupHH3 | Tier 2 | 1 | 14.3% | 2026-01 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| PendleMarket | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251186 | `0xd0354d...eccca2` | ✅ Audited |
| StakedPendle | unknown | project_anchor | own_supporting | 1 | ethereum | unit-251192 | `0x999999...664144` | ✅ Audited |

### ⚠️ Verified + Unaudited (465)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ActionAddRemoveLiq | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x1fdfed...576aaf` | ⚠️ Unaudited |
| ActionAddRemoveLiqV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x026644...d07507` | ⚠️ Unaudited |
| ActionCallback | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09f4ac...1c3d07` | ⚠️ Unaudited |
| ActionCallbackV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8d4077...f51c5e` | ⚠️ Unaudited |
| ActionInfoStatic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x25e5e9...cb55fd` | ⚠️ Unaudited |
| ActionMarketAuxStatic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x026644...d07507` | ⚠️ Unaudited |
| ActionMarketCoreStatic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x203d3a...db769c` | ⚠️ Unaudited |
| ActionMintRedeem | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x412511...fc2e8b` | ⚠️ Unaudited |
| ActionMintRedeemStatic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1812a7...437ed6` | ⚠️ Unaudited |
| ActionMisc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x0ff7cc...d36a64` | ⚠️ Unaudited |
| ActionMiscV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x000000...7b68a0` | ⚠️ Unaudited |
| ActionStorageV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x2700ad...96eabb` | ⚠️ Unaudited |
| ActionSwapPT | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x000000...6f7ea0` | ⚠️ Unaudited |
| ActionSwapPTV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x198d70...a73d24` | ⚠️ Unaudited |
| ActionSwapPTYT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f438e...41c3b7` | ⚠️ Unaudited |
| ActionSwapYT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x05320f...d9d335` | ⚠️ Unaudited |
| ActionSwapYTV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32ed8f...1d158d` | ⚠️ Unaudited |
| ActionVePendleStatic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07f498...a403d2` | ⚠️ Unaudited |
| Address | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5aa40...d0af54` | ⚠️ Unaudited |
| AddressProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x05c308...564dc3` | ⚠️ Unaudited |
| AdvancedWithdrawer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x215061...e8f633` | ⚠️ Unaudited |
| AggregationRouterHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09d4b4...a1da29` | ⚠️ Unaudited |
| Airdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0c58c2...3902d9` | ⚠️ Unaudited |
| AnycallExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x70d6b3...a72c40` | ⚠️ Unaudited |
| AnyswapV5ERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x130966...b8c18d` | ⚠️ Unaudited |
| AToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xbcca60...96263c` | ⚠️ Unaudited |
| AVAXLevSwapperV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x69bfea...58c7b1` | ⚠️ Unaudited |
| AVAXOracleV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x082454...6ff63a` | ⚠️ Unaudited |
| AvaxSwapperV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2b7275...8f36a8` | ⚠️ Unaudited |
| BadBuildersClubSoulbound | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2d1e2e...ac6a42` | ⚠️ Unaudited |
| BaseSplitCodeFactoryContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x051dcd...96b1fd` | ⚠️ Unaudited |
| BentoBoxV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf4f463...d1d18f` | ⚠️ Unaudited |
| BoostedMasterChefJoe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x217945...8266e9` | ⚠️ Unaudited |
| BoringHelperV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1dd4d8...ab5741` | ⚠️ Unaudited |
| BotDecisionLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4efc8c...c0a776` | ⚠️ Unaudited |
| BridgeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x19860c...8dde98` | ⚠️ Unaudited |
| BTRFLY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0d4ce...7cec3a` | ⚠️ Unaudited |
| BtrflyOhmBondingCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa77b57...93f59a` | ⚠️ Unaudited |
| BulkSeller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a3753...f00f73` | ⚠️ Unaudited |
| BulkSellerFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40ae6d...cb7c85` | ⚠️ Unaudited |
| BulkSellerOffchain | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9acc60...6bd320` | ⚠️ Unaudited |
| CamelotV1VolatilePreview | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xaa472d...0feca2` | ⚠️ Unaudited |
| CErc20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x158079...ac95c1` | ⚠️ Unaudited |
| CErc20Delegator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x5d3a53...8e3643` | ⚠️ Unaudited |
| CEther | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ddc2d...270ed5` | ⚠️ Unaudited |
| Cliff | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaff905...2d4f34` | ⚠️ Unaudited |
| CommunityTreasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x650f58...a72358` | ⚠️ Unaudited |
| Comp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc00e94...f26888` | ⚠️ Unaudited |
| ComposableStablePreview | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a303b...5d3007` | ⚠️ Unaudited |
| ComposableStablePreviewProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x4239dd...faf64a` | ⚠️ Unaudited |
| ComposableStablePreviewV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x886c9a...00442d` | ⚠️ Unaudited |
| ComposableStablePreviewV5 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39a65b...7341fe` | ⚠️ Unaudited |
| Comptroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x178053...63df29` | ⚠️ Unaudited |
| ConnectV2BenqiAvalanche | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xff5a7a...c35ca8` | ⚠️ Unaudited |
| ConnectV2QiAvalanche | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xac33e9...a58527` | ⚠️ Unaudited |
| CustomMasterChefJoeV2Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xadaf18...e6e398` | ⚠️ Unaudited |
| Dai | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251182 | `0x6b1754...271d0f` | ⚠️ Unaudited |
| DaiUsds | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x322573...db276a` | ⚠️ Unaudited |
| Directory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x702a89...5caf2d` | ⚠️ Unaudited |
| Distributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2120a...10683f` | ⚠️ Unaudited |
| DutchAuction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27a729...65de1e` | ⚠️ Unaudited |
| EmptyUUPS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f69a9...297807` | ⚠️ Unaudited |
| ERC1155GatewayFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe0560d...835705` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x428f2f...6165c8` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x921b10...32fdbf` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | mantle | n/a | `0x051dcd...96b1fd` | ⚠️ Unaudited |
| ERC20BulkSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x77b8c8...25e0ee` | ⚠️ Unaudited |
| ERC20GatewayFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4643d9...b0df5a` | ⚠️ Unaudited |
| ERC20Mock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x72281a...106587` | ⚠️ Unaudited |
| ERC20Premined | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x19c7fa...9d4e38` | ⚠️ Unaudited |
| ERC677GatewayFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x12e994...1d8f3e` | ⚠️ Unaudited |
| ERC721Gateway_MintBurn | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x17e2e3...49e49e` | ⚠️ Unaudited |
| ERC721GatewayFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x869ec6...0d4964` | ⚠️ Unaudited |
| EthReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7549b6...391532` | ⚠️ Unaudited |
| ExpiredLpPtRedeemer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0e7cac...eac259` | ⚠️ Unaudited |
| FactoryPortal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2ac03b...c3f056` | ⚠️ Unaudited |
| FantomAnimals | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3cb196...bb6dda` | ⚠️ Unaudited |
| FiatToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8cbde2...77a91a` | ⚠️ Unaudited |
| FiatTokenProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa0b869...06eb48` | ⚠️ Unaudited |
| FiatTokenUtil | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6315aa...0355a6` | ⚠️ Unaudited |
| FiatTokenV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x088247...57fe56` | ⚠️ Unaudited |
| FiatTokenV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7277a...3778a2` | ⚠️ Unaudited |
| FiatTokenV2_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2327a...4cbdcf` | ⚠️ Unaudited |
| FinalizeAndBroadcast | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcfaa95...5fd4ee` | ⚠️ Unaudited |
| FixedPricePTAMM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x39cd9c...c76d23` | ⚠️ Unaudited |
| GMTokenPricingHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x885af6...a672cf` | ⚠️ Unaudited |
| GovernorAlpha | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb0ff2b...f43ee1` | ⚠️ Unaudited |
| HLPPricingHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xae22d1...95457d` | ⚠️ Unaudited |
| ImplicitSwapfeeContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43d030...72011f` | ⚠️ Unaudited |
| InstaBenqiMappingAvalanche | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe19fba...c58ba6` | ⚠️ Unaudited |
| JCollateralCapErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x125cf8...84b4d2` | ⚠️ Unaudited |
| JCollateralCapErc20Delegator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x102011...ae0fbf` | ⚠️ Unaudited |
| JoeBar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x57319d...fd4f33` | ⚠️ Unaudited |
| JoeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9ad6c3...0cfa10` | ⚠️ Unaudited |
| JoeHatToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x82fe03...62077c` | ⚠️ Unaudited |
| JoeLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfdf50f...8a47cc` | ⚠️ Unaudited |
| JoeMaker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4247c5...bcdcfe` | ⚠️ Unaudited |
| JoeMakerV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdb5b4c...a475d3` | ⚠️ Unaudited |
| JoePair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3acd2f...822c86` | ⚠️ Unaudited |
| JoeRoll | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xacff0f...0bcb58` | ⚠️ Unaudited |
| JoeRouter02 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x60ae61...0933d4` | ⚠️ Unaudited |
| JoeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6e84a6...bc0fdd` | ⚠️ Unaudited |
| Joetroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1ed836...92cfcb` | ⚠️ Unaudited |
| JumpRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x363637...721f3b` | ⚠️ Unaudited |
| JWrappedNativeDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x267a45...149df5` | ⚠️ Unaudited |
| KyberMathHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x2f9e93...c7f151` | ⚠️ Unaudited |
| LimitBackendHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x599609...08bfcd` | ⚠️ Unaudited |
| LimitMinting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xab9aec...70d68b` | ⚠️ Unaudited |
| LinearPreview | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x73187e...5f2ad6` | ⚠️ Unaudited |
| LiquidityPoolManagerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x912b5d...397994` | ⚠️ Unaudited |
| LiquiditySeedingHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x203d3a...db769c` | ⚠️ Unaudited |
| LongYieldTradingBot | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x263833...9eb14c` | ⚠️ Unaudited |
| LPChainlinkOracleV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x04a34f...3e31d6` | ⚠️ Unaudited |
| LPResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x04df48...092682` | ⚠️ Unaudited |
| MarketMathStatic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0582d9...2102c2` | ⚠️ Unaudited |
| MarketSweed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xaa3350...579598` | ⚠️ Unaudited |
| MasterChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2edad...a888cd` | ⚠️ Unaudited |
| MasterChefJoeV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd6a4f1...f53052` | ⚠️ Unaudited |
| MasterChefJoeV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x188bed...c18f00` | ⚠️ Unaudited |
| MasterMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x566c11...674335` | ⚠️ Unaudited |
| Maximillion | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x10338e...b05348` | ⚠️ Unaudited |
| MerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xedd1cb...115e34` | ⚠️ Unaudited |
| MetaStablePreview | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x21a9fd...d59cd3` | ⚠️ Unaudited |
| Migrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x818180...d94830` | ⚠️ Unaudited |
| MlpPricingHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x10115a...9e45d8` | ⚠️ Unaudited |
| Multicall3p | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb782c6...d2d202` | ⚠️ Unaudited |
| NCStableCoinInterestRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x645e75...231f4c` | ⚠️ Unaudited |
| NCStandardInterestRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18b5b6...5d14a7` | ⚠️ Unaudited |
| NFTHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83d85a...8f38e8` | ⚠️ Unaudited |
| NFTRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1fbbc7...692cd8` | ⚠️ Unaudited |
| OracleLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02176d...c10ecc` | ⚠️ Unaudited |
| PangolinFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcdeea3...959737` | ⚠️ Unaudited |
| PangolinRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe54ca8...c89106` | ⚠️ Unaudited |
| PBTRFLY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x575038...e362df` | ⚠️ Unaudited |
| PENDLE | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251184 | `0x808507...8da827` | ⚠️ Unaudited |
| PendleAaveMarket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8315bc...a2d6bd` | ⚠️ Unaudited |
| PendleAaveV2YieldTokenHolder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x33d307...021745` | ⚠️ Unaudited |
| PendleAaveV3OffchainRewardsSYUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x540e18...6d0768` | ⚠️ Unaudited |
| PendleAaveV3SY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c28d2...9dfb74` | ⚠️ Unaudited |
| PendleAaveV3WithRewardsSYUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x269b2a...a98161` | ⚠️ Unaudited |
| PendleAerodromeVolatileSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x02adf7...833a84` | ⚠️ Unaudited |
| PendleAgETHSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1b915...02752a` | ⚠️ Unaudited |
| PendleAmphorWstETHVaultSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x33a269...714b6d` | ⚠️ Unaudited |
| PendleAnkrBNBSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x58732f...21580d` | ⚠️ Unaudited |
| PendleArbitrumEPendleSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd302d7...3f18e3` | ⚠️ Unaudited |
| PendleArbitrumStakedEthSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2ca0ba...0f4c69` | ⚠️ Unaudited |
| PendleAsBNBSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0f3872...2d2993` | ⚠️ Unaudited |
| PendleAstherusASUSDFSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1f42fd...1272a4` | ⚠️ Unaudited |
| PendleAstherusUSDFSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0ab3ae...8fa6d6` | ⚠️ Unaudited |
| PendleAuraBbAWethSwethSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb611d...887da3` | ⚠️ Unaudited |
| PendleAuraWethAnkrethSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0ca1e...01e9dc` | ⚠️ Unaudited |
| PendleAuraWethAnkrethSYV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c662f...ff4a39` | ⚠️ Unaudited |
| PendleAuraWethRethSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf7083...3dd915` | ⚠️ Unaudited |
| PendleAuraWethRocketEthSYV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9bdb1d...c89e56` | ⚠️ Unaudited |
| PendleAuraWethStafiEthSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35be86...3891c3` | ⚠️ Unaudited |
| PendleAuraWethVethSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c76e1...a159ea` | ⚠️ Unaudited |
| PendleAuraWethWstethSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8267fd...dc9820` | ⚠️ Unaudited |
| PendleAuraWstethAnkreth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5cd09...36f044` | ⚠️ Unaudited |
| PendleBeetsStakedSonicSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x64aec8...7316e9` | ⚠️ Unaudited |
| PendleBenQiForge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x23b868...4612bc` | ⚠️ Unaudited |
| PendleBenQiYieldContractDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x21d2e8...0fc361` | ⚠️ Unaudited |
| PendleBeraStoneVaultSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xd7b2a4...e97c45` | ⚠️ Unaudited |
| PendleBeraVedaBTCSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13ab92...64afbe` | ⚠️ Unaudited |
| PendleBeraVedaETHSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x042677...5f55da` | ⚠️ Unaudited |
| PendleBoringOneracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f0318...195cd9` | ⚠️ Unaudited |
| PendleBoringSolvBTCOneracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f060b...735953` | ⚠️ Unaudited |
| PendleBridgedLSDSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x96a528...c24286` | ⚠️ Unaudited |
| PendleBridgedPrincipalToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0ea46a...6e14b9` | ⚠️ Unaudited |
| PendleCamelotV1VolatileSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x239c7c...64c56e` | ⚠️ Unaudited |
| PendleCMETHSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x2ab88a...f63e70` | ⚠️ Unaudited |
| PendleCommonPoolDeployHelperV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x026644...d07507` | ⚠️ Unaudited |
| PendleCompoundMarket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x944d17...30334f` | ⚠️ Unaudited |
| PendleCompoundYieldTokenHolder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0aa68...320c60` | ⚠️ Unaudited |
| PendleConcreteLBTCSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04b3f3...ada698` | ⚠️ Unaudited |
| PendleConcreteSolvBTCBBNSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x24e957...4f0b6b` | ⚠️ Unaudited |
| PendleConcreteSUSDESY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7258e5...1e2790` | ⚠️ Unaudited |
| PendleConcreteUniBTCSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c4ee9...e4b652` | ⚠️ Unaudited |
| PendleConcreteVaultSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69323f...08cf1c` | ⚠️ Unaudited |
| PendleCornEBTCSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x091de0...6c032c` | ⚠️ Unaudited |
| PendleCornLBTCSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d6ec7...7f223e` | ⚠️ Unaudited |
| PendleCornPumpBTCSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56bb34...aaa430` | ⚠️ Unaudited |
| PendleCornSolvBTCBBNSYUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x23e068...8b5f80` | ⚠️ Unaudited |
| PendleCornUniBTCSYUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83e1d1...cc5593` | ⚠️ Unaudited |
| PendleCurveFraxUsdcSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd393d1...81bc04` | ⚠️ Unaudited |
| PendleCurvePool2TokenSYUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xba04c9...ac8037` | ⚠️ Unaudited |
| PendleCUSDAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae8bc0...21d33b` | ⚠️ Unaudited |
| PendleData | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x94d7e5...f3032c` | ⚠️ Unaudited |
| PendleDecimalsWrapperFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x472268...3d696b` | ⚠️ Unaudited |
| PendleDolomiteSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3055a7...2bc7e2` | ⚠️ Unaudited |
| PendleEBTCSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1aebb4...12aeab` | ⚠️ Unaudited |
| PendleEBTCSYV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x7acdf2...961880` | ⚠️ Unaudited |
| PendleEEigenSYUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x782374...b21923` | ⚠️ Unaudited |
| PendleERC20SY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x0013ac...d8945e` | ⚠️ Unaudited |
| PendleERC20SYUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1fad3c...2c1bd5` | ⚠️ Unaudited |
| PendleERC20WithAdapterSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69787f...94a573` | ⚠️ Unaudited |
| PendleERC20WithSupplyCapSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a7096...ac4f3f` | ⚠️ Unaudited |
| PendleERC4626NoRedeemNoDepositUpgSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1992a6...cd7dfc` | ⚠️ Unaudited |
| PendleERC4626NoRedeemUpgSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x338e2c...d718cb` | ⚠️ Unaudited |
| PendleERC4626NotRedeemableToAssetSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf6193c...ec980f` | ⚠️ Unaudited |
| PendleERC4626NotRedeemableToAssetSYV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10222f...02ed8e` | ⚠️ Unaudited |
| PendleERC4626OptRedeemSYUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48b115...01af1b` | ⚠️ Unaudited |
| PendleERC4626Scaled18SY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x39e272...195f72` | ⚠️ Unaudited |
| PendleERC4626SY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a26e7...333f08` | ⚠️ Unaudited |
| PendleERC4626SYV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x292e67...57c2fc` | ⚠️ Unaudited |
| PendleERC4626UpgSYV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0a9116...520b78` | ⚠️ Unaudited |
| PendleEUSDESY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63d06b...3e5661` | ⚠️ Unaudited |
| PendleEUSDSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e16e4...c207f1` | ⚠️ Unaudited |
| PendleExchangeRateOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x170a44...b9f239` | ⚠️ Unaudited |
| PendleExchangeRateOracleApp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4d6911...5adcd8` | ⚠️ Unaudited |
| PendleExitAll | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe05082...bbb04c` | ⚠️ Unaudited |
| PendleExternalCapGates | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x48130c...c43bde` | ⚠️ Unaudited |
| PendleExternalRewardDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x068def...188ea3` | ⚠️ Unaudited |
| PendleEzETHL2SY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0de802...8c5202` | ⚠️ Unaudited |
| PendleEzETHSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22e12a...4c716d` | ⚠️ Unaudited |
| PendleFeeDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0caa6...2ce8cb` | ⚠️ Unaudited |
| PendleFeeSetter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x302568...32ec64` | ⚠️ Unaudited |
| PendleFluxLendingSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdeaa58...6f2d76` | ⚠️ Unaudited |
| PendleFXSaveSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x13945b...18d2ab` | ⚠️ Unaudited |
| PendleGaugeControllerMainchainUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11a72d...fd5f47` | ⚠️ Unaudited |
| PendleGaugeControllerSidechainUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x07b2c3...cbf733` | ⚠️ Unaudited |
| PendleGaugeControllerUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x17f100...993d58` | ⚠️ Unaudited |
| PendleGDaiSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x07c3de...af7e14` | ⚠️ Unaudited |
| PendleGenericLiquidityMining | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f3bcc...d208c8` | ⚠️ Unaudited |
| PendleGenericLiquidityMiningMulti | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x130543...506381` | ⚠️ Unaudited |
| PendleGenericMarket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x11b934...f97fb4` | ⚠️ Unaudited |
| PendleGenericMarketFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4d0cf9...74af8e` | ⚠️ Unaudited |
| PendleGlpSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x144059...2a1b7d` | ⚠️ Unaudited |
| PendleGMV2SingleTokenSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9e83b9...ee4d10` | ⚠️ Unaudited |
| PendleGMV2SingleTokenSY__FixedOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x293d5a...9f9fe5` | ⚠️ Unaudited |
| PendleGMV2TokenSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa9ad16...1ae631` | ⚠️ Unaudited |
| PendleGovernanceManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a05a6...142476` | ⚠️ Unaudited |
| PendleGovernanceProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x09c9ac...c355be` | ⚠️ Unaudited |
| PendleGUSDCSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0a9ed4...221d09` | ⚠️ Unaudited |
| PendleHgETHSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x378fa6...dfc723` | ⚠️ Unaudited |
| PendleHlpSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x3a0371...84baf3` | ⚠️ Unaudited |
| PendleHwHLPSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b9ff0...034071` | ⚠️ Unaudited |
| PendleInfraredBGTSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x0059a7...2b1a97` | ⚠️ Unaudited |
| PendleInstadappLendingSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1da9fb...be8d38` | ⚠️ Unaudited |
| PendleKarakVaultSUSDESY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1b6418...c8e19e` | ⚠️ Unaudited |
| PendleKarakVaultUSDESY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd63a35...85b0e8` | ⚠️ Unaudited |
| PendleKarakVaultWEETHSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ed981...ebeaaf` | ⚠️ Unaudited |
| PendleKyberElasticSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x77bda3...ffe3c5` | ⚠️ Unaudited |
| PendleKyberElasticSYUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1fad3c...2c1bd5` | ⚠️ Unaudited |
| PendleL2LRTSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0e7e95...854e70` | ⚠️ Unaudited |
| PendleL2LRTUpgSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x09c9ac...c355be` | ⚠️ Unaudited |
| PendleLBTCBaseSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x035a90...9acf59` | ⚠️ Unaudited |
| PendleLBTCBaseSYScaled18 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x67e64a...5801f9` | ⚠️ Unaudited |
| PendleLBTCExchangeRateOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82199b...e5e43b` | ⚠️ Unaudited |
| PendleLBTCSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc781c0...5c6f36` | ⚠️ Unaudited |
| PendleLevelUSDSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x14ff57...1b9748` | ⚠️ Unaudited |
| PendleLimitRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x035a90...9acf59` | ⚠️ Unaudited |
| PendleLinearDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2b3583...8b93c6` | ⚠️ Unaudited |
| PendleLiquidBeraBTCSYScaled18 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x3d9819...b01aff` | ⚠️ Unaudited |
| PendleLiquidityMiningBaseV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x071dc6...383aea` | ⚠️ Unaudited |
| PendleLiquidityMiningBaseV2Multi | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x224d39...232713` | ⚠️ Unaudited |
| PendleLooksStakingSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35c163...ead345` | ⚠️ Unaudited |
| PendleLpGlpOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x67e64a...5801f9` | ⚠️ Unaudited |
| PendleLpHolder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f16b2...2d349d` | ⚠️ Unaudited |
| PendleLPWrapperFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12930b...d58e19` | ⚠️ Unaudited |
| PendleMarketFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27b1da...740784` | ⚠️ Unaudited |
| PendleMarketFactoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x166485...2f58b9` | ⚠️ Unaudited |
| PendleMarketFactoryV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x02adf7...833a84` | ⚠️ Unaudited |
| PendleMarketFactoryV6Upg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1f6251...0e6bf4` | ⚠️ Unaudited |
| PendleMarketReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16b4ad...c7cdc7` | ⚠️ Unaudited |
| PendleMellow4626SYUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x210e15...f7422b` | ⚠️ Unaudited |
| PendleMellowRstETHSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x749087...0202f9` | ⚠️ Unaudited |
| PendleMellowSUSDESY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51eb1f...5f0b62` | ⚠️ Unaudited |
| PendleMellowVaultERC20SYUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ffbf8...3f10b6` | ⚠️ Unaudited |
| PendleMellowVaultERC4626SYUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b91b6...df9718` | ⚠️ Unaudited |
| PendleMellowVaultSYBaseV2Upg | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x640467...18291f` | ⚠️ Unaudited |
| PendleMellowVaultWstETHSYUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0304e6...0b6e13` | ⚠️ Unaudited |
| PendleMerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x23a102...a5fcaf` | ⚠️ Unaudited |
| PendleMETHSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x9ab557...3f8665` | ⚠️ Unaudited |
| PendleMidasSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x01e0f0...88bb5c` | ⚠️ Unaudited |
| PendleMlpSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4b3f79...b3ba37` | ⚠️ Unaudited |
| PendleMoonwellTokenBaseSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x02176d...c10ecc` | ⚠️ Unaudited |
| PendleMoonwellTokenFix | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x41fad9...46713f` | ⚠️ Unaudited |
| PendleMorpho4626AssetSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8077b6...34d130` | ⚠️ Unaudited |
| PendleMsgSendEndpointUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x07b101...2e989f` | ⚠️ Unaudited |
| PendleMulticall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x05d0ea...fe632d` | ⚠️ Unaudited |
| PendleMulticallV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9c5f6b...33434c` | ⚠️ Unaudited |
| PendleMultiTokenMerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x1e5629...c2db00` | ⚠️ Unaudited |
| PendleOffchainStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x57ab80...65875e` | ⚠️ Unaudited |
| PendleOnePause | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x227461...829a32` | ⚠️ Unaudited |
| PendleOnsenComplexRewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e821a...d064f4` | ⚠️ Unaudited |
| PendleOracleForSyProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xc2eedc...b47020` | ⚠️ Unaudited |
| PendleOriginSonicSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x563c6b...767ce3` | ⚠️ Unaudited |
| PendleOwnershipToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x010a02...9a1324` | ⚠️ Unaudited |
| PendlePaladinSCTokenSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x79cac1...31daa2` | ⚠️ Unaudited |
| PendlePausingManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ef442...f3eed4` | ⚠️ Unaudited |
| PendlePoolDeployHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x01d0a8...ff8a0c` | ⚠️ Unaudited |
| PendlePoolDeployHelperV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0b692f...38e655` | ⚠️ Unaudited |
| PendlePrincipalToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x2719e6...36376f` | ⚠️ Unaudited |
| PendlePrincipalTokenV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x04eb6b...531c0c` | ⚠️ Unaudited |
| PendlePtGlpOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x43d030...72011f` | ⚠️ Unaudited |
| PendlePtLpOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x15aab5...6ad707` | ⚠️ Unaudited |
| PendlePTOFTAdapterFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x24ec4b...002744` | ⚠️ Unaudited |
| PendlePtOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0b692f...38e655` | ⚠️ Unaudited |
| PendlePufStETHSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25ad86...0d7ff3` | ⚠️ Unaudited |
| PendlePufWETHSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x253008...a0c905` | ⚠️ Unaudited |
| PendlePumpBTCSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78f9af...f19ab2` | ⚠️ Unaudited |
| PendlePYLpOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0f47ae...397e23` | ⚠️ Unaudited |
| PendleRedeemProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f8380...b98472` | ⚠️ Unaudited |
| PendleRedStoneRateOracleAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x01cccb...9947bb` | ⚠️ Unaudited |
| PendleRenzoPreviewHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x9c2930...36cfad` | ⚠️ Unaudited |
| PendleReservoirUSDSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x43d665...4a7931` | ⚠️ Unaudited |
| PendleReservoirWsrUSDSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1eb76f...c64600` | ⚠️ Unaudited |
| PendleRewardManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0b1fc9...e714ff` | ⚠️ Unaudited |
| PendleRewardManagerMulti | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4b2163...d418fa` | ⚠️ Unaudited |
| PendleREZtakeSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8eb1a6...20c3e4` | ⚠️ Unaudited |
| PendleRLPSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0efdee...022add` | ⚠️ Unaudited |
| PendleRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x15afc7...9c8256` | ⚠️ Unaudited |
| PendleRouterStatic | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0x0013ac...d8945e` | ⚠️ Unaudited |
| PendleRouterStatic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x3b5ae5...fa0e3f` | ⚠️ Unaudited |
| PendleRouterV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1e5629...c2db00` | ⚠️ Unaudited |
| PendleRsETHSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x730a5e...da793c` | ⚠️ Unaudited |
| PendleRswETHSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x778672...c615d9` | ⚠️ Unaudited |
| PendleSavingUSDASY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4464fb...32b1ec` | ⚠️ Unaudited |
| PendleSENASY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa36ecc...a12c3d` | ⚠️ Unaudited |
| PendleSfrxEthSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb8300...210673` | ⚠️ Unaudited |
| PendleSGHOSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae14ae...71f609` | ⚠️ Unaudited |
| PendleSiloV2SY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0cb577...199cd8` | ⚠️ Unaudited |
| PendleSiloWithIncentiveNonBorrowableSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x374c07...29a43a` | ⚠️ Unaudited |
| PendleSiloWithIncentiveSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0c7fdb...ae32d3` | ⚠️ Unaudited |
| PendleSimpleERC20TokenHolder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1a14f2...5e31c2` | ⚠️ Unaudited |
| PendleSLPLiquidityMining | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c09fd...1c2bcc` | ⚠️ Unaudited |
| PendleSolvBeraBTCSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x67e58f...c609d7` | ⚠️ Unaudited |
| PendleSolvBNBBTCSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x01517f...08db61` | ⚠️ Unaudited |
| PendleSolvBTCBBNBaseSYUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1098b4...699558` | ⚠️ Unaudited |
| PendleSolvBTCBBNBSCSYUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x09c9ac...c355be` | ⚠️ Unaudited |
| PendleSolvBTCBBNSYUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x859c11...5b4e34` | ⚠️ Unaudited |
| PendleSophonFarmingSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x065347...715246` | ⚠️ Unaudited |
| PendleSophonPointManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x74c5a0...45d986` | ⚠️ Unaudited |
| PendleSparkLinearDiscountOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3fa71e...9e7d35` | ⚠️ Unaudited |
| PendleStakedLevelUSDSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0a9b2c...6cf6f9` | ⚠️ Unaudited |
| PendleStakingSPKUSDSSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0ee69a...a0d075` | ⚠️ Unaudited |
| PendleStakingUSDSSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb0170...8415de` | ⚠️ Unaudited |
| PendleStEURSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x183e6d...8cc8b1` | ⚠️ Unaudited |
| PendleStkGHOSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ae501...8d160a` | ⚠️ Unaudited |
| PendleStrataUSDESY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x33e889...af8bee` | ⚠️ Unaudited |
| PendleSuperOETHSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x35c163...ead345` | ⚠️ Unaudited |
| PendleSUSDEL2SY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x15aab5...6ad707` | ⚠️ Unaudited |
| PendleSUSDESY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0badf3...0387d2` | ⚠️ Unaudited |
| PendleSUSDSAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2effcf...9e93ea` | ⚠️ Unaudited |
| PendleSUSDSArbitrumSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x74f767...5d32e3` | ⚠️ Unaudited |
| PendleSUSDSSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe3d4e...018ba7` | ⚠️ Unaudited |
| PendleSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0e669e...95fbb5` | ⚠️ Unaudited |
| PendleSwapAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0e669e...95fbb5` | ⚠️ Unaudited |
| PendleSwapArbitrum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4546ff...56112c` | ⚠️ Unaudited |
| PendleSwapEthereum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2065e1...d5af41` | ⚠️ Unaudited |
| PendleSwapL1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e8b6a...180ad1` | ⚠️ Unaudited |
| PendleSwapL2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1f5b1f...965e35` | ⚠️ Unaudited |
| PendleSwellRswETHStakingSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f3a7a...5d38ad` | ⚠️ Unaudited |
| PendleSyrupSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9e9c8...71551d` | ⚠️ Unaudited |
| PendleTerminalExternalCap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x315f46...4c3425` | ⚠️ Unaudited |
| PendleTerminalSYScaled18 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0d2984...7451b3` | ⚠️ Unaudited |
| PendleTokenDistribution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8849d0...7635df` | ⚠️ Unaudited |
| PendleTraderJoeYieldContractDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x331a4e...e30241` | ⚠️ Unaudited |
| PendleTreeHouseETHSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37db38...c0c7c3` | ⚠️ Unaudited |
| PendleUmbrellaStake4626SY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d3744...6dbaf4` | ⚠️ Unaudited |
| PendleUmbrellaStakeTokenSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1d292b...d93151` | ⚠️ Unaudited |
| PendleUniBTCBeraSYUpgScaled18 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x313470...7d8f5a` | ⚠️ Unaudited |
| PendleUniBTCSYUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x87b8e4...407d78` | ⚠️ Unaudited |
| PendleUniETHSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc430db...6d16b7` | ⚠️ Unaudited |
| PendleUSDESY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x248d83...b9936e` | ⚠️ Unaudited |
| PendleUSDSSYWithCap | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x508def...36697b` | ⚠️ Unaudited |
| PendleUsualUSD0PPSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x524538...c461f7` | ⚠️ Unaudited |
| PendleVenusBNBSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7b5a43...375c19` | ⚠️ Unaudited |
| PendleVotingControllerUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1fad3c...2c1bd5` | ⚠️ Unaudited |
| PendleWansAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xaa472d...0feca2` | ⚠️ Unaudited |
| PendleWbEthSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x96f77f...b966f9` | ⚠️ Unaudited |
| PendleWcgUSDSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x77d07a...c06ebf` | ⚠️ Unaudited |
| PendleWEEthkSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0fa609...a21a77` | ⚠️ Unaudited |
| PendleWEEthkWithRateSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbbf8cf...982d32` | ⚠️ Unaudited |
| PendleWEEthsSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x772079...b3400a` | ⚠️ Unaudited |
| PendleWEEthsWithRateSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x012bad...02c9c5` | ⚠️ Unaudited |
| PendleWEEthSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac0047...970d65` | ⚠️ Unaudited |
| PendleWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6fa134...53332a` | ⚠️ Unaudited |
| PendleWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2e130d...169a47` | ⚠️ Unaudited |
| PendleWstETHPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x905109...63b3f2` | ⚠️ Unaudited |
| PendleWstEthSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbc72d...40c0bc` | ⚠️ Unaudited |
| PendleXJoeForge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x09131d...0daaca` | ⚠️ Unaudited |
| PendleYearnBalancerLPSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa47e35...85f431` | ⚠️ Unaudited |
| PendleYieldContractDeployerBaseV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3714e5...eb5762` | ⚠️ Unaudited |
| PendleYieldContractFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x02fafe...f82b32` | ⚠️ Unaudited |
| PendleYieldContractFactoryUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x07f498...a403d2` | ⚠️ Unaudited |
| PendleYieldContractFactoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x1e9ff4...d60b20` | ⚠️ Unaudited |
| PendleZerolendEBTCSYUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59ac00...4b85ea` | ⚠️ Unaudited |
| PendleZtakeEzETHSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x7a493b...434744` | ⚠️ Unaudited |
| PendleZtakeRsETHSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x34349c...0a9789` | ⚠️ Unaudited |
| PendleZtakeUSDESY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x085ba3...7faaec` | ⚠️ Unaudited |
| PendleZtakeWeETHSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xd7df7e...20bfa7` | ⚠️ Unaudited |
| PglStakingContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe59988...906cb2` | ⚠️ Unaudited |
| PglStakingContractProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4074da...eb9e4a` | ⚠️ Unaudited |
| Png | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x60781c...aca982` | ⚠️ Unaudited |
| PriceOracleProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1653c0...e53ba1` | ⚠️ Unaudited |
| PriceOracleProxyUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x107b31...b8555a` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1035b0...c3d784` | ⚠️ Unaudited |
| PtAndLpToAsset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfa6b22...f6bd57` | ⚠️ Unaudited |
| Qi | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x872943...76c0f5` | ⚠️ Unaudited |
| QiAvax | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5c0401...47ef1c` | ⚠️ Unaudited |
| QiErc20Delegator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | `0x334ad8...9a7909` | ⚠️ Unaudited |
| QiErc20Delegator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4c9f01...0ddd30` | ⚠️ Unaudited |
| QiTokenSaleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x23de20...9d6bea` | ⚠️ Unaudited |
| QiTokenSaleDistributorProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa1f5ae...6bb618` | ⚠️ Unaudited |
| REDACTEDBondDepository | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98e45e...10b96d` | ⚠️ Unaudited |
| REDACTEDBondDepositoryRewardBased | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0daf1a...4a1e09` | ⚠️ Unaudited |
| REDACTEDBondingCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca1d53...ccf2bc` | ⚠️ Unaudited |
| REDACTEDLPBondDepositoryRewardBased | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09c97d...6f1e37` | ⚠️ Unaudited |
| REDACTEDStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a5b35...fed0ea` | ⚠️ Unaudited |
| REDACTEDTreasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x086c98...9ac36b` | ⚠️ Unaudited |
| RewardDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x227449...a14885` | ⚠️ Unaudited |
| RouterStatic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x166485...2f58b9` | ⚠️ Unaudited |
| sAPE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47ba20...1539c5` | ⚠️ Unaudited |
| SimpleERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4849d2...01cc5c` | ⚠️ Unaudited |
| SimpleRewarderPerSec | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x05d06a...5a3388` | ⚠️ Unaudited |
| SingleStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07282f...e6d7f5` | ⚠️ Unaudited |
| SingleStakingManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x747fc7...495255` | ⚠️ Unaudited |
| Sky | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56072c...ed9279` | ⚠️ Unaudited |
| StakingHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0840e...d18adf` | ⚠️ Unaudited |
| StakingWarmup | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x33665f...500252` | ⚠️ Unaudited |
| SushiToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b3595...c90fe2` | ⚠️ Unaudited |
| SYRedeemAndSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb50057...86823f` | ⚠️ Unaudited |
| ThecosomataETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68f54c...26c4e7` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d903f...c33925` | ⚠️ Unaudited |
| TokenVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0147c0...0ef296` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x4e91f1...5afb32` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-251191 | `0xecac9c...5c11c1` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x09f317...4c0f8c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x27faf9...ff1bea` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | sonic | n/a | `0x02adf7...833a84` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | sonic | n/a | `0x068def...188ea3` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | sonic | n/a | `0x0ab3ae...8fa6d6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1e5f46...7da241` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | sonic | n/a | `0x27b1da...740784` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | sonic | n/a | `0x4b2726...534d30` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | mantle | n/a | `0x5363d2...f9962d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | base | n/a | `0x9e1084...2cbf60` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | base | unit-251193 | `0xecac9c...5c11c1` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | avalanche | n/a | `0x4b4e08...7fbc17` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | berachain | n/a | `0x0f2b6a...cd9540` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | berachain | n/a | `0x1ec04e...33e25e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | berachain | n/a | `0x2284e9...046068` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | berachain | n/a | `0x41d81d...1a0d64` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | berachain | n/a | `0x428f2f...6165c8` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | berachain | n/a | `0x43d030...72011f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | berachain | n/a | `0x9acc60...6bd320` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | berachain | n/a | `0x9e88f2...362109` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | berachain | n/a | `0xc61c86...0cafa9` | ⚠️ Unaudited |
| TreasuryVester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6747ac...12acee` | ⚠️ Unaudited |
| TripleSlopeRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3c5486...f73682` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d8a21...6a723b` | ⚠️ Unaudited |
| Usds | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1923df...df4102` | ⚠️ Unaudited |
| UsdsJoin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c0f89...777feb` | ⚠️ Unaudited |
| VotingEscrowPendleMainchain | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f30a9...170210` | ⚠️ Unaudited |
| VotingEscrowPendleSidechain | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x051dcd...96b1fd` | ⚠️ Unaudited |
| VotingResultBroadcaster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8daa6...1c4744` | ⚠️ Unaudited |
| WAVAX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7fc6d4...1d51d4` | ⚠️ Unaudited |
| WhitePaperInterestRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c159c...986069` | ⚠️ Unaudited |
| wMEMO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0da672...e5bb3b` | ⚠️ Unaudited |
| WstETH | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251183 | `0x7f39c5...5e2ca0` | ⚠️ Unaudited |
| wxBTRFLY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x186e55...5bd36c` | ⚠️ Unaudited |
| xBTRFLY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63b03b...843e6f` | ⚠️ Unaudited |
| XrpSwapAsset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfb288d...4269aa` | ⚠️ Unaudited |
| Zap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2c7b8e...d02027` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (5)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41fad9...46713f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251181 | `0x466ced...961cf8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251185 | `0x888888...58f946` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251187 | `0xd4f480...c2151d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251188 | `0xdc035d...07384f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [WatchPug-SparkLinearDiscountOracle.pdf](https://github.com/pendle-finance/pendle-core-v2-public/blob/main/audits/LinearDiscountOracle/WatchPug-SparkLinearDiscountOracle.pdf) | WatchPug | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [WatchPug-LpOracle.pdf](https://github.com/pendle-finance/pendle-core-v2-public/blob/main/audits/LpPtoracle/WatchPug-LpOracle.pdf) | WatchPug | Audit | 2023-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [WatchPug-PtOracle.pdf](https://github.com/pendle-finance/pendle-core-v2-public/blob/main/audits/LpPtoracle/WatchPug-PtOracle.pdf) | WatchPug | Audit | 2023-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [0xleastwood-Part 1 + 2.pdf](https://github.com/pendle-finance/pendle-core-v2-public/blob/main/audits/main%20codebase/0xleastwood/0xleastwood-Part%201%20%2B%202.pdf) | 0xleastwood | Audit | 2022-09 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 26 | high |
| [0xleastwood-Part 2.pdf](https://github.com/pendle-finance/pendle-core-v2-public/blob/main/audits/main%20codebase/0xleastwood/0xleastwood-Part%202.pdf) | 0xleastwood | Audit | 2022-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [Ackee-Part 1.pdf](https://github.com/pendle-finance/pendle-core-v2-public/blob/main/audits/main%20codebase/Ackee/Ackee-Part%201.pdf) | Ackee Blockchain | Audit | 2022-05 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 11 | high |
| [CMichel-Part 2.pdf](https://github.com/pendle-finance/pendle-core-v2-public/blob/main/audits/main%20codebase/CMichel/CMichel-Part%202.pdf) | CMichel | Audit | 2022-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |
| [Cmichel-Part 1.pdf](https://github.com/pendle-finance/pendle-core-v2-public/blob/main/audits/main%20codebase/CMichel/Cmichel-Part%201.pdf) | CMichel | Audit | 2022-08 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 79 | high |
| [ChainSecurity.pdf](https://github.com/pendle-finance/pendle-core-v2-public/blob/main/audits/main%20codebase/ChainSecurity-2024/ChainSecurity.pdf) | ChainSecurity | Audit | 2024-08 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 27 | high |
| [Dedaub-Part 1.pdf](https://github.com/pendle-finance/pendle-core-v2-public/blob/main/audits/main%20codebase/Dedaub/Dedaub-Part%201.pdf) | Dedaub | Audit | 2022-07 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 35 | high |
| [Dingbats-Part 1.pdf](https://github.com/pendle-finance/pendle-core-v2-public/blob/main/audits/main%20codebase/Dingbats/Dingbats-Part%201.pdf) | Dingbats | Audit | n/a | unknown | Direct | contract_name | matched | 1 | 0 | 0 | 40 | high |
| [Dingbats-Part 2.pdf](https://github.com/pendle-finance/pendle-core-v2-public/blob/main/audits/main%20codebase/Dingbats/Dingbats-Part%202.pdf) | Dingbats | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |
| [Spearbit.pdf](https://github.com/pendle-finance/pendle-core-v2-public/blob/main/audits/main%20codebase/Spearbit-2024/Spearbit.pdf) | Spearbit | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |
| [WatchPug-Part 1 Follow Up 1.pdf](https://github.com/pendle-finance/pendle-core-v2-public/blob/main/audits/main%20codebase/WatchPug/WatchPug-Part%201%20Follow%20Up%201.pdf) | WatchPug | Audit | 2022-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [WatchPug-Part 1 Follow Up 2.pdf](https://github.com/pendle-finance/pendle-core-v2-public/blob/main/audits/main%20codebase/WatchPug/WatchPug-Part%201%20Follow%20Up%202.pdf) | WatchPug | Audit | 2022-07 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 4 | medium |
| [WatchPug-Part 1.pdf](https://github.com/pendle-finance/pendle-core-v2-public/blob/main/audits/main%20codebase/WatchPug/WatchPug-Part%201.pdf) | WatchPug | Audit | 2022-06 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 9 | high |
| [WatchPug-Part 2.pdf](https://github.com/pendle-finance/pendle-core-v2-public/blob/main/audits/main%20codebase/WatchPug/WatchPug-Part%202.pdf) | WatchPug | Audit | 2022-08 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 7 | high |
| [HickupHH3.pdf (also discovered via alternate URL)](https://github.com/pendle-finance/pendle-core-v2-public/blob/main/audits/marketV7/HickupHH3.pdf) | HickupHH3 | Audit | 2026-01 | fresh | Direct | contract_name | matched | 1 | 1 | 0 | 12 | high |
| [WatchPug.pdf (also discovered via alternate URL)](https://github.com/pendle-finance/pendle-core-v2-public/blob/main/audits/sPendle/WatchPug.pdf) | WatchPug | Audit | 2026-01 | fresh | Direct | contract_name | matched | 1 | 1 | 0 | 10 | high|medium |
| [ChainSecurity-Markets.pdf](https://github.com/pendle-finance/boros-core-public/blob/main/audits/ChainSecurity/ChainSecurity-Markets.pdf) | ChainSecurity | Audit | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 42 | high |
| [ChainSecurity-Router and AMM.pdf](https://github.com/pendle-finance/boros-core-public/blob/main/audits/ChainSecurity/ChainSecurity-Router%20and%20AMM.pdf) | ChainSecurity | Audit | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 28 | high |
| [Pendle-Spearbit-Security-Review-August-2025.pdf](https://github.com/pendle-finance/boros-core-public/blob/main/audits/Spearbit/Pendle-Spearbit-Security-Review-August-2025.pdf) | Spearbit | Audit | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 75 | high |
| [Pendle___Boros___Market_&_MarketHub_Audit_Report_by_WatchPug_rev2.pdf](https://github.com/pendle-finance/boros-core-public/blob/main/audits/WatchPug/Pendle___Boros___Market_%26_MarketHub_Audit_Report_by_WatchPug_rev2.pdf) | WatchPug | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [Pendle___Boros___Router_&_AMM_Audit_Report_by_WatchPug_rev2.pdf](https://github.com/pendle-finance/boros-core-public/blob/main/audits/WatchPug/Pendle___Boros___Router_%26_AMM_Audit_Report_by_WatchPug_rev2.pdf) | WatchPug | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 8 | medium |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [17972] WatchPug-SparkLinearDiscountOracle.pdf — no match: Only one contract in scope: PendleSparkLinearDiscountOracle. Audit date from delivery date.
- [17973] WatchPug-LpOracle.pdf — no match: The audit report covers Pendle LP Oracle smart contracts. The main contracts in scope are PendleLpOracleLib and PendlePtOracleLib, with dependencies OracleLib and MarketMathCore. The audit date is clearly stated on the cover page.
- [17974] WatchPug-PtOracle.pdf — no match: Audit report for Pendle PT Oracle project. Scope includes PendlePtOracle and PendlePtUsdChainlinkOracle contracts.
- [17975] 0xleastwood-Part 1 + 2.pdf — matched: Extracted contract names from scope section and findings context. Audit date from cover page.
- [17976] 0xleastwood-Part 2.pdf — no match: Extracted contract names from findings headers in the report. No explicit scope section found, but contracts are clearly audited targets.
- [17977] Ackee-Part 1.pdf — matched: Extracted from Executive Summary and System Overview sections. Excluded files: WadRayMath.sol, RouterStatic.sol, ExpiryUtilsLib.sol, JoeLibrary.sol.
- [17978] CMichel-Part 2.pdf — no match: All contracts listed in the scope table are extracted. The audit date is from the cover page.
- [17979] Cmichel-Part 1.pdf — matched: All contracts listed in the scope table are included. The audit date is from the cover page.
- [17980] ChainSecurity.pdf — matched: Extracted 28 contract names from the scope table in section 2.1. Audit date from cover page.
- [17981] Dedaub-Part 1.pdf — matched: All contracts listed in the scope section of the audit report.
- [17982] Dingbats-Part 1.pdf — matched: Scope section lists 41 Solidity files; contract names extracted from filenames. No audit date found in the provided text.
- [17983] Dingbats-Part 2.pdf — no match: All contracts listed in the Scope section of the report.
- [17984] Spearbit.pdf — no match: Extracted contract names from findings context. No explicit scope section found; contracts are inferred from file paths mentioned in findings.
- [17985] WatchPug-Part 1 Follow Up 1.pdf — no match: Contracts extracted from findings and referenced files. No explicit scope section; contracts are those audited as per findings.
- [17986] WatchPug-Part 1 Follow Up 2.pdf — matched: No explicit scope section; contracts extracted from findings and file paths. Audit date from delivery date.
- [17987] WatchPug-Part 1.pdf — matched: Extracted 10 contracts from the audit report. The report covers Pendle v2 Part 1, with contracts from SuperComposableYield, core/YieldContracts, core/Market, libraries/math, and core/actions/base directories. Audit date is June 28, 2022.
- [17988] WatchPug-Part 2.pdf — matched: Extracted contract names from file paths in findings and scope overview. Audit date found on cover page and summary.
- [17991] HickupHH3.pdf — matched: Scope explicitly lists PendleGaugeControllerUpg.sol, PendleMarketFactoryV7Upg.sol (as upgrade from V6), PendleMarketV7.sol (as upgrade from V6). StakedPendle.sol is referenced in a finding but not in scope section; however, it is a contract file mentioned in the audit context. Audit date is 6 January 2026 from cover page.
- [17993] WatchPug.pdf — matched: Extracted from audit report summary and findings. Only StakedPendle and PendleGauge are explicitly mentioned as audited contracts.
- [17994] ChainSecurity-Markets.pdf — no match: Extracted 41 contract names from the scope section and version updates. Audit date from cover page: '08 August, 2025'.
- [17995] ChainSecurity-Router and AMM.pdf — no match: Extracted 28 contract names from the scope section (file paths) and the additional AuthStorage added in version 4. Audit date found on cover page: '07 August, 2025'.
- [17996] Pendle-Spearbit-Security-Review-August-2025.pdf — no match: Extracted from the executive summary and findings sections. The report covers Pendle Core v3 with multiple scopes including Market, Markethub, AMM, Router, and fix reviews. The date is from the cover page.
- [17997] Pendle___Boros___Market_&_MarketHub_Audit_Report_by_WatchPug_rev2.pdf — no match: Extracted contract names from code snippets in the audit report. The report covers Pendle Boros smart contracts, specifically MarketOrderAndOtc, FIndexOracle, MarketSetAndView, PendleAccessController, MarketFactory, MarketHub, MarginManager, Storage, and PMath. Audit date found on cover page and delivery date.
- [17998] Pendle___Boros___Router_&_AMM_Audit_Report_by_WatchPug_rev2.pdf — no match: No explicit scope section found; contracts extracted from findings and code references. Audit date from delivery date on page 3.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| WatchPug-SparkLinearDiscountOracle.pdf | PendleSparkLinearDiscountOracle | unmatched — not counted | — | listed in scope and referenced in findings | no |
| WatchPug-LpOracle.pdf | PendleLpOracleLib | unmatched — not counted | — | Listed in scope and findings reference this file. | no |
| WatchPug-LpOracle.pdf | PendlePtOracleLib | unmatched — not counted | — | Listed in scope and findings reference this file. | no |
| WatchPug-LpOracle.pdf | OracleLib | unmatched — not counted | — | Referenced in finding WP-I2. | no |
| WatchPug-LpOracle.pdf | MarketMathCore | unmatched — not counted | — | Referenced in findings as a dependency. | no |
| WatchPug-PtOracle.pdf | PendlePtOracle | unmatched — not counted | — | listed in scope and finding references | no |
| WatchPug-PtOracle.pdf | PendlePtUsdChainlinkOracle | unmatched — not counted | — | listed in scope and finding references | no |
| 0xleastwood-Part 1 + 2.pdf | SCYBaseWithRewards | unmatched — not counted | — | mentioned in finding context | no |
| 0xleastwood-Part 1 + 2.pdf | PendleYieldToken | unmatched — not counted | — | mentioned in finding context | no |
| 0xleastwood-Part 1 + 2.pdf | ActionSCYAndPYBase | unmatched — not counted | — | mentioned in finding context | no |
| 0xleastwood-Part 1 + 2.pdf | ActionSCYAndYTBase | unmatched — not counted | — | mentioned in finding context | no |
| 0xleastwood-Part 1 + 2.pdf | ActionYT | unmatched — not counted | — | mentioned in finding context | no |
| 0xleastwood-Part 1 + 2.pdf | ActionCore | unmatched — not counted | — | mentioned in finding context | no |
| 0xleastwood-Part 1 + 2.pdf | PendleQiTokenHelper | unmatched — not counted | — | mentioned in finding context | no |
| 0xleastwood-Part 1 + 2.pdf | PendleQiSAvaxSCY | unmatched — not counted | — | mentioned in finding context | no |
| 0xleastwood-Part 1 + 2.pdf | StableJoeStaking | unmatched — not counted | — | mentioned in finding context | no |
| 0xleastwood-Part 1 + 2.pdf | PendleSJoeSCY | unmatched — not counted | — | mentioned in finding context | no |
| 0xleastwood-Part 1 + 2.pdf | PendleMarket | own contract | PendleMarket (selected) `0xd0354d...eccca2` — deployed 2023-03-24 05:50:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 0xleastwood-Part 1 + 2.pdf | TokenHelper | unmatched — not counted | — | mentioned in finding context | no |
| 0xleastwood-Part 1 + 2.pdf | MarketMathCore | unmatched — not counted | — | mentioned in finding context | no |
| 0xleastwood-Part 1 + 2.pdf | PendleStargateSCY | unmatched — not counted | — | mentioned in finding context | no |
| 0xleastwood-Part 1 + 2.pdf | InterestManagerYT | unmatched — not counted | — | mentioned in finding context | no |
| 0xleastwood-Part 1 + 2.pdf | RewardManagerAbstract | unmatched — not counted | — | mentioned in finding context | no |
| 0xleastwood-Part 1 + 2.pdf | VotingControllerStorage | unmatched — not counted | — | mentioned in finding context | no |
| 0xleastwood-Part 1 + 2.pdf | PendleVotingController | unmatched — not counted | — | mentioned in finding context | no |
| 0xleastwood-Part 1 + 2.pdf | VotingEscrowPendleMainchain | unmatched — not counted | — | mentioned in finding context | no |
| 0xleastwood-Part 1 + 2.pdf | PendleGauge | unmatched — not counted | — | mentioned in finding context | no |
| 0xleastwood-Part 1 + 2.pdf | RewardManager | unmatched — not counted | — | mentioned in finding context | no |
| 0xleastwood-Part 1 + 2.pdf | CelerSender | unmatched — not counted | — | mentioned in finding context | no |
| 0xleastwood-Part 1 + 2.pdf | PendleGaugeController | unmatched — not counted | — | mentioned in finding context | no |
| 0xleastwood-Part 1 + 2.pdf | PendleGaugeControllerSidechain | unmatched — not counted | — | mentioned in finding context | no |
| 0xleastwood-Part 1 + 2.pdf | VeBalanceLib | unmatched — not counted | — | listed in scope | no |
| 0xleastwood-Part 1 + 2.pdf | WeekMath | unmatched — not counted | — | listed in scope | no |
| 0xleastwood-Part 1 + 2.pdf | MiniHelpers | unmatched — not counted | — | listed in scope | no |
| 0xleastwood-Part 2.pdf | VotingControllerStorage | unmatched — not counted | — | listed in findings | no |
| 0xleastwood-Part 2.pdf | VotingEscrowPendleMainchain | unmatched — not counted | — | listed in findings | no |
| 0xleastwood-Part 2.pdf | VotingEscrowToken | unmatched — not counted | — | listed in findings | no |
| 0xleastwood-Part 2.pdf | RewardManager | unmatched — not counted | — | listed in findings | no |
| 0xleastwood-Part 2.pdf | VeBalanceLib | unmatched — not counted | — | listed in findings | no |
| 0xleastwood-Part 2.pdf | PendleVotingController | unmatched — not counted | — | listed in findings | no |
| 0xleastwood-Part 2.pdf | PendleGaugeController | unmatched — not counted | — | listed in findings | no |
| 0xleastwood-Part 2.pdf | CelerSender | unmatched — not counted | — | listed in findings | no |
| Ackee-Part 1.pdf | SCYBase | unmatched — not counted | — | described in System Overview | no |
| Ackee-Part 1.pdf | RewardManager | unmatched — not counted | — | described in System Overview | no |
| Ackee-Part 1.pdf | SCYBaseWithRewards | unmatched — not counted | — | described in System Overview | no |
| Ackee-Part 1.pdf | PendleYieldContractFactory | unmatched — not counted | — | described in System Overview | no |
| Ackee-Part 1.pdf | PendleYieldToken | unmatched — not counted | — | described in System Overview | no |
| Ackee-Part 1.pdf | PendlePrincipalToken | unmatched — not counted | — | described in System Overview | no |
| Ackee-Part 1.pdf | PendleMarketFactory | unmatched — not counted | — | described in System Overview | no |
| Ackee-Part 1.pdf | PendleMarket | own contract | PendleMarket (selected) `0xd0354d...eccca2` — deployed 2023-03-24 05:50:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Ackee-Part 1.pdf | PendleRouter | unmatched — not counted | — | described in System Overview | no |
| Ackee-Part 1.pdf | PendleAaveV3SCY | unmatched — not counted | — | finding M1 target | no |
| Ackee-Part 1.pdf | Math | unmatched — not counted | — | finding M2 target | no |
| Ackee-Part 1.pdf | MarketMathAux | unmatched — not counted | — | finding I2 target | no |
| CMichel-Part 2.pdf | CelerReceiverUpg | unmatched — not counted | — | listed in scope table | no |
| CMichel-Part 2.pdf | CelerSenderUpg | unmatched — not counted | — | listed in scope table | no |
| CMichel-Part 2.pdf | PendleGaugeControllerBaseUpg | unmatched — not counted | — | listed in scope table | no |
| CMichel-Part 2.pdf | PendleGaugeControllerMainchainUpg | unmatched — not counted | — | listed in scope table | no |
| CMichel-Part 2.pdf | PendleGaugeControllerSidechainUpg | unmatched — not counted | — | listed in scope table | no |
| CMichel-Part 2.pdf | PendleGauge | unmatched — not counted | — | listed in scope table | no |
| CMichel-Part 2.pdf | PendleVotingControllerUpg | unmatched — not counted | — | listed in scope table | no |
| CMichel-Part 2.pdf | VotingControllerStorageUpg | unmatched — not counted | — | listed in scope table | no |
| CMichel-Part 2.pdf | VotingEscrowPendleMainchain | unmatched — not counted | — | listed in scope table | no |
| CMichel-Part 2.pdf | VotingEscrowPendleSidechain | unmatched — not counted | — | listed in scope table | no |
| CMichel-Part 2.pdf | VotingEscrowTokenBase | unmatched — not counted | — | listed in scope table | no |
| CMichel-Part 2.pdf | VeBalanceLib | unmatched — not counted | — | listed in scope table | no |
| CMichel-Part 2.pdf | VeHistoryLib | unmatched — not counted | — | listed in scope table | no |
| Cmichel-Part 1.pdf | PendleAaveV3SCY | unmatched — not counted | — | listed in scope table | no |
| Cmichel-Part 1.pdf | WadRayMath | unmatched — not counted | — | listed in scope table | no |
| Cmichel-Part 1.pdf | PendleQiTokenHelper | unmatched — not counted | — | listed in scope table | no |
| Cmichel-Part 1.pdf | PendleQiTokenSCY | unmatched — not counted | — | listed in scope table | no |
| Cmichel-Part 1.pdf | PendleERC4626SCY | unmatched — not counted | — | listed in scope table | no |
| Cmichel-Part 1.pdf | PendleWstEthSCY | unmatched — not counted | — | listed in scope table | no |
| Cmichel-Part 1.pdf | PendleYearnVaultScy | unmatched — not counted | — | listed in scope table | no |
| Cmichel-Part 1.pdf | SCYBase | unmatched — not counted | — | listed in scope table | no |
| Cmichel-Part 1.pdf | SCYBaseWithRewards | unmatched — not counted | — | listed in scope table | no |
| Cmichel-Part 1.pdf | PendleMarket | own contract | PendleMarket (selected) `0xd0354d...eccca2` — deployed 2023-03-24 05:50:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Cmichel-Part 1.pdf | PendleMarketFactory | unmatched — not counted | — | listed in scope table | no |
| Cmichel-Part 1.pdf | PendleERC20 | unmatched — not counted | — | listed in scope table | no |
| Cmichel-Part 1.pdf | PendleERC20Permit | unmatched — not counted | — | listed in scope table | no |
| Cmichel-Part 1.pdf | PendleRouter | unmatched — not counted | — | listed in scope table | no |
| Cmichel-Part 1.pdf | InterestManagerYT | unmatched — not counted | — | listed in scope table | no |
| Cmichel-Part 1.pdf | PendlePrincipalToken | unmatched — not counted | — | listed in scope table | no |
| Cmichel-Part 1.pdf | PendleYieldContractFactory | unmatched — not counted | — | listed in scope table | no |
| Cmichel-Part 1.pdf | PendleYieldToken | unmatched — not counted | — | listed in scope table | no |
| Cmichel-Part 1.pdf | ActionCallback | unmatched — not counted | — | listed in scope table | no |
| Cmichel-Part 1.pdf | ActionCore | unmatched — not counted | — | listed in scope table | no |
| Cmichel-Part 1.pdf | ActionYT | unmatched — not counted | — | listed in scope table | no |
| Cmichel-Part 1.pdf | ActionSCYAndPTBase | unmatched — not counted | — | listed in scope table | no |
| Cmichel-Part 1.pdf | ActionSCYAndPYBase | unmatched — not counted | — | listed in scope table | no |
| Cmichel-Part 1.pdf | ActionSCYAndYTBase | unmatched — not counted | — | listed in scope table | no |
| Cmichel-Part 1.pdf | CallbackHelper | unmatched — not counted | — | listed in scope table | no |
| Cmichel-Part 1.pdf | IAToken | unmatched — not counted | — | listed in scope table | no |
| Cmichel-Part 1.pdf | IAavePool | unmatched — not counted | — | listed in scope table | no |
| Cmichel-Part 1.pdf | IAaveRewardsController | unmatched — not counted | — | listed in scope table | no |
| Cmichel-Part 1.pdf | IBenQiComptroller | unmatched — not counted | — | listed in scope table | no |
| Cmichel-Part 1.pdf | IBenQiInterestRateModel | unmatched — not counted | — | listed in scope table | no |
| Cmichel-Part 1.pdf | ICelerMessageBus | unmatched — not counted | — | listed in scope table | no |
| Cmichel-Part 1.pdf | ICelerMessageReceiverApp | unmatched — not counted | — | listed in scope table | no |
| Cmichel-Part 1.pdf | IERC4626 | unmatched — not counted | — | listed in scope table | no |
| Cmichel-Part 1.pdf | IJoePair | unmatched — not counted | — | listed in scope table | no |
| Cmichel-Part 1.pdf | IJoeRouter01 | unmatched — not counted | — | listed in scope table | no |
| Cmichel-Part 1.pdf | IJoeRouter02 | unmatched — not counted | — | listed in scope table | no |
| Cmichel-Part 1.pdf | IPActionCore | unmatched — not counted | — | listed in scope table | no |
| Cmichel-Part 1.pdf | IPActionYT | unmatched — not counted | — | listed in scope table | no |
| Cmichel-Part 1.pdf | IPAllAction | unmatched — not counted | — | listed in scope table | no |
| Cmichel-Part 1.pdf | IPGaugeController | unmatched — not counted | — | listed in scope table | no |
| Cmichel-Part 1.pdf | IPGaugeControllerMainchain | unmatched — not counted | — | listed in scope table | no |
| Cmichel-Part 1.pdf | IPGovernanceManager | unmatched — not counted | — | listed in scope table | no |
| Cmichel-Part 1.pdf | IPInterestManagerYT | unmatched — not counted | — | listed in scope table | no |
| Cmichel-Part 1.pdf | IPMarket | unmatched — not counted | — | listed in scope table | no |
| Cmichel-Part 1.pdf | IPMarketFactory | unmatched — not counted | — | listed in scope table | no |
| Cmichel-Part 1.pdf | IPMarketSwapCallback | unmatched — not counted | — | listed in scope table | no |
| Cmichel-Part 1.pdf | IPPermissionsV2Upg | unmatched — not counted | — | listed in scope table | no |
| Cmichel-Part 1.pdf | IPPrincipalToken | unmatched — not counted | — | listed in scope table | no |
| Cmichel-Part 1.pdf | IPRouterStatic | unmatched — not counted | — | listed in scope table | no |
| Cmichel-Part 1.pdf | IPVeToken | unmatched — not counted | — | listed in scope table | no |
| Cmichel-Part 1.pdf | IPVotingController | unmatched — not counted | — | listed in scope table | no |
| Cmichel-Part 1.pdf | IPVotingEscrow | unmatched — not counted | — | listed in scope table | no |
| Cmichel-Part 1.pdf | IPYieldContractFactory | unmatched — not counted | — | listed in scope table | no |
| Cmichel-Part 1.pdf | IPYieldToken | unmatched — not counted | — | listed in scope table | no |
| Cmichel-Part 1.pdf | IQiAvax | unmatched — not counted | — | listed in scope table | no |
| Cmichel-Part 1.pdf | IQiErc20 | unmatched — not counted | — | listed in scope table | no |
| Cmichel-Part 1.pdf | IQiToken | unmatched — not counted | — | listed in scope table | no |
| Cmichel-Part 1.pdf | IREDACTEDStaking | unmatched — not counted | — | listed in scope table | no |
| Cmichel-Part 1.pdf | IRewardManager | unmatched — not counted | — | listed in scope table | no |
| Cmichel-Part 1.pdf | ISuperComposableYield | unmatched — not counted | — | listed in scope table | no |
| Cmichel-Part 1.pdf | IWETH | unmatched — not counted | — | listed in scope table | no |
| Cmichel-Part 1.pdf | IWXBTRFLY | unmatched — not counted | — | listed in scope table | no |
| Cmichel-Part 1.pdf | IWstETH | unmatched — not counted | — | listed in scope table | no |
| Cmichel-Part 1.pdf | IYearnVault | unmatched — not counted | — | listed in scope table | no |
| Cmichel-Part 1.pdf | RewardManager | unmatched — not counted | — | listed in scope table | no |
| Cmichel-Part 1.pdf | RewardManagerAbstract | unmatched — not counted | — | listed in scope table | no |
| Cmichel-Part 1.pdf | SCYIndex | unmatched — not counted | — | listed in scope table | no |
| Cmichel-Part 1.pdf | SCYUtils | unmatched — not counted | — | listed in scope table | no |
| Cmichel-Part 1.pdf | ArrayLib | unmatched — not counted | — | listed in scope table | no |
| Cmichel-Part 1.pdf | MiniHelpers | unmatched — not counted | — | listed in scope table | no |
| Cmichel-Part 1.pdf | SSTORE2Deployer | unmatched — not counted | — | listed in scope table | no |
| Cmichel-Part 1.pdf | TokenHelper | unmatched — not counted | — | listed in scope table | no |
| Cmichel-Part 1.pdf | LogExpMath | unmatched — not counted | — | listed in scope table | no |
| Cmichel-Part 1.pdf | MarketApproxLib | unmatched — not counted | — | listed in scope table | no |
| Cmichel-Part 1.pdf | MarketMathCore | unmatched — not counted | — | listed in scope table | no |
| Cmichel-Part 1.pdf | Math | unmatched — not counted | — | listed in scope table | no |
| Cmichel-Part 1.pdf | WeekMath | unmatched — not counted | — | listed in scope table | no |
| Cmichel-Part 1.pdf | PendleJoeSwapHelperUpg | unmatched — not counted | — | listed in scope table | no |
| Cmichel-Part 1.pdf | PendleGovernanceManager | unmatched — not counted | — | listed in scope table | no |
| Cmichel-Part 1.pdf | PermissionsV2Upg | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity.pdf | PendlePrincipalToken | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity.pdf | InterestManagerYT | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity.pdf | PendleYieldToken | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity.pdf | PendleYieldContractFactory | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity.pdf | PendleERC20Permit | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity.pdf | PendleERC20 | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity.pdf | MiniHelpers | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity.pdf | TokenHelper | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity.pdf | Errors | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity.pdf | LogExpMath | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity.pdf | Math | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity.pdf | BoringOwnableUpgradeable | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity.pdf | ArrayLib | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity.pdf | OracleLib | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity.pdf | PendleMarketFactory | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity.pdf | PendleGauge | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity.pdf | PendleMarket | own contract | PendleMarket (selected) `0xd0354d...eccca2` — deployed 2023-03-24 05:50:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity.pdf | MarketMathCore | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity.pdf | SYBase | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity.pdf | SYBaseWithRewards | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity.pdf | PYIndex | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity.pdf | SYUtils | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity.pdf | PendleWstEthSY | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity.pdf | RewardManager | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity.pdf | RewardManagerAbstract | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity.pdf | PendleLpOracleLib | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity.pdf | PendlePtOracle | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity.pdf | PendlePtOracleLib | unmatched — not counted | — | listed in scope table | no |
| Dedaub-Part 1.pdf | PendleJoeSwapHelperUpg | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | SCYUtils | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | SCYIndex | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | MiniDeployer | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | ArrayLib | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | TokenHelper | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | LibRLP | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | LogExpMath | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | MarketApproxLib | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | Math | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | MarketMathCore | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | PendleMarket | own contract | PendleMarket (selected) `0xd0354d...eccca2` — deployed 2023-03-24 05:50:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Dedaub-Part 1.pdf | PendleMarketFactory | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | ActionCore | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | ActionYT | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | ActionCallback | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | ActionSCYAndPTBase | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | CallbackHelper | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | ActionSCYAndPYBase | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | ActionSCYAndYTBase | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | PendleERC20 | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | PendlePrincipalToken | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | PendleYieldContractFactory | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | PendleYieldToken | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | PendleRouter | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | SCYBase | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | RewardManager | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | SCYBaseWithRewards | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | PendleBtrflySCY | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | PendleWstEthSCY | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | PendleERC4626SCY | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | PendleQiTokenSCY | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | PendleYearnVaultScy | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | PendleAaveV3SCY | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | PermissionsV2Upg | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | PendleGovernanceManager | unmatched — not counted | — | listed in scope | no |
| Dingbats-Part 1.pdf | SCYBase | unmatched — not counted | — | listed in scope | no |
| Dingbats-Part 1.pdf | SCYBaseWithRewards | unmatched — not counted | — | listed in scope | no |
| Dingbats-Part 1.pdf | PendleMarket | own contract | PendleMarket (selected) `0xd0354d...eccca2` — deployed 2023-03-24 05:50:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Dingbats-Part 1.pdf | PendleMarketFactory | unmatched — not counted | — | listed in scope | no |
| Dingbats-Part 1.pdf | PendleERC20 | unmatched — not counted | — | listed in scope | no |
| Dingbats-Part 1.pdf | PendleERC20Permit | unmatched — not counted | — | listed in scope | no |
| Dingbats-Part 1.pdf | PendleRouter | unmatched — not counted | — | listed in scope | no |
| Dingbats-Part 1.pdf | InterestManagerYT | unmatched — not counted | — | listed in scope | no |
| Dingbats-Part 1.pdf | PendlePrincipalToken | unmatched — not counted | — | listed in scope | no |
| Dingbats-Part 1.pdf | PendleYieldContractFactory | unmatched — not counted | — | listed in scope | no |
| Dingbats-Part 1.pdf | PendleYieldToken | unmatched — not counted | — | listed in scope | no |
| Dingbats-Part 1.pdf | ActionCallback | unmatched — not counted | — | listed in scope | no |
| Dingbats-Part 1.pdf | ActionCore | unmatched — not counted | — | listed in scope | no |
| Dingbats-Part 1.pdf | ActionYT | unmatched — not counted | — | listed in scope | no |
| Dingbats-Part 1.pdf | ActionSCYAndPTBase | unmatched — not counted | — | listed in scope | no |
| Dingbats-Part 1.pdf | ActionSCYAndPYBase | unmatched — not counted | — | listed in scope | no |
| Dingbats-Part 1.pdf | ActionSCYAndYTBase | unmatched — not counted | — | listed in scope | no |
| Dingbats-Part 1.pdf | CallbackHelper | unmatched — not counted | — | listed in scope | no |
| Dingbats-Part 1.pdf | RewardManager | unmatched — not counted | — | listed in scope | no |
| Dingbats-Part 1.pdf | RewardManagerAbstract | unmatched — not counted | — | listed in scope | no |
| Dingbats-Part 1.pdf | SCYIndex | unmatched — not counted | — | listed in scope | no |
| Dingbats-Part 1.pdf | SCYUtils | unmatched — not counted | — | listed in scope | no |
| Dingbats-Part 1.pdf | ArrayLib | unmatched — not counted | — | listed in scope | no |
| Dingbats-Part 1.pdf | MiniHelpers | unmatched — not counted | — | listed in scope | no |
| Dingbats-Part 1.pdf | SSTORE2Deployer | unmatched — not counted | — | listed in scope | no |
| Dingbats-Part 1.pdf | TokenHelper | unmatched — not counted | — | listed in scope | no |
| Dingbats-Part 1.pdf | LogExpMath | unmatched — not counted | — | listed in scope | no |
| Dingbats-Part 1.pdf | MarketApproxLib | unmatched — not counted | — | listed in scope | no |
| Dingbats-Part 1.pdf | MarketMathCore | unmatched — not counted | — | listed in scope | no |
| Dingbats-Part 1.pdf | Math | unmatched — not counted | — | listed in scope | no |
| Dingbats-Part 1.pdf | WeekMath | unmatched — not counted | — | listed in scope | no |
| Dingbats-Part 1.pdf | PendleJoeSwapHelperUpg | unmatched — not counted | — | listed in scope | no |
| Dingbats-Part 1.pdf | PendleGovernanceManager | unmatched — not counted | — | listed in scope | no |
| Dingbats-Part 1.pdf | PermissionsV2Upg | unmatched — not counted | — | listed in scope | no |
| Dingbats-Part 1.pdf | PendleAaveV3SCY | unmatched — not counted | — | listed in scope | no |
| Dingbats-Part 1.pdf | WadRayMath | unmatched — not counted | — | listed in scope | no |
| Dingbats-Part 1.pdf | PendleQiTokenHelper | unmatched — not counted | — | listed in scope | no |
| Dingbats-Part 1.pdf | PendleQiTokenSCY | unmatched — not counted | — | listed in scope | no |
| Dingbats-Part 1.pdf | PendleERC4626SCY | unmatched — not counted | — | listed in scope | no |
| Dingbats-Part 1.pdf | PendleWstEthSCY | unmatched — not counted | — | listed in scope | no |
| Dingbats-Part 1.pdf | PendleYearnVaultScy | unmatched — not counted | — | listed in scope | no |
| Dingbats-Part 2.pdf | CelerReceiverUpg | unmatched — not counted | — | listed in scope | no |
| Dingbats-Part 2.pdf | CelerSenderUpg | unmatched — not counted | — | listed in scope | no |
| Dingbats-Part 2.pdf | PendleGaugeControllerBaseUpg | unmatched — not counted | — | listed in scope | no |
| Dingbats-Part 2.pdf | PendleGaugeControllerMainchainUpg | unmatched — not counted | — | listed in scope | no |
| Dingbats-Part 2.pdf | PendleGaugeControllerSidechainUpg | unmatched — not counted | — | listed in scope | no |
| Dingbats-Part 2.pdf | PendleGauge | unmatched — not counted | — | listed in scope | no |
| Dingbats-Part 2.pdf | PendleVotingControllerUpg | unmatched — not counted | — | listed in scope | no |
| Dingbats-Part 2.pdf | VotingControllerStorageUpg | unmatched — not counted | — | listed in scope | no |
| Dingbats-Part 2.pdf | VotingEscrowPendleMainchain | unmatched — not counted | — | listed in scope | no |
| Dingbats-Part 2.pdf | VotingEscrowPendleSidechain | unmatched — not counted | — | listed in scope | no |
| Dingbats-Part 2.pdf | VotingEscrowTokenBase | unmatched — not counted | — | listed in scope | no |
| Dingbats-Part 2.pdf | VeBalanceLib | unmatched — not counted | — | listed in scope | no |
| Dingbats-Part 2.pdf | VeHistoryLib | unmatched — not counted | — | listed in scope | no |
| Spearbit.pdf | RewardManagerAbstract | unmatched — not counted | — | Context in finding 5.1.1 | no |
| Spearbit.pdf | PendleCamelotV1VolatileSY | unmatched — not counted | — | Context in finding 5.1.1 | no |
| Spearbit.pdf | PendleYieldToken | unmatched — not counted | — | Context in findings 5.1.1, 5.3.3, 5.3.4 | no |
| Spearbit.pdf | RewardManager | unmatched — not counted | — | Context in finding 5.3.3 | no |
| Spearbit.pdf | InterestManagerYT | unmatched — not counted | — | Context in findings 5.2.1, 5.3.4 | no |
| Spearbit.pdf | MarketMathCore | unmatched — not counted | — | Context in findings 5.3.1, 5.3.2, 5.4.1, 5.5.1 | no |
| Spearbit.pdf | PendleLpOracleLib | unmatched — not counted | — | Context in findings 5.3.5, 5.5.2 | no |
| Spearbit.pdf | PendlePtOracleLib | unmatched — not counted | — | Context in finding 5.3.5 | no |
| Spearbit.pdf | OracleLib | unmatched — not counted | — | Context in finding 5.5.3 | no |
| Spearbit.pdf | PYIndex | unmatched — not counted | — | Context in finding 5.5.2 | no |
| Spearbit.pdf | SYUtils | unmatched — not counted | — | Context in finding 5.5.2 | no |
| Spearbit.pdf | PMath | unmatched — not counted | — | Context in finding 5.2.1 | no |
| Spearbit.pdf | LogExpMath | unmatched — not counted | — | Context in finding 5.5.1 | no |
| WatchPug-Part 1 Follow Up 1.pdf | PendleYearnVaultScy | unmatched — not counted | — | Listed in findings H1, L2, H3 | no |
| WatchPug-Part 1 Follow Up 1.pdf | PendleQiTokenSCY | unmatched — not counted | — | Listed in finding L2 | no |
| WatchPug-Part 1 Follow Up 1.pdf | PendleYieldToken | unmatched — not counted | — | Listed in findings M4, H7, G8 | no |
| WatchPug-Part 1 Follow Up 1.pdf | ActionSCYAndYTBase | unmatched — not counted | — | Listed in finding L5 | no |
| WatchPug-Part 1 Follow Up 1.pdf | ActionCallback | unmatched — not counted | — | Listed in findings L6, H7 | no |
| WatchPug-Part 1 Follow Up 1.pdf | SCYBase | unmatched — not counted | — | Referenced in findings L2 | no |
| WatchPug-Part 1 Follow Up 1.pdf | SCYBaseWithRewards | unmatched — not counted | — | Referenced in finding L2 | no |
| WatchPug-Part 1 Follow Up 1.pdf | SCYUtils | unmatched — not counted | — | Referenced in findings H1, L6 | no |
| WatchPug-Part 1 Follow Up 1.pdf | RewardManagerAbstract | unmatched — not counted | — | Referenced in findings M4 | no |
| WatchPug-Part 1 Follow Up 1.pdf | PendleQiTokenHelper | unmatched — not counted | — | Referenced in finding L2 | no |
| WatchPug-Part 1 Follow Up 2.pdf | PendleYieldToken | unmatched — not counted | — | listed in scope and findings | no |
| WatchPug-Part 1 Follow Up 2.pdf | PendleRouter | unmatched — not counted | — | mentioned in finding WP-M2 | no |
| WatchPug-Part 1 Follow Up 2.pdf | ActionCallback | unmatched — not counted | — | mentioned in finding WP-M2 | no |
| WatchPug-Part 1 Follow Up 2.pdf | PendleMarket | own contract | PendleMarket (selected) `0xd0354d...eccca2` — deployed 2023-03-24 05:50:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| WatchPug-Part 1 Follow Up 2.pdf | SCYIndex | unmatched — not counted | — | mentioned in finding WP-M2 | no |
| WatchPug-Part 1.pdf | PendleQiTokenSCY | unmatched — not counted | — | Listed in scope and findings (WP-H0, WP-H5) | no |
| WatchPug-Part 1.pdf | SCYBase | unmatched — not counted | — | Listed in scope and findings (WP-H0, WP-H5) | no |
| WatchPug-Part 1.pdf | PendleYieldContractFactory | unmatched — not counted | — | Listed in scope and finding WP-I1 | no |
| WatchPug-Part 1.pdf | PendleYieldToken | unmatched — not counted | — | Listed in scope and findings (WP-G2, WP-I3) | no |
| WatchPug-Part 1.pdf | PendleERC4626SCY | unmatched — not counted | — | Listed in scope and finding WP-I3 | no |
| WatchPug-Part 1.pdf | PendleYearnVaultScy | unmatched — not counted | — | Listed in scope and finding WP-H4 | no |
| WatchPug-Part 1.pdf | PendleMarket | own contract | PendleMarket (selected) `0xd0354d...eccca2` — deployed 2023-03-24 05:50:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| WatchPug-Part 1.pdf | MarketMathCore | unmatched — not counted | — | Listed in scope and findings (WP-I7, WP-G10) | no |
| WatchPug-Part 1.pdf | ActionSCYAndPTBase | unmatched — not counted | — | Listed in scope and finding WP-I7 | no |
| WatchPug-Part 1.pdf | RewardManager | unmatched — not counted | — | Listed in scope and finding WP-I9 | no |
| WatchPug-Part 2.pdf | PendleVotingControllerUpg | unmatched — not counted | — | Listed in scope and findings | no |
| WatchPug-Part 2.pdf | VotingControllerStorageUpg | unmatched — not counted | — | Listed in scope and findings | no |
| WatchPug-Part 2.pdf | VotingEscrowPendleMainchain | unmatched — not counted | — | Listed in scope and findings | no |
| WatchPug-Part 2.pdf | PendleGaugeControllerBaseUpg | unmatched — not counted | — | Listed in scope and findings | no |
| WatchPug-Part 2.pdf | PendleMarketFactory | unmatched — not counted | — | Listed in scope and findings | no |
| WatchPug-Part 2.pdf | PendleGauge | unmatched — not counted | — | Listed in scope and findings | no |
| WatchPug-Part 2.pdf | CelerSenderUpg | unmatched — not counted | — | Listed in scope and findings | no |
| WatchPug-Part 2.pdf | PendleMarket | own contract | PendleMarket (selected) `0xd0354d...eccca2` — deployed 2023-03-24 05:50:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| HickupHH3.pdf | PendleMarketFactoryV6Upg | unmatched — not counted | — | listed in scope | no |
| HickupHH3.pdf | PendleMarketV6 | unmatched — not counted | — | listed in scope | no |
| HickupHH3.pdf | PendlePrincipalToken | unmatched — not counted | — | listed in scope | no |
| HickupHH3.pdf | PendleYieldContractFactoryUpg | unmatched — not counted | — | listed in scope | no |
| HickupHH3.pdf | PendleYieldToken | unmatched — not counted | — | listed in scope | no |
| HickupHH3.pdf | PendleGaugeControllerBaseUpg | unmatched — not counted | — | listed in scope | no |
| HickupHH3.pdf | PendleGaugeControllerMainchainUpg | unmatched — not counted | — | listed in scope | no |
| HickupHH3.pdf | PendleGaugeControllerSidechainUpg | unmatched — not counted | — | listed in scope | no |
| HickupHH3.pdf | PendleLpOracleLib | unmatched — not counted | — | listed in scope | no |
| HickupHH3.pdf | PendleGaugeControllerUpg | unmatched — not counted | — | listed in scope | no |
| HickupHH3.pdf | PendleMarketFactoryV7Upg | unmatched — not counted | — | listed in scope as PendleMarketFactoryV6Upg.sol -> PendleMarketFactoryV7Upg.sol | no |
| HickupHH3.pdf | PendleMarketV7 | unmatched — not counted | — | listed in scope as PendleMarketV6.sol -> PendleMarketV7.sol | no |
| HickupHH3.pdf | StakedPendle | own proxy deployment | StakedPendle (proxy) (selected) `0x999999...664144` — deployed 2026-01-15 06:34:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| WatchPug.pdf | PendleMarketFactoryV6Upg | unmatched — not counted | — | listed in scope and findings | no |
| WatchPug.pdf | PendleYieldContractFactoryUpg | unmatched — not counted | — | listed in scope and findings | no |
| WatchPug.pdf | PendleLpOracleLib | unmatched — not counted | — | listed in scope and findings | no |
| WatchPug.pdf | PendleGaugeControllerBaseUpg | unmatched — not counted | — | listed in scope and findings | no |
| WatchPug.pdf | PendlePoolDeployHelperV2 | unmatched — not counted | — | mentioned in finding WP-I4 as needing deployment | no |
| WatchPug.pdf | PendlePrincipalToken | unmatched — not counted | — | referenced in PendleYieldContractFactoryUpg code | no |
| WatchPug.pdf | PendleYieldContractFactory | unmatched — not counted | — | referenced in finding WP-I3 as old version | no |
| WatchPug.pdf | MiniDeployer | unmatched — not counted | — | referenced in finding WP-I3 | no |
| WatchPug.pdf | Errors | unmatched — not counted | — | listed in scope as part of audit findings | no |
| WatchPug.pdf | PendleGauge | unmatched — not counted | — | listed in finding WP-N5 | no |
| WatchPug.pdf | StakedPendle | own proxy deployment | StakedPendle (proxy) (selected) `0x999999...664144` — deployed 2026-01-15 06:34:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity-Markets.pdf | MarketEntry | unmatched — not counted | — | listed in scope | no |
| ChainSecurity-Markets.pdf | CoreOrderUtils | unmatched — not counted | — | listed in scope | no |
| ChainSecurity-Markets.pdf | OrderBookUtils | unmatched — not counted | — | listed in scope | no |
| ChainSecurity-Markets.pdf | PendingOIUtils | unmatched — not counted | — | listed in scope | no |
| ChainSecurity-Markets.pdf | MarketInfoAndState | unmatched — not counted | — | listed in scope | no |
| ChainSecurity-Markets.pdf | CoreStateUtils | unmatched — not counted | — | listed in scope | no |
| ChainSecurity-Markets.pdf | LiquidationViewUtils | unmatched — not counted | — | listed in scope | no |
| ChainSecurity-Markets.pdf | MarginViewUtils | unmatched — not counted | — | listed in scope | no |
| ChainSecurity-Markets.pdf | SweepProcessUtils | unmatched — not counted | — | listed in scope | no |
| ChainSecurity-Markets.pdf | ProcessUtils | unmatched — not counted | — | listed in scope | no |
| ChainSecurity-Markets.pdf | MarketOffView | unmatched — not counted | — | listed in scope | no |
| ChainSecurity-Markets.pdf | MarketOrderAndOtc | unmatched — not counted | — | listed in scope | no |
| ChainSecurity-Markets.pdf | MarketSetAndView | unmatched — not counted | — | listed in scope | no |
| ChainSecurity-Markets.pdf | FIndexOracle | unmatched — not counted | — | listed in scope | no |
| ChainSecurity-Markets.pdf | SampleFundingRateUpkeep | unmatched — not counted | — | listed in scope | no |
| ChainSecurity-Markets.pdf | LibOrderIdSort | unmatched — not counted | — | listed in scope | no |
| ChainSecurity-Markets.pdf | TickBitmap | unmatched — not counted | — | listed in scope | no |
| ChainSecurity-Markets.pdf | Tick | unmatched — not counted | — | listed in scope | no |
| ChainSecurity-Markets.pdf | MarketHub | unmatched — not counted | — | listed in scope | no |
| ChainSecurity-Markets.pdf | Storage | unmatched — not counted | — | listed in scope | no |
| ChainSecurity-Markets.pdf | MarginManager | unmatched — not counted | — | listed in scope | no |
| ChainSecurity-Markets.pdf | Errors | unmatched — not counted | — | listed in scope | no |
| ChainSecurity-Markets.pdf | TickMath | unmatched — not counted | — | listed in scope | no |
| ChainSecurity-Markets.pdf | PMath | unmatched — not counted | — | listed in scope | no |
| ChainSecurity-Markets.pdf | FixedWindowObservationLib | unmatched — not counted | — | listed in scope | no |
| ChainSecurity-Markets.pdf | ArrayLib | unmatched — not counted | — | listed in scope | no |
| ChainSecurity-Markets.pdf | PaymentLib | unmatched — not counted | — | listed in scope | no |
| ChainSecurity-Markets.pdf | Order | unmatched — not counted | — | listed in scope | no |
| ChainSecurity-Markets.pdf | createCompute | unmatched — not counted | — | listed in scope | no |
| ChainSecurity-Markets.pdf | Account | unmatched — not counted | — | listed in scope | no |
| ChainSecurity-Markets.pdf | MarketTypes | unmatched — not counted | — | listed in scope | no |
| ChainSecurity-Markets.pdf | RecentTradeRateLib | unmatched — not counted | — | listed in scope | no |
| ChainSecurity-Markets.pdf | MarketImpliedRate | unmatched — not counted | — | listed in scope | no |
| ChainSecurity-Markets.pdf | TransientOrderIdMapping | unmatched — not counted | — | listed in scope | no |
| ChainSecurity-Markets.pdf | StoredOrderIdArr | unmatched — not counted | — | listed in scope | no |
| ChainSecurity-Markets.pdf | Trade | unmatched — not counted | — | listed in scope | no |
| ChainSecurity-Markets.pdf | MarketFactory | unmatched — not counted | — | listed in scope | no |
| ChainSecurity-Markets.pdf | MarketRiskManagement | unmatched — not counted | — | listed in scope (version 2) | no |
| ChainSecurity-Markets.pdf | RateUtils | unmatched — not counted | — | listed in scope (version 2) | no |
| ChainSecurity-Markets.pdf | MarketHubEntry | unmatched — not counted | — | listed in scope (version 2) | no |
| ChainSecurity-Markets.pdf | MarketHubRiskManagement | unmatched — not counted | — | listed in scope (version 2) | no |
| ChainSecurity-Markets.pdf | MarketHubSetAndView | unmatched — not counted | — | listed in scope (version 4) | no |
| ChainSecurity-Router and AMM.pdf | NegativeAMM | unmatched — not counted | — | listed in scope | no |
| ChainSecurity-Router and AMM.pdf | PositiveAMM | unmatched — not counted | — | listed in scope | no |
| ChainSecurity-Router and AMM.pdf | BaseAMM | unmatched — not counted | — | listed in scope | no |
| ChainSecurity-Router and AMM.pdf | PositiveAMMMath | unmatched — not counted | — | listed in scope | no |
| ChainSecurity-Router and AMM.pdf | BOROS20 | unmatched — not counted | — | listed in scope | no |
| ChainSecurity-Router and AMM.pdf | NegativeAMMMath | unmatched — not counted | — | listed in scope | no |
| ChainSecurity-Router and AMM.pdf | BookAmmSwapBase | unmatched — not counted | — | listed in scope | no |
| ChainSecurity-Router and AMM.pdf | TradeStorage | unmatched — not counted | — | listed in scope | no |
| ChainSecurity-Router and AMM.pdf | LiquidityMath | unmatched — not counted | — | listed in scope | no |
| ChainSecurity-Router and AMM.pdf | TickSweepStateLib | unmatched — not counted | — | listed in scope | no |
| ChainSecurity-Router and AMM.pdf | SwapMath | unmatched — not counted | — | listed in scope | no |
| ChainSecurity-Router and AMM.pdf | Router | unmatched — not counted | — | listed in scope | no |
| ChainSecurity-Router and AMM.pdf | AuthBase | unmatched — not counted | — | listed in scope | no |
| ChainSecurity-Router and AMM.pdf | EIP712 | unmatched — not counted | — | listed in scope | no |
| ChainSecurity-Router and AMM.pdf | SigningBase | unmatched — not counted | — | listed in scope | no |
| ChainSecurity-Router and AMM.pdf | RouterAccountBase | unmatched — not counted | — | listed in scope | no |
| ChainSecurity-Router and AMM.pdf | AuthModule | unmatched — not counted | — | listed in scope | no |
| ChainSecurity-Router and AMM.pdf | TradeModule | unmatched — not counted | — | listed in scope | no |
| ChainSecurity-Router and AMM.pdf | MiscModule | unmatched — not counted | — | listed in scope | no |
| ChainSecurity-Router and AMM.pdf | AMMModule | unmatched — not counted | — | listed in scope | no |
| ChainSecurity-Router and AMM.pdf | PendleRoles | unmatched — not counted | — | listed in scope | no |
| ChainSecurity-Router and AMM.pdf | PendleAccessController | unmatched — not counted | — | listed in scope | no |
| ChainSecurity-Router and AMM.pdf | Errors | unmatched — not counted | — | listed in scope | no |
| ChainSecurity-Router and AMM.pdf | PaymentLib | unmatched — not counted | — | listed in scope | no |
| ChainSecurity-Router and AMM.pdf | Account | unmatched — not counted | — | listed in scope | no |
| ChainSecurity-Router and AMM.pdf | MarketTypes | unmatched — not counted | — | listed in scope | no |
| ChainSecurity-Router and AMM.pdf | Trade | unmatched — not counted | — | listed in scope | no |
| ChainSecurity-Router and AMM.pdf | AuthStorage | unmatched — not counted | — | listed in scope (version 4) | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | Storage | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | MiscModule | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | MarketFactory | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | BaseAMM | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | PMath | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | Tick | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | FIndexOracle | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | MarketHub | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | MarketHubEntry | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | MarketHubRiskManagement | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | MarginManager | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | MarketOrderAndOtc | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | CoreOrderUtils | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | CoreStateUtils | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | MarginViewUtils | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | ProcessMergeUtils | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | PendingOIPureUtils | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | ArrayLib | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | OrderBookUtils | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | TickSweepStateLib | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | RecentTradeRateLib | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | RecentTradeRateReadWriteLib | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | MarketImpliedRate | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | MarketSetAndView | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | MarketInfoAndState | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | PaymentLib | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | PayFeeLib | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | SweepProcessUtils | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | ProcessUtils | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | CreateCompute | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | PendleRolesPlugin | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | PendleAccessController | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | PendleRoles | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | Errors | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | EIP712 | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | BookAmmSwapBase | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | PositiveAMMMath | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | TradeStorage | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | Router | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | AMMFactory | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | Explorer | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | LibOrderIdSort | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | MarketAcc | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | Order | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | Trade | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | TokenId | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | MarketId | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | LongShort | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | LongShortLib | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | OTCTrade | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | SimulateData | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | GetRequest | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | MarketMem | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | UserMem | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | PayFee | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | FIndex | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | MarketImmutableDataStruct | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | MarketConfig | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | AMMConfig | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | IMarket | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | IMarketOff | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | IRouter | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | IMiscModule | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | IMarketHub | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | IMarketFactory | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | IERC20Errors | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | IERC20Metadata | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | UUPSUpgradeable | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | TransparentUpgradeableProxy | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0xecac9c...5c11c1` — deployed 2024-11-11 19:25:11+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xecac9c...5c11c1` — deployed 2024-12-26 16:47:35+03 — liveness: live (current_address_book_code) | bare standard proxy-shell name is not deployment identity; normalized_full_corpus:project_anchor:matcher_anchor | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | AccessControlUpgradeable | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | CustomDecimalsToken | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | RouterWrapper | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | MarketSettingWrapper | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | BorosTestBase | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | CheckPrevrandao | unmatched — not counted | — | listed in scope | no |
| Pendle___Boros___Market_&_MarketHub_Audit_Report_by_WatchPug_rev2.pdf | MarketOrderAndOtc | unmatched — not counted | — | listed in scope via code snippets | no |
| Pendle___Boros___Market_&_MarketHub_Audit_Report_by_WatchPug_rev2.pdf | FIndexOracle | unmatched — not counted | — | listed in scope via code snippets | no |
| Pendle___Boros___Market_&_MarketHub_Audit_Report_by_WatchPug_rev2.pdf | MarketSetAndView | unmatched — not counted | — | listed in scope via code snippets | no |
| Pendle___Boros___Market_&_MarketHub_Audit_Report_by_WatchPug_rev2.pdf | PendleAccessController | unmatched — not counted | — | listed in scope via code snippets | no |
| Pendle___Boros___Market_&_MarketHub_Audit_Report_by_WatchPug_rev2.pdf | MarketFactory | unmatched — not counted | — | listed in scope via code snippets | no |
| Pendle___Boros___Market_&_MarketHub_Audit_Report_by_WatchPug_rev2.pdf | MarketHub | unmatched — not counted | — | listed in scope via code snippets | no |
| Pendle___Boros___Market_&_MarketHub_Audit_Report_by_WatchPug_rev2.pdf | MarginManager | unmatched — not counted | — | listed in scope via code snippets | no |
| Pendle___Boros___Market_&_MarketHub_Audit_Report_by_WatchPug_rev2.pdf | Storage | unmatched — not counted | — | listed in scope via code snippets | no |
| Pendle___Boros___Market_&_MarketHub_Audit_Report_by_WatchPug_rev2.pdf | PMath | unmatched — not counted | — | listed in scope via code snippets | no |
| Pendle___Boros___Router_&_AMM_Audit_Report_by_WatchPug_rev2.pdf | AuthModule | unmatched — not counted | — | mentioned in finding WP-I5 | no |
| Pendle___Boros___Router_&_AMM_Audit_Report_by_WatchPug_rev2.pdf | TradeModule | unmatched — not counted | — | mentioned in finding WP-I5 | no |
| Pendle___Boros___Router_&_AMM_Audit_Report_by_WatchPug_rev2.pdf | AMMModule | unmatched — not counted | — | mentioned in finding WP-I5 | no |
| Pendle___Boros___Router_&_AMM_Audit_Report_by_WatchPug_rev2.pdf | MiscModule | unmatched — not counted | — | mentioned in finding WP-L6 | no |
| Pendle___Boros___Router_&_AMM_Audit_Report_by_WatchPug_rev2.pdf | PositiveAMMMath | unmatched — not counted | — | mentioned in finding WP-D3 | no |
| Pendle___Boros___Router_&_AMM_Audit_Report_by_WatchPug_rev2.pdf | TradeStorage | unmatched — not counted | — | mentioned in finding WP-L6 | no |
| Pendle___Boros___Router_&_AMM_Audit_Report_by_WatchPug_rev2.pdf | IAMM | unmatched — not counted | — | mentioned in finding WP-L6 | no |
| Pendle___Boros___Router_&_AMM_Audit_Report_by_WatchPug_rev2.pdf | IMarket | unmatched — not counted | — | mentioned in finding WP-L6 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x6b1754...271d0f` | Dai | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x808507...8da827` | PENDLE | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7f39c5...5e2ca0` | WstETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 436 |
| upstream | 4 |
| standard_library | 27 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 13
- Inherited remapped matches: 0
- Address-book scope dispositions: 11 own (2 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 1 ambiguous, 485 unmatched
- Matched-own operational status: 11 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=22, medium=3
- Match method counts: unique_name=11

Zero-match audit list:

- [17972] WatchPug-SparkLinearDiscountOracle.pdf
- [17973] WatchPug-LpOracle.pdf
- [17974] WatchPug-PtOracle.pdf
- [17976] 0xleastwood-Part 2.pdf
- [17978] CMichel-Part 2.pdf
- [17983] Dingbats-Part 2.pdf
- [17984] Spearbit.pdf
- [17985] WatchPug-Part 1 Follow Up 1.pdf
- [17994] ChainSecurity-Markets.pdf
- [17995] ChainSecurity-Router and AMM.pdf
- [17996] Pendle-Spearbit-Security-Review-August-2025.pdf
- [17997] Pendle___Boros___Market_&_MarketHub_Audit_Report_by_WatchPug_rev2.pdf
- [17998] Pendle___Boros___Router_&_AMM_Audit_Report_by_WatchPug_rev2.pdf

Fork inheritance lineage and inherited audits are included when available.
