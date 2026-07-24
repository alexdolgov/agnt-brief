# Agentic Audit Brief: TermMax

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 14 (0 matched; 14 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: TermMax (`termmax`)
- Website: [https://ts.finance/termmax/](https://ts.finance/termmax/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, base, berachain, bsc, ethereum
- Contract surface: 1153 unique implementations (1166 raw deployments)
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
- Outside the address book: 1089 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 107 standard proxy/library)
- Proxy deployments represented within implementation groups: 153
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/483
- Verified + Unaudited implementations: 483
- Verified by bytecode match: 0
- Unverified implementations: 670
- Unique implementations: 1153
- Raw deployments: 1166
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
| BullionEnumerableNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x62bee1bc8cf74fbbbd1f8444a39ca1db4acc368c`; ethereum `0xe9e9431b1135a06850997288bd0323047cc0da51` | ⚠️ Unaudited |
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
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1c6c0bc8a85c93e33a1c261ffdbc2fed43a5018c`; ethereum `0x77f0b1aaacc097988b582bcc97cb2500201b30c2` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x8238884ec9668ef77b90c6dff4d1a9f4f4823bfe` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xd9a442856c234a39a81a089c06451ebaa4306a72` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | 2 deployments: berachain `0x0b30251fa697a39fd41813b267b50f03414e82da`; berachain `0x6734feb92b4b40447494b0a85b0b849fce136672` | ⚠️ Unaudited |
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
| InceptionToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1aee5ec60fc79b669f11fe368fde789e267649e2`; ethereum `0x36863d0d91a0770cc65c42073400aa66d9008fca` | ⚠️ Unaudited |
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
| LeveragedQQQon | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x985de60bd3abeb7bb70b154de5669e20432f25f7`; ethereum `0xb18cc776fcef403bfe08ebfba8b58fa7dc2949f7` | ⚠️ Unaudited |
| LeveragedQQQonCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2163f6e5599d54c29f5064d19b9cb2ead7ab5e36` | ⚠️ Unaudited |
| LeveragedQQQonDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29de44b2ac307416c3c7a6e3204034e257c05c20` | ⚠️ Unaudited |
| LeveragedQQQonDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15e6fb060af7e12d6634685abfaf3b71300c29e4` | ⚠️ Unaudited |
| LeveragedQQQonRedemptionVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7aad8e031877551a1a8955af456612f07b67e191`; ethereum `0x8d67cb6e3f359a88273a3115f992ee89673cfc7e` | ⚠️ Unaudited |
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
| MTokenMain | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x123ffe0a3c62878dcbee2742227dc8990058d9e1`; ethereum `0x5e072c6689610c66e49a3067a4b488b4e27bc744` | ⚠️ Unaudited |
| MTokenMessager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24ce2a00eb05b33b206b4057598f97ddc3028c7e` | ⚠️ Unaudited |
| MTokenMessagerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x102874ca109a5a7e94a0385f1380cebc905fb878` | ⚠️ Unaudited |
| MTokenMessenger | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0be91692750982b4ba92dabc3985c548098f68c5`; ethereum `0xdd25e75b9473f583be455355811ebf473cb05907` | ⚠️ Unaudited |
| MTokenMessengerLZ | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xb350d8decc3adf68c3856d46ab42976ca7a6386f`; ethereum `0xca494e058461fcca545fdc2d6bfd27feb499e6b8` | ⚠️ Unaudited |
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
| RollupFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x09e01425780094a9754b2bd8a3298f73ce837cf9`; ethereum `0x955cdd2e56ca2776a101a552a318d28fe311398d` | ⚠️ Unaudited |
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
| TERPOC | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2022be364c2c0b46bb693d154bfb8eb5476a877d`; ethereum `0xfdb6563b361bd602d9ba2a119eb9ec631ec97aed` | ⚠️ Unaudited |
| tETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72cca9794018c10ce47af3fc8d47e167d0761e96` | ⚠️ Unaudited |
| TEthCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42e82b2ee52cdc922cfed82bfcef90ada31215b5` | ⚠️ Unaudited |
| TEthDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x46eab5259e1a2f18cbbfeeaa093130a456d09e78` | ⚠️ Unaudited |
| TEthRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc32652ab236f32482f5018b027c8b54c13750ebf` | ⚠️ Unaudited |
| TNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c377a56c4a5eee3fa4c7a8de0440168e4f11708` | ⚠️ Unaudited |
| TokenFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d7598ce7cd1fa07c2a26c49876f850b0ad66bbc` | ⚠️ Unaudited |
| TopFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0eda20f7499aae7bdadc4e52fd72e49663733ed4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x007115416ab6c266329a03b09a8aa39ac2ef7d9d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x016e074ca7304b815e29a9b9d8cf7a5603da2a5f`; ethereum `0x459d3411267f28e61da7c66f182b1c9fba4c9e36` | ⚠️ Unaudited |
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
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x66c559fc4fa46a47262efd39db8222275249566c`; ethereum `0xb2dd98a174388cc230564c035ab63af40ee1fef7` | ⚠️ Unaudited |
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

### ❓ Unverified (670)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01dfb76cd1370a61cb27ae1ff76f04b0c3481b25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x048e585cd363b6cff91b5e46b7ff23c37a0d2597` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0bb26688812d083e716bf03b05f55440ede1656c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0cfa3eccc3159a0d5fbe7833111d4703769c34a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1118e485c980ce2f89e6272a7cc569bc9c3d737a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b9b3f1f0a92f3dd6a1cf4b5ba08fad2dcdf8def` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b9f3e69068c88ff6f0d1990676c702e6360aa8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c86801e8ad0726298383e30c2c1a844887a61bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c9152b1981f3a67b66e8879c4513096fefc5540` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1eb28ec10ffb52abe0fdd7a3204c45ae791de1a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20d76bfc20046139ba2f5bdcf358f683e276b55d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2103e845c5e135493bb6c2a4f0b8651956ea8682` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22276a1bd16bc3052b362c2e0f65aace04ed6f99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24c7e21a91cdb7760798e02ea5639d4c60b0c442` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25afa58ba32bec9daa32ba7f6a1cd0941b699310` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x276c0e52508d94ff2d4106b1559c8c4bc3a75dec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x295234b7e370a5db2d2447aca83bc7448f151161` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b74c585df213931fa976ba416158d6063541065` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c0e920b432b916d2187d131b983f32748dbe3f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2dd478f91de57afb18a1851addc77eaa3fd6593a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e1c769a9ba8248c7c8128c2beba11331ebf98aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3194e478b6d3ebee969470295f271727b62adf7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x324596c1682a5675008f6e58f9c4e0a894b079c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3284d4e1d51b64e0930cd48170a29981614176bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32e84d6dd9bb0dfdbc980153d61e3851478d3a67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34bab42f022d0ad6d9da468c3672501a131a8906` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34dafd0756faf9167778b00287e03e8845759551` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36b429439ab227fab170a4dfb3321741c8815e55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37a54bf61d261802a5d6e008ddc5d4edbe9ee201` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37dd629c59cee0e20d9d21ff582ad96e1a7a1625` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a420a3358ec8103a70b77ebe4f0040f6f7af18d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b1d7e06a1bffd89ecd8026cf287c11f6ec34f0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b798263e9eae3254d86ac30b198f7aa2f82fd82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ca8171abab8b4134387a022ee6035ef1bba1c00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3cb5fa87703c7165cc5f2087b3e80b58fb6d8ce8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3cc88086c0a613970565c96f9a1b6bdad61c5f14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d3b174157745bba555774078cdfaaa89aa11e70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d4d251063ca62d7766816ac40ff893f5ea0856d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d662fd6a22ed64077222cfb998e8effd78e9c9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d7d38d5aecf2a679390e8eb54021eacdabf0824` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f877f18521bc1860ff00335abc85d26148a403a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f92247053508c7662c9a24ccd01229fe0ef7419` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4055cf534682231e071aa4b664f84a7c25bc73ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41c22ee375530b2b9723dad8a3f9ee324a787780` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43ded426802b588d033302abbc7b4449e1c3fd73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x443200ad663fec557979047e9e91a0b31a528673` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x444d0710760706e4714a2c8ea463e5c518e365cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x445a4c113b42dfbbcf8dbaca29e4b5f70defd440` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x448a838f6ff02cbb72860ffe52f973be585114b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x453fcff2599cc16cc5ab6fcd4aa5e4a791da9e86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4613e269008ff0ecfa07429c6bb12a6c6caa4168` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x463f031f86bca6b027ae72bf03d460bf43b07286` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4664a1802e7de6ff829d23f1d82cc49311e921dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47489d01f7719b1e057c54db1e3d78f89a1d3544` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x480e16fa31559658546f39e06342021aeb12a7a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4878f636a9aa314b776ac51a25021c44caf86bed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x497af358b2ec9f7499d71f646d8a7fe9e3e6c7e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49b4eb3a6bcb37ec89b394b966f3d7e0f7816cbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a85b9129b5a060b791f5b657fcb883f2542a4ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c51a1595a1887932858b2a3c6b34ba6aeead899` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c9c847eacbb6c55c62a99891d09f2ec77813638` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4dd29d4972afe01a139c3a385e4fc1b9fc10c1ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e2fe5f58df64368636db6d9a9e728063585c78d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4fe05b0089c20891287e0a6412a14f249750ad8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50253dc4a01c6408fab9646e804fcbfdb74e3e4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x502d706e01de46c93cd4052c1402cd5151a589a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x506a9dd073d51fcc0bf96d26727928008c4c5ba3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5198be473482e8f1f96c587933296fa8a14b725e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51e68b802a0f07a8d5e05b3df12716dd5b1bcfff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51ffd2c933a83efb9562736d4c6c69cdb3e036e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52760ab1e59efeda020a9aa840306ad7cffbd0d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52f0bc0025dbf46a6f1ea9543325ec01d5342a2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x530824da86689c9c17cdc2871ff29b058345b44a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x540529f2cf6b0ce1cd39c65815487afd54b61c2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x545ed0993bd1831f4972fc3025eb2a028552ba04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x55d7fe59a1c762c248f4b215719f109cdbd8eed5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x57a5a0567187ff4a8dcc1a9bba86155e355878f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x593cf790ef30710f883d51e01a269925f5bcbe80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ad6a60c71ae49e0e6ddb1a4cdc9a1b2a3d5f7d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5be681ac79f288c877aa7b3bbc95891979075412` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d84a6ec071ef6831b4760ffdd3375e667489b9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5dd360d87468087c57f06dfe34f664f3f1e31f3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e1615d749a66ab4e4bbdc432f42dd5db8f5618d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x609f20ee24e10010a62970e1dab7e2b84ed74cab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x619b1b7d39f35d3857f1dbebe4f94719a6ef0568` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61dcf65e2e869416dcaf0f25892f0fe0f15083b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x621d84e47ceb6818c6c0e38edf9efd5c1c92b339` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x626de8d4ba2627aa0a775f8563bef205985c476d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6271e06d3562c67facbb1d040b50387bfd770bbe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x642f506bb1513030c8a1a91ed577ff73e5af3a91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65ab69857c23cb65e713efdaac930a892b161a67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x668308d77be3533c909a692302cb4d135bf8041c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x669e964ba32f73eb882935dc9295a69fade7ef71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67dcc9c33363cc0e650738528fe4fef1d658c7ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6870b289b7652dd0b4ca1d25d9f044799aac697e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68e32b7c91f306a3c5b644d6bdcefcf8c0776ce9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x695ce99ec7eae4c10980e560f38e436245da4718` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ac78b7d787b5ddde1b342a1346fb545acf44e01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6bb087367a5d2f5ac35a25ad69d97a3fbf663495` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6cd5b7952245ad44e436644ff928bfab322f29fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d35f1d6993772164034428018d641f0e267eb6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6eb7b1786d6748881d74d165290f99d78fdaa67e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ece47d0606428b46b0cfed2e33fab806cc888dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x717c27de5e93b0f8f9bacbabbf3da12db59e74e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7254bf1d8d73fa52e5ef0642015e719eee018896` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x727157894e8ebf337e9f488839164f6057dce12a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7348c05c40ce617f2f941b0335882b3ed90936c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x735f95ff26de82f9952c16f348d92b972a43fc3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x74d1984a64f447371be4019920180b52a33adadd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x74dfb95ae623123ecf82ba841985fb460bb9d45d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a12d25e52621e45f8d7414d061868a3766201d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a6df7fae5ce1ae3d550ea2a21e352e7b3f5ad47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a9d038285abf4b35906508821e5c3bb41493cf5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7afb9949e337607c6b69f1f052b8985a390b5909` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ba1d4860ed95a6e069fcb631f1a424352b66cb1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7bc235d9adcab853cb522969f95b0ebcabd47905` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d3fc5e0ab89bbc7ce122284b6bbe632282e7484` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7de4efa140e52b7207fa689d41afee461b83e748` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f740a50e728e5c3827ba91c6c2b1dcbda5896be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7fa333b184868d88ac78a82ec06d5e87d4b0322e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7fa768e035f956c41d6aeaa3bd857e7e5141cad5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80d69e79258fe9d056c822461c4eb0b4ca8802e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x814cc6b8fd2555845541fb843f37418b05977d8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x815cd16c1e3a8e1e0e9fc2fc5bcba5d48e7d6f76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81f4bbda584e72e408153709028bbadae894361c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83843225e5ab97c19accc42a47c34eeb039a3b04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83b7aa8f6514b9e9fbb5a10d8b0d66362a4ab96a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x842bf251f9bc83fdc7e98a2a56e98462fb446734` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x854732a1f15a2e4f595c8f83b4432847720f452f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86c6ed09471cb210afe6ffe1aa93f55ba016c1bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x872979de5094f1b2fd6bf26013eb2b5ed302d1ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8752bb71648cc44c30000531d97825cf9c2d8d75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x883192efdd5a3417b2c0a14b25f7536b2018f853` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8987ca0dc60792f3b7dbcc35e0230ca9459204f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89c3d4eec234f8a8f3cdadfaa4648019e994089c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d76b272b0b6f3f419d242efe89d4b388aa93139` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e0789d39db454dbe9f4a77acef6dc7c69f6d552` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e7046e27d14d09bdacde9260ff7c8c2be68a41f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ec01a807d088845e5176c20a129ebf9a0101dd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f55d301d593b371998725919abe4249e7c3e7d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8fe56ef6fd4f64dd2a0eb21fb634391890455f63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ffc4da23ee650ffdd3cb4880a644ce17d2e5623` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90e80e25abdb6205b08deba29a87f7eb039023c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9181f633e9b9f15a32d5e37094f4c93b333e0e92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x929cbcb8150ad59db63c92a7daec07b30d38ba79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x949917037f26c064ee9b162cd50e70ab61274ce8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94b888e11a9e960a9c3b3528eb6ac807b27ca62e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x954529f8f103bde464fc6d02a94cd40c5bd322d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x960348123bbc7a6ce14ac3a5ebbb466cc8ac6df6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96a6a5d23cd3b65245a299a15c029ffcde6a9caa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x971b35225361535d04828f16442aaa54009efe1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98b0c4c13068c3010a809174af31061aef547fbe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99fde75655a8e9dfeb0f5f813cc2cb203cd3c7c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a074c1ac759b10c8630b71aa017004c3e091b9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9aa18ab8d24c5cf3faf7e5706017602989feb4ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b63b3358a83fdf342a842f7c35c2893610c98f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b94aac01ecbb8fb31e52ce21d1f57849a843feb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ca0f4cccb6c5cd50dd2eb89fabe7bb60d586bff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d1b078a1f70d837bdeb93797b5dde1dc8e3c08e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e688dfaef82da9bcbf4182343dc3a027fd04fd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f1882ffbb007dd275c931ac302cfa97a4ceaa1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa12aa0706dcf0e841259a8459f1545dd9aed9301` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa18ac2d04829edf2a792fb83bf22a078b9569aad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa40239b024012e427d3981c3da055c4c5a58d0b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa50929a67daf9ff3567e2bb3411204a134f72546` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5a5b4553911a063a1bb09aeb31185b19d478452` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6aec70a03462a0635a8c2d119195c444a7d6d8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa715005c1a8524c0790029153b8a860f96a2a856` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa995d5c90625d1b278815e074ace23cf9037ace3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9f8c770661bee8df2d026edb1cb6ff763c780ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaaa2108df9c3aa4d358275340733476d139a1445` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaab05b7786af6e23a08a69f98a48c57fce54e6c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac56c976726c8b00bbbad8dcf5d94dd1cd033c71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad1ff886911fa6c5edd748fab791e863e94bf5d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad55aebc9b8c03fc43cd9f62260391c13c23e7c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae2b872d4ba3e68e7392067c39b30a573f5fd2ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaec65f8f45b93e2de4cde40cbef9cac8e3345b41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0eccbad4b4cc190261c29c6e8d85bcf04284a8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb14a1a3ac76d7ded169192f6101cda863bcdf901` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2624f7e72788f1ebf1c7877c646732957bbf72e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2f44773e99cffecb00ae9ba62913ea14c3b6163` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4314cbe0f5bc5be6e247892ac4543dba223a13d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb442989dd043b46c82308559bbcea846e9a69f82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb52862870108447f8e52a478efdaa97df0a0eabf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb57dd1092390edd37ec91e86d11ba530d748d63c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5a1e5383a8cf38c5cdad167424be9ff855b5285` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5c479cc2ee8d24b1ae86ac270598f1a571abd6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb615423a994c2361d838cf633191b260c67c8695` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb65b529726621c7187dfb146b9d7ea8274e77503` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb723377679b807370ae8615ae3e76f6d1e75a5f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb81e55e7ee6b286af6abfea4efad83f7ba4d1f1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb94063e58056725ced8d2b0363e0bd7d8f46875d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb999cab0a5d302906f86e0f5ed5f3ef6eef42359` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba8275286e10489c4aee24a39b0d919c79c634e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba9ea529f94210c5aae453ced082b56bdc041f7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbaa61a8d8bc52f5a9256612fab498c542188a132` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb6781da398ba58a968f5c75d572dbfc514ef40e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbbf7fc7036b60d1e88913bd583dc5e39957f9f17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc35cbc2842ada9743853ccf5e8b5eba42662510` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf19eead55a6b100667f04f8fbc5371e03e8ab2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0660932c5dcad4a1409b7975d147203b1e9a2b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0b6b1afc4c7028079fa249dfe91752dfbdfdfbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0b71224ec684ed0ca9170d833894ac195c4025d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc18355f83204630ae910d5953a411812a33a6101` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1a5fe7b2cb9252debb49668d101bcbf55af47e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1e9640f04b802bbf0b02a4e9fe394039abe8b59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc33a8284b431f2d5765327283388eb88f8ed7357` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3ade5ace1bbb033ccae8177c12ecbfa16bd6a9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4181dc7bb31453c4a48689ce0cbe975e495321c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5937a7a9260643ca274b2ebf0c17ad130f3c946` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc676d85f41552ce83337a2b8e746f869d2af4ac4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6ad091515a516da2eadec3fd8bd81ec46f08360` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6cc133477f63d9c0c53d1ef7da83fa250778db4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7373753e8991cea030b01d580c53dda4da31d18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc867f715d8d71ac758cd7d141ac7d1e46d24b8e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc98a609d29f0c0e4a66f6e6f1af422c1138d378c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9dc25eca1a94da3b69856a2211062f040a35477` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca241823d4bfe8b29610709db617407fbc9ae02b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcaa375068bd7b272d7f282aa0ba711bd8a9446e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbfdb40cd6414135c051f8c966f127b3e46f7a10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc0f81dd685ad8f8fbe44de5b2f7a3fa99e25c12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcdd6b2e8e43c4281f99c44a316bacc3348a873a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce02a0331b4a5483f01c9bb45ca206cc2fed5b67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcee04481b07a1af2c148e26a74ba0ae5df96f14b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf2f2bf1cfee14d63574f68a78a7ec2f5832513e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0ee89d82183d7ddaef14c6b4fc0aa742f426355` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd110dbddcda1daec916c36bc06b30f73e81a272d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd389f627c30f5125cd1a36d51d71f3794102a899` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd402019cd1ec046dd74a70922f24c2e3cbb05e24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd665cdb32504e017173bb9ea5ee9b29a14d53436` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd752c02f557580cec3a50a2debf3a4c48657eede` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd7b162c1fa3c8cd0cb03e2c256715a4f4bec42d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd7dbecfb1738da6812b6dfd0fe4c424cf7d184dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd7f68a32e4bdd4908bdd1daa03bdd04581de80ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8a90e69afa072b9ff33bbfdff56767be2028dc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda29ad84566c3bfdee6009f6c0f6beb6686a71a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda9b11cd701e10c2ec1a284f80820edd128c5246` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb12cf5f2df26e43f1eeec0ed10c496f01167575` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdcf8f9db2a95e2a57e79cf9a6fcbf73d82637d91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xddbdf3b7e314a806ac296e6932135db026b11a85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde27a40f2021de2dacea9fb31142bbae5640b8c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde4d2db34794f929fcb11715a99e015ad63c31bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdedbf8c5421555fe087b4a7419caa309d14e9098` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe211882c994c6e82f9a6607279ad1e0f05fa64d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe24dc475a52f6fa840f6d1fcc51f6939e1d5306c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe289e440c0ed5cb2eb093e5653be72ee95761503` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3fc47e7e084bc3a83bcfa6b3a7ff05df1614ad6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe53919c68e86eb44e2d467c280c0c1e27b5aa22f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe62567e9a8969aae406195f7c4c7e4e85d4ed879` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe639fe7f410c2c37be9b2be5df7890d1a79dfe56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe69799cf1f9245d5528cf9d2915b37f5c1c96594` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6c32b37a6571a46651fc88d756c777b9d6cc857` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7efc5060b6ad57b68f5911eca6c5cd1952da152` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe90e269a92bbd6a5f2da4e44b0eaad9cf386c6a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9242a9f84c047dc821b0800d8fe994538edd1cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe92bd1e271afda81b89bf905465f1aa36e7c9223` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea39d9b71de8ccdc36b96065693164e5816e5d2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb14a3897ab4487d6f1d90e610ed85bde40a17c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xebff04be9c350433bdd2a730e82c9399f15c3e19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec2bfda1cf9b5306964aeab9d4175928ee965aa0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeca0ad75dd5004229ea94d7fe26c8a10989f3a03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xecf3672a6d2147e2a77f07069fb48d8cf6f6fbf9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xedac5282c9a63622143325ed5435258c60f48e52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee7014d1bac4110a304aab0f0b7d28e4d4c5a8e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef6f479dbe4eaa80eea939d35fc0638c12473264` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xefaf124849b11b513c35350cd8643d29de49c2ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf03f14d1c1672d9740e0b23c8fe88dc25ae4d463` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0b06794b6b068f728481b4f44c9ad0be42fb8ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf18a06ae13ca55e10a27d3b2b5f76a4b6cfb1bb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf21014b114bb976f890e15c19900ce9be5fb1e12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf2b94ccf1bf8f51e1cb0dcfef74b7134a49d22b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf2bda87ca467eb90a1b68f824cb136baa68a8177` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf2f2898d4550e24b70ca14398910b6f98e57ad24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf30700f382bcca697a23f8295d6ece7b378254d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4417b594cb2b9784f1bf6af766fcb670153e371` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf561938c3bf47dd9a9c7a16301c9ee024f9f22be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf6940a8e7334ab2a7781af6f9e5aed8efb55116a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8f99508c2e4378e9fe222ab07ee49bb12d85996` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf9d9f828989a624423c48b95bc04e9ae0ef5ec97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa2629b9cf3998d52726994e0fcdb750224d8b9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa357b5b104d0762ec948011b729129ac3995df2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfaa4cba1aaa206ffb774a252224ffd54f7f2f082` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb8ad31b1a04a2c09e0223015b7d3d70c76e7da6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfba99ecf7b95e3e097a14765ecabfcd4774b4f28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfbe36c85a3b34813410a3a240ab057504104a78d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd07fd5ebea6f24888a397997e262179bf494336` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd14e4f508ea2565beb6259c95e273b3038bf9ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd73be536503b5aa80bf99d1fd65b1306c69b191` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd7fd2d34cc41e35185c2dac19482e5371db56dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfdddfed4274f323b7962cb50b4aada0065a51fc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe20c64f064c54fa126c651ded20a085013cd0eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe6a0d38c1eec9524bee74de47cd0b9edcec1a81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe715358368416e01d3a961d3a037b7359735d5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff8690df088346ad1559ee661edb79e243ea6159` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x02baa2e0d854b3eec3482c1eccb749e2d81bf09e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x03207ad82b3474966ac313a7949dc0ce9b7bda28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x03c4fcf963e5fbc0dc5851d2340624e70492acb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x092116a517fd583e77c1929a5724032100a51967` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0b0cb0d13f86d67acd5990c7ed3c9e0c53086030` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0b22d6d5a160756ff46b872c83d30910d6e18e0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x112f47001514d0e16553f9f7683432a5cdada88f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x114377749ef77c5604aab7d684b03309be9456e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x13276cdb2d80582e3ab4eb87f578a16f2ee92f79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x133bf41c23edfb2f0ef586b5b01063a17470e294` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x14911f75c704d904f195b8cd3fd76a9561665b4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x14c488f3160dd67123a9e5e797e567f4d4b39094` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x18dfeafb00260aa70d981655d3a0b29f4d350ac4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x199aea024372521ca01fda03aec0a8e3505ea53a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1c79dd543363a55ea71a3b9b6ad4282d2d44602f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1c9152b1981f3a67b66e8879c4513096fefc5540` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2166129cea1b408d67f3ba89be0aed361108868c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x22013dbd826e6e4d76499ab9f2a501853c477cf3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x22105089afc8f35d55a9efb19785fd350addd7c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x26c60e9d390f000e33b9b494fb6ded226aa50810` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x286427fb95948374b755b716cfee94935956491e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2941933c7d62bf97bb59ef1a90aef52fc7aaa8a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2a09d90a9551ac83bf414b8db67730c30ff05854` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2bdd82f276d8b35728bd49948b045df8f42f4517` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2e1c769a9ba8248c7c8128c2beba11331ebf98aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x310ec798c59894c0ec6ce5c18060f63a37592bc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x32acd5ba1235841c320bbe95994781945de55170` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x32cf474e1df6e0f21f687bbda8e5ae0d361fd319` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x33931f3898efb9a42b0d7cffa9bb50a566a6b421` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x33d78eb28204cc03ab6265d0f57ef11b654542aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x34bf74ba2534fc80b52e8c8f2c6b2b9fbc01d3b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x369c9bbd5da354e1379c7c07a56295d4fc9abf89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x36c8b49bc35e92b6c043057022fee049bb0601f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x37ba9934aaba7a49cc29d0952c6a91d7c7043dbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x38c652ffaa142ec63c66b1ec9a8a6ea4a36dd3bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x39375a8fea655352b3b194207a342f8eb16941cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x39f376b77f43b81333878d65f535bcf9766b3896` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3b798263e9eae3254d86ac30b198f7aa2f82fd82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3cb5fa87703c7165cc5f2087b3e80b58fb6d8ce8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3e3c07fa1e5255aaab334d5e9abc61abf0057f2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x41e1f213bf4ada84a0d4e6a9b5e0f0a211f5a723` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x41e6c0fa94278669d1166fcfa20ae1d92cdbf18a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4390c30470cebb94196532d618a6c51ff8acf497` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x452dc66650b96f8d2b07b349ac3abd02eeb849ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x487c5d4a51d55138bf446415301f34f2d46123ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x48bcd27e208dc973c3f56812f762077a90e88cea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4961bc8e4b0b2be8c6dbe99d2d4647c27f62e4cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4a34b4caaa6ad23b95d6ec6394472fbb857eb064` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4aa147ae5269dbe9c735a84e2f95fa6101fc4ee6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4d089aca40ed2bca6ea1509a3308c9107e974e36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4dd29d4972afe01a139c3a385e4fc1b9fc10c1ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4e9c9796fcfddf2eb66b7051b6a17f3eb6bcb57d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4f97afab57dc87401558059790445c65c3dc58b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x502d706e01de46c93cd4052c1402cd5151a589a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x526e0b297a629cadc339ddb804cd4e9b6aebad3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5832cc589550cdc56e8880861b165fcfa3c10366` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5ba2d33fb50d08d7755787e729183fedd6a3f3e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5bbc23e84c248b0563fcfd25b100891625de90cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5d42d1de3ec5fe769e7c569e7a13accf2503dfd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5e1a11b9cce01c36548e71baf3729e928c9094a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x609f20ee24e10010a62970e1dab7e2b84ed74cab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x615213d5e349adf4393c2feea791ed2bb8ebb1ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6279a34e2fe75e536a94de1d896022ba12f48751` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6308668cfd4c2a52bc4649e7f3efb06e5ad119c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x63bb70ab8fa4677ca46e83de0ce4074ce7bd63fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x65fc69de62e11592e8acf57a0c97535209090ef1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x68b6bd575cc2aae19603fa5609d8411ffa4b4ac3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x694de197acd58960846399fb83b16dc765e5f059` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6a09394abc5d2dfad47f9d7d4152689b76d37708` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6ac37b549660f2c9f1a77597ee1aca5f742c7093` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6eb7b1786d6748881d74d165290f99d78fdaa67e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6ece47d0606428b46b0cfed2e33fab806cc888dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6fa11e0e1e0ee768deb0e728a08a4407d15ee466` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7062d0688b24da57d97da07ad7c859039ac2cdc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x726e0b933a174fbf520043b16d5b5395b9ad7b20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7336be36ef29d80e5c0ab676c2c3700c9cd84961` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7349414d18f4a442aa552e86a7280de152c645f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x76f5bf6ba25c22d4d185c4e7e19a8b14cc5fe779` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x775e9698932db6d3b14c43be8be6ddfba68ffe83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x792c63aa861feeebc200ee9b1b6abc4a12e2b349` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7accfe1b9351f200ace902a9270e6308e73053ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7afb9949e337607c6b69f1f052b8985a390b5909` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7de4efa140e52b7207fa689d41afee461b83e748` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7e5c46826b53d9018ae644ebf22c38c607da46ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7eba7c876ba76147f67aa9491b36a21dab7151c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8306818968147c1059d1388d718714e903f0b940` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x830fbad7cd1c3cc5b693dc64b985f2901b253c5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x84a827c04b3a364c3f6bbb4ee1daceface853e9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x86cdcdbbc02acbd743a3af9336fd37d2c7f6da3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8712f0ec9a89d166a25d1f083b464e7f9fae5041` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x87d89da46ff5b5a566ad60511014383fc5345529` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-258628 | `0x883192efdd5a3417b2c0a14b25f7536b2018f853` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x89ed60510b1e98f80f977b2c33c0601ec955695c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8b2ae4e2070b3e9bf9625fc61290700a2e24a808` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8da157f56e279acc6d2ca897e8b1d7ffa8cc2270` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8e3b448b3daa17d22e56a9354138bfa860748e7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8e6021e94f55fac0d0a46adc4e5cdf2e73103d40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8fda5e45806b2893ab20f5956b59be305e91b16c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x90c72fa3b55e4bd00afc0a6c4419e2df99f6d95a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x929cbcb8150ad59db63c92a7daec07b30d38ba79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x92df7a9f32a76415a8061c7a56f3b548400ce005` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x92f95736351ec125f69908e087829efbfff23e09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x944187bcec3a49696853df5552473b0772777dfe` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-258632 | `0x954529f8f103bde464fc6d02a94cd40c5bd322d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x960d1c086cefe82d58e4b431cbe526d58a9df267` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x97b1de9e0239c64bc642ed68e346fca9a1e02939` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x996bbfc49bc9e59b4a5ce6b3215cce860e134978` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x99f6f42834773583c67baaa6b15fb3c37a61d6fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9a3fadf7a1f7e897ba33bd48802cdda446c4508e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9af58459bfaf89a5e326f2d87edc1f527ddd7baf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9bb1a564a6d01aeb9268f7162b537bdf958126d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9bfad67747e4430945a223d991bc01e0abd26f5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9bfdce83239fe5149dc2a570b23f8db92b323b3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9cd5e64aad4e36e753c26d1a16e1cadd31a8f0bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa0e0702b701ccac329732bb409681612f43e41ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa184ce847d0c3fce94a657fff8887ca71c0d90a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa197282839404a3e60cdcf8a78115f0595b77673` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa1da1543ca654f5b8688c81d9645fb6a792e2b98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa244184b769a1e14ef16bdad9890a6066df2ce7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa324a8ff9290d6faf3a732a91ab83592b2ca5d6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa50929a67daf9ff3567e2bb3411204a134f72546` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa6875af7a45bef941e484b59c149e5c1772de643` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-258634 | `0xa715005c1a8524c0790029153b8a860f96a2a856` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa76df00bb270f795de4452c5478696a73a7b16e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa9b7719cefe39a0233b77960accca015ad5f3184` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaa44f1da35f6d98a956c1a1e5a015041201e6bc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaa6444bd7bad7b0b8caf4dbe1e5cb55c7eb9dfac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaaa2108df9c3aa4d358275340733476d139a1445` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xad0c5cd53371f39b4ffbb5ab5cd6f7db86ac4222` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xadaeeb9980c4f533db014b71f1c02c0318621c09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xae2b872d4ba3e68e7392067c39b30a573f5fd2ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaed8649c449157f6d99cefa1a99ce40bc3e2500f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb0eccbad4b4cc190261c29c6e8d85bcf04284a8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb1ec9b367b0bb14f4c1a02ce99630f7df285e5d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb30adecf2a9daac567c30042dcd5b0b1875a188a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb452bb895821c5e28c7690527e9f2acbedc96627` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb4a576bfd2e5b9b035f90a5ef8570d365339c570` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb7d2c5e128614e4507e208d060f29d56fdb9c81e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbb6781da398ba58a968f5c75d572dbfc514ef40e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbc0de5fe98aab30b6542bd811ce45effc1a51d73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbc7877651504097f33c4c813b3d8a3c5e3957fa9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbd795f755dbb5a5358d6c60aed53ceb486fa8517` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbe6f455123f6cdea1352d4510ccde3d71d139ae7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc1ce945e55506b384daddef48fa5a78554560ad3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc1f9e610910ba4478a9b0b225ab624cb8a39d74b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc20d6b1183eba8ab6f0068fc6d7ab02a37b13d43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc8e2b866c073eb1daa8d97e8c2f698bf99d0c0a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcaa5689bfe6e1b9c79d7c44d9e4410f6bfb6c4b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcb9df9b74f36e20e25440ee819d6189d1bbf0f0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd03d013b46844ed6bebd28b2f82381f7756055cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd78fd63d162bc1b8c4477a4913ef99fcc5f5389e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd8dbe3b067445adc4852a1b11cc6469ce47242ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdbe433e3b69c22762d7a90a9a176aef89f754ff4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdeb9ecfdc40bf219978842aa11b73113f70138c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe0655f8afc130964a7f88597b0ec160b6d3eafd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe259dd242b1e2a690b5c89cc7587ba15daa08d83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe63922e755d6ba06b414f768d9ea0aa201719d98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe6868ea7149a965a29799681725d54e86566edac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe6fbf720dc5d1cdc1fa8ae24a18f69bcb7c95afd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xea630808ff30b0ca720d508941a100f96f4a6679` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xed2af062189fc331805b186634aae58b61d77be4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf12b8c4634707689c1501056fd963f075f7a7643` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf596746825c83df7e61a9fe0e0ea889f110cf250` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf5c6664c5b33e3fc16afa43621650652fcd85d65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf85404524e1b250b37a4d18dda9adffb231af3dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf85cf2b2c9465f166429b6eb1e42084e4b296bae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfad175caf9b0ac0ebca3b1816ec799884eb04b9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfb0c46985d937c755265f697bc10ad3387ae801a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfec9d92961d98bae8ea3b55ac8b67506f75722a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xff242aad9ca62ec79c5bec87b23c8a453aa9fc4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xffa110a6b661f6a434ded132168f6fa9f394b7cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x095f9a68c102b9623c0327739df5f8e78ca72e40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0d64b9fef3e1f599b88d29edb54d2f9152cbe496` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x14920eb11b71873d01c93b589b40585dacfca096` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1649e4e5e5c8b9714f847d1ac14d20c74ea36fd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x21470d84443dcf1bc927937c141a4c5728cb6630` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x28e47a7d7e710d796dbafd8081c052444deecf10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x29a21589efe51c6501d80e153d2dbe31e32d4940` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2afef28a8ab57d2f5a5663ef69351e9d3abf1779` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2c5d576681d625ea9b6e9ee5d6a9159147328292` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2e1c769a9ba8248c7c8128c2beba11331ebf98aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x33931f3898efb9a42b0d7cffa9bb50a566a6b421` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x34f7b52b0d33959c8351ef95f3523c89b6123c0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x35db2114bf3142c6e92418a7f19c2c7f5a9891d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3b323c3700c5eee539e7256fd81eb124d7ed52db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3b798263e9eae3254d86ac30b198f7aa2f82fd82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3cb5fa87703c7165cc5f2087b3e80b58fb6d8ce8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3ebb9e9c855bd03b275167dd2418193e3b69c22f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x41e1f213bf4ada84a0d4e6a9b5e0f0a211f5a723` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4bc4f8f9b212b5a3f9f7eeb35ae1a91902670f7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x502d706e01de46c93cd4052c1402cd5151a589a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x51e68b802a0f07a8d5e05b3df12716dd5b1bcfff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5922b66e5deb4afb2776a5a0717e4c7a34cad571` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6a0bdb5eb9f7ac83d1f41bb4aba187674cb80a76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6ac37b549660f2c9f1a77597ee1aca5f742c7093` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6cf2b79d1a2173339399a3ecb44086327c9ce308` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6fa11e0e1e0ee768deb0e728a08a4407d15ee466` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x74dfb95ae623123ecf82ba841985fb460bb9d45d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7afb9949e337607c6b69f1f052b8985a390b5909` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7de4efa140e52b7207fa689d41afee461b83e748` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x830fbad7cd1c3cc5b693dc64b985f2901b253c5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8b2ae4e2070b3e9bf9625fc61290700a2e24a808` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8e3283cdaafd88012e3ef53d788cb5b9c396ce71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8ff570af13f9d315819a6232fcff1937051e242b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x90c72fa3b55e4bd00afc0a6c4419e2df99f6d95a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x929cbcb8150ad59db63c92a7daec07b30d38ba79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9498764f0c62257b83a04e2a757de30908ec793d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x954529f8f103bde464fc6d02a94cd40c5bd322d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa0be0f2c8240a227ad86b04758c4b32876b6fa81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa50929a67daf9ff3567e2bb3411204a134f72546` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa6875af7a45bef941e484b59c149e5c1772de643` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa76df00bb270f795de4452c5478696a73a7b16e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xaa44f1da35f6d98a956c1a1e5a015041201e6bc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xaaa2108df9c3aa4d358275340733476d139a1445` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xad4b718378a9b4144b1a549915d794d4d67523db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xae2b872d4ba3e68e7392067c39b30a573f5fd2ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb0eccbad4b4cc190261c29c6e8d85bcf04284a8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb65b529726621c7187dfb146b9d7ea8274e77503` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbb35188cd8ba0a85ed8c8406187ca6443203423d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbb6781da398ba58a968f5c75d572dbfc514ef40e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc1ce945e55506b384daddef48fa5a78554560ad3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc47591f5c023e44931c78d5a993834875b79fb11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xca470095cc2d6ae6382c72bd235a2a5d7e80e1c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcdf22a203343cad353ffbfbad1fa296a01d0c96d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd8ca160a42bc951fb7bd436c35f35d18e122e06c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xda4aaf85bb924b53dcc2dffa9e1a9c2ef97acfdf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xde909242238cec2176d23b06db03b1d0ed6ec32f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfa8be638a78fa426c4228df1002fd54fa48a6caf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfad175caf9b0ac0ebca3b1816ec799884eb04b9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x003e6f7f6071a4e33f9324c125deae2615998010` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x05b48bf072123bd7d20c965ae8bef2a23dc2afee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1084fcddee1526a2331095207bf7e35e716c01bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x13c8e890d6156f7bee0ed69807b87ab1f5541973` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1a98f387006f45fb53310040c1436e009f669531` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1ff5ecfba6c19a0c08eb788240afc1424485f9e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x242cb48c78591058bb278008d96f6c1dd0f7a8c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x25338b968c0bb3e94e092ebe6d012f6669e7b044` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x25e4889346f04b4e005ffab35bf2c3cb395e74d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x276c0e52508d94ff2d4106b1559c8c4bc3a75dec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2bf3220a609c34712e661e40dad90b77b78439c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x33931f3898efb9a42b0d7cffa9bb50a566a6b421` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3b156165f2938e87aa4d2ec416f543965ddc2b4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x41e1f213bf4ada84a0d4e6a9b5e0f0a211f5a723` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x427fb337a2a7d5d0e803e2f2ec8642e9d7025d13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4961bc8e4b0b2be8c6dbe99d2d4647c27f62e4cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4cb25655e7eed71f57d308c775c08a0e137e857d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4d5232585544bc3cc7583dd23dfa4b75bb11accb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4dd29d4972afe01a139c3a385e4fc1b9fc10c1ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4e9c9796fcfddf2eb66b7051b6a17f3eb6bcb57d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5c180c14c90b8f0767579738f3f6adc8c5eb5823` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x60cc16fa5a741a12fc209ec86570c423b11eab38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6523bf0cc66cb110709860df30e8ecee109b161f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x65f3a1c335674b54c657258dac1e822013452e57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x66dd1f6b01eb3d3fa8eb7d5a601f864107ffaf2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x68a14c9f79c79a99b78ad0edd96dc6219699a0bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6aa7148411001217f31d5ae96053e17a7f8ece6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x775e9698932db6d3b14c43be8be6ddfba68ffe83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x778ee17dd9359b6e362b1a09513b699f7e00803f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x782a88da7a0e4cff79ab3ae3524981d8fb7c3567` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7afb9949e337607c6b69f1f052b8985a390b5909` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x85c5b725841be392384aa7df599c00ae7516e4d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x86d06dd6ce487dc0b75dcab712b49c1dd440d1fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x87d89da46ff5b5a566ad60511014383fc5345529` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8b910b6bb8d9cbceb68ffb5e5e1812c516182b70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x909700692bd4b20bedadeb069f6dc6ab870eb963` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x90e464bf902118c97866849e80dc9d0990a5565f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x924204d7eae3a096c9bc0f6ae3d4140583b5e778` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x929cbcb8150ad59db63c92a7daec07b30d38ba79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x94d9f9db3e82392139a3974abcbc67a11cc46f6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x960d1c086cefe82d58e4b431cbe526d58a9df267` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9bb1a564a6d01aeb9268f7162b537bdf958126d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9c1ad910257bb3cce5281b24970f1e7987769f83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9c346f948c3d080007baa2715659ebcb56d945bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9cd5e64aad4e36e753c26d1a16e1cadd31a8f0bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9d73db2d14c2dfedae69c541fa45962f4ae3d165` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa6875af7a45bef941e484b59c149e5c1772de643` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa94560402f53c0640c71d164f6419f7341145715` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xae4fd85e4980a19a86fcbd8260701d1d603c6c6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb0cf9904384a07d8e1f6e8967dd1435e00a41d1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb39bfb8c8b4085d2caf7ce85825d1fd03746d9db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb5583177cc107eb63f16c6b46f9bbffd2398093a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb986312024c8e0f895b00eba32c81b5759c91fff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xba279efbfb82c40d4fb4f215406b43c16fe20ee8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xba4ab884103fc2299181df668f14aae9d8422d5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbac506e0eae9f05ce9ceeea7b0c9660c279b8b05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc02959617fdc2125ba73cd178d5062ed81b81b85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc1458be2c222133a2c1bc45d554c71940ca3c622` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc6e6861642823022f2ef9bb11d6dbc1a15182fd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcaa5689bfe6e1b9c79d7c44d9e4410f6bfb6c4b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcaf2632bdb12aa20b17f3e80ceaf9781b4ad4f38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcbd4570091d524ae698716f14126a0043f111caa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd250258d5f617654528870e6577c9f8da2ac2665` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd60828e2ec532d7936a37623f4d0774701e3da7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xda4aaf85bb924b53dcc2dffa9e1a9c2ef97acfdf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xddc9aabe0fd4270e3e537ea3c2c36b2ad5574fc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdf020051fc6f3378459bc9269372aa46feea77ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdf69dda7ba69ddeeb4182b821eb2356744180405` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdff2e32fc4cddfd5d89a8e360cc4060e47dcda0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe325cf4c9406f1fbd4b7e190c25186cfb1cacf68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe8d2edd2c45109be3e2e2c1c08671e4382982061` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe9ad9a916b3555c310e206a4fa116e174da97dd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xeb5648ae0d2dbe957487aa7a25481aef4fe41535` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xede28255dcb4d0fe8796cfee9133ea113d6e1f78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xefad4ba4048cb847cf3161a9aa194693764f1d2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf31de62b66e7d9f6f1d9b7bdfb3038f98b1840e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf322878c06797c8c0162bbac4ba7317942ee8d01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfeaee6335be75fc170200ca9fe814fae99b0197d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xff242aad9ca62ec79c5bec87b23c8a453aa9fc4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xff744f16d99661414deee967b3bee7724615f95f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x09f2f93a38802aea233da3e5835bf9975c5125ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x0d64b9fef3e1f599b88d29edb54d2f9152cbe496` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x145c46b7a1cee0b44b816a15c2d6eb5c2a9d5adc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x14920eb11b71873d01c93b589b40585dacfca096` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x1649e4e5e5c8b9714f847d1ac14d20c74ea36fd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x1950107861d43ba54408e8da4d5681db5910232f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x22013dbd826e6e4d76499ab9f2a501853c477cf3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x23906daac36f2e87fe7407838578b98f84675745` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x270b5381ae31ddbe793921e29312f7b66d7d8beb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x276c0e52508d94ff2d4106b1559c8c4bc3a75dec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x2a15cc106bca1ee17a411d77a9c53ec3509d47c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x2e1c769a9ba8248c7c8128c2beba11331ebf98aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x33931f3898efb9a42b0d7cffa9bb50a566a6b421` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x37ba9934aaba7a49cc29d0952c6a91d7c7043dbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x3b798263e9eae3254d86ac30b198f7aa2f82fd82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x3cb5fa87703c7165cc5f2087b3e80b58fb6d8ce8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x41e1f213bf4ada84a0d4e6a9b5e0f0a211f5a723` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x48bcd27e208dc973c3f56812f762077a90e88cea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x493351ba2fa1c7629496ea312b947ba1a18e162b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x4dd29d4972afe01a139c3a385e4fc1b9fc10c1ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x4f97afab57dc87401558059790445c65c3dc58b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x502d706e01de46c93cd4052c1402cd5151a589a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x5bbc23e84c248b0563fcfd25b100891625de90cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x5ed03298b6aa24ad79a446479d85dbc3d0f07a0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x609f20ee24e10010a62970e1dab7e2b84ed74cab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x63bb70ab8fa4677ca46e83de0ce4074ce7bd63fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x6ac37b549660f2c9f1a77597ee1aca5f742c7093` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x78f0ac9738f7b165561b83c6e5d34c4e3e473841` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x7afb9949e337607c6b69f1f052b8985a390b5909` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x7de424999cd699bf6f7e4f4b1443de5bfcdfde77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x7de4efa140e52b7207fa689d41afee461b83e748` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x7e416e0865e44c86ad179922cf92dd45334a1648` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x7fa333b184868d88ac78a82ec06d5e87d4b0322e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x830fbad7cd1c3cc5b693dc64b985f2901b253c5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x85ce30537c14efb66b673f284bea7c28351244f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x883192efdd5a3417b2c0a14b25f7536b2018f853` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x8b2ae4e2070b3e9bf9625fc61290700a2e24a808` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x8cf5139144b3b472d5a914e2ace5ae5c06db11ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x8df05e11e72378c1710e296450bf6b72e2f12019` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x8e3283cdaafd88012e3ef53d788cb5b9c396ce71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x90c72fa3b55e4bd00afc0a6c4419e2df99f6d95a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x929cbcb8150ad59db63c92a7daec07b30d38ba79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x9498764f0c62257b83a04e2a757de30908ec793d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xa0e0702b701ccac329732bb409681612f43e41ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xa50929a67daf9ff3567e2bb3411204a134f72546` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xa6875af7a45bef941e484b59c149e5c1772de643` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xa76df00bb270f795de4452c5478696a73a7b16e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xa9b877fea6607dbf9d9caaa7298c985b9af46892` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xaa44f1da35f6d98a956c1a1e5a015041201e6bc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xaaa2108df9c3aa4d358275340733476d139a1445` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xab4d29085e2087d5e70c1f5224d525a6455e3163` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xae2b872d4ba3e68e7392067c39b30a573f5fd2ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xb0eccbad4b4cc190261c29c6e8d85bcf04284a8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xb601b082153af237dfa257eed7ca7caf39aa1ba6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xb65b529726621c7187dfb146b9d7ea8274e77503` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xb7634db4f4710bb992118bc37d1f63e00e2704a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xbb6781da398ba58a968f5c75d572dbfc514ef40e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xc1ce945e55506b384daddef48fa5a78554560ad3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xc7de1a55758bdba5cc6b6f7535006ee1349a6d37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xd427ebaf1d269b397c454b22791b63534f1ae5b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xda4aaf85bb924b53dcc2dffa9e1a9c2ef97acfdf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xdaa73082785df7b489e46f7f1782b3a213cc7a15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xde7bf8ce4db31c0773e26328b1c5245a30935785` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xde909242238cec2176d23b06db03b1d0ed6ec32f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xe3a31690392e8e18dc3d862651c079339e2c1ade` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xfad175caf9b0ac0ebca3b1816ec799884eb04b9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xffa110a6b661f6a434ded132168f6fa9f394b7cf` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 680
- Live contracts: 0
- Unknown liveness contracts: 680
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=680

Showing first 200 of 680 contracts. The complete deployer expansion list is in `brief.json`.

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| arbitrum | unverified unclassified | UnnamedContract<br>`0x003e6f7f6071a4e33f9324c125deae2615998010` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x05b48bf072123bd7d20c965ae8bef2a23dc2afee` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1084fcddee1526a2331095207bf7e35e716c01bd` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x13c8e890d6156f7bee0ed69807b87ab1f5541973` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1a98f387006f45fb53310040c1436e009f669531` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1ff5ecfba6c19a0c08eb788240afc1424485f9e4` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x242cb48c78591058bb278008d96f6c1dd0f7a8c6` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x25338b968c0bb3e94e092ebe6d012f6669e7b044` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x25e4889346f04b4e005ffab35bf2c3cb395e74d5` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x276c0e52508d94ff2d4106b1559c8c4bc3a75dec` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2bf3220a609c34712e661e40dad90b77b78439c1` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x33931f3898efb9a42b0d7cffa9bb50a566a6b421` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3b156165f2938e87aa4d2ec416f543965ddc2b4f` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x41e1f213bf4ada84a0d4e6a9b5e0f0a211f5a723` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x427fb337a2a7d5d0e803e2f2ec8642e9d7025d13` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4961bc8e4b0b2be8c6dbe99d2d4647c27f62e4cd` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4cb25655e7eed71f57d308c775c08a0e137e857d` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4d5232585544bc3cc7583dd23dfa4b75bb11accb` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4dd29d4972afe01a139c3a385e4fc1b9fc10c1ae` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4e9c9796fcfddf2eb66b7051b6a17f3eb6bcb57d` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5c180c14c90b8f0767579738f3f6adc8c5eb5823` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x60cc16fa5a741a12fc209ec86570c423b11eab38` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6523bf0cc66cb110709860df30e8ecee109b161f` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x65f3a1c335674b54c657258dac1e822013452e57` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x66dd1f6b01eb3d3fa8eb7d5a601f864107ffaf2c` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x68a14c9f79c79a99b78ad0edd96dc6219699a0bc` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6aa7148411001217f31d5ae96053e17a7f8ece6a` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x775e9698932db6d3b14c43be8be6ddfba68ffe83` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x778ee17dd9359b6e362b1a09513b699f7e00803f` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x782a88da7a0e4cff79ab3ae3524981d8fb7c3567` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7afb9949e337607c6b69f1f052b8985a390b5909` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x85c5b725841be392384aa7df599c00ae7516e4d3` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x86d06dd6ce487dc0b75dcab712b49c1dd440d1fb` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x87d89da46ff5b5a566ad60511014383fc5345529` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8b910b6bb8d9cbceb68ffb5e5e1812c516182b70` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x909700692bd4b20bedadeb069f6dc6ab870eb963` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x90e464bf902118c97866849e80dc9d0990a5565f` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x924204d7eae3a096c9bc0f6ae3d4140583b5e778` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x929cbcb8150ad59db63c92a7daec07b30d38ba79` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x94d9f9db3e82392139a3974abcbc67a11cc46f6d` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x960d1c086cefe82d58e4b431cbe526d58a9df267` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9bb1a564a6d01aeb9268f7162b537bdf958126d6` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9c1ad910257bb3cce5281b24970f1e7987769f83` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9c346f948c3d080007baa2715659ebcb56d945bf` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9cd5e64aad4e36e753c26d1a16e1cadd31a8f0bb` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9d73db2d14c2dfedae69c541fa45962f4ae3d165` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa6875af7a45bef941e484b59c149e5c1772de643` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa94560402f53c0640c71d164f6419f7341145715` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xae4fd85e4980a19a86fcbd8260701d1d603c6c6c` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb0cf9904384a07d8e1f6e8967dd1435e00a41d1b` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb39bfb8c8b4085d2caf7ce85825d1fd03746d9db` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb5583177cc107eb63f16c6b46f9bbffd2398093a` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb986312024c8e0f895b00eba32c81b5759c91fff` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xba279efbfb82c40d4fb4f215406b43c16fe20ee8` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xba4ab884103fc2299181df668f14aae9d8422d5f` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xbac506e0eae9f05ce9ceeea7b0c9660c279b8b05` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc02959617fdc2125ba73cd178d5062ed81b81b85` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc1458be2c222133a2c1bc45d554c71940ca3c622` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc6e6861642823022f2ef9bb11d6dbc1a15182fd8` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xcaa5689bfe6e1b9c79d7c44d9e4410f6bfb6c4b5` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xcaf2632bdb12aa20b17f3e80ceaf9781b4ad4f38` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xcbd4570091d524ae698716f14126a0043f111caa` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xd250258d5f617654528870e6577c9f8da2ac2665` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xd60828e2ec532d7936a37623f4d0774701e3da7a` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xda4aaf85bb924b53dcc2dffa9e1a9c2ef97acfdf` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xddc9aabe0fd4270e3e537ea3c2c36b2ad5574fc7` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xdf020051fc6f3378459bc9269372aa46feea77ca` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xdf69dda7ba69ddeeb4182b821eb2356744180405` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xdff2e32fc4cddfd5d89a8e360cc4060e47dcda0d` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe325cf4c9406f1fbd4b7e190c25186cfb1cacf68` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe8d2edd2c45109be3e2e2c1c08671e4382982061` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe9ad9a916b3555c310e206a4fa116e174da97dd8` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xeb5648ae0d2dbe957487aa7a25481aef4fe41535` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xede28255dcb4d0fe8796cfee9133ea113d6e1f78` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xefad4ba4048cb847cf3161a9aa194693764f1d2c` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xf31de62b66e7d9f6f1d9b7bdfb3038f98b1840e4` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xf322878c06797c8c0162bbac4ba7317942ee8d01` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xfeaee6335be75fc170200ca9fe814fae99b0197d` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xff242aad9ca62ec79c5bec87b23c8a453aa9fc4d` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xff744f16d99661414deee967b3bee7724615f95f` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| base | unverified unclassified | UnnamedContract<br>`0x095f9a68c102b9623c0327739df5f8e78ca72e40` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| base | unverified unclassified | UnnamedContract<br>`0x0d64b9fef3e1f599b88d29edb54d2f9152cbe496` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| base | unverified unclassified | UnnamedContract<br>`0x14920eb11b71873d01c93b589b40585dacfca096` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| base | unverified unclassified | UnnamedContract<br>`0x1649e4e5e5c8b9714f847d1ac14d20c74ea36fd6` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| base | unverified unclassified | UnnamedContract<br>`0x21470d84443dcf1bc927937c141a4c5728cb6630` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| base | unverified unclassified | UnnamedContract<br>`0x28e47a7d7e710d796dbafd8081c052444deecf10` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| base | unverified unclassified | UnnamedContract<br>`0x29a21589efe51c6501d80e153d2dbe31e32d4940` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| base | unverified unclassified | UnnamedContract<br>`0x2afef28a8ab57d2f5a5663ef69351e9d3abf1779` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| base | unverified unclassified | UnnamedContract<br>`0x2c5d576681d625ea9b6e9ee5d6a9159147328292` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| base | unverified unclassified | UnnamedContract<br>`0x2e1c769a9ba8248c7c8128c2beba11331ebf98aa` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| base | unverified unclassified | UnnamedContract<br>`0x33931f3898efb9a42b0d7cffa9bb50a566a6b421` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| base | unverified unclassified | UnnamedContract<br>`0x34f7b52b0d33959c8351ef95f3523c89b6123c0b` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| base | unverified unclassified | UnnamedContract<br>`0x35db2114bf3142c6e92418a7f19c2c7f5a9891d9` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| base | unverified unclassified | UnnamedContract<br>`0x3b323c3700c5eee539e7256fd81eb124d7ed52db` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| base | unverified unclassified | UnnamedContract<br>`0x3b798263e9eae3254d86ac30b198f7aa2f82fd82` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| base | unverified unclassified | UnnamedContract<br>`0x3cb5fa87703c7165cc5f2087b3e80b58fb6d8ce8` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| base | unverified unclassified | UnnamedContract<br>`0x3ebb9e9c855bd03b275167dd2418193e3b69c22f` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| base | unverified unclassified | UnnamedContract<br>`0x41e1f213bf4ada84a0d4e6a9b5e0f0a211f5a723` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| base | unverified unclassified | UnnamedContract<br>`0x4bc4f8f9b212b5a3f9f7eeb35ae1a91902670f7f` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| base | unverified unclassified | UnnamedContract<br>`0x502d706e01de46c93cd4052c1402cd5151a589a3` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| base | unverified unclassified | UnnamedContract<br>`0x51e68b802a0f07a8d5e05b3df12716dd5b1bcfff` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| base | unverified unclassified | UnnamedContract<br>`0x5922b66e5deb4afb2776a5a0717e4c7a34cad571` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| base | unverified unclassified | UnnamedContract<br>`0x6a0bdb5eb9f7ac83d1f41bb4aba187674cb80a76` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| base | unverified unclassified | UnnamedContract<br>`0x6ac37b549660f2c9f1a77597ee1aca5f742c7093` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| base | unverified unclassified | UnnamedContract<br>`0x6cf2b79d1a2173339399a3ecb44086327c9ce308` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| base | unverified unclassified | UnnamedContract<br>`0x6fa11e0e1e0ee768deb0e728a08a4407d15ee466` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| base | unverified unclassified | UnnamedContract<br>`0x74dfb95ae623123ecf82ba841985fb460bb9d45d` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| base | unverified unclassified | UnnamedContract<br>`0x7afb9949e337607c6b69f1f052b8985a390b5909` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| base | unverified unclassified | UnnamedContract<br>`0x7de4efa140e52b7207fa689d41afee461b83e748` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| base | unverified unclassified | UnnamedContract<br>`0x830fbad7cd1c3cc5b693dc64b985f2901b253c5b` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| base | unverified unclassified | UnnamedContract<br>`0x8b2ae4e2070b3e9bf9625fc61290700a2e24a808` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| base | unverified unclassified | UnnamedContract<br>`0x8e3283cdaafd88012e3ef53d788cb5b9c396ce71` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| base | unverified unclassified | UnnamedContract<br>`0x8ff570af13f9d315819a6232fcff1937051e242b` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| base | unverified unclassified | UnnamedContract<br>`0x90c72fa3b55e4bd00afc0a6c4419e2df99f6d95a` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| base | unverified unclassified | UnnamedContract<br>`0x929cbcb8150ad59db63c92a7daec07b30d38ba79` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| base | unverified unclassified | UnnamedContract<br>`0x9498764f0c62257b83a04e2a757de30908ec793d` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| base | unverified unclassified | UnnamedContract<br>`0x954529f8f103bde464fc6d02a94cd40c5bd322d1` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| base | unverified unclassified | UnnamedContract<br>`0xa0be0f2c8240a227ad86b04758c4b32876b6fa81` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| base | unverified unclassified | UnnamedContract<br>`0xa50929a67daf9ff3567e2bb3411204a134f72546` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| base | unverified unclassified | UnnamedContract<br>`0xa6875af7a45bef941e484b59c149e5c1772de643` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| base | unverified unclassified | UnnamedContract<br>`0xa76df00bb270f795de4452c5478696a73a7b16e6` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| base | unverified unclassified | UnnamedContract<br>`0xaa44f1da35f6d98a956c1a1e5a015041201e6bc6` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| base | unverified unclassified | UnnamedContract<br>`0xaaa2108df9c3aa4d358275340733476d139a1445` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| base | unverified unclassified | UnnamedContract<br>`0xad4b718378a9b4144b1a549915d794d4d67523db` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| base | unverified unclassified | UnnamedContract<br>`0xae2b872d4ba3e68e7392067c39b30a573f5fd2ff` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| base | unverified unclassified | UnnamedContract<br>`0xb0eccbad4b4cc190261c29c6e8d85bcf04284a8b` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| base | unverified unclassified | UnnamedContract<br>`0xb65b529726621c7187dfb146b9d7ea8274e77503` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| base | unverified unclassified | UnnamedContract<br>`0xbb35188cd8ba0a85ed8c8406187ca6443203423d` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| base | unverified unclassified | UnnamedContract<br>`0xbb6781da398ba58a968f5c75d572dbfc514ef40e` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| base | unverified unclassified | UnnamedContract<br>`0xc1ce945e55506b384daddef48fa5a78554560ad3` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| base | unverified unclassified | UnnamedContract<br>`0xc47591f5c023e44931c78d5a993834875b79fb11` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| base | unverified unclassified | UnnamedContract<br>`0xca470095cc2d6ae6382c72bd235a2a5d7e80e1c1` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| base | unverified unclassified | UnnamedContract<br>`0xcdf22a203343cad353ffbfbad1fa296a01d0c96d` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| base | unverified unclassified | UnnamedContract<br>`0xd8ca160a42bc951fb7bd436c35f35d18e122e06c` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| base | unverified unclassified | UnnamedContract<br>`0xda4aaf85bb924b53dcc2dffa9e1a9c2ef97acfdf` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| base | unverified unclassified | UnnamedContract<br>`0xde909242238cec2176d23b06db03b1d0ed6ec32f` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| base | unverified unclassified | UnnamedContract<br>`0xfa8be638a78fa426c4228df1002fd54fa48a6caf` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| base | unverified unclassified | UnnamedContract<br>`0xfad175caf9b0ac0ebca3b1816ec799884eb04b9c` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| berachain | unverified unclassified | UnnamedContract<br>`0x09f2f93a38802aea233da3e5835bf9975c5125ba` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| berachain | unverified unclassified | UnnamedContract<br>`0x0d64b9fef3e1f599b88d29edb54d2f9152cbe496` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| berachain | unverified unclassified | UnnamedContract<br>`0x145c46b7a1cee0b44b816a15c2d6eb5c2a9d5adc` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| berachain | unverified unclassified | UnnamedContract<br>`0x14920eb11b71873d01c93b589b40585dacfca096` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| berachain | unverified unclassified | UnnamedContract<br>`0x1649e4e5e5c8b9714f847d1ac14d20c74ea36fd6` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| berachain | unverified unclassified | UnnamedContract<br>`0x1950107861d43ba54408e8da4d5681db5910232f` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| berachain | unverified unclassified | UnnamedContract<br>`0x22013dbd826e6e4d76499ab9f2a501853c477cf3` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| berachain | unverified unclassified | UnnamedContract<br>`0x23906daac36f2e87fe7407838578b98f84675745` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| berachain | unverified unclassified | UnnamedContract<br>`0x270b5381ae31ddbe793921e29312f7b66d7d8beb` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| berachain | unverified unclassified | UnnamedContract<br>`0x276c0e52508d94ff2d4106b1559c8c4bc3a75dec` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| berachain | unverified unclassified | UnnamedContract<br>`0x2a15cc106bca1ee17a411d77a9c53ec3509d47c2` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| berachain | unverified unclassified | UnnamedContract<br>`0x2e1c769a9ba8248c7c8128c2beba11331ebf98aa` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| berachain | unverified unclassified | UnnamedContract<br>`0x33931f3898efb9a42b0d7cffa9bb50a566a6b421` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| berachain | unverified unclassified | UnnamedContract<br>`0x37ba9934aaba7a49cc29d0952c6a91d7c7043dbc` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| berachain | unverified unclassified | UnnamedContract<br>`0x3b798263e9eae3254d86ac30b198f7aa2f82fd82` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| berachain | unverified unclassified | UnnamedContract<br>`0x3cb5fa87703c7165cc5f2087b3e80b58fb6d8ce8` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| berachain | unverified unclassified | UnnamedContract<br>`0x41e1f213bf4ada84a0d4e6a9b5e0f0a211f5a723` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| berachain | unverified unclassified | UnnamedContract<br>`0x48bcd27e208dc973c3f56812f762077a90e88cea` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| berachain | unverified unclassified | UnnamedContract<br>`0x493351ba2fa1c7629496ea312b947ba1a18e162b` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| berachain | unverified unclassified | UnnamedContract<br>`0x4dd29d4972afe01a139c3a385e4fc1b9fc10c1ae` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| berachain | unverified unclassified | UnnamedContract<br>`0x4f97afab57dc87401558059790445c65c3dc58b8` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| berachain | unverified unclassified | UnnamedContract<br>`0x502d706e01de46c93cd4052c1402cd5151a589a3` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| berachain | unverified unclassified | UnnamedContract<br>`0x5bbc23e84c248b0563fcfd25b100891625de90cd` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| berachain | unverified unclassified | UnnamedContract<br>`0x5ed03298b6aa24ad79a446479d85dbc3d0f07a0e` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| berachain | unverified unclassified | UnnamedContract<br>`0x609f20ee24e10010a62970e1dab7e2b84ed74cab` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| berachain | unverified unclassified | UnnamedContract<br>`0x63bb70ab8fa4677ca46e83de0ce4074ce7bd63fe` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| berachain | unverified unclassified | UnnamedContract<br>`0x6734feb92b4b40447494b0a85b0b849fce136672` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| berachain | unverified unclassified | UnnamedContract<br>`0x6ac37b549660f2c9f1a77597ee1aca5f742c7093` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| berachain | unverified unclassified | UnnamedContract<br>`0x78f0ac9738f7b165561b83c6e5d34c4e3e473841` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| berachain | unverified unclassified | UnnamedContract<br>`0x7afb9949e337607c6b69f1f052b8985a390b5909` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| berachain | unverified unclassified | UnnamedContract<br>`0x7de424999cd699bf6f7e4f4b1443de5bfcdfde77` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| berachain | unverified unclassified | UnnamedContract<br>`0x7de4efa140e52b7207fa689d41afee461b83e748` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| berachain | unverified unclassified | UnnamedContract<br>`0x7e416e0865e44c86ad179922cf92dd45334a1648` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| berachain | unverified unclassified | UnnamedContract<br>`0x7fa333b184868d88ac78a82ec06d5e87d4b0322e` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| berachain | unverified unclassified | UnnamedContract<br>`0x830fbad7cd1c3cc5b693dc64b985f2901b253c5b` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| berachain | unverified unclassified | UnnamedContract<br>`0x85ce30537c14efb66b673f284bea7c28351244f6` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| berachain | unverified unclassified | UnnamedContract<br>`0x883192efdd5a3417b2c0a14b25f7536b2018f853` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| berachain | unverified unclassified | UnnamedContract<br>`0x8b2ae4e2070b3e9bf9625fc61290700a2e24a808` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| berachain | unverified unclassified | UnnamedContract<br>`0x8cf5139144b3b472d5a914e2ace5ae5c06db11ee` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| berachain | unverified unclassified | UnnamedContract<br>`0x8df05e11e72378c1710e296450bf6b72e2f12019` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| berachain | unverified unclassified | UnnamedContract<br>`0x8e3283cdaafd88012e3ef53d788cb5b9c396ce71` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| berachain | unverified unclassified | UnnamedContract<br>`0x90c72fa3b55e4bd00afc0a6c4419e2df99f6d95a` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| berachain | unverified unclassified | UnnamedContract<br>`0x929cbcb8150ad59db63c92a7daec07b30d38ba79` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| berachain | unverified unclassified | UnnamedContract<br>`0x9498764f0c62257b83a04e2a757de30908ec793d` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| berachain | unverified unclassified | UnnamedContract<br>`0xa0e0702b701ccac329732bb409681612f43e41ad` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| berachain | unverified unclassified | UnnamedContract<br>`0xa50929a67daf9ff3567e2bb3411204a134f72546` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| berachain | unverified unclassified | UnnamedContract<br>`0xa6875af7a45bef941e484b59c149e5c1772de643` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| berachain | unverified unclassified | UnnamedContract<br>`0xa76df00bb270f795de4452c5478696a73a7b16e6` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| berachain | unverified unclassified | UnnamedContract<br>`0xa9b877fea6607dbf9d9caaa7298c985b9af46892` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| berachain | unverified unclassified | UnnamedContract<br>`0xaa44f1da35f6d98a956c1a1e5a015041201e6bc6` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| berachain | unverified unclassified | UnnamedContract<br>`0xaaa2108df9c3aa4d358275340733476d139a1445` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| berachain | unverified unclassified | UnnamedContract<br>`0xab4d29085e2087d5e70c1f5224d525a6455e3163` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| berachain | unverified unclassified | UnnamedContract<br>`0xae2b872d4ba3e68e7392067c39b30a573f5fd2ff` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| berachain | unverified unclassified | UnnamedContract<br>`0xb0eccbad4b4cc190261c29c6e8d85bcf04284a8b` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| berachain | unverified unclassified | UnnamedContract<br>`0xb601b082153af237dfa257eed7ca7caf39aa1ba6` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| berachain | unverified unclassified | UnnamedContract<br>`0xb65b529726621c7187dfb146b9d7ea8274e77503` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| berachain | unverified unclassified | UnnamedContract<br>`0xb7634db4f4710bb992118bc37d1f63e00e2704a4` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| berachain | unverified unclassified | UnnamedContract<br>`0xbb6781da398ba58a968f5c75d572dbfc514ef40e` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| berachain | unverified unclassified | UnnamedContract<br>`0xc1ce945e55506b384daddef48fa5a78554560ad3` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| berachain | unverified unclassified | UnnamedContract<br>`0xc7de1a55758bdba5cc6b6f7535006ee1349a6d37` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| berachain | unverified unclassified | UnnamedContract<br>`0xd427ebaf1d269b397c454b22791b63534f1ae5b2` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |
| berachain | unverified unclassified | UnnamedContract<br>`0xda4aaf85bb924b53dcc2dffa9e1a9c2ef97acfdf` | non_address_book | unknown | unknown | unverified | n/a | `0x56e3665038c5f0b56cc7d81ac66c86521274b251` |

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
| needs_review | 724 |

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
