# Agentic Audit Brief: Pendle

## Export Authority

- Production state: **published scope**
- Raw selected rows: 11 across 11 audit(s)
- Eligible audit results: 27 (11 matched; 16 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Pendle (`pendle`)
- Website: [https://pendle.finance/](https://pendle.finance/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, avalanche, base, berachain, bsc, ethereum, mantle, optimism, plasma, sonic
- Contract surface: 868 unique implementations (870 raw deployments)
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

**PendleMarket** (`0xd0354d4e7bcf345fb117cabe41acadb724eccca2`, chain 1)
Origin: aarna-protocol (`0x3f5ea5...182418`)
Containment: 88.2% - 15 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original):
- _storage()
- getNonOverrideLnFeeRateRoot()

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x466ced3b33045ea986b2f306c8d0aa8067961cf8`, chain 1)
- UnnamedContract (`0x888888888889758f76e7103c6cbf23abbf58f946`, chain 1)
- UnnamedContract (`0xd4f480965d2347d421f1bec7f545682e5ec2151d`, chain 1)
- UnnamedContract (`0xdc035d45d973e3ec169d2276ddab16f1e407384f`, chain 1)
- Dai (`0x6b175474e89094c44da98b954eedeac495271d0f`, chain 1)
- PENDLE (`0x808507121b80c02388fad14726482e061b8da827`, chain 1)
- StakedPendle (`0x999999999991e178d52cd95afd4b00d066664144`, chain 1)
- TransparentUpgradeableProxy (`0xecac9c5f704e954931349da37f60e39f515c11c1`, chain 1)
- TransparentUpgradeableProxy (`0xecac9c5f704e954931349da37f60e39f515c11c1`, chain 8453)
- WstETH (`0x7f39c581f595b53c5cb19bd0b3f8da6c935e2ca0`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 7; live-surface rows included: 7 (7 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 11/13 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/7 (28.6%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 11 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 857 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 21 standard proxy/library)
- Proxy deployments represented within implementation groups: 81
- Confirmed-live implementations: 11 of 868 unique; 857 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 2/467
- Verified + Unaudited implementations: 465
- Verified by bytecode match: 0
- Unverified implementations: 401
- Unique implementations: 868
- Raw deployments: 870
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
| WatchPug | Tier 2 | 2 | 0.4% | 2026-01 |
| 0xleastwood | Tier 2 | 1 | 0.2% | 2022-09 |
| Ackee Blockchain | Tier 2 | 1 | 0.2% | 2022-05 |
| ChainSecurity | Tier 1 | 1 | 0.2% | 2025-08 |
| CMichel | Tier 2 | 1 | 0.2% | 2022-08 |
| Dedaub | Tier 2 | 1 | 0.2% | 2022-07 |
| Dingbats | Tier 2 | 1 | 0.2% | n/a |
| HickupHH3 | Tier 2 | 1 | 0.2% | 2026-01 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| PendleMarket | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251186 | `0xd0354d4e7bcf345fb117cabe41acadb724eccca2` | ✅ Audited |
| StakedPendle | unknown | project_anchor | own_supporting | 1 | ethereum | unit-251192 | `0x999999999991e178d52cd95afd4b00d066664144` | ✅ Audited |

### ⚠️ Verified + Unaudited (465)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ActionAddRemoveLiq | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x1fdfed03c08c7e10bed4964dbe7c66c394576aaf` | ⚠️ Unaudited |
| ActionAddRemoveLiqV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x026644dc6fc4cf22a45ad14231090c7736d07507` | ⚠️ Unaudited |
| ActionCallback | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09f4acb1023fe06e0f7a2f8f1ae9ae2c011c3d07` | ⚠️ Unaudited |
| ActionCallbackV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8d407705b0a3d78167e979f71e009f5820f51c5e` | ⚠️ Unaudited |
| ActionInfoStatic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x25e5e9e134ddaf1d378fcb0ec8dbd3f148cb55fd` | ⚠️ Unaudited |
| ActionMarketAuxStatic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x026644dc6fc4cf22a45ad14231090c7736d07507` | ⚠️ Unaudited |
| ActionMarketCoreStatic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x203d3a2fd52973a34bab6fc50e3b69863bdb769c` | ⚠️ Unaudited |
| ActionMintRedeem | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x412511d47254d36c1e572d81a238a7852ffc2e8b` | ⚠️ Unaudited |
| ActionMintRedeemStatic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1812a77aa47f40c84fc46deb0644c1a486437ed6` | ⚠️ Unaudited |
| ActionMisc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x0ff7ccb71d901bca95be412ed20dd3e34ed36a64` | ⚠️ Unaudited |
| ActionMiscV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x00000000005bbb0ef59571e58418f9a4357b68a0` | ⚠️ Unaudited |
| ActionStorageV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x2700adb035f82a11899ce1d3f1bf8451c296eabb` | ⚠️ Unaudited |
| ActionSwapPT | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0000000001e4ef00d069e71d6ba041b0a16f7ea0` | ⚠️ Unaudited |
| ActionSwapPTV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x198d701ddd6288737f22246c3102edf1c0a73d24` | ⚠️ Unaudited |
| ActionSwapPTYT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f438e5d032fd933fca63335a8097b466241c3b7` | ⚠️ Unaudited |
| ActionSwapYT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x05320f5ff1748bc792c42ed7eea2906ba6d9d335` | ⚠️ Unaudited |
| ActionSwapYTV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32ed8fc44a5608d22519dca5a5a135f9661d158d` | ⚠️ Unaudited |
| ActionVePendleStatic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07f4989e341bf6725f1074b41c09e5d08ea403d2` | ⚠️ Unaudited |
| Address | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5aa4099b1857a5d8e1ee8b290d21d3a74d0af54` | ⚠️ Unaudited |
| AddressProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x05c3087e2b30f10afc4755d9f9776dc56f564dc3` | ⚠️ Unaudited |
| AdvancedWithdrawer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2150617bc0b487112b52cc0bc7dc484b95e8f633` | ⚠️ Unaudited |
| AggregationRouterHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09d4b49b12f567b96b387ce5823059bb7ba1da29` | ⚠️ Unaudited |
| Airdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0c58c2041da4cfccf5818bbe3b66dbc23b3902d9` | ⚠️ Unaudited |
| AnycallExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x70d6b3cfaabd6c0eb6b99b80c6540fa754a72c40` | ⚠️ Unaudited |
| AnyswapV5ERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x130966628846bfd36ff31a822705796e8cb8c18d` | ⚠️ Unaudited |
| AToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xbcca60bb61934080951369a648fb03df4f96263c` | ⚠️ Unaudited |
| AVAXLevSwapperV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x69bfea0307a071c3e6cd217486b16d20bd58c7b1` | ⚠️ Unaudited |
| AVAXOracleV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0824545b22dd6dc644c8b66d7923e613816ff63a` | ⚠️ Unaudited |
| AvaxSwapperV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2b727505fdf3650028c8de0f5d73337ba78f36a8` | ⚠️ Unaudited |
| BadBuildersClubSoulbound | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2d1e2e2fdab5047b5227e8c16e01432699ac6a42` | ⚠️ Unaudited |
| BaseSplitCodeFactoryContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x051dcd6a80f11fe68f77fb0ebde03853fa96b1fd` | ⚠️ Unaudited |
| BentoBoxV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf4f46382c2be1603dc817551ff9a7b333ed1d18f` | ⚠️ Unaudited |
| BoostedMasterChefJoe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x217945d4cb3386420252da73743f1730f38266e9` | ⚠️ Unaudited |
| BoringHelperV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1dd4d86180eee39ac4fb35eca67cacf608ab5741` | ⚠️ Unaudited |
| BotDecisionLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4efc8c366d3872c214ea0dd8cdff85d51fc0a776` | ⚠️ Unaudited |
| BridgeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x19860ccb0a68fd4213ab9d8266f7bbf05a8dde98` | ⚠️ Unaudited |
| BTRFLY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0d4ceb216b3ba9c3701b291766fdcba977cec3a` | ⚠️ Unaudited |
| BtrflyOhmBondingCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa77b57445fa262cae325ded434df89302c93f59a` | ⚠️ Unaudited |
| BulkSeller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a3753fa1eee1622fe327df0b7ec03463ef00f73` | ⚠️ Unaudited |
| BulkSellerFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40ae6da2d92aa3dcb7f8d7a7209fd12bdfcb7c85` | ⚠️ Unaudited |
| BulkSellerOffchain | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9acc60f915dfcd190d270fc92567ae71776bd320` | ⚠️ Unaudited |
| CamelotV1VolatilePreview | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xaa472d36f89706749b4989c08c92cf563c0feca2` | ⚠️ Unaudited |
| CErc20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x158079ee67fce2f58472a96584a73c7ab9ac95c1` | ⚠️ Unaudited |
| CErc20Delegator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x5d3a536e4d6dbd6114cc1ead35777bab948e3643` | ⚠️ Unaudited |
| CEther | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ddc2d193948926d02f9b1fe9e1daa0718270ed5` | ⚠️ Unaudited |
| Cliff | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaff90532e2937ff290009521e7e120ed062d4f34` | ⚠️ Unaudited |
| CommunityTreasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x650f5865541f6d68bddfe977db933c293ea72358` | ⚠️ Unaudited |
| Comp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc00e94cb662c3520282e6f5717214004a7f26888` | ⚠️ Unaudited |
| ComposableStablePreview | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a303b4e823b97689bcc77ae3dde6b6e5b5d3007` | ⚠️ Unaudited |
| ComposableStablePreviewProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x4239ddd3c50463383670e86c119220849bfaf64a` | ⚠️ Unaudited |
| ComposableStablePreviewV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x886c9a91bf10dbc5e3c66c29387be9421a00442d` | ⚠️ Unaudited |
| ComposableStablePreviewV5 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39a65bfdb7b977a019564c2f9a81e1a29f7341fe` | ⚠️ Unaudited |
| Comptroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x178053c06006e67e09879c09ff012ff9d263df29` | ⚠️ Unaudited |
| ConnectV2BenqiAvalanche | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xff5a7a16619d3f4c4bdc2fef7af8a9d0b6c35ca8` | ⚠️ Unaudited |
| ConnectV2QiAvalanche | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xac33e98174a897ecf21bd5c6e67696007aa58527` | ⚠️ Unaudited |
| CustomMasterChefJoeV2Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xadaf18d79f316005542da4ecb1624b59c4e6e398` | ⚠️ Unaudited |
| Dai | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251182 | `0x6b175474e89094c44da98b954eedeac495271d0f` | ⚠️ Unaudited |
| DaiUsds | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3225737a9bbb6473cb4a45b7244aca2befdb276a` | ⚠️ Unaudited |
| Directory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x702a893f712a59be72722e4078513a1fba5caf2d` | ⚠️ Unaudited |
| Distributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2120ae79d838d6703cf6d2ac5cc68b5db10683f` | ⚠️ Unaudited |
| DutchAuction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27a7296a9d282e55bdf7ac3a7b768763dd65de1e` | ⚠️ Unaudited |
| EmptyUUPS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f69a9a183c62cff7ed5b07a3102a9c36e297807` | ⚠️ Unaudited |
| ERC1155GatewayFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe0560dfce5e73ccea36f0df586e5a07e07835705` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x428f2f93afac3f96b0de59854038c585e06165c8` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x921b10eb4f4a2afdd1fcd0514022d18faf32fdbf` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | mantle | n/a | `0x051dcd6a80f11fe68f77fb0ebde03853fa96b1fd` | ⚠️ Unaudited |
| ERC20BulkSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x77b8c8aaca67b05180f9710fc9b21c8cfc25e0ee` | ⚠️ Unaudited |
| ERC20GatewayFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4643d976e9b32dc26a316c5b5c75d7c57db0df5a` | ⚠️ Unaudited |
| ERC20Mock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x72281a435fe5a9945e04ef4d0a32771430106587` | ⚠️ Unaudited |
| ERC20Premined | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x19c7fa940f93c238acafe3d75b3d5d6f529d4e38` | ⚠️ Unaudited |
| ERC677GatewayFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x12e994e89c92b03df6c15fb8340f624aec1d8f3e` | ⚠️ Unaudited |
| ERC721Gateway_MintBurn | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x17e2e3d4a27e8e0790c85ff2ec13d001e749e49e` | ⚠️ Unaudited |
| ERC721GatewayFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x869ec639a622a1bbdaf44d3b1fe0cc2b210d4964` | ⚠️ Unaudited |
| EthReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7549b6b7e067f0c79e1f40c5f7465e7161391532` | ⚠️ Unaudited |
| ExpiredLpPtRedeemer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0e7cacc6c2a22aa2d97a42a8c82edaf9f9eac259` | ⚠️ Unaudited |
| FactoryPortal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2ac03bf434db503f6f5f85c3954773731fc3f056` | ⚠️ Unaudited |
| FantomAnimals | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3cb1967b36c318510cc06ab901b428a166bb6dda` | ⚠️ Unaudited |
| FiatToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8cbde23b1416cac07a52591bba744c744d77a91a` | ⚠️ Unaudited |
| FiatTokenProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48` | ⚠️ Unaudited |
| FiatTokenUtil | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6315aa908c50376d1028412c028aa0629f0355a6` | ⚠️ Unaudited |
| FiatTokenV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0882477e7895bdc5cea7cb1552ed914ab157fe56` | ⚠️ Unaudited |
| FiatTokenV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7277a6e95992041568d9391d09d0122023778a2` | ⚠️ Unaudited |
| FiatTokenV2_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2327a938febf5fec13bacfb16ae10ecbc4cbdcf` | ⚠️ Unaudited |
| FinalizeAndBroadcast | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcfaa9540332afa3974bceed79bdd24d86c5fd4ee` | ⚠️ Unaudited |
| FixedPricePTAMM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x39cd9cb33da6b5eb2a22cbe0a07647e2c3c76d23` | ⚠️ Unaudited |
| GMTokenPricingHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x885af6ebf1c33fcb41577b43416bc7b7e0a672cf` | ⚠️ Unaudited |
| GovernorAlpha | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb0ff2b1047d9e8d294c2ed798fae3fa817f43ee1` | ⚠️ Unaudited |
| HLPPricingHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xae22d11c0a4f63fec9f265b9981cc0c0b395457d` | ⚠️ Unaudited |
| ImplicitSwapfeeContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43d03031fab845065e9cefe89dd122d63f72011f` | ⚠️ Unaudited |
| InstaBenqiMappingAvalanche | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe19fba29ac9baacc1f584aecd9c98b4f6fc58ba6` | ⚠️ Unaudited |
| JCollateralCapErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x125cf88b4dc08b45847dec7b8d8e1b543f84b4d2` | ⚠️ Unaudited |
| JCollateralCapErc20Delegator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x102011863cc4f506d1387cd6b22c522602ae0fbf` | ⚠️ Unaudited |
| JoeBar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x57319d41f71e81f3c65f2a47ca4e001ebafd4f33` | ⚠️ Unaudited |
| JoeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9ad6c38be94206ca50bb0d90783181662f0cfa10` | ⚠️ Unaudited |
| JoeHatToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x82fe038ea4b50f9c957da326c412ebd73462077c` | ⚠️ Unaudited |
| JoeLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfdf50fea3527fad31fa840b748fd3694ae8a47cc` | ⚠️ Unaudited |
| JoeMaker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4247c5dbac51a135939cc904c34e4913b6bcdcfe` | ⚠️ Unaudited |
| JoeMakerV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdb5b4cc0276389a943dba9eb07a97c10e8a475d3` | ⚠️ Unaudited |
| JoePair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3acd2ff1c3450bc8a9765afd8d0dea8e40822c86` | ⚠️ Unaudited |
| JoeRoll | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xacff0fbf56baeb9ef677de19aded8f7a950bcb58` | ⚠️ Unaudited |
| JoeRouter02 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x60ae616a2155ee3d9a68541ba4544862310933d4` | ⚠️ Unaudited |
| JoeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd` | ⚠️ Unaudited |
| Joetroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1ed8368ca83437dbf43e50e85e6f82342e92cfcb` | ⚠️ Unaudited |
| JumpRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x363637833d110f86e47311e4c54e520982721f3b` | ⚠️ Unaudited |
| JWrappedNativeDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x267a4576293d55b53c769606e886e1f343149df5` | ⚠️ Unaudited |
| KyberMathHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x2f9e9384116066d7c7bf1e2f51e8599c5fc7f151` | ⚠️ Unaudited |
| LimitBackendHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5996098a8bfa69fdff93e21228d895ba3608bfcd` | ⚠️ Unaudited |
| LimitMinting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xab9aece78f5a6e68fe1b5cc5e172302e9070d68b` | ⚠️ Unaudited |
| LinearPreview | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x73187e5b27f2aadd5ffee023d6a9e179365f2ad6` | ⚠️ Unaudited |
| LiquidityPoolManagerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x912b5d41656048ef681efa9d32488a3ffe397994` | ⚠️ Unaudited |
| LiquiditySeedingHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x203d3a2fd52973a34bab6fc50e3b69863bdb769c` | ⚠️ Unaudited |
| LongYieldTradingBot | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x263833d47ea3fa4a30f269323aba6a107f9eb14c` | ⚠️ Unaudited |
| LPChainlinkOracleV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x04a34ff16f31c8d6ea7b2c4489df13caa53e31d6` | ⚠️ Unaudited |
| LPResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x04df48ac59cd1ff079752405db731cc21e092682` | ⚠️ Unaudited |
| MarketMathStatic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0582d93fd9c9d42f26be5d86a5f75291f92102c2` | ⚠️ Unaudited |
| MarketSweed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xaa3350c98a4a3a4cbbf35d0858420bc937579598` | ⚠️ Unaudited |
| MasterChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2edad668740f1aa35e4d8f227fb8e17dca888cd` | ⚠️ Unaudited |
| MasterChefJoeV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd6a4f121ca35509af06a0be99093d08462f53052` | ⚠️ Unaudited |
| MasterChefJoeV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x188bed1968b795d5c9022f6a0bb5931ac4c18f00` | ⚠️ Unaudited |
| MasterMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x566c11b5c2201b69c9269fe924e4395873674335` | ⚠️ Unaudited |
| Maximillion | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x10338ee9417260b486a4d1452ee2496338b05348` | ⚠️ Unaudited |
| MerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xedd1cb10d6dde82c805f7fc9988ee3d89c115e34` | ⚠️ Unaudited |
| MetaStablePreview | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x21a9fd7212f37c35b030e9374510f99128d59cd3` | ⚠️ Unaudited |
| Migrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x818180acb9d300ffc023be2300addb6879d94830` | ⚠️ Unaudited |
| MlpPricingHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x10115a984d69b0a832239a26d1841f10a59e45d8` | ⚠️ Unaudited |
| Multicall3p | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb782c60c9e27dd66b8b63e3694b45d8636d2d202` | ⚠️ Unaudited |
| NCStableCoinInterestRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x645e758796408efdd65bbbd877e8ebceeb231f4c` | ⚠️ Unaudited |
| NCStandardInterestRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18b5b6696e6569f437f48b111734d72b225d14a7` | ⚠️ Unaudited |
| NFTHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83d85aedd308261d847c3eb8d7146457bd8f38e8` | ⚠️ Unaudited |
| NFTRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1fbbc7dba1ef75ff43f955a5b9ceec3cc1692cd8` | ⚠️ Unaudited |
| OracleLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02176d640657740539f70eea98501ebbf1c10ecc` | ⚠️ Unaudited |
| PangolinFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcdeea31e087f0cf463043d246a45b87f4e959737` | ⚠️ Unaudited |
| PangolinRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe54ca86531e17ef3616d22ca28b0d458b6c89106` | ⚠️ Unaudited |
| PBTRFLY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x57503824e256e878db8136fde66f155c49e362df` | ⚠️ Unaudited |
| PENDLE | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251184 | `0x808507121b80c02388fad14726482e061b8da827` | ⚠️ Unaudited |
| PendleAaveMarket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8315bcbc2c5c1ef09b71731ab3827b0808a2d6bd` | ⚠️ Unaudited |
| PendleAaveV2YieldTokenHolder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x33d3071cfa7404a406edb5826a11620282021745` | ⚠️ Unaudited |
| PendleAaveV3OffchainRewardsSYUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x540e181d4e3c70632e6bb153282bead2886d0768` | ⚠️ Unaudited |
| PendleAaveV3SY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c28d28bad669afadc37b034a8070d6d7b9dfb74` | ⚠️ Unaudited |
| PendleAaveV3WithRewardsSYUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x269b2a2d136a46b8d48842cb6f306668e0a98161` | ⚠️ Unaudited |
| PendleAerodromeVolatileSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x02adf72d5d06a9c92136562eb237c07696833a84` | ⚠️ Unaudited |
| PendleAgETHSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1b9150f2085f6a553b547099977181ca802752a` | ⚠️ Unaudited |
| PendleAmphorWstETHVaultSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x33a269066457e5e3dc9b6dd1c7d854a7df714b6d` | ⚠️ Unaudited |
| PendleAnkrBNBSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x58732f1c1243a0d5876a601fb8d1ee508b21580d` | ⚠️ Unaudited |
| PendleArbitrumEPendleSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd302d7fd2c9375a433018fdfa5613be6ad3f18e3` | ⚠️ Unaudited |
| PendleArbitrumStakedEthSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2ca0bab426b0c4245ce79433638cc175b60f4c69` | ⚠️ Unaudited |
| PendleAsBNBSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0f38727e3d9c7fe479ab90472f15bf17492d2993` | ⚠️ Unaudited |
| PendleAstherusASUSDFSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1f42fd664c66bf0015f6028cfb0dd046001272a4` | ⚠️ Unaudited |
| PendleAstherusUSDFSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0ab3ae25c42a2f3748a018556989355d568fa6d6` | ⚠️ Unaudited |
| PendleAuraBbAWethSwethSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb611d0bd02a74c491b75d51d6ea5558f1887da3` | ⚠️ Unaudited |
| PendleAuraWethAnkrethSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0ca1e345be44ea2c83202222e5084ae3a01e9dc` | ⚠️ Unaudited |
| PendleAuraWethAnkrethSYV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c662f901546a503c90d8de0db8bff1d32ff4a39` | ⚠️ Unaudited |
| PendleAuraWethRethSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf7083f2a0f8a191ab5eeafebe92ed21cd3dd915` | ⚠️ Unaudited |
| PendleAuraWethRocketEthSYV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9bdb1dfd15d9051d127c3cd6882e194ca1c89e56` | ⚠️ Unaudited |
| PendleAuraWethStafiEthSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35be86140eec53da42c265ae764e547df13891c3` | ⚠️ Unaudited |
| PendleAuraWethVethSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c76e1c2c57c343afa77c4374471eb4eb6a159ea` | ⚠️ Unaudited |
| PendleAuraWethWstethSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8267fdabd1b8c8645138f2de5b0fe24988dc9820` | ⚠️ Unaudited |
| PendleAuraWstethAnkreth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5cd090010d4735f18306eb680d898ef9f36f044` | ⚠️ Unaudited |
| PendleBeetsStakedSonicSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x64aec80c049aaf71a739a978d4c80e00547316e9` | ⚠️ Unaudited |
| PendleBenQiForge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x23b868bebdfd2d6faedaa92e44aef6c8704612bc` | ⚠️ Unaudited |
| PendleBenQiYieldContractDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x21d2e8229fcf1b343085fca9c5c7418a9b0fc361` | ⚠️ Unaudited |
| PendleBeraStoneVaultSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xd7b2a47ac9236d9685b573a2428f72ec45e97c45` | ⚠️ Unaudited |
| PendleBeraVedaBTCSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13ab922d9139b30d169207d190cc734a9464afbe` | ⚠️ Unaudited |
| PendleBeraVedaETHSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x042677ce7e0e63fa5881f44a0f00d33feb5f55da` | ⚠️ Unaudited |
| PendleBoringOneracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f0318b5ab2c4084692986a2c25916cec1195cd9` | ⚠️ Unaudited |
| PendleBoringSolvBTCOneracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f060b0ebb064e9feb1994ba9b5dcbdeb3735953` | ⚠️ Unaudited |
| PendleBridgedLSDSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x96a528f4414ac3ccd21342996c93f2ecdec24286` | ⚠️ Unaudited |
| PendleBridgedPrincipalToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0ea46a4c257071352b57e9f6d054fc137f6e14b9` | ⚠️ Unaudited |
| PendleCamelotV1VolatileSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x239c7c530f194e9e00856b5c55a95d485f64c56e` | ⚠️ Unaudited |
| PendleCMETHSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x2ab88ac7458faec2e952bb79cc1be6577bf63e70` | ⚠️ Unaudited |
| PendleCommonPoolDeployHelperV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x026644dc6fc4cf22a45ad14231090c7736d07507` | ⚠️ Unaudited |
| PendleCompoundMarket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x944d1727d0b656f497e74044ff589871c330334f` | ⚠️ Unaudited |
| PendleCompoundYieldTokenHolder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0aa68d8a0d56ae7276ab9e0e017965a67320c60` | ⚠️ Unaudited |
| PendleConcreteLBTCSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04b3f3e1c07fccea1f37d9fc4c9548a22cada698` | ⚠️ Unaudited |
| PendleConcreteSolvBTCBBNSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x24e9571c29d749e54246741ba137fe2d574f0b6b` | ⚠️ Unaudited |
| PendleConcreteSUSDESY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7258e564c8123227616cadf5466dc9ee261e2790` | ⚠️ Unaudited |
| PendleConcreteUniBTCSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c4ee9d25d66e5ee06d55db5bca74ec4c0e4b652` | ⚠️ Unaudited |
| PendleConcreteVaultSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69323fe3d6c95e8f1c9b5d5dd6da65864f08cf1c` | ⚠️ Unaudited |
| PendleCornEBTCSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x091de0d774e2abaf824f074f40cdbc9a086c032c` | ⚠️ Unaudited |
| PendleCornLBTCSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d6ec7a7b051b32205f74b140a0fa6f09d7f223e` | ⚠️ Unaudited |
| PendleCornPumpBTCSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56bb34a12b70046b0a03ee63392c09cdddaaa430` | ⚠️ Unaudited |
| PendleCornSolvBTCBBNSYUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x23e06828d1a1460aba63f92ba75396bdf88b5f80` | ⚠️ Unaudited |
| PendleCornUniBTCSYUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83e1d1a2ce8ed6c4674d9ac61b5bf51395cc5593` | ⚠️ Unaudited |
| PendleCurveFraxUsdcSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd393d1ddd6b8811a86d925f5e14014282581bc04` | ⚠️ Unaudited |
| PendleCurvePool2TokenSYUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xba04c9a4297484aa671fd3425364994cf2ac8037` | ⚠️ Unaudited |
| PendleCUSDAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae8bc036451af7c8f96fd90642e163392d21d33b` | ⚠️ Unaudited |
| PendleData | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x94d7e5c48ca9627001facb04d1820c54dff3032c` | ⚠️ Unaudited |
| PendleDecimalsWrapperFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4722689ac70d7c737e4f9ca326c0ce6f2d3d696b` | ⚠️ Unaudited |
| PendleDolomiteSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3055a746e040bd05ad1806840ca0114d632bc7e2` | ⚠️ Unaudited |
| PendleEBTCSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1aebb42da95823982b62e527170bf47dbe12aeab` | ⚠️ Unaudited |
| PendleEBTCSYV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x7acdf2012aac69d70b86677fe91eb66e08961880` | ⚠️ Unaudited |
| PendleEEigenSYUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78237434ed20f2e2f4aadc7ef4e789644ab21923` | ⚠️ Unaudited |
| PendleERC20SY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x0013acc071f732fd6bf8210ab46a3794a7d8945e` | ⚠️ Unaudited |
| PendleERC20SYUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1fad3ce1c1ab563441d58b79e49cb0ebc12c1bd5` | ⚠️ Unaudited |
| PendleERC20WithAdapterSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69787f3d1375e9e092eb5a4f3106abc24494a573` | ⚠️ Unaudited |
| PendleERC20WithSupplyCapSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a7096563c94029dfd55e625a19f099726ac4f3f` | ⚠️ Unaudited |
| PendleERC4626NoRedeemNoDepositUpgSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1992a697d71cec7e210d4b28e0e67a3c46cd7dfc` | ⚠️ Unaudited |
| PendleERC4626NoRedeemUpgSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x338e2cafa81e72ff422983e124e265eeccd718cb` | ⚠️ Unaudited |
| PendleERC4626NotRedeemableToAssetSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf6193c65cf3d1cedde0ff9d8cb9781ad21ec980f` | ⚠️ Unaudited |
| PendleERC4626NotRedeemableToAssetSYV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10222f882f3594455343abc9831213854902ed8e` | ⚠️ Unaudited |
| PendleERC4626OptRedeemSYUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48b115fc8f59f32233f93019e38aa2b36901af1b` | ⚠️ Unaudited |
| PendleERC4626Scaled18SY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x39e272be5d396910d8aef18801dc14fe3d195f72` | ⚠️ Unaudited |
| PendleERC4626SY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a26e7ab5c554232314a8d459eff0ede72333f08` | ⚠️ Unaudited |
| PendleERC4626SYV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x292e67fe392b811d486c81eceb25ea96af57c2fc` | ⚠️ Unaudited |
| PendleERC4626UpgSYV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0a91166428d71777e1a9b338b84eb9452e520b78` | ⚠️ Unaudited |
| PendleEUSDESY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63d06b18fc90bafaf5625e3a0d8e3e6b7f3e5661` | ⚠️ Unaudited |
| PendleEUSDSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e16e4253ce4a1c96422a9567b23b4b5ebc207f1` | ⚠️ Unaudited |
| PendleExchangeRateOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x170a44190c9e1c929210f91931ba9ee1c6b9f239` | ⚠️ Unaudited |
| PendleExchangeRateOracleApp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4d6911a1f01e425561817f50a93f0e09745adcd8` | ⚠️ Unaudited |
| PendleExitAll | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe05082b184a34668cd8a904d85fa815802bbb04c` | ⚠️ Unaudited |
| PendleExternalCapGates | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x48130c993656404641d2f10480de160e46c43bde` | ⚠️ Unaudited |
| PendleExternalRewardDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x068def65b9dbaff02b4ee54572a9fa7dfb188ea3` | ⚠️ Unaudited |
| PendleEzETHL2SY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0de802e3d6cc9145a150bbdc8da9f988a98c5202` | ⚠️ Unaudited |
| PendleEzETHSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22e12a50e3ca49fb183074235cb1db84fe4c716d` | ⚠️ Unaudited |
| PendleFeeDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0caa67c712d96809f2abaf2c95369ef942ce8cb` | ⚠️ Unaudited |
| PendleFeeSetter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3025680925349c9c01c0f01cf300ec963832ec64` | ⚠️ Unaudited |
| PendleFluxLendingSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdeaa5833d09179c20b55601453b9dd22216f2d76` | ⚠️ Unaudited |
| PendleFXSaveSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x13945b761b2ed3219a497a46d15a8923f418d2ab` | ⚠️ Unaudited |
| PendleGaugeControllerMainchainUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11a72dc6d320f1de830d17634ae6524403fd5f47` | ⚠️ Unaudited |
| PendleGaugeControllerSidechainUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x07b2c3e23452321c3bad2b37e878ef4e81cbf733` | ⚠️ Unaudited |
| PendleGaugeControllerUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x17f100fb4be2707675c6439468d38249dd993d58` | ⚠️ Unaudited |
| PendleGDaiSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x07c3de6f0c21a52538a15d00dbf2434bb7af7e14` | ⚠️ Unaudited |
| PendleGenericLiquidityMining | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f3bccbfef1dc227f33a11d7a51cd02dead208c8` | ⚠️ Unaudited |
| PendleGenericLiquidityMiningMulti | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1305434fbe1c14a8c6c1d30bbf92f5baee506381` | ⚠️ Unaudited |
| PendleGenericMarket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x11b9346eefa301e278f246d857c0a6edfbf97fb4` | ⚠️ Unaudited |
| PendleGenericMarketFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4d0cf9e4d28c85b0cea3c4c68f3c54f9f474af8e` | ⚠️ Unaudited |
| PendleGlpSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x144059f92f647ceec9460545c09f42bdf22a1b7d` | ⚠️ Unaudited |
| PendleGMV2SingleTokenSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9e83b9b02b4292b8f18b7819a31c765777ee4d10` | ⚠️ Unaudited |
| PendleGMV2SingleTokenSY__FixedOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x293d5aecca95bc33cac36a28f3ce0cf43f9f9fe5` | ⚠️ Unaudited |
| PendleGMV2TokenSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa9ad16733bfdd3e2da154a18dc804efe9e1ae631` | ⚠️ Unaudited |
| PendleGovernanceManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a05a64115bd86f220a26461fde3a011c7142476` | ⚠️ Unaudited |
| PendleGovernanceProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x09c9ac55f2cd0d6549e43053a1f7ab27d2c355be` | ⚠️ Unaudited |
| PendleGUSDCSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0a9ed458e6c283d1e84237e3347333aa08221d09` | ⚠️ Unaudited |
| PendleHgETHSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x378fa6c08c86d76f0c2511a8addd9464d3dfc723` | ⚠️ Unaudited |
| PendleHlpSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x3a0371a5774b406924a6bbdd585b5863f484baf3` | ⚠️ Unaudited |
| PendleHwHLPSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b9ff0908c3eca9b38b492d4013982ec26034071` | ⚠️ Unaudited |
| PendleInfraredBGTSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x0059a72a5e545f6998af038abbb625fc702b1a97` | ⚠️ Unaudited |
| PendleInstadappLendingSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1da9fb917023d2ad0eaf06df998fe828debe8d38` | ⚠️ Unaudited |
| PendleKarakVaultSUSDESY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1b641894e66aec7bf5ab86517e8d81763cc8e19e` | ⚠️ Unaudited |
| PendleKarakVaultUSDESY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd63a351dae6523a65a9d8c8291da80579785b0e8` | ⚠️ Unaudited |
| PendleKarakVaultWEETHSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ed9812f62cf65efdce4f3ca6b0a59448eebeaaf` | ⚠️ Unaudited |
| PendleKyberElasticSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x77bda306ce23890129b572381999369732ffe3c5` | ⚠️ Unaudited |
| PendleKyberElasticSYUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1fad3ce1c1ab563441d58b79e49cb0ebc12c1bd5` | ⚠️ Unaudited |
| PendleL2LRTSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0e7e950db34368b376ce5683f0a3113981854e70` | ⚠️ Unaudited |
| PendleL2LRTUpgSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x09c9ac55f2cd0d6549e43053a1f7ab27d2c355be` | ⚠️ Unaudited |
| PendleLBTCBaseSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x035a90de4fa66856769542a4f26001a9549acf59` | ⚠️ Unaudited |
| PendleLBTCBaseSYScaled18 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x67e64af30e04a7277ab2d4f09ace3f77a15801f9` | ⚠️ Unaudited |
| PendleLBTCExchangeRateOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82199b840796cb8d910974b41175d9dfb1e5e43b` | ⚠️ Unaudited |
| PendleLBTCSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc781c0cc527cb8c351be3a64c690216c535c6f36` | ⚠️ Unaudited |
| PendleLevelUSDSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x14ff57675c9c34eeb9e1516ffda7cac6ed1b9748` | ⚠️ Unaudited |
| PendleLimitRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x035a90de4fa66856769542a4f26001a9549acf59` | ⚠️ Unaudited |
| PendleLinearDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2b35836025d1159f3d6af4b13adca05de78b93c6` | ⚠️ Unaudited |
| PendleLiquidBeraBTCSYScaled18 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x3d98195b252dbfec41dff573981224e4a4b01aff` | ⚠️ Unaudited |
| PendleLiquidityMiningBaseV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x071dc669be57c1b3053f746db20cb3bf54383aea` | ⚠️ Unaudited |
| PendleLiquidityMiningBaseV2Multi | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x224d395e9e123bc9c37bff8bcd845562d5232713` | ⚠️ Unaudited |
| PendleLooksStakingSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35c16314d6ee4753289e5cc15a5c5e1dd4ead345` | ⚠️ Unaudited |
| PendleLpGlpOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x67e64af30e04a7277ab2d4f09ace3f77a15801f9` | ⚠️ Unaudited |
| PendleLpHolder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f16b22c839fa995375602562ba5dd15a22d349d` | ⚠️ Unaudited |
| PendleLPWrapperFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12930bd944bb34b0a21ccc2e7d32a6834bd58e19` | ⚠️ Unaudited |
| PendleMarketFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27b1dacd74688af24a64bd3c9c1b143118740784` | ⚠️ Unaudited |
| PendleMarketFactoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x16648548d12d1f71663f712211d56ae7322f58b9` | ⚠️ Unaudited |
| PendleMarketFactoryV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x02adf72d5d06a9c92136562eb237c07696833a84` | ⚠️ Unaudited |
| PendleMarketFactoryV6Upg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1f6251f919343ac654122f315d58ccd9190e6bf4` | ⚠️ Unaudited |
| PendleMarketReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16b4ad69d414a197f9cb98d06db224646dc7cdc7` | ⚠️ Unaudited |
| PendleMellow4626SYUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x210e157a1323d945c7600e31b8cb6763d4f7422b` | ⚠️ Unaudited |
| PendleMellowRstETHSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x749087ee993fdfc141f6f0e0b1370fee2d0202f9` | ⚠️ Unaudited |
| PendleMellowSUSDESY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51eb1ffc5c6c017a4a15c98c168aef01b05f0b62` | ⚠️ Unaudited |
| PendleMellowVaultERC20SYUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ffbf8c047e568a23acc95ce1c593866973f10b6` | ⚠️ Unaudited |
| PendleMellowVaultERC4626SYUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b91b60f96c1c587c830a0239e27431276df9718` | ⚠️ Unaudited |
| PendleMellowVaultSYBaseV2Upg | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x64046776c9c856fdc5c39c6eba101adc8e18291f` | ⚠️ Unaudited |
| PendleMellowVaultWstETHSYUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0304e69578fea985e3ad406d6fdbe5c73f0b6e13` | ⚠️ Unaudited |
| PendleMerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x23a102e78d1ff1645a3666691495174764a5fcaf` | ⚠️ Unaudited |
| PendleMETHSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x9ab557331ddada945eb2ece19b90bd7a843f8665` | ⚠️ Unaudited |
| PendleMidasSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x01e0f0351be9f820f83a6d4175b8e5faa588bb5c` | ⚠️ Unaudited |
| PendleMlpSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4b3f79ce3d5d752064288fd2be968a1c21b3ba37` | ⚠️ Unaudited |
| PendleMoonwellTokenBaseSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x02176d640657740539f70eea98501ebbf1c10ecc` | ⚠️ Unaudited |
| PendleMoonwellTokenFix | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x41fad93f225b5c1c95f2445a5d7fcb85ba46713f` | ⚠️ Unaudited |
| PendleMorpho4626AssetSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8077b6f34e9193d5bbb0ef06a73119060534d130` | ⚠️ Unaudited |
| PendleMsgSendEndpointUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x07b1014c88f14c9e910092526db57a20052e989f` | ⚠️ Unaudited |
| PendleMulticall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x05d0ea1dbfa239f9fbc47e306e850ce971fe632d` | ⚠️ Unaudited |
| PendleMulticallV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9c5f6be9a6e625b0df5f9f97a5850a41f933434c` | ⚠️ Unaudited |
| PendleMultiTokenMerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x1e56299ebc8a1010cec26005d12e3e5c5cc2db00` | ⚠️ Unaudited |
| PendleOffchainStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x57ab80b1b8f76f57b4214a0585072c00be65875e` | ⚠️ Unaudited |
| PendleOnePause | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2274610d125cbd712b01fadbcdbd4b5561829a32` | ⚠️ Unaudited |
| PendleOnsenComplexRewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e821a72fe99e1c28f41fa07078f17abb7d064f4` | ⚠️ Unaudited |
| PendleOracleForSyProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xc2eedc8b9bac65c8444a0ccf1c18b51a50b47020` | ⚠️ Unaudited |
| PendleOriginSonicSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x563c6bcad7d50f3f650d92e0f1c4de6ac3767ce3` | ⚠️ Unaudited |
| PendleOwnershipToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x010a0288af52ed61e32674d82bbc7ddbfa9a1324` | ⚠️ Unaudited |
| PendlePaladinSCTokenSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x79cac177c2efbf5dbab7c7111afa9caf8031daa2` | ⚠️ Unaudited |
| PendlePausingManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ef44218209d7d64737dd36f179d5e448df3eed4` | ⚠️ Unaudited |
| PendlePoolDeployHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x01d0a833c3ad951e37e6f9bf5ece86e519ff8a0c` | ⚠️ Unaudited |
| PendlePoolDeployHelperV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0b692f06ca82e3075dc537224450885fd138e655` | ⚠️ Unaudited |
| PendlePrincipalToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x2719e657ec3b3cbe521a18e640ca55799836376f` | ⚠️ Unaudited |
| PendlePrincipalTokenV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x04eb6b56ff53f457c8e857ca8d4fbc8d9a531c0c` | ⚠️ Unaudited |
| PendlePtGlpOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x43d03031fab845065e9cefe89dd122d63f72011f` | ⚠️ Unaudited |
| PendlePtLpOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x15aab5c1ab800a9e457d9f4335e8a2dc9f6ad707` | ⚠️ Unaudited |
| PendlePTOFTAdapterFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x24ec4b068140dd3c0d63d904a24656c6fd002744` | ⚠️ Unaudited |
| PendlePtOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0b692f06ca82e3075dc537224450885fd138e655` | ⚠️ Unaudited |
| PendlePufStETHSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25ad8697113275d6597419cbe2bb0d69760d7ff3` | ⚠️ Unaudited |
| PendlePufWETHSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x253008ba4ae2f3e6488dc998a5321d4eb1a0c905` | ⚠️ Unaudited |
| PendlePumpBTCSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78f9afec0afd297bea08098ed01719b0b0f19ab2` | ⚠️ Unaudited |
| PendlePYLpOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0f47aee96fae2558b0081c8d2dffbb8512397e23` | ⚠️ Unaudited |
| PendleRedeemProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f83805d7d2a6b7bf35e5c3131d684d914b98472` | ⚠️ Unaudited |
| PendleRedStoneRateOracleAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x01cccb44c69c59dcb5e9577aa4a26ade269947bb` | ⚠️ Unaudited |
| PendleRenzoPreviewHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x9c2930875c580680fd44e330dbcc27c3b236cfad` | ⚠️ Unaudited |
| PendleReservoirUSDSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x43d6651ff941776976ae8e5b11ef513e054a7931` | ⚠️ Unaudited |
| PendleReservoirWsrUSDSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1eb76f737ec25f3d161936f9f63061dcafc64600` | ⚠️ Unaudited |
| PendleRewardManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0b1fc9cde816edfb6a269b9eb13616a7dbe714ff` | ⚠️ Unaudited |
| PendleRewardManagerMulti | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4b21630f3680cd2e1139c02f9bf3739e2bd418fa` | ⚠️ Unaudited |
| PendleREZtakeSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8eb1a6a1296f41ccaa20d13b952a7fca1b20c3e4` | ⚠️ Unaudited |
| PendleRLPSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0efdee86929832e419baf1b6c5f6eac09c022add` | ⚠️ Unaudited |
| PendleRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x15afc70cbf0e173f0ac0861d6b0b776d589c8256` | ⚠️ Unaudited |
| PendleRouterStatic | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0x0013acc071f732fd6bf8210ab46a3794a7d8945e` | ⚠️ Unaudited |
| PendleRouterStatic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x3b5ae552310638a69863f6e348b41912defa0e3f` | ⚠️ Unaudited |
| PendleRouterV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1e56299ebc8a1010cec26005d12e3e5c5cc2db00` | ⚠️ Unaudited |
| PendleRsETHSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x730a5e2acebccaa5e9095723b3cb862739da793c` | ⚠️ Unaudited |
| PendleRswETHSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7786729eee8b9d30fe7d91fdff23a0f1d0c615d9` | ⚠️ Unaudited |
| PendleSavingUSDASY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4464fb1316b32cb71fa344973238245f4c32b1ec` | ⚠️ Unaudited |
| PendleSENASY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa36ecca8b7624d224f01cd6649c8afad3da12c3d` | ⚠️ Unaudited |
| PendleSfrxEthSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb83006b0aaddd15ad8afbebe2f4e0937f210673` | ⚠️ Unaudited |
| PendleSGHOSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae14ae6818c1db507e471bcf90eb81288c71f609` | ⚠️ Unaudited |
| PendleSiloV2SY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0cb577bdd947c30a8a9103655c750eae57199cd8` | ⚠️ Unaudited |
| PendleSiloWithIncentiveNonBorrowableSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x374c07997b3c0df6db0f370ed8561404b729a43a` | ⚠️ Unaudited |
| PendleSiloWithIncentiveSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0c7fdb9d3f9b053bb5da838edae4414787ae32d3` | ⚠️ Unaudited |
| PendleSimpleERC20TokenHolder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1a14f2964664b9d7e45df70d09fe4007615e31c2` | ⚠️ Unaudited |
| PendleSLPLiquidityMining | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c09fd74e80ce12bebbc8f56fab8633ea41c2bcc` | ⚠️ Unaudited |
| PendleSolvBeraBTCSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x67e58f0240b432e78795dc010716e54b70c609d7` | ⚠️ Unaudited |
| PendleSolvBNBBTCSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x01517f7b5775f680f8e6fa40f48e08b11508db61` | ⚠️ Unaudited |
| PendleSolvBTCBBNBaseSYUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1098b4a7e5994ea91892656e045bcc252b699558` | ⚠️ Unaudited |
| PendleSolvBTCBBNBSCSYUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x09c9ac55f2cd0d6549e43053a1f7ab27d2c355be` | ⚠️ Unaudited |
| PendleSolvBTCBBNSYUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x859c11a2483fea4b65d1ae7d207cb5395a5b4e34` | ⚠️ Unaudited |
| PendleSophonFarmingSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x065347c1dd7a23aa043e3844b4d0746ff7715246` | ⚠️ Unaudited |
| PendleSophonPointManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x74c5a0d5dfcc6d4527c849f09ecc360c5345d986` | ⚠️ Unaudited |
| PendleSparkLinearDiscountOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3fa71e3f2788f85d8c4f9c3a05b038eaf29e7d35` | ⚠️ Unaudited |
| PendleStakedLevelUSDSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0a9b2c09f8756c743b0702973ed33970d16cf6f9` | ⚠️ Unaudited |
| PendleStakingSPKUSDSSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0ee69a11b4391c5af5eb2fb088c2df5dd2a0d075` | ⚠️ Unaudited |
| PendleStakingUSDSSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb01707567cf99c2e2215f1bd8ca567d998415de` | ⚠️ Unaudited |
| PendleStEURSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x183e6dd6a2958d07ec29fc73ac2d226f8d8cc8b1` | ⚠️ Unaudited |
| PendleStkGHOSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ae50112b7efe88b0f6da37b309b12d34b8d160a` | ⚠️ Unaudited |
| PendleStrataUSDESY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x33e88943b00e699fc5b6597c5f8bcb0872af8bee` | ⚠️ Unaudited |
| PendleSuperOETHSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x35c16314d6ee4753289e5cc15a5c5e1dd4ead345` | ⚠️ Unaudited |
| PendleSUSDEL2SY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x15aab5c1ab800a9e457d9f4335e8a2dc9f6ad707` | ⚠️ Unaudited |
| PendleSUSDESY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0badf36fa17a5c5bfb552d56400c0894dd0387d2` | ⚠️ Unaudited |
| PendleSUSDSAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2effcf0d244b12eb70a0662fb4cf1af35b9e93ea` | ⚠️ Unaudited |
| PendleSUSDSArbitrumSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x74f76735ce4393408a04c4ce3245394dd85d32e3` | ⚠️ Unaudited |
| PendleSUSDSSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe3d4ec488a0a042bb86f9176c24f8cd54018ba7` | ⚠️ Unaudited |
| PendleSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0e669e08bd717d7f9c9de158636bd8561295fbb5` | ⚠️ Unaudited |
| PendleSwapAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0e669e08bd717d7f9c9de158636bd8561295fbb5` | ⚠️ Unaudited |
| PendleSwapArbitrum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4546ff0fbc6fb29916ca56b4f95744b0b356112c` | ⚠️ Unaudited |
| PendleSwapEthereum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2065e12735d678b23ec926603180c96623d5af41` | ⚠️ Unaudited |
| PendleSwapL1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e8b6ac39f8a33f46a6eb2d1acd1047b99180ad1` | ⚠️ Unaudited |
| PendleSwapL2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1f5b1f22585f430c3a1a7d16e1e1100945965e35` | ⚠️ Unaudited |
| PendleSwellRswETHStakingSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f3a7a07a968b67f1f9692b70242f10e665d38ad` | ⚠️ Unaudited |
| PendleSyrupSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9e9c85b33e87fde85c44dbf72b4b842a071551d` | ⚠️ Unaudited |
| PendleTerminalExternalCap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x315f46d865e1e09a0909703a74b13ed1754c3425` | ⚠️ Unaudited |
| PendleTerminalSYScaled18 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0d298432833e0d60372c70801feaf868eb7451b3` | ⚠️ Unaudited |
| PendleTokenDistribution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8849d0d4c35679aa78df1b5b4ceca358d57635df` | ⚠️ Unaudited |
| PendleTraderJoeYieldContractDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x331a4e4aedea3553b5c31c6a5df6c4a35de30241` | ⚠️ Unaudited |
| PendleTreeHouseETHSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37db381b273f865ecd3ae11948ea2e788ec0c7c3` | ⚠️ Unaudited |
| PendleUmbrellaStake4626SY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d3744b98881198f09ff619de9d52629176dbaf4` | ⚠️ Unaudited |
| PendleUmbrellaStakeTokenSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1d292b43171209ef02f00a239353f316c3d93151` | ⚠️ Unaudited |
| PendleUniBTCBeraSYUpgScaled18 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x313470a16f4a47a235d44a1abd6f239dce7d8f5a` | ⚠️ Unaudited |
| PendleUniBTCSYUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x87b8e462080fa443a06d2bb119adb3828c407d78` | ⚠️ Unaudited |
| PendleUniETHSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc430db19339a3051192233b4c49f9ab3dc6d16b7` | ⚠️ Unaudited |
| PendleUSDESY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x248d83f7ac03cebcc06d5c1a52c9b5d0ebb9936e` | ⚠️ Unaudited |
| PendleUSDSSYWithCap | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x508defdb5dd2adeefe36f58fdcd75d6efa36697b` | ⚠️ Unaudited |
| PendleUsualUSD0PPSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52453825c287ddef62d647ce51c0979d27c461f7` | ⚠️ Unaudited |
| PendleVenusBNBSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7b5a43070bd97c2814f0d8b3b31ed53450375c19` | ⚠️ Unaudited |
| PendleVotingControllerUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1fad3ce1c1ab563441d58b79e49cb0ebc12c1bd5` | ⚠️ Unaudited |
| PendleWansAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xaa472d36f89706749b4989c08c92cf563c0feca2` | ⚠️ Unaudited |
| PendleWbEthSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x96f77f24b3d17166fcaf3a9e3b8330ff38b966f9` | ⚠️ Unaudited |
| PendleWcgUSDSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x77d07ab8466a57fb8615aeb75c37abff25c06ebf` | ⚠️ Unaudited |
| PendleWEEthkSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0fa609622a8be8534678e7e8caf92bde06a21a77` | ⚠️ Unaudited |
| PendleWEEthkWithRateSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbbf8cfc9f38d8ad4eaea405170743c9f4a982d32` | ⚠️ Unaudited |
| PendleWEEthsSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x772079c143d9ef931a6df44963bfc37190b3400a` | ⚠️ Unaudited |
| PendleWEEthsWithRateSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x012badcc6e824c2ea32bd5367ebda3be3402c9c5` | ⚠️ Unaudited |
| PendleWEEthSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac0047886a985071476a1186be89222659970d65` | ⚠️ Unaudited |
| PendleWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6fa13469428e85e6ac12c84b73a19aef7c53332a` | ⚠️ Unaudited |
| PendleWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2e130d5dc593ffe5eb8f54f63f6b5e50df169a47` | ⚠️ Unaudited |
| PendleWstETHPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90510946d780a5ac7616c30e067670ecdc63b3f2` | ⚠️ Unaudited |
| PendleWstEthSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbc72d92b2dc8187414f6734718563898740c0bc` | ⚠️ Unaudited |
| PendleXJoeForge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x09131d750f3f7e646fbdce6dd9699775fa0daaca` | ⚠️ Unaudited |
| PendleYearnBalancerLPSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa47e357d68523ace098366888ad6b50e8d85f431` | ⚠️ Unaudited |
| PendleYieldContractDeployerBaseV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3714e5d5a32fdc16e3e6fee6788afc3ac9eb5762` | ⚠️ Unaudited |
| PendleYieldContractFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x02fafec86f91cd58a86ca6ae846ebc7df0f82b32` | ⚠️ Unaudited |
| PendleYieldContractFactoryUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x07f4989e341bf6725f1074b41c09e5d08ea403d2` | ⚠️ Unaudited |
| PendleYieldContractFactoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x1e9ff49352e7155d0af658fd88a1b3d44ed60b20` | ⚠️ Unaudited |
| PendleZerolendEBTCSYUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59ac005cb89f573641caa8c12475e4c86d4b85ea` | ⚠️ Unaudited |
| PendleZtakeEzETHSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x7a493be5c2ce014cd049bf178a1ac0db1b434744` | ⚠️ Unaudited |
| PendleZtakeRsETHSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x34349c5569e7b846c3558961552d2202760a9789` | ⚠️ Unaudited |
| PendleZtakeUSDESY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x085ba32515d33b598a3d1d10a11e710e3a7faaec` | ⚠️ Unaudited |
| PendleZtakeWeETHSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xd7df7e085214743530aff339afc420c7c720bfa7` | ⚠️ Unaudited |
| PglStakingContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe59988d947f80b59ff1de7bd413e5e5517906cb2` | ⚠️ Unaudited |
| PglStakingContractProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4074da7841bf5fff121476d6d1c2d39fbeeb9e4a` | ⚠️ Unaudited |
| Png | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x60781c2586d68229fde47564546784ab3faca982` | ⚠️ Unaudited |
| PriceOracleProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1653c07fa6ce103b43925dddb5e31ca568e53ba1` | ⚠️ Unaudited |
| PriceOracleProxyUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x107b31d84bf6cec672f3af924471bb6f4fb8555a` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1035b0c31d92d5a8cd9efcc9ed240aaa64c3d784` | ⚠️ Unaudited |
| PtAndLpToAsset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfa6b22fc4c3ad88b68c16b3061a16b1714f6bd57` | ⚠️ Unaudited |
| Qi | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8729438eb15e2c8b576fcc6aecda6a148776c0f5` | ⚠️ Unaudited |
| QiAvax | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5c0401e81bc07ca70fad469b451682c0d747ef1c` | ⚠️ Unaudited |
| QiErc20Delegator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x334ad834cd4481bb02d09615e7c11a00579a7909`; avalanche `0x76145e99d3f4165a313e8219141ae0d26900b710` | ⚠️ Unaudited |
| QiErc20Delegator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4c9f0140fad0c93009a8ea123eaf6b1a3d0ddd30` | ⚠️ Unaudited |
| QiTokenSaleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x23de2004592b04d594d23c9a928d0552e29d6bea` | ⚠️ Unaudited |
| QiTokenSaleDistributorProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa1f5ae0ce9308750ed0c2da5283ab2ad5d6bb618` | ⚠️ Unaudited |
| REDACTEDBondDepository | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98e45ef7ead7e85d3cd8f07d3e7f02405a10b96d` | ⚠️ Unaudited |
| REDACTEDBondDepositoryRewardBased | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0daf1a9c474a8ea595b5bdafe0b142bf894a1e09` | ⚠️ Unaudited |
| REDACTEDBondingCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca1d53e40eab232deff03dc824410100bcccf2bc` | ⚠️ Unaudited |
| REDACTEDLPBondDepositoryRewardBased | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09c97d85c465a188d840e4e9d4a1e077f46f1e37` | ⚠️ Unaudited |
| REDACTEDStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a5b3547200c92c560d5f9e514d47e2a78fed0ea` | ⚠️ Unaudited |
| REDACTEDTreasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x086c98855df3c78c6b481b6e1d47bef42e9ac36b` | ⚠️ Unaudited |
| RewardDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2274491950b2d6d79b7e69b683b482282ba14885` | ⚠️ Unaudited |
| RouterStatic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x16648548d12d1f71663f712211d56ae7322f58b9` | ⚠️ Unaudited |
| sAPE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47ba20283be4d72d4afb1862994f4203551539c5` | ⚠️ Unaudited |
| SimpleERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4849d2a7fec8572f12f369659cf48a826601cc5c` | ⚠️ Unaudited |
| SimpleRewarderPerSec | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x05d06afb994047acee8c205500ab1aa25c5a3388` | ⚠️ Unaudited |
| SingleStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07282f2ceebd7a65451fcd268b364300d9e6d7f5` | ⚠️ Unaudited |
| SingleStakingManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x747fc744837deda8d1c568d8e90839e5d4495255` | ⚠️ Unaudited |
| Sky | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56072c95faa701256059aa122697b133aded9279` | ⚠️ Unaudited |
| StakingHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0840ec5527d3e70d66ae6575642916f3fd18adf` | ⚠️ Unaudited |
| StakingWarmup | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x33665f4a74f88a1acd425196573072d6ff500252` | ⚠️ Unaudited |
| SushiToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b3595068778dd592e39a122f4f5a5cf09c90fe2` | ⚠️ Unaudited |
| SYRedeemAndSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5005751f2ac076a5a612a8be8f3b953dd86823f` | ⚠️ Unaudited |
| ThecosomataETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68f54c12631a83b5b42f683932f504819f26c4e7` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d903f6003cca6255d85cca4d3b5e5146dc33925` | ⚠️ Unaudited |
| TokenVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0147c0212ca4aba29d26dffd3c800893080ef296` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x4e91f1eb389242b0f718859158c1d912055afb32` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-251191 | `0xecac9c5f704e954931349da37f60e39f515c11c1` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x09f317b127bcc9d16f5dd17cadbeda9d034c0f8c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x27faf900007b4cba7803000251ec96bc69ff1bea` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | sonic | n/a | `0x02adf72d5d06a9c92136562eb237c07696833a84` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | sonic | n/a | `0x068def65b9dbaff02b4ee54572a9fa7dfb188ea3` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | sonic | n/a | `0x0ab3ae25c42a2f3748a018556989355d568fa6d6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1e5f46718bf09697db487bc8de2204cff47da241` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | sonic | n/a | `0x27b1dacd74688af24a64bd3c9c1b143118740784` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | sonic | n/a | `0x4b272672a58da22b213e733f5aba48cfec534d30` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | mantle | n/a | `0x5363d2a82b9e644736e9000bae076e5178f9962d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | base | n/a | `0x9e10848206ae6e74af868490554e2fac3e2cbf60` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | base | unit-251193 | `0xecac9c5f704e954931349da37f60e39f515c11c1` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x4b4e0888091fb1de74a7e7404b2dc4eb897fbc17`; avalanche `0xdefdbe9cafcf25e1c0c23b53a631e4fbe8e4e933` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | berachain | n/a | `0x0f2b6a162d14ae999a596a6b7459a9ef30cd9540` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | berachain | n/a | `0x1ec04edcc6571ec0691642a72cf5f3cd1233e25e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | berachain | n/a | `0x2284e9a9a45829431317dcab3aa3a24878046068` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | berachain | n/a | `0x41d81daf401a0aa7422a769243fa933f351a0d64` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | berachain | n/a | `0x428f2f93afac3f96b0de59854038c585e06165c8` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | berachain | n/a | `0x43d03031fab845065e9cefe89dd122d63f72011f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | berachain | n/a | `0x9acc60f915dfcd190d270fc92567ae71776bd320` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | berachain | n/a | `0x9e88f2990c48315dace55ffda9950fc287362109` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | berachain | n/a | `0xc61c866b6fdc36f88ec368b969c6d7cb810cafa9` | ⚠️ Unaudited |
| TreasuryVester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6747ac215daffee03a42f49febb6ab448e12acee` | ⚠️ Unaudited |
| TripleSlopeRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3c5486b85faae29b071f2a616a59ca7bf8f73682` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d8a21f2ea15269b7470c347083ee1f85e6a723b` | ⚠️ Unaudited |
| Usds | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1923dfee706a8e78157416c29cbccfde7cdf4102` | ⚠️ Unaudited |
| UsdsJoin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c0f895007ca717aa01c8693e59df1e8c3777feb` | ⚠️ Unaudited |
| VotingEscrowPendleMainchain | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f30a9d41b80ecc5b94306ab4364951ae3170210` | ⚠️ Unaudited |
| VotingEscrowPendleSidechain | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x051dcd6a80f11fe68f77fb0ebde03853fa96b1fd` | ⚠️ Unaudited |
| VotingResultBroadcaster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8daa686de90bf52225628e238b7b392fa1c4744` | ⚠️ Unaudited |
| WAVAX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7fc6d48e6e8e8b9505c171325539c651bf1d51d4` | ⚠️ Unaudited |
| WhitePaperInterestRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c159cfd11677a4f2fe4fd0278dd37a95b986069` | ⚠️ Unaudited |
| wMEMO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0da67235dd5787d67955420c84ca1cecd4e5bb3b` | ⚠️ Unaudited |
| WstETH | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251183 | `0x7f39c581f595b53c5cb19bd0b3f8da6c935e2ca0` | ⚠️ Unaudited |
| wxBTRFLY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x186e55c0bebd2f69348d94c4a27556d93c5bd36c` | ⚠️ Unaudited |
| xBTRFLY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63b03b7dc4de754582c570ad6bfe985d62843e6f` | ⚠️ Unaudited |
| XrpSwapAsset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfb288d60d3b66f9c3e231a9a39ed3f158a4269aa` | ⚠️ Unaudited |
| Zap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2c7b8e971c704371772edaf16e0db381a8d02027` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (401)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07c87cfe096c417212eab4152d365f0f7dc6fce4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13e327e91109f737c0b80205509ba62ab7d0c5aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17df69a3a30dae5ad0f3734c93ddf94dbdc898de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x199fcb871a2e89d597dbec5314fbe63580d667a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b6d3e5da9004668e14ca39d1553e9a46fe842b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c6b1ee23dd0de24cc22b8d5de50afe58a6b0a0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e647e81c70c3313bc2b838c1610edc014a0d272` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1fdf1233f85a3bae9594b0558e4ec8febe8c6720` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x246bc457768b96003349c367e42021ef47df1640` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x309d8cf8f7c3340b50ff0ef457075a3c5792203f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31fc01529419ee9623afc5b65d7d72102d116e90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3496681ef5e8ebbf01eeeebae10084343d65dbea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41fad93f225b5c1c95f2445a5d7fcb85ba46713f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251181 | `0x466ced3b33045ea986b2f306c8d0aa8067961cf8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48f91762cc4b31a17b4d64f05cd06a1029024567` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b16d95ddf1ae4fe8227ed7b7e80cf13275e61c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4dc6b6374e812e029937129a156eec6344cde8d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x529c513dde7968e19e79e38ff94d36e4c3c21eb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5583cd1ddfe6e1112b34dbb206a4d2196a1ed299` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f183210d58eba0812a2c33888786e7028b4e687` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f81b1c7182543e0db342fc2a69525888d648e60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x615de1ae8fca2dc84b1d0a4751a4768119a7c55a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x619e82186273f1f81d172972e964fbd2ad0ec8bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6231986eed646d24152f3529d815fd85c295f06c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6557a9d0b3c2c23b82a826a4e21b77a6d514a6a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6870d69723bfcbb583fc0f4dd8fd5009c9417c30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70e649eb230dbaee72303ac14fa817b81dedcf0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x737119790f6e0f85451ab200759f8efa144dcd43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7521c8c7ba7e1f650c1109c40876c5dd52f5614c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x765c7cfed02f2d9583eac8229930f3650af42c77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ccd8260faf81bf402bf3162736a31f3ca27f2d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d68b6ab094301b4b635353718b2460f2d9a5859` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x831ab3253170eced5c4eef67606cca1f6699fd68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x85f337ebc646a8952d2e4f178e6f64cd7e0e7630` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251185 | `0x888888888889758f76e7103c6cbf23abbf58f946` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ee287ff230c979be9d829f74d6d42b5a47ca3f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ff4633bf701e5fda99eedd91b90b526b23abfa9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x933fa13abc4e1532dc5de017b6673711c2f16d9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94a7432b811e29128964fba993f159928744e7c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9890065a3a83c0c6d55610571a396071b68dcb8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b528bf0639fc31ae6d698c48d830873227741f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9efdb1d70184627277a408098ec4880b9b99e3be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa081bf40a06a5885fe5d70521249e8d253dfc2f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa133fe86202e5da288ee0748fc68ca1faf69d062` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa26da78fe6c8d4ba2f1779fd36aed994a8a50bee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa660c9aaa46b696df01768e1d2d88ce2d5293778` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa78029ab5235b9a83ec45ed036042db26c6e4300` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab371ab70a498a8833170227a41ed228fa97671f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae601def4406a0e5747654e9a356a38b0cae5ddc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5e0320ceba07640e3591e14b08d4d5c18bc4dfc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbbef00df1d8800877fa27d9726e5cf0d27b2a99a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbd5dfaa2ebd70bc54bac25c9205cc4cadb036449` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbde4dfb0dbb0dd8833efb6c5bd0ce048c852c487` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc02f1c34cdde6d5b940a31b286a987e905ec5e8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc21a74c7150fed22c7ca0bf9a15bbe0ddb4977cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc93471fbc686bc0aa5fd102ad706ec180061461a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc956845c51c83b41d2705b5c9f31e86746d9af5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb6a607834632f5ee872fb0f4d9120c572455df6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc94faf235cc5d3bf4bed3a30db5984306c86abc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251187 | `0xd4f480965d2347d421f1bec7f545682e5ec2151d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd89832fbbe58727cfbd29cfff9cd0bc0f4eeedfc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251188 | `0xdc035d45d973e3ec169d2276ddab16f1e407384f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde41cb63aaaf086da91af23dc074e8997fe8aed6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe134204b53a4db2b3d9861b04214f8637ecbc8a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe2ef3b60b0b3087cf1d1179d899a7cd7a11a9fca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7c0f51637a35feb13275a46c33b24c5f23aaed5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe8a6916576832aa5504092c1cccc46e3bb9491d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea2575f82c881b223208fa53982e6e09ab55ccda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeafedac4d569ec91fa1e6e53d6fedc6dc9c60db5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb9e68204684324eb4177d239df90293818024d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xebd2f1f1536c76334ba49a5d3b86f9bebd0ac28f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4dcdfc5ca35bea5013c058122c1a230396eb4b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb0e378b3ed6d7f8b73230644d945e28fd7f7b03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc3468da89cb5bdf893242ece0324b51ea6482c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd7bda47cbeeed93c897273585f666f8d1cc8d45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe1fdbe8ec218ab89e28d5caf435d2075baf8c8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x01b269d2e685127f6ca3dfdc3494b204dd2145e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x02d632ba7f2a046817af67ef7b279080d3cab641` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0473f2bb3eebfe6c014f196835624d6db12465a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x05300c3c6d0d9d6e06165eba21a681ea124d6df6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0584e65ae8a47f5cb8e6a10ec487ab06132fd302` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x072c476cc6f75f9c1ef88f9e7c5eed69686f97f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0769179b35243a0506e890e09603c922be72cd75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x07dfe570aabed486f5577472f7f7952de425a922` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x08247547281bc215c4c1481bf4f1077eb19b1fa2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x089ec7a075afe4af4e49ff11a21a0c3b61c22dcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0a3b77599e3c313a9059ff768faee349a0972c0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0a64e8d4408f9d3ac1322fb93f4c3dd8143b0d7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0b94d3afa017e853c82676b4118500b8f9de5864` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0babedc30d786ed751ff4b68da96da4a4cab3689` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0cc47aa1252f25fd95b65f19c2fd6db33366a557` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0e1ec3666478c86ff4d5452a89250bbf9d18ad6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0f9e9622c9cb6f8ea6cf19fa26252c3c3c06e27b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0fb72b771511062c5fd1811fbdfdfeda4afaf162` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0fefca42e2dbbb046e46e0572ccfc2aa7cfb54b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x10f67276b71842a0c757d4432124096b32cb5029` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1101a719b823d1d8a9c2890d1deffa66c38f8cda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1237804f7f4b538844fa5be835f1862b57dfb337` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x132492509bc416f95fcbaba63f3d9dceecce10d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x14d458a63561ffe961544252d8eb05e606664301` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x14f28f124db1af40a3f034c611db75dea736e08a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1565398057096d4bf5b843f37279dee15e0feae4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x160bb4cba352ffbf2021ce848f37674eeac9b38f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x16c5536c1b01c8037fba75bd7b9fd08d59a1ecc0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x16f419bbca0529ecc99ff595681b822e328ed79e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1771ba12fe9427c8416e7b64ae7349f287dba954` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x179c3c9105f7f99038c3dafe89d3e24b4569d7ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x18ce97e5a240813d922c6dcf962c91257f5d8b83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x195759c3f9fb62d740dd432e7a982c5dee1298a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1a6708c0b9fb96df50c0a327be76ee4f088f0849` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1a772776921a8d6cfdb266891d69907c474c30a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1adbde469581bfd0454fc61c7e74ec2bf7330024` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1af353148f2316487b5311fcd522c037842d232c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1b2d9116606c09d6c9903eabc1bca2e6239b440c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1c4b41ba54492f551e98ed0a9a59b952a962c452` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1fcfdee3ab694032255cd5ffe24d66b6c85501ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x204e698a71bb1973823517c74be041a985eaa46e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x23eb4187580524d25ff93a3571b1969b8018f628` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2489a32844556193fb296c22597bdc158e9762a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x250a0a76bb0139d65f14500c0149d2766ea109b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x25dd4a2900ee3b16f8381349a34813d41d29d7cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x27b5e7cb8e3aa093f8fa4538cc76b3f681d2aac7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x28adbb2822601449ff4a271c0b587d726ea7a0a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x29472d511808ce925f501d25f9ee9effd2328db2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2967317938e801cab3badd9c1f3a8feea0f9bd20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x29e480d97ff2544047c7b89c9096058c834cd907` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2a834dd3e1732ee6c37c8b93b7b5b08091086401` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2aa0bec34deeb6987c118ce353d14eea6def24ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2aa5eeb740a9f873f07798e6a61ffc12ac75d2da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2cd215bc634df4962f296578a2b87a9d7a1de38b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2d181806d5dc3dd1ca29f849dcdd435b247fdafd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2d92eeaa1fe94cd41c22b3fe987d48a0b2e048eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2e3a352f4a94f8df17835d659853629b7e7975e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2ed5cda38f295a50f59974ed75a6b46269ff11bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2f4391579839c5e3bcd6d471ea4aab3de0bb5140` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x31ba32089d5474fe5b60411985c5d227d9d859ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x32044834e239f5e2444052dbeeb1a3cc416cccee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x33fa3df22bac262f72a688877e728094b6eb35c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x357211bf58a13e626eeeb2e82e1297b9ebf67b1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x37123bf78423166767948778ef3f1f9f7028cbc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x386fbff27b386738cbd16f253adf0f5f72122329` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3a0fa80d30f8164212ac547c7d3eb8a254cef572` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3ac92878ccdd55934ecf0fd49f65689cbe16b974` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3b34e169438fc65ed1c018655d04e5b0f3185ecc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3bcda00c257179d4abee0d1d94a8a9720554f1c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3c32463e25f562fbb3684125246c5b2ed30354ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3c9211212118ce5fab57676c88541841d6d7b5d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3cb560faeff708e21513b0ea7e65963f08eaad04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3ccfc1d0319c52f177f4281ac5146cffa62f8e24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3dca53bd528f5cb71ad837d6760074733ca60a63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3e612511900457c364190abf4b072a9fd001acd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3e92639d1231befffd38d887199f87b813ff864d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3eb4ec45b791c6d43b8dd5373c2e94d8996e8945` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3fe38b7b610c0acd10296fef69d9b18eb7a9eb1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3ffd8ecffb03626bd7dee699ce1921cc62185dea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x43feff8296f4e7fd914b99e51a78c65c95682414` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x444d68379832b3570503c7f0e67c54087a6890fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x45acb67c90615acbe9566c6aadc23ef418587d87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x45b2c4139d96f44667577c0d7f7a7d170b420324` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4796e1e2ae921b8408ab52c0fc9dd991d57bfaef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x47a3e9d5c87651d4074ef67a160afdb3f42cb242` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x47d99d622b25d86f4ff8925ca8db21ea47044f0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x486af39519b4dc9a7fccd318217352830e8ad9b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4a586daa5d5edcd8182339c24291fb510fa4d271` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4acc99dc595e2df9838ddcb1ec5d94fe96ae7f2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4d0b7302d7ad0b0f9efdf16caed64868ed377313` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4e931f09ee083b7abfb116889622d6f337112538` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4e9f683a27a6bdad3fc2764003759277e93696e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x52d69a3f6ed50857e57be1f0cf1914db385ea435` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5410c210c0011fe8dbd3aaef3d376e4105e4c118` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x54fe8edb139404228dd70c5fd0a06c7b46c86fb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5640b2e8724231e5e7baa53375dc63d7bbea04eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x564780a6aa44be1ca103b6c3f30e8593efbbacd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x584560e90c948c7a81b24efb08f1436205f7013c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x585e7bc75089ed111b656faa7aeb1104f5b96c15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x587b32c2a5505e61cbeb252493e1286cab1f41c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x592f70bd9ec0ce89c4b430fac4dbc020b2419f37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5b4dfdeb4f4680425e0e78d6029eb9af5afef862` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5bbfa5f49ec557eaba9427ac434f21b69113fe20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5c1204d079c9741821a3705a52db85f7537e7338` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5caaf127cda59a1e640414aaebecd2408c006e22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5cfca5b2149a20a166508b28e5fcfa65c44c6b9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5d57f62027f567855e815489d2365c7976899c7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5da155d0e75aa0e2b4c9cfc662275b95915405ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5e1e12945adc54b5e5dd01582a19223ba5a424ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5f0902b53f91b92b41f5a04c80bca3a722865095` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5f2a43eeb6d624e145f2d7efebd13cade7083ae6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5fe9ad068fb4c60c5ee173b12305803cb05ec7ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x61ecdb614646ccf28c027b2bde9fcdf602ff90e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x62387711313cc10f433b32e010a05bf768c2f037` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x627237170706db6b63362e14b8195f2df87e9f80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x647da94ae8ec35e9627df11bffad19513892cf2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x650967969025dd84a3328f30b110eed22a76f430` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x65f17eff747aeb3b14bb3712c6850c2da45d0ac7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x66b1452bb1b5e05ce08725d392a1c9a5e5f3142d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x66fa316b49ee32aab7a7f88f08e16d8e907efb63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x670968ed86ae309f552acc60cb6716b9f8198eec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6861317b2901ee29ff10ae851af2234380422aff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x68b28fe0e0f91c672dcb91e5d18ac7a95f264bff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x692782448c146806be6a3c0b801d5eab5f8e8551` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6af7e24ac12b6e6e72606746833587edafeec3a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6b516b23a260e2d904dbfa47c7e7afd04e5adbc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6b5a37d2096f4f8445423f2e88bc6cc76093a86b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6baa882234924aa48d6c2a3d1d46d0ed723a4db8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6c6f89bce78d4e083a7ba71574594aeaffee6459` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6caf4068adc5766447205c9e51488586219d51c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6d34318aaeb5a2d404c0c176cc7db69865368edb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6e85fc67ef36a674f32c862579a4dea8ec95572a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6ee70ba71c6e95893b34b78d20906858fd031ec7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x703473623885ffd8357527c61ec14a03a6b96460` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x70466e105170d8bad56ba390a48bac649fad27cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x70a5e4384a39775918eb430dede38b0121be307b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x70f7d4bc2725288a72ed3ca85a167c70bb5ac7da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x737fdfb2365973474befa244953954c5b6fddf34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x73cd077010c53bbc140b70b8ddb9c832db6e9ca0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x763dc8d725637571ea4cb85b6de3a1f568e64864` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x76eaa100e46475d69d22d9f42810ba4136f63008` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x770b6e8a1b39f1a3ea06069cbd6d1e0b5db264f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x771ad65bf2837c89a1cc0a0fc601d9de7f217b52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x77533a0b34cd9aa135ebe795dc40666ca295c16d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x77b995ff2bd2b5287f940bc379fbe214506403e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7a17fb34ce43ff7e5ef0a74a828ffed459bf3421` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7a609a474ac272f552b19defecd440210fdc490e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7aca03e01e170107d01381a13281e4517f0a9e53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7b8eb4d16e52ae37449c365b5d6d6b288356d1c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7d0a3006bafd1df0ac2870d4cf3c8ecb22311326` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7d9d90a915a74e4acaea1c0de4efa07fd9e87740` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7dcdb863215656e34470690432058b03d7ec03b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7e4d8a05e10f6cb3d19822ac7742ec034a31c1d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7e94999005976e0715b3bac0ad2f70aa8822063f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7ef4e0a14f81f4964dbcb65ad915ce2361b975e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7fa4538f2cd08d4be4172351544cec6206bcb6fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x810998c1014b877cde1370bf75e5defa0fcbf66d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x81516ec24d6d6b9952f2470002bbde4e5c23f592` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x815cbe0e248d2d378c5e9c141b2ba9adaba2c9ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8165aa29e883892d4b84775ec8abd0b6cfaec225` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x81a00330a5d7a1d4e73570a3959a7e2ad998237e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x81b53932b3fa037a7d1d649a3c7fc0baaa3d9136` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x82ea6f7bf853a199ab921137b119b6d41f08038e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x835866d37afb8cb8f8334dccdaf66cf01832ff5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x838549b9608cf3aeb98504d7ad213525a2aa34cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x83c27aff5aa000e61adafa99ab8c482da97f5ab8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x83c6720e8961e948dd3ce7815cae4f0fa7c6ea8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x846a4c2e80da03e4d8aef07a9503ecf854bfff23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x861726bfe27931a4e22a7277bde6cb8432b65856` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x861f247b04f2393f49ba57b60c63174c3e11893b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8637eb17e3f5553c9890db55f4d104e4b908636d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x86884879b4213187e19fc2cd191133b86b43cc3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x872f15955dbdc1055405305558bf89ab3af8030f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x884d2e9ff9e36b3e5ce293f48e959b39ab9d0861` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x88e02662c1c22a256c5ac9be93bfe2c4ff5dda60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x895a539c88ca8a360ff0b085fd9c054ca61c02e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x89a415b3d20098e6a6c8f7a59001c67bd3129821` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x89ecdda0d98b796e1bb93a578e0559509a033f00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8b33e813e6757f5c1a5e662333463c2ab23d99b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8b58a5a6e8651d6ade1deec04e89131fae662afc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8b650e26404ac6837539ca96812f0123601e4448` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8c90b3c9b5d27a375ab694d5a456a44b54f1c369` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8cc49baf5211dd4fbc2e7641e7d17a4ca3d8a98a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8d5b529acbf96e4045ee019ecc0472ab2cae4a77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x90bbc3995f473d64f973ab8066e77b98a71f6fce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x927be1425f2c3599ced2146459f6491ee450848b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x929f5cab61dfec79a5431a7734a68d714c4633fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x931b5dffebf156b3c295f0c50bbad494d35989ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x948cf23e1593d6b41d8de8b79e603e4734566e8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x952d827765b0b65465e3ab280b0d42819656d57e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x96a6b2d888ec1dec1db4495680c7596616c20718` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9711563c33968d063fe0a41f809c4834fa997c50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x97e3a6446e9b0d9313c30cf8ddcf65659a213612` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x99727c80726332b3b59ff5158f106c6155f4e01e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x997fba28c75747417571c5f3fe50015aac2bb073` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x99f873a8e3e21ccf3e9b691f02fc86a6a2ec2bd3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9ada5ce16cdbd76afdd28b891cd0a1a9f659dad6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9b711b3a4ea4390c77c9438852086b3d5af3bc5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9c1e133e9c58ec6dceabf5e428bb162353da9e8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9c5b9ea52e0270a6bdc4d0daf9224766000e135d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9e6cab0d18291c56e7e1d6e92c268bdc75c05b09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9e8b9ec2454bcab6128231d9fd405e864acd3cf9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9eb54aed8426cbcbb2d65ea74c94aadadf793200` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9f509ae4e18d5a14afb51e16519c2936915b896c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9f8c00dce50f2cc5f4f9bad0a79cdd1023b7c983` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9fcb6badfd73112c08e1cd607bbc09246263fa1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa1246c3d11049e4d3fdb319455d1c721a65f83fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa2008a8c6a0f8f5cc6ca59b38d5dd90455a840d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa3e0ca7e35f47f6547c0c2d8f005312c2188e70f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa49facb26236aa5842b0817f634c482de9a38f53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa4e65d6ea294e3f4847651921adfd4e93f7c55fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa526c8919f190ae0b93049aa1bdc1264d4419d97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa60ef5447008adaf6de56320e9dff507b828b9d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa71a7cbfb554519c5a8d2f9d0043ed0ff22959fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa9539b2ea79b35d2efe5b22d9dbae2459fd80838` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xab74bc51c94b0f4918df448e17d0bdf3528d5a8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaeee314a3b0d88439b77fca9f125bbb66baaf61c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaf2c034c764d53005cc6cbc092518112cbd652bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xafb2aa50d458a5611a8e212f094871a992c7fe8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb06b4639b93863fecc3993eb0d6bf9779716bce3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb0badfa50aabf4eba331117c1a5c94b7c1dc6388` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb2bb1e77fbafbe7b7295390ce66aa75dff7e5e8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb2d98a914c471ef2736e6875503f84bcae191cf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb31a198f6fc551b3cb1262f4cec863f7240dfec0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb3c6772f341ad234fa41f8c4f981cf4489dfa6e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb3d05b9db17fd6308b85875ad7344c1c4fb8a30e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb41bb502d214499b1637d7f1c398a00df081714b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb5a917ed59db899f26ce05cc75e6bc16f927f800` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb7b46f62b924c857ef49fadc73e57fc6f0693e26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb864ba8d53a87472d6eab93ebae58c65023d274e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb9dc5f2119c7204e123f9c2bb3be91f72ecacf74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xba755f827e09ce89dc3d74f4e6f10786235c8170` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbaf1a2e7d8525c3a75a51067550ec6154a8cb510` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbb09ac1c984b9d93104cedb21642cc15d09bfec4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbb28e074c1448c92b1403ba3bd4d6905e20a7ad0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbb83b6ecdeff084d7cd0a6ad96c3e7483672d204` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbb95aa2089a3494e466d3cbe6d6c21eeefd7b337` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbc05fb8b47f6d574672a70eee04d73c647ac21e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbd3938c97fe5946f44ce105850820c99bb7cf506` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbf70239349cd43598f7587a093232d07c5d0aa78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbfdbe35168953c9d29bdf9a0043f902f233c76e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc13b1c927565c5af8fcaf9ef7387172c447f6796` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc146783a59807154f92084f9243eb139d58da696` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc17f9953c9cb1ecfacbed9c1c9d2e6f959f9a47a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc22f01ddc8010ee05574028528614634684ec29e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc356607e2ec30884bb0f84033c4d81419d2350bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc3e997334527e6f9fcefc5606e3a34f47b2b3429` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc436f5bc8a8bd9c9e240a2a83d44705ec87a9d55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc6001b0e628c967af6638f7538791ab3c4669249` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc63085dd11fc473e6db8eba20af191885d9158e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc698d4fa211bdba3e48fe880efe371372774673c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc7868fd263a08f26a5683bdbaef12fcf508a2cf4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc7d35cdbc83cb4b90027a8036193f989c1395be5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc988c170d0e38197dc634a45bf00169c7aa7ca19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc9e5999b8e75c3feb117f6f73e664b9f3c8ca65c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc9fb2f508b2ab47826d6ccf2f965b21b24ba58d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcbaf300379da70be2f7964f6076610b633c15965` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcd85feb8efc260a6648d1d6190e98bbb087348ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcdac336a4839090a091b0e7a9f8938f3a730fbeb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xce095a9657a02025081e0607c8d8b081c76a75ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xce63eca0c8a2084c1baece7737db88f10c412c5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcf62b6e1c54b69e59cff552cfff247671594429b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd0788af7a613b81f437a51b96594a6387c7329b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd09c0c0c15f9e1fd8b7b2a6dc022a6bacd615a4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd0c23f8a3777d96e7561b0b5c5ce8b5afc0c2fa1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd0f02b1a6a123a996fcc0bc49ae0218924b73464` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd12cf5515a1acb84967980fcfada2832851e3075` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd19dacf775f9cdce4926c0467e3add92ca9c9c04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd1bb834a4291db09d71e4436ef3bda343f9fbe3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd2d80963dd7e951e6c03497cb1e6f8719d9ccb2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd38a19100530b99c3b84cca971dfd96bd557aa91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd4016bd5ebf2a46c7923348ab47ef8531a6aab34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd555c9012e0a150de7932370d56d6b6d6e4ebccd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd5889758bb9a661482f9e2cced35ce1057081e64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd603663bf9f8e3709445492112a9271248fa5360` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd7402a0899f3a6c1e62b0993e134d4cb8e834685` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd78ded803b28a5a9c860c2cc7a4d84f611aa4ef8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd7ae651985a871c1bc254748c40ecc733110bc2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd7c24697963cb02d6e63130812970cbdd08c3ed5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd915fdb10530ef2a8337b4b0bb33f1b0bc015531` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdad1d732e319fa87fe54afb10f229ae78b881ac3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdc0730f8fc5f0efa1c304716a50d0a96ce4a7c62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdc0d421bef747406bb5c947dd75e7fda5ea187a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdc13687554205e5b89ac783db14bb5bba4a1edac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdc3b37b5f0fe5d3f8b8701a3f8d81a02ee8a1e1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xddf06d89c908bc38e03067d65408d632fda4fd9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xde8cb3a7084e5bb6acc39afe8d0e67825379d652` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdf1339ef77ba1ebd33cbe0d83b289af4c0ef8fe7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdf781bb633ab9d0041877f169ba47f07ba242aa4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe194c4c5ac32a3c9ffdb358d9bfd523a0b6d1568` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe2ecc226fd2d5cead96f3f9f00efae9fafe75eb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe34309613b061545d42c4160ec4d64240b114482` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe35e9cd716d9b87ed4bc2bb7ee8249aaee9a386f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe59bb0090de7bdb1198fec7018134691f404d0d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe5ba4d94be0480a9dd21e38dfad5e9e408cd298b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe5cddafd0f7af3deaf4bd213bbaee7a5927ab7e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe633370bd7b842425f95051b24f899223425a37d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe6ffd92b9f77fbf5bfec0f3d9c9d027c4cf3ba6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe72438e508039e94250756c69c3e6b520e4d3f99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe734779ca7a5eca71bf87af3938b60b22f628cd3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe8a191026e71c303b0f40f15be93403f7d529707` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xea347ef58dfb129035dd40d6f88b453400d6d0c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xea5e11c8b5ae79d139da1c9839a961ea70cbbf51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xeb1f569271b2997779e11c5df6f457753d6e0b55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xeb41c98513ff3f975016b26e16cbf26e2f1b1df8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xebea851d28722e53aacdc831d2894e25f460e62e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xec8184390ff917370d700c10ea3c85d25fdd7d1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xed6aaf91a2b084bd594dbd1245be3691f9f637ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xeed14f39a6927404c31a08def1ff22bc0d54847c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf19c35991d1c2b961e5bce260095f34a55ecb452` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf2eb595f140d86fe7631ae2ed711f4e844734279` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf47b8c42664ef345f0be5e1c2dbfeea027d61dc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf65a0817d7c5b78c97b4265576afbd9535503d42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf805e22c81ef330967eec52f7edb0c6b31fd5ccf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf88d8e5803cde818b46a013a7d2845cf3550317c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf975aa561812cb957aa29c8dfac2c2494868ecbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfa4329691859e8f3a811b039e9e747b8d76abf9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfa4ceb42b72f0c5e9cdedf68c006bdee5d0a1846` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfb0388daf4004d34d5a3209e1e5dd8c96a2a6d9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfb058632c903ef564ba9be42da94e818691a3fe9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfb3bfed48399f5ea1c77e35549c316a5761f830a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfc22e8fa703c557ce2224524824a0784fed56a25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfc2f38445be02504df62753216fd2a4566747bbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfdf984af7a4cd6cc5a4fa703240cf0ff4b1b0447` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfe60eec35e3c4aad1e69f10957ad0a7d3cfc6cea` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 398
- Live contracts: 0
- Unknown liveness contracts: 398
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=398

Showing first 200 of 398 contracts. The complete deployer expansion list is in `brief.json`.

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x07c87cfe096c417212eab4152d365f0f7dc6fce4` | non_address_book | unknown | unknown | unverified | n/a | `0x196e6d50df6289e1f82838e84774b2b0c8f4af62` |
| unverified unclassified | UnnamedContract<br>`0x13e327e91109f737c0b80205509ba62ab7d0c5aa` | non_address_book | unknown | unknown | unverified | n/a | `0x196e6d50df6289e1f82838e84774b2b0c8f4af62` |
| unverified unclassified | UnnamedContract<br>`0x17df69a3a30dae5ad0f3734c93ddf94dbdc898de` | non_address_book | unknown | unknown | unverified | n/a | `0x196e6d50df6289e1f82838e84774b2b0c8f4af62` |
| unverified unclassified | UnnamedContract<br>`0x199fcb871a2e89d597dbec5314fbe63580d667a8` | non_address_book | unknown | unknown | unverified | n/a | `0x20b92862dcb9976e0aa11fae766343b7317ab349` |
| unverified unclassified | UnnamedContract<br>`0x1b6d3e5da9004668e14ca39d1553e9a46fe842b3` | non_address_book | unknown | unknown | unverified | n/a | `0x196e6d50df6289e1f82838e84774b2b0c8f4af62` |
| unverified unclassified | UnnamedContract<br>`0x1c6b1ee23dd0de24cc22b8d5de50afe58a6b0a0b` | non_address_book | unknown | unknown | unverified | n/a | `0x196e6d50df6289e1f82838e84774b2b0c8f4af62` |
| unverified unclassified | UnnamedContract<br>`0x1e647e81c70c3313bc2b838c1610edc014a0d272` | non_address_book | unknown | unknown | unverified | n/a | `0x196e6d50df6289e1f82838e84774b2b0c8f4af62` |
| unverified unclassified | UnnamedContract<br>`0x1fdf1233f85a3bae9594b0558e4ec8febe8c6720` | non_address_book | unknown | unknown | unverified | n/a | `0x20b92862dcb9976e0aa11fae766343b7317ab349` |
| unverified unclassified | UnnamedContract<br>`0x246bc457768b96003349c367e42021ef47df1640` | non_address_book | unknown | unknown | unverified | n/a | `0x196e6d50df6289e1f82838e84774b2b0c8f4af62` |
| unverified unclassified | UnnamedContract<br>`0x309d8cf8f7c3340b50ff0ef457075a3c5792203f` | non_address_book | unknown | unknown | unverified | n/a | `0x196e6d50df6289e1f82838e84774b2b0c8f4af62` |
| unverified unclassified | UnnamedContract<br>`0x31fc01529419ee9623afc5b65d7d72102d116e90` | non_address_book | unknown | unknown | unverified | n/a | `0x196e6d50df6289e1f82838e84774b2b0c8f4af62` |
| unverified unclassified | UnnamedContract<br>`0x3496681ef5e8ebbf01eeeebae10084343d65dbea` | non_address_book | unknown | unknown | unverified | n/a | `0x20b92862dcb9976e0aa11fae766343b7317ab349` |
| unverified unclassified | UnnamedContract<br>`0x48f91762cc4b31a17b4d64f05cd06a1029024567` | non_address_book | unknown | unknown | unverified | n/a | `0x20b92862dcb9976e0aa11fae766343b7317ab349` |
| unverified unclassified | UnnamedContract<br>`0x4b16d95ddf1ae4fe8227ed7b7e80cf13275e61c9` | non_address_book | unknown | unknown | unverified | n/a | `0x20b92862dcb9976e0aa11fae766343b7317ab349` |
| unverified unclassified | UnnamedContract<br>`0x4dc6b6374e812e029937129a156eec6344cde8d1` | non_address_book | unknown | unknown | unverified | n/a | `0x196e6d50df6289e1f82838e84774b2b0c8f4af62` |
| unverified unclassified | UnnamedContract<br>`0x529c513dde7968e19e79e38ff94d36e4c3c21eb7` | non_address_book | unknown | unknown | unverified | n/a | `0x196e6d50df6289e1f82838e84774b2b0c8f4af62` |
| unverified unclassified | UnnamedContract<br>`0x5583cd1ddfe6e1112b34dbb206a4d2196a1ed299` | non_address_book | unknown | unknown | unverified | n/a | `0x196e6d50df6289e1f82838e84774b2b0c8f4af62` |
| unverified unclassified | UnnamedContract<br>`0x5f183210d58eba0812a2c33888786e7028b4e687` | non_address_book | unknown | unknown | unverified | n/a | `0x196e6d50df6289e1f82838e84774b2b0c8f4af62` |
| unverified unclassified | UnnamedContract<br>`0x5f81b1c7182543e0db342fc2a69525888d648e60` | non_address_book | unknown | unknown | unverified | n/a | `0xe7ad7d90639a565fe3a6f68a41ad0b095f631f39` |
| unverified unclassified | UnnamedContract<br>`0x615de1ae8fca2dc84b1d0a4751a4768119a7c55a` | non_address_book | unknown | unknown | unverified | n/a | `0x196e6d50df6289e1f82838e84774b2b0c8f4af62` |
| unverified unclassified | UnnamedContract<br>`0x619e82186273f1f81d172972e964fbd2ad0ec8bb` | non_address_book | unknown | unknown | unverified | n/a | `0x196e6d50df6289e1f82838e84774b2b0c8f4af62` |
| unverified unclassified | UnnamedContract<br>`0x6231986eed646d24152f3529d815fd85c295f06c` | non_address_book | unknown | unknown | unverified | n/a | `0x196e6d50df6289e1f82838e84774b2b0c8f4af62` |
| unverified unclassified | UnnamedContract<br>`0x6557a9d0b3c2c23b82a826a4e21b77a6d514a6a2` | non_address_book | unknown | unknown | unverified | n/a | `0x196e6d50df6289e1f82838e84774b2b0c8f4af62` |
| unverified unclassified | UnnamedContract<br>`0x6870d69723bfcbb583fc0f4dd8fd5009c9417c30` | non_address_book | unknown | unknown | unverified | n/a | `0x20b92862dcb9976e0aa11fae766343b7317ab349` |
| unverified unclassified | UnnamedContract<br>`0x70e649eb230dbaee72303ac14fa817b81dedcf0b` | non_address_book | unknown | unknown | unverified | n/a | `0x196e6d50df6289e1f82838e84774b2b0c8f4af62` |
| unverified unclassified | UnnamedContract<br>`0x737119790f6e0f85451ab200759f8efa144dcd43` | non_address_book | unknown | unknown | unverified | n/a | `0x20b92862dcb9976e0aa11fae766343b7317ab349` |
| unverified unclassified | UnnamedContract<br>`0x7521c8c7ba7e1f650c1109c40876c5dd52f5614c` | non_address_book | unknown | unknown | unverified | n/a | `0x20b92862dcb9976e0aa11fae766343b7317ab349` |
| unverified unclassified | UnnamedContract<br>`0x765c7cfed02f2d9583eac8229930f3650af42c77` | non_address_book | unknown | unknown | unverified | n/a | `0xe7ad7d90639a565fe3a6f68a41ad0b095f631f39` |
| unverified unclassified | UnnamedContract<br>`0x7ccd8260faf81bf402bf3162736a31f3ca27f2d5` | non_address_book | unknown | unknown | unverified | n/a | `0x196e6d50df6289e1f82838e84774b2b0c8f4af62` |
| unverified unclassified | UnnamedContract<br>`0x7d68b6ab094301b4b635353718b2460f2d9a5859` | non_address_book | unknown | unknown | unverified | n/a | `0x196e6d50df6289e1f82838e84774b2b0c8f4af62` |
| unverified unclassified | UnnamedContract<br>`0x831ab3253170eced5c4eef67606cca1f6699fd68` | non_address_book | unknown | unknown | unverified | n/a | `0x196e6d50df6289e1f82838e84774b2b0c8f4af62` |
| unverified unclassified | UnnamedContract<br>`0x85f337ebc646a8952d2e4f178e6f64cd7e0e7630` | non_address_book | unknown | unknown | unverified | n/a | `0x196e6d50df6289e1f82838e84774b2b0c8f4af62` |
| unverified unclassified | UnnamedContract<br>`0x8ee287ff230c979be9d829f74d6d42b5a47ca3f8` | non_address_book | unknown | unknown | unverified | n/a | `0x196e6d50df6289e1f82838e84774b2b0c8f4af62` |
| unverified unclassified | UnnamedContract<br>`0x8ff4633bf701e5fda99eedd91b90b526b23abfa9` | non_address_book | unknown | unknown | unverified | n/a | `0x196e6d50df6289e1f82838e84774b2b0c8f4af62` |
| unverified unclassified | UnnamedContract<br>`0x933fa13abc4e1532dc5de017b6673711c2f16d9a` | non_address_book | unknown | unknown | unverified | n/a | `0x20b92862dcb9976e0aa11fae766343b7317ab349` |
| unverified unclassified | UnnamedContract<br>`0x94a7432b811e29128964fba993f159928744e7c7` | non_address_book | unknown | unknown | unverified | n/a | `0x196e6d50df6289e1f82838e84774b2b0c8f4af62` |
| unverified unclassified | UnnamedContract<br>`0x9890065a3a83c0c6d55610571a396071b68dcb8c` | non_address_book | unknown | unknown | unverified | n/a | `0x196e6d50df6289e1f82838e84774b2b0c8f4af62` |
| unverified unclassified | UnnamedContract<br>`0x9b528bf0639fc31ae6d698c48d830873227741f1` | non_address_book | unknown | unknown | unverified | n/a | `0x196e6d50df6289e1f82838e84774b2b0c8f4af62` |
| unverified unclassified | UnnamedContract<br>`0x9efdb1d70184627277a408098ec4880b9b99e3be` | non_address_book | unknown | unknown | unverified | n/a | `0x196e6d50df6289e1f82838e84774b2b0c8f4af62` |
| unverified unclassified | UnnamedContract<br>`0xa081bf40a06a5885fe5d70521249e8d253dfc2f3` | non_address_book | unknown | unknown | unverified | n/a | `0x196e6d50df6289e1f82838e84774b2b0c8f4af62` |
| unverified unclassified | UnnamedContract<br>`0xa133fe86202e5da288ee0748fc68ca1faf69d062` | non_address_book | unknown | unknown | unverified | n/a | `0x196e6d50df6289e1f82838e84774b2b0c8f4af62` |
| unverified unclassified | UnnamedContract<br>`0xa26da78fe6c8d4ba2f1779fd36aed994a8a50bee` | non_address_book | unknown | unknown | unverified | n/a | `0x196e6d50df6289e1f82838e84774b2b0c8f4af62` |
| unverified unclassified | UnnamedContract<br>`0xa660c9aaa46b696df01768e1d2d88ce2d5293778` | non_address_book | unknown | unknown | unverified | n/a | `0x196e6d50df6289e1f82838e84774b2b0c8f4af62` |
| unverified unclassified | UnnamedContract<br>`0xa78029ab5235b9a83ec45ed036042db26c6e4300` | non_address_book | unknown | unknown | unverified | n/a | `0x196e6d50df6289e1f82838e84774b2b0c8f4af62` |
| unverified unclassified | UnnamedContract<br>`0xab371ab70a498a8833170227a41ed228fa97671f` | non_address_book | unknown | unknown | unverified | n/a | `0x196e6d50df6289e1f82838e84774b2b0c8f4af62` |
| unverified unclassified | UnnamedContract<br>`0xae601def4406a0e5747654e9a356a38b0cae5ddc` | non_address_book | unknown | unknown | unverified | n/a | `0x20b92862dcb9976e0aa11fae766343b7317ab349` |
| unverified unclassified | UnnamedContract<br>`0xb5e0320ceba07640e3591e14b08d4d5c18bc4dfc` | non_address_book | unknown | unknown | unverified | n/a | `0x196e6d50df6289e1f82838e84774b2b0c8f4af62` |
| unverified unclassified | UnnamedContract<br>`0xbbef00df1d8800877fa27d9726e5cf0d27b2a99a` | non_address_book | unknown | unknown | unverified | n/a | `0x196e6d50df6289e1f82838e84774b2b0c8f4af62` |
| unverified unclassified | UnnamedContract<br>`0xbd5dfaa2ebd70bc54bac25c9205cc4cadb036449` | non_address_book | unknown | unknown | unverified | n/a | `0x196e6d50df6289e1f82838e84774b2b0c8f4af62` |
| unverified unclassified | UnnamedContract<br>`0xbde4dfb0dbb0dd8833efb6c5bd0ce048c852c487` | non_address_book | unknown | unknown | unverified | n/a | `0x20b92862dcb9976e0aa11fae766343b7317ab349` |
| unverified unclassified | UnnamedContract<br>`0xc02f1c34cdde6d5b940a31b286a987e905ec5e8d` | non_address_book | unknown | unknown | unverified | n/a | `0x196e6d50df6289e1f82838e84774b2b0c8f4af62` |
| unverified unclassified | UnnamedContract<br>`0xc21a74c7150fed22c7ca0bf9a15bbe0ddb4977cc` | non_address_book | unknown | unknown | unverified | n/a | `0x196e6d50df6289e1f82838e84774b2b0c8f4af62` |
| unverified unclassified | UnnamedContract<br>`0xc93471fbc686bc0aa5fd102ad706ec180061461a` | non_address_book | unknown | unknown | unverified | n/a | `0x196e6d50df6289e1f82838e84774b2b0c8f4af62` |
| unverified unclassified | UnnamedContract<br>`0xc956845c51c83b41d2705b5c9f31e86746d9af5b` | non_address_book | unknown | unknown | unverified | n/a | `0x196e6d50df6289e1f82838e84774b2b0c8f4af62` |
| unverified unclassified | UnnamedContract<br>`0xcb6a607834632f5ee872fb0f4d9120c572455df6` | non_address_book | unknown | unknown | unverified | n/a | `0x20b92862dcb9976e0aa11fae766343b7317ab349` |
| unverified unclassified | UnnamedContract<br>`0xcc94faf235cc5d3bf4bed3a30db5984306c86abc` | non_address_book | unknown | unknown | unverified | n/a | `0x20b92862dcb9976e0aa11fae766343b7317ab349` |
| unverified unclassified | UnnamedContract<br>`0xd89832fbbe58727cfbd29cfff9cd0bc0f4eeedfc` | non_address_book | unknown | unknown | unverified | n/a | `0x196e6d50df6289e1f82838e84774b2b0c8f4af62` |
| unverified unclassified | UnnamedContract<br>`0xde41cb63aaaf086da91af23dc074e8997fe8aed6` | non_address_book | unknown | unknown | unverified | n/a | `0x20b92862dcb9976e0aa11fae766343b7317ab349` |
| unverified unclassified | UnnamedContract<br>`0xe134204b53a4db2b3d9861b04214f8637ecbc8a8` | non_address_book | unknown | unknown | unverified | n/a | `0x20b92862dcb9976e0aa11fae766343b7317ab349` |
| unverified unclassified | UnnamedContract<br>`0xe2ef3b60b0b3087cf1d1179d899a7cd7a11a9fca` | non_address_book | unknown | unknown | unverified | n/a | `0x20b92862dcb9976e0aa11fae766343b7317ab349` |
| unverified unclassified | UnnamedContract<br>`0xe7c0f51637a35feb13275a46c33b24c5f23aaed5` | non_address_book | unknown | unknown | unverified | n/a | `0x196e6d50df6289e1f82838e84774b2b0c8f4af62` |
| unverified unclassified | UnnamedContract<br>`0xe8a6916576832aa5504092c1cccc46e3bb9491d6` | non_address_book | unknown | unknown | unverified | n/a | `0x196e6d50df6289e1f82838e84774b2b0c8f4af62` |
| unverified unclassified | UnnamedContract<br>`0xea2575f82c881b223208fa53982e6e09ab55ccda` | non_address_book | unknown | unknown | unverified | n/a | `0x196e6d50df6289e1f82838e84774b2b0c8f4af62` |
| unverified unclassified | UnnamedContract<br>`0xeafedac4d569ec91fa1e6e53d6fedc6dc9c60db5` | non_address_book | unknown | unknown | unverified | n/a | `0x196e6d50df6289e1f82838e84774b2b0c8f4af62` |
| unverified unclassified | UnnamedContract<br>`0xeb9e68204684324eb4177d239df90293818024d9` | non_address_book | unknown | unknown | unverified | n/a | `0x196e6d50df6289e1f82838e84774b2b0c8f4af62` |
| unverified unclassified | UnnamedContract<br>`0xebd2f1f1536c76334ba49a5d3b86f9bebd0ac28f` | non_address_book | unknown | unknown | unverified | n/a | `0x196e6d50df6289e1f82838e84774b2b0c8f4af62` |
| unverified unclassified | UnnamedContract<br>`0xf4dcdfc5ca35bea5013c058122c1a230396eb4b2` | non_address_book | unknown | unknown | unverified | n/a | `0x196e6d50df6289e1f82838e84774b2b0c8f4af62` |
| unverified unclassified | UnnamedContract<br>`0xfb0e378b3ed6d7f8b73230644d945e28fd7f7b03` | non_address_book | unknown | unknown | unverified | n/a | `0x196e6d50df6289e1f82838e84774b2b0c8f4af62` |
| unverified unclassified | UnnamedContract<br>`0xfc3468da89cb5bdf893242ece0324b51ea6482c6` | non_address_book | unknown | unknown | unverified | n/a | `0x196e6d50df6289e1f82838e84774b2b0c8f4af62` |
| unverified unclassified | UnnamedContract<br>`0xfd7bda47cbeeed93c897273585f666f8d1cc8d45` | non_address_book | unknown | unknown | unverified | n/a | `0x20b92862dcb9976e0aa11fae766343b7317ab349` |
| unverified unclassified | UnnamedContract<br>`0xfe1fdbe8ec218ab89e28d5caf435d2075baf8c8a` | non_address_book | unknown | unknown | unverified | n/a | `0x196e6d50df6289e1f82838e84774b2b0c8f4af62` |
| unverified unclassified | UnnamedContract<br>`0x01b269d2e685127f6ca3dfdc3494b204dd2145e3` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x02d632ba7f2a046817af67ef7b279080d3cab641` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x0473f2bb3eebfe6c014f196835624d6db12465a9` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x05300c3c6d0d9d6e06165eba21a681ea124d6df6` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x0584e65ae8a47f5cb8e6a10ec487ab06132fd302` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x072c476cc6f75f9c1ef88f9e7c5eed69686f97f6` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x0769179b35243a0506e890e09603c922be72cd75` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x07dfe570aabed486f5577472f7f7952de425a922` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x08247547281bc215c4c1481bf4f1077eb19b1fa2` | non_address_book | unknown | unknown | unverified | n/a | `0x5423819b3b5bb38b0e9e9e59f22f9034e2d8819b` |
| unverified unclassified | UnnamedContract<br>`0x089ec7a075afe4af4e49ff11a21a0c3b61c22dcc` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x0a3b77599e3c313a9059ff768faee349a0972c0e` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x0a64e8d4408f9d3ac1322fb93f4c3dd8143b0d7b` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x0b94d3afa017e853c82676b4118500b8f9de5864` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x0babedc30d786ed751ff4b68da96da4a4cab3689` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x0cc47aa1252f25fd95b65f19c2fd6db33366a557` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x0e1ec3666478c86ff4d5452a89250bbf9d18ad6e` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x0f9e9622c9cb6f8ea6cf19fa26252c3c3c06e27b` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x0fb72b771511062c5fd1811fbdfdfeda4afaf162` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x0fefca42e2dbbb046e46e0572ccfc2aa7cfb54b0` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x10f67276b71842a0c757d4432124096b32cb5029` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x1101a719b823d1d8a9c2890d1deffa66c38f8cda` | non_address_book | unknown | unknown | unverified | n/a | `0x5423819b3b5bb38b0e9e9e59f22f9034e2d8819b` |
| unverified unclassified | UnnamedContract<br>`0x1237804f7f4b538844fa5be835f1862b57dfb337` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x132492509bc416f95fcbaba63f3d9dceecce10d3` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x14d458a63561ffe961544252d8eb05e606664301` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x14f28f124db1af40a3f034c611db75dea736e08a` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x1565398057096d4bf5b843f37279dee15e0feae4` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x160bb4cba352ffbf2021ce848f37674eeac9b38f` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x16c5536c1b01c8037fba75bd7b9fd08d59a1ecc0` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x16f419bbca0529ecc99ff595681b822e328ed79e` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x1771ba12fe9427c8416e7b64ae7349f287dba954` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x179c3c9105f7f99038c3dafe89d3e24b4569d7ae` | non_address_book | unknown | unknown | unverified | n/a | `0x5423819b3b5bb38b0e9e9e59f22f9034e2d8819b` |
| unverified unclassified | UnnamedContract<br>`0x18ce97e5a240813d922c6dcf962c91257f5d8b83` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x195759c3f9fb62d740dd432e7a982c5dee1298a5` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x1a6708c0b9fb96df50c0a327be76ee4f088f0849` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x1a772776921a8d6cfdb266891d69907c474c30a9` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x1adbde469581bfd0454fc61c7e74ec2bf7330024` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x1af353148f2316487b5311fcd522c037842d232c` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x1b2d9116606c09d6c9903eabc1bca2e6239b440c` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x1c4b41ba54492f551e98ed0a9a59b952a962c452` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x1fcfdee3ab694032255cd5ffe24d66b6c85501ad` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x204e698a71bb1973823517c74be041a985eaa46e` | non_address_book | unknown | unknown | unverified | n/a | `0x1b6a7576f09d005f988aea5ba16d1a72d24923b9` |
| unverified unclassified | UnnamedContract<br>`0x23eb4187580524d25ff93a3571b1969b8018f628` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x2489a32844556193fb296c22597bdc158e9762a0` | non_address_book | unknown | unknown | unverified | n/a | `0x1b6a7576f09d005f988aea5ba16d1a72d24923b9` |
| unverified unclassified | UnnamedContract<br>`0x250a0a76bb0139d65f14500c0149d2766ea109b2` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x25dd4a2900ee3b16f8381349a34813d41d29d7cc` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x27b5e7cb8e3aa093f8fa4538cc76b3f681d2aac7` | non_address_book | unknown | unknown | unverified | n/a | `0x1b6a7576f09d005f988aea5ba16d1a72d24923b9` |
| unverified unclassified | UnnamedContract<br>`0x28adbb2822601449ff4a271c0b587d726ea7a0a3` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x29472d511808ce925f501d25f9ee9effd2328db2` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x2967317938e801cab3badd9c1f3a8feea0f9bd20` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x29e480d97ff2544047c7b89c9096058c834cd907` | non_address_book | unknown | unknown | unverified | n/a | `0x5423819b3b5bb38b0e9e9e59f22f9034e2d8819b` |
| unverified unclassified | UnnamedContract<br>`0x2a834dd3e1732ee6c37c8b93b7b5b08091086401` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x2aa0bec34deeb6987c118ce353d14eea6def24ce` | non_address_book | unknown | unknown | unverified | n/a | `0x1b6a7576f09d005f988aea5ba16d1a72d24923b9` |
| unverified unclassified | UnnamedContract<br>`0x2aa5eeb740a9f873f07798e6a61ffc12ac75d2da` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x2cd215bc634df4962f296578a2b87a9d7a1de38b` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x2d181806d5dc3dd1ca29f849dcdd435b247fdafd` | non_address_book | unknown | unknown | unverified | n/a | `0x1b6a7576f09d005f988aea5ba16d1a72d24923b9` |
| unverified unclassified | UnnamedContract<br>`0x2d92eeaa1fe94cd41c22b3fe987d48a0b2e048eb` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x2e3a352f4a94f8df17835d659853629b7e7975e2` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x2ed5cda38f295a50f59974ed75a6b46269ff11bd` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x2f4391579839c5e3bcd6d471ea4aab3de0bb5140` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x31ba32089d5474fe5b60411985c5d227d9d859ce` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x32044834e239f5e2444052dbeeb1a3cc416cccee` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x33fa3df22bac262f72a688877e728094b6eb35c2` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x357211bf58a13e626eeeb2e82e1297b9ebf67b1c` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x37123bf78423166767948778ef3f1f9f7028cbc9` | non_address_book | unknown | unknown | unverified | n/a | `0x1b6a7576f09d005f988aea5ba16d1a72d24923b9` |
| unverified unclassified | UnnamedContract<br>`0x386fbff27b386738cbd16f253adf0f5f72122329` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x3a0fa80d30f8164212ac547c7d3eb8a254cef572` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x3ac92878ccdd55934ecf0fd49f65689cbe16b974` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x3b34e169438fc65ed1c018655d04e5b0f3185ecc` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x3bcda00c257179d4abee0d1d94a8a9720554f1c9` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x3c32463e25f562fbb3684125246c5b2ed30354ec` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x3c9211212118ce5fab57676c88541841d6d7b5d9` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x3cb560faeff708e21513b0ea7e65963f08eaad04` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x3ccfc1d0319c52f177f4281ac5146cffa62f8e24` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x3dca53bd528f5cb71ad837d6760074733ca60a63` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x3e612511900457c364190abf4b072a9fd001acd1` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x3e92639d1231befffd38d887199f87b813ff864d` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x3eb4ec45b791c6d43b8dd5373c2e94d8996e8945` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x3fe38b7b610c0acd10296fef69d9b18eb7a9eb1f` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x3ffd8ecffb03626bd7dee699ce1921cc62185dea` | non_address_book | unknown | unknown | unverified | n/a | `0x1b6a7576f09d005f988aea5ba16d1a72d24923b9` |
| unverified unclassified | UnnamedContract<br>`0x43feff8296f4e7fd914b99e51a78c65c95682414` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x444d68379832b3570503c7f0e67c54087a6890fe` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x45acb67c90615acbe9566c6aadc23ef418587d87` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x45b2c4139d96f44667577c0d7f7a7d170b420324` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x4796e1e2ae921b8408ab52c0fc9dd991d57bfaef` | non_address_book | unknown | unknown | unverified | n/a | `0x5423819b3b5bb38b0e9e9e59f22f9034e2d8819b` |
| unverified unclassified | UnnamedContract<br>`0x47a3e9d5c87651d4074ef67a160afdb3f42cb242` | non_address_book | unknown | unknown | unverified | n/a | `0x1b6a7576f09d005f988aea5ba16d1a72d24923b9` |
| unverified unclassified | UnnamedContract<br>`0x47d99d622b25d86f4ff8925ca8db21ea47044f0a` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x486af39519b4dc9a7fccd318217352830e8ad9b4` | non_address_book | unknown | unknown | unverified | n/a | `0x5423819b3b5bb38b0e9e9e59f22f9034e2d8819b` |
| unverified unclassified | UnnamedContract<br>`0x4a586daa5d5edcd8182339c24291fb510fa4d271` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x4acc99dc595e2df9838ddcb1ec5d94fe96ae7f2c` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x4d0b7302d7ad0b0f9efdf16caed64868ed377313` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x4e931f09ee083b7abfb116889622d6f337112538` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x4e9f683a27a6bdad3fc2764003759277e93696e6` | non_address_book | unknown | unknown | unverified | n/a | `0x5423819b3b5bb38b0e9e9e59f22f9034e2d8819b` |
| unverified unclassified | UnnamedContract<br>`0x52d69a3f6ed50857e57be1f0cf1914db385ea435` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x5410c210c0011fe8dbd3aaef3d376e4105e4c118` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x54fe8edb139404228dd70c5fd0a06c7b46c86fb0` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x5640b2e8724231e5e7baa53375dc63d7bbea04eb` | non_address_book | unknown | unknown | unverified | n/a | `0x5423819b3b5bb38b0e9e9e59f22f9034e2d8819b` |
| unverified unclassified | UnnamedContract<br>`0x564780a6aa44be1ca103b6c3f30e8593efbbacd0` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x584560e90c948c7a81b24efb08f1436205f7013c` | non_address_book | unknown | unknown | unverified | n/a | `0x1b6a7576f09d005f988aea5ba16d1a72d24923b9` |
| unverified unclassified | UnnamedContract<br>`0x585e7bc75089ed111b656faa7aeb1104f5b96c15` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x587b32c2a5505e61cbeb252493e1286cab1f41c8` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x592f70bd9ec0ce89c4b430fac4dbc020b2419f37` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x5b4dfdeb4f4680425e0e78d6029eb9af5afef862` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x5bbfa5f49ec557eaba9427ac434f21b69113fe20` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x5c1204d079c9741821a3705a52db85f7537e7338` | non_address_book | unknown | unknown | unverified | n/a | `0x1b6a7576f09d005f988aea5ba16d1a72d24923b9` |
| unverified unclassified | UnnamedContract<br>`0x5caaf127cda59a1e640414aaebecd2408c006e22` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x5cfca5b2149a20a166508b28e5fcfa65c44c6b9c` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x5d57f62027f567855e815489d2365c7976899c7c` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x5da155d0e75aa0e2b4c9cfc662275b95915405ca` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x5e1e12945adc54b5e5dd01582a19223ba5a424ea` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x5f0902b53f91b92b41f5a04c80bca3a722865095` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x5f2a43eeb6d624e145f2d7efebd13cade7083ae6` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x5fe9ad068fb4c60c5ee173b12305803cb05ec7ec` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x61ecdb614646ccf28c027b2bde9fcdf602ff90e2` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x62387711313cc10f433b32e010a05bf768c2f037` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x627237170706db6b63362e14b8195f2df87e9f80` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x647da94ae8ec35e9627df11bffad19513892cf2b` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x650967969025dd84a3328f30b110eed22a76f430` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x65f17eff747aeb3b14bb3712c6850c2da45d0ac7` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x66b1452bb1b5e05ce08725d392a1c9a5e5f3142d` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x66fa316b49ee32aab7a7f88f08e16d8e907efb63` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x670968ed86ae309f552acc60cb6716b9f8198eec` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x6861317b2901ee29ff10ae851af2234380422aff` | non_address_book | unknown | unknown | unverified | n/a | `0x5423819b3b5bb38b0e9e9e59f22f9034e2d8819b` |
| unverified unclassified | UnnamedContract<br>`0x68b28fe0e0f91c672dcb91e5d18ac7a95f264bff` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x692782448c146806be6a3c0b801d5eab5f8e8551` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x6af7e24ac12b6e6e72606746833587edafeec3a5` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x6b516b23a260e2d904dbfa47c7e7afd04e5adbc9` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x6b5a37d2096f4f8445423f2e88bc6cc76093a86b` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x6baa882234924aa48d6c2a3d1d46d0ed723a4db8` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x6c6f89bce78d4e083a7ba71574594aeaffee6459` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |

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
| 0xleastwood-Part 1 + 2.pdf | PendleMarket | own contract | PendleMarket (selected) `0xd0354d4e7bcf345fb117cabe41acadb724eccca2` — deployed 2023-03-24 05:50:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| Ackee-Part 1.pdf | PendleMarket | own contract | PendleMarket (selected) `0xd0354d4e7bcf345fb117cabe41acadb724eccca2` — deployed 2023-03-24 05:50:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| Cmichel-Part 1.pdf | PendleMarket | own contract | PendleMarket (selected) `0xd0354d4e7bcf345fb117cabe41acadb724eccca2` — deployed 2023-03-24 05:50:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| ChainSecurity.pdf | PendleMarket | own contract | PendleMarket (selected) `0xd0354d4e7bcf345fb117cabe41acadb724eccca2` — deployed 2023-03-24 05:50:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| Dedaub-Part 1.pdf | PendleMarket | own contract | PendleMarket (selected) `0xd0354d4e7bcf345fb117cabe41acadb724eccca2` — deployed 2023-03-24 05:50:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| Dingbats-Part 1.pdf | PendleMarket | own contract | PendleMarket (selected) `0xd0354d4e7bcf345fb117cabe41acadb724eccca2` — deployed 2023-03-24 05:50:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| WatchPug-Part 1 Follow Up 2.pdf | PendleMarket | own contract | PendleMarket (selected) `0xd0354d4e7bcf345fb117cabe41acadb724eccca2` — deployed 2023-03-24 05:50:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| WatchPug-Part 1 Follow Up 2.pdf | SCYIndex | unmatched — not counted | — | mentioned in finding WP-M2 | no |
| WatchPug-Part 1.pdf | PendleQiTokenSCY | unmatched — not counted | — | Listed in scope and findings (WP-H0, WP-H5) | no |
| WatchPug-Part 1.pdf | SCYBase | unmatched — not counted | — | Listed in scope and findings (WP-H0, WP-H5) | no |
| WatchPug-Part 1.pdf | PendleYieldContractFactory | unmatched — not counted | — | Listed in scope and finding WP-I1 | no |
| WatchPug-Part 1.pdf | PendleYieldToken | unmatched — not counted | — | Listed in scope and findings (WP-G2, WP-I3) | no |
| WatchPug-Part 1.pdf | PendleERC4626SCY | unmatched — not counted | — | Listed in scope and finding WP-I3 | no |
| WatchPug-Part 1.pdf | PendleYearnVaultScy | unmatched — not counted | — | Listed in scope and finding WP-H4 | no |
| WatchPug-Part 1.pdf | PendleMarket | own contract | PendleMarket (selected) `0xd0354d4e7bcf345fb117cabe41acadb724eccca2` — deployed 2023-03-24 05:50:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| WatchPug-Part 2.pdf | PendleMarket | own contract | PendleMarket (selected) `0xd0354d4e7bcf345fb117cabe41acadb724eccca2` — deployed 2023-03-24 05:50:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| HickupHH3.pdf | StakedPendle | own proxy deployment | StakedPendle (proxy) (selected) `0x999999999991e178d52cd95afd4b00d066664144` — deployed 2026-01-15 06:34:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| WatchPug.pdf | StakedPendle | own proxy deployment | StakedPendle (proxy) (selected) `0x999999999991e178d52cd95afd4b00d066664144` — deployed 2026-01-15 06:34:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| Pendle-Spearbit-Security-Review-August-2025.pdf | TransparentUpgradeableProxy | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0xecac9c5f704e954931349da37f60e39f515c11c1` — deployed 2024-11-11 19:25:11+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xecac9c5f704e954931349da37f60e39f515c11c1` — deployed 2024-12-26 16:47:35+03 — liveness: live (current_address_book_code) | bare standard proxy-shell name is not deployment identity; normalized_full_corpus:project_anchor:matcher_anchor | no |
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
| ethereum | `0x6b175474e89094c44da98b954eedeac495271d0f` | Dai | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x808507121b80c02388fad14726482e061b8da827` | PENDLE | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7f39c581f595b53c5cb19bd0b3f8da6c935e2ca0` | WstETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 436 |
| upstream | 4 |
| standard_library | 27 |
| needs_review | 401 |

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
