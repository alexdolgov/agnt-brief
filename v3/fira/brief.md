# Agentic Audit Brief: Fira

## Export Authority

- Production state: **published scope**
- Raw selected rows: 18 across 4 audit(s)
- Eligible audit results: 5 (4 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Fira (`fira`)
- Website: [https://www.fira.money/](https://www.fira.money/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 114 unique implementations (114 raw deployments)
- Coverage basis: 8/28 confirmed own live verified implementations (28.6%); conservative 28.6% with 0 needs-review implementation(s)
- DeFi Llama TVL: $855,618,421.01
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Fira. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 35 contract row(s) across arbitrum, ethereum. Structural roles: 29 core, 5 supporting, 1 infra. 9 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 35
- Structural roles: core (29), supporting (5), infra (1)
- Contract kinds: contract (35)
- Detected standards: erc20 (7), erc20permit (3), ownable (3), chainlinkaggregator (2), erc1967proxy (2), erc4626 (1), multicall (1), ownable2step (1), pausable (1)
- Frameworks: openzeppelin (21), openzeppelin-upgradeable (7), solmate (4), chainlink (2)
- Upgradeable-pattern rows: 9

## Fork Analysis

0 of 48 contracts are derived from known codebases. 48 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x33b6bf0390a84fe0f27979f9b52d78bfe1c6156f`, chain 1)
- UnnamedContract (`0x57ffbb88f0c69283531a751be6ff0741348371ba`, chain 1)
- UnnamedContract (`0x698253a24cc4926090f841b38d31d6342a00a82c`, chain 1)
- UnnamedContract (`0x7083cfc87e7f6ebb858cc39b72d9c7605d368729`, chain 1)
- UnnamedContract (`0x88dd7069cb9d8b7cc6eebd23b82ed1e9a75d9734`, chain 1)
- UnnamedContract (`0x90d0d6fdf9fe93777085e8b4baf3aab4285bac6b`, chain 1)
- UnnamedContract (`0x92a6a01b07984de46c24e8eba248449beb8b1dcb`, chain 1)
- UnnamedContract (`0x93635d34fad5a9fa7065a645691100b2e23c93cd`, chain 1)
- UnnamedContract (`0x9db38d74a0d29380899ad354121dfb521adb0548`, chain 1)
- UnnamedContract (`0xaebf0bb9f57e89260d57f31af34eb58657d96ce0`, chain 1)
- UnnamedContract (`0xb9baa3d58e1431776218f39919fd21aed3e69abb`, chain 1)
- UnnamedContract (`0xc02b0d1ca7b986e63cf1599f9c32e8a96c2d4cff`, chain 1)
- UnnamedContract (`0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf`, chain 1)
- UnnamedContract (`0xde00b5edb255078dd42ee94fd97f473d1c9c055d`, chain 1)
- UnnamedContract (`0xeb30b33a1ac175e0305853636d0ef3898eb530f3`, chain 1)
- UnnamedContract (`0xf4030086522a5beea4988f8ca5b36dbc97bee88c`, chain 1)
- UnnamedContract (`0xff615e63aaf2d1b1ee4adfd34a5840747185d8a0`, chain 1)
- ActionAddRemoveLiqV3 (`0x286bbc5519cd421011e7e1c092e1d6a72edb4d30`, chain 1)
- ActionBorrow (`0x66f5853cf6c36b97e754f074397d00b78253ef03`, chain 1)
- ActionCallbackV3 (`0x2dead5b19935d7299d7077c52f2e2860370278a5`, chain 1)
- ActionMiscV3 (`0x967234d7a4416380107da653e5d3afc9c7bf8874`, chain 1)
- ActionSimple (`0x4474886d003abcb53c307324894c074ce5176f75`, chain 1)
- ActionStorageV4 (`0x0386685ea7d37c61ddb8f2e2e8c45f6a81d4a3c8`, chain 1)
- ActionSwapBTV3 (`0xab2383692ed8e0836e25b71988c925dfd94ed2fe`, chain 1)
- ActionSwapCTV3 (`0xdb7a722ae7baf83d3d8b9e812952916326d6656b`, chain 1)
- AdaptiveCurveIrm (`0x73c288826347af3718e6f09c2a24aafda77684cd`, chain 1)
- BondToken (`0x33fd40ed7744c961b61a086a87f83787bd9606ee`, chain 1)
- ChainlinkOracle (`0x48f7e36eb6b826b2df4b2e630b62cd25e89e40e2`, chain 1)
- ChainlinkOracleV2Factory (`0x7783ff7be856c7a82bc5497fb3cc8f7e8802d8dc`, chain 1)
- CouponToken (`0x17ea07eb87bf7b091070999a0d313556d4ac580b`, chain 1)
- ERC1967Proxy (`0x2037a5eb67aa9b2fbf50042b724d8c4db80f23b4`, chain 1)
- FiatTokenProxy (`0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48`, chain 1)
- FiraLendingMarket (`0x280ddd897f39c33fef1cbf863b386cb9a8e53a0e`, chain 1)
- FiraMarket (`0x400922e37d608620672dc1f1b7a25ecbaabb57f8`, chain 1)
- FiraMarketFactory (`0xbf1efc2199ae9ee1b6f5060a45d4440157e49744`, chain 1)
- FiraSolvencyOracle (`0x5ccdbef28bc15d306ddb949f6b43bb0e3002cea6`, chain 1)
- LendingMarket (`0xc8db629192a96d6840e88a8451f17655880a2e4d`, chain 1)
- LiquidityInjector (`0x2104f638a839ca7260180d9ee7f4865c92df4ce5`, chain 1)
- MorphoChainlinkOracleV2 (`0x4dfcef82eaee9ea817beb1279336f7d0ebf2b685`, chain 1)
- PendleChainlinkOracle (`0xefdb275fc9c7946f36e632bef61379c5f5ab4c86`, chain 1)
- PendlePrincipalToken (`0x3de0ff76e8b528c092d47b9dac775931cef80f49`, chain 1)
- RehypothecationModule (`0xad332515d9c82438bba0e9faa9486b52a33a7ac8`, chain 1)
- Safe (`0x97fd565b913b439ff16774da152b1f71f05a82f1`, chain 1)
- SisuVault (`0x50791a5ca041b9d6dd03e64e3fa0e34a376759ac`, chain 1)
- SisuVaultFactory (`0xe77e0f97a864558e5513209323e4169fceac6981`, chain 1)
- USDCFW (`0x62f5366c9e21a95326c461a098a408e034e017b3`, chain 1)
- WstETH (`0x7f39c581f595b53c5cb19bd0b3f8da6c935e2ca0`, chain 1)
- YieldContractFactory (`0xcdb83abb9121c04589567a4106c3cfaf65db68be`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 35; live-surface rows included: 35 (31 live, 4 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 48/61 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 8/28 (28.6%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 45 own, 11 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 58 discovered implementations shown in the inventory but excluded from coverage (11 third-party/infra; 2 standard proxy/library)
- Proxy deployments represented within implementation groups: 7
- Confirmed-live implementations: 48 of 114 unique; 66 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 8/93
- Verified + Unaudited implementations: 85
- Verified by bytecode match: 0
- Unverified implementations: 21
- Unique implementations: 114
- Raw deployments: 114
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-02 (fresh)
- Audit staleness (calendar age): 4 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 8 match-unverified
- Tier 1 coverage: 17.9% (Sherlock, Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Sherlock | Tier 1 | 5 | 5.4% | 2025-11 |
| yAudit | Tier 2 | 5 | 5.4% | 2025-11 |
| Hexens | Tier 2 | 4 | 4.3% | 2026-02 |
| Spearbit | Tier 1 | 4 | 4.3% | 2025-11 |

## Contract Surface

### ✅ Verified + Audited (8)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ActionBorrow | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239935 | `0x66f5853cf6c36b97e754f074397d00b78253ef03` | ✅ Audited |
| AdaptiveCurveIrm | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239938 | `0x73c288826347af3718e6f09c2a24aafda77684cd` | ✅ Audited |
| ChainlinkOracleV2Factory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239939 | `0x7783ff7be856c7a82bc5497fb3cc8f7e8802d8dc` | ✅ Audited |
| CouponToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239916 | `0x17ea07eb87bf7b091070999a0d313556d4ac580b` | ✅ Audited |
| LendingMarket | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239957 | `0xc8db629192a96d6840e88a8451f17655880a2e4d` | ✅ Audited |
| SisuVault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239931 | `0x50791a5ca041b9d6dd03e64e3fa0e34a376759ac` | ✅ Audited |
| SisuVaultFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239963 | `0xe77e0f97a864558e5513209323e4169fceac6981` | ✅ Audited |
| USDCFW | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239934 | `0x62f5366c9e21a95326c461a098a408e034e017b3` | ✅ Audited |

### ⚠️ Verified + Unaudited (85)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveToChainlinkAdapter | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-239924 | `0x3d7346578be9b82e0227d027bd86f6de59ba3c91` | ⚠️ Unaudited |
| AccessControlledAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00c7a37b03690fb9f41b5c5af8131735c7275446` | ⚠️ Unaudited |
| AccessControlledOffchainAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00260db07a22a6a5182213d8de1aba0705a6cd78` | ⚠️ Unaudited |
| AccessManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe167330e2eac88666de253e9607c6d9ae0ca2824` | ⚠️ Unaudited |
| ActionAddRemoveLiqV3 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239919 | `0x286bbc5519cd421011e7e1c092e1d6a72edb4d30` | ⚠️ Unaudited |
| ActionCallbackV3 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239920 | `0x2dead5b19935d7299d7077c52f2e2860370278a5` | ⚠️ Unaudited |
| ActionMiscV3 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239949 | `0x967234d7a4416380107da653e5d3afc9c7bf8874` | ⚠️ Unaudited |
| ActionSimple | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239927 | `0x4474886d003abcb53c307324894c074ce5176f75` | ⚠️ Unaudited |
| ActionStorageV4 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239915 | `0x0386685ea7d37c61ddb8f2e2e8c45f6a81d4a3c8` | ⚠️ Unaudited |
| ActionSwapBTV3 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239951 | `0xab2383692ed8e0836e25b71988c925dfd94ed2fe` | ⚠️ Unaudited |
| ActionSwapCTV3 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239961 | `0xdb7a722ae7baf83d3d8b9e812952916326d6656b` | ⚠️ Unaudited |
| AddressList | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c271ddf484ac0386d216eb7eb9ff02d4dc0f6aa` | ⚠️ Unaudited |
| Aggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b8b84d5f89378eb7f902031b6006dd6c0eeae4d` | ⚠️ Unaudited |
| AggregatorFacade | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x010b33ce6fe3c65e8c873d91be0bcb3de36c0a67` | ⚠️ Unaudited |
| ApxUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d42504c026f8f4f6809308e736646e4437f1fc0` | ⚠️ Unaudited |
| ApxUSDRateOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26ea4a9099b4da41b2d0e7e9874a29104d8bb17f` | ⚠️ Unaudited |
| ApyUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x208507be7b01becfa4d93ee8a7d1f202ec66cacf` | ⚠️ Unaudited |
| ApyUSDDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1fad8a95d04b001cef58b4301b75052b6b523637` | ⚠️ Unaudited |
| ApyUSDRateView | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcaba36ede2c08e16f3602e8688a8be94c1b4e484` | ⚠️ Unaudited |
| ApyxCollateralRatioOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e1e661a2e3594cf240116c71b6098bf44dec49c` | ⚠️ Unaudited |
| ArbitrumValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31982c9e5edd99bb923a948252167ea4bbc38ac1` | ⚠️ Unaudited |
| BCLpOracle | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-239968 | `0xfeaaec9124fb007d7c44ed704a08d24b264de921` | ⚠️ Unaudited |
| BondToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239923 | `0x33fd40ed7744c961b61a086a87f83787bd9606ee` | ⚠️ Unaudited |
| ChainlinkOracle | unknown | project_anchor | third_party_dependency | 0 | ethereum | unit-239928 | `0x48f7e36eb6b826b2df4b2e630b62cd25e89e40e2` | ⚠️ Unaudited |
| ChainlinkOracleV2 | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-239921 | `0x2ed527087b740530562754efcd608290eccdbe2e` | ⚠️ Unaudited |
| ClassicalOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95cf8c1cb7d256082eccf71371e50a5dbccc5220` | ⚠️ Unaudited |
| CommitToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17122d869d981d184118b301313bcd157c79871e` | ⚠️ Unaudited |
| ConfirmedTransactionModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e1b5a40edc922bce489668b11749b8eabd67f6b` | ⚠️ Unaudited |
| CPoR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x575a16cd2305ad7171f5c1036c3506070df28c51` | ⚠️ Unaudited |
| DaoCollateral | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26227b1f96c773c0ed4c6ea99fc8b0d69efd8d0b` | ⚠️ Unaudited |
| DeploymentHelpers | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x758888dd8cc9c654519413e3da099c3ff618ce84` | ⚠️ Unaudited |
| DistributionModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd56e9949d77001fa33ceab758bb93e1ab6469e73` | ⚠️ Unaudited |
| EACAggregatorProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00a773bd2ce922f866bb43ab876009fb959d7c29` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-239975 | `0x2037a5eb67aa9b2fbf50042b724d8c4db80f23b4` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x4756171ef30754db66885720b84c2caa70d7f53e` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x4b7445cc0186a780671ca513d8b66799139e50d3` | ⚠️ Unaudited |
| FeedRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47fb2585d2c56fe188d0e6ec628a38b74fceeedf` | ⚠️ Unaudited |
| FiatToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8cbde23b1416cac07a52591bba744c744d77a91a` | ⚠️ Unaudited |
| FiatTokenProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-239974 | `0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48` | ⚠️ Unaudited |
| FiatTokenUtil | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6315aa908c50376d1028412c028aa0629f0355a6` | ⚠️ Unaudited |
| FiatTokenV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0882477e7895bdc5cea7cb1552ed914ab157fe56` | ⚠️ Unaudited |
| FiatTokenV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7277a6e95992041568d9391d09d0122023778a2` | ⚠️ Unaudited |
| FiatTokenV2_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2327a938febf5fec13bacfb16ae10ecbc4cbdcf` | ⚠️ Unaudited |
| FiraLendingMarket | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239918 | `0x280ddd897f39c33fef1cbf863b386cb9a8e53a0e` | ⚠️ Unaudited |
| FiraMarket | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239926 | `0x400922e37d608620672dc1f1b7a25ecbaabb57f8` | ⚠️ Unaudited |
| FiraMarketFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239955 | `0xbf1efc2199ae9ee1b6f5060a45d4440157e49744` | ⚠️ Unaudited |
| FiraSolvencyOracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239933 | `0x5ccdbef28bc15d306ddb949f6b43bb0e3002cea6` | ⚠️ Unaudited |
| FixedRateIrm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdfcf197b0b65066183b04b88d50acdc0c4b01385` | ⚠️ Unaudited |
| Flags | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24ec8467ab20e0b3c11a0a3fa39ccba9ec3bdabf` | ⚠️ Unaudited |
| KeeperRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f75953c2661d3a0138fcd80551ea10b80dd08c7` | ⚠️ Unaudited |
| LinearVestV0 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d62b4cc02b4b51ed19ddf41d7a7979cf394c99f` | ⚠️ Unaudited |
| LiquidityInjector | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239917 | `0x2104f638a839ca7260180d9ee7f4865c92df4ce5` | ⚠️ Unaudited |
| LockReleaseTokenPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e9ca42bc60be25f9a67f52173067cc0bb405bb5` | ⚠️ Unaudited |
| MasterMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x566c11b5c2201b69c9269fe924e4395873674335` | ⚠️ Unaudited |
| MetaOracleDeviationTimelock | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-239964 | `0xea268c588072e2639448e3a9433ab92e871335e2` | ⚠️ Unaudited |
| MinterV0 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c36e1adfaa80ee0324b04cc814f5207bb7ba76e` | ⚠️ Unaudited |
| MorphoChainlinkOracleV2 | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-239929 | `0x4dfcef82eaee9ea817beb1279336f7d0ebf2b685` | ⚠️ Unaudited |
| Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0fc84ab084a08971e6f52a9da41bfae82b546ebe` | ⚠️ Unaudited |
| OrderDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c697433e214b1a6d7a2ddd4cdca1505c98f75f1` | ⚠️ Unaudited |
| Patch0000 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d594d1fba500113ede103c071dcf68535da69b4` | ⚠️ Unaudited |
| PendleChainlinkOracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-239966 | `0xefdb275fc9c7946f36e632bef61379c5f5ab4c86` | ⚠️ Unaudited |
| PendlePrincipalToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239925 | `0x3de0ff76e8b528c092d47b9dac775931cef80f49` | ⚠️ Unaudited |
| PermissionedSisuVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe7c47895edb12a990b311df33b90cfea1d44c24` | ⚠️ Unaudited |
| PermissionedSisuVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0bc5719b062ce998804741fb93cf74ac00c5101b` | ⚠️ Unaudited |
| PriceConsumer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f7d995fc12752fe5df42134252e8b7a8922f242` | ⚠️ Unaudited |
| RegistryAccess | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0d374775e962c3608b8f0a4b8b10567df739bb56` | ⚠️ Unaudited |
| RegistryContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0594cb5ca47efe1ff25c7b8b43e221683b4db34c` | ⚠️ Unaudited |
| RehypothecationModule | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239952 | `0xad332515d9c82438bba0e9faa9486b52a33a7ac8` | ⚠️ Unaudited |
| Safe | unknown | project_anchor | own_supporting | 1 | ethereum | unit-239973 | `0x97fd565b913b439ff16774da152b1f71f05a82f1` | ⚠️ Unaudited |
| SimpleReadAccessController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a9d21b46810f69a02ac2d61f4bf1963de82700d` | ⚠️ Unaudited |
| SimpleWriteAccessController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x641b698ad1c6e503470520b0eecb472c0589dfe6` | ⚠️ Unaudited |
| SisuVaultPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60f85e06665cecc7782279eee5fc58b3a33910da` | ⚠️ Unaudited |
| StaleOracleFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfdf9f131604aaf4832efd6485a321d9165ff5182` | ⚠️ Unaudited |
| SwapperEngine | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23f20b7ea6194b639f75f2295a8a98ccdf6be18b` | ⚠️ Unaudited |
| TokenMapping | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x334b18e5e81657efa2057f80e19b8e81f0e5783c` | ⚠️ Unaudited |
| UnlockToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93775e2dfa4e716c361a1f53f212c7ae031bf4e6` | ⚠️ Unaudited |
| Usd0 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43ffb63f98ba9b687092f53235490650b30c2f01` | ⚠️ Unaudited |
| Usd0PP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0202b5063b40bab1f0548b83bdb6bfbefb11d62f` | ⚠️ Unaudited |
| USLLendingMarket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa428723ee8ffd87088c36121d72100b43f11fb6a` | ⚠️ Unaudited |
| USLMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x809c212b710f5b8e3f9898213f0d845e2bc46ec2` | ⚠️ Unaudited |
| ValidatorProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x264bddfd9d93d48d759fbdb0670be1c6fdd50236` | ⚠️ Unaudited |
| WstETH | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239941 | `0x7f39c581f595b53c5cb19bd0b3f8da6c935e2ca0` | ⚠️ Unaudited |
| YieldContractFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239959 | `0xcdb83abb9121c04589567a4106c3cfaf65db68be` | ⚠️ Unaudited |
| YieldDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdbca79adc13a0fa6f921d5cf5b3fae2b8a739c2a` | ⚠️ Unaudited |
| YieldModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2792dad98fd6ba3743ca3484dbc2ce436faa9440` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (21)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239922 | `0x33b6bf0390a84fe0f27979f9b52d78bfe1c6156f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239932 | `0x57ffbb88f0c69283531a751be6ff0741348371ba` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239936 | `0x698253a24cc4926090f841b38d31d6342a00a82c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239937 | `0x7083cfc87e7f6ebb858cc39b72d9c7605d368729` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239942 | `0x88dd7069cb9d8b7cc6eebd23b82ed1e9a75d9734` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-239943 | `0x8a01940d89cf95d9f6e92a90b17c0ca5c953fe73` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-239944 | `0x8ec85c167a43ebe4eb183e8d9b876d1cdad9a9fb` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-239945 | `0x8fffffd4afb6115b954bd326cbe7b4ba576818f6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239946 | `0x90d0d6fdf9fe93777085e8b4baf3aab4285bac6b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239947 | `0x92a6a01b07984de46c24e8eba248449beb8b1dcb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239948 | `0x93635d34fad5a9fa7065a645691100b2e23c93cd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239950 | `0x9db38d74a0d29380899ad354121dfb521adb0548` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239953 | `0xaebf0bb9f57e89260d57f31af34eb58657d96ce0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239954 | `0xb9baa3d58e1431776218f39919fd21aed3e69abb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239956 | `0xc02b0d1ca7b986e63cf1599f9c32e8a96c2d4cff` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239958 | `0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-239960 | `0xd6f5d9102007a737d9ede6543262516d5c2fc8f8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239962 | `0xde00b5edb255078dd42ee94fd97f473d1c9c055d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239965 | `0xeb30b33a1ac175e0305853636d0ef3898eb530f3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239967 | `0xf4030086522a5beea4988f8ca5b36dbc97bee88c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239969 | `0xff615e63aaf2d1b1ee4adfd34a5840747185d8a0` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Rendered PDF capture](https://3843788673-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FyxyZTdJaHRBrumzCYheB%2Fuploads%2Fgit-blob-0e54b2fd3302e5b39a812d04da8f38df2743ac0b%2FSherlock%20-%20Fira%20UZR%20Audit%20Nov25.pdf) | Sherlock | Contest | 2025-11 | fresh | Direct | contract_name | matched | 5 | 0 | 0 | 35 | high |
| [Rendered PDF capture](https://3843788673-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FyxyZTdJaHRBrumzCYheB%2Fuploads%2Fgit-blob-2e55243e2c80f4574b96f599d6f58ea327cb2aa8%2FCantinacode%20-%20Fira%20UZR%20Audit%20Nov25.pdf) | Spearbit | Audit | 2025-11 | fresh | Direct | contract_name | matched | 4 | 0 | 0 | 9 | high |
| [Rendered PDF capture](https://3843788673-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FyxyZTdJaHRBrumzCYheB%2Fuploads%2Fgit-blob-49aa88712501071eb47f480f9b7812073e1e54e2%2FyAudit%20-%20Fira%20UZR%20Audit%20Dec%2025.pdf) | yAudit | Audit | 2025-11 | fresh | Direct | contract_name | matched | 5 | 0 | 0 | 23 | high |
| [Rendered PDF capture](https://3843788673-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FyxyZTdJaHRBrumzCYheB%2Fuploads%2Fgit-blob-6d09a49e52e729cafea883d9f8ea0b8c0536b0dc%2Fhexens-fira-feb-26.pdf) | Hexens | Audit | 2026-02 | fresh | Direct | contract_name | matched | 4 | 0 | 0 | 1 | high |
| [Learn more](https://audits.sherlock.xyz/bug-bounties/227) | Sherlock | Contest | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [17222] Rendered PDF capture — matched: All contracts listed in the Scope section of the audit report.
- [17223] Rendered PDF capture — matched: All contracts listed in the scope section of the audit report.
- [17224] Rendered PDF capture — matched: All contracts listed in the Audit Scope section (1.2) and file tree are included. The audit date is from the cover page: 'November 25, 2025'.
- [17225] Rendered PDF capture — matched: Extracted 5 contracts from scope and findings sections. Audit date is the final report date (26 February 2026).
- [17226] Learn more — no match: The provided text is a bug bounty listing page, not an audit report. It mentions 'Usual - Fira UZR (Usual Zero Rate) module' but does not list specific contract names or files in scope.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Rendered PDF capture | AggregatorV3Interface | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | IAdaptiveCurveIrm | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | ICallbacks | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | IChainlinkOracleV2Factory | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | IChainlinkOracleV2 | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | IERC20 | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | IERC4626 | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | IFixedRateIrm | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | IIrm | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | ILendingMarket | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | IOracle | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | IPermissionedSisuVaultFactory | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | ISisuVaultFactory | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | ISisuVault | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | IUsd0PP | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | AdaptiveCurveIrm | own contract | AdaptiveCurveIrm (selected) `0x73c288826347af3718e6f09c2a24aafda77684cd` — deployed 2026-03-13 18:01:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Rendered PDF capture | FixedRateIrm | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | LendingMarket | own contract | LendingMarket (selected) `0xc8db629192a96d6840e88a8451f17655880a2e4d` — deployed 2026-03-13 17:57:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Rendered PDF capture | USLLendingMarket | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | ChainlinkDataFeedLib | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | ConstantsLib | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | ExpLib | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | MarketParamsLib | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | MathLibInt128 | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | MathLib | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | PendingLib | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | LendingMarketBalancesLib | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | LendingMarketLib | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | LendingMarketStorageLib | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | SafeTransferLib | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | SharesMathLib | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | UtilsLib | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | VaultLib | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | USLMigrator | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | ChainlinkOracleV2Factory | own contract | ChainlinkOracleV2Factory (selected) `0x7783ff7be856c7a82bc5497fb3cc8f7e8802d8dc` — deployed 2026-03-13 18:21:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Rendered PDF capture | ChainlinkOracleV2 | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | PermissionedSisuVaultFactory | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | PermissionedSisuVault | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | SisuVaultFactory | own contract | SisuVaultFactory (selected) `0xe77e0f97a864558e5513209323e4169fceac6981` — deployed 2026-03-13 18:11:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Rendered PDF capture | SisuVault | own contract | SisuVault (selected) `0x50791a5ca041b9d6dd03e64e3fa0e34a376759ac` — deployed 2026-03-13 18:11:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Rendered PDF capture | IAdaptiveCurveIrm | unmatched — not counted | — | listed in scope section | no |
| Rendered PDF capture | AdaptiveCurveIrm | own contract | AdaptiveCurveIrm (selected) `0x73c288826347af3718e6f09c2a24aafda77684cd` — deployed 2026-03-13 18:01:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Rendered PDF capture | FixedRateIrm | unmatched — not counted | — | listed in scope section | no |
| Rendered PDF capture | LendingMarket | own contract | LendingMarket (selected) `0xc8db629192a96d6840e88a8451f17655880a2e4d` — deployed 2026-03-13 17:57:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Rendered PDF capture | USLLendingMarket | unmatched — not counted | — | listed in scope section | no |
| Rendered PDF capture | LendingMarketBalancesLib | unmatched — not counted | — | listed in scope section | no |
| Rendered PDF capture | LendingMarketLib | unmatched — not counted | — | listed in scope section | no |
| Rendered PDF capture | LendingMarketStorageLib | unmatched — not counted | — | listed in scope section | no |
| Rendered PDF capture | USLMigrator | unmatched — not counted | — | listed in scope section | no |
| Rendered PDF capture | PermissionedSisuVault | unmatched — not counted | — | listed in scope section | no |
| Rendered PDF capture | PermissionedSisuVaultFactory | unmatched — not counted | — | listed in scope section | no |
| Rendered PDF capture | SisuVault | own contract | SisuVault (selected) `0x50791a5ca041b9d6dd03e64e3fa0e34a376759ac` — deployed 2026-03-13 18:11:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Rendered PDF capture | SisuVaultFactory | own contract | SisuVaultFactory (selected) `0xe77e0f97a864558e5513209323e4169fceac6981` — deployed 2026-03-13 18:11:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Rendered PDF capture | AdaptiveCurveIrm | own contract | AdaptiveCurveIrm (selected) `0x73c288826347af3718e6f09c2a24aafda77684cd` — deployed 2026-03-13 18:01:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Rendered PDF capture | FixedRateIrm | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | LendingMarket | own contract | LendingMarket (selected) `0xc8db629192a96d6840e88a8451f17655880a2e4d` — deployed 2026-03-13 17:57:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Rendered PDF capture | USLLendingMarket | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | ChainlinkDataFeedLib | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | ConstantsLib | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | ErrorsLib | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | EventsLib | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | ExpLib | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | MarketParamsLib | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | MathLib | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | MathLibInt128 | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | PendingLib | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | SafeTransferLib | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | SharesMathLib | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | UtilsLib | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | VaultLib | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | LendingMarketBalancesLib | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | LendingMarketLib | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | LendingMarketStorageLib | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | USLMigrator | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | ChainlinkOracleV2 | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | ChainlinkOracleV2Factory | own contract | ChainlinkOracleV2Factory (selected) `0x7783ff7be856c7a82bc5497fb3cc8f7e8802d8dc` — deployed 2026-03-13 18:21:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Rendered PDF capture | SisuVaultPriceFeed | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | PermissionedSisuVault | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | PermissionedSisuVaultFactory | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | SisuVault | own contract | SisuVault (selected) `0x50791a5ca041b9d6dd03e64e3fa0e34a376759ac` — deployed 2026-03-13 18:11:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Rendered PDF capture | SisuVaultFactory | own contract | SisuVaultFactory (selected) `0xe77e0f97a864558e5513209323e4169fceac6981` — deployed 2026-03-13 18:11:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Rendered PDF capture | CouponToken | own contract | CouponToken (selected) `0x17ea07eb87bf7b091070999a0d313556d4ac580b` — deployed 2026-03-20 13:52:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Rendered PDF capture | BCLpOracle | unmatched — not counted | — | listed in scope and findings | no |
| Rendered PDF capture | ActionBorrow | own contract | ActionBorrow (selected) `0x66f5853cf6c36b97e754f074397d00b78253ef03` — deployed 2026-03-13 18:28:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Rendered PDF capture | USDCFW | own contract | USDCFW (selected) `0x62f5366c9e21a95326c461a098a408e034e017b3` — deployed 2026-03-13 18:13:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Rendered PDF capture | LendingMarket | own contract | LendingMarket (selected) `0xc8db629192a96d6840e88a8451f17655880a2e4d` — deployed 2026-03-13 17:57:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x286bbc5519cd421011e7e1c092e1d6a72edb4d30` | ActionAddRemoveLiqV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2dead5b19935d7299d7077c52f2e2860370278a5` | ActionCallbackV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x967234d7a4416380107da653e5d3afc9c7bf8874` | ActionMiscV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4474886d003abcb53c307324894c074ce5176f75` | ActionSimple | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0386685ea7d37c61ddb8f2e2e8c45f6a81d4a3c8` | ActionStorageV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xab2383692ed8e0836e25b71988c925dfd94ed2fe` | ActionSwapBTV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xdb7a722ae7baf83d3d8b9e812952916326d6656b` | ActionSwapCTV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x33fd40ed7744c961b61a086a87f83787bd9606ee` | BondToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48` | FiatTokenProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x280ddd897f39c33fef1cbf863b386cb9a8e53a0e` | FiraLendingMarket | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x400922e37d608620672dc1f1b7a25ecbaabb57f8` | FiraMarket | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xbf1efc2199ae9ee1b6f5060a45d4440157e49744` | FiraMarketFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5ccdbef28bc15d306ddb949f6b43bb0e3002cea6` | FiraSolvencyOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2104f638a839ca7260180d9ee7f4865c92df4ce5` | LiquidityInjector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xad332515d9c82438bba0e9faa9486b52a33a7ac8` | RehypothecationModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7f39c581f595b53c5cb19bd0b3f8da6c935e2ca0` | WstETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcdb83abb9121c04589567a4106c3cfaf65db68be` | YieldContractFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 83 |
| upstream | 6 |
| standard_library | 4 |
| needs_review | 21 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 18 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 68 unmatched
- Matched-own operational status: 18 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=4, low=1
- Match method counts: unique_name=18

Zero-match audit list:

- [17226] Learn more

Fork inheritance lineage and inherited audits are included when available.
