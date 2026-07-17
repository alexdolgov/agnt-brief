# Agentic Audit Brief: Corn Kernels

## Project Overview

- Project: Corn Kernels (`corn-kernels`)
- Website: [https://usecorn.com/](https://usecorn.com/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:10.541Z
- Pipeline run: v2-2026-07-02-3df6b3
- Chains: ethereum
- Contract surface: 229 unique implementations (229 raw deployments)
- DeFi Llama TVL: $283,452.18
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Farm. Structurally: 187 project-authored contract(s) across 1 chain(s); 2 ERC4626 vaults, 28 ERC20 tokens, 3 ERC721 NFTs, 2 ERC1155 multi-tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 53 common project-authored base contract(s) (proxy, erc1967upgrade, worker). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 229; live-surface contracts included: 229 (220 live, 9 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 7/196 (3.6%)
- Deployed-live implementations: 220 of 229 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 7/229
- Verified + Unaudited implementations: 222
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 229
- Raw deployments: 229
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-03 (aging)
- Audit staleness (calendar age): 0 fresh, 5 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 7 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 3.6% (Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Spearbit | Tier 1 | 7 | 3.1% | 2025-03 |
| Zenith | Tier 2 | 1 | 0.4% | 2024-11 |

## Contract Surface

### ✅ Verified + Audited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Bitcorn | unknown | ethereum | n/a | [`0x0253642ead35b0ff26ba96992a3079c1ca51c1bd`](./contracts/ethereum-1/0x0253642ead35b0ff26ba96992a3079c1ca51c1bd/) | ✅ Audited |
| BitcornOFT | unknown | ethereum | n/a | [`0x386e7a3a0c0919c9d53c3b04ff67e73ff9e45fb6`](./contracts/ethereum-1/0x386e7a3a0c0919c9d53c3b04ff67e73ff9e45fb6/) | ✅ Audited |
| CornOFT | unknown | ethereum | n/a | [`0x44f49ff0da2498bcb1d3dc7c0f999578f67fd8c6`](./contracts/ethereum-1/0x44f49ff0da2498bcb1d3dc7c0f999578f67fd8c6/) | ✅ Audited |
| CornSilo | unknown | ethereum | n/a | [`0x8bc93498b861fd98277c3b51d240e7e56e48f23c`](./contracts/ethereum-1/0x8bc93498b861fd98277c3b51d240e7e56e48f23c/) | ✅ Audited |
| SimpleSwapFacility | unknown | ethereum | n/a | [`0x554335b8c994e47e6dbfdc08fa8aca0510e66ba1`](./contracts/ethereum-1/0x554335b8c994e47e6dbfdc08fa8aca0510e66ba1/) | ✅ Audited |
| SwapFacilitySwapAndBridgeZap | unknown | ethereum | n/a | [`0x1c2c9efa3693572d008fb55253f7deaaa7f3e6b1`](./contracts/ethereum-1/0x1c2c9efa3693572d008fb55253f7deaaa7f3e6b1/) | ✅ Audited |
| Vault | unknown | ethereum | n/a | [`0x078452351df0bd418ade7328bb693a2eb698880e`](./contracts/ethereum-1/0x078452351df0bd418ade7328bb693a2eb698880e/) | ✅ Audited |

### ⚠️ Verified + Unaudited (222)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| aBTC | unknown | ethereum | n/a | [`0x5e14fe5ea32ee54c6cb3c237ffdce1c57df2a0be`](./contracts/ethereum-1/0x5e14fe5ea32ee54c6cb3c237ffdce1c57df2a0be/) | ⚠️ Unaudited |
| AddressProvider | unknown | ethereum | n/a | [`0x20ee00f43ef299dba82ba6fef537756dabe38cc7`](./contracts/ethereum-1/0x20ee00f43ef299dba82ba6fef537756dabe38cc7/) | ⚠️ Unaudited |
| AggMonetaryPolicy-monetarypolicybasedonaggregatedpricesforcrvUSD | unknown | ethereum | n/a | [`0x0901b541beff2cd44859701619e245e82f48e62b`](./contracts/ethereum-1/0x0901b541beff2cd44859701619e245e82f48e62b/) | ⚠️ Unaudited |
| AggregatorStablePrice-aggregatorofstablecoinpricesforcrvUSD | unknown | ethereum | n/a | [`0x18672b1b0c623a30089a280ed9256379fb0e4e62`](./contracts/ethereum-1/0x18672b1b0c623a30089a280ed9256379fb0e4e62/) | ⚠️ Unaudited |
| AssetRouter | unknown | ethereum | n/a | [`0xb823359367978a28eae71e90f79d95b62348bd80`](./contracts/ethereum-1/0xb823359367978a28eae71e90f79d95b62348bd80/) | ⚠️ Unaudited |
| AuctionManager | unknown | ethereum | n/a | [`0x68fe80c6e97e0c8613e2fed344358c6635ba5366`](./contracts/ethereum-1/0x68fe80c6e97e0c8613e2fed344358c6635ba5366/) | ⚠️ Unaudited |
| AvsOperator | unknown | ethereum | n/a | [`0x8969d7c2e3e5b056d5d4984031788eca923960f5`](./contracts/ethereum-1/0x8969d7c2e3e5b056d5d4984031788eca923960f5/) | ⚠️ Unaudited |
| BeaconProxy | unknown | ethereum | n/a | [`0xd9d920aa40f578ab794426f5c90f6c731d159def`](./contracts/ethereum-1/0xd9d920aa40f578ab794426f5c90f6c731d159def/) | ⚠️ Unaudited |
| BNFT | unknown | ethereum | n/a | [`0x6a393848f5d1b8e7dab45f3a7e01f9f0dc687242`](./contracts/ethereum-1/0x6a393848f5d1b8e7dab45f3a7e01f9f0dc687242/) | ⚠️ Unaudited |
| BoringVaultPriceProvider | unknown | ethereum | n/a | [`0x130e22952dd3de2c80ebdfc2b256e344ff3a0729`](./contracts/ethereum-1/0x130e22952dd3de2c80ebdfc2b256e344ff3a0729/) | ⚠️ Unaudited |
| Bridge | unknown | ethereum | n/a | [`0x1b67c2908ef408f6612e025fe3cf12c8507a4717`](./contracts/ethereum-1/0x1b67c2908ef408f6612e025fe3cf12c8507a4717/) | ⚠️ Unaudited |
| BridgeV2 | unknown | ethereum | n/a | [`0xc1fe8a0daed7e912d3b5b56ff6e05f17d82059c8`](./contracts/ethereum-1/0xc1fe8a0daed7e912d3b5b56ff6e05f17d82059c8/) | ⚠️ Unaudited |
| CCIPDVNAdapter | unknown | ethereum | n/a | [`0x771d10d0c86e26ea8d3b778ad4d31b30533b9cbf`](./contracts/ethereum-1/0x771d10d0c86e26ea8d3b778ad4d31b30533b9cbf/) | ⚠️ Unaudited |
| CCIPPeer | unknown | ethereum | n/a | [`0x17ea3dcd055a72b137e6f09cd5f2a1c187908ee1`](./contracts/ethereum-1/0x17ea3dcd055a72b137e6f09cd5f2a1c187908ee1/) | ⚠️ Unaudited |
| CelerMinterReceiver | unknown | ethereum | n/a | [`0x7c3f1fe22959b4f6ac2bf2474b3bdf9969465c95`](./contracts/ethereum-1/0x7c3f1fe22959b4f6ac2bf2474b3bdf9969465c95/) | ⚠️ Unaudited |
| ChainlinkOracleClient | unknown | ethereum | n/a | [`0xc905e74beb8229e258c3c6e5bc0d6cc54c534688`](./contracts/ethereum-1/0xc905e74beb8229e258c3c6e5bc0d6cc54c534688/) | ⚠️ Unaudited |
| CLAdapter | unknown | ethereum | n/a | [`0x2298d44cfda0ceafe7f5ef5fd587b67d7b9b1fbb`](./contracts/ethereum-1/0x2298d44cfda0ceafe7f5ef5fd587b67d7b9b1fbb/) | ⚠️ Unaudited |
| Consortium | unknown | ethereum | n/a | [`0x9f8048c81d00da5e757e20ad5fc89f8a32c5478e`](./contracts/ethereum-1/0x9f8048c81d00da5e757e20ad5fc89f8a32c5478e/) | ⚠️ Unaudited |
| CornDeployer | unknown | ethereum | n/a | [`0x0969f8752a32b4f1f9d07b751c7bacbf6d9ae733`](./contracts/ethereum-1/0x0969f8752a32b4f1f9d07b751c7bacbf6d9ae733/) | ⚠️ Unaudited |
| CornSiloZapV1 | unknown | ethereum | n/a | [`0x29a4e79dc35f94ed6aa91c0e0d96c0c7472ef7ff`](./contracts/ethereum-1/0x29a4e79dc35f94ed6aa91c0e0d96c0c7472ef7ff/) | ⚠️ Unaudited |
| Create2Factory | unknown | ethereum | n/a | [`0x6521991a0bc180a5df7f42b27f4ee8f3b192ba62`](./contracts/ethereum-1/0x6521991a0bc180a5df7f42b27f4ee8f3b192ba62/) | ⚠️ Unaudited |
| crvUSD Controller | unknown | ethereum | n/a | [`0x17c6e1ddf1cce3d33240a53fce8a2ee48541f4d4`](./contracts/ethereum-1/0x17c6e1ddf1cce3d33240a53fce8a2ee48541f4d4/) | ⚠️ Unaudited |
| crvUSDControllerFactory | unknown | ethereum | n/a | [`0xc9332fdcb1c491dcc683bae86fe3cb70360738bc`](./contracts/ethereum-1/0xc9332fdcb1c491dcc683bae86fe3cb70360738bc/) | ⚠️ Unaudited |
| crvUSDdeleveragezap | unknown | ethereum | n/a | [`0x2bc706b83ab08d0437b8a397242c3284b5f81d74`](./contracts/ethereum-1/0x2bc706b83ab08d0437b8a397242c3284b5f81d74/) | ⚠️ Unaudited |
| crvUSDStablecoin | unknown | ethereum | n/a | [`0xf939e0a03fb07f59a73314e73794be0e57ac1b4e`](./contracts/ethereum-1/0xf939e0a03fb07f59a73314e73794be0e57ac1b4e/) | ⚠️ Unaudited |
| CryptoFromPool | unknown | ethereum | n/a | [`0x3b38ce23799dc56664ff6048892510abffdb7a25`](./contracts/ethereum-1/0x3b38ce23799dc56664ff6048892510abffdb7a25/) | ⚠️ Unaudited |
| CryptoFromPoolsRate | unknown | ethereum | n/a | [`0x38e7627eb98a40e7528bcce709a80083093ba2f8`](./contracts/ethereum-1/0x38e7627eb98a40e7528bcce709a80083093ba2f8/) | ⚠️ Unaudited |
| CryptoFromPoolsRateWAgg | unknown | ethereum | n/a | [`0x0a9ae947495034c0bbbab845fd75b5bbafc91aab`](./contracts/ethereum-1/0x0a9ae947495034c0bbbab845fd75b5bbafc91aab/) | ⚠️ Unaudited |
| CryptoFromPoolVaultWAgg | unknown | ethereum | n/a | [`0x002688c4296a2c4d800f271fe6f01741111b09be`](./contracts/ethereum-1/0x002688c4296a2c4d800f271fe6f01741111b09be/) | ⚠️ Unaudited |
| CryptoFromPoolWAgg | unknown | ethereum | n/a | [`0x2d89d82ff68bae1357d746b3e8eac520bfe1d5ca`](./contracts/ethereum-1/0x2d89d82ff68bae1357d746b3e8eac520bfe1d5ca/) | ⚠️ Unaudited |
| CryptoWithStablePriceETH | unknown | ethereum | n/a | [`0x966cbdecefb60a289b0460f7638f4a75f432ca06`](./contracts/ethereum-1/0x966cbdecefb60a289b0460f7638f4a75f432ca06/) | ⚠️ Unaudited |
| CryptoWithStablePriceSfrxeth | unknown | ethereum | n/a | [`0x28d7880b5b67fb4a0b1c6ed6c33c33f365113c29`](./contracts/ethereum-1/0x28d7880b5b67fb4a0b1c6ed6c33c33f365113c29/) | ⚠️ Unaudited |
| CryptoWithStablePriceTBTC | unknown | ethereum | n/a | [`0xbef434e2acf0fbad1f0579d2376fed0d1cfc4217`](./contracts/ethereum-1/0xbef434e2acf0fbad1f0579d2376fed0d1cfc4217/) | ⚠️ Unaudited |
| CryptoWithStablePriceWBTC | unknown | ethereum | n/a | [`0x07374b547cae235227635c13266c69847a3e46fa`](./contracts/ethereum-1/0x07374b547cae235227635c13266c69847a3e46fa/) | ⚠️ Unaudited |
| CryptoWithStablePriceWsteth | unknown | ethereum | n/a | [`0x21f5f6d3f90d0f56a6de307a3bd359d0a151b304`](./contracts/ethereum-1/0x21f5f6d3f90d0f56a6de307a3bd359d0a151b304/) | ⚠️ Unaudited |
| CumulativeMerkleDrop | unknown | ethereum | n/a | [`0x26542fbe5f320f25747e80831acdd1f27cdd0c65`](./contracts/ethereum-1/0x26542fbe5f320f25747e80831acdd1f27cdd0c65/) | ⚠️ Unaudited |
| DadFab | unknown | ethereum | n/a | [`0x01c1103d765f62a0d909499d7b615c382cdb072d`](./contracts/ethereum-1/0x01c1103d765f62a0d909499d7b615c382cdb072d/) | ⚠️ Unaudited |
| DaiFab | unknown | ethereum | n/a | [`0xf07674f6ac6632e253c291b694f9c2e2ed69ebbb`](./contracts/ethereum-1/0xf07674f6ac6632e253c291b694f9c2e2ed69ebbb/) | ⚠️ Unaudited |
| DeadDVN | unknown | ethereum | n/a | [`0x747c741496a507e4b404b50463e691a8d692f6ac`](./contracts/ethereum-1/0x747c741496a507e4b404b50463e691a8d692f6ac/) | ⚠️ Unaudited |
| DelayRedeemRouter | unknown | ethereum | n/a | [`0x720081e3ee2b1542e341afc793de20b08beb859d`](./contracts/ethereum-1/0x720081e3ee2b1542e341afc793de20b08beb859d/) | ⚠️ Unaudited |
| depositRootGenerator | unknown | ethereum | n/a | [`0x10f2c552ef9ca8d2b592a8055e2db0efe5c561d6`](./contracts/ethereum-1/0x10f2c552ef9ca8d2b592a8055e2db0efe5c561d6/) | ⚠️ Unaudited |
| directBTC | unknown | ethereum | n/a | [`0x11964b366f794ae56717e8efa05d31ab2a09954b`](./contracts/ethereum-1/0x11964b366f794ae56717e8efa05d31ab2a09954b/) | ⚠️ Unaudited |
| DirectBTCMinter | unknown | ethereum | n/a | [`0x704a2f4de8628e180fffa0e89203468dcc9481ee`](./contracts/ethereum-1/0x704a2f4de8628e180fffa0e89203468dcc9481ee/) | ⚠️ Unaudited |
| DirectStaking | unknown | ethereum | n/a | [`0x07a5d37823c5c7963042fab79ed4747ab60eef57`](./contracts/ethereum-1/0x07a5d37823c5c7963042fab79ed4747ab60eef57/) | ⚠️ Unaudited |
| DSChief | unknown | ethereum | n/a | [`0x8e2a84d6ade1e7fffee039a35ef5f19f13057152`](./contracts/ethereum-1/0x8e2a84d6ade1e7fffee039a35ef5f19f13057152/) | ⚠️ Unaudited |
| DSChiefFab | unknown | ethereum | n/a | [`0x1e7ca05e174a523709e556080e227f734a8f1483`](./contracts/ethereum-1/0x1e7ca05e174a523709e556080e227f734a8f1483/) | ⚠️ Unaudited |
| DSToken | unknown | ethereum | n/a | [`0x068083069ed92da4c5291dba52d8912abfcc5523`](./contracts/ethereum-1/0x068083069ed92da4c5291dba52d8912abfcc5523/) | ⚠️ Unaudited |
| DVN | unknown | ethereum | n/a | [`0x006e1248be5e40b4a4e7099397719df7ab872de7`](./contracts/ethereum-1/0x006e1248be5e40b4a4e7099397719df7ab872de7/) | ⚠️ Unaudited |
| DVNFeeLib | unknown | ethereum | n/a | [`0x021e401c2a1a60618c5e6353a40524971eba1e8d`](./contracts/ethereum-1/0x021e401c2a1a60618c5e6353a40524971eba1e8d/) | ⚠️ Unaudited |
| eBtcRateProvider | unknown | ethereum | n/a | [`0x81be3526a71d9013a1a5bd38758e0f248231b523`](./contracts/ethereum-1/0x81be3526a71d9013a1a5bd38758e0f248231b523/) | ⚠️ Unaudited |
| EETH | unknown | ethereum | n/a | [`0x1b47a665364bc15c28b05f449b53354d0ceff72f`](./contracts/ethereum-1/0x1b47a665364bc15c28b05f449b53354d0ceff72f/) | ⚠️ Unaudited |
| Endpoint | unknown | ethereum | n/a | [`0x66a71dcef29a0ffbdbe3c6a460a3b5bc225cd675`](./contracts/ethereum-1/0x66a71dcef29a0ffbdbe3c6a460a3b5bc225cd675/) | ⚠️ Unaudited |
| EndpointV2View | unknown | ethereum | n/a | [`0x175bfec21a4949c339d1b9b621ad325d9892888f`](./contracts/ethereum-1/0x175bfec21a4949c339d1b9b621ad325d9892888f/) | ⚠️ Unaudited |
| EnzoBTC | unknown | ethereum | n/a | [`0x6a9a65b84843f5fd4ac9a0471c4fc11afffbce4a`](./contracts/ethereum-1/0x6a9a65b84843f5fd4ac9a0471c4fc11afffbce4a/) | ⚠️ Unaudited |
| EnzoBTCOFTAdapter | unknown | ethereum | n/a | [`0x99de5239a8ad65ed86db3d36e0fd9f9cba7d63d5`](./contracts/ethereum-1/0x99de5239a8ad65ed86db3d36e0fd9f9cba7d63d5/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0x316c1b6b0c7051a10073abf0d06f9cc5ae2ab302`](./contracts/ethereum-1/0x316c1b6b0c7051a10073abf0d06f9cc5ae2ab302/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0x7efb3515d9ec4537fafca635a1de7da7a5c5c567`](./contracts/ethereum-1/0x7efb3515d9ec4537fafca635a1de7da7a5c5c567/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0xe53dcec07d16d88e386ae0710e86d9a400f83c31`](./contracts/ethereum-1/0xe53dcec07d16d88e386ae0710e86d9a400f83c31/) | ⚠️ Unaudited |
| ERC4626VaultWrapper | unknown | ethereum | n/a | [`0x3f987372a1ae29f834deaea66d2e72137ba10fc7`](./contracts/ethereum-1/0x3f987372a1ae29f834deaea66d2e72137ba10fc7/) | ⚠️ Unaudited |
| FBTCPartnerVault | unknown | ethereum | n/a | [`0x512258182db0ad147cdc1a116191be823f8f198c`](./contracts/ethereum-1/0x512258182db0ad147cdc1a116191be823f8f198c/) | ⚠️ Unaudited |
| FBTCProxy | unknown | ethereum | n/a | [`0xa3a30f627dbc02aff3c0a736a065443a0e85b1ae`](./contracts/ethereum-1/0xa3a30f627dbc02aff3c0a736a065443a0e85b1ae/) | ⚠️ Unaudited |
| FiatToken | unknown | ethereum | n/a | [`0x8cbde23b1416cac07a52591bba744c744d77a91a`](./contracts/ethereum-1/0x8cbde23b1416cac07a52591bba744c744d77a91a/) | ⚠️ Unaudited |
| FiatTokenProxy | unknown | ethereum | n/a | [`0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48`](./contracts/ethereum-1/0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48/) | ⚠️ Unaudited |
| FiatTokenUtil | unknown | ethereum | n/a | [`0x6315aa908c50376d1028412c028aa0629f0355a6`](./contracts/ethereum-1/0x6315aa908c50376d1028412c028aa0629f0355a6/) | ⚠️ Unaudited |
| FiatTokenV1 | unknown | ethereum | n/a | [`0x0882477e7895bdc5cea7cb1552ed914ab157fe56`](./contracts/ethereum-1/0x0882477e7895bdc5cea7cb1552ed914ab157fe56/) | ⚠️ Unaudited |
| FiatTokenV2 | unknown | ethereum | n/a | [`0xb7277a6e95992041568d9391d09d0122023778a2`](./contracts/ethereum-1/0xb7277a6e95992041568d9391d09d0122023778a2/) | ⚠️ Unaudited |
| FiatTokenV2_1 | unknown | ethereum | n/a | [`0xa2327a938febf5fec13bacfb16ae10ecbc4cbdcf`](./contracts/ethereum-1/0xa2327a938febf5fec13bacfb16ae10ecbc4cbdcf/) | ⚠️ Unaudited |
| FPValidator | unknown | ethereum | n/a | [`0x07245eea05826f5984c7c3c8f478b04892e4df89`](./contracts/ethereum-1/0x07245eea05826f5984c7c3c8f478b04892e4df89/) | ⚠️ Unaudited |
| GemFab | unknown | ethereum | n/a | [`0x431e935209d79706b5866eb42137a3491d845692`](./contracts/ethereum-1/0x431e935209d79706b5866eb42137a3491d845692/) | ⚠️ Unaudited |
| GemPit | unknown | ethereum | n/a | [`0x69076e44a9c70a67d5b79d95795aba299083c275`](./contracts/ethereum-1/0x69076e44a9c70a67d5b79d95795aba299083c275/) | ⚠️ Unaudited |
| GIN | unknown | ethereum | n/a | [`0xc5fd9570ac1a5dab9eda7839bd33229252b0c05d`](./contracts/ethereum-1/0xc5fd9570ac1a5dab9eda7839bd33229252b0c05d/) | ⚠️ Unaudited |
| globalIndexLibrary | unknown | ethereum | n/a | [`0x325ea059f11d6860e50a803ae52d49ef35c85fb9`](./contracts/ethereum-1/0x325ea059f11d6860e50a803ae52d49ef35c85fb9/) | ⚠️ Unaudited |
| GMPBasculeV1 | unknown | ethereum | n/a | [`0xc3ecfe771564e3f28cfb7a9b203f4d10279338ed`](./contracts/ethereum-1/0xc3ecfe771564e3f28cfb7a9b203f4d10279338ed/) | ⚠️ Unaudited |
| Governor | unknown | ethereum | n/a | [`0x515c7d8fcb950f8b030ac08c994b37b4b8f3f7b5`](./contracts/ethereum-1/0x515c7d8fcb950f8b030ac08c994b37b4b8f3f7b5/) | ⚠️ Unaudited |
| HealthcalculatorzapforcrvUSDcontroller | unknown | ethereum | n/a | [`0xcf61ee62b136e3553fb545bd8fec11fb7f830d6a`](./contracts/ethereum-1/0xcf61ee62b136e3553fb545bd8fec11fb7f830d6a/) | ⚠️ Unaudited |
| IBCVoucher | unknown | ethereum | n/a | [`0x77d81c09e64972fef1a785e9c6357847c08a5b9f`](./contracts/ethereum-1/0x77d81c09e64972fef1a785e9c6357847c08a5b9f/) | ⚠️ Unaudited |
| L1LineaReceiverETH | unknown | ethereum | n/a | [`0x33275453144a4d6ef266ef1164f3e6fcb6ef27f1`](./contracts/ethereum-1/0x33275453144a4d6ef266ef1164f3e6fcb6ef27f1/) | ⚠️ Unaudited |
| LayerZeroOracleMock | unknown | ethereum | n/a | [`0x980205d352f198748b626f6f7c38a8a5663ec981`](./contracts/ethereum-1/0x980205d352f198748b626f6f7c38a8a5663ec981/) | ⚠️ Unaudited |
| LayerZeroTokenMock | unknown | ethereum | n/a | [`0xfe7c30860d01e28371d40434806f4a8fcdd3a098`](./contracts/ethereum-1/0xfe7c30860d01e28371d40434806f4a8fcdd3a098/) | ⚠️ Unaudited |
| LBTC | unknown | ethereum | n/a | [`0x12364c9d095a2a43abb71b0d8313663ff0348eea`](./contracts/ethereum-1/0x12364c9d095a2a43abb71b0d8313663ff0348eea/) | ⚠️ Unaudited |
| LBTCOFTAdapter | unknown | ethereum | n/a | [`0x1290a6b480f7ef14925229fdb66f5680ad8f44ad`](./contracts/ethereum-1/0x1290a6b480f7ef14925229fdb66f5680ad8f44ad/) | ⚠️ Unaudited |
| LeveragezapforcrvUSDcontroller(sfrxETHmarket) | unknown | ethereum | n/a | [`0xb556fa4c4752321b3154f08dfbdfcf34847f2eac`](./contracts/ethereum-1/0xb556fa4c4752321b3154f08dfbdfcf34847f2eac/) | ⚠️ Unaudited |
| LiquidCashier | unknown | ethereum | n/a | [`0x485fd98f834b4bf9db855f8fa03990318103c12e`](./contracts/ethereum-1/0x485fd98f834b4bf9db855f8fa03990318103c12e/) | ⚠️ Unaudited |
| LiquidFactory | unknown | ethereum | n/a | [`0xaec1fbb90528533d5f066094abdeb2f1b0039a3b`](./contracts/ethereum-1/0xaec1fbb90528533d5f066094abdeb2f1b0039a3b/) | ⚠️ Unaudited |
| LiquidityGaugeV6 | unknown | ethereum | n/a | [`0x00b71a425db7c8b65a46cf39c23a188e10a2de99`](./contracts/ethereum-1/0x00b71a425db7c8b65a46cf39c23a188e10a2de99/) | ⚠️ Unaudited |
| LiquidityPool | unknown | ethereum | n/a | [`0x02656fe285fac5d5c756c2f03c17277df9bac65b`](./contracts/ethereum-1/0x02656fe285fac5d5c756c2f03c17277df9bac65b/) | ⚠️ Unaudited |
| LiquidOracle | unknown | ethereum | n/a | [`0x6f26b0f570c2cfb4050b424ef6ea5903818404ac`](./contracts/ethereum-1/0x6f26b0f570c2cfb4050b424ef6ea5903818404ac/) | ⚠️ Unaudited |
| LiquidVault | unknown | ethereum | n/a | [`0xd1693b20932c798a63375db0252be7ca449ffa3b`](./contracts/ethereum-1/0xd1693b20932c798a63375db0252be7ca449ffa3b/) | ⚠️ Unaudited |
| Liquifier | unknown | ethereum | n/a | [`0x2225c97928934625e8382e6636d30f94c46b6ed3`](./contracts/ethereum-1/0x2225c97928934625e8382e6636d30f94c46b6ed3/) | ⚠️ Unaudited |
| LLAMMA - crvUSD AMM | unknown | ethereum | n/a | [`0x0ec8e0c868541df59ced49b39cc930c3a8dbd93a`](./contracts/ethereum-1/0x0ec8e0c868541df59ced49b39cc930c3a8dbd93a/) | ⚠️ Unaudited |
| LombardConsortium | unknown | ethereum | n/a | [`0x2e1871fc8ac793dcf2a74ce004ee21d913763565`](./contracts/ethereum-1/0x2e1871fc8ac793dcf2a74ce004ee21d913763565/) | ⚠️ Unaudited |
| LombardTimeLock | unknown | ethereum | n/a | [`0x055e84e7fe8955e2781010b866f10ef6e1e77e59`](./contracts/ethereum-1/0x055e84e7fe8955e2781010b866f10ef6e1e77e59/) | ⚠️ Unaudited |
| LombardTokenPoolV2 | unknown | ethereum | n/a | [`0x61003ba35d6f57e0b61442bc88c2c7a45bf56095`](./contracts/ethereum-1/0x61003ba35d6f57e0b61442bc88c2c7a45bf56095/) | ⚠️ Unaudited |
| LoyaltyPointsMarketSafe | unknown | ethereum | n/a | [`0x1d716d4ec89060411b978e00691fac9795f2cd24`](./contracts/ethereum-1/0x1d716d4ec89060411b978e00691fac9795f2cd24/) | ⚠️ Unaudited |
| LRTSquare | unknown | ethereum | n/a | [`0x3d987e04fc47ac625f720f169c658307fd9a16a2`](./contracts/ethereum-1/0x3d987e04fc47ac625f720f169c658307fd9a16a2/) | ⚠️ Unaudited |
| LRTSquared | unknown | ethereum | n/a | [`0x138f08a1798b7cf15adbf051bc2f11bca0ea7743`](./contracts/ethereum-1/0x138f08a1798b7cf15adbf051bc2f11bca0ea7743/) | ⚠️ Unaudited |
| LRTSquaredAdmin | unknown | ethereum | n/a | [`0xd2b8c78a5eb18a5f3b0392c5479bb45c77d02ff5`](./contracts/ethereum-1/0xd2b8c78a5eb18a5f3b0392c5479bb45c77d02ff5/) | ⚠️ Unaudited |
| LRTSquaredCore | unknown | ethereum | n/a | [`0x1cb489ef513e1cc35c4657c91853a2e6ff1957de`](./contracts/ethereum-1/0x1cb489ef513e1cc35c4657c91853a2e6ff1957de/) | ⚠️ Unaudited |
| LzExecutor | unknown | ethereum | n/a | [`0x0ab536262d4d44b0ec1fc7bf4e6dec4b4557ad21`](./contracts/ethereum-1/0x0ab536262d4d44b0ec1fc7bf4e6dec4b4557ad21/) | ⚠️ Unaudited |
| Mailbox | unknown | ethereum | n/a | [`0x052359563d104867a42c48cb7e688b1af22f0080`](./contracts/ethereum-1/0x052359563d104867a42c48cb7e688b1af22f0080/) | ⚠️ Unaudited |
| MasterMinter | unknown | ethereum | n/a | [`0x566c11b5c2201b69c9269fe924e4395873674335`](./contracts/ethereum-1/0x566c11b5c2201b69c9269fe924e4395873674335/) | ⚠️ Unaudited |
| MembershipManager | unknown | ethereum | n/a | [`0x047a7749ad683c2fd8a27c7904ca8dd128f15889`](./contracts/ethereum-1/0x047a7749ad683c2fd8a27c7904ca8dd128f15889/) | ⚠️ Unaudited |
| MembershipNFT | unknown | ethereum | n/a | [`0x290d981b41b713437265cd7846806d7500307106`](./contracts/ethereum-1/0x290d981b41b713437265cd7846806d7500307106/) | ⚠️ Unaudited |
| MiniMeTokenFactory | unknown | ethereum | n/a | [`0x003ea7f54b6dcf6cee86986edc18143a35f15505`](./contracts/ethereum-1/0x003ea7f54b6dcf6cee86986edc18143a35f15505/) | ⚠️ Unaudited |
| MintStrategy | unknown | ethereum | n/a | [`0x81d7dab8b95085034d9ce90958038251726b2c59`](./contracts/ethereum-1/0x81d7dab8b95085034d9ce90958038251726b2c59/) | ⚠️ Unaudited |
| MomFab | unknown | ethereum | n/a | [`0x141a206ece672e3198086c5d21f7858ad03669ea`](./contracts/ethereum-1/0x141a206ece672e3198086c5d21f7858ad03669ea/) | ⚠️ Unaudited |
| MPTValidatorV2 | unknown | ethereum | n/a | [`0xe9ae261d3aff7d3fccf38fa2d612dd3897e07b2d`](./contracts/ethereum-1/0xe9ae261d3aff7d3fccf38fa2d612dd3897e07b2d/) | ⚠️ Unaudited |
| MPTValidatorV4 | unknown | ethereum | n/a | [`0x4b4ca2f2ad3a5464cc8c01ece76c2951f3abefb2`](./contracts/ethereum-1/0x4b4ca2f2ad3a5464cc8c01ece76c2951f3abefb2/) | ⚠️ Unaudited |
| MPTValidatorV5 | unknown | ethereum | n/a | [`0xe04f26f3f47b6054aeb15796ac4af3c61f08e832`](./contracts/ethereum-1/0xe04f26f3f47b6054aeb15796ac4af3c61f08e832/) | ⚠️ Unaudited |
| Multicall3 | unknown | ethereum | n/a | [`0xca11bde05977b3631167028862be2a173976ca11`](./contracts/ethereum-1/0xca11bde05977b3631167028862be2a173976ca11/) | ⚠️ Unaudited |
| MultiClaim | unknown | ethereum | n/a | [`0x32facb5a46e02decaf5f939ab12c123eee203a5f`](./contracts/ethereum-1/0x32facb5a46e02decaf5f939ab12c123eee203a5f/) | ⚠️ Unaudited |
| NativeLBTC | unknown | ethereum | n/a | [`0x6b89d757668a830f17d693a88d46073501df635d`](./contracts/ethereum-1/0x6b89d757668a830f17d693a88d46073501df635d/) | ⚠️ Unaudited |
| NEC | unknown | ethereum | n/a | [`0xcc80c051057b774cd75067dc48f8987c4eb97a5e`](./contracts/ethereum-1/0xcc80c051057b774cd75067dc48f8987c4eb97a5e/) | ⚠️ Unaudited |
| NectarController | unknown | ethereum | n/a | [`0x8d5a41e85f4ce2433beef476305d307b9205d98d`](./contracts/ethereum-1/0x8d5a41e85f4ce2433beef476305d307b9205d98d/) | ⚠️ Unaudited |
| NetworkRestakeResetHook | unknown | ethereum | n/a | [`0x274bbdb8db5cca01e8364e781f8c338f79cb2fc8`](./contracts/ethereum-1/0x274bbdb8db5cca01e8364e781f8c338f79cb2fc8/) | ⚠️ Unaudited |
| NonceContractRadar | unknown | ethereum | n/a | [`0x087cebbd85a161a50f91b9d7743e8b89fc384e2e`](./contracts/ethereum-1/0x087cebbd85a161a50f91b9d7743e8b89fc384e2e/) | ⚠️ Unaudited |
| OneWayLendingFactory | unknown | ethereum | n/a | [`0x34024ba3b6edaf5cdd1c24fefe1df5d03041f38c`](./contracts/ethereum-1/0x34024ba3b6edaf5cdd1c24fefe1df5d03041f38c/) | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x0330f95a5110e9f72fe0776a1291834ffeacb1e0`](./contracts/ethereum-1/0x0330f95a5110e9f72fe0776a1291834ffeacb1e0/) | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x16cc4ef7c128d7fea96cf46ffd9dd20f76170347`](./contracts/ethereum-1/0x16cc4ef7c128d7fea96cf46ffd9dd20f76170347/) | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x173272739bd7aa6e4e214714048a9fe699453059`](./contracts/ethereum-1/0x173272739bd7aa6e4e214714048a9fe699453059/) | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | ethereum | n/a | [`0xbec6f0034cb9055b68dc5f02873b45841ab56af7`](./contracts/ethereum-1/0xbec6f0034cb9055b68dc5f02873b45841ab56af7/) | ⚠️ Unaudited |
| PegKeeper | unknown | ethereum | n/a | [`0x1ef89ed0edd93d1ec09e4c07373f69c49f4dccae`](./contracts/ethereum-1/0x1ef89ed0edd93d1ec09e4c07373f69c49f4dccae/) | ⚠️ Unaudited |
| PegPrice | unknown | ethereum | n/a | [`0x226845c2ba216b8bb1aaadfd4e14de69426c5445`](./contracts/ethereum-1/0x226845c2ba216b8bb1aaadfd4e14de69426c5445/) | ⚠️ Unaudited |
| PodOwner | unknown | ethereum | n/a | [`0x0ac774014e2306dbddac4af7cb0f80087de76f52`](./contracts/ethereum-1/0x0ac774014e2306dbddac4af7cb0f80087de76f52/) | ⚠️ Unaudited |
| PreOrder | unknown | ethereum | n/a | [`0x8b7a14fc3a93c2d43ffd2d2089d4e84c0f97ff44`](./contracts/ethereum-1/0x8b7a14fc3a93c2d43ffd2d2089d4e84c0f97ff44/) | ⚠️ Unaudited |
| PriceFeed | unknown | ethereum | n/a | [`0xb26ac124db9439edb7de503ef62e3d3d4e29090c`](./contracts/ethereum-1/0xb26ac124db9439edb7de503ef62e3d3d4e29090c/) | ⚠️ Unaudited |
| PriceProvider | unknown | ethereum | n/a | [`0x28a6e7ebb6aca8f64145952a9565245c3dc1f32f`](./contracts/ethereum-1/0x28a6e7ebb6aca8f64145952a9565245c3dc1f32f/) | ⚠️ Unaudited |
| ProtocolRevenueManager | unknown | ethereum | n/a | [`0xaf8749c3dc1fc0592f21c2593204c45d3be0d322`](./contracts/ethereum-1/0xaf8749c3dc1fc0592f21c2593204c45d3be0d322/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | [`0x27168981aa1c0b6ce941babcf3579887ec25ddd3`](./contracts/ethereum-1/0x27168981aa1c0b6ce941babcf3579887ec25ddd3/) | ⚠️ Unaudited |
| ProxyMock | unknown | ethereum | n/a | [`0x72233ff361ebd3e157e3fa5224365137b6dee7db`](./contracts/ethereum-1/0x72233ff361ebd3e157e3fa5224365137b6dee7db/) | ⚠️ Unaudited |
| PUMP | unknown | ethereum | n/a | [`0x0ed540d53b4b49931544a6d8926f3157784b079c`](./contracts/ethereum-1/0x0ed540d53b4b49931544a6d8926f3157784b079c/) | ⚠️ Unaudited |
| PumpLockMint | unknown | ethereum | n/a | [`0x77d22a277b1b29d9b07c207aa1cdfcc38404eaad`](./contracts/ethereum-1/0x77d22a277b1b29d9b07c207aa1cdfcc38404eaad/) | ⚠️ Unaudited |
| PumpToken | unknown | ethereum | n/a | [`0x2cd2644edab51cb2122f37e03e5f997661d49cfe`](./contracts/ethereum-1/0x2cd2644edab51cb2122f37e03e5f997661d49cfe/) | ⚠️ Unaudited |
| PumpTokenOFT | unknown | ethereum | n/a | [`0xadc9c900b05f39f48bb6f402a1bae60929f4f9a8`](./contracts/ethereum-1/0xadc9c900b05f39f48bb6f402a1bae60929f4f9a8/) | ⚠️ Unaudited |
| PumpTokenOFTAdapter | unknown | ethereum | n/a | [`0xcb1b273f03c084a906ee64f27beeed7293ef3a52`](./contracts/ethereum-1/0xcb1b273f03c084a906ee64f27beeed7293ef3a52/) | ⚠️ Unaudited |
| ReadLib1002 | unknown | ethereum | n/a | [`0x74f55bc2a79a27a0bf1d1a35db5d0fc36b9fdb9d`](./contracts/ethereum-1/0x74f55bc2a79a27a0bf1d1a35db5d0fc36b9fdb9d/) | ⚠️ Unaudited |
| ReceiveUln301 | unknown | ethereum | n/a | [`0x245b6e8ffe9ea5fc301e32d16f66bd4c2123eefc`](./contracts/ethereum-1/0x245b6e8ffe9ea5fc301e32d16f66bd4c2123eefc/) | ⚠️ Unaudited |
| ReceiveUln302 | unknown | ethereum | n/a | [`0xc02ab410f0734efa3f14628780e6e695156024c2`](./contracts/ethereum-1/0xc02ab410f0734efa3f14628780e6e695156024c2/) | ⚠️ Unaudited |
| ReceiveUln302View | unknown | ethereum | n/a | [`0xf6c8bd9229b908dbc54fd5eab7dbca037b18c46d`](./contracts/ethereum-1/0xf6c8bd9229b908dbc54fd5eab7dbca037b18c46d/) | ⚠️ Unaudited |
| Redeem | unknown | ethereum | n/a | [`0x6882ae88956f676a15efe3e9f920aabaaa57497d`](./contracts/ethereum-1/0x6882ae88956f676a15efe3e9f920aabaaa57497d/) | ⚠️ Unaudited |
| RegulationsManager | unknown | ethereum | n/a | [`0x1fcb83123ffbc72373134d09d1c8ab52812cd0b4`](./contracts/ethereum-1/0x1fcb83123ffbc72373134d09d1c8ab52812cd0b4/) | ⚠️ Unaudited |
| Relayer | unknown | ethereum | n/a | [`0x153fb4738c2698bbdbf256d0fc90f5503eeb12d4`](./contracts/ethereum-1/0x153fb4738c2698bbdbf256d0fc90f5503eeb12d4/) | ⚠️ Unaudited |
| RelayerV2 | unknown | ethereum | n/a | [`0xdd55f55cb9a39ef1eed4ee1a84ee1b7411be306a`](./contracts/ethereum-1/0xdd55f55cb9a39ef1eed4ee1a84ee1b7411be306a/) | ⚠️ Unaudited |
| RelayerV2Radar | unknown | ethereum | n/a | [`0x61ab01ce58d1dff3562bb25870020d555e39d849`](./contracts/ethereum-1/0x61ab01ce58d1dff3562bb25870020d555e39d849/) | ⚠️ Unaudited |
| Restaking | unknown | ethereum | n/a | [`0x04f744f99ea5c588a8a31906d5b5c91cabb7b5c0`](./contracts/ethereum-1/0x04f744f99ea5c588a8a31906d5b5c91cabb7b5c0/) | ⚠️ Unaudited |
| RewardPool | unknown | ethereum | n/a | [`0x29b06ce31449a9f89719137a705cff395450a415`](./contracts/ethereum-1/0x29b06ce31449a9f89719137a705cff395450a415/) | ⚠️ Unaudited |
| RockXETH | unknown | ethereum | n/a | [`0x3376ebca0a85fc8d791b1001a571c41fdd61514a`](./contracts/ethereum-1/0x3376ebca0a85fc8d791b1001a571c41fdd61514a/) | ⚠️ Unaudited |
| RockXRedeem | unknown | ethereum | n/a | [`0x3774af7bb6e792963167588ae85b5ab8664ba818`](./contracts/ethereum-1/0x3774af7bb6e792963167588ae85b5ab8664ba818/) | ⚠️ Unaudited |
| RockXRestaking | unknown | ethereum | n/a | [`0x351eea2c8de2f7f1fb4cf08aa9423cec4269a098`](./contracts/ethereum-1/0x351eea2c8de2f7f1fb4cf08aa9423cec4269a098/) | ⚠️ Unaudited |
| Secondarymonetarypolicy | unknown | ethereum | n/a | [`0x188041ad83145351ef45f4bb91d08886648aeaf8`](./contracts/ethereum-1/0x188041ad83145351ef45f4bb91d08886648aeaf8/) | ⚠️ Unaudited |
| SecondarymonetarypolicyforWBTC | unknown | ethereum | n/a | [`0x4e1f162fd143e4a829341efd6dd451b018b10f9c`](./contracts/ethereum-1/0x4e1f162fd143e4a829341efd6dd451b018b10f9c/) | ⚠️ Unaudited |
| SemiLog monetary policy | unknown | ethereum | n/a | [`0x2a28789645776eaa95f6d491ff375781ea5b40dd`](./contracts/ethereum-1/0x2a28789645776eaa95f6d491ff375781ea5b40dd/) | ⚠️ Unaudited |
| SendUln301 | unknown | ethereum | n/a | [`0xd231084bfb234c107d3ee2b22f97f3346fdaf705`](./contracts/ethereum-1/0xd231084bfb234c107d3ee2b22f97f3346fdaf705/) | ⚠️ Unaudited |
| SendUln302 | unknown | ethereum | n/a | [`0xbb2ea70c9e858123480642cf96acbcce1372dce1`](./contracts/ethereum-1/0xbb2ea70c9e858123480642cf96acbcce1372dce1/) | ⚠️ Unaudited |
| SEthFiStrategy | unknown | ethereum | n/a | [`0x76c57e359c0eda0aac54d97832fb1b4451805ad8`](./contracts/ethereum-1/0x76c57e359c0eda0aac54d97832fb1b4451805ad8/) | ⚠️ Unaudited |
| sfrxETH2crvUSDleveragezap | unknown | ethereum | n/a | [`0x43ecffe6c6c1b9f24aeb5c180e659c2a6fce11bc`](./contracts/ethereum-1/0x43ecffe6c6c1b9f24aeb5c180e659c2a6fce11bc/) | ⚠️ Unaudited |
| Sigma | unknown | ethereum | n/a | [`0x18d0d914913ac720a6421cc809f3f44697d021b5`](./contracts/ethereum-1/0x18d0d914913ac720a6421cc809f3f44697d021b5/) | ⚠️ Unaudited |
| SolvBTCV3 | unknown | ethereum | n/a | [`0x7a56e1c57c7475ccf742a1832b028f0456652f97`](./contracts/ethereum-1/0x7a56e1c57c7475ccf742a1832b028f0456652f97/) | ⚠️ Unaudited |
| StakeAndBake | unknown | ethereum | n/a | [`0x9088d8a41744e9cca78d01e6185f2acb81be497a`](./contracts/ethereum-1/0x9088d8a41744e9cca78d01e6185f2acb81be497a/) | ⚠️ Unaudited |
| StakeAndBakeNativeToken | unknown | ethereum | n/a | [`0x0bca0fb61480530e87dddbb3bb5f0539c97eae88`](./contracts/ethereum-1/0x0bca0fb61480530e87dddbb3bb5f0539c97eae88/) | ⚠️ Unaudited |
| StakedLBTC | unknown | ethereum | n/a | [`0x072072317469ebb6c340a47e41561c9c3b782bd9`](./contracts/ethereum-1/0x072072317469ebb6c340a47e41561c9c3b782bd9/) | ⚠️ Unaudited |
| StakedLBTCOracle | unknown | ethereum | n/a | [`0x5e28ef6d59fa87530fd058e0d5a94f657f1fdc1c`](./contracts/ethereum-1/0x5e28ef6d59fa87530fd058e0d5a94f657f1fdc1c/) | ⚠️ Unaudited |
| StakingManager | unknown | ethereum | n/a | [`0x4ad639fc9c73f547bfff8b28d091d86d2472fa1e`](./contracts/ethereum-1/0x4ad639fc9c73f547bfff8b28d091d86d2472fa1e/) | ⚠️ Unaudited |
| stBTC | unknown | ethereum | n/a | [`0xf6718b2701d4a6498ef77d7c152b2137ab28b8a3`](./contracts/ethereum-1/0xf6718b2701d4a6498ef77d7c152b2137ab28b8a3/) | ⚠️ Unaudited |
| SusdeMonetaryPolicy | unknown | ethereum | n/a | [`0xf574cbebbd549273af82b42cd0230de9ea6efef7`](./contracts/ethereum-1/0xf574cbebbd549273af82b42cd0230de9ea6efef7/) | ⚠️ Unaudited |
| Swapper1InchV6 | unknown | ethereum | n/a | [`0x747cac75776b3a0bba3de3e61ec12a6a7f52232e`](./contracts/ethereum-1/0x747cac75776b3a0bba3de3e61ec12a6a7f52232e/) | ⚠️ Unaudited |
| TapFab | unknown | ethereum | n/a | [`0x521c420c2a2b461034becbb41d4888b68951f14f`](./contracts/ethereum-1/0x521c420c2a2b461034becbb41d4888b68951f14f/) | ⚠️ Unaudited |
| TellerWithMultiAssetSupportDepositor | unknown | ethereum | n/a | [`0x51d9c2e5f23cc9234fe6a8f9b56fec5f1fbf1a5f`](./contracts/ethereum-1/0x51d9c2e5f23cc9234fe6a8f9b56fec5f1fbf1a5f/) | ⚠️ Unaudited |
| TetherToken | unknown | ethereum | n/a | [`0x0e98db51010dd1ade14dd3fb164e218805fdba1b`](./contracts/ethereum-1/0x0e98db51010dd1ade14dd3fb164e218805fdba1b/) | ⚠️ Unaudited |
| TimelockController | unknown | ethereum | n/a | [`0xf4954ae0f18b236b643a4bf126e743f23f755024`](./contracts/ethereum-1/0xf4954ae0f18b236b643a4bf126e743f23f755024/) | ⚠️ Unaudited |
| TimelockControllerEnumerable | unknown | ethereum | n/a | [`0x0a3bd90a5a1e52c2900c863bd2b37c3bf65ee310`](./contracts/ethereum-1/0x0a3bd90a5a1e52c2900c863bd2b37c3bf65ee310/) | ⚠️ Unaudited |
| TNFT | unknown | ethereum | n/a | [`0x9c377a56c4a5eee3fa4c7a8de0440168e4f11708`](./contracts/ethereum-1/0x9c377a56c4a5eee3fa4c7a8de0440168e4f11708/) | ⚠️ Unaudited |
| TokenAuthority | unknown | ethereum | n/a | [`0x2989c38fb3cfcc0eeaf384ee5f1dc7dc520a4663`](./contracts/ethereum-1/0x2989c38fb3cfcc0eeaf384ee5f1dc7dc520a4663/) | ⚠️ Unaudited |
| TokenBridge | unknown | ethereum | n/a | [`0x50002cdfe7ccb0c41f519c6eb0653158d11cd907`](./contracts/ethereum-1/0x50002cdfe7ccb0c41f519c6eb0653158d11cd907/) | ⚠️ Unaudited |
| TopFab | unknown | ethereum | n/a | [`0x0eda20f7499aae7bdadc4e52fd72e49663733ed4`](./contracts/ethereum-1/0x0eda20f7499aae7bdadc4e52fd72e49663733ed4/) | ⚠️ Unaudited |
| TransferProxy | unknown | ethereum | n/a | [`0xf0ab759d3a1a4956e8c3c52c71ccb50f20bc342b`](./contracts/ethereum-1/0xf0ab759d3a1a4956e8c3c52c71ccb50f20bc342b/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x004e9c3ef86bc1ca1f0bb5c7662861ee93350568`](./contracts/ethereum-1/0x004e9c3ef86bc1ca1f0bb5c7662861ee93350568/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x0295e0ce709723fb25a28b8f67c54a488ba5ae46`](./contracts/ethereum-1/0x0295e0ce709723fb25a28b8f67c54a488ba5ae46/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x02e3e2c644601b18ad67a6f09155fe5581af25ea`](./contracts/ethereum-1/0x02e3e2c644601b18ad67a6f09155fe5581af25ea/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x047d41f2544b7f63a8e991af2068a363d210d6da`](./contracts/ethereum-1/0x047d41f2544b7f63a8e991af2068a363d210d6da/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x1419b48e5c1f5ce413cf02d6dcbe1314170e3386`](./contracts/ethereum-1/0x1419b48e5c1f5ce413cf02d6dcbe1314170e3386/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x1fcca65fb6ae3b2758b9b2b394cb227eae404e1e`](./contracts/ethereum-1/0x1fcca65fb6ae3b2758b9b2b394cb227eae404e1e/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x27e120c518a339c3d8b665e56c4503df785985c2`](./contracts/ethereum-1/0x27e120c518a339c3d8b665e56c4503df785985c2/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x2ec37d45fcae65d9787ecf71dc85a444968f6646`](./contracts/ethereum-1/0x2ec37d45fcae65d9787ecf71dc85a444968f6646/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x33757a5e3afb438733679275c03ee2db43f43ee7`](./contracts/ethereum-1/0x33757a5e3afb438733679275c03ee2db43f43ee7/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x3b099bc0e9854799688b0542222c938e0a6b7f24`](./contracts/ethereum-1/0x3b099bc0e9854799688b0542222c938e0a6b7f24/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x4befa2aa9c305238aa3e0b5d17eb20c045269e9d`](./contracts/ethereum-1/0x4befa2aa9c305238aa3e0b5d17eb20c045269e9d/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x552b0c6688fcae5cf0164f27fd129b882a42fa05`](./contracts/ethereum-1/0x552b0c6688fcae5cf0164f27fd129b882a42fa05/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x6f149f8bf1cb0245e70171c9972059c22294aa35`](./contracts/ethereum-1/0x6f149f8bf1cb0245e70171c9972059c22294aa35/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0xb08fbe0e46c284c002d7718b992c7022aa1f061e`](./contracts/ethereum-1/0xb08fbe0e46c284c002d7718b992c7022aa1f061e/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0xd789870bea40d056a4d26055d0befcc8755da146`](./contracts/ethereum-1/0xd789870bea40d056a4d26055d0befcc8755da146/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0xe542919e4b281f10b437f947c8ba224ddfabc716`](./contracts/ethereum-1/0xe542919e4b281f10b437f947c8ba224ddfabc716/) | ⚠️ Unaudited |
| Treasury | unknown | ethereum | n/a | [`0x5ebb3f2feaa15271101a927869b3a56837e73056`](./contracts/ethereum-1/0x5ebb3f2feaa15271101a927869b3a56837e73056/) | ⚠️ Unaudited |
| TreasuryFeeHandler | unknown | ethereum | n/a | [`0xe20403867780129b9b5be8da9a84511b406fc6d2`](./contracts/ethereum-1/0xe20403867780129b9b5be8da9a84511b406fc6d2/) | ⚠️ Unaudited |
| TreasuryV2Radar | unknown | ethereum | n/a | [`0xdcc1a1a26807c687300a63a72ef111f6fe994068`](./contracts/ethereum-1/0xdcc1a1a26807c687300a63a72ef111f6fe994068/) | ⚠️ Unaudited |
| TubFab | unknown | ethereum | n/a | [`0xb3b67099121e1fbde6276b2802048d1a7dd1b987`](./contracts/ethereum-1/0xb3b67099121e1fbde6276b2802048d1a7dd1b987/) | ⚠️ Unaudited |
| UltraLightNode | unknown | ethereum | n/a | [`0x5b19bd330a84c049b62d5b0fc2ba120217a18c1c`](./contracts/ethereum-1/0x5b19bd330a84c049b62d5b0fc2ba120217a18c1c/) | ⚠️ Unaudited |
| UltraLightNodeV2Radar | unknown | ethereum | n/a | [`0xbe4fb271cfb7bcbb47ea9573321c7bfe309fc220`](./contracts/ethereum-1/0xbe4fb271cfb7bcbb47ea9573321c7bfe309fc220/) | ⚠️ Unaudited |
| USD0LpOracle | unknown | ethereum | n/a | [`0x2aeb5c8776567c4eeebda1450e343b1bef49ae32`](./contracts/ethereum-1/0x2aeb5c8776567c4eeebda1450e343b1bef49ae32/) | ⚠️ Unaudited |
| UUPSProxy | unknown | ethereum | n/a | [`0x0ef8fa4760db8f5cd4d993f3e3416f30f942d705`](./contracts/ethereum-1/0x0ef8fa4760db8f5cd4d993f3e3416f30f942d705/) | ⚠️ Unaudited |
| UUPSProxy | unknown | ethereum | n/a | [`0x1b7a4c3797236a1c37f8741c0be35c2c72736fff`](./contracts/ethereum-1/0x1b7a4c3797236a1c37f8741c0be35c2c72736fff/) | ⚠️ Unaudited |
| UUPSProxy | unknown | ethereum | n/a | [`0x200057a0a4a97149b0924c5dbba868f283d903a2`](./contracts/ethereum-1/0x200057a0a4a97149b0924c5dbba868f283d903a2/) | ⚠️ Unaudited |
| UUPSProxy | unknown | ethereum | n/a | [`0x2093bbb221f1d8c7c932c32ee28be6dee4a37a6a`](./contracts/ethereum-1/0x2093bbb221f1d8c7c932c32ee28be6dee4a37a6a/) | ⚠️ Unaudited |
| UUPSProxy | unknown | ethereum | n/a | [`0x2ecd155405ca52a5ca0e552981ff44a8252fab81`](./contracts/ethereum-1/0x2ecd155405ca52a5ca0e552981ff44a8252fab81/) | ⚠️ Unaudited |
| UUPSProxy | unknown | ethereum | n/a | [`0x46c4ab30743759ec142f7495b7e935e213cc29a8`](./contracts/ethereum-1/0x46c4ab30743759ec142f7495b7e935e213cc29a8/) | ⚠️ Unaudited |
| UUPSProxy | unknown | ethereum | n/a | [`0x57aaf0004c716388b21795431cd7d5f9d3bb6a41`](./contracts/ethereum-1/0x57aaf0004c716388b21795431cd7d5f9d3bb6a41/) | ⚠️ Unaudited |
| UUPSProxy | unknown | ethereum | n/a | [`0x857b4faa11b143f69f091d1c4ded5480a8d16f8b`](./contracts/ethereum-1/0x857b4faa11b143f69f091d1c4ded5480a8d16f8b/) | ⚠️ Unaudited |
| UUPSProxy | unknown | ethereum | n/a | [`0xcd5fe23c85820f7b72d0926fc9b05b43e359b7ee`](./contracts/ethereum-1/0xcd5fe23c85820f7b72d0926fc9b05b43e359b7ee/) | ⚠️ Unaudited |
| UUPSProxy | unknown | ethereum | n/a | [`0xd0ff8996db4bdb46870b7e833b7532f484fead1a`](./contracts/ethereum-1/0xd0ff8996db4bdb46870b7e833b7532f484fead1a/) | ⚠️ Unaudited |
| UUPSProxy | unknown | ethereum | n/a | [`0xd5edf7730abad812247f6f54d7bd31a52554e35e`](./contracts/ethereum-1/0xd5edf7730abad812247f6f54d7bd31a52554e35e/) | ⚠️ Unaudited |
| Vote | unknown | ethereum | n/a | [`0x4e9ae452290570834c978edf9b3febbcd4938227`](./contracts/ethereum-1/0x4e9ae452290570834c978edf9b3febbcd4938227/) | ⚠️ Unaudited |
| VoxFab | unknown | ethereum | n/a | [`0x414b1da0bb6e948dc0559d14ebde9fa9572499bf`](./contracts/ethereum-1/0x414b1da0bb6e948dc0559d14ebde9fa9572499bf/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | [`0x0145fd99f1dd6e2491e44fca608c481c9c5b97a9`](./contracts/ethereum-1/0x0145fd99f1dd6e2491e44fca608c481c9c5b97a9/) | ⚠️ Unaudited |
| waBTC | unknown | ethereum | n/a | [`0x09def5abc67e967d54e8233a4b5ebbc1b3fbe34b`](./contracts/ethereum-1/0x09def5abc67e967d54e8233a4b5ebbc1b3fbe34b/) | ⚠️ Unaudited |
| waBtcOFTAdapter | unknown | ethereum | n/a | [`0x37016812a5c2c54793fd277b7f75086a47377d28`](./contracts/ethereum-1/0x37016812a5c2c54793fd277b7f75086a47377d28/) | ⚠️ Unaudited |
| WBTC-crvUSDleveragezap | unknown | ethereum | n/a | [`0xa2518b71ee64e910741f5cf480b19e8e402de4d7`](./contracts/ethereum-1/0xa2518b71ee64e910741f5cf480b19e8e402de4d7/) | ⚠️ Unaudited |
| WETH | unknown | ethereum | n/a | [`0x353f8931ce1c52f643121be129985aab09c4bf52`](./contracts/ethereum-1/0x353f8931ce1c52f643121be129985aab09c4bf52/) | ⚠️ Unaudited |
| WETH9 | unknown | ethereum | n/a | [`0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2`](./contracts/ethereum-1/0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2/) | ⚠️ Unaudited |
| WithdrawRequestNFT | unknown | ethereum | n/a | [`0x3ed97c79ded8894036da095b2e2f79f8080a9cd4`](./contracts/ethereum-1/0x3ed97c79ded8894036da095b2e2f79f8080a9cd4/) | ⚠️ Unaudited |
| WrapperLockEth | unknown | ethereum | n/a | [`0x991f0e5c5775ca9dd02e30e67f545c36cff3690e`](./contracts/ethereum-1/0x991f0e5c5775ca9dd02e30e67f545c36cff3690e/) | ⚠️ Unaudited |
| wstETH_Burner | unknown | ethereum | n/a | [`0xa7581ebe7870a220360d216c3404ff7cb79b2a0f`](./contracts/ethereum-1/0xa7581ebe7870a220360d216c3404ff7cb79b2a0f/) | ⚠️ Unaudited |
| wstETH-crvUSDleveragezap | unknown | ethereum | n/a | [`0x293436d4e4a15fbc6ccc400c14a01735e5fc74fd`](./contracts/ethereum-1/0x293436d4e4a15fbc6ccc400c14a01735e5fc74fd/) | ⚠️ Unaudited |

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

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [cantina-airdrop-1.pdf](https://github.com/usecorn/audits/blob/main/airdrop/cantina-airdrop-1.pdf) | Spearbit | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |
| [Zenith-Bitcorn-OFT-Swap-Facility.pdf](https://github.com/usecorn/audits/blob/main/bitcorn/Zenith-Bitcorn-OFT-Swap-Facility.pdf) | Zenith | Audit | 2024-11 | aging | Direct | contract_name | 1 | high |
| [cantina-bitcorn-oft-1.pdf](https://github.com/usecorn/audits/blob/main/bitcorn/cantina-bitcorn-oft-1.pdf) | Spearbit | Audit | 2024-12 | aging | Direct | contract_name | 1 | high |
| [cantina-bitcorn-oft-2.pdf](https://github.com/usecorn/audits/blob/main/bitcorn/cantina-bitcorn-oft-2.pdf) | Spearbit | Audit | 2024-12 | aging | Direct | contract_name | 3 | high |
| [cantina-bitcorn-oft-3.pdf](https://github.com/usecorn/audits/blob/main/bitcorn/cantina-bitcorn-oft-3.pdf) | Spearbit | Audit | 2025-03 | aging | Direct | contract_name | 2 | medium |
| [Spearbit-Bitcorn-CornSilo-Review.pdf](https://github.com/usecorn/audits/blob/main/cornsilo/Spearbit-Bitcorn-CornSilo-Review.pdf) | Spearbit | Audit | 2024-05 | stale | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x5e14fe5ea32ee54c6cb3c237ffdce1c57df2a0be`](./contracts/ethereum-1/0x5e14fe5ea32ee54c6cb3c237ffdce1c57df2a0be/) | aBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x20ee00f43ef299dba82ba6fef537756dabe38cc7`](./contracts/ethereum-1/0x20ee00f43ef299dba82ba6fef537756dabe38cc7/) | AddressProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0901b541beff2cd44859701619e245e82f48e62b`](./contracts/ethereum-1/0x0901b541beff2cd44859701619e245e82f48e62b/) | AggMonetaryPolicy-monetarypolicybasedonaggregatedpricesforcrvUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x18672b1b0c623a30089a280ed9256379fb0e4e62`](./contracts/ethereum-1/0x18672b1b0c623a30089a280ed9256379fb0e4e62/) | AggregatorStablePrice-aggregatorofstablecoinpricesforcrvUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb823359367978a28eae71e90f79d95b62348bd80`](./contracts/ethereum-1/0xb823359367978a28eae71e90f79d95b62348bd80/) | AssetRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x68fe80c6e97e0c8613e2fed344358c6635ba5366`](./contracts/ethereum-1/0x68fe80c6e97e0c8613e2fed344358c6635ba5366/) | AuctionManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8969d7c2e3e5b056d5d4984031788eca923960f5`](./contracts/ethereum-1/0x8969d7c2e3e5b056d5d4984031788eca923960f5/) | AvsOperator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6a393848f5d1b8e7dab45f3a7e01f9f0dc687242`](./contracts/ethereum-1/0x6a393848f5d1b8e7dab45f3a7e01f9f0dc687242/) | BNFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x130e22952dd3de2c80ebdfc2b256e344ff3a0729`](./contracts/ethereum-1/0x130e22952dd3de2c80ebdfc2b256e344ff3a0729/) | BoringVaultPriceProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b67c2908ef408f6612e025fe3cf12c8507a4717`](./contracts/ethereum-1/0x1b67c2908ef408f6612e025fe3cf12c8507a4717/) | Bridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc1fe8a0daed7e912d3b5b56ff6e05f17d82059c8`](./contracts/ethereum-1/0xc1fe8a0daed7e912d3b5b56ff6e05f17d82059c8/) | BridgeV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x771d10d0c86e26ea8d3b778ad4d31b30533b9cbf`](./contracts/ethereum-1/0x771d10d0c86e26ea8d3b778ad4d31b30533b9cbf/) | CCIPDVNAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x17ea3dcd055a72b137e6f09cd5f2a1c187908ee1`](./contracts/ethereum-1/0x17ea3dcd055a72b137e6f09cd5f2a1c187908ee1/) | CCIPPeer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7c3f1fe22959b4f6ac2bf2474b3bdf9969465c95`](./contracts/ethereum-1/0x7c3f1fe22959b4f6ac2bf2474b3bdf9969465c95/) | CelerMinterReceiver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2298d44cfda0ceafe7f5ef5fd587b67d7b9b1fbb`](./contracts/ethereum-1/0x2298d44cfda0ceafe7f5ef5fd587b67d7b9b1fbb/) | CLAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9f8048c81d00da5e757e20ad5fc89f8a32c5478e`](./contracts/ethereum-1/0x9f8048c81d00da5e757e20ad5fc89f8a32c5478e/) | Consortium | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0969f8752a32b4f1f9d07b751c7bacbf6d9ae733`](./contracts/ethereum-1/0x0969f8752a32b4f1f9d07b751c7bacbf6d9ae733/) | CornDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x29a4e79dc35f94ed6aa91c0e0d96c0c7472ef7ff`](./contracts/ethereum-1/0x29a4e79dc35f94ed6aa91c0e0d96c0c7472ef7ff/) | CornSiloZapV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6521991a0bc180a5df7f42b27f4ee8f3b192ba62`](./contracts/ethereum-1/0x6521991a0bc180a5df7f42b27f4ee8f3b192ba62/) | Create2Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x17c6e1ddf1cce3d33240a53fce8a2ee48541f4d4`](./contracts/ethereum-1/0x17c6e1ddf1cce3d33240a53fce8a2ee48541f4d4/) | crvUSD Controller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc9332fdcb1c491dcc683bae86fe3cb70360738bc`](./contracts/ethereum-1/0xc9332fdcb1c491dcc683bae86fe3cb70360738bc/) | crvUSDControllerFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2bc706b83ab08d0437b8a397242c3284b5f81d74`](./contracts/ethereum-1/0x2bc706b83ab08d0437b8a397242c3284b5f81d74/) | crvUSDdeleveragezap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf939e0a03fb07f59a73314e73794be0e57ac1b4e`](./contracts/ethereum-1/0xf939e0a03fb07f59a73314e73794be0e57ac1b4e/) | crvUSDStablecoin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3b38ce23799dc56664ff6048892510abffdb7a25`](./contracts/ethereum-1/0x3b38ce23799dc56664ff6048892510abffdb7a25/) | CryptoFromPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x38e7627eb98a40e7528bcce709a80083093ba2f8`](./contracts/ethereum-1/0x38e7627eb98a40e7528bcce709a80083093ba2f8/) | CryptoFromPoolsRate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0a9ae947495034c0bbbab845fd75b5bbafc91aab`](./contracts/ethereum-1/0x0a9ae947495034c0bbbab845fd75b5bbafc91aab/) | CryptoFromPoolsRateWAgg | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x002688c4296a2c4d800f271fe6f01741111b09be`](./contracts/ethereum-1/0x002688c4296a2c4d800f271fe6f01741111b09be/) | CryptoFromPoolVaultWAgg | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2d89d82ff68bae1357d746b3e8eac520bfe1d5ca`](./contracts/ethereum-1/0x2d89d82ff68bae1357d746b3e8eac520bfe1d5ca/) | CryptoFromPoolWAgg | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x966cbdecefb60a289b0460f7638f4a75f432ca06`](./contracts/ethereum-1/0x966cbdecefb60a289b0460f7638f4a75f432ca06/) | CryptoWithStablePriceETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x28d7880b5b67fb4a0b1c6ed6c33c33f365113c29`](./contracts/ethereum-1/0x28d7880b5b67fb4a0b1c6ed6c33c33f365113c29/) | CryptoWithStablePriceSfrxeth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbef434e2acf0fbad1f0579d2376fed0d1cfc4217`](./contracts/ethereum-1/0xbef434e2acf0fbad1f0579d2376fed0d1cfc4217/) | CryptoWithStablePriceTBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x07374b547cae235227635c13266c69847a3e46fa`](./contracts/ethereum-1/0x07374b547cae235227635c13266c69847a3e46fa/) | CryptoWithStablePriceWBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x21f5f6d3f90d0f56a6de307a3bd359d0a151b304`](./contracts/ethereum-1/0x21f5f6d3f90d0f56a6de307a3bd359d0a151b304/) | CryptoWithStablePriceWsteth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x26542fbe5f320f25747e80831acdd1f27cdd0c65`](./contracts/ethereum-1/0x26542fbe5f320f25747e80831acdd1f27cdd0c65/) | CumulativeMerkleDrop | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x01c1103d765f62a0d909499d7b615c382cdb072d`](./contracts/ethereum-1/0x01c1103d765f62a0d909499d7b615c382cdb072d/) | DadFab | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf07674f6ac6632e253c291b694f9c2e2ed69ebbb`](./contracts/ethereum-1/0xf07674f6ac6632e253c291b694f9c2e2ed69ebbb/) | DaiFab | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x747c741496a507e4b404b50463e691a8d692f6ac`](./contracts/ethereum-1/0x747c741496a507e4b404b50463e691a8d692f6ac/) | DeadDVN | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x720081e3ee2b1542e341afc793de20b08beb859d`](./contracts/ethereum-1/0x720081e3ee2b1542e341afc793de20b08beb859d/) | DelayRedeemRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x10f2c552ef9ca8d2b592a8055e2db0efe5c561d6`](./contracts/ethereum-1/0x10f2c552ef9ca8d2b592a8055e2db0efe5c561d6/) | depositRootGenerator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x11964b366f794ae56717e8efa05d31ab2a09954b`](./contracts/ethereum-1/0x11964b366f794ae56717e8efa05d31ab2a09954b/) | directBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x704a2f4de8628e180fffa0e89203468dcc9481ee`](./contracts/ethereum-1/0x704a2f4de8628e180fffa0e89203468dcc9481ee/) | DirectBTCMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x07a5d37823c5c7963042fab79ed4747ab60eef57`](./contracts/ethereum-1/0x07a5d37823c5c7963042fab79ed4747ab60eef57/) | DirectStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8e2a84d6ade1e7fffee039a35ef5f19f13057152`](./contracts/ethereum-1/0x8e2a84d6ade1e7fffee039a35ef5f19f13057152/) | DSChief | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1e7ca05e174a523709e556080e227f734a8f1483`](./contracts/ethereum-1/0x1e7ca05e174a523709e556080e227f734a8f1483/) | DSChiefFab | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x006e1248be5e40b4a4e7099397719df7ab872de7`](./contracts/ethereum-1/0x006e1248be5e40b4a4e7099397719df7ab872de7/) | DVN | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x021e401c2a1a60618c5e6353a40524971eba1e8d`](./contracts/ethereum-1/0x021e401c2a1a60618c5e6353a40524971eba1e8d/) | DVNFeeLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x81be3526a71d9013a1a5bd38758e0f248231b523`](./contracts/ethereum-1/0x81be3526a71d9013a1a5bd38758e0f248231b523/) | eBtcRateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b47a665364bc15c28b05f449b53354d0ceff72f`](./contracts/ethereum-1/0x1b47a665364bc15c28b05f449b53354d0ceff72f/) | EETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x66a71dcef29a0ffbdbe3c6a460a3b5bc225cd675`](./contracts/ethereum-1/0x66a71dcef29a0ffbdbe3c6a460a3b5bc225cd675/) | Endpoint | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x175bfec21a4949c339d1b9b621ad325d9892888f`](./contracts/ethereum-1/0x175bfec21a4949c339d1b9b621ad325d9892888f/) | EndpointV2View | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6a9a65b84843f5fd4ac9a0471c4fc11afffbce4a`](./contracts/ethereum-1/0x6a9a65b84843f5fd4ac9a0471c4fc11afffbce4a/) | EnzoBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x99de5239a8ad65ed86db3d36e0fd9f9cba7d63d5`](./contracts/ethereum-1/0x99de5239a8ad65ed86db3d36e0fd9f9cba7d63d5/) | EnzoBTCOFTAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3f987372a1ae29f834deaea66d2e72137ba10fc7`](./contracts/ethereum-1/0x3f987372a1ae29f834deaea66d2e72137ba10fc7/) | ERC4626VaultWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x512258182db0ad147cdc1a116191be823f8f198c`](./contracts/ethereum-1/0x512258182db0ad147cdc1a116191be823f8f198c/) | FBTCPartnerVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa3a30f627dbc02aff3c0a736a065443a0e85b1ae`](./contracts/ethereum-1/0xa3a30f627dbc02aff3c0a736a065443a0e85b1ae/) | FBTCProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8cbde23b1416cac07a52591bba744c744d77a91a`](./contracts/ethereum-1/0x8cbde23b1416cac07a52591bba744c744d77a91a/) | FiatToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48`](./contracts/ethereum-1/0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48/) | FiatTokenProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6315aa908c50376d1028412c028aa0629f0355a6`](./contracts/ethereum-1/0x6315aa908c50376d1028412c028aa0629f0355a6/) | FiatTokenUtil | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0882477e7895bdc5cea7cb1552ed914ab157fe56`](./contracts/ethereum-1/0x0882477e7895bdc5cea7cb1552ed914ab157fe56/) | FiatTokenV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb7277a6e95992041568d9391d09d0122023778a2`](./contracts/ethereum-1/0xb7277a6e95992041568d9391d09d0122023778a2/) | FiatTokenV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa2327a938febf5fec13bacfb16ae10ecbc4cbdcf`](./contracts/ethereum-1/0xa2327a938febf5fec13bacfb16ae10ecbc4cbdcf/) | FiatTokenV2_1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x07245eea05826f5984c7c3c8f478b04892e4df89`](./contracts/ethereum-1/0x07245eea05826f5984c7c3c8f478b04892e4df89/) | FPValidator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x431e935209d79706b5866eb42137a3491d845692`](./contracts/ethereum-1/0x431e935209d79706b5866eb42137a3491d845692/) | GemFab | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x69076e44a9c70a67d5b79d95795aba299083c275`](./contracts/ethereum-1/0x69076e44a9c70a67d5b79d95795aba299083c275/) | GemPit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc5fd9570ac1a5dab9eda7839bd33229252b0c05d`](./contracts/ethereum-1/0xc5fd9570ac1a5dab9eda7839bd33229252b0c05d/) | GIN | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x325ea059f11d6860e50a803ae52d49ef35c85fb9`](./contracts/ethereum-1/0x325ea059f11d6860e50a803ae52d49ef35c85fb9/) | globalIndexLibrary | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc3ecfe771564e3f28cfb7a9b203f4d10279338ed`](./contracts/ethereum-1/0xc3ecfe771564e3f28cfb7a9b203f4d10279338ed/) | GMPBasculeV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x515c7d8fcb950f8b030ac08c994b37b4b8f3f7b5`](./contracts/ethereum-1/0x515c7d8fcb950f8b030ac08c994b37b4b8f3f7b5/) | Governor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcf61ee62b136e3553fb545bd8fec11fb7f830d6a`](./contracts/ethereum-1/0xcf61ee62b136e3553fb545bd8fec11fb7f830d6a/) | HealthcalculatorzapforcrvUSDcontroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x77d81c09e64972fef1a785e9c6357847c08a5b9f`](./contracts/ethereum-1/0x77d81c09e64972fef1a785e9c6357847c08a5b9f/) | IBCVoucher | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x33275453144a4d6ef266ef1164f3e6fcb6ef27f1`](./contracts/ethereum-1/0x33275453144a4d6ef266ef1164f3e6fcb6ef27f1/) | L1LineaReceiverETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x12364c9d095a2a43abb71b0d8313663ff0348eea`](./contracts/ethereum-1/0x12364c9d095a2a43abb71b0d8313663ff0348eea/) | LBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1290a6b480f7ef14925229fdb66f5680ad8f44ad`](./contracts/ethereum-1/0x1290a6b480f7ef14925229fdb66f5680ad8f44ad/) | LBTCOFTAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb556fa4c4752321b3154f08dfbdfcf34847f2eac`](./contracts/ethereum-1/0xb556fa4c4752321b3154f08dfbdfcf34847f2eac/) | LeveragezapforcrvUSDcontroller(sfrxETHmarket) | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x485fd98f834b4bf9db855f8fa03990318103c12e`](./contracts/ethereum-1/0x485fd98f834b4bf9db855f8fa03990318103c12e/) | LiquidCashier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaec1fbb90528533d5f066094abdeb2f1b0039a3b`](./contracts/ethereum-1/0xaec1fbb90528533d5f066094abdeb2f1b0039a3b/) | LiquidFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x00b71a425db7c8b65a46cf39c23a188e10a2de99`](./contracts/ethereum-1/0x00b71a425db7c8b65a46cf39c23a188e10a2de99/) | LiquidityGaugeV6 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x02656fe285fac5d5c756c2f03c17277df9bac65b`](./contracts/ethereum-1/0x02656fe285fac5d5c756c2f03c17277df9bac65b/) | LiquidityPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6f26b0f570c2cfb4050b424ef6ea5903818404ac`](./contracts/ethereum-1/0x6f26b0f570c2cfb4050b424ef6ea5903818404ac/) | LiquidOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd1693b20932c798a63375db0252be7ca449ffa3b`](./contracts/ethereum-1/0xd1693b20932c798a63375db0252be7ca449ffa3b/) | LiquidVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2225c97928934625e8382e6636d30f94c46b6ed3`](./contracts/ethereum-1/0x2225c97928934625e8382e6636d30f94c46b6ed3/) | Liquifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ec8e0c868541df59ced49b39cc930c3a8dbd93a`](./contracts/ethereum-1/0x0ec8e0c868541df59ced49b39cc930c3a8dbd93a/) | LLAMMA - crvUSD AMM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2e1871fc8ac793dcf2a74ce004ee21d913763565`](./contracts/ethereum-1/0x2e1871fc8ac793dcf2a74ce004ee21d913763565/) | LombardConsortium | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x055e84e7fe8955e2781010b866f10ef6e1e77e59`](./contracts/ethereum-1/0x055e84e7fe8955e2781010b866f10ef6e1e77e59/) | LombardTimeLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x61003ba35d6f57e0b61442bc88c2c7a45bf56095`](./contracts/ethereum-1/0x61003ba35d6f57e0b61442bc88c2c7a45bf56095/) | LombardTokenPoolV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1d716d4ec89060411b978e00691fac9795f2cd24`](./contracts/ethereum-1/0x1d716d4ec89060411b978e00691fac9795f2cd24/) | LoyaltyPointsMarketSafe | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3d987e04fc47ac625f720f169c658307fd9a16a2`](./contracts/ethereum-1/0x3d987e04fc47ac625f720f169c658307fd9a16a2/) | LRTSquare | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x138f08a1798b7cf15adbf051bc2f11bca0ea7743`](./contracts/ethereum-1/0x138f08a1798b7cf15adbf051bc2f11bca0ea7743/) | LRTSquared | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd2b8c78a5eb18a5f3b0392c5479bb45c77d02ff5`](./contracts/ethereum-1/0xd2b8c78a5eb18a5f3b0392c5479bb45c77d02ff5/) | LRTSquaredAdmin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1cb489ef513e1cc35c4657c91853a2e6ff1957de`](./contracts/ethereum-1/0x1cb489ef513e1cc35c4657c91853a2e6ff1957de/) | LRTSquaredCore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ab536262d4d44b0ec1fc7bf4e6dec4b4557ad21`](./contracts/ethereum-1/0x0ab536262d4d44b0ec1fc7bf4e6dec4b4557ad21/) | LzExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x052359563d104867a42c48cb7e688b1af22f0080`](./contracts/ethereum-1/0x052359563d104867a42c48cb7e688b1af22f0080/) | Mailbox | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x566c11b5c2201b69c9269fe924e4395873674335`](./contracts/ethereum-1/0x566c11b5c2201b69c9269fe924e4395873674335/) | MasterMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x047a7749ad683c2fd8a27c7904ca8dd128f15889`](./contracts/ethereum-1/0x047a7749ad683c2fd8a27c7904ca8dd128f15889/) | MembershipManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x290d981b41b713437265cd7846806d7500307106`](./contracts/ethereum-1/0x290d981b41b713437265cd7846806d7500307106/) | MembershipNFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x003ea7f54b6dcf6cee86986edc18143a35f15505`](./contracts/ethereum-1/0x003ea7f54b6dcf6cee86986edc18143a35f15505/) | MiniMeTokenFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x81d7dab8b95085034d9ce90958038251726b2c59`](./contracts/ethereum-1/0x81d7dab8b95085034d9ce90958038251726b2c59/) | MintStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x141a206ece672e3198086c5d21f7858ad03669ea`](./contracts/ethereum-1/0x141a206ece672e3198086c5d21f7858ad03669ea/) | MomFab | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe9ae261d3aff7d3fccf38fa2d612dd3897e07b2d`](./contracts/ethereum-1/0xe9ae261d3aff7d3fccf38fa2d612dd3897e07b2d/) | MPTValidatorV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4b4ca2f2ad3a5464cc8c01ece76c2951f3abefb2`](./contracts/ethereum-1/0x4b4ca2f2ad3a5464cc8c01ece76c2951f3abefb2/) | MPTValidatorV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe04f26f3f47b6054aeb15796ac4af3c61f08e832`](./contracts/ethereum-1/0xe04f26f3f47b6054aeb15796ac4af3c61f08e832/) | MPTValidatorV5 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x32facb5a46e02decaf5f939ab12c123eee203a5f`](./contracts/ethereum-1/0x32facb5a46e02decaf5f939ab12c123eee203a5f/) | MultiClaim | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6b89d757668a830f17d693a88d46073501df635d`](./contracts/ethereum-1/0x6b89d757668a830f17d693a88d46073501df635d/) | NativeLBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcc80c051057b774cd75067dc48f8987c4eb97a5e`](./contracts/ethereum-1/0xcc80c051057b774cd75067dc48f8987c4eb97a5e/) | NEC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8d5a41e85f4ce2433beef476305d307b9205d98d`](./contracts/ethereum-1/0x8d5a41e85f4ce2433beef476305d307b9205d98d/) | NectarController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x274bbdb8db5cca01e8364e781f8c338f79cb2fc8`](./contracts/ethereum-1/0x274bbdb8db5cca01e8364e781f8c338f79cb2fc8/) | NetworkRestakeResetHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x087cebbd85a161a50f91b9d7743e8b89fc384e2e`](./contracts/ethereum-1/0x087cebbd85a161a50f91b9d7743e8b89fc384e2e/) | NonceContractRadar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x34024ba3b6edaf5cdd1c24fefe1df5d03041f38c`](./contracts/ethereum-1/0x34024ba3b6edaf5cdd1c24fefe1df5d03041f38c/) | OneWayLendingFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0330f95a5110e9f72fe0776a1291834ffeacb1e0`](./contracts/ethereum-1/0x0330f95a5110e9f72fe0776a1291834ffeacb1e0/) | OptimizedTransparentUpgradeableProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x16cc4ef7c128d7fea96cf46ffd9dd20f76170347`](./contracts/ethereum-1/0x16cc4ef7c128d7fea96cf46ffd9dd20f76170347/) | OptimizedTransparentUpgradeableProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x173272739bd7aa6e4e214714048a9fe699453059`](./contracts/ethereum-1/0x173272739bd7aa6e4e214714048a9fe699453059/) | OptimizedTransparentUpgradeableProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbec6f0034cb9055b68dc5f02873b45841ab56af7`](./contracts/ethereum-1/0xbec6f0034cb9055b68dc5f02873b45841ab56af7/) | OptimizedTransparentUpgradeableProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1ef89ed0edd93d1ec09e4c07373f69c49f4dccae`](./contracts/ethereum-1/0x1ef89ed0edd93d1ec09e4c07373f69c49f4dccae/) | PegKeeper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x226845c2ba216b8bb1aaadfd4e14de69426c5445`](./contracts/ethereum-1/0x226845c2ba216b8bb1aaadfd4e14de69426c5445/) | PegPrice | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ac774014e2306dbddac4af7cb0f80087de76f52`](./contracts/ethereum-1/0x0ac774014e2306dbddac4af7cb0f80087de76f52/) | PodOwner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8b7a14fc3a93c2d43ffd2d2089d4e84c0f97ff44`](./contracts/ethereum-1/0x8b7a14fc3a93c2d43ffd2d2089d4e84c0f97ff44/) | PreOrder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb26ac124db9439edb7de503ef62e3d3d4e29090c`](./contracts/ethereum-1/0xb26ac124db9439edb7de503ef62e3d3d4e29090c/) | PriceFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x28a6e7ebb6aca8f64145952a9565245c3dc1f32f`](./contracts/ethereum-1/0x28a6e7ebb6aca8f64145952a9565245c3dc1f32f/) | PriceProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaf8749c3dc1fc0592f21c2593204c45d3be0d322`](./contracts/ethereum-1/0xaf8749c3dc1fc0592f21c2593204c45d3be0d322/) | ProtocolRevenueManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x72233ff361ebd3e157e3fa5224365137b6dee7db`](./contracts/ethereum-1/0x72233ff361ebd3e157e3fa5224365137b6dee7db/) | ProxyMock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ed540d53b4b49931544a6d8926f3157784b079c`](./contracts/ethereum-1/0x0ed540d53b4b49931544a6d8926f3157784b079c/) | PUMP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x77d22a277b1b29d9b07c207aa1cdfcc38404eaad`](./contracts/ethereum-1/0x77d22a277b1b29d9b07c207aa1cdfcc38404eaad/) | PumpLockMint | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2cd2644edab51cb2122f37e03e5f997661d49cfe`](./contracts/ethereum-1/0x2cd2644edab51cb2122f37e03e5f997661d49cfe/) | PumpToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xadc9c900b05f39f48bb6f402a1bae60929f4f9a8`](./contracts/ethereum-1/0xadc9c900b05f39f48bb6f402a1bae60929f4f9a8/) | PumpTokenOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcb1b273f03c084a906ee64f27beeed7293ef3a52`](./contracts/ethereum-1/0xcb1b273f03c084a906ee64f27beeed7293ef3a52/) | PumpTokenOFTAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x74f55bc2a79a27a0bf1d1a35db5d0fc36b9fdb9d`](./contracts/ethereum-1/0x74f55bc2a79a27a0bf1d1a35db5d0fc36b9fdb9d/) | ReadLib1002 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x245b6e8ffe9ea5fc301e32d16f66bd4c2123eefc`](./contracts/ethereum-1/0x245b6e8ffe9ea5fc301e32d16f66bd4c2123eefc/) | ReceiveUln301 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc02ab410f0734efa3f14628780e6e695156024c2`](./contracts/ethereum-1/0xc02ab410f0734efa3f14628780e6e695156024c2/) | ReceiveUln302 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf6c8bd9229b908dbc54fd5eab7dbca037b18c46d`](./contracts/ethereum-1/0xf6c8bd9229b908dbc54fd5eab7dbca037b18c46d/) | ReceiveUln302View | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6882ae88956f676a15efe3e9f920aabaaa57497d`](./contracts/ethereum-1/0x6882ae88956f676a15efe3e9f920aabaaa57497d/) | Redeem | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1fcb83123ffbc72373134d09d1c8ab52812cd0b4`](./contracts/ethereum-1/0x1fcb83123ffbc72373134d09d1c8ab52812cd0b4/) | RegulationsManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x153fb4738c2698bbdbf256d0fc90f5503eeb12d4`](./contracts/ethereum-1/0x153fb4738c2698bbdbf256d0fc90f5503eeb12d4/) | Relayer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdd55f55cb9a39ef1eed4ee1a84ee1b7411be306a`](./contracts/ethereum-1/0xdd55f55cb9a39ef1eed4ee1a84ee1b7411be306a/) | RelayerV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x61ab01ce58d1dff3562bb25870020d555e39d849`](./contracts/ethereum-1/0x61ab01ce58d1dff3562bb25870020d555e39d849/) | RelayerV2Radar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04f744f99ea5c588a8a31906d5b5c91cabb7b5c0`](./contracts/ethereum-1/0x04f744f99ea5c588a8a31906d5b5c91cabb7b5c0/) | Restaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x29b06ce31449a9f89719137a705cff395450a415`](./contracts/ethereum-1/0x29b06ce31449a9f89719137a705cff395450a415/) | RewardPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3376ebca0a85fc8d791b1001a571c41fdd61514a`](./contracts/ethereum-1/0x3376ebca0a85fc8d791b1001a571c41fdd61514a/) | RockXETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3774af7bb6e792963167588ae85b5ab8664ba818`](./contracts/ethereum-1/0x3774af7bb6e792963167588ae85b5ab8664ba818/) | RockXRedeem | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x351eea2c8de2f7f1fb4cf08aa9423cec4269a098`](./contracts/ethereum-1/0x351eea2c8de2f7f1fb4cf08aa9423cec4269a098/) | RockXRestaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x188041ad83145351ef45f4bb91d08886648aeaf8`](./contracts/ethereum-1/0x188041ad83145351ef45f4bb91d08886648aeaf8/) | Secondarymonetarypolicy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4e1f162fd143e4a829341efd6dd451b018b10f9c`](./contracts/ethereum-1/0x4e1f162fd143e4a829341efd6dd451b018b10f9c/) | SecondarymonetarypolicyforWBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2a28789645776eaa95f6d491ff375781ea5b40dd`](./contracts/ethereum-1/0x2a28789645776eaa95f6d491ff375781ea5b40dd/) | SemiLog monetary policy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd231084bfb234c107d3ee2b22f97f3346fdaf705`](./contracts/ethereum-1/0xd231084bfb234c107d3ee2b22f97f3346fdaf705/) | SendUln301 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbb2ea70c9e858123480642cf96acbcce1372dce1`](./contracts/ethereum-1/0xbb2ea70c9e858123480642cf96acbcce1372dce1/) | SendUln302 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x76c57e359c0eda0aac54d97832fb1b4451805ad8`](./contracts/ethereum-1/0x76c57e359c0eda0aac54d97832fb1b4451805ad8/) | SEthFiStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x43ecffe6c6c1b9f24aeb5c180e659c2a6fce11bc`](./contracts/ethereum-1/0x43ecffe6c6c1b9f24aeb5c180e659c2a6fce11bc/) | sfrxETH2crvUSDleveragezap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x18d0d914913ac720a6421cc809f3f44697d021b5`](./contracts/ethereum-1/0x18d0d914913ac720a6421cc809f3f44697d021b5/) | Sigma | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7a56e1c57c7475ccf742a1832b028f0456652f97`](./contracts/ethereum-1/0x7a56e1c57c7475ccf742a1832b028f0456652f97/) | SolvBTCV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9088d8a41744e9cca78d01e6185f2acb81be497a`](./contracts/ethereum-1/0x9088d8a41744e9cca78d01e6185f2acb81be497a/) | StakeAndBake | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0bca0fb61480530e87dddbb3bb5f0539c97eae88`](./contracts/ethereum-1/0x0bca0fb61480530e87dddbb3bb5f0539c97eae88/) | StakeAndBakeNativeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x072072317469ebb6c340a47e41561c9c3b782bd9`](./contracts/ethereum-1/0x072072317469ebb6c340a47e41561c9c3b782bd9/) | StakedLBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5e28ef6d59fa87530fd058e0d5a94f657f1fdc1c`](./contracts/ethereum-1/0x5e28ef6d59fa87530fd058e0d5a94f657f1fdc1c/) | StakedLBTCOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4ad639fc9c73f547bfff8b28d091d86d2472fa1e`](./contracts/ethereum-1/0x4ad639fc9c73f547bfff8b28d091d86d2472fa1e/) | StakingManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf6718b2701d4a6498ef77d7c152b2137ab28b8a3`](./contracts/ethereum-1/0xf6718b2701d4a6498ef77d7c152b2137ab28b8a3/) | stBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf574cbebbd549273af82b42cd0230de9ea6efef7`](./contracts/ethereum-1/0xf574cbebbd549273af82b42cd0230de9ea6efef7/) | SusdeMonetaryPolicy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x747cac75776b3a0bba3de3e61ec12a6a7f52232e`](./contracts/ethereum-1/0x747cac75776b3a0bba3de3e61ec12a6a7f52232e/) | Swapper1InchV6 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x521c420c2a2b461034becbb41d4888b68951f14f`](./contracts/ethereum-1/0x521c420c2a2b461034becbb41d4888b68951f14f/) | TapFab | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x51d9c2e5f23cc9234fe6a8f9b56fec5f1fbf1a5f`](./contracts/ethereum-1/0x51d9c2e5f23cc9234fe6a8f9b56fec5f1fbf1a5f/) | TellerWithMultiAssetSupportDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0e98db51010dd1ade14dd3fb164e218805fdba1b`](./contracts/ethereum-1/0x0e98db51010dd1ade14dd3fb164e218805fdba1b/) | TetherToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0a3bd90a5a1e52c2900c863bd2b37c3bf65ee310`](./contracts/ethereum-1/0x0a3bd90a5a1e52c2900c863bd2b37c3bf65ee310/) | TimelockControllerEnumerable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9c377a56c4a5eee3fa4c7a8de0440168e4f11708`](./contracts/ethereum-1/0x9c377a56c4a5eee3fa4c7a8de0440168e4f11708/) | TNFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2989c38fb3cfcc0eeaf384ee5f1dc7dc520a4663`](./contracts/ethereum-1/0x2989c38fb3cfcc0eeaf384ee5f1dc7dc520a4663/) | TokenAuthority | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x50002cdfe7ccb0c41f519c6eb0653158d11cd907`](./contracts/ethereum-1/0x50002cdfe7ccb0c41f519c6eb0653158d11cd907/) | TokenBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0eda20f7499aae7bdadc4e52fd72e49663733ed4`](./contracts/ethereum-1/0x0eda20f7499aae7bdadc4e52fd72e49663733ed4/) | TopFab | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf0ab759d3a1a4956e8c3c52c71ccb50f20bc342b`](./contracts/ethereum-1/0xf0ab759d3a1a4956e8c3c52c71ccb50f20bc342b/) | TransferProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5ebb3f2feaa15271101a927869b3a56837e73056`](./contracts/ethereum-1/0x5ebb3f2feaa15271101a927869b3a56837e73056/) | Treasury | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe20403867780129b9b5be8da9a84511b406fc6d2`](./contracts/ethereum-1/0xe20403867780129b9b5be8da9a84511b406fc6d2/) | TreasuryFeeHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdcc1a1a26807c687300a63a72ef111f6fe994068`](./contracts/ethereum-1/0xdcc1a1a26807c687300a63a72ef111f6fe994068/) | TreasuryV2Radar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb3b67099121e1fbde6276b2802048d1a7dd1b987`](./contracts/ethereum-1/0xb3b67099121e1fbde6276b2802048d1a7dd1b987/) | TubFab | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5b19bd330a84c049b62d5b0fc2ba120217a18c1c`](./contracts/ethereum-1/0x5b19bd330a84c049b62d5b0fc2ba120217a18c1c/) | UltraLightNode | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbe4fb271cfb7bcbb47ea9573321c7bfe309fc220`](./contracts/ethereum-1/0xbe4fb271cfb7bcbb47ea9573321c7bfe309fc220/) | UltraLightNodeV2Radar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2aeb5c8776567c4eeebda1450e343b1bef49ae32`](./contracts/ethereum-1/0x2aeb5c8776567c4eeebda1450e343b1bef49ae32/) | USD0LpOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ef8fa4760db8f5cd4d993f3e3416f30f942d705`](./contracts/ethereum-1/0x0ef8fa4760db8f5cd4d993f3e3416f30f942d705/) | UUPSProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b7a4c3797236a1c37f8741c0be35c2c72736fff`](./contracts/ethereum-1/0x1b7a4c3797236a1c37f8741c0be35c2c72736fff/) | UUPSProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x200057a0a4a97149b0924c5dbba868f283d903a2`](./contracts/ethereum-1/0x200057a0a4a97149b0924c5dbba868f283d903a2/) | UUPSProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2093bbb221f1d8c7c932c32ee28be6dee4a37a6a`](./contracts/ethereum-1/0x2093bbb221f1d8c7c932c32ee28be6dee4a37a6a/) | UUPSProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2ecd155405ca52a5ca0e552981ff44a8252fab81`](./contracts/ethereum-1/0x2ecd155405ca52a5ca0e552981ff44a8252fab81/) | UUPSProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x46c4ab30743759ec142f7495b7e935e213cc29a8`](./contracts/ethereum-1/0x46c4ab30743759ec142f7495b7e935e213cc29a8/) | UUPSProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x57aaf0004c716388b21795431cd7d5f9d3bb6a41`](./contracts/ethereum-1/0x57aaf0004c716388b21795431cd7d5f9d3bb6a41/) | UUPSProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x857b4faa11b143f69f091d1c4ded5480a8d16f8b`](./contracts/ethereum-1/0x857b4faa11b143f69f091d1c4ded5480a8d16f8b/) | UUPSProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcd5fe23c85820f7b72d0926fc9b05b43e359b7ee`](./contracts/ethereum-1/0xcd5fe23c85820f7b72d0926fc9b05b43e359b7ee/) | UUPSProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd0ff8996db4bdb46870b7e833b7532f484fead1a`](./contracts/ethereum-1/0xd0ff8996db4bdb46870b7e833b7532f484fead1a/) | UUPSProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd5edf7730abad812247f6f54d7bd31a52554e35e`](./contracts/ethereum-1/0xd5edf7730abad812247f6f54d7bd31a52554e35e/) | UUPSProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4e9ae452290570834c978edf9b3febbcd4938227`](./contracts/ethereum-1/0x4e9ae452290570834c978edf9b3febbcd4938227/) | Vote | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x414b1da0bb6e948dc0559d14ebde9fa9572499bf`](./contracts/ethereum-1/0x414b1da0bb6e948dc0559d14ebde9fa9572499bf/) | VoxFab | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0145fd99f1dd6e2491e44fca608c481c9c5b97a9`](./contracts/ethereum-1/0x0145fd99f1dd6e2491e44fca608c481c9c5b97a9/) | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x09def5abc67e967d54e8233a4b5ebbc1b3fbe34b`](./contracts/ethereum-1/0x09def5abc67e967d54e8233a4b5ebbc1b3fbe34b/) | waBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x37016812a5c2c54793fd277b7f75086a47377d28`](./contracts/ethereum-1/0x37016812a5c2c54793fd277b7f75086a47377d28/) | waBtcOFTAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa2518b71ee64e910741f5cf480b19e8e402de4d7`](./contracts/ethereum-1/0xa2518b71ee64e910741f5cf480b19e8e402de4d7/) | WBTC-crvUSDleveragezap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x353f8931ce1c52f643121be129985aab09c4bf52`](./contracts/ethereum-1/0x353f8931ce1c52f643121be129985aab09c4bf52/) | WETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2`](./contracts/ethereum-1/0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2/) | WETH9 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3ed97c79ded8894036da095b2e2f79f8080a9cd4`](./contracts/ethereum-1/0x3ed97c79ded8894036da095b2e2f79f8080a9cd4/) | WithdrawRequestNFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x991f0e5c5775ca9dd02e30e67f545c36cff3690e`](./contracts/ethereum-1/0x991f0e5c5775ca9dd02e30e67f545c36cff3690e/) | WrapperLockEth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa7581ebe7870a220360d216c3404ff7cb79b2a0f`](./contracts/ethereum-1/0xa7581ebe7870a220360d216c3404ff7cb79b2a0f/) | wstETH_Burner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x293436d4e4a15fbc6ccc400c14a01735e5fc74fd`](./contracts/ethereum-1/0x293436d4e4a15fbc6ccc400c14a01735e5fc74fd/) | wstETH-crvUSDleveragezap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 202 |
| upstream | 4 |
| standard_library | 23 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=4, medium=1
- Match method counts: extraction_exact=9

Zero-match audit list:

- [16935] cantina-airdrop-1.pdf

Fork inheritance lineage and inherited audits are included when available.
