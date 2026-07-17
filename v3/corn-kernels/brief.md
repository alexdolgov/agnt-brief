# Agentic Audit Brief: Corn Kernels

## Export Authority

- Production state: **published scope**
- Raw selected rows: 3 across 3 audit(s)
- Eligible audit results: 6 (3 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Corn Kernels (`corn-kernels`)
- Website: [https://usecorn.com/](https://usecorn.com/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
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
- Outside the address book: 231 discovered implementations shown in the inventory but excluded from coverage (19 third-party/infra; 18 standard proxy/library)
- Proxy deployments represented within implementation groups: 42
- Confirmed-live implementations: 17 of 261 unique; 244 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 2/229
- Verified + Unaudited implementations: 227
- Verified by bytecode match: 0
- Unverified implementations: 32
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
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x316c1b6b0c7051a10073abf0d06f9cc5ae2ab302` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x7efb3515d9ec4537fafca635a1de7da7a5c5c567` | ⚠️ Unaudited |
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
| OptimizedTransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0330f95a5110e9f72fe0776a1291834ffeacb1e0` | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16cc4ef7c128d7fea96cf46ffd9dd20f76170347` | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x173272739bd7aa6e4e214714048a9fe699453059` | ⚠️ Unaudited |
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
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x1fcca65fb6ae3b2758b9b2b394cb227eae404e1e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x27e120c518a339c3d8b665e56c4503df785985c2` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x2ec37d45fcae65d9787ecf71dc85a444968f6646` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x33757a5e3afb438733679275c03ee2db43f43ee7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x3b099bc0e9854799688b0542222c938e0a6b7f24` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x4befa2aa9c305238aa3e0b5d17eb20c045269e9d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x552b0c6688fcae5cf0164f27fd129b882a42fa05` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x6f149f8bf1cb0245e70171c9972059c22294aa35` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xb08fbe0e46c284c002d7718b992c7022aa1f061e` | ⚠️ Unaudited |
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

### ❓ Unverified (32)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b3757d5ee281eaf6a9c8e5d9b8488b4475aa955` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2de76bbe5a785e7ed9af296097207f995d52af49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x485bbc4f98c071c9bd74ac255262e61f866f071a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x541fd749419ca806a8bc7da8ac23d346f2df8b77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6788f52439aca6bff597d3eec2dc9a44b8fee842` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c7ab2202c98c4227c5c46f1417d81144da716ff` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x6e0bb5b7fff593859d9add6f50b46d50d87ec1fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76b0d27f268f405584aca51b371b144dd5b0a155` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233354 | `0x8236a87084f8b84306f72007f36f2618a5634494` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-233356 | `0x8516f1bbdb7744f76e742b8380f9d3796b9a0010` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x85adfa60ddf86b67e6fd493bd2c774b2ed772d14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93919784c523f39cacaa98ee0a9d96c3f32b593e` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x9cf9f00f3498c2ac856097087e041523dfdd71ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7f0616b193aa988118b4f9217d63b1a590dcd1f` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-233358 | `0xad2bef31db723b8ad1b9bca41b0f1ebafd1193d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8ce59fc3717ada4c02eadf9682a9e934f625ebb` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-233359 | `0xbf5eb70b93d5895c839b8beb3c27dc36f6b56fea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb566e3b6934fa77258d68ea18e931fa75e1aaaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc0966d8418d412c599a6421b760a847eb169a8c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233363 | `0xd533a949740bb3306d119cc777fa900ba034cd52` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xda5ddd7270381a7c2717ad10d1c0ecb19e3cdfb2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233365 | `0xdac17f958d2ee523a2206206994597c13d831ec7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd7b5e1db4aafd5c8ec3b764efb8ed265aa5445b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf0b24095e15044538866576754f3c964e902ee6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe33de1a8cf9bcdc6b509c44eef66f47c65da6d47` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-233366 | `0xe5e99ed2764cb90017f95dd5db8b1fb20f6b24fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeaedd2b1b3f0fec6388a4d6b2fe500b59fd9f755` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xecac9c5f704e954931349da37f60e39f515c11c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233367 | `0xf469fbd2abcd6b9de8e169d128226c0fc90a012e` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | sepolia | unit-233370 | `0x0253642ead35b0ff26ba96992a3079c1ca51c1bd` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | sepolia | unit-233371 | `0xa7f0616b193aa988118b4f9217d63b1a590dcd1f` | ❓ Unverified |

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
