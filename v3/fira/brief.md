# Agentic Audit Brief: Fira

## Export Authority

- Production state: **published scope**
- Raw selected rows: 18 across 4 audit(s)
- Eligible audit results: 5 (4 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Fira (`fira`)
- Website: [https://www.fira.money/](https://www.fira.money/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
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

- UnnamedContract (`0x33b6bf...c6156f`, chain 1)
- UnnamedContract (`0x57ffbb...8371ba`, chain 1)
- UnnamedContract (`0x698253...00a82c`, chain 1)
- UnnamedContract (`0x7083cf...368729`, chain 1)
- UnnamedContract (`0x88dd70...5d9734`, chain 1)
- UnnamedContract (`0x90d0d6...5bac6b`, chain 1)
- UnnamedContract (`0x92a6a0...8b1dcb`, chain 1)
- UnnamedContract (`0x93635d...3c93cd`, chain 1)
- UnnamedContract (`0x9db38d...db0548`, chain 1)
- UnnamedContract (`0xaebf0b...d96ce0`, chain 1)
- UnnamedContract (`0xb9baa3...e69abb`, chain 1)
- UnnamedContract (`0xc02b0d...2d4cff`, chain 1)
- UnnamedContract (`0xcbb7c0...ed33bf`, chain 1)
- UnnamedContract (`0xde00b5...9c055d`, chain 1)
- UnnamedContract (`0xeb30b3...b530f3`, chain 1)
- UnnamedContract (`0xf40300...bee88c`, chain 1)
- UnnamedContract (`0xff615e...85d8a0`, chain 1)
- ActionAddRemoveLiqV3 (`0x286bbc...db4d30`, chain 1)
- ActionBorrow (`0x66f585...53ef03`, chain 1)
- ActionCallbackV3 (`0x2dead5...0278a5`, chain 1)
- ActionMiscV3 (`0x967234...bf8874`, chain 1)
- ActionSimple (`0x447488...176f75`, chain 1)
- ActionStorageV4 (`0x038668...d4a3c8`, chain 1)
- ActionSwapBTV3 (`0xab2383...4ed2fe`, chain 1)
- ActionSwapCTV3 (`0xdb7a72...d6656b`, chain 1)
- AdaptiveCurveIrm (`0x73c288...7684cd`, chain 1)
- BondToken (`0x33fd40...9606ee`, chain 1)
- ChainlinkOracle (`0x48f7e3...9e40e2`, chain 1)
- ChainlinkOracleV2Factory (`0x7783ff...02d8dc`, chain 1)
- CouponToken (`0x17ea07...ac580b`, chain 1)
- ERC1967Proxy (`0x2037a5...0f23b4`, chain 1)
- FiatTokenProxy (`0xa0b869...06eb48`, chain 1)
- FiraLendingMarket (`0x280ddd...e53a0e`, chain 1)
- FiraMarket (`0x400922...bb57f8`, chain 1)
- FiraMarketFactory (`0xbf1efc...e49744`, chain 1)
- FiraSolvencyOracle (`0x5ccdbe...02cea6`, chain 1)
- LendingMarket (`0xc8db62...0a2e4d`, chain 1)
- LiquidityInjector (`0x2104f6...df4ce5`, chain 1)
- MorphoChainlinkOracleV2 (`0x4dfcef...f2b685`, chain 1)
- PendleChainlinkOracle (`0xefdb27...ab4c86`, chain 1)
- PendlePrincipalToken (`0x3de0ff...f80f49`, chain 1)
- RehypothecationModule (`0xad3325...3a7ac8`, chain 1)
- Safe (`0x97fd56...5a82f1`, chain 1)
- SisuVault (`0x50791a...6759ac`, chain 1)
- SisuVaultFactory (`0xe77e0f...ac6981`, chain 1)
- USDCFW (`0x62f536...e017b3`, chain 1)
- WstETH (`0x7f39c5...5e2ca0`, chain 1)
- YieldContractFactory (`0xcdb83a...db68be`, chain 1)

## Contract Surface Quality

- Indexed contracts: 35; live-surface contracts included: 35 (31 live, 4 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 48/61 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 8/28 (28.6%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 45 own, 11 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 58 discovered implementations excluded (11 third-party/infra; 2 standard proxy/library)
- Proxy deployments represented within implementation groups: 7
- Deployed-live implementations: 48 of 114 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 8/28
- Verified + Unaudited implementations: 20
- Verified by bytecode match: 0
- Unverified implementations: 17
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
| Sherlock | Tier 1 | 5 | 17.9% | 2025-11 |
| yAudit | Tier 2 | 5 | 17.9% | 2025-11 |
| Hexens | Tier 2 | 4 | 14.3% | 2026-02 |
| Spearbit | Tier 1 | 4 | 14.3% | 2025-11 |

## Contract Surface

### ✅ Verified + Audited (8)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ActionBorrow | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239935 | `0x66f585...53ef03` | ✅ Audited |
| AdaptiveCurveIrm | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239938 | `0x73c288...7684cd` | ✅ Audited |
| ChainlinkOracleV2Factory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239939 | `0x7783ff...02d8dc` | ✅ Audited |
| CouponToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239916 | `0x17ea07...ac580b` | ✅ Audited |
| LendingMarket | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239957 | `0xc8db62...0a2e4d` | ✅ Audited |
| SisuVault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239931 | `0x50791a...6759ac` | ✅ Audited |
| SisuVaultFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239963 | `0xe77e0f...ac6981` | ✅ Audited |
| USDCFW | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239934 | `0x62f536...e017b3` | ✅ Audited |

### ⚠️ Verified + Unaudited (85)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveToChainlinkAdapter | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-239924 | `0x3d7346...ba3c91` | ⚠️ Unaudited |
| AccessControlledAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00c7a3...275446` | ⚠️ Unaudited |
| AccessControlledOffchainAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00260d...a6cd78` | ⚠️ Unaudited |
| AccessManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe16733...ca2824` | ⚠️ Unaudited |
| ActionAddRemoveLiqV3 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239919 | `0x286bbc...db4d30` | ⚠️ Unaudited |
| ActionCallbackV3 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239920 | `0x2dead5...0278a5` | ⚠️ Unaudited |
| ActionMiscV3 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239949 | `0x967234...bf8874` | ⚠️ Unaudited |
| ActionSimple | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239927 | `0x447488...176f75` | ⚠️ Unaudited |
| ActionStorageV4 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239915 | `0x038668...d4a3c8` | ⚠️ Unaudited |
| ActionSwapBTV3 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239951 | `0xab2383...4ed2fe` | ⚠️ Unaudited |
| ActionSwapCTV3 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239961 | `0xdb7a72...d6656b` | ⚠️ Unaudited |
| AddressList | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c271d...c0f6aa` | ⚠️ Unaudited |
| Aggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b8b84...eeae4d` | ⚠️ Unaudited |
| AggregatorFacade | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x010b33...6c0a67` | ⚠️ Unaudited |
| ApxUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d4250...7f1fc0` | ⚠️ Unaudited |
| ApxUSDRateOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26ea4a...8bb17f` | ⚠️ Unaudited |
| ApyUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x208507...66cacf` | ⚠️ Unaudited |
| ApyUSDDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1fad8a...523637` | ⚠️ Unaudited |
| ApyUSDRateView | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcaba36...b4e484` | ⚠️ Unaudited |
| ApyxCollateralRatioOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e1e66...dec49c` | ⚠️ Unaudited |
| ArbitrumValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31982c...c38ac1` | ⚠️ Unaudited |
| BCLpOracle | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-239968 | `0xfeaaec...4de921` | ⚠️ Unaudited |
| BondToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239923 | `0x33fd40...9606ee` | ⚠️ Unaudited |
| ChainlinkOracle | unknown | project_anchor | third_party_dependency | 0 | ethereum | unit-239928 | `0x48f7e3...9e40e2` | ⚠️ Unaudited |
| ChainlinkOracleV2 | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-239921 | `0x2ed527...cdbe2e` | ⚠️ Unaudited |
| ClassicalOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95cf8c...cc5220` | ⚠️ Unaudited |
| CommitToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17122d...79871e` | ⚠️ Unaudited |
| ConfirmedTransactionModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e1b5a...d67f6b` | ⚠️ Unaudited |
| CPoR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x575a16...f28c51` | ⚠️ Unaudited |
| DaoCollateral | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26227b...fd8d0b` | ⚠️ Unaudited |
| DeploymentHelpers | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x758888...18ce84` | ⚠️ Unaudited |
| DistributionModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd56e99...469e73` | ⚠️ Unaudited |
| EACAggregatorProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00a773...9d7c29` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-239975 | `0x2037a5...0f23b4` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x475617...d7f53e` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x4b7445...9e50d3` | ⚠️ Unaudited |
| FeedRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47fb25...ceeedf` | ⚠️ Unaudited |
| FiatToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8cbde2...77a91a` | ⚠️ Unaudited |
| FiatTokenProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-239974 | `0xa0b869...06eb48` | ⚠️ Unaudited |
| FiatTokenUtil | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6315aa...0355a6` | ⚠️ Unaudited |
| FiatTokenV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x088247...57fe56` | ⚠️ Unaudited |
| FiatTokenV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7277a...3778a2` | ⚠️ Unaudited |
| FiatTokenV2_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2327a...4cbdcf` | ⚠️ Unaudited |
| FiraLendingMarket | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239918 | `0x280ddd...e53a0e` | ⚠️ Unaudited |
| FiraMarket | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239926 | `0x400922...bb57f8` | ⚠️ Unaudited |
| FiraMarketFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239955 | `0xbf1efc...e49744` | ⚠️ Unaudited |
| FiraSolvencyOracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239933 | `0x5ccdbe...02cea6` | ⚠️ Unaudited |
| FixedRateIrm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdfcf19...b01385` | ⚠️ Unaudited |
| Flags | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24ec84...3bdabf` | ⚠️ Unaudited |
| KeeperRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f7595...dd08c7` | ⚠️ Unaudited |
| LinearVestV0 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d62b4...94c99f` | ⚠️ Unaudited |
| LiquidityInjector | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239917 | `0x2104f6...df4ce5` | ⚠️ Unaudited |
| LockReleaseTokenPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e9ca4...405bb5` | ⚠️ Unaudited |
| MasterMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x566c11...674335` | ⚠️ Unaudited |
| MetaOracleDeviationTimelock | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-239964 | `0xea268c...1335e2` | ⚠️ Unaudited |
| MinterV0 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c36e1...7ba76e` | ⚠️ Unaudited |
| MorphoChainlinkOracleV2 | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-239929 | `0x4dfcef...f2b685` | ⚠️ Unaudited |
| Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0fc84a...546ebe` | ⚠️ Unaudited |
| OrderDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c6974...8f75f1` | ⚠️ Unaudited |
| Patch0000 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d594d...da69b4` | ⚠️ Unaudited |
| PendleChainlinkOracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-239966 | `0xefdb27...ab4c86` | ⚠️ Unaudited |
| PendlePrincipalToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239925 | `0x3de0ff...f80f49` | ⚠️ Unaudited |
| PermissionedSisuVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe7c47...d44c24` | ⚠️ Unaudited |
| PermissionedSisuVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0bc571...c5101b` | ⚠️ Unaudited |
| PriceConsumer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f7d99...22f242` | ⚠️ Unaudited |
| RegistryAccess | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0d3747...39bb56` | ⚠️ Unaudited |
| RegistryContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0594cb...4db34c` | ⚠️ Unaudited |
| RehypothecationModule | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239952 | `0xad3325...3a7ac8` | ⚠️ Unaudited |
| Safe | unknown | project_anchor | own_supporting | 1 | ethereum | unit-239973 | `0x97fd56...5a82f1` | ⚠️ Unaudited |
| SimpleReadAccessController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a9d21...82700d` | ⚠️ Unaudited |
| SimpleWriteAccessController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x641b69...89dfe6` | ⚠️ Unaudited |
| SisuVaultPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60f85e...3910da` | ⚠️ Unaudited |
| StaleOracleFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfdf9f1...ff5182` | ⚠️ Unaudited |
| SwapperEngine | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23f20b...6be18b` | ⚠️ Unaudited |
| TokenMapping | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x334b18...e5783c` | ⚠️ Unaudited |
| UnlockToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93775e...1bf4e6` | ⚠️ Unaudited |
| Usd0 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43ffb6...0c2f01` | ⚠️ Unaudited |
| Usd0PP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0202b5...11d62f` | ⚠️ Unaudited |
| USLLendingMarket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa42872...11fb6a` | ⚠️ Unaudited |
| USLMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x809c21...c46ec2` | ⚠️ Unaudited |
| ValidatorProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x264bdd...d50236` | ⚠️ Unaudited |
| WstETH | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239941 | `0x7f39c5...5e2ca0` | ⚠️ Unaudited |
| YieldContractFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239959 | `0xcdb83a...db68be` | ⚠️ Unaudited |
| YieldDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdbca79...739c2a` | ⚠️ Unaudited |
| YieldModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2792da...aa9440` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239922 | `0x33b6bf...c6156f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239932 | `0x57ffbb...8371ba` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239936 | `0x698253...00a82c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239937 | `0x7083cf...368729` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239942 | `0x88dd70...5d9734` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-239943 | `0x8a0194...53fe73` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-239944 | `0x8ec85c...d9a9fb` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-239945 | `0x8fffff...6818f6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239946 | `0x90d0d6...5bac6b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239947 | `0x92a6a0...8b1dcb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239948 | `0x93635d...3c93cd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239950 | `0x9db38d...db0548` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239953 | `0xaebf0b...d96ce0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239954 | `0xb9baa3...e69abb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239956 | `0xc02b0d...2d4cff` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239958 | `0xcbb7c0...ed33bf` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-239960 | `0xd6f5d9...2fc8f8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239962 | `0xde00b5...9c055d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239965 | `0xeb30b3...b530f3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239967 | `0xf40300...bee88c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239969 | `0xff615e...85d8a0` | ❓ Unverified |

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
| Rendered PDF capture | AdaptiveCurveIrm | own contract | AdaptiveCurveIrm (selected) `0x73c288...7684cd` — deployed 2026-03-13 18:01:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Rendered PDF capture | FixedRateIrm | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | LendingMarket | own contract | LendingMarket (selected) `0xc8db62...0a2e4d` — deployed 2026-03-13 17:57:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| Rendered PDF capture | ChainlinkOracleV2Factory | own contract | ChainlinkOracleV2Factory (selected) `0x7783ff...02d8dc` — deployed 2026-03-13 18:21:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Rendered PDF capture | ChainlinkOracleV2 | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | PermissionedSisuVaultFactory | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | PermissionedSisuVault | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | SisuVaultFactory | own contract | SisuVaultFactory (selected) `0xe77e0f...ac6981` — deployed 2026-03-13 18:11:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Rendered PDF capture | SisuVault | own contract | SisuVault (selected) `0x50791a...6759ac` — deployed 2026-03-13 18:11:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Rendered PDF capture | IAdaptiveCurveIrm | unmatched — not counted | — | listed in scope section | no |
| Rendered PDF capture | AdaptiveCurveIrm | own contract | AdaptiveCurveIrm (selected) `0x73c288...7684cd` — deployed 2026-03-13 18:01:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Rendered PDF capture | FixedRateIrm | unmatched — not counted | — | listed in scope section | no |
| Rendered PDF capture | LendingMarket | own contract | LendingMarket (selected) `0xc8db62...0a2e4d` — deployed 2026-03-13 17:57:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Rendered PDF capture | USLLendingMarket | unmatched — not counted | — | listed in scope section | no |
| Rendered PDF capture | LendingMarketBalancesLib | unmatched — not counted | — | listed in scope section | no |
| Rendered PDF capture | LendingMarketLib | unmatched — not counted | — | listed in scope section | no |
| Rendered PDF capture | LendingMarketStorageLib | unmatched — not counted | — | listed in scope section | no |
| Rendered PDF capture | USLMigrator | unmatched — not counted | — | listed in scope section | no |
| Rendered PDF capture | PermissionedSisuVault | unmatched — not counted | — | listed in scope section | no |
| Rendered PDF capture | PermissionedSisuVaultFactory | unmatched — not counted | — | listed in scope section | no |
| Rendered PDF capture | SisuVault | own contract | SisuVault (selected) `0x50791a...6759ac` — deployed 2026-03-13 18:11:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Rendered PDF capture | SisuVaultFactory | own contract | SisuVaultFactory (selected) `0xe77e0f...ac6981` — deployed 2026-03-13 18:11:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Rendered PDF capture | AdaptiveCurveIrm | own contract | AdaptiveCurveIrm (selected) `0x73c288...7684cd` — deployed 2026-03-13 18:01:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Rendered PDF capture | FixedRateIrm | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | LendingMarket | own contract | LendingMarket (selected) `0xc8db62...0a2e4d` — deployed 2026-03-13 17:57:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| Rendered PDF capture | ChainlinkOracleV2Factory | own contract | ChainlinkOracleV2Factory (selected) `0x7783ff...02d8dc` — deployed 2026-03-13 18:21:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Rendered PDF capture | SisuVaultPriceFeed | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | PermissionedSisuVault | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | PermissionedSisuVaultFactory | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | SisuVault | own contract | SisuVault (selected) `0x50791a...6759ac` — deployed 2026-03-13 18:11:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Rendered PDF capture | SisuVaultFactory | own contract | SisuVaultFactory (selected) `0xe77e0f...ac6981` — deployed 2026-03-13 18:11:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Rendered PDF capture | CouponToken | own contract | CouponToken (selected) `0x17ea07...ac580b` — deployed 2026-03-20 13:52:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Rendered PDF capture | BCLpOracle | unmatched — not counted | — | listed in scope and findings | no |
| Rendered PDF capture | ActionBorrow | own contract | ActionBorrow (selected) `0x66f585...53ef03` — deployed 2026-03-13 18:28:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Rendered PDF capture | USDCFW | own contract | USDCFW (selected) `0x62f536...e017b3` — deployed 2026-03-13 18:13:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Rendered PDF capture | LendingMarket | own contract | LendingMarket (selected) `0xc8db62...0a2e4d` — deployed 2026-03-13 17:57:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x286bbc...db4d30` | ActionAddRemoveLiqV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2dead5...0278a5` | ActionCallbackV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x967234...bf8874` | ActionMiscV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x447488...176f75` | ActionSimple | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x038668...d4a3c8` | ActionStorageV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xab2383...4ed2fe` | ActionSwapBTV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xdb7a72...d6656b` | ActionSwapCTV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x33fd40...9606ee` | BondToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa0b869...06eb48` | FiatTokenProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x280ddd...e53a0e` | FiraLendingMarket | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x400922...bb57f8` | FiraMarket | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xbf1efc...e49744` | FiraMarketFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5ccdbe...02cea6` | FiraSolvencyOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2104f6...df4ce5` | LiquidityInjector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xad3325...3a7ac8` | RehypothecationModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7f39c5...5e2ca0` | WstETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcdb83a...db68be` | YieldContractFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
