# Agentic Audit Brief: TermMax

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 14 (0 matched; 14 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: TermMax (`termmax`)
- Website: [https://ts.finance/termmax/](https://ts.finance/termmax/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
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
- Logic-topography rows: 8; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 64 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 422 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 111 standard proxy/library)
- Proxy deployments represented within implementation groups: 153
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/483
- Verified + Unaudited implementations: 483
- Verified by bytecode match: 0
- Unverified implementations: 3
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
| AccessManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x22013dbd826e6e4d76499ab9f2a501853c477cf3` | ⚠️ Unaudited |
| AccessManagerV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-258598 | `0xda4aaf85bb924b53dcc2dffa9e1a9c2ef97acfdf` | ⚠️ Unaudited |
| AccessManagerV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | bsc | unit-258631 | `0x9498764f0c62257b83a04e2a757de30908ec793d` | ⚠️ Unaudited |
| AccessManagerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0005d1efb4ded0cad6a9bc97a32c5a7d97a181e3` | ⚠️ Unaudited |
| AccessManagerV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | arbitrum | unit-258621 | `0xfad175caf9b0ac0ebca3b1816ec799884eb04b9c` | ⚠️ Unaudited |
| AccountFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d0fc76595e42f38c771ecee627da5654ca2e75a` | ⚠️ Unaudited |
| AcreAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a6092d9c47a7e4c085f2ed9fd4a376124587ae0` | ⚠️ Unaudited |
| acreBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c0391a651c080e99b38c179575342512769d9d5` | ⚠️ Unaudited |
| AcreBtcCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b0fdf4f5c6036b3c8b8b451680ce87b0ffe701e` | ⚠️ Unaudited |
| AcreBtcDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c727b81eb776e2614c72430e306cefd614bb837` | ⚠️ Unaudited |
| AddressFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d8a9dda649524d1ce31c204551a93560617d1d3` | ⚠️ Unaudited |
| AddressProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20ee00f43ef299dba82ba6fef537756dabe38cc7` | ⚠️ Unaudited |
| AmazingLiquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f6568767d287b37bfe7529c863e3a9e88130362` | ⚠️ Unaudited |
| AmazingLiquidatorPt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35c14695bbd07dd19a950ec15acc2455ea28443f` | ⚠️ Unaudited |
| AuctionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68fe80c6e97e0c8613e2fed344358c6635ba5366` | ⚠️ Unaudited |
| AvsOperator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8969d7c2e3e5b056d5d4984031788eca923960f5` | ⚠️ Unaudited |
| BNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a393848f5d1b8e7dab45f3a7e01f9f0dc687242` | ⚠️ Unaudited |
| BoringVaultPriceProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x130e22952dd3de2c80ebdfc2b256e344ff3a0729` | ⚠️ Unaudited |
| BullionEnumerableNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x62bee1bc8cf74fbbbd1f8444a39ca1db4acc368c` | ⚠️ Unaudited |
| BullionMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29646a077f9fbc3db930efe35d4e15b06e2776b4` | ⚠️ Unaudited |
| BullionNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52a6ddc1ccc00b69e6fdc6228b50f0fa6dd2f9dc` | ⚠️ Unaudited |
| Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca06411bd7a7296d7dbdd0050dfc846e95febeb7` | ⚠️ Unaudited |
| Create2Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6521991a0bc180a5df7f42b27f4ee8f3b192ba62` | ⚠️ Unaudited |
| CumulativeMerkleDrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26542fbe5f320f25747e80831acdd1f27cdd0c65` | ⚠️ Unaudited |
| cUSDO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a3e55e2c23ab6adc12accf1075b91c174ee0102` | ⚠️ Unaudited |
| CustomAggregatorV3CompatibleFeedDiscounted | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4386307a07c4de7ba11b4f4ec3e1f37bbe95dc99` | ⚠️ Unaudited |
| CustomerManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0978aa6ed342ff8327e97415653f5af790e3f004` | ⚠️ Unaudited |
| DadFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01c1103d765f62a0d909499d7b615c382cdb072d` | ⚠️ Unaudited |
| DaiFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf07674f6ac6632e253c291b694f9c2e2ed69ebbb` | ⚠️ Unaudited |
| DataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01b16ea685735acabe519d682a08acade018f003` | ⚠️ Unaudited |
| depositRootGenerator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10f2c552ef9ca8d2b592a8055e2db0efe5c561d6` | ⚠️ Unaudited |
| DepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e0eb6cdad90174f1db606ec186ddd0b5ed80847` | ⚠️ Unaudited |
| DSChief | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e2a84d6ade1e7fffee039a35ef5f19f13057152` | ⚠️ Unaudited |
| DSChiefFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e7ca05e174a523709e556080e227f734a8f1483` | ⚠️ Unaudited |
| DSToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x068083069ed92da4c5291dba52d8912abfcc5523` | ⚠️ Unaudited |
| eBtcRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81be3526a71d9013a1a5bd38758e0f248231b523` | ⚠️ Unaudited |
| EETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b47a665364bc15c28b05f449b53354d0ceff72f` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x1c6c0bc8a85c93e33a1c261ffdbc2fed43a5018c` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x8238884ec9668ef77b90c6dff4d1a9f4f4823bfe` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xd9a442856c234a39a81a089c06451ebaa4306a72` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | berachain | n/a | `0x0b30251fa697a39fd41813b267b50f03414e82da` | ⚠️ Unaudited |
| ERC4626VaultAdapter | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-258584 | `0x85ce30537c14efb66b673f284bea7c28351244f6` | ⚠️ Unaudited |
| ERC4626VaultAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2c5d576681d625ea9b6e9ee5d6a9159147328292` | ⚠️ Unaudited |
| ERC4626VaultAdapter | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-258616 | `0xa50929a67daf9ff3567e2bb3411204a134f72546` | ⚠️ Unaudited |
| ERC4626VaultAdapterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x133bf41c23edfb2f0ef586b5b01063a17470e294` | ⚠️ Unaudited |
| EtherealPreDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90d2af7d622ca3141efa4d8f1f24d86e5974cc8f` | ⚠️ Unaudited |
| eUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4089dc8b6637218f13465d28950a82a7e90cbe27` | ⚠️ Unaudited |
| EvacuationFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x882abfb2f6a67d36350499991638044e8bd83a72` | ⚠️ Unaudited |
| EvacuVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c7df3981a89ed04588907843fe2a6c1bccc4467` | ⚠️ Unaudited |
| Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5a5f138005e19a3e6d0fe68b039397eeef2322b` | ⚠️ Unaudited |
| FallbackReserveFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20377b5e38e0e992bbdcf3502ec72ded6a5e28ab` | ⚠️ Unaudited |
| Faucet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x276c0e52508d94ff2d4106b1559c8c4bc3a75dec` | ⚠️ Unaudited |
| FiatToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8cbde23b1416cac07a52591bba744c744d77a91a` | ⚠️ Unaudited |
| FiatTokenProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48` | ⚠️ Unaudited |
| FiatTokenUtil | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6315aa908c50376d1028412c028aa0629f0355a6` | ⚠️ Unaudited |
| FiatTokenV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0882477e7895bdc5cea7cb1552ed914ab157fe56` | ⚠️ Unaudited |
| FiatTokenV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7277a6e95992041568d9391d09d0122023778a2` | ⚠️ Unaudited |
| FiatTokenV2_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2327a938febf5fec13bacfb16ae10ecbc4cbdcf` | ⚠️ Unaudited |
| FlashLoanFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb629c830a4d153cde43cb127b5aff60d1185b8c` | ⚠️ Unaudited |
| GearingTokenWithERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x022e7d8585f9214bbe29077501ce938e552f8d5e` | ⚠️ Unaudited |
| GemFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x431e935209d79706b5866eb42137a3491d845692` | ⚠️ Unaudited |
| GemPit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69076e44a9c70a67d5b79d95795aba299083c275` | ⚠️ Unaudited |
| globalIndexLibrary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x325ea059f11d6860e50a803ae52d49ef35c85fb9` | ⚠️ Unaudited |
| hypeBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48599ab08115cdf5731a7d8e5da1ac71d3c83459` | ⚠️ Unaudited |
| HypeBtcCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x910cde06dfdcb06540744683812b8e2eb04a6f4c` | ⚠️ Unaudited |
| HypeBtcDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x389035180efd4ee704f6e1b6a11e8889a1bbcac4` | ⚠️ Unaudited |
| hypeETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x140e71cd72d7ab5735fe8a73028bbe71821ff8ab` | ⚠️ Unaudited |
| HypeEthDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ed03d76c8e826c6c02eb2e86c38a0d89afcd463` | ⚠️ Unaudited |
| HypeEthDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x109e2a83502edf977fb035929a51414e93f6867c` | ⚠️ Unaudited |
| HypeUsdDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d874a929ce6f5c21ab00f1677ccf43fbb7f3a9e` | ⚠️ Unaudited |
| HypeUsdRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x33ed485dcf400e9354173aebf6de37d8c03c6fa9` | ⚠️ Unaudited |
| InankrETHRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8bc73134a736437da780570308d3b37b67174ddb` | ⚠️ Unaudited |
| IncbETHRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1bb72c5915a7e2c85baea2c563858eacb3f7a45` | ⚠️ Unaudited |
| InceptionBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f696f13dcdb2cd0f1927ad598613c7c95a33eaf` | ⚠️ Unaudited |
| InceptionLibrary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a6a8a7233b16d0ecaa7510bfd110464a0d69f66` | ⚠️ Unaudited |
| InceptionRatioFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2356d46d89e056f222185ef101165e88073941bd` | ⚠️ Unaudited |
| InceptionRestaker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02e2fce3efe6619ad882b159e7d897a9c03a33f0` | ⚠️ Unaudited |
| InceptionTimeLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x650bd9dee50e3ee15cbb49749ff6abcf55a8fb1e` | ⚠️ Unaudited |
| InceptionToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1aee5ec60fc79b669f11fe368fde789e267649e2` | ⚠️ Unaudited |
| InETHxRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd812ba3543f9ab64b2bcbce34fb3b00bff2ba2fc` | ⚠️ Unaudited |
| InlsETHRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20f6d8e1e821bd5b94f7bf725af304bc5ef09c36` | ⚠️ Unaudited |
| InmETHRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa22a7a8c550760574fd7b722c9f7100902d57707` | ⚠️ Unaudited |
| InoETHRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbd600020f943f7c61a8123fe2720a05434a3b38b` | ⚠️ Unaudited |
| InosETHRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f27848ae927ba278ee575e4a55f6c7ed7bffe8c` | ⚠️ Unaudited |
| InrETHRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6d553327b16dd6076d69c2daec91a50dd1e9f66` | ⚠️ Unaudited |
| InrEthVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63590b09bccc56667934f5e4793a1941bce69aba` | ⚠️ Unaudited |
| InsfrxETHRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07f86901057f392fd3a508b8abcbaafb08c13b1e` | ⚠️ Unaudited |
| InslisBNBRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc88b97cee6db90c1186497619eb43cc8160e391c` | ⚠️ Unaudited |
| InstETHRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x343281bb5029c4b698fe736d800115ac64d5de39` | ⚠️ Unaudited |
| InstEthVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64a6c90871b774c1678ddbc48d99040b03a9b84d` | ⚠️ Unaudited |
| InswETHRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xebfa0353dff1801f5c8ea07448771d6fadd1e721` | ⚠️ Unaudited |
| IntBTCBNBRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12181a5454542610f524e53650038889edc6a07f` | ⚠️ Unaudited |
| InVault_E1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1aa53bc4beb82adf7f5edee9e3bbf3434ad59f12` | ⚠️ Unaudited |
| InVault_E2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4fbf33a215861e2bfe01c90760ad5c58921def36` | ⚠️ Unaudited |
| InVault_S_E2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xebc5b1c0b7d255d4a217abe7131e7db6f063ee53` | ⚠️ Unaudited |
| InwbETHRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69c59c3dd7566eb12792203f8f832ca81a050eb1` | ⚠️ Unaudited |
| JIV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x334b32f6298167d9efdc0f7affe447dba53e3d42` | ⚠️ Unaudited |
| JivCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x540f331ebc800b68d4972a01d57b2e1fe45d57ff` | ⚠️ Unaudited |
| KarakReserveManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x329f91fe82c1799c3e089fabe9d3a7efdc2d3151` | ⚠️ Unaudited |
| KodiakSwapAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x5036017067a141726aee407dbd07949bc8bebd2b` | ⚠️ Unaudited |
| L1LineaReceiverETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x33275453144a4d6ef266ef1164f3e6fcb6ef27f1` | ⚠️ Unaudited |
| LevelMinting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84c0359f6636302efd1332a2f8792c42f205a44f` | ⚠️ Unaudited |
| LevelReserveLens | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x29759944834e08ace755dcea71491413f7e2cbad` | ⚠️ Unaudited |
| LevelReserveManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70d544f75c2228d68ee04bc63e6e4bae8f31fcef` | ⚠️ Unaudited |
| LeveragedQQQon | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x985de60bd3abeb7bb70b154de5669e20432f25f7` | ⚠️ Unaudited |
| LeveragedQQQonCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2163f6e5599d54c29f5064d19b9cb2ead7ab5e36` | ⚠️ Unaudited |
| LeveragedQQQonDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29de44b2ac307416c3c7a6e3204034e257c05c20` | ⚠️ Unaudited |
| LeveragedQQQonDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15e6fb060af7e12d6634685abfaf3b71300c29e4` | ⚠️ Unaudited |
| LeveragedQQQonRedemptionVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x7aad8e031877551a1a8955af456612f07b67e191` | ⚠️ Unaudited |
| LifiSwapAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4eba5ebc7e96922229ffa5cc8d959357497666d2` | ⚠️ Unaudited |
| LiquidityPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02656fe285fac5d5c756c2f03c17277df9bac65b` | ⚠️ Unaudited |
| Liquifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2225c97928934625e8382e6636d30f94c46b6ed3` | ⚠️ Unaudited |
| LoanFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1e357a2645dad05fbfbc34ddf6c2d24b9f332b9` | ⚠️ Unaudited |
| LoyaltyPointsMarketSafe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d716d4ec89060411b978e00691fac9795f2cd24` | ⚠️ Unaudited |
| LRTSquare | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d987e04fc47ac625f720f169c658307fd9a16a2` | ⚠️ Unaudited |
| LRTSquared | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x138f08a1798b7cf15adbf051bc2f11bca0ea7743` | ⚠️ Unaudited |
| LRTSquaredAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd2b8c78a5eb18a5f3b0392c5479bb45c77d02ff5` | ⚠️ Unaudited |
| LRTSquaredCore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1cb489ef513e1cc35c4657c91853a2e6ff1957de` | ⚠️ Unaudited |
| lvlUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c1156e515aa1a2e851674120074968c905aaf37` | ⚠️ Unaudited |
| MakerHelper | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-258580 | `0x513690136500dec06553385f7a00b010455dce92` | ⚠️ Unaudited |
| MakerHelper | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | bsc | unit-258649 | `0x066b5861d15261009a3bb48305770600e49745ab` | ⚠️ Unaudited |
| MakerHelper | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | arbitrum | unit-258608 | `0x1ee3fac93f08f84107ce21ff5380314b5473bf5c` | ⚠️ Unaudited |
| MakerHelper | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | berachain | unit-258644 | `0xbb35188cd8ba0a85ed8c8406187ca6443203423d` | ⚠️ Unaudited |
| MApolloCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x562bb5014793e8d2df2b493a947fbd522d420c55` | ⚠️ Unaudited |
| MApolloDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d371cc63fb8efd48aff59c5a0c064863ae4999c` | ⚠️ Unaudited |
| MarketViewer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x103402aab421c668175946774020cf249df4f66c` | ⚠️ Unaudited |
| MarketViewer | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | berachain | unit-258646 | `0xfa8be638a78fa426c4228df1002fd54fa48a6caf` | ⚠️ Unaudited |
| MasterMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x566c11b5c2201b69c9269fe924e4395873674335` | ⚠️ Unaudited |
| MBasisCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54d4783f47889c73861152f027a1aedf75d439d0` | ⚠️ Unaudited |
| MBtcCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b904f25a1e923cf1f1fc2e5798232132dfd49c7` | ⚠️ Unaudited |
| MBtcDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f5b02328db057c84217003ad3519c541fe887c9` | ⚠️ Unaudited |
| mEDGE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39c1891875afa8faae0ea8d9d3e769c46174fb87` | ⚠️ Unaudited |
| MEdgeCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0391508a7cf5cf30c233d08849813c2959c0ea2f` | ⚠️ Unaudited |
| MEdgeDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x057a3a6b45d9bb351f0123de1b8e00fe5a56a7d1` | ⚠️ Unaudited |
| MEdgeDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc904de3f0a5ad6d85609ec37fc0f30edafa73cc6` | ⚠️ Unaudited |
| MEdgeRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6142ad2733c45d42ef3c625d4e33689406cc3ad5` | ⚠️ Unaudited |
| Members | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e8640574aa764763291ed733672d3a105107ac5` | ⚠️ Unaudited |
| MembershipManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x047a7749ad683c2fd8a27c7904ca8dd128f15889` | ⚠️ Unaudited |
| MembershipNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x290d981b41b713437265cd7846806d7500307106` | ⚠️ Unaudited |
| MetaMorpho | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2371e134e3455e0593363cbf89d3b6cf53740618` | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x701907283a57ff77e255c3f1aad790466b8ce4ef` | ⚠️ Unaudited |
| mevBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7813671f9c083b63fcbecbc182e9a0fc7de629a4` | ⚠️ Unaudited |
| MevBtcCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x931403532a4a30fee41bfe79f5b2159dcd0a5b43` | ⚠️ Unaudited |
| MevBtcDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3549f6936dafb87f456dca3a061bc9225ff44b3c` | ⚠️ Unaudited |
| MevBtcRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26504103cc0704de4fad7d6be6538f8b9ed6ab3c` | ⚠️ Unaudited |
| MEvUsdDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06e7279e596af4804a0fcc78ece24059da75cf26` | ⚠️ Unaudited |
| MFarmDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x313c76ecd990b728681f29464978d5637cb78164` | ⚠️ Unaudited |
| MFarmRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb73d1e0aedcd5bbeca0119e88288204101411e89` | ⚠️ Unaudited |
| MFOneDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c3291e8fd4cc415b62ca3789907a4eee759fbfd` | ⚠️ Unaudited |
| MFOneRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d98b671af8c51f6ffa94248b90df1b11dff6c47` | ⚠️ Unaudited |
| mHYPER | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10e2352da4790e547095f06fa3ef3093881080fb` | ⚠️ Unaudited |
| MHyperBtcCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c7a74f9e391f66cd1ad9d934ad897b2cdd085de` | ⚠️ Unaudited |
| MHyperBtcDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f6e5852f89c5a94119b039b355ad7043e959393` | ⚠️ Unaudited |
| MHyperBtcDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbccac5cbf0691da65e48810d316a1e5b9f895a52` | ⚠️ Unaudited |
| MHyperDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa62249abe86e75717ef9705f2fdb19b39c130e5e` | ⚠️ Unaudited |
| MHyperEthCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c68087e994d24d454ba6c96f7a3152f6a2e9850` | ⚠️ Unaudited |
| MHyperEthDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f4e7d11e54f34f5d02dade106a690efdbc74834` | ⚠️ Unaudited |
| MHyperRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x570c15bc5faf98531a8b351d69e22e41e3505e47` | ⚠️ Unaudited |
| MidasLzMintBurnOFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x55b40c5ebc53c4b03a7cba602c6ceed3fc2349c6` | ⚠️ Unaudited |
| MidasTimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3eee3e0d2398799c884a47fc40c029c8e241852` | ⚠️ Unaudited |
| MintableERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00996971efec45402b0f135468c3dee00bdaf44f` | ⚠️ Unaudited |
| MintableERC20V2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x199aea024372521ca01fda03aec0a8e3505ea53a` | ⚠️ Unaudited |
| Minter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x344363f85a25837b154dd1c03117fef0341a0e2f` | ⚠️ Unaudited |
| MLiquidityCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b805d11aaa424f205b7bf7c39f5e3b5d8f5a522` | ⚠️ Unaudited |
| MLiquidityDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67e14dd4f41955a1b10d4482345a1a4b06aaefac` | ⚠️ Unaudited |
| MLiquidityRedemptionVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e5aab1aad75853ab8114264c3bf3427b0634c9e` | ⚠️ Unaudited |
| MMevDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ff00e912c8f449c8a9fac6861b84e1b5c080d81` | ⚠️ Unaudited |
| MMevDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac5c4dcd870c835f8943e62ab33cdadba850e5e5` | ⚠️ Unaudited |
| MMevRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x482d1e94a26bbaef59fc5d038c41b679120d00cb` | ⚠️ Unaudited |
| MomFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x141a206ece672e3198086c5d21f7858ad03669ea` | ⚠️ Unaudited |
| mPortofino | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x636cdf65a5bb03c25c63ceb20e971f101ed060b9` | ⚠️ Unaudited |
| MPortofinoRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9111ddd2cf8e2727ab08e6f2adb9c53480b0c31` | ⚠️ Unaudited |
| MRe7BtcCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x091f974e277a19485b9a713ac768850bc5af383b` | ⚠️ Unaudited |
| MRe7BtcRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d9953c4e85e6d249520e8ff2b134e5ded875615` | ⚠️ Unaudited |
| MRe7DepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53c764c938385bc439dc1596413e1557deed62d8` | ⚠️ Unaudited |
| MSlDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x521f6153b7c5080f550517d9b76d9c08766ccb2f` | ⚠️ Unaudited |
| MSlRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d1c52c7cd203e4f84d084a33a062c61d51762fc` | ⚠️ Unaudited |
| MSyrupUsdDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x307be9748111571739b92a5dda10191f29057a8b` | ⚠️ Unaudited |
| msyrupUSDp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2530e3d2b30738b2e8d0dd3eb9b17946b0567ea5` | ⚠️ Unaudited |
| MSyrupUsdpCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e2165801d84865587252155fb4580381f7a3fc4` | ⚠️ Unaudited |
| MSyrupUsdpRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5113bf83400d184cde30af154117e29351e1cc91` | ⚠️ Unaudited |
| MSyrupUsdtCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e9dbcbcc8c976face7481288bbb9ab285e4d70c` | ⚠️ Unaudited |
| MSyrupUsdtDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ca035326aa66b5db40fb6d3693772f073cd94bc` | ⚠️ Unaudited |
| MSyrupUsdtRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1314fb72f67681e7617e59bcf92002a9311d2084` | ⚠️ Unaudited |
| mTBILL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7ab67aa19f6b387ba12fcedb6d1447e0c25897c` | ⚠️ Unaudited |
| MTBillDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e0357e38fc7fae9c29050aef3744d4055490ada` | ⚠️ Unaudited |
| MTokenMain | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x123ffe0a3c62878dcbee2742227dc8990058d9e1` | ⚠️ Unaudited |
| MTokenMessager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24ce2a00eb05b33b206b4057598f97ddc3028c7e` | ⚠️ Unaudited |
| MTokenMessagerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x102874ca109a5a7e94a0385f1380cebc905fb878` | ⚠️ Unaudited |
| MTokenMessenger | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0be91692750982b4ba92dabc3985c548098f68c5` | ⚠️ Unaudited |
| MTokenMessengerLZ | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xb350d8decc3adf68c3856d46ab42976ca7a6386f` | ⚠️ Unaudited |
| MTokenMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5fd20e49239aaedb8490c07a622c129a39296cef` | ⚠️ Unaudited |
| Multicall3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7165c2257ab6b6285389d8459938786c0ccd83d7` | ⚠️ Unaudited |
| MWildUsdCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19623f6af10bcd83b01c787e16219a738877851e` | ⚠️ Unaudited |
| MWildUsdDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d8f821e72382e433f1bcf079c0365f976b2ccd0` | ⚠️ Unaudited |
| MWildUsdDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa70009c23dbf1222d66b0ca847b4c33ae2e07b41` | ⚠️ Unaudited |
| NetworkRestakeResetHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x274bbdb8db5cca01e8364e781f8c338f79cb2fc8` | ⚠️ Unaudited |
| ObeatUsdLzElevatedMinterBurner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07cf28d71a38c12e258922d9857ac415ae1ff579` | ⚠️ Unaudited |
| OdosV2Adapter | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-258575 | `0x2afef28a8ab57d2f5a5663ef69351e9d3abf1779` | ⚠️ Unaudited |
| OdosV2Adapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0d64b9fef3e1f599b88d29edb54d2f9152cbe496` | ⚠️ Unaudited |
| OdosV2Adapter | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-258613 | `0x7de4efa140e52b7207fa689d41afee461b83e748` | ⚠️ Unaudited |
| OdosV2AdapterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x131f637c73ee2fcbe4423f6232ac5c1a07eecc86` | ⚠️ Unaudited |
| OkxSwapAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0b22d6d5a160756ff46b872c83d30910d6e18e0e` | ⚠️ Unaudited |
| OndoSwapAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16f6da2f62667b5d20baa12fbc80430d5850eff4` | ⚠️ Unaudited |
| OneInchSwapAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06035214e843c0f115ee02a74a38b95bf978a3b8` | ⚠️ Unaudited |
| OnlyDeliveryGearingToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb0b11e344f302dd6d9f0573de24c34fbbadf404d` | ⚠️ Unaudited |
| OracleAggregator | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-258601 | `0xe3a31690392e8e18dc3d862651c079339e2c1ade` | ⚠️ Unaudited |
| OracleAggregator | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-258637 | `0xc7de1a55758bdba5cc6b6f7535006ee1349a6d37` | ⚠️ Unaudited |
| OracleAggregator | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-258609 | `0x2e1c769a9ba8248c7c8128c2beba11331ebf98aa` | ⚠️ Unaudited |
| OracleAggregatorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16110f65047a46d39ffeb3dadd61ed33ec9fabc2` | ⚠️ Unaudited |
| OracleAggregatorV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-258603 | `0xedb5dfb6393551faf499cf55494b1f6e44c2c612` | ⚠️ Unaudited |
| OracleAggregatorV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | berachain | unit-258645 | `0xf5c6664c5b33e3fc16afa43621650652fcd85d65` | ⚠️ Unaudited |
| OracleAggregatorWithSequencerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc1114e635661d13137e642828f1da71948b2caad` | ⚠️ Unaudited |
| OrderManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x03c4fcf963e5fbc0dc5851d2340624e70492acb9` | ⚠️ Unaudited |
| OrderManagerV1Plus | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x014544d99d1eccea9979da7db6a5468cf2c84c73` | ⚠️ Unaudited |
| OrderManagerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x103402aab421c668175946774020cf249df4f66c` | ⚠️ Unaudited |
| PancakeSmartAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x043516d022bf814ccfaf6e9eb2eac6e97341d14b` | ⚠️ Unaudited |
| PendlePrincipalToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1132065009850c72e27b7950c0f9285d1d103589` | ⚠️ Unaudited |
| PendleSwapV3Adapter | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-258574 | `0x0b30251fa697a39fd41813b267b50f03414e82da` | ⚠️ Unaudited |
| PendleSwapV3Adapter | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-258618 | `0xb0eccbad4b4cc190261c29c6e8d85bcf04284a8b` | ⚠️ Unaudited |
| PreOrder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b7a14fc3a93c2d43ffd2d2089d4e84c0f97ff44` | ⚠️ Unaudited |
| PreTMX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x667519b99adbcfeb2e5dccbe3656de76d2fcada5` | ⚠️ Unaudited |
| PriceFeedFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x057b80bf364012326a8c06cdec4325b3d8266733` | ⚠️ Unaudited |
| PriceFeedFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-258594 | `0xcac930b240163fdb71b74514e8faa113ec0da844` | ⚠️ Unaudited |
| PriceProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28a6e7ebb6aca8f64145952a9565245c3dc1f32f` | ⚠️ Unaudited |
| ProtocolParamsFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84283289d7e57a2f5b80dda065ac99450eb44cb6` | ⚠️ Unaudited |
| ProtocolRevenueManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf8749c3dc1fc0592f21c2593204c45d3be0d322` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10d9a419478fee5aa35c9f3b36b37025e9ff8110` | ⚠️ Unaudited |
| RedemptionVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f1372244cedcaf8ee1759d2f02435628f14975f` | ⚠️ Unaudited |
| RedemptionVaultWIthBUIDL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe123ebc5697151890dddf05943de393ceaccc7e9` | ⚠️ Unaudited |
| RedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x283cbedecb447dbe114b4268f79ba8b046e32f39` | ⚠️ Unaudited |
| RedemptionVaultWithUSTB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x489a797714708cf088d158714a376d8ff740d701` | ⚠️ Unaudited |
| RegulationsManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1fcb83123ffbc72373134d09d1c8ab52812cd0b4` | ⚠️ Unaudited |
| RewardsDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf2ed5f1a9843917329c538a13d51c3c3d7249a1a` | ⚠️ Unaudited |
| RollupFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x09e01425780094a9754b2bd8a3298f73ce837cf9` | ⚠️ Unaudited |
| RsEthAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd52ba087e30928886baba15b1584d4ac9abaab2a` | ⚠️ Unaudited |
| Safe | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-258583 | `0x8409a9c1a911ced491892c5694e43994c9d47e8f` | ⚠️ Unaudited |
| SafeProxy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-258647 | `0x719e77027952929ed3060dbffc5d43ec50c1cf79` | ⚠️ Unaudited |
| SEthFiStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76c57e359c0eda0aac54d97832fb1b4451805ad8` | ⚠️ Unaudited |
| SimpleAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x69340dc8d644829d49bdf2595b058d85b4fe1dff` | ⚠️ Unaudited |
| StableERC4626For4626 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x609f20ee24e10010a62970e1dab7e2b84ed74cab` | ⚠️ Unaudited |
| StableERC4626ForCustomize | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b38383cdd15fe924933b0a0f8fcd1befa56d14a` | ⚠️ Unaudited |
| StableERC4626ForVenus | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x437e7b75c0a8733562219e25c55b0e2c01a1dacd` | ⚠️ Unaudited |
| StakedlvlUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4737d9b4592b40d51e110b94c9c043c6654067ae` | ⚠️ Unaudited |
| StakedUSDeAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce2326260c168525a3e905391e8bfee00ebd0cea` | ⚠️ Unaudited |
| StakedUSDeV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d39a5de30e57443bff2a8307a4256c8797a3497` | ⚠️ Unaudited |
| StakingManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ad639fc9c73f547bfff8b28d091d86d2472fa1e` | ⚠️ Unaudited |
| STBT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24f5b8e0e4a0a9ccdcc4fa05a9885a28140fc948` | ⚠️ Unaudited |
| StbtTimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0eb8f11ec17c160b0d51586b0e420faff07b6f47` | ⚠️ Unaudited |
| STBTv2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f0868fd7b0844e374277ebc9a3e4979465a37aa` | ⚠️ Unaudited |
| SwapAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xda4aaf85bb924b53dcc2dffa9e1a9c2ef97acfdf` | ⚠️ Unaudited |
| Swapper1InchV6 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x747cac75776b3a0bba3de3e61ec12a6a7f52232e` | ⚠️ Unaudited |
| SyrupAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad298d3ec4af69af52701a539d3bd14873ac8493` | ⚠️ Unaudited |
| SyrupUSDCAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa869cbc273daae91d6109ee5bb958ac6b7198b67` | ⚠️ Unaudited |
| TACmBtcDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x570f37365fffff0a3884892b7363c0a8615bbc08` | ⚠️ Unaudited |
| TACmBtcRedemptionVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6808e4d8add893d0227690f435e1ff734d9ccdf4` | ⚠️ Unaudited |
| TACmEDGE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c5b87e3bde1c70ad11d546a513e305bc07aa26c` | ⚠️ Unaudited |
| TACmEdgeRedemptionVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x375af40dd6772bb9ad216ad7cbe4d8f91eae36d8` | ⚠️ Unaudited |
| TACmMEV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d3147d11c88f5008db19cb5dd945ae682910202` | ⚠️ Unaudited |
| TapFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x521c420c2a2b461034becbb41d4888b68951f14f` | ⚠️ Unaudited |
| tBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4eed111a10c25a739b0d72bd2383f958b9fde211` | ⚠️ Unaudited |
| TerminalVaultAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ae453c888f8b26cdb2672d5cdbfa1aaa9a49c7f` | ⚠️ Unaudited |
| TermMax4626Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05e7774d0788671c0065415ec2efddda5847eba1` | ⚠️ Unaudited |
| TermMax4626Factory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-258597 | `0xd594eb03a43b4974aa7b32b5740cdece961151fa` | ⚠️ Unaudited |
| TermMax4626Factory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-258625 | `0x67dcdcc57208b574b05999aa3dfa57bff2324129` | ⚠️ Unaudited |
| TermMax4626Factory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-258620 | `0xe306a0a5ac675dab1cd77aa7873d241715aeb217` | ⚠️ Unaudited |
| TermMax4626Factory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | berachain | unit-258639 | `0x3d2c215de72877c3611cd0a9d8d69f60f1a5db93` | ⚠️ Unaudited |
| TermMaxBeefySharePriceFeedAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x349e28fb4c0c3577151dfb874eefa66e8ae885b7` | ⚠️ Unaudited |
| TermMaxFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-258578 | `0x37ba9934aaba7a49cc29d0952c6a91d7c7043dbc` | ⚠️ Unaudited |
| TermMaxFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-258630 | `0x8df05e11e72378c1710e296450bf6b72e2f12019` | ⚠️ Unaudited |
| TermMaxFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x14920eb11b71873d01c93b589b40585dacfca096` | ⚠️ Unaudited |
| TermMaxFactoryV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-258593 | `0xc53ab74eeb5e818147eb6d06134d81d3ac810987` | ⚠️ Unaudited |
| TermMaxFactoryV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-258633 | `0x96839e9b0482bffa7e129ce9feefceb1e895fc2b` | ⚠️ Unaudited |
| TermMaxFactoryV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-258638 | `0xdffe6de6de1db8e1b5ce77d3222eba401c2573b5` | ⚠️ Unaudited |
| TermMaxFactoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x08c50bd46992d35694208ec3cf1f1edce38f5fd1` | ⚠️ Unaudited |
| TermMaxFactoryV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-258607 | `0x18b8a9433dbefcd15370f10a75e28149bcc2e301` | ⚠️ Unaudited |
| TermMaxFactoryV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | berachain | unit-258640 | `0x4bc4f8f9b212b5a3f9f7eeb35ae1a91902670f7f` | ⚠️ Unaudited |
| TermMaxMarket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03f2af12ae4eb5533c3f7773be826e8da56f6e1a` | ⚠️ Unaudited |
| TermMaxMarketV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a63f881db0c009272b980fab80eaf666b6486bc` | ⚠️ Unaudited |
| TermMaxOndoPriceFeedAdapterFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03301cfce4a91533103c7dfb1fe323f4437a031c` | ⚠️ Unaudited |
| TermMaxOrder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1649e4e5e5c8b9714f847d1ac14d20c74ea36fd6` | ⚠️ Unaudited |
| TermMaxOrderV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x22013dbd826e6e4d76499ab9f2a501853c477cf3` | ⚠️ Unaudited |
| TermMaxPriceFeedFactoryV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-258606 | `0xfd9b5ee419c56f5ed3e86ba70953342906a7de2b` | ⚠️ Unaudited |
| TermMaxPriceFeedFactoryV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-258623 | `0x353e129d2a949173e06eb0ee64557dc37b3f68fd` | ⚠️ Unaudited |
| TermMaxPriceFeedFactoryV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-258610 | `0x4acdd5277c0b907dd08025d922c50e94217560b9` | ⚠️ Unaudited |
| TermMaxPriceFeedFactoryV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | berachain | unit-258641 | `0x5832cc589550cdc56e8880861b165fcfa3c10366` | ⚠️ Unaudited |
| TermMaxRewardContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb2c53eff70ebe5ef1940b1e942ccce2a5613e394` | ⚠️ Unaudited |
| TermMaxRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x2afef28a8ab57d2f5a5663ef69351e9d3abf1779` | ⚠️ Unaudited |
| TermMaxRouter_Repay_Gt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x04b945a67b799e87034b5f6ad4dedb57d08ef588` | ⚠️ Unaudited |
| TermMaxRouter_V1_1_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1159bfc5fd9ffcbf7bd00db6fd067f809069eb8f` | ⚠️ Unaudited |
| TermMaxRouter_V1_1_2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-258592 | `0xc47591f5c023e44931c78d5a993834875b79fb11` | ⚠️ Unaudited |
| TermMaxRouter_V1_1_2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x38832fdaf37a4cfb54d5fc46b9058f6a33e7f8f5` | ⚠️ Unaudited |
| TermMaxRouter_V1_1_2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | bsc | unit-258635 | `0xb7634db4f4710bb992118bc37d1f63e00e2704a4` | ⚠️ Unaudited |
| TermMaxRouter_V1_1_2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | arbitrum | unit-258614 | `0x7fa333b184868d88ac78a82ec06d5e87d4b0322e` | ⚠️ Unaudited |
| TermMaxSwapAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x09bb81894b3b34ccb8035bd19c6a9d82ae5073dc` | ⚠️ Unaudited |
| TermMaxUSPCPriceFeedAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7112702927a99a43f1287916746b222a1f66dd8` | ⚠️ Unaudited |
| TermMaxVault | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-258585 | `0x984408c88a9b042bf3e2ddf921cd1fafb4b735d1` | ⚠️ Unaudited |
| TermMaxVault | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-258599 | `0xdeb8a9c0546a01b7e5cee8e44fd0c8d8b96a1f6e` | ⚠️ Unaudited |
| TermMaxVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x14920eb11b71873d01c93b589b40585dacfca096` | ⚠️ Unaudited |
| TermMaxVault | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-258627 | `0x86c958cac8aee37de62715691c0d597c710eca51` | ⚠️ Unaudited |
| TermMaxVault | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-258629 | `0x89653e6523fb73284353252b41ae580e6f96dfad` | ⚠️ Unaudited |
| TermMaxVault | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-258615 | `0x8c5161f287cbc9afa48bc8972ee8cc0a755fcadc` | ⚠️ Unaudited |
| TermMaxVault | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-258619 | `0xc94b752839a22d2c44e99e298671dd4b2add11b3` | ⚠️ Unaudited |
| TermMaxVaultFactoryV1Plus | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a9ecffdbdc595907f65640f810d3ddddde2fa61` | ⚠️ Unaudited |
| TermMaxVaultFactoryV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-258581 | `0x5b8b26a6734b5eabdbe6c5a19580ab2d0424f027` | ⚠️ Unaudited |
| TermMaxVaultFactoryV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-258622 | `0x1401049368ed6ad8194f8bb7e41732c4620f170b` | ⚠️ Unaudited |
| TermMaxVaultFactoryV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-258636 | `0xc63858d1efa377f94392ba5deb521233ec1548eb` | ⚠️ Unaudited |
| TermMaxVaultFactoryV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-258617 | `0xa7c93162962d050098f4bb44e88661517484c5eb` | ⚠️ Unaudited |
| TermMaxVaultFactoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x03c4fcf963e5fbc0dc5851d2340624e70492acb9` | ⚠️ Unaudited |
| TermMaxVaultFactoryV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | berachain | unit-258642 | `0x65fc69de62e11592e8acf57a0c97535209090ef1` | ⚠️ Unaudited |
| TermMaxVaultV1Plus | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d9d0956621bf85d1d4cafc92d76a0448a5e6b9b` | ⚠️ Unaudited |
| TermMaxVaultV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x03c4fcf963e5fbc0dc5851d2340624e70492acb9` | ⚠️ Unaudited |
| TermMaxViewer | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-258604 | `0xf574c1d7c18e250c341bdfb478cafefcacbabf09` | ⚠️ Unaudited |
| TermMaxViewer | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | bsc | unit-258626 | `0x80906014b577afd760528fa8b32304a49806580c` | ⚠️ Unaudited |
| TermMaxViewer | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | arbitrum | unit-258648 | `0x012bfcbac9edea04dff07cc61269e321f4595dff` | ⚠️ Unaudited |
| TermMaxWeETHPriceCapAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9bba8a86f2f9d237bfe5df074478f19110adc6a0` | ⚠️ Unaudited |
| TermMaxXauePricefeedAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71fcb23b5b68410637436347ca4fc97b7bd66bca` | ⚠️ Unaudited |
| TERPOC | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2022be364c2c0b46bb693d154bfb8eb5476a877d` | ⚠️ Unaudited |
| tETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72cca9794018c10ce47af3fc8d47e167d0761e96` | ⚠️ Unaudited |
| TEthCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42e82b2ee52cdc922cfed82bfcef90ada31215b5` | ⚠️ Unaudited |
| TEthDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x46eab5259e1a2f18cbbfeeaa093130a456d09e78` | ⚠️ Unaudited |
| TEthRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc32652ab236f32482f5018b027c8b54c13750ebf` | ⚠️ Unaudited |
| TNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c377a56c4a5eee3fa4c7a8de0440168e4f11708` | ⚠️ Unaudited |
| TokenFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d7598ce7cd1fa07c2a26c49876f850b0ad66bbc` | ⚠️ Unaudited |
| TopFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0eda20f7499aae7bdadc4e52fd72e49663733ed4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x007115416ab6c266329a03b09a8aa39ac2ef7d9d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x016e074ca7304b815e29a9b9d8cf7a5603da2a5f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0295e0ce709723fb25a28b8f67c54a488ba5ae46` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x030b69280892c888670edcdcd8b69fd8026a0bf3` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0312a9d1ff2372ddedcbb21e4b6389afc919ac4b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x03fda274c303b128eba9e00bf555a3f4f4f26ec3` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x056339c044055819e8db84e71f5f2e1f536b2e5b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x09740e3b2ccf6e82f4fb3a57519c8b65da728378` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0a2a51f2f206447de3e3a80fcf92240244722395` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0aecdf39d9d02833a055bf1eca518a83f66f4802` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0d89c1c4799353f3805a3e6c4e1cbbb83217d123` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0f50b401509798f1919a4e8d38192f78734e49c0` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x10cc8dbca90db7606013d8cd2e77eb024df693bd` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x12570b84b633629b1db532fd3420f34a30acfc68` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x141f0e9ed8ba2295254c9df9476cce7bc29172b1` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x15a4c3e5a3e955a81a570e617d83680f57ee3862` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x15f724b35a75f0c28f352b952ea9d1b24e348c57` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x1615cbc603192ae8a9ff20e98dd0e40a405d76e4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x164645fbc7220a3b4f8f5c6b473bcf1b6db146dd` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x16d4f955b0aa1b1570fe3e9bb2f8c19c407cdb67` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x18f7f9f20c495a7f4868ba807c64a5d0a9ee8648` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x19ab19e61a930bc5c7b75bf06cdd954218ca9f0b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x1a57aba59d50b192f8440e205e3b8b885be128cc` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x1ce3e159f37c36fd1ff9c3b5af8725ef890955dd` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x1fe17936c1cdc73c857263997716e3a60b9291c7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x20226607b4fa64228abf3072ce561d6257683464` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x20c5486ddc82272856730cc6ae2c9485ee1c5bee` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x21f3bcfa912f674c2af3bed5bf8e47a3f40ea749` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x238a700ed6165261cf8b2e544ba797bc11e466ba` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x27c0d44b02e1b732f37ba31c466a35053a7780b8` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x27e120c518a339c3d8b665e56c4503df785985c2` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x27e6f273941c5536154c1a6c20c97db7dc1b0ea7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x2a8c22e3b10036f3aef5875d04f8441d4188b656` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x2ce15146958bf305dadebbbf31f2d5a4f2574b43` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x2db1ec186acdeaf7d0fc78bffe335560b0fe0085` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x2ddc913e4c7674a7e42c55db48a92c47158e91c6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x2f98a13635f6cec0cc45bc1e43969c71d68091d6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x307267989a7bec3a57fd7fd96017c49803589fd0` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x30acceedff97a3fe11ab52ee7425af4589338c06` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x30d9d1e76869516aea980390494aaed45c3efc1a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x319a05e260acc2490768a726ccfd341d4b3d5106` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x33757a5e3afb438733679275c03ee2db43f43ee7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x34031e751da2ab19009d8f7eb268face2bdfd0dd` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x37769af173ea65dfc2880179940d5566817af6ae` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x39592bdbf6f3b96dd4547063945ab9ece769ae4d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x39f0507060c12bb88cb68a496544011d2f341455` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x3b099bc0e9854799688b0542222c938e0a6b7f24` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x3de2e700d220928ff5180691004824d8ad42f5d4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x41438435c20b1c2f1fca702d387889f346a0c3de` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x41c60765fa36109b19b21719f4593f19ddefa663` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x43881b05c3be68b2d33eb70addf9f666c5005f68` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x48e284d0729eb1925066307072758d95dbbb49c4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x4bcfda0a844b49da8bb19562ee52cc385395001a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x513bd45be7643fe6c30c41cd4b327e8e341aaf9a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x5356b8e06589de894d86b24f4079c629e8565234` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x5455222ccdd32f85c1998f57dc6cf613b4498c2a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x548857309befb6fb6f20a9c5a56c9023d892785b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x5572eb7f4fb679ff6a99203f12b0484dc1062d78` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x56814399caaedcee4f58d2e55da058a81dde744f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x5696b69be96e936e8e489070eb3d4f0e1fe966af` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x57b3be350c777892611cedc93bcf8c099a9ecdab` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x5a096ac89eaef68930352a15da49e4eb8590bf1d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x5a42864b14c0c8241ef5ab62dae975b163a2e0c1` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x5ad2e3d65f8ecdc36eeba38bae3cc6ff258d2dfa` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x5aea6d35ed7b3b7ae78694b7da2ee880756af5c0` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x5e154946561aea4e750aac6dead23d37e00e47f6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x5f09aff8b9b1f488b7d1bbad4d89648579e55d61` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x605a84861ee603e385b01b9048bea6a86118db0a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x649f8698068ad143a7e18ba9cb0be112d5986aeb` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x65c4e04cc26aadd1ec95c54cd6dba61a270f15ca` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x65df7299a9010e399a38d6b7159d25239cdf039b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x66c559fc4fa46a47262efd39db8222275249566c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x6d62d3c3c8f9912890788b50299bf4d2c64823b6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x6e17a8b5d33e6dbdb9fc61d758bf554b6ad93322` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x6f149f8bf1cb0245e70171c9972059c22294aa35` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x6f51d8af5be2cf3517b8d6cd07361be382e83be6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x711077ddc66b18e6dcb0a5cb3743f3938a03ce75` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x76cc16608aa7cd32631bb151801bb095313f7bbd` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x7833397da276d6b588e76466c14c82b2d733cfb6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x7a4c56b1baaad0ff5d248892e137d415da41b3b8` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x7cf9dec92ca9fd46f8d86e7798b72624bc116c05` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x7d5b8ab9c948fb11433e0eddadd718dc5cb040bb` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x7e8c632ab231479886af1bc02b9d646e4634da93` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x81c097e86842051b1ed4299a9e4d213cb07f6f42` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x841eeb3e2489b2282b0e14202dc8bd8f7624e29a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x8493f1f2b834c2837c87075b0edac17f5273789a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x87c9053c819bb28e0d73d33059e1b3da80afb0cf` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x88956c00a5fa046c823eaed747f21a95d2264403` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x8d51dbc85ceef637c97d02bdaabb5e274850e68c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x8f382ae7bbdbecda835d26ce3ba64010eaee1386` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x92004dcc5359ed67f287f32d12715a37916decde` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x9a5cf6c0a1cee5226e31e3d0a81f2ca2462d8387` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x9aebf5d6f9411bac355021ddfbe9b2c756bdd358` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x9c3743582e8b2d7ccb5e08caf3c9c33780ac446f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x9f49b0980b141b539e2a94ec0864faf699ff9524` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x9f7dd5462c183b6577858e16a13a4d864ce2f972` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x9fb442d6b612a6dcd2acc67bb53771ef1d9f661a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xa01227a26a7710bc75071286539e47adb6dea417` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xa19f6e0df08a7917f2f8a33db66d0af31ff5eca6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xa48cfd53263ade6abdb0ac75287cc0d5a2eee17f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xafcc1c556ee0436c10a3054b3d615abb93a352b5` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xb5d6483c556bc6810b55b983315016fcb374186d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xbdc0304210972be75fd2247838bff2b64474f15c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xbf2a93b420225558a76fc9888c687c14977e6e7c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xc344db27feba7f0a881a50f0f702a525a44f2368` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xc8495eaff71d3a563b906295fcf2f685b1783085` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xd789870bea40d056a4d26055d0befcc8755da146` | ⚠️ Unaudited |
| TsbFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10a73b16f6cd03931484b4ae69fedc55e868d295` | ⚠️ Unaudited |
| TubFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3b67099121e1fbde6276b2802048d1a7dd1b987` | ⚠️ Unaudited |
| TUsdeCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f0c371f808996187729ed1bee13ace2e901d526` | ⚠️ Unaudited |
| TUsdeDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x507f409ba7e5ef489d5c0e3c4568b24985a029d0` | ⚠️ Unaudited |
| TUsdeRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ac3e68ea5e9dbc592246e2d0d57913aff77a603` | ⚠️ Unaudited |
| UniswapV3Adapter | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-258577 | `0x34f7b52b0d33959c8351ef95f3523c89b6123c0b` | ⚠️ Unaudited |
| UniswapV3Adapter | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-258611 | `0x609f20ee24e10010a62970e1dab7e2b84ed74cab` | ⚠️ Unaudited |
| UpgradeableSTBT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32a67bf4815b4f28e879fd09671ef74ebd60528f` | ⚠️ Unaudited |
| USDe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c9edd5852cd905f086c759e8383e09bff1e68b3` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0ef8fa4760db8f5cd4d993f3e3416f30f942d705` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1b7a4c3797236a1c37f8741c0be35c2c72736fff` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x200057a0a4a97149b0924c5dbba868f283d903a2` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2093bbb221f1d8c7c932c32ee28be6dee4a37a6a` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2ecd155405ca52a5ca0e552981ff44a8252fab81` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x46c4ab30743759ec142f7495b7e935e213cc29a8` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x57aaf0004c716388b21795431cd7d5f9d3bb6a41` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x857b4faa11b143f69f091d1c4ded5480a8d16f8b` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xcd5fe23c85820f7b72d0926fc9b05b43e359b7ee` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xd0ff8996db4bdb46870b7e833b7532f484fead1a` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xd5edf7730abad812247f6f54d7bd31a52554e35e` | ⚠️ Unaudited |
| VaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01d8c1e0584751085a876892151bf8490e862e3e` | ⚠️ Unaudited |
| VaultFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-258579 | `0x4778cbf91d8369843281c8f5a2d7b56d1420dff5` | ⚠️ Unaudited |
| Verifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23369a60e5a8f422e38d799ed55e7ad8ed4a86ce` | ⚠️ Unaudited |
| VoxFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x414b1da0bb6e948dc0559d14ebde9fa9572499bf` | ⚠️ Unaudited |
| WBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2260fac5e5542a773aa44fbcfedf7c193bc2c599` | ⚠️ Unaudited |
| WETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x353f8931ce1c52f643121be129985aab09c4bf52` | ⚠️ Unaudited |
| WETH9 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2` | ⚠️ Unaudited |
| WhitelistManager | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-258589 | `0xb84f2a39b271d92586c61232a73ee1f7adfbf317` | ⚠️ Unaudited |
| WhitelistManager | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | bsc | unit-258624 | `0x6119e236d3798777a3f2553926070958df5704f1` | ⚠️ Unaudited |
| WhitelistManager | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | arbitrum | unit-258612 | `0x7a571901687e7f30431b4e86bdd1bab6cae51d43` | ⚠️ Unaudited |
| WhitelistManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x2c5d576681d625ea9b6e9ee5d6a9159147328292` | ⚠️ Unaudited |
| WhitelistManager | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | berachain | unit-258643 | `0x6cf2b79d1a2173339399a3ecb44086327c9ce308` | ⚠️ Unaudited |
| WithdrawRequestNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ed97c79ded8894036da095b2e2f79f8080a9cd4` | ⚠️ Unaudited |
| WrappedEEthAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c3f5fafb87318c0deaebff096aba019501fcb69` | ⚠️ Unaudited |
| WrappedRebasingERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78c6b27be6db520d332b1b44323f94bc831f5e33` | ⚠️ Unaudited |
| WSTBT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x288a8005c53632d920045b7c7c2e54a3f1bc4c83` | ⚠️ Unaudited |
| WstETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f39c581f595b53c5cb19bd0b3f8da6c935e2ca0` | ⚠️ Unaudited |
| wstETH_Burner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7581ebe7870a220360d216c3404ff7cb79b2a0f` | ⚠️ Unaudited |
| WstEthAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa74f994672f232a30067da820f0e54881edbb9d7` | ⚠️ Unaudited |
| WstETHPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdce39334a524b406b6ea8421546066e319328219` | ⚠️ Unaudited |
| wUSDO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82b09f8b6096039aa0d62a5cee8dff7f95791c04` | ⚠️ Unaudited |
| XERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x425bbf58df398d13677aa56fcd5daca02b2f2180` | ⚠️ Unaudited |
| XERC20Lockbox | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c858892decbf31460603f4bfc4620c328047f37` | ⚠️ Unaudited |
| ZeroGBtcvCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f211552e0d7acb267a9eb98b80ee00f47cb9e9a` | ⚠️ Unaudited |
| ZeroGEthvDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac79fed395c2238c4fa13084ee440e19e4deb0fe` | ⚠️ Unaudited |
| ZeroGEthvDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01feb0bba21552385de157174f32d97bc0e6afcc` | ⚠️ Unaudited |
| ZeroGEthvRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x364fb05060e7562b0c6379b5bd3371c412e049aa` | ⚠️ Unaudited |
| zeroGUSDV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x733acea2a9193a249fdb58ede4ea3c8ddc5fa347` | ⚠️ Unaudited |
| ZeroGUsdvCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8cf94465f8db8a273673dfe950bd1c9e34442aab` | ⚠️ Unaudited |
| ZeroGUsdvDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x091074f37e8c72ddb8720afae77c44a855080e8a` | ⚠️ Unaudited |
| ZkTrueUpInit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b8b7896458b31688545d3f5e01f346bef07b738` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-258628 | `0x883192efdd5a3417b2c0a14b25f7536b2018f853` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-258632 | `0x954529f8f103bde464fc6d02a94cd40c5bd322d1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-258634 | `0xa715005c1a8524c0790029153b8a860f96a2a856` | ❓ Unverified |

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
