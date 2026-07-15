# Agentic Audit Brief: Resolv

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 1 audit(s)
- Eligible audit results: 1 (1 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Resolv (`resolv`)
- Website: [https://app.resolv.xyz](https://app.resolv.xyz)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, berachain, bsc, ethereum, hyperliquid, plasma, soneium
- Contract surface: 105 unique implementations (217 raw deployments)
- Coverage basis: 2/19 confirmed own live verified implementations (10.5%); conservative 10.5% with 0 needs-review implementation(s)
- DeFi Llama TVL: $10,707,596.62
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Resolv. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 24 contract row(s) across arbitrum, base, berachain, bsc, ethereum, hyperliquid, plasma, soneium. Structural roles: 14 core, 6 supporting, 4 infra. 20 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 24
- Structural roles: core (14), supporting (6), infra (4)
- Contract kinds: contract (24)
- Detected standards: pausable (11), ownable (9), accesscontrol (7), erc165 (7), erc1967proxy (6), erc20 (6), erc20permit (4)
- Frameworks: openzeppelin (24), openzeppelin-upgradeable (16), layerzero (2)
- Upgradeable-pattern rows: 20

## Fork Analysis

0 of 26 contracts are derived from known codebases. 26 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xc31389...aa5fdc`, chain 9745)
- BlueprintByResolv (`0x2e1e87...f7059e`, chain 42161)
- ExternalRequestsManager (`0x10f4d4...dfc872`, chain 1)
- ResolvToken (`0x5ac055...060b9a`, chain 1)
- RLP Soneium (`0x35533f...16868b`, chain 1868)
- SimpleOFT (`0x0da21d...cabf61`, chain 56)
- SimpleOFT (`0x594302...311255`, chain 56)
- SimpleToken (`0xef4c4b...a1fabe`, chain 1)
- StUSR (`0xba1600...973da7`, chain 1)
- TheCounter (`0xa27a69...e55861`, chain 1)
- TheCounter (`0xc7ab90...1eafa0`, chain 1)
- TransparentUpgradeableProxy (`0x1202f5...c75055`, chain 1)
- TransparentUpgradeableProxy (`0x0a3d84...cc5c48`, chain 999)
- TransparentUpgradeableProxy (`0x0ad339...394a77`, chain 999)
- TransparentUpgradeableProxy (`0x46c1c1...caeaab`, chain 999)
- TransparentUpgradeableProxy (`0x35e5db...e8a4b9`, chain 8453)
- TransparentUpgradeableProxy (`0xb67675...135ba1`, chain 8453)
- TransparentUpgradeableProxy (`0xc31389...aa5fdc`, chain 8453)
- TransparentUpgradeableProxy (`0x2492d0...0a79e9`, chain 42161)
- TransparentUpgradeableProxy (`0x35e5db...e8a4b9`, chain 42161)
- TransparentUpgradeableProxy (`0x66cfbd...8e2254`, chain 42161)
- TransparentUpgradeableProxy (`0x2492d0...0a79e9`, chain 80094)
- TransparentUpgradeableProxy (`0x35e5db...e8a4b9`, chain 80094)
- USR Soneium (`0xb1b385...99f15c`, chain 1868)
- UsrExternalRequestsManager (`0xac85ef...a95f2e`, chain 1)
- wstUSR Soneium (`0x2a52b2...9e5699`, chain 1868)

## Contract Surface Quality

- Logic-topography rows: 24; live-surface rows included: 24 (24 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 22/24 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/19 (10.5%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 22 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 83 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 46
- Confirmed-live implementations: 22 of 105 unique; 83 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 2/88
- Verified + Unaudited implementations: 86
- Verified by bytecode match: 0
- Unverified implementations: 17
- Unique implementations: 105
- Raw deployments: 217
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-12 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: 10.5% (Sherlock)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Sherlock | Tier 1 | 2 | 2.3% | 2024-12 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| StUSR | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391462 | 2 deployments: ethereum `0x6c8984...10aab4`; ethereum `0xba1600...973da7` | ✅ Audited |
| WstUSR | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391460 | `0x1202f5...c75055` | ✅ Audited |

### ⚠️ Verified + Unaudited (86)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveV3TreasuryConnector | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x91eda2...03c8ca` | ⚠️ Unaudited |
| AccessControlledOCR2Aggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 14 deployments: ethereum `0x00f0ef...65c382`; ethereum `0x055819...08ef5e`; ethereum `0x4014f1...868192`; ethereum `0x5effb9...c9627c`; ethereum `0x601009...03d5f9`; ethereum `0x62a897...bb6c3d`; ethereum `0x646772...3766e1`; ethereum `0x75c4b5...1d8e09`; ethereum `0x782819...196b61`; ethereum `0x80c1b1...9fe194`; ethereum `0x8f2db4...2b346e`; ethereum `0x9c7cf0...b470a3`; ethereum `0x9e3aab...dd0667`; ethereum `0xa674a0...91989c` | ⚠️ Unaudited |
| AccessControlledOffchainAggregator | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 18 deployments: ethereum `0x000bcf...d7e1bc`; ethereum `0x04580b...9bf0d3`; ethereum `0x50cf7f...cec4f0`; ethereum `0x51864c...78e74a`; ethereum `0x6a4a21...17432f`; ethereum `0x6f96e3...780b0c`; ethereum `0x897cfe...d5dabf`; ethereum `0x8deccb...5dc511`; ethereum `0x909b2f...62bfcc`; ethereum `0xaa01a1...457df7`; ethereum `0xab324a...07c5ca`; ethereum `0xab63ad...587620`; ethereum `0xc707b7...51b6e7`; ethereum `0xdb4fed...dcfbfd`; ethereum `0xdd34ac...f38a67`; ethereum `0xf35a65...98f829`; ethereum `0xf71608...dc39fc`; ethereum `0xfac0a7...750bc3` | ⚠️ Unaudited |
| AddressesWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x2d0049...6b0f77`; ethereum `0x594302...311255`; ethereum `0xfff167...c01ad6` | ⚠️ Unaudited |
| Chronicle_Aggor_BTC_USD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4219aa...85b537` | ⚠️ Unaudited |
| Chronicle_Aggor_ETH_USD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2750e4...2759b6`; ethereum `0x914b68...e71c8b` | ⚠️ Unaudited |
| Chronicle_CBBTC_USDC_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3131e6...098747` | ⚠️ Unaudited |
| Chronicle_CBBTC_WBTC_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xa18297...405674`; ethereum `0xb82345...ce9f21` | ⚠️ Unaudited |
| Chronicle_CBBTC_WETH_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5769e5...2ee5f0` | ⚠️ Unaudited |
| Chronicle_EBTC_ETH_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5130c...4b7b63` | ⚠️ Unaudited |
| Chronicle_EBTCbadger_ETH_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb6564...204495` | ⚠️ Unaudited |
| Chronicle_SPK_USD_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x552116...f2a574` | ⚠️ Unaudited |
| Chronicle_SRUSD_USD_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x277f78...a1a633` | ⚠️ Unaudited |
| Chronicle_STETH_BTC_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x02238b...d5934d`; ethereum `0x7c1677...5a041c` | ⚠️ Unaudited |
| Chronicle_STONE_ETH_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x057f30...7de3d0` | ⚠️ Unaudited |
| Chronicle_STONE_USD_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x131184...13cb51` | ⚠️ Unaudited |
| Chronicle_SUSDS_USD_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x496470...608e84` | ⚠️ Unaudited |
| Chronicle_TEST_TEST_2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x576211...f9b4b3` | ⚠️ Unaudited |
| Chronicle_Tester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ea387...195c5f` | ⚠️ Unaudited |
| Chronicle_USDS_USD_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x74661a...85636c` | ⚠️ Unaudited |
| Chronicle_USR_USD_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd02d70...c81ff4` | ⚠️ Unaudited |
| Chronicle_WSRUSD_USD_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0b4cb1...01d215`; ethereum `0x4ac943...e6a6c0` | ⚠️ Unaudited |
| ChronicleGovernance_Accessor_TOSRegistry_1 | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2cafee...a06549` | ⚠️ Unaudited |
| ChronicleSonic_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe26202...f94447` | ⚠️ Unaudited |
| ConfigRegistry_VAO_1 | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x064358...cf0213` | ⚠️ Unaudited |
| DineroTreasuryConnector | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x75ec06...493c70`; ethereum `0x9971f7...0af812` | ⚠️ Unaudited |
| EACAggregatorProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 15 deployments: ethereum `0x04f840...56da11`; ethereum `0x2d27d9...897f62`; ethereum `0x316978...9bd08f`; ethereum `0x34ad75...61b42c`; ethereum `0x3c7db4...c40f78`; ethereum `0x461790...fa73c0`; ethereum `0x75a0d3...f73399`; ethereum `0x9b4a96...b7ff83`; ethereum `0xacfcf1...e6a758`; ethereum `0xb17785...df78b1`; ethereum `0xc8cd82...1b5156`; ethereum `0xcbe87d...cfb2a7`; ethereum `0xe2ff7b...4ddead`; ethereum `0xe471bc...eb4bb3`; ethereum `0xf0d9bb...61370d` | ⚠️ Unaudited |
| ExternalRequestsCoordinator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x36c9b5...76c043`; ethereum `0xf47af3...82ba80` | ⚠️ Unaudited |
| ExternalRequestsManager | governance | project_anchor | own_supporting | 0 | ethereum | unit-391451 | `0x10f4d4...dfc872` | ⚠️ Unaudited |
| ExternalRequestsManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1de327...6c8ea9` | ⚠️ Unaudited |
| ExternalRequestsManagerBetaV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x052b1c...0fda1b`; ethereum `0x3ed5dc...9bd45d`; ethereum `0x8ade71...6e86e9`; ethereum `0xda6cef...c6b360` | ⚠️ Unaudited |
| FunctionsClientUpgradeHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x03b1b1...70d29f`; ethereum `0xb26fdf...fc2ac5` | ⚠️ Unaudited |
| FunctionsCoordinator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x3503b2...579acf`; ethereum `0x6b12a8...0942b4`; ethereum `0xca89dd...c9123d` | ⚠️ Unaudited |
| HeartbeatRequester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4822d7...f8c315` | ⚠️ Unaudited |
| HeyMintERC721AReference | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-391467 | `0x2e1e87...f7059e` | ⚠️ Unaudited |
| Kisser_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x371a53...ddda5b` | ⚠️ Unaudited |
| LidoTreasuryConnector | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xb63a5e...b048a7` | ⚠️ Unaudited |
| MEVRecover | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x654152...390033`; ethereum `0x96a962...ceeede` | ⚠️ Unaudited |
| Multicall | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba610d...8df947` | ⚠️ Unaudited |
| ResolvStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d2d1e...d827e6` | ⚠️ Unaudited |
| ResolvStakingCheckpoints | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x253c6e...8f2784` | ⚠️ Unaudited |
| ResolvStakingHelpers | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x948ade...f17970` | ⚠️ Unaudited |
| ResolvStakingSilo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x502f9f...c88d4f` | ⚠️ Unaudited |
| ResolvStakingV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xbf1762...1649df`; ethereum `0xeef363...4acdd3` | ⚠️ Unaudited |
| ResolvStakingV2 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391463 | 2 deployments: ethereum `0xd10625...99705a`; ethereum `0xfe4bce...2e5e23` | ⚠️ Unaudited |
| ResolvToken | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391461 | 2 deployments: ethereum `0x259338...f768a1`; ethereum `0x5ac055...060b9a` | ⚠️ Unaudited |
| ResolvToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7f7a04...654b00`; ethereum `0xea279d...3057e5` | ⚠️ Unaudited |
| RewardDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x32a07b...f39f7a`; ethereum `0x9ace20...1b4cf9`; ethereum `0x9f805f...fdad12`; ethereum `0xbe23bb...9c1ba9` | ⚠️ Unaudited |
| RlpPriceAggregatorV3Interface | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x4e35e7...474ecb`; ethereum `0xadb2c1...4e66b2` | ⚠️ Unaudited |
| RlpPriceStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x03f75a...fff85c`; ethereum `0x313198...06371e`; ethereum `0xaa33e5...b2d565` | ⚠️ Unaudited |
| RlpPriceStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x5e90b0...8e1aa1`; ethereum `0xae2364...f3574d` | ⚠️ Unaudited |
| RlpUpOnlyPriceStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x093285...ab0dc6`; ethereum `0x2d748a...82a2c0`; ethereum `0x40b988...aa0580` | ⚠️ Unaudited |
| SimpleOFT | unknown | project_anchor | own_supporting | 1 | bsc | unit-391468 | 2 deployments: bsc `0x0da21d...cabf61`; bsc `0xda6cef...c6b360` | ⚠️ Unaudited |
| SimpleOFT | unknown | project_anchor | own_supporting | 3 | bsc | unit-391469 (3 proxies) | 4 deployments: bsc `0x2492d0...0a79e9`; bsc `0x35e5db...e8a4b9`; bsc `0x425481...a55429`; bsc `0x594302...311255` | ⚠️ Unaudited |
| SimpleOFT | unknown | project_anchor | own_supporting | 3 | hyperliquid | unit-391474 (3 proxies) | 3 deployments: hyperliquid `0x0a3d84...cc5c48`; hyperliquid `0x0ad339...394a77`; hyperliquid `0x46c1c1...caeaab` | ⚠️ Unaudited |
| SimpleOFT | unknown | project_anchor | own_supporting | 2 | base | unit-391471 (2 proxies) | 2 deployments: base `0x35e5db...e8a4b9`; base `0xc31389...aa5fdc` | ⚠️ Unaudited |
| SimpleOFT | unknown | project_anchor | own_supporting | 1 | base | unit-391472 | `0xb67675...135ba1` | ⚠️ Unaudited |
| SimpleOFT | unknown | project_anchor | own_supporting | 2 | arbitrum | unit-391465 (2 proxies) | 2 deployments: arbitrum `0x2492d0...0a79e9`; arbitrum `0x35e5db...e8a4b9` | ⚠️ Unaudited |
| SimpleOFT | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-391466 | `0x66cfbd...8e2254` | ⚠️ Unaudited |
| SimpleOFT | unknown | project_anchor | own_supporting | 2 | berachain | unit-391470 (2 proxies) | 2 deployments: berachain `0x2492d0...0a79e9`; berachain `0x35e5db...e8a4b9` | ⚠️ Unaudited |
| SimpleOFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x142198...69de32`; ethereum `0xab17c1...451978` | ⚠️ Unaudited |
| SimpleOFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1fc1bc...ffdeaf`; ethereum `0x5daa06...62084b` | ⚠️ Unaudited |
| SimpleOFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x234c90...1ad06c`; ethereum `0x271872...26b654` | ⚠️ Unaudited |
| SimpleOFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xc45430...30eb28`; ethereum `0xd2ee27...d4be0e` | ⚠️ Unaudited |
| SimpleToken | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x35533f...16868b`; ethereum `0x46c1c1...caeaab`; ethereum `0xb1b385...99f15c` | ⚠️ Unaudited |
| SimpleToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x35e5db...e8a4b9`; ethereum `0xc31389...aa5fdc` | ⚠️ Unaudited |
| SimpleToken | unknown | project_anchor | own_supporting | 2 | ethereum | unit-391464 (2 proxies) | 3 deployments: ethereum `0x4956b5...528f96`; ethereum `0x66a1e3...f3e110`; ethereum `0xef4c4b...a1fabe` | ⚠️ Unaudited |
| StakedTokenDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x212e81...789037`; ethereum `0x53c5b7...08031e`; ethereum `0x6ac1f6...04dbaf`; ethereum `0xbac23e...72ac69`; ethereum `0xbb2213...85e32c`; ethereum `0xce9d50...7ad8f9`; ethereum `0xfc7d46...1604a4` | ⚠️ Unaudited |
| StUSR | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0da21d...cabf61`; ethereum `0x56abf7...32ecc2` | ⚠️ Unaudited |
| StUSR | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xcf3e9d...5678bd`; ethereum `0xf8391a...84c46b` | ⚠️ Unaudited |
| TheCounter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391454 | `0xa27a69...e55861` | ⚠️ Unaudited |
| TheCounter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391456 | `0xc7ab90...1eafa0` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x290d95...f6ebee`; ethereum `0x4f0b08...78aa18`; bsc `0xc31389...aa5fdc`; plasma `0x594302...311255` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8ade71...6e86e9` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 3 | plasma | unit-391473 (3 proxies) | 4 deployments: plasma `0x2a52b2...9e5699`; plasma `0x35533f...16868b`; plasma `0xb1b385...99f15c`; plasma `0xc31389...aa5fdc` | ⚠️ Unaudited |
| Treasury | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xacb702...d62b8e`; ethereum `0xc657b2...428691` | ⚠️ Unaudited |
| TreasuryIntermediateEscrow | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x84b883...acfed6`; ethereum `0xdce795...6c76a8` | ⚠️ Unaudited |
| UsrExternalRequestsManager | governance | project_anchor | own_supporting | 0 | ethereum | unit-391455 | `0xac85ef...a95f2e` | ⚠️ Unaudited |
| USRPriceAggregatorV3Interface | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x8a9341...c46f64`; ethereum `0xf9c7c2...7ce88c` | ⚠️ Unaudited |
| UsrPriceStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7f4518...9c261c`; ethereum `0xc16b2a...c2785d` | ⚠️ Unaudited |
| UsrRedemptionExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x60a7b7...897c37`; ethereum `0x7078c8...d52489`; ethereum `0xb69b2e...c96be6` | ⚠️ Unaudited |
| VerifierECDSA_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71186c...f02717` | ⚠️ Unaudited |
| VerifierECDSAWatOnboarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb930ed...2d21f2` | ⚠️ Unaudited |
| VRFV2PlusWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02aae1...ad910c` | ⚠️ Unaudited |
| WstUSR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ed548...359cc0` | ⚠️ Unaudited |
| WstUSR | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x878943...43dd34`; ethereum `0x8b480b...c44ee6` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (17)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| RLP Soneium | unknown | project_anchor | own_supporting | 0 | soneium | unit-391458 | `0x35533f...16868b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ecc1d...6d7cba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30abc3...b90fa0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32dadd...7cdf5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x438628...a56d3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65dbc3...6dd1a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x920b72...ffe881` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93accf...bd0704` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96920b...866113` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e2c3e...bc9429` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc8a6c...ef8bcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7347c...350479` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd77704...03a923` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf84f43...a3a488` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd4498...b04856` | ❓ Unverified |
| USR Soneium | unknown | project_anchor | own_supporting | 0 | soneium | unit-391459 | `0xb1b385...99f15c` | ❓ Unverified |
| wstUSR Soneium | unknown | project_anchor | own_supporting | 0 | soneium | unit-391457 | `0x2a52b2...9e5699` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [2024.12.02 - Final - Resolv Core Audit Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.12.02%20-%20Final%20-%20Resolv%20Core%20Audit%20Report.pdf) | Sherlock | Contest | 2024-12 | aging | Direct | n/a | matched | 2 | 2 | 0 | 0 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3993] 2024.12.02 - Final - Resolv Core Audit Report.pdf — matched: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2024.12.02 - Final - Resolv Core Audit Report.pdf | StUSR | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x6c8984...10aab4` — deployed 2024-06-02 21:57:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024.12.02 - Final - Resolv Core Audit Report.pdf | WstUSR | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x1202f5...c75055` — deployed 2024-08-21 16:55:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x10f4d4...dfc872` | ExternalRequestsManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd10625...99705a` | ResolvStakingV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x259338...f768a1` | ResolvToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x0da21d...cabf61` | SimpleOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x2492d0...0a79e9` | SimpleOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4956b5...528f96` | SimpleToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa27a69...e55861` | TheCounter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc7ab90...1eafa0` | TheCounter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xac85ef...a95f2e` | UsrExternalRequestsManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 56 |
| upstream | 22 |
| standard_library | 3 |
| needs_review | 24 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 2 own (2 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 2 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: unique_name=2

Fork inheritance lineage and inherited audits are included when available.
