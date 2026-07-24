# Agentic Audit Brief: Corn Kernels

## Export Authority

- Production state: **published scope**
- Raw selected rows: 3 across 3 audit(s)
- Eligible audit results: 6 (3 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Corn Kernels (`corn-kernels`)
- Website: [https://usecorn.com/](https://usecorn.com/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum, sepolia
- Contract surface: 782 unique implementations (788 raw deployments)
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

- UnnamedContract (`0x8236a87084f8b84306f72007f36f2618a5634494`, chain 1)
- UnnamedContract (`0xd533a949740bb3306d119cc777fa900ba034cd52`, chain 1)
- UnnamedContract (`0xdac17f958d2ee523a2206206994597c13d831ec7`, chain 1)
- UnnamedContract (`0xf469fbd2abcd6b9de8e169d128226c0fc90a012e`, chain 1)
- aBTC (`0x5e14fe5ea32ee54c6cb3c237ffdce1c57df2a0be`, chain 1)
- BeaconProxy (`0xd9d920aa40f578ab794426f5c90f6c731d159def`, chain 1)
- BitcornOFT (`0x386e7a3a0c0919c9d53c3b04ff67e73ff9e45fb6`, chain 1)
- CornOFT (`0x44f49ff0da2498bcb1d3dc7c0f999578f67fd8c6`, chain 1)
- crvUSDStablecoin (`0xf939e0a03fb07f59a73314e73794be0e57ac1b4e`, chain 1)
- EnzoBTC (`0x6a9a65b84843f5fd4ac9a0471c4fc11afffbce4a`, chain 1)
- FiatTokenProxy (`0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48`, chain 1)
- SolvBTCV3 (`0x7a56e1c57c7475ccf742a1832b028f0456652f97`, chain 1)
- stBTC (`0xf6718b2701d4a6498ef77d7c152b2137ab28b8a3`, chain 1)
- TransparentUpgradeableProxy (`0x004e9c3ef86bc1ca1f0bb5c7662861ee93350568`, chain 1)
- UUPSProxy (`0xcd5fe23c85820f7b72d0926fc9b05b43e359b7ee`, chain 1)
- waBTC (`0x09def5abc67e967d54e8233a4b5ebbc1b3fbe34b`, chain 1)
- WETH9 (`0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 20; live-surface rows included: 20 (13 live, 7 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 17/30 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/13 (15.4%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 17 own, 13 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 752 discovered implementations shown in the inventory but excluded from coverage (19 third-party/infra; 14 standard proxy/library)
- Proxy deployments represented within implementation groups: 42
- Confirmed-live implementations: 17 of 782 unique; 765 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 2/229
- Verified + Unaudited implementations: 227
- Verified by bytecode match: 0
- Unverified implementations: 553
- Unique implementations: 782
- Raw deployments: 788
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
| Spearbit | Tier 1 | 2 | 0.9% | 2025-03 |
| Zenith | Tier 2 | 1 | 0.4% | 2024-11 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BitcornOFT | unknown | project_anchor | third_party_dependency | 1 | ethereum | unit-233380 | `0x386e7a3a0c0919c9d53c3b04ff67e73ff9e45fb6` | ✅ Audited |
| CornOFT | unknown | project_anchor | third_party_dependency | 1 | ethereum | unit-233373 | `0x44f49ff0da2498bcb1d3dc7c0f999578f67fd8c6` | ✅ Audited |

### ⚠️ Verified + Unaudited (227)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| aBTC | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233350 | `0x5e14fe5ea32ee54c6cb3c237ffdce1c57df2a0be` | ⚠️ Unaudited |
| AddressProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20ee00f43ef299dba82ba6fef537756dabe38cc7` | ⚠️ Unaudited |
| AggMonetaryPolicy-monetarypolicybasedonaggregatedpricesforcrvUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0901b541beff2cd44859701619e245e82f48e62b` | ⚠️ Unaudited |
| AggregatorStablePrice-aggregatorofstablecoinpricesforcrvUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18672b1b0c623a30089a280ed9256379fb0e4e62` | ⚠️ Unaudited |
| AssetRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb823359367978a28eae71e90f79d95b62348bd80` | ⚠️ Unaudited |
| AuctionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68fe80c6e97e0c8613e2fed344358c6635ba5366` | ⚠️ Unaudited |
| AvsOperator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8969d7c2e3e5b056d5d4984031788eca923960f5` | ⚠️ Unaudited |
| BeaconProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-233376 | `0xd9d920aa40f578ab794426f5c90f6c731d159def` | ⚠️ Unaudited |
| Bitcorn | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0253642ead35b0ff26ba96992a3079c1ca51c1bd` | ⚠️ Unaudited |
| BNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a393848f5d1b8e7dab45f3a7e01f9f0dc687242` | ⚠️ Unaudited |
| BoringVaultPriceProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x130e22952dd3de2c80ebdfc2b256e344ff3a0729` | ⚠️ Unaudited |
| Bridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b67c2908ef408f6612e025fe3cf12c8507a4717` | ⚠️ Unaudited |
| BridgeV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1fe8a0daed7e912d3b5b56ff6e05f17d82059c8` | ⚠️ Unaudited |
| CCIPDVNAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x771d10d0c86e26ea8d3b778ad4d31b30533b9cbf` | ⚠️ Unaudited |
| CCIPPeer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17ea3dcd055a72b137e6f09cd5f2a1c187908ee1` | ⚠️ Unaudited |
| CelerMinterReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c3f1fe22959b4f6ac2bf2474b3bdf9969465c95` | ⚠️ Unaudited |
| ChainlinkOracleClient | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc905e74beb8229e258c3c6e5bc0d6cc54c534688` | ⚠️ Unaudited |
| CLAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2298d44cfda0ceafe7f5ef5fd587b67d7b9b1fbb` | ⚠️ Unaudited |
| Consortium | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f8048c81d00da5e757e20ad5fc89f8a32c5478e` | ⚠️ Unaudited |
| CornDeployer | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-233339 | `0x0969f8752a32b4f1f9d07b751c7bacbf6d9ae733` | ⚠️ Unaudited |
| CornSilo | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-233378 | `0x8bc93498b861fd98277c3b51d240e7e56e48f23c` | ⚠️ Unaudited |
| CornSiloZapV1 | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-233379 | `0x29a4e79dc35f94ed6aa91c0e0d96c0c7472ef7ff` | ⚠️ Unaudited |
| Create2Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6521991a0bc180a5df7f42b27f4ee8f3b192ba62` | ⚠️ Unaudited |
| crvUSD Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17c6e1ddf1cce3d33240a53fce8a2ee48541f4d4` | ⚠️ Unaudited |
| crvUSDControllerFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9332fdcb1c491dcc683bae86fe3cb70360738bc` | ⚠️ Unaudited |
| crvUSDdeleveragezap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2bc706b83ab08d0437b8a397242c3284b5f81d74` | ⚠️ Unaudited |
| crvUSDStablecoin | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233369 | `0xf939e0a03fb07f59a73314e73794be0e57ac1b4e` | ⚠️ Unaudited |
| CryptoFromPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b38ce23799dc56664ff6048892510abffdb7a25` | ⚠️ Unaudited |
| CryptoFromPoolsRate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38e7627eb98a40e7528bcce709a80083093ba2f8` | ⚠️ Unaudited |
| CryptoFromPoolsRateWAgg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a9ae947495034c0bbbab845fd75b5bbafc91aab` | ⚠️ Unaudited |
| CryptoFromPoolVaultWAgg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x002688c4296a2c4d800f271fe6f01741111b09be` | ⚠️ Unaudited |
| CryptoFromPoolWAgg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d89d82ff68bae1357d746b3e8eac520bfe1d5ca` | ⚠️ Unaudited |
| CryptoWithStablePriceETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x966cbdecefb60a289b0460f7638f4a75f432ca06` | ⚠️ Unaudited |
| CryptoWithStablePriceSfrxeth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28d7880b5b67fb4a0b1c6ed6c33c33f365113c29` | ⚠️ Unaudited |
| CryptoWithStablePriceTBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbef434e2acf0fbad1f0579d2376fed0d1cfc4217` | ⚠️ Unaudited |
| CryptoWithStablePriceWBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07374b547cae235227635c13266c69847a3e46fa` | ⚠️ Unaudited |
| CryptoWithStablePriceWsteth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21f5f6d3f90d0f56a6de307a3bd359d0a151b304` | ⚠️ Unaudited |
| CumulativeMerkleDrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26542fbe5f320f25747e80831acdd1f27cdd0c65` | ⚠️ Unaudited |
| DadFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01c1103d765f62a0d909499d7b615c382cdb072d` | ⚠️ Unaudited |
| DaiFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf07674f6ac6632e253c291b694f9c2e2ed69ebbb` | ⚠️ Unaudited |
| DeadDVN | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x747c741496a507e4b404b50463e691a8d692f6ac` | ⚠️ Unaudited |
| DelayRedeemRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x720081e3ee2b1542e341afc793de20b08beb859d` | ⚠️ Unaudited |
| depositRootGenerator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10f2c552ef9ca8d2b592a8055e2db0efe5c561d6` | ⚠️ Unaudited |
| directBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11964b366f794ae56717e8efa05d31ab2a09954b` | ⚠️ Unaudited |
| DirectBTCMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x704a2f4de8628e180fffa0e89203468dcc9481ee` | ⚠️ Unaudited |
| DirectStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07a5d37823c5c7963042fab79ed4747ab60eef57` | ⚠️ Unaudited |
| DSChief | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e2a84d6ade1e7fffee039a35ef5f19f13057152` | ⚠️ Unaudited |
| DSChiefFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e7ca05e174a523709e556080e227f734a8f1483` | ⚠️ Unaudited |
| DSToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x068083069ed92da4c5291dba52d8912abfcc5523` | ⚠️ Unaudited |
| DVN | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x006e1248be5e40b4a4e7099397719df7ab872de7` | ⚠️ Unaudited |
| DVNFeeLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x021e401c2a1a60618c5e6353a40524971eba1e8d` | ⚠️ Unaudited |
| eBtcRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81be3526a71d9013a1a5bd38758e0f248231b523` | ⚠️ Unaudited |
| EETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b47a665364bc15c28b05f449b53354d0ceff72f` | ⚠️ Unaudited |
| Endpoint | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66a71dcef29a0ffbdbe3c6a460a3b5bc225cd675` | ⚠️ Unaudited |
| EndpointV2View | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x175bfec21a4949c339d1b9b621ad325d9892888f` | ⚠️ Unaudited |
| EnzoBTC | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233352 | `0x6a9a65b84843f5fd4ac9a0471c4fc11afffbce4a` | ⚠️ Unaudited |
| EnzoBTCOFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99de5239a8ad65ed86db3d36e0fd9f9cba7d63d5` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x316c1b6b0c7051a10073abf0d06f9cc5ae2ab302`; ethereum `0x47c4ac7d1d0ff9594de5f3d2d07ff67253620a1c` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7efb3515d9ec4537fafca635a1de7da7a5c5c567`; ethereum `0xdc2156498144f172746c4e6d4baab54d87950068` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xe53dcec07d16d88e386ae0710e86d9a400f83c31` | ⚠️ Unaudited |
| ERC4626VaultWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f987372a1ae29f834deaea66d2e72137ba10fc7` | ⚠️ Unaudited |
| FBTCPartnerVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x512258182db0ad147cdc1a116191be823f8f198c` | ⚠️ Unaudited |
| FBTCProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3a30f627dbc02aff3c0a736a065443a0e85b1ae` | ⚠️ Unaudited |
| FiatToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8cbde23b1416cac07a52591bba744c744d77a91a` | ⚠️ Unaudited |
| FiatTokenProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-233374 | `0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48` | ⚠️ Unaudited |
| FiatTokenUtil | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6315aa908c50376d1028412c028aa0629f0355a6` | ⚠️ Unaudited |
| FiatTokenV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0882477e7895bdc5cea7cb1552ed914ab157fe56` | ⚠️ Unaudited |
| FiatTokenV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7277a6e95992041568d9391d09d0122023778a2` | ⚠️ Unaudited |
| FiatTokenV2_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2327a938febf5fec13bacfb16ae10ecbc4cbdcf` | ⚠️ Unaudited |
| FPValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07245eea05826f5984c7c3c8f478b04892e4df89` | ⚠️ Unaudited |
| GemFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x431e935209d79706b5866eb42137a3491d845692` | ⚠️ Unaudited |
| GemPit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69076e44a9c70a67d5b79d95795aba299083c275` | ⚠️ Unaudited |
| GIN | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5fd9570ac1a5dab9eda7839bd33229252b0c05d` | ⚠️ Unaudited |
| globalIndexLibrary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x325ea059f11d6860e50a803ae52d49ef35c85fb9` | ⚠️ Unaudited |
| GMPBasculeV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3ecfe771564e3f28cfb7a9b203f4d10279338ed` | ⚠️ Unaudited |
| Governor | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-233348 | `0x515c7d8fcb950f8b030ac08c994b37b4b8f3f7b5` | ⚠️ Unaudited |
| HealthcalculatorzapforcrvUSDcontroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf61ee62b136e3553fb545bd8fec11fb7f830d6a` | ⚠️ Unaudited |
| IBCVoucher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77d81c09e64972fef1a785e9c6357847c08a5b9f` | ⚠️ Unaudited |
| L1LineaReceiverETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x33275453144a4d6ef266ef1164f3e6fcb6ef27f1` | ⚠️ Unaudited |
| LayerZeroOracleMock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x980205d352f198748b626f6f7c38a8a5663ec981` | ⚠️ Unaudited |
| LayerZeroTokenMock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe7c30860d01e28371d40434806f4a8fcdd3a098` | ⚠️ Unaudited |
| LBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12364c9d095a2a43abb71b0d8313663ff0348eea` | ⚠️ Unaudited |
| LBTCOFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1290a6b480f7ef14925229fdb66f5680ad8f44ad` | ⚠️ Unaudited |
| LeveragezapforcrvUSDcontroller(sfrxETHmarket) | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb556fa4c4752321b3154f08dfbdfcf34847f2eac` | ⚠️ Unaudited |
| LiquidCashier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x485fd98f834b4bf9db855f8fa03990318103c12e` | ⚠️ Unaudited |
| LiquidFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaec1fbb90528533d5f066094abdeb2f1b0039a3b` | ⚠️ Unaudited |
| LiquidityGaugeV6 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00b71a425db7c8b65a46cf39c23a188e10a2de99` | ⚠️ Unaudited |
| LiquidityPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02656fe285fac5d5c756c2f03c17277df9bac65b` | ⚠️ Unaudited |
| LiquidOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f26b0f570c2cfb4050b424ef6ea5903818404ac` | ⚠️ Unaudited |
| LiquidVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1693b20932c798a63375db0252be7ca449ffa3b` | ⚠️ Unaudited |
| Liquifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2225c97928934625e8382e6636d30f94c46b6ed3` | ⚠️ Unaudited |
| LLAMMA - crvUSD AMM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ec8e0c868541df59ced49b39cc930c3a8dbd93a` | ⚠️ Unaudited |
| LombardConsortium | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e1871fc8ac793dcf2a74ce004ee21d913763565` | ⚠️ Unaudited |
| LombardTimeLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x055e84e7fe8955e2781010b866f10ef6e1e77e59` | ⚠️ Unaudited |
| LombardTokenPoolV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61003ba35d6f57e0b61442bc88c2c7a45bf56095` | ⚠️ Unaudited |
| LoyaltyPointsMarketSafe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d716d4ec89060411b978e00691fac9795f2cd24` | ⚠️ Unaudited |
| LRTSquare | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d987e04fc47ac625f720f169c658307fd9a16a2` | ⚠️ Unaudited |
| LRTSquared | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x138f08a1798b7cf15adbf051bc2f11bca0ea7743` | ⚠️ Unaudited |
| LRTSquaredAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd2b8c78a5eb18a5f3b0392c5479bb45c77d02ff5` | ⚠️ Unaudited |
| LRTSquaredCore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1cb489ef513e1cc35c4657c91853a2e6ff1957de` | ⚠️ Unaudited |
| LzExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ab536262d4d44b0ec1fc7bf4e6dec4b4557ad21` | ⚠️ Unaudited |
| Mailbox | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x052359563d104867a42c48cb7e688b1af22f0080` | ⚠️ Unaudited |
| MasterMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x566c11b5c2201b69c9269fe924e4395873674335` | ⚠️ Unaudited |
| MembershipManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x047a7749ad683c2fd8a27c7904ca8dd128f15889` | ⚠️ Unaudited |
| MembershipNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x290d981b41b713437265cd7846806d7500307106` | ⚠️ Unaudited |
| MiniMeTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x003ea7f54b6dcf6cee86986edc18143a35f15505` | ⚠️ Unaudited |
| MintStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81d7dab8b95085034d9ce90958038251726b2c59` | ⚠️ Unaudited |
| MomFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x141a206ece672e3198086c5d21f7858ad03669ea` | ⚠️ Unaudited |
| MPTValidatorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9ae261d3aff7d3fccf38fa2d612dd3897e07b2d` | ⚠️ Unaudited |
| MPTValidatorV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b4ca2f2ad3a5464cc8c01ece76c2951f3abefb2` | ⚠️ Unaudited |
| MPTValidatorV5 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe04f26f3f47b6054aeb15796ac4af3c61f08e832` | ⚠️ Unaudited |
| Multicall3 | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xca11bde05977b3631167028862be2a173976ca11` | ⚠️ Unaudited |
| MultiClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32facb5a46e02decaf5f939ab12c123eee203a5f` | ⚠️ Unaudited |
| NativeLBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b89d757668a830f17d693a88d46073501df635d` | ⚠️ Unaudited |
| NEC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc80c051057b774cd75067dc48f8987c4eb97a5e` | ⚠️ Unaudited |
| NectarController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d5a41e85f4ce2433beef476305d307b9205d98d` | ⚠️ Unaudited |
| NetworkRestakeResetHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x274bbdb8db5cca01e8364e781f8c338f79cb2fc8` | ⚠️ Unaudited |
| NonceContractRadar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x087cebbd85a161a50f91b9d7743e8b89fc384e2e` | ⚠️ Unaudited |
| OneWayLendingFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34024ba3b6edaf5cdd1c24fefe1df5d03041f38c` | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0330f95a5110e9f72fe0776a1291834ffeacb1e0`; ethereum `0xe64ae0b202c3876b833a688ed50fdc8c1173e321` | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16cc4ef7c128d7fea96cf46ffd9dd20f76170347` | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x173272739bd7aa6e4e214714048a9fe699453059`; ethereum `0xfe9ab78ed4f9f3dbb168d9f5e5213d78605c9805` | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xbec6f0034cb9055b68dc5f02873b45841ab56af7` | ⚠️ Unaudited |
| PegKeeper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ef89ed0edd93d1ec09e4c07373f69c49f4dccae` | ⚠️ Unaudited |
| PegPrice | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x226845c2ba216b8bb1aaadfd4e14de69426c5445` | ⚠️ Unaudited |
| PodOwner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ac774014e2306dbddac4af7cb0f80087de76f52` | ⚠️ Unaudited |
| PreOrder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b7a14fc3a93c2d43ffd2d2089d4e84c0f97ff44` | ⚠️ Unaudited |
| PriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb26ac124db9439edb7de503ef62e3d3d4e29090c` | ⚠️ Unaudited |
| PriceProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28a6e7ebb6aca8f64145952a9565245c3dc1f32f` | ⚠️ Unaudited |
| ProtocolRevenueManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf8749c3dc1fc0592f21c2593204c45d3be0d322` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27168981aa1c0b6ce941babcf3579887ec25ddd3` | ⚠️ Unaudited |
| ProxyMock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72233ff361ebd3e157e3fa5224365137b6dee7db` | ⚠️ Unaudited |
| PUMP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ed540d53b4b49931544a6d8926f3157784b079c` | ⚠️ Unaudited |
| PumpLockMint | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77d22a277b1b29d9b07c207aa1cdfcc38404eaad` | ⚠️ Unaudited |
| PumpToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2cd2644edab51cb2122f37e03e5f997661d49cfe` | ⚠️ Unaudited |
| PumpTokenOFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xadc9c900b05f39f48bb6f402a1bae60929f4f9a8` | ⚠️ Unaudited |
| PumpTokenOFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb1b273f03c084a906ee64f27beeed7293ef3a52` | ⚠️ Unaudited |
| ReadLib1002 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x74f55bc2a79a27a0bf1d1a35db5d0fc36b9fdb9d` | ⚠️ Unaudited |
| ReceiveUln301 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x245b6e8ffe9ea5fc301e32d16f66bd4c2123eefc` | ⚠️ Unaudited |
| ReceiveUln302 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc02ab410f0734efa3f14628780e6e695156024c2` | ⚠️ Unaudited |
| ReceiveUln302View | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf6c8bd9229b908dbc54fd5eab7dbca037b18c46d` | ⚠️ Unaudited |
| Redeem | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6882ae88956f676a15efe3e9f920aabaaa57497d` | ⚠️ Unaudited |
| RegulationsManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1fcb83123ffbc72373134d09d1c8ab52812cd0b4` | ⚠️ Unaudited |
| Relayer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x153fb4738c2698bbdbf256d0fc90f5503eeb12d4` | ⚠️ Unaudited |
| RelayerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd55f55cb9a39ef1eed4ee1a84ee1b7411be306a` | ⚠️ Unaudited |
| RelayerV2Radar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61ab01ce58d1dff3562bb25870020d555e39d849` | ⚠️ Unaudited |
| Restaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04f744f99ea5c588a8a31906d5b5c91cabb7b5c0` | ⚠️ Unaudited |
| RewardPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29b06ce31449a9f89719137a705cff395450a415` | ⚠️ Unaudited |
| RockXETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3376ebca0a85fc8d791b1001a571c41fdd61514a` | ⚠️ Unaudited |
| RockXRedeem | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3774af7bb6e792963167588ae85b5ab8664ba818` | ⚠️ Unaudited |
| RockXRestaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x351eea2c8de2f7f1fb4cf08aa9423cec4269a098` | ⚠️ Unaudited |
| Secondarymonetarypolicy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x188041ad83145351ef45f4bb91d08886648aeaf8` | ⚠️ Unaudited |
| SecondarymonetarypolicyforWBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e1f162fd143e4a829341efd6dd451b018b10f9c` | ⚠️ Unaudited |
| SemiLog monetary policy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a28789645776eaa95f6d491ff375781ea5b40dd` | ⚠️ Unaudited |
| SendUln301 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd231084bfb234c107d3ee2b22f97f3346fdaf705` | ⚠️ Unaudited |
| SendUln302 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb2ea70c9e858123480642cf96acbcce1372dce1` | ⚠️ Unaudited |
| SEthFiStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76c57e359c0eda0aac54d97832fb1b4451805ad8` | ⚠️ Unaudited |
| sfrxETH2crvUSDleveragezap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43ecffe6c6c1b9f24aeb5c180e659c2a6fce11bc` | ⚠️ Unaudited |
| Sigma | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18d0d914913ac720a6421cc809f3f44697d021b5` | ⚠️ Unaudited |
| SimpleSwapFacility | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-233375 | `0x554335b8c994e47e6dbfdc08fa8aca0510e66ba1` | ⚠️ Unaudited |
| SolvBTCV3 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-233377 | `0x7a56e1c57c7475ccf742a1832b028f0456652f97` | ⚠️ Unaudited |
| StakeAndBake | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9088d8a41744e9cca78d01e6185f2acb81be497a` | ⚠️ Unaudited |
| StakeAndBakeNativeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0bca0fb61480530e87dddbb3bb5f0539c97eae88` | ⚠️ Unaudited |
| StakedLBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x072072317469ebb6c340a47e41561c9c3b782bd9` | ⚠️ Unaudited |
| StakedLBTCOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e28ef6d59fa87530fd058e0d5a94f657f1fdc1c` | ⚠️ Unaudited |
| StakingManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ad639fc9c73f547bfff8b28d091d86d2472fa1e` | ⚠️ Unaudited |
| stBTC | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233368 | `0xf6718b2701d4a6498ef77d7c152b2137ab28b8a3` | ⚠️ Unaudited |
| SusdeMonetaryPolicy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf574cbebbd549273af82b42cd0230de9ea6efef7` | ⚠️ Unaudited |
| SwapFacilitySwapAndBridgeZap | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-233346 | `0x1c2c9efa3693572d008fb55253f7deaaa7f3e6b1` | ⚠️ Unaudited |
| Swapper1InchV6 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x747cac75776b3a0bba3de3e61ec12a6a7f52232e` | ⚠️ Unaudited |
| TapFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x521c420c2a2b461034becbb41d4888b68951f14f` | ⚠️ Unaudited |
| TellerWithMultiAssetSupportDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51d9c2e5f23cc9234fe6a8f9b56fec5f1fbf1a5f` | ⚠️ Unaudited |
| TetherToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e98db51010dd1ade14dd3fb164e218805fdba1b` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4954ae0f18b236b643a4bf126e743f23f755024` | ⚠️ Unaudited |
| TimelockControllerEnumerable | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-233344 | `0x0a3bd90a5a1e52c2900c863bd2b37c3bf65ee310` | ⚠️ Unaudited |
| TNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c377a56c4a5eee3fa4c7a8de0440168e4f11708` | ⚠️ Unaudited |
| TokenAuthority | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2989c38fb3cfcc0eeaf384ee5f1dc7dc520a4663` | ⚠️ Unaudited |
| TokenBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50002cdfe7ccb0c41f519c6eb0653158d11cd907` | ⚠️ Unaudited |
| TopFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0eda20f7499aae7bdadc4e52fd72e49663733ed4` | ⚠️ Unaudited |
| TransferProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0ab759d3a1a4956e8c3c52c71ccb50f20bc342b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-233381 | `0x004e9c3ef86bc1ca1f0bb5c7662861ee93350568` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0295e0ce709723fb25a28b8f67c54a488ba5ae46` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x02e3e2c644601b18ad67a6f09155fe5581af25ea` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x047d41f2544b7f63a8e991af2068a363d210d6da` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x1419b48e5c1f5ce413cf02d6dcbe1314170e3386` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1fcca65fb6ae3b2758b9b2b394cb227eae404e1e`; ethereum `0xdba4c35012ad6b1ad329524c087c0d0510a86bed` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x27e120c518a339c3d8b665e56c4503df785985c2` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x2ec37d45fcae65d9787ecf71dc85a444968f6646` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x33757a5e3afb438733679275c03ee2db43f43ee7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x3b099bc0e9854799688b0542222c938e0a6b7f24` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x4befa2aa9c305238aa3e0b5d17eb20c045269e9d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x552b0c6688fcae5cf0164f27fd129b882a42fa05` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x6f149f8bf1cb0245e70171c9972059c22294aa35` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xb08fbe0e46c284c002d7718b992c7022aa1f061e`; ethereum `0xbfc2d1bb0e5bf51fa6c818e32b0ce3a52a93c1ba` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xd789870bea40d056a4d26055d0befcc8755da146` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xe542919e4b281f10b437f947c8ba224ddfabc716` | ⚠️ Unaudited |
| Treasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ebb3f2feaa15271101a927869b3a56837e73056` | ⚠️ Unaudited |
| TreasuryFeeHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe20403867780129b9b5be8da9a84511b406fc6d2` | ⚠️ Unaudited |
| TreasuryV2Radar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdcc1a1a26807c687300a63a72ef111f6fe994068` | ⚠️ Unaudited |
| TubFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3b67099121e1fbde6276b2802048d1a7dd1b987` | ⚠️ Unaudited |
| UltraLightNode | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b19bd330a84c049b62d5b0fc2ba120217a18c1c` | ⚠️ Unaudited |
| UltraLightNodeV2Radar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe4fb271cfb7bcbb47ea9573321c7bfe309fc220` | ⚠️ Unaudited |
| USD0LpOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2aeb5c8776567c4eeebda1450e343b1bef49ae32` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0ef8fa4760db8f5cd4d993f3e3416f30f942d705` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1b7a4c3797236a1c37f8741c0be35c2c72736fff` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x200057a0a4a97149b0924c5dbba868f283d903a2` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2093bbb221f1d8c7c932c32ee28be6dee4a37a6a` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2ecd155405ca52a5ca0e552981ff44a8252fab81` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x46c4ab30743759ec142f7495b7e935e213cc29a8` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x57aaf0004c716388b21795431cd7d5f9d3bb6a41` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x857b4faa11b143f69f091d1c4ded5480a8d16f8b` | ⚠️ Unaudited |
| UUPSProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-233372 | `0xcd5fe23c85820f7b72d0926fc9b05b43e359b7ee` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xd0ff8996db4bdb46870b7e833b7532f484fead1a` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xd5edf7730abad812247f6f54d7bd31a52554e35e` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x078452351df0bd418ade7328bb693a2eb698880e` | ⚠️ Unaudited |
| Vote | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e9ae452290570834c978edf9b3febbcd4938227` | ⚠️ Unaudited |
| VoxFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x414b1da0bb6e948dc0559d14ebde9fa9572499bf` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0145fd99f1dd6e2491e44fca608c481c9c5b97a9` | ⚠️ Unaudited |
| waBTC | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233341 | `0x09def5abc67e967d54e8233a4b5ebbc1b3fbe34b` | ⚠️ Unaudited |
| waBtcOFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37016812a5c2c54793fd277b7f75086a47377d28` | ⚠️ Unaudited |
| WBTC-crvUSDleveragezap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2518b71ee64e910741f5cf480b19e8e402de4d7` | ⚠️ Unaudited |
| WETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x353f8931ce1c52f643121be129985aab09c4bf52` | ⚠️ Unaudited |
| WETH9 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233361 | `0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2` | ⚠️ Unaudited |
| WithdrawRequestNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ed97c79ded8894036da095b2e2f79f8080a9cd4` | ⚠️ Unaudited |
| WrapperLockEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x991f0e5c5775ca9dd02e30e67f545c36cff3690e` | ⚠️ Unaudited |
| wstETH_Burner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7581ebe7870a220360d216c3404ff7cb79b2a0f` | ⚠️ Unaudited |
| wstETH-crvUSDleveragezap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x293436d4e4a15fbc6ccc400c14a01735e5fc74fd` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (553)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0058544e1fd060608ca516ca16da1469f74e0e76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0132ec1704753838b0f8f5f6332bb9c85ca74ce9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01c6808eb242c826d32f03712d66d5e613782363` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02041731cb8cbae90838bb8632c359fc0c2b0775` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02152d5edcdba56a55efee36ceb9d9f7e47aeb5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0276f431ccbd38f913e86e4bce8e41ed17d5e274` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04584d612802a3a26b160e3f90341e6443ddb76a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x051820c894fd8864247b001d3ec48a40ecefe896` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05ceb4ed12c1d240b2631d569fd21f496e8b556e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05d78174b97cf2ec223ee578cd1f401ff792ca31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x062c22c09537eafaec59e89ff16b09815c524e5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06559ee34d85a88317bf0bfe307444116c631b67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06ce8086965234400fdecab190b115c2c0717047` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0add2ab68be6d8bd399231806362b1b63dadc853` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ae4e6a9a8b01ee22c6a49af22b674a4e033a23d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b81cff64efc89fcdbe7da78054232daa89d73ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0bdb2ed45ea8337f6437ef193c2ffd32fc9b75e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c05997f0cc3c8a51887da1ec78b9c3cd2c98b06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ce41af9dfa0d697da79dd30b8b73bf52a107499` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ce658f9bc3af831271199578449810023dba703` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0cea5a94f8cd3330c4f84944bf4500f8dacd440c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d89774935e3d88b91f0cea0991f4fcd7d9f5470` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d91518d59a6bf5f9b1576edead855c643a70cd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e562d932aab8f00c00d8155df22d3edb7ce470f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f04f5d8bb631197845dae519d03d7997f7d20ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f6a44d2da0101ec77ac344375cb0477423d4d6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x114cb99255d657f7b4432af8ff54d028c232eabe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1176b42a5c76b41e0895705af028ff8a75c08156` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11a347746520664057467cbe46e8b5505fbc5055` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11d93fbe3f0e73ea26d5bd2babf150a9c5ce3248` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1355977499d743131df04702512c4167c6a1ee26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1383981c78393b36f59c4f8f4f12f1b4eb249ebf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13dff8847ea170ebb8439ce732c0a14bb49fdd92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15282d93b1f2c92a034936f6f56a55c0d423e8d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15fadad87913c3bb95f8f9f2e2b287e71ba7817d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19044ca8bbbabdc30e52d4d60854d968d90274da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19670df5e16bea2ba9b9e68b48c054c5baea06b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a783886f03710abf4a6833f50d5e69047123be6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ab91437501dbbeee25953cf66fcd153916665ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ace9dd1bc743ad036ef2d92af42ca70a1159df5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b3757d5ee281eaf6a9c8e5d9b8488b4475aa955` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c3f273491759de2f5f143f302d6885d33c06eaf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d9e59364785ebf00e8ef2c15e132d0f661585ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1dab6560494b04473a0be3e7d83cf3fdf3a51828` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e129c36bc3afc3f0d46a42c9d9cab7586bda94c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e45f27f0e96e9757cff938f2c9d697aa8279c85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e7d3bf98d3f8d8ce193236c3e0ec4b00e32daae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x200711e9c9cd1da993cab3ec2ac1f87debcec3d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x208894346d2995a26493f8c2a5b04fb1ee41a899` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21caf0bce846aaa78c9f23c5a4ec5988ecbf9988` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23208ca4f2b30d8f7d54bf2d5a822d1a2f876501` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x241c66a979125f230c239e79d103e0c2128c6618` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25fc71d7fd38f6233e5f1e88e48323b89005bc07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26bc65d3cc2f034f5277335ee607ea7e16e0e61e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x271fbe8ab7f1fb262f81c77ea5303f03da9d3d6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x276e6b1138d2d49c0cda86658765d12ef84550c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2869e74a15d3c0c797b04feaef93734060a4477c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28abf64947496a34dcbd1e65983f445e0d6d6e09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28af4dadbc5066e994986e8bb105240023dc44b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28deced567a4477e214e15780d345139d0186142` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2902e8586806d29a3d6df197de8990a14438c717` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29ec0d55b8f26298a5350c64f56281eb070bf47e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a7d59e327759acd5d11a8fb652bf4072d28ac04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ab5725f49217f324abf44bbdbcdf521f101ef2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b7e624bdb839975d56d8428d9f6a4cf1160d3e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c97f92eb72dcb3cf1b13d8a14b9d599482fc90d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c9b39f4d18e2e19c1f3d2b378128ee7ebe9f372` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d370111f8ffcf5bff0f56ba43c62c2ad98be7a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d3e95b9190dcfb8a2998df199cf4221678ed3b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d61dcdd36f10b22176e0433b86f74567d529aaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2de76bbe5a785e7ed9af296097207f995d52af49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ef4b38a128ecc1ac06b43055553f95af59523de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f0ba3dbb93cf087e32c15aab46726fdb4fb24cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f50d538606fa9edd2b11e2446beb18c9d5846bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2fdbb1e2419e13a7e043d07eaf412934b73ad7a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30a2f3c3aa6d12c0a36bed210dcf1b32ef6228cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x313328609a9c38459cae56625fff7f2ad6dcde3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3158b86528b264278fedea4900058f72fab99eeb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x319ae539b5ba554b09a46791cdb88b10e4d8f627` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x319c06103bc51b3c01a1a121451aa5e2a2a7778f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31aa15da826da3311788b208d31cae34074d1dc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x326fe113a130c569b44aff93b3637f3ac956ecdf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x33e5fcc13d7439cc62d54c41aa966197145b3cd7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x368440b3121f32df336d393834eafd8fa787c4ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36fb071d5d30e5207ecc010c0ea3cc9ad75838a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37152ce735896d0ecac1b7797d5eca58c8f1c564` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x373a6e5c0c4e89e24819f00aa37ea370917aaff4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x380275805876ff19055ea900cdb2b46a94ecf20d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38179d3bfa6ef1d69a8a7b0b671ba3d8836b2ae8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38654142f5e672ae86a1b21523aafc765e6a1e08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x387177b33830f48199110f186f47797c66556b3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38de71124f7a447a01d67945a51edce9ff491251` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3910dce33441360e4c1d2749afa08e1a59af2546` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x394fe81886baf6e2d5bee37ffa24b07133c320c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x395b14700812cccc38b8e64f0a06ce2045fe9ba3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3993d34e7e99abf6b6f367309975d1360222d446` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a283d9c08e8b55966afb64c515f5143cf907611` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a283ed6bcce8d9dfb673fbfba6e644c9d02e9ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a4636e9ab975d28d3af808b4e1c9fd936374e30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b01dee1733697b954a7648f7b0bf91acff1eab9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b0531eb02ab4ad72e7a531180beef9493a00dd2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b6831c0077a1e44ed0a21841c3bc4dc11bce833` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3be09dea9ca8b6205d05f196e9c68fc35190a514` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c08533dbcd0ab64bff5306a9d6d1de912b81b9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d229e1b4faab62f621ef2f6a610961f7bd7b23b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d9bcca8bc7d438a4c5171435f41a0af5d5e6083` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3da7ff6c15c0c97d9c2df4af82a9910384b372fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ec70c868c63be49c5da0944302293d2c87fc7d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ef366d1b8fd85459e8ec0e6d67b03f5e1ba6552` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f965b507a3ab2dd945c1796c973b206af4e5fcb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4066b6e7bfd761b579902e7e8d03f4feb9b9536e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40745803c2faa8e8402e2ae935933d07ca8f355c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x409893c94aad411030e5a78fd39b015221dfb8b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4169ef3b885416bd553567e78585a97ee52ba700` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4184dd22692c8b50d8d7ee0d7b6028e45dbf8108` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41d5d78049d44444ac6d5e1ec67990f24efacd58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41df5d28c7e801c4df0ab33421e2ed6ce52d2567` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42b9dea10b51a696949715797bdfd69489fc3b32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42dd7dc055a04c3d795a3dfd2eaaf7d480367a02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4316416f429b04fb12df8952fa1434e6b9d77c3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43b4a08ec8dbbfdfb1c8d7d453a0c57ed75a9ac1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44289609cc6781fa2c665796b6c5aabf9ffcedc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4474b891bf3d93e61676912f0739e04b86232dd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45c09dc691b0ad798e10d38b97e9dfd917d4b680` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4710a77a0e0f4c7b0e11cdeb74acb042e62b8d22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x480af6d9abe851e2fc4162b2b93fff8cf84ddee7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x485bbc4f98c071c9bd74ac255262e61f866f071a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4863c6df17dd59311b7f67e694dd835adc87f2d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48a1d85fa0c2279285c0e5b22a2b684d603bf92a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a59d3e5994abd5705b63892e1cf2301720d321c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c18e409dc8619bfb6a1cb56d114c3f592e0ae79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c1d4ad2fa2ba5510acbb0f428ec861e1f7ea3a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c5d4f542765b66154b2e789abd8e69ed4504112` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ca9b3063ec5866a4b82e437059d2c43d1be596f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4cb152b45e667f86a0470776bed0be93a5f1c534` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d45727d2de5ffc811e6a161c3a7233a2ea2e0e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e341b9cf90514a5b7dfec2c9a1f20aa4514c260` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e9c57fd2bd0f47c43f2d62642c1b05894fb9ed0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4efb0e6aba6517ce4fdd3f31013cbbc0bbb8dbfa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f37395bdfbe3a0dca124ad3c9dbfe6a6cbc31d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f8846ae9380b90d2e71d5e3d042dff3e7ebb40d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f8b7a7a346da5c467085377796e91220d904c15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50996c7e748b1b83130b4854945d86ba6fc81f06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50c39ea8f3d72310c8b56a56b333994266e9b477` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50f35f4fd499898801282a415f4c3a689663719f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51e64b34600c27c67da44f8b86c3fe19a3664fae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x528baca578523855a64ee9c276826f934c86a54c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52a430b5b7407fa103c5ae974744e4cc945354e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x539008c98b17803a273edf98aba2d4414ee3f4d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53af943a880b93eb53c8e39def519ae4dcaab0ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53bc8c65bcc9850247b1586389d59744bd28fe6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x541fd749419ca806a8bc7da8ac23d346f2df8b77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5473b1bcbbc45d38d8fbb50a18a73afb8b0637a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54dd79f5ce72b51fcbbcb170dd01e32034323565` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x554833698ae0fb22ecc90b01222903fd62ca4b47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5569796627e8d5d09ac260a0664b2be312ee0c2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56651306b2fa0ef5ae7bcdd78aebf3133cf6ef5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x575ccd8e2d300e2377b43478339e364000318e2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5764d4e56fb5559de9064c11fb7ece9edca93329` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58249a2ec05c1978bf21df1f5ec1847e42455cf4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x584b0fd8f038fe8aedf4057ca3cb3d840446fbbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5852bda4520f1b000c760c1dfb8ba5db8fcbaa90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x589dedbd617e0cbcb916a9223f4d1300c294236b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58dff8622759ea75910a08dba5d060579271dcd7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x596f8e49ace6fc8e09b561972360dc216f1c2a1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a0d404d2042b92eb7948ac5943128e1088fd24b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a4c666e9c7aa86fd4fbfdfbfd04646dcc45c6c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5aa00dce91409b58b6a1338639b9daa63eb22be7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ac53910dea4779e5ac3a7e997df8e9d5f6a7c9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ac73e0cb5e75b7c550bc59126d34393e3323487` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5bea27d52e36c58dbce2921773396f33f2bd780a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c58c83736ebba703afe5784efd95f02ca30d3d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d0f47b32fdd343bfa74ce221808e2abe4a53827` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d93bb673d001498e515617ade09904d71929334` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e0198c158276efaebc5a32c8351fb5d679d4288` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ec52fb644072247c3264f0ac3db981cdebe3eca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f3b5dfeb7b28cdbd7faba78963ee202a494e2a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5fc8c440f7b9c7646c2904ac63c1c0ca714c733e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5fddd320a1e29bb466fa635661b125d51d976f92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x600e571106c31c4ca1bf4177ba808e37146a4a0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6075e53dc2ddcfa81142fbad52315ae627ffce75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60adff2adb728f7d3029e43dea8c212f31c2962c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60b1b1f20373005030095fbe7cde032625fc96c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x614f72481bcbcddfd8e12e56bed0bef0ad84261c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62191ef48bf8fd7a0e10ecb066b0350e6a9c18a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x627bb157ebc0b77ad9f990dd2ad75878603abf08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6304bafaf368861b2d8ae553986220d3acd611be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6340678b2bab22a37d781cd8da958a3cd1d97cdd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63564e223ba1fdb491c6ca68f63c67a578443ac4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x649e0b707a90f1d73b27f83358c4d9bcc91fd622` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64e3c23bfc40722d3b649844055f1d51c1ac041d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x656dd75d33a6241a0c4c2368eb00441ad3113ec0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65a8b215f34df5c30c64523d638ea698065ffa15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x662915e7c1b5c9fa589c194d1437c4a7e64d3f28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6788f52439aca6bff597d3eec2dc9a44b8fee842` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x679fcb9b33fc4ae10ff4f96caef49c1ae3f8fa67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67fe41a94e779ccfa22cff02cc2957dc9c0e4286` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69aafff1218ba086ac782f98cb8399d1226e2af3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69d7469e677e4c8fa4581d36908b0c9c8750baa9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69fb7c45726cfe2badee8317005d3f94be838840` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6af700a9b52bdea2e33dbdcacae638fd8e118bd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b765d07cf966c745b340adca67749fe75b5c345` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6bd792911f4b3714e88fbdf32b351632e7d22c70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c3f90f043a72fa612cbac8115ee7e52bde6e490` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c7ab2202c98c4227c5c46f1417d81144da716ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ddd163240c21189ed0c89d30f6681142bf05ffb` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x6e0bb5b7fff593859d9add6f50b46d50d87ec1fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e70fcdc42d3d63748b7d8883399dcb16bbb5c8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e8f6d1da6232d5e40b0b8758a0145d6c5123eb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f475642a6e85809b1c36fa62763669b1b48dd5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f4e8c8832ed1a1e14e030d56c015196a705fbf9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7002b727ef8f5571cb5f9d70d13dbeeb4dfae9d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x705350c4bcd35c9441419ddd5d2f097d7a55410f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7087b8011cac9541b388b639a1460d9cba4ea0a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70a1151e0bb32484e25c107e3a69886a8361482e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70dc2cb59344391fd8d46938cc0b4495c82ca57d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70fc957eb90e37af82acdbd12675699797745f68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x711d49fe2f96ee300c3025e6997872e62fdb7519` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x715f5f9bb362e78fcec8cad1435714eb3328750b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x721a25f52f65dc9558d9491b8db3266758a68629` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x723c505441ba4bded5fdfc4a547d72511dab28c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72de985c5af6f96f3be22784b5533218421e6394` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7462bc483c21fe316776eff1a6645f6af8a4f5d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x747459fc40d80a500440f9d650818f7fa5754acc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7518f30bd5867b5fa86702556245dead173afe46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x752ebeb79963cf0732e9c0fec72a49fd1defaeac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7624c0dd4f5d06d650ddff25ffec45d032501260` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x769225e12f270e8b4829a47d474ed481bd7575b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76a15d86fbbe691557c8b7a9c4bebf1d8afe00a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76b0d27f268f405584aca51b371b144dd5b0a155` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x783128730280053ef00f675b777288e80565f26a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x796e526de6ebb62b006ea680e52175a22eadbff7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79d584d2d49ec8ce8ea379d69364b700bd35874d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a02b187d711a343808784b07a920876cf9d1e41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a205ed4e3d7f9d0777594501705d8cd405c3b05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a23612f07d81f16b26cf0b5a4c3eca0e8668df2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a3d18e2324536294cd6f054cdde7c994f40391a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7af331398dc340bf327904077eb68f27f75a9693` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b9093de930835997b2a3c4fa0db48a6d9062020` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c42f598d22e8711998bac7c3360a7b3a514863d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c55a5d6755f8b6f250cb1d2f01896935d772463` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c868f045a60501a2f4159446545939771dda323` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ca5b0a2910b33e9759dc7ddb0413949071d7575` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7cae7e3e6b29325907f438ac19aa5d50ca0e6f0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7cc59b5062a8291804a21a2a793c6ce9ea2f0eb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d20ecb58d9d661aef2bd0ee953d53567e695dfb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7da2ef41913adc5285ffdcfa3622f5f81c946500` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e6327cce4bbdb936ee744a7bae6c2978b62183f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e65bdd15c8db8995f80abf0d6593b57dc8be437` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e6c50f75badb725fddaa47c063d8f8407defc5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ec8e02b74cdd1c1c222dbf3bf47f3256b734099` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7fe673201724925b5c477d4e1a4bd3e954688cf5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80333bd8791fee04c4c3e1ca8a524cefa7c94737` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80466c64868e1ab14a1ddf27a676c3fcbe638fe5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81373aad854e31e6da610b2fa5260c6c60db8dbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8181f551c95928c0648d4378dc4d95e847bc3945` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x818709b85052ddc521fae9c78737b27316337e3a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233354 | `0x8236a87084f8b84306f72007f36f2618a5634494` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8282bd15dca2ea2bdf24163e8f2781b30c43a2ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8301ae4fc9c624d1d396cbdaa1ed877821d7c511` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x832f436ad2813c76aae756703cacb5c1028d11da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x847ee1227a9900b73aeeb3a47fac92c52fd54ed9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8484673ca7bff40f82b041916881aea15ee84834` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-233356 | `0x8516f1bbdb7744f76e742b8380f9d3796b9a0010` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x856ff1aaff4782eee27d2c6bbad48781f57f88cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x85adfa60ddf86b67e6fd493bd2c774b2ed772d14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x85fd0626e2d7f07a2b08718f2ea2e044b1d5f163` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x864b42dddc43a610e7506c163048c087f0b406ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x868e6393aea25e8c7e58bc5d4c90a5237c573ff6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87048402c32632b7c4d0a892d82bc1160e8b2393` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8775e9d584008f84dafe7abe75a62f6c91491027` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87d8ee0bae7d352bc05c90b2d3fa3467d6c2357b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89086653f185a0431d24043d92772942c141bab0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89ac9a0b48fc66875de710ab7ee53027970064dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89ca15937e1033af26fe4c5e976216e8c8179408` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89d32bf7b120630b24fe9edc8c7534a73016c999` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89ea1e4232680a66470a725ffd399082a375d1ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8aeb58603efb7a9f63712a2506df01b685ba1c4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b6861d07d3688103d0ad801fabfc4f6bac231de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b8dce09b0deb003573215d5be238534b1cf11bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8bafe0299cb4d3ff75d3f7045554474bf414fd11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c5a7f011f733fbb0a6c969c058716d5ce9bc933` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ccc3d3fc1b90634aaaaedd94e299f3bc120c0d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d76f31e7c3b8f637131df15d9b4a3f8ba93bd75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d77d35604a9f37f488e41d1d916b2a0088f82dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8dd5acadf5131054ebbbd644420e4c4dcf8d18c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e5f5825602bc5db725974bb9e60677d4adc5fbe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ede21203e062d7d1eaec11c4c72ad04cdc15658` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f300679f893584149af176562abc64f8e3b4476` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f4ef8c623c33cdb6a57c19aecb87e161fa7691f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f68f4810cce3194b6cb6f3d50fa58c2c9bdd1d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8fafc84caea1cef8475cb5cb344658d160c9ce0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8fdc0d92647537694f5971b2ca495977a072d990` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x901de2f2b8b525a61b7adc3861f1355ab49106b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x902f09715b6303d4173037652fa7377e5b98089e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x913a3a0d83b87497587e66a7f9603ccd998ba572` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9152e9c04e8fe8373edaa8f5841e25d4015658b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9164e210d123e6566daf113136a73684c4ab01e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92ef4381a03372985985e70fb15e9f081e2e8d14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93919784c523f39cacaa98ee0a9d96c3f32b593e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94aafe0a92a8300f0a2100a7f3de47d6845747a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94fe59afaff2d0a8ea6e8158feb7c65410867a9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9512a85438606dede54297634ded7c7c0c231874` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95729ea44326f8add8a9b1d987279dbdc1dd3dff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95ecdc6caaf7e4805fcef2679a92338351d24297` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x969a0bdd86a230345ad87a6a381de5ed9e6cda85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96a2894042dfec802a23b1ad02f0314ac24b6010` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96d07ff312c56e08462308bca2f5e505e8111a2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96ed424a833859ba08f588b62cba7edacfe3e763` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x972ed7bd3d42d9c0bea3632992ebf7e97186ea4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97f60ffc47fafbcba3ea364bff2abcbabf85c849` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9838eccc42659fa8aa7daf2ad134b53984c9427b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98638facf9a3865cd033f36548713183f6996122` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98a7f18d4e56cfe84e3d081b40001b3d5bd3eb8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98bd662127e795eaa893ba0030c920643a0d94f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99f8dc2eac0940e609a8dcb9fc905f0158af2288` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99fc1d9a942de8b72e1bf1f602c6e2a7289a69be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9bcd17a654bffaa6f8fea38d19661a7210e22196` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9bd5b13f51e27b58174968a8983b450a300cda05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9be82cddb5c266e010c97e4b1b5b2df53c16384d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9bfac7947fc1b64aa9f12b24ecd519daecef3ba5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c2186cabc49782632efd00ba28bdb92086470a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c9e25f9fc4e8134313c2a9f5c719f5c9f4fbd95` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x9cf9f00f3498c2ac856097087e041523dfdd71ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d1301d8e989dac13099f6b5ad900221d4b8b949` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d7e5e347f72e38eba5b1447cd3545f5bd3ab24f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9dfbf2b2af574ca8ba6dd3fd397287944269f720` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e291bfbb158ffaaf1c3a8ccd694be0d49d6aada` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e930731cb4a6bf7ecc11f695a295c60bdd212eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e9dc47335ed4dc80051170d8101a70f689c4365` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f45834f0c8042e36935781b944443e906886a87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f8a4b2b7a736d983b9eed544785d12e2323902b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa19c2f82c178006a5e5eeb4bb746fedb168df5c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1bc1b9af01a0ec78883aa5dc7decdce897e1e76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1c89b61921fa62dcbd27d3e03931851969f4df6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa219008f38a698cc5df6074f0f147a5eab2a2ebe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa36797ba947b378aefe5f726cd87766cd3c25ee3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa402f9e5015be2de7aed695e47f2729246cc9434` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa4281c1c88f0278ff696edeb517052153190fc9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa4fe5a5b9a846458a70cd0748228aed3bf65c2cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa504742cefe2f9027328b49c7cffec3d79b5ab1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa59ba433ac34d2927232918ef5b2eaafcf130ba5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa658742d33ebd2ce2f0bdff73515aa797fd161d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6f5ddbf0bd4d03334523465439d301080574742` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7b5189bca84cd304d8553977c7c614329750d99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7e98815c0193e01165720c3abea43b885ae67fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7edace57a1179bb9f9466d11c7e299c350dea87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7f0616b193aa988118b4f9217d63b1a590dcd1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa85461afc2deec01bda23b5cd267d51f765fba10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa90996896660decc6e997655e065b23788857849` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa0850ddf8ab99286a473a7d2a96e07cefa89034` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa25a6fa9e4dadae0d3ee59bea19fbcf0284830c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa346781ddd7009caa644a4980f044c50cd2ae22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xabc9b1819cc4d9846550f928b985993cf6240439` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xabdfb15609b3e2a255e306969ee467b38e6340ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xabea0b6b9237b589e676dc16f6d74bf7612591f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac288da6a8c5b6406562c27d54ba22666fe3adca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac8a4d55c1d6ea3f84a6c868f2b5a5ec3cef2800` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xacde1f22eeab249d3ca6ba8805c8fee9f52a16e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad19c0506f5277bbf92d8dfde1a51a15aed42606` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-233358 | `0xad2bef31db723b8ad1b9bca41b0f1ebafd1193d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xadcfcf9894335dc340f6cd182afa45999f45fc44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae14b769eac8ddb3caa79bd3d7c21d2986327bce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae23d81d32f71e5947d2054f1a56671144bb1fd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaee70429bdfbf599a979f50d5fde5eb0d317e0f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf34771b16960ea77484a866a34ccdafdc913d9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf75bfd402f3d4ee84978179a6c87d16c4bd1724` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb08eb288c57a37bc82238168ad96e15975602cd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0b2ef168f52f6d1e42f461e11117295ef992daf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0bbf737e14919bc248e68cb34c747831d6dc327` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb18abc534478ec761877c71d2831ea7b182ca5d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb19059ebb43466c323583928285a49f558e572fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb19a9370d404308040a9760678c8ca28affbbb76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1f2cdec61db658f091671f5f199635aef202cac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb25156786248c66a713aca12715e4f9ad8fb4577` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2a059250a136bb01ecc49731167a2dc965d6cb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb311acd3eba1acfa29957cad50746738d52070dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb360a579dc6f77d6a3e8710a9d983811129c428d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb37690178a140fcade6beca8c918bf85b9748856` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3ce0a5d132cd9bf965aba435e650c55edce0062` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3cf78f3e483b63280cfe19d52c9c1bdd03d02ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3e790273f0a89e53d2c20dd4dfe82aa00bbf91b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4fa7f1c67e5ec99b556ec92cbddbcdd384106f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb576491f1e6e5e62f1d8f26062ee822b40b0e0d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb57a959cdb3d5e460f9a7cc48ed05ec29dff049a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb61009896eb35d81d02f15b2a1380252d2141725` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb6348bd8d89c33bd24936384abe01d6caec019e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb713a6db829f7862516402e605abb3ddd6f9d7c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb830a5afcbebb936c30c607a18bbba9f5b0a592f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb85775a6868c1a729447951fd59f9f7f095cd0b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8687d7dc9d8fa32fabde63e19b2dbc9bb8b2138` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8a3f8e783d52cfb9e632276714234661db698e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8ce59fc3717ada4c02eadf9682a9e934f625ebb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb911d7e59ba82fdf477a2ab22ff25125072c9282` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb960c386eca71d28c95cb064d2f4720fbad1f8fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9f861b7755ff09cfd65cfe262d19823607b1f24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbac8459641f765b26e8984f29082629359f084c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb3fda661149f6e45d829d5dd54a1608577c5fa1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc4d0f452b347cf25ee84509ed99bd478ac96b5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc6977251621591fd3e8222cc89081841510b547` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc7507bea8d7bcb49f511cf59651b5114e6e7667` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc89cd85491d81c6ad2954e6d0362ee29fca8f53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbcda2acfe820c92b8e0b389733aaaae4f930a9f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe83fd842db4937c0c3d15b2aba6af7e854f8dcb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbebc44782c7db0a1a60cb6fe97d0b483032ff1c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf2e102fb382d6ec52823c8f81a45e9caa951320` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-233359 | `0xbf5eb70b93d5895c839b8beb3c27dc36f6b56fea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf6ad0ed973767db2c640ec05308304a93f95e07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbfcf63294ad7105dea65aa58f8ae5be2d9d0952a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc00978c2bfc2c0ac159367080992b287c075164b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc014f34d5ba10b6799d76b0f5acdeee577805085` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc03f31fd86a9077785b7bcf6598ce3598fa91113` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc08550a4cc5333f40e593ecc4c4724808085d304` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0bd9eb88840ee181c5cadf0a2914d41a403007a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0c687a198d94b0315137a8eade116a579622f88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc12ce731e7f41fd61eb9d8fa28247d6d67f203f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1793a29609ffff81f10139fa0a7a444c9e106ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1b15d3b262beec0e3565c11c9e0f6134bdacb36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1db00a8e5ef7bfa476395cdbcc98235477cde4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3c02d146bbe9b4b51243ac626862b7fbb5b23e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3ce5497f8dca2481e4fa8fd71c42bea9158c6b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc455e6c7936c2382f04306d329abc5d36444d3f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4a3139d4afd941f56a0b878eb4906b3d20a9a12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4ad29ba4b3c580e6d59105fff484999997675ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc54106a999bede585c9574f2e4cb31df46cbdd83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5fa220347375ac4f91f9e4a4aab362f22801504` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc67a44d958eef0ff316c3a7c9e14fb96f6dedaa3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc684432fd6322c6d58b6bc5d28b18569aa0ad0a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7bab672806932fcaf918b4318796b02b0832856` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc886afb148e8dd4a9ff2170c24c666c5a6e6d641` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc95bd7460ece4007973458d1c0f8ccc46c1880df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9ca319f6da263910fd9b037ec3d817a814ef3d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca3d75ac011bf5ad07a98d02f18225f9bd9a6bdf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb08717451aae9ef950a2524e33b6dcaba60147b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb566e3b6934fa77258d68ea18e931fa75e1aaaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb70bbaec89b577617f835e7a2e126da9e5acf21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb8a15af05102713d4e9628f20824111f9331b2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbed82324afcc67e77e9ce9a23d85d49d65cfe90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc0966d8418d412c599a6421b760a847eb169a8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc0de82d7d520d8d5897d23cf961867bc16fd346` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc35923c43893cc31f2815e216afd7efb60f1fb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc9da5b157ed87e24a9cf562e6a7c05d3c3decd3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xccb2d258a53c6137dd762d41af02f01ac3a2e6f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xccebbf77c3eeb298113392363e0c9863b37111b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcced05c3667877b545285b25f19f794436a1c481` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd0ca0619fc8db4d47b19a1f04105312952e5f6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd37ca043f8479064e10635020c65ffc005d36f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcdb55051fc792303ddc7c1052cc5161baed88e2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce97511db880571a7c31821eb026ef12fcac892e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcfb3cfeae8c3f39aecdf7ec275a00d29eca08535` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcff08a35a5f27f306e2da99ff198db90f13def77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd042233faad5eb4610be9e8f5189d0de5c26a65a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd061d61a4d941c39e5453435b6345dc261c2fce0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd06a653a82605740e7b1361ae2db39f6f0b301ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd074b6bbcbec2f2b4c4265de3d95e521f82bf669` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0c71ecd0787bb792e2bb8eeef030a66467bba1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0e6bc02657451fe16cddd7cab8cd55e39d25d2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd10d54830714003575d9f472d62268a29c902e5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1d73bbc2d3f23c5ba121c9516666bbdd8359113` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd24972c11f91c1bb9eaee97ec96bb9c33cf7af24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd2d43555134dc575bf7279f4ba18809645db0f1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3e576b5dcde3580420a5ef78f3639ba9cd1b967` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd42306df1a805d8053bc652ce0cd9f62bde80146` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd446a98f88e1d053d1f64986e3ed083bb1ab7e5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd51a44d3fae010294c616388b506acda1bfaae46` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233363 | `0xd533a949740bb3306d119cc777fa900ba034cd52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd57aaa5c8116cf0f83f7da5fdcdf90fdde58ea35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6953e2c5546860a244aacb0e5af67a16d3725de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd79964c70cb06224fda4c48387b53e9819bcb71c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd841a741addcb6dea735d3b8c9faf96ba3f3d30d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd87129c3edbb0a7426f5f815461f0863939859c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8f49c747aed8d394f6f1841546e2b83e09a357d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd954bf7968ef68875c9100c9ec890f969504d120` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xda5ddd7270381a7c2717ad10d1c0ecb19e3cdfb2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233365 | `0xdac17f958d2ee523a2206206994597c13d831ec7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdac2d26317c42ae3cb21357b73404120e1da4232` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb979d0a36af0525afa60fc265b1525505c55d79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc892358d55d5ae1ec47a531130d62151eba36e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd05247d34d85bcc145c74e2f1d070352fef83f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd7b5e1db4aafd5c8ec3b764efb8ed265aa5445b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd907f5af01a829cd65c99a132e8720d3e990d02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdeb742e71d57603d8f769ce36f4353468007fc02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdede1cce94cdaa3ce358e561895775db369b72e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf0b24095e15044538866576754f3c964e902ee6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf30c9f6a70ce65a152c5bd09826525d7e97ba49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf41e21dae8bf6ae3eddb83337f8364eb7fc1659` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdfd0f599052c7b0c3ec53f96cffac7b1357796f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe00ff3ebb0cd942d846fb27e4739d2da66989b4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe01f3c1cd14f39303d175c31c16f58707b28976b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe16561b56bdf003b785347d237905bae24f5f973` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe2e558c85e00b4d7529433c1cc78ab678cf62538` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe33de1a8cf9bcdc6b509c44eef66f47c65da6d47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe38daa41be7ca22f724b9cf6d13cd920bf18a3d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3997288987e6297ad550a69b31439504f513267` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3e3fb7e9f48d26817b7210c9bd6b22744790415` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3ee57d3fbdbae9b506a92da79ca8454ac288e2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe4193136b92ba91402313e95347c8e9fad8d27d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe552485d02edd3067fe7fcbd4dd56bb1d3a998d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe55be4c8f2d3c11536f61c8977dac4ad58446059` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5afcf332a5457e8fafcd668bce3df953762dfe7` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-233366 | `0xe5e99ed2764cb90017f95dd5db8b1fb20f6b24fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6cd8c2e46ef396df88048449e5b1c75172b40c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe782adaa40f2148ccd0e181ce090e44900e392ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7cd2b4eb1d98cd6a4a48b6071d46401ac7dc5c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe84c69c1854279230660eb77991cc76505e1ee83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe84f5b1582ba325fdf9ce6b0c1f087ccfc924e54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe85e8db8522c4a8bfc029fae2d7301a67988c99b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe8b2989276e2ca8fdea2268e3551b2b4b2418950` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe8ca7c813534618d639ce487e4c9defab743fd71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe8f6f1955b6d0283cd49d006e4d07b7a403cf743` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe911fa14a49ac37e79ae8a60bd22a5f6a78c85a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe96a9bdb549f4cc4ee8deb7085bd6ffe4b273b1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9c24dd582e37faaca7d44c799530688de92da73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9ebd666954b7f0b5b044704c86b126651f6235d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea6876dde9e3467564acbee1ed5bac88783205e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeaedd2b1b3f0fec6388a4d6b2fe500b59fd9f755` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb4480152bef93fa7bd01a7f427f1dd3069fc4d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb863b2dc8aca4e3c053009d6770e76bd16a55a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xecac9c5f704e954931349da37f60e39f515c11c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed4064f376cb8d68f770fb1ff088a3d0f3ff5c4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xedb24caa96bcb24fa469cefe0780df0f1b711e63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeede111103535e473451311e26c3e6660b0f77e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef1385d2b5dc6d14d5fecb86d53cdbefeca20fcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf10ea2c0d43bc4973cfbcc94ebafc39d1d4af118` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf113929f69fabe165a2280cac00c5f77196aa34c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf18056bbd320e96a48e3fbf8bc061322531aac99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf22995a3ea2c83f6764c711115b23a88411cafdd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf30c701e4915b6b3855798252ce9f46a918da565` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf313a91af8930ae7fe3e6f8ba7ce62024928ee77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf34d1b07c64c4f4d492ae3ddd0aab0658a2975eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4064220871e3b94ca6ab3b0cee8e29178bf47de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf41da8eb692c84db5f545567a7d0857751f84ae5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233367 | `0xf469fbd2abcd6b9de8e169d128226c0fc90a012e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5e9eb18b3ecdfda07ea55133f427d47add6884f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf641db6860fd5f6643d05bd75405a2586a63a141` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf71040d20cc3ffbb28c1abcef46134c7936624e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7dbc322d72c1788a1e37eee738e2ea9c7fa875e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf82fa86fc412d40d1e9d92606c96a76ccbc4f667` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf928f607900bf375775e25c07697476335a0286e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa3e2db8eb6c646e0d24046c1a185934d41a8f7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa6f20b258f91fbf8cd1d25ab77ce844fcb3e759` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa712ee4788c042e2b7bb55e6cb8ec569c4530c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa78ea5d8c39e0a8852abaaf88ae4d32349b7d02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb230bc3de97ee43d2501bcaab9a50bba9b69e1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfbef0cb133e2921aad88bbd993990834ca33bda6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc780e0e273098e6efdad6f30caa48ffc659cd6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc8080867e3f91d616d800bb63acc5a5cb32290e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff051db87adfb0be398016ee5c68280ad49f1fd8` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | sepolia | unit-233370 | `0x0253642ead35b0ff26ba96992a3079c1ca51c1bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1040235acbc1522ddc2f747592e1a63818f2b7fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x52133af59bf01ee7cebf4040681bd47d49a8fc42` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | sepolia | unit-233371 | `0xa7f0616b193aa988118b4f9217d63b1a590dcd1f` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 527
- Live contracts: 0
- Unknown liveness contracts: 527
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=527

Showing first 200 of 527 contracts. The complete deployer expansion list is in `brief.json`.

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x0058544e1fd060608ca516ca16da1469f74e0e76` | non_address_book | unknown | unknown | unverified | n/a | `0xee8b9e072212f51b1a0c105e83b86bdc104f36b2` |
| unverified unclassified | UnnamedContract<br>`0x0132ec1704753838b0f8f5f6332bb9c85ca74ce9` | non_address_book | unknown | unknown | unverified | n/a | `0xb52fa54fc261398058c3ac7b8dd442d7d8b9f0b6` |
| unverified unclassified | UnnamedContract<br>`0x01c6808eb242c826d32f03712d66d5e613782363` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x02041731cb8cbae90838bb8632c359fc0c2b0775` | non_address_book | unknown | unknown | unverified | n/a | `0xb52fa54fc261398058c3ac7b8dd442d7d8b9f0b6` |
| unverified unclassified | UnnamedContract<br>`0x02152d5edcdba56a55efee36ceb9d9f7e47aeb5f` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x0276f431ccbd38f913e86e4bce8e41ed17d5e274` | non_address_book | unknown | unknown | unverified | n/a | `0xb52fa54fc261398058c3ac7b8dd442d7d8b9f0b6` |
| unverified unclassified | UnnamedContract<br>`0x04584d612802a3a26b160e3f90341e6443ddb76a` | non_address_book | unknown | unknown | unverified | n/a | `0xb52fa54fc261398058c3ac7b8dd442d7d8b9f0b6` |
| unverified unclassified | UnnamedContract<br>`0x051820c894fd8864247b001d3ec48a40ecefe896` | non_address_book | unknown | unknown | unverified | n/a | `0xb52fa54fc261398058c3ac7b8dd442d7d8b9f0b6` |
| unverified unclassified | UnnamedContract<br>`0x05ceb4ed12c1d240b2631d569fd21f496e8b556e` | non_address_book | unknown | unknown | unverified | n/a | `0xb52fa54fc261398058c3ac7b8dd442d7d8b9f0b6` |
| unverified unclassified | UnnamedContract<br>`0x05d78174b97cf2ec223ee578cd1f401ff792ca31` | non_address_book | unknown | unknown | unverified | n/a | `0xb52fa54fc261398058c3ac7b8dd442d7d8b9f0b6` |
| unverified unclassified | UnnamedContract<br>`0x062c22c09537eafaec59e89ff16b09815c524e5a` | non_address_book | unknown | unknown | unverified | n/a | `0xb52fa54fc261398058c3ac7b8dd442d7d8b9f0b6` |
| unverified unclassified | UnnamedContract<br>`0x06559ee34d85a88317bf0bfe307444116c631b67` | non_address_book | unknown | unknown | unverified | n/a | `0xb52fa54fc261398058c3ac7b8dd442d7d8b9f0b6` |
| unverified unclassified | UnnamedContract<br>`0x06ce8086965234400fdecab190b115c2c0717047` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x0add2ab68be6d8bd399231806362b1b63dadc853` | non_address_book | unknown | unknown | unverified | n/a | `0xb52fa54fc261398058c3ac7b8dd442d7d8b9f0b6` |
| unverified unclassified | UnnamedContract<br>`0x0ae4e6a9a8b01ee22c6a49af22b674a4e033a23d` | non_address_book | unknown | unknown | unverified | n/a | `0xb52fa54fc261398058c3ac7b8dd442d7d8b9f0b6` |
| unverified unclassified | UnnamedContract<br>`0x0b81cff64efc89fcdbe7da78054232daa89d73ec` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x0bdb2ed45ea8337f6437ef193c2ffd32fc9b75e9` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x0c05997f0cc3c8a51887da1ec78b9c3cd2c98b06` | non_address_book | unknown | unknown | unverified | n/a | `0xb52fa54fc261398058c3ac7b8dd442d7d8b9f0b6` |
| unverified unclassified | UnnamedContract<br>`0x0ce41af9dfa0d697da79dd30b8b73bf52a107499` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x0ce658f9bc3af831271199578449810023dba703` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x0cea5a94f8cd3330c4f84944bf4500f8dacd440c` | non_address_book | unknown | unknown | unverified | n/a | `0xb52fa54fc261398058c3ac7b8dd442d7d8b9f0b6` |
| unverified unclassified | UnnamedContract<br>`0x0d89774935e3d88b91f0cea0991f4fcd7d9f5470` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x0d91518d59a6bf5f9b1576edead855c643a70cd5` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x0e562d932aab8f00c00d8155df22d3edb7ce470f` | non_address_book | unknown | unknown | unverified | n/a | `0xb52fa54fc261398058c3ac7b8dd442d7d8b9f0b6` |
| unverified unclassified | UnnamedContract<br>`0x0f04f5d8bb631197845dae519d03d7997f7d20ba` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0x0f6a44d2da0101ec77ac344375cb0477423d4d6f` | non_address_book | unknown | unknown | unverified | n/a | `0xb52fa54fc261398058c3ac7b8dd442d7d8b9f0b6` |
| unverified unclassified | UnnamedContract<br>`0x114cb99255d657f7b4432af8ff54d028c232eabe` | non_address_book | unknown | unknown | unverified | n/a | `0xb52fa54fc261398058c3ac7b8dd442d7d8b9f0b6` |
| unverified unclassified | UnnamedContract<br>`0x1176b42a5c76b41e0895705af028ff8a75c08156` | non_address_book | unknown | unknown | unverified | n/a | `0xb52fa54fc261398058c3ac7b8dd442d7d8b9f0b6` |
| unverified unclassified | UnnamedContract<br>`0x11a347746520664057467cbe46e8b5505fbc5055` | non_address_book | unknown | unknown | unverified | n/a | `0xb52fa54fc261398058c3ac7b8dd442d7d8b9f0b6` |
| unverified unclassified | UnnamedContract<br>`0x11d93fbe3f0e73ea26d5bd2babf150a9c5ce3248` | non_address_book | unknown | unknown | unverified | n/a | `0xb52fa54fc261398058c3ac7b8dd442d7d8b9f0b6` |
| unverified unclassified | UnnamedContract<br>`0x1355977499d743131df04702512c4167c6a1ee26` | non_address_book | unknown | unknown | unverified | n/a | `0xb52fa54fc261398058c3ac7b8dd442d7d8b9f0b6` |
| unverified unclassified | UnnamedContract<br>`0x1383981c78393b36f59c4f8f4f12f1b4eb249ebf` | non_address_book | unknown | unknown | unverified | n/a | `0xb52fa54fc261398058c3ac7b8dd442d7d8b9f0b6` |
| unverified unclassified | UnnamedContract<br>`0x13dff8847ea170ebb8439ce732c0a14bb49fdd92` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0x15282d93b1f2c92a034936f6f56a55c0d423e8d4` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x15fadad87913c3bb95f8f9f2e2b287e71ba7817d` | non_address_book | unknown | unknown | unverified | n/a | `0xb52fa54fc261398058c3ac7b8dd442d7d8b9f0b6` |
| unverified unclassified | UnnamedContract<br>`0x19044ca8bbbabdc30e52d4d60854d968d90274da` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0x19670df5e16bea2ba9b9e68b48c054c5baea06b8` | non_address_book | unknown | unknown | unverified | n/a | `0xb52fa54fc261398058c3ac7b8dd442d7d8b9f0b6` |
| unverified unclassified | UnnamedContract<br>`0x1a783886f03710abf4a6833f50d5e69047123be6` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x1ab91437501dbbeee25953cf66fcd153916665ca` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0x1ace9dd1bc743ad036ef2d92af42ca70a1159df5` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0x1c3f273491759de2f5f143f302d6885d33c06eaf` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0x1d9e59364785ebf00e8ef2c15e132d0f661585ca` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x1dab6560494b04473a0be3e7d83cf3fdf3a51828` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x1e129c36bc3afc3f0d46a42c9d9cab7586bda94c` | non_address_book | unknown | unknown | unverified | n/a | `0xb52fa54fc261398058c3ac7b8dd442d7d8b9f0b6` |
| unverified unclassified | UnnamedContract<br>`0x1e45f27f0e96e9757cff938f2c9d697aa8279c85` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0x1e7d3bf98d3f8d8ce193236c3e0ec4b00e32daae` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x200711e9c9cd1da993cab3ec2ac1f87debcec3d7` | non_address_book | unknown | unknown | unverified | n/a | `0xb52fa54fc261398058c3ac7b8dd442d7d8b9f0b6` |
| unverified unclassified | UnnamedContract<br>`0x208894346d2995a26493f8c2a5b04fb1ee41a899` | non_address_book | unknown | unknown | unverified | n/a | `0xb52fa54fc261398058c3ac7b8dd442d7d8b9f0b6` |
| unverified unclassified | UnnamedContract<br>`0x21caf0bce846aaa78c9f23c5a4ec5988ecbf9988` | non_address_book | unknown | unknown | unverified | n/a | `0xb52fa54fc261398058c3ac7b8dd442d7d8b9f0b6` |
| unverified unclassified | UnnamedContract<br>`0x23208ca4f2b30d8f7d54bf2d5a822d1a2f876501` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x241c66a979125f230c239e79d103e0c2128c6618` | non_address_book | unknown | unknown | unverified | n/a | `0xb52fa54fc261398058c3ac7b8dd442d7d8b9f0b6` |
| unverified unclassified | UnnamedContract<br>`0x25fc71d7fd38f6233e5f1e88e48323b89005bc07` | non_address_book | unknown | unknown | unverified | n/a | `0xb52fa54fc261398058c3ac7b8dd442d7d8b9f0b6` |
| unverified unclassified | UnnamedContract<br>`0x26bc65d3cc2f034f5277335ee607ea7e16e0e61e` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0x271fbe8ab7f1fb262f81c77ea5303f03da9d3d6a` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x276e6b1138d2d49c0cda86658765d12ef84550c1` | non_address_book | unknown | unknown | unverified | n/a | `0xb52fa54fc261398058c3ac7b8dd442d7d8b9f0b6` |
| unverified unclassified | UnnamedContract<br>`0x2869e74a15d3c0c797b04feaef93734060a4477c` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x28abf64947496a34dcbd1e65983f445e0d6d6e09` | non_address_book | unknown | unknown | unverified | n/a | `0xb52fa54fc261398058c3ac7b8dd442d7d8b9f0b6` |
| unverified unclassified | UnnamedContract<br>`0x28af4dadbc5066e994986e8bb105240023dc44b6` | non_address_book | unknown | unknown | unverified | n/a | `0xb52fa54fc261398058c3ac7b8dd442d7d8b9f0b6` |
| unverified unclassified | UnnamedContract<br>`0x28deced567a4477e214e15780d345139d0186142` | non_address_book | unknown | unknown | unverified | n/a | `0xb52fa54fc261398058c3ac7b8dd442d7d8b9f0b6` |
| unverified unclassified | UnnamedContract<br>`0x2902e8586806d29a3d6df197de8990a14438c717` | non_address_book | unknown | unknown | unverified | n/a | `0xb52fa54fc261398058c3ac7b8dd442d7d8b9f0b6` |
| unverified unclassified | UnnamedContract<br>`0x29ec0d55b8f26298a5350c64f56281eb070bf47e` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x2a7d59e327759acd5d11a8fb652bf4072d28ac04` | non_address_book | unknown | unknown | unverified | n/a | `0xc4ad0ef33a0a4dda3461c479ccb6c36d1e4b7be4` |
| unverified unclassified | UnnamedContract<br>`0x2ab5725f49217f324abf44bbdbcdf521f101ef2c` | non_address_book | unknown | unknown | unverified | n/a | `0xb52fa54fc261398058c3ac7b8dd442d7d8b9f0b6` |
| unverified unclassified | UnnamedContract<br>`0x2b7e624bdb839975d56d8428d9f6a4cf1160d3e9` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x2c97f92eb72dcb3cf1b13d8a14b9d599482fc90d` | non_address_book | unknown | unknown | unverified | n/a | `0xb52fa54fc261398058c3ac7b8dd442d7d8b9f0b6` |
| unverified unclassified | UnnamedContract<br>`0x2c9b39f4d18e2e19c1f3d2b378128ee7ebe9f372` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x2d370111f8ffcf5bff0f56ba43c62c2ad98be7a3` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x2d3e95b9190dcfb8a2998df199cf4221678ed3b6` | non_address_book | unknown | unknown | unverified | n/a | `0xb52fa54fc261398058c3ac7b8dd442d7d8b9f0b6` |
| unverified unclassified | UnnamedContract<br>`0x2d61dcdd36f10b22176e0433b86f74567d529aaa` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0x2ef4b38a128ecc1ac06b43055553f95af59523de` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x2f0ba3dbb93cf087e32c15aab46726fdb4fb24cf` | non_address_book | unknown | unknown | unverified | n/a | `0xb52fa54fc261398058c3ac7b8dd442d7d8b9f0b6` |
| unverified unclassified | UnnamedContract<br>`0x2f50d538606fa9edd2b11e2446beb18c9d5846bb` | non_address_book | unknown | unknown | unverified | n/a | `0xc4ad0ef33a0a4dda3461c479ccb6c36d1e4b7be4` |
| unverified unclassified | UnnamedContract<br>`0x2fdbb1e2419e13a7e043d07eaf412934b73ad7a8` | non_address_book | unknown | unknown | unverified | n/a | `0xb52fa54fc261398058c3ac7b8dd442d7d8b9f0b6` |
| unverified unclassified | UnnamedContract<br>`0x30a2f3c3aa6d12c0a36bed210dcf1b32ef6228cc` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x313328609a9c38459cae56625fff7f2ad6dcde3b` | non_address_book | unknown | unknown | unverified | n/a | `0xb52fa54fc261398058c3ac7b8dd442d7d8b9f0b6` |
| unverified unclassified | UnnamedContract<br>`0x3158b86528b264278fedea4900058f72fab99eeb` | non_address_book | unknown | unknown | unverified | n/a | `0xb52fa54fc261398058c3ac7b8dd442d7d8b9f0b6` |
| unverified unclassified | UnnamedContract<br>`0x319ae539b5ba554b09a46791cdb88b10e4d8f627` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0x319c06103bc51b3c01a1a121451aa5e2a2a7778f` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x31aa15da826da3311788b208d31cae34074d1dc7` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x326fe113a130c569b44aff93b3637f3ac956ecdf` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x33e5fcc13d7439cc62d54c41aa966197145b3cd7` | non_address_book | unknown | unknown | unverified | n/a | `0xb52fa54fc261398058c3ac7b8dd442d7d8b9f0b6` |
| unverified unclassified | UnnamedContract<br>`0x368440b3121f32df336d393834eafd8fa787c4ec` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x36fb071d5d30e5207ecc010c0ea3cc9ad75838a8` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x37152ce735896d0ecac1b7797d5eca58c8f1c564` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0x373a6e5c0c4e89e24819f00aa37ea370917aaff4` | non_address_book | unknown | unknown | unverified | n/a | `0xb52fa54fc261398058c3ac7b8dd442d7d8b9f0b6` |
| unverified unclassified | UnnamedContract<br>`0x380275805876ff19055ea900cdb2b46a94ecf20d` | non_address_book | unknown | unknown | unverified | n/a | `0xb52fa54fc261398058c3ac7b8dd442d7d8b9f0b6` |
| unverified unclassified | UnnamedContract<br>`0x38179d3bfa6ef1d69a8a7b0b671ba3d8836b2ae8` | non_address_book | unknown | unknown | unverified | n/a | `0xb52fa54fc261398058c3ac7b8dd442d7d8b9f0b6` |
| unverified unclassified | UnnamedContract<br>`0x38654142f5e672ae86a1b21523aafc765e6a1e08` | non_address_book | unknown | unknown | unverified | n/a | `0xb52fa54fc261398058c3ac7b8dd442d7d8b9f0b6` |
| unverified unclassified | UnnamedContract<br>`0x387177b33830f48199110f186f47797c66556b3b` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x38de71124f7a447a01d67945a51edce9ff491251` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0x3910dce33441360e4c1d2749afa08e1a59af2546` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x394fe81886baf6e2d5bee37ffa24b07133c320c6` | non_address_book | unknown | unknown | unverified | n/a | `0xb52fa54fc261398058c3ac7b8dd442d7d8b9f0b6` |
| unverified unclassified | UnnamedContract<br>`0x395b14700812cccc38b8e64f0a06ce2045fe9ba3` | non_address_book | unknown | unknown | unverified | n/a | `0xb52fa54fc261398058c3ac7b8dd442d7d8b9f0b6` |
| unverified unclassified | UnnamedContract<br>`0x3993d34e7e99abf6b6f367309975d1360222d446` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x3a283d9c08e8b55966afb64c515f5143cf907611` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x3a283ed6bcce8d9dfb673fbfba6e644c9d02e9ab` | non_address_book | unknown | unknown | unverified | n/a | `0xb52fa54fc261398058c3ac7b8dd442d7d8b9f0b6` |
| unverified unclassified | UnnamedContract<br>`0x3a4636e9ab975d28d3af808b4e1c9fd936374e30` | non_address_book | unknown | unknown | unverified | n/a | `0xb52fa54fc261398058c3ac7b8dd442d7d8b9f0b6` |
| unverified unclassified | UnnamedContract<br>`0x3b01dee1733697b954a7648f7b0bf91acff1eab9` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0x3b0531eb02ab4ad72e7a531180beef9493a00dd2` | non_address_book | unknown | unknown | unverified | n/a | `0xb52fa54fc261398058c3ac7b8dd442d7d8b9f0b6` |
| unverified unclassified | UnnamedContract<br>`0x3b6831c0077a1e44ed0a21841c3bc4dc11bce833` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x3be09dea9ca8b6205d05f196e9c68fc35190a514` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x3c08533dbcd0ab64bff5306a9d6d1de912b81b9e` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x3d229e1b4faab62f621ef2f6a610961f7bd7b23b` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x3d9bcca8bc7d438a4c5171435f41a0af5d5e6083` | non_address_book | unknown | unknown | unverified | n/a | `0xee8b9e072212f51b1a0c105e83b86bdc104f36b2` |
| unverified unclassified | UnnamedContract<br>`0x3da7ff6c15c0c97d9c2df4af82a9910384b372fd` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x3ec70c868c63be49c5da0944302293d2c87fc7d1` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0x3ef366d1b8fd85459e8ec0e6d67b03f5e1ba6552` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0x3f965b507a3ab2dd945c1796c973b206af4e5fcb` | non_address_book | unknown | unknown | unverified | n/a | `0xb52fa54fc261398058c3ac7b8dd442d7d8b9f0b6` |
| unverified unclassified | UnnamedContract<br>`0x4066b6e7bfd761b579902e7e8d03f4feb9b9536e` | non_address_book | unknown | unknown | unverified | n/a | `0xb52fa54fc261398058c3ac7b8dd442d7d8b9f0b6` |
| unverified unclassified | UnnamedContract<br>`0x40745803c2faa8e8402e2ae935933d07ca8f355c` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x409893c94aad411030e5a78fd39b015221dfb8b7` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x4169ef3b885416bd553567e78585a97ee52ba700` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x4184dd22692c8b50d8d7ee0d7b6028e45dbf8108` | non_address_book | unknown | unknown | unverified | n/a | `0xb52fa54fc261398058c3ac7b8dd442d7d8b9f0b6` |
| unverified unclassified | UnnamedContract<br>`0x41d5d78049d44444ac6d5e1ec67990f24efacd58` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x41df5d28c7e801c4df0ab33421e2ed6ce52d2567` | non_address_book | unknown | unknown | unverified | n/a | `0xc4ad0ef33a0a4dda3461c479ccb6c36d1e4b7be4` |
| unverified unclassified | UnnamedContract<br>`0x42b9dea10b51a696949715797bdfd69489fc3b32` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x42dd7dc055a04c3d795a3dfd2eaaf7d480367a02` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x4316416f429b04fb12df8952fa1434e6b9d77c3f` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x43b4a08ec8dbbfdfb1c8d7d453a0c57ed75a9ac1` | non_address_book | unknown | unknown | unverified | n/a | `0xb52fa54fc261398058c3ac7b8dd442d7d8b9f0b6` |
| unverified unclassified | UnnamedContract<br>`0x44289609cc6781fa2c665796b6c5aabf9ffcedc5` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0x4474b891bf3d93e61676912f0739e04b86232dd5` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0x45c09dc691b0ad798e10d38b97e9dfd917d4b680` | non_address_book | unknown | unknown | unverified | n/a | `0xb52fa54fc261398058c3ac7b8dd442d7d8b9f0b6` |
| unverified unclassified | UnnamedContract<br>`0x4710a77a0e0f4c7b0e11cdeb74acb042e62b8d22` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x47c4ac7d1d0ff9594de5f3d2d07ff67253620a1c` | non_address_book | unknown | unknown | unverified | n/a | `0x03db22c204cda695d387f43cff7a4be711933226` |
| unverified unclassified | UnnamedContract<br>`0x480af6d9abe851e2fc4162b2b93fff8cf84ddee7` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x4863c6df17dd59311b7f67e694dd835adc87f2d3` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x48a1d85fa0c2279285c0e5b22a2b684d603bf92a` | non_address_book | unknown | unknown | unverified | n/a | `0xb52fa54fc261398058c3ac7b8dd442d7d8b9f0b6` |
| unverified unclassified | UnnamedContract<br>`0x4a59d3e5994abd5705b63892e1cf2301720d321c` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0x4c18e409dc8619bfb6a1cb56d114c3f592e0ae79` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x4c1d4ad2fa2ba5510acbb0f428ec861e1f7ea3a4` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x4c5d4f542765b66154b2e789abd8e69ed4504112` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x4ca9b3063ec5866a4b82e437059d2c43d1be596f` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x4cb152b45e667f86a0470776bed0be93a5f1c534` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x4d45727d2de5ffc811e6a161c3a7233a2ea2e0e7` | non_address_book | unknown | unknown | unverified | n/a | `0xb52fa54fc261398058c3ac7b8dd442d7d8b9f0b6` |
| unverified unclassified | UnnamedContract<br>`0x4e341b9cf90514a5b7dfec2c9a1f20aa4514c260` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0x4e9c57fd2bd0f47c43f2d62642c1b05894fb9ed0` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0x4efb0e6aba6517ce4fdd3f31013cbbc0bbb8dbfa` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x4f37395bdfbe3a0dca124ad3c9dbfe6a6cbc31d6` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x4f8846ae9380b90d2e71d5e3d042dff3e7ebb40d` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x4f8b7a7a346da5c467085377796e91220d904c15` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0x50996c7e748b1b83130b4854945d86ba6fc81f06` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x50c39ea8f3d72310c8b56a56b333994266e9b477` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x50f35f4fd499898801282a415f4c3a689663719f` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x51e64b34600c27c67da44f8b86c3fe19a3664fae` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0x528baca578523855a64ee9c276826f934c86a54c` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x52a430b5b7407fa103c5ae974744e4cc945354e6` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x539008c98b17803a273edf98aba2d4414ee3f4d7` | non_address_book | unknown | unknown | unverified | n/a | `0xb52fa54fc261398058c3ac7b8dd442d7d8b9f0b6` |
| unverified unclassified | UnnamedContract<br>`0x53af943a880b93eb53c8e39def519ae4dcaab0ef` | non_address_book | unknown | unknown | unverified | n/a | `0xb52fa54fc261398058c3ac7b8dd442d7d8b9f0b6` |
| unverified unclassified | UnnamedContract<br>`0x53bc8c65bcc9850247b1586389d59744bd28fe6a` | non_address_book | unknown | unknown | unverified | n/a | `0xb52fa54fc261398058c3ac7b8dd442d7d8b9f0b6` |
| unverified unclassified | UnnamedContract<br>`0x5473b1bcbbc45d38d8fbb50a18a73afb8b0637a7` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x54dd79f5ce72b51fcbbcb170dd01e32034323565` | non_address_book | unknown | unknown | unverified | n/a | `0xb52fa54fc261398058c3ac7b8dd442d7d8b9f0b6` |
| unverified unclassified | UnnamedContract<br>`0x554833698ae0fb22ecc90b01222903fd62ca4b47` | non_address_book | unknown | unknown | unverified | n/a | `0xb52fa54fc261398058c3ac7b8dd442d7d8b9f0b6` |
| unverified unclassified | UnnamedContract<br>`0x5569796627e8d5d09ac260a0664b2be312ee0c2d` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0x56651306b2fa0ef5ae7bcdd78aebf3133cf6ef5e` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0x575ccd8e2d300e2377b43478339e364000318e2c` | non_address_book | unknown | unknown | unverified | n/a | `0xc4ad0ef33a0a4dda3461c479ccb6c36d1e4b7be4` |
| unverified unclassified | UnnamedContract<br>`0x5764d4e56fb5559de9064c11fb7ece9edca93329` | non_address_book | unknown | unknown | unverified | n/a | `0xee8b9e072212f51b1a0c105e83b86bdc104f36b2` |
| unverified unclassified | UnnamedContract<br>`0x58249a2ec05c1978bf21df1f5ec1847e42455cf4` | non_address_book | unknown | unknown | unverified | n/a | `0xb52fa54fc261398058c3ac7b8dd442d7d8b9f0b6` |
| unverified unclassified | UnnamedContract<br>`0x584b0fd8f038fe8aedf4057ca3cb3d840446fbbf` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x5852bda4520f1b000c760c1dfb8ba5db8fcbaa90` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x589dedbd617e0cbcb916a9223f4d1300c294236b` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0x58dff8622759ea75910a08dba5d060579271dcd7` | non_address_book | unknown | unknown | unverified | n/a | `0xb52fa54fc261398058c3ac7b8dd442d7d8b9f0b6` |
| unverified unclassified | UnnamedContract<br>`0x596f8e49ace6fc8e09b561972360dc216f1c2a1f` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x5a0d404d2042b92eb7948ac5943128e1088fd24b` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x5a4c666e9c7aa86fd4fbfdfbfd04646dcc45c6c5` | non_address_book | unknown | unknown | unverified | n/a | `0xb52fa54fc261398058c3ac7b8dd442d7d8b9f0b6` |
| unverified unclassified | UnnamedContract<br>`0x5aa00dce91409b58b6a1338639b9daa63eb22be7` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x5ac53910dea4779e5ac3a7e997df8e9d5f6a7c9d` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x5ac73e0cb5e75b7c550bc59126d34393e3323487` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0x5bea27d52e36c58dbce2921773396f33f2bd780a` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x5c58c83736ebba703afe5784efd95f02ca30d3d3` | non_address_book | unknown | unknown | unverified | n/a | `0xb52fa54fc261398058c3ac7b8dd442d7d8b9f0b6` |
| unverified unclassified | UnnamedContract<br>`0x5d0f47b32fdd343bfa74ce221808e2abe4a53827` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x5d93bb673d001498e515617ade09904d71929334` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0x5e0198c158276efaebc5a32c8351fb5d679d4288` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x5ec52fb644072247c3264f0ac3db981cdebe3eca` | non_address_book | unknown | unknown | unverified | n/a | `0xb52fa54fc261398058c3ac7b8dd442d7d8b9f0b6` |
| unverified unclassified | UnnamedContract<br>`0x5f3b5dfeb7b28cdbd7faba78963ee202a494e2a2` | non_address_book | unknown | unknown | unverified | n/a | `0xc4ad0ef33a0a4dda3461c479ccb6c36d1e4b7be4` |
| unverified unclassified | UnnamedContract<br>`0x5fc8c440f7b9c7646c2904ac63c1c0ca714c733e` | non_address_book | unknown | unknown | unverified | n/a | `0xb52fa54fc261398058c3ac7b8dd442d7d8b9f0b6` |
| unverified unclassified | UnnamedContract<br>`0x5fddd320a1e29bb466fa635661b125d51d976f92` | non_address_book | unknown | unknown | unverified | n/a | `0xb52fa54fc261398058c3ac7b8dd442d7d8b9f0b6` |
| unverified unclassified | UnnamedContract<br>`0x600e571106c31c4ca1bf4177ba808e37146a4a0c` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x6075e53dc2ddcfa81142fbad52315ae627ffce75` | non_address_book | unknown | unknown | unverified | n/a | `0xb52fa54fc261398058c3ac7b8dd442d7d8b9f0b6` |
| unverified unclassified | UnnamedContract<br>`0x60adff2adb728f7d3029e43dea8c212f31c2962c` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0x60b1b1f20373005030095fbe7cde032625fc96c2` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x614f72481bcbcddfd8e12e56bed0bef0ad84261c` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0x62191ef48bf8fd7a0e10ecb066b0350e6a9c18a9` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x627bb157ebc0b77ad9f990dd2ad75878603abf08` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x6304bafaf368861b2d8ae553986220d3acd611be` | non_address_book | unknown | unknown | unverified | n/a | `0xb52fa54fc261398058c3ac7b8dd442d7d8b9f0b6` |
| unverified unclassified | UnnamedContract<br>`0x6340678b2bab22a37d781cd8da958a3cd1d97cdd` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x63564e223ba1fdb491c6ca68f63c67a578443ac4` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x649e0b707a90f1d73b27f83358c4d9bcc91fd622` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x64e3c23bfc40722d3b649844055f1d51c1ac041d` | non_address_book | unknown | unknown | unverified | n/a | `0xc4ad0ef33a0a4dda3461c479ccb6c36d1e4b7be4` |
| unverified unclassified | UnnamedContract<br>`0x656dd75d33a6241a0c4c2368eb00441ad3113ec0` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x65a8b215f34df5c30c64523d638ea698065ffa15` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x662915e7c1b5c9fa589c194d1437c4a7e64d3f28` | non_address_book | unknown | unknown | unverified | n/a | `0xb52fa54fc261398058c3ac7b8dd442d7d8b9f0b6` |
| unverified unclassified | UnnamedContract<br>`0x679fcb9b33fc4ae10ff4f96caef49c1ae3f8fa67` | non_address_book | unknown | unknown | unverified | n/a | `0xc4ad0ef33a0a4dda3461c479ccb6c36d1e4b7be4` |
| unverified unclassified | UnnamedContract<br>`0x67fe41a94e779ccfa22cff02cc2957dc9c0e4286` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x69aafff1218ba086ac782f98cb8399d1226e2af3` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x69d7469e677e4c8fa4581d36908b0c9c8750baa9` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x69fb7c45726cfe2badee8317005d3f94be838840` | non_address_book | unknown | unknown | unverified | n/a | `0xc4ad0ef33a0a4dda3461c479ccb6c36d1e4b7be4` |
| unverified unclassified | UnnamedContract<br>`0x6af700a9b52bdea2e33dbdcacae638fd8e118bd1` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x6b765d07cf966c745b340adca67749fe75b5c345` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x6bd792911f4b3714e88fbdf32b351632e7d22c70` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0x6c3f90f043a72fa612cbac8115ee7e52bde6e490` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |

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
| Zenith-Bitcorn-OFT-Swap-Facility.pdf | BitcornOFT | own proxy deployment | BitcornOFT (proxy) (selected) `0x386e7a3a0c0919c9d53c3b04ff67e73ff9e45fb6` — deployed 2024-11-14 21:39:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Zenith-Bitcorn-OFT-Swap-Facility.pdf | ERC20PausableUpgradeable | unmatched — not counted | — | mentioned in findings as parent contract | no |
| cantina-bitcorn-oft-1.pdf | BitcornOFT | own proxy deployment | BitcornOFT (proxy) (selected) `0x386e7a3a0c0919c9d53c3b04ff67e73ff9e45fb6` — deployed 2024-11-14 21:39:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cantina-bitcorn-oft-1.pdf | WrappedBitcornNativeOFTAdapter | unmatched — not counted | — | mentioned in findings context | no |
| cantina-bitcorn-oft-1.pdf | SwapFacility | unmatched — not counted | — | mentioned in findings context | no |
| cantina-bitcorn-oft-1.pdf | Auth | unmatched — not counted | — | mentioned in findings context | no |
| cantina-bitcorn-oft-2.pdf | WrappedBitcornNativeOFTAdapter | unmatched — not counted | — | Findings 3.1.1, 3.1.2 | no |
| cantina-bitcorn-oft-2.pdf | SimpleSwapFacility | unmatched — not counted | — | Findings 3.1.3, 3.2.1, 3.2.2, 3.2.3, 3.3.1, 3.3.2, 3.3.3, 3.3.4 | no |
| cantina-bitcorn-oft-2.pdf | Vault | unmatched — not counted | — | Finding 3.2.1 | no |
| cantina-bitcorn-oft-2.pdf | SwapFacilitySwapAndBridgeZap | unmatched — not counted | — | Findings 3.4.1, 3.4.2 | no |
| cantina-bitcorn-oft-3.pdf | CornOFT | own proxy deployment | CornOFT (proxy) (selected) `0x44f49ff0da2498bcb1d3dc7c0f999578f67fd8c6` — deployed 2025-02-25 21:12:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| ethereum | `0x5e14fe5ea32ee54c6cb3c237ffdce1c57df2a0be` | aBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf939e0a03fb07f59a73314e73794be0e57ac1b4e` | crvUSDStablecoin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6a9a65b84843f5fd4ac9a0471c4fc11afffbce4a` | EnzoBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48` | FiatTokenProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7a56e1c57c7475ccf742a1832b028f0456652f97` | SolvBTCV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf6718b2701d4a6498ef77d7c152b2137ab28b8a3` | stBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcd5fe23c85820f7b72d0926fc9b05b43e359b7ee` | UUPSProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x09def5abc67e967d54e8233a4b5ebbc1b3fbe34b` | waBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2` | WETH9 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 202 |
| upstream | 4 |
| standard_library | 23 |
| needs_review | 553 |

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
