# Agentic Audit Brief: Origami Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 27 across 11 audit(s)
- Eligible audit results: 27 (11 matched; 16 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Origami Finance (`origami-finance`)
- Website: [https://origami.finance](https://origami.finance)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, berachain, ethereum
- Contract surface: 172 unique implementations (172 raw deployments)
- Coverage basis: 11/18 confirmed own live verified implementations (61.1%); conservative 61.1% with 0 needs-review implementation(s)
- DeFi Llama TVL: $183,832,403.72
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Origami Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 24 contract row(s) across arbitrum, berachain, ethereum. Structural roles: 24 core. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 24
- Structural roles: core (24)
- Contract kinds: contract (24)
- Detected standards: erc165 (5), erc20 (4), erc20permit (4), multicall (2), erc4626 (1), pausable (1)
- Frameworks: openzeppelin (21), prb-math (13), layerzero (4), aave (2), chainlink (2), openzeppelin-upgradeable (2), uniswap-v3 (1)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 110 contracts are derived from known codebases. 110 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0b53af...14d4d4`, chain 1)
- UnnamedContract (`0x117b36...0d845d`, chain 1)
- UnnamedContract (`0x180f4d...118129`, chain 1)
- UnnamedContract (`0x235e2a...fc1394`, chain 1)
- UnnamedContract (`0x26df94...1321a7`, chain 1)
- UnnamedContract (`0x2ec777...d08b79`, chain 1)
- UnnamedContract (`0x2f80ee...fa1709`, chain 1)
- UnnamedContract (`0x3963d8...bdefe6`, chain 1)
- UnnamedContract (`0x42cd29...f5d342`, chain 1)
- UnnamedContract (`0x43947f...d0d111`, chain 1)
- UnnamedContract (`0x4e5686...0a5ea2`, chain 1)
- UnnamedContract (`0x5383bf...b23b79`, chain 1)
- UnnamedContract (`0x550433...c98299`, chain 1)
- UnnamedContract (`0x68011e...361925`, chain 1)
- UnnamedContract (`0x71520c...b2f26a`, chain 1)
- UnnamedContract (`0x76cf78...4ee407`, chain 1)
- UnnamedContract (`0x78f310...29a8e6`, chain 1)
- UnnamedContract (`0x7d7609...c76603`, chain 1)
- UnnamedContract (`0x7fc862...619eda`, chain 1)
- UnnamedContract (`0x9c1f72...8a5247`, chain 1)
- UnnamedContract (`0x9fa6d1...dbe53c`, chain 1)
- UnnamedContract (`0xaedddb...ff212e`, chain 1)
- UnnamedContract (`0xb26631...352d96`, chain 1)
- UnnamedContract (`0xb48ac9...f76df2`, chain 1)
- UnnamedContract (`0xb9dad3...877187`, chain 1)
- UnnamedContract (`0xbfa722...1a9ce6`, chain 1)
- UnnamedContract (`0xc03c43...d17ea5`, chain 1)
- UnnamedContract (`0xc1a249...0203cd`, chain 1)
- UnnamedContract (`0xc24248...ebc6de`, chain 1)
- UnnamedContract (`0xc65a88...35d2e5`, chain 1)
- UnnamedContract (`0xc8a26a...8be32c`, chain 1)
- UnnamedContract (`0xc9632e...e8e3a9`, chain 1)
- UnnamedContract (`0xe488a6...323bae`, chain 1)
- UnnamedContract (`0xe567dc...7abf4e`, chain 1)
- UnnamedContract (`0xe6b1f8...e48f17`, chain 1)
- UnnamedContract (`0xed95cf...f1e83c`, chain 1)
- UnnamedContract (`0xefc8ed...fb7e93`, chain 1)
- UnnamedContract (`0xf7ed9c...d28cdc`, chain 1)
- UnnamedContract (`0xf919e7...9c322c`, chain 1)
- UnnamedContract (`0x081eb2...e9e7e4`, chain 80094)
- UnnamedContract (`0x0a377e...e68b30`, chain 80094)
- UnnamedContract (`0x0f678e...7ae111`, chain 80094)
- UnnamedContract (`0x252cb4...486384`, chain 80094)
- UnnamedContract (`0x294d88...ce242b`, chain 80094)
- UnnamedContract (`0x2a66de...110b21`, chain 80094)
- UnnamedContract (`0x3190ee...247b89`, chain 80094)
- UnnamedContract (`0x32bc5e...2fc1f6`, chain 80094)
- UnnamedContract (`0x345c31...37539d`, chain 80094)
- UnnamedContract (`0x3ed86a...af9896`, chain 80094)
- UnnamedContract (`0x50c10f...727e91`, chain 80094)
- UnnamedContract (`0x537486...ff796f`, chain 80094)
- UnnamedContract (`0x564f0f...561999`, chain 80094)
- UnnamedContract (`0x68233f...e40823`, chain 80094)
- UnnamedContract (`0x6834ff...c545e6`, chain 80094)
- UnnamedContract (`0x69f1e9...29a30a`, chain 80094)
- UnnamedContract (`0x6a3be0...ed9207`, chain 80094)
- UnnamedContract (`0x7a1bb5...e03afc`, chain 80094)
- UnnamedContract (`0x7c6e5c...7f44c5`, chain 80094)
- UnnamedContract (`0x857142...997207`, chain 80094)
- UnnamedContract (`0x87ec88...d65237`, chain 80094)
- UnnamedContract (`0x8b21aa...82e305`, chain 80094)
- UnnamedContract (`0x8e0084...f5602b`, chain 80094)
- UnnamedContract (`0x90b724...cec557`, chain 80094)
- UnnamedContract (`0x9e5cbe...df2aa4`, chain 80094)
- UnnamedContract (`0xa109af...c6dd1a`, chain 80094)
- UnnamedContract (`0xa128a1...dc5b58`, chain 80094)
- UnnamedContract (`0xa16335...bab9c2`, chain 80094)
- UnnamedContract (`0xa77715...dccc69`, chain 80094)
- UnnamedContract (`0xaa784e...124387`, chain 80094)
- UnnamedContract (`0xab35a4...974ec4`, chain 80094)
- UnnamedContract (`0xb1952d...d23fb3`, chain 80094)
- UnnamedContract (`0xb9234c...fef0e1`, chain 80094)
- UnnamedContract (`0xb9c3dc...2ec384`, chain 80094)
- UnnamedContract (`0xbd2f11...1afb92`, chain 80094)
- UnnamedContract (`0xbd884d...96d263`, chain 80094)
- UnnamedContract (`0xc6a91d...6cac7b`, chain 80094)
- UnnamedContract (`0xcdb967...f872c8`, chain 80094)
- UnnamedContract (`0xd6d5c6...edb3bc`, chain 80094)
- UnnamedContract (`0xd7f54c...fffb0c`, chain 80094)
- UnnamedContract (`0xd88ded...ce3beb`, chain 80094)
- UnnamedContract (`0xd8c27d...86e1b9`, chain 80094)
- UnnamedContract (`0xdb1591...a7b754`, chain 80094)
- UnnamedContract (`0xdfd251...af9a60`, chain 80094)
- UnnamedContract (`0xe14182...86d24c`, chain 80094)
- UnnamedContract (`0xe38695...103521`, chain 80094)
- UnnamedContract (`0xe3a215...fe7b78`, chain 80094)
- UnnamedContract (`0xe49bc7...2288fa`, chain 80094)
- UnnamedContract (`0xe7c153...243a53`, chain 80094)
- UnnamedContract (`0xe8bd04...f3a671`, chain 80094)
- UnnamedContract (`0xee6796...ac4b72`, chain 80094)
- UnnamedContract (`0xf47aa2...3bed40`, chain 80094)
- UnnamedContract (`0xfcb6c2...b0df8a`, chain 80094)
- GnosisSafe (`0x781b4c...4ab696`, chain 1)
- OrigamiAaveV3BorrowAndLend (`0x2432b4...dbb678`, chain 1)
- OrigamiAaveV3FlashLoanProvider (`0x884693...b2e006`, chain 1)
- OrigamiAutoStakingToErc4626 (`0x1a0730...e3f67f`, chain 80094)
- OrigamiCoolerMigrator (`0x6b3441...415e26`, chain 1)
- OrigamiDelegated4626Vault (`0x07c550...3cf5a2`, chain 1)
- OrigamiDexAggregatorSwapper (`0x5bf103...b40234`, chain 1)
- OrigamiHOhmManager (`0xe6c5dc...2cf3ff`, chain 1)
- OrigamiHOhmVault (`0x1db159...8844f6`, chain 1)
- OrigamiInfraredVaultManager (`0x05d346...457b79`, chain 80094)
- OrigamiLovToken (`0x0059fd...f06c06`, chain 80094)
- OrigamiLovTokenMorphoManager (`0x051dc8...bb1ec3`, chain 1)
- OrigamiLovTokenMorphoManagerMarketAL (`0x71578e...8da22a`, chain 1)
- OrigamiMorphoBorrowAndLend (`0x034011...533e3b`, chain 1)
- OrigamiSuperSkyManager (`0xc52233...49dc9e`, chain 1)
- OrigamiSwapperWithCallback (`0x23d774...8c80db`, chain 80094)
- OrigamiSwapperWithLiquidityManagement (`0x1511ad...7ceb47`, chain 80094)
- OrigamiTokenTeleporter (`0xce3990...83932a`, chain 1)

## Contract Surface Quality

- Indexed contracts: 24; live-surface contracts included: 24 (18 live, 6 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 110/155 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 11/18 (61.1%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 110 own, 16 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 46 discovered implementations excluded (5 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Deployed-live implementations: 110 of 172 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 11/18
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 92
- Unique implementations: 172
- Raw deployments: 172
- Audits discovered: 27 (27 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 11
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-02 (fresh)
- Audit staleness (calendar age): 5 fresh, 17 aging, 5 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 11 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Panprog | Tier 2 | 6 | 33.3% | 2025-12 |
| Electisec | Tier 2 | 5 | 27.8% | 2025-07 |
| Jacopod | Tier 2 | 5 | 27.8% | 2026-02 |
| Nethermind | Tier 2 | 4 | 22.2% | 2025-12 |
| Pyro | Tier 2 | 3 | 16.7% | 2025-03 |
| Zellic | Tier 2 | 1 | 5.6% | 2024-01 |

## Contract Surface

### ✅ Verified + Audited (11)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| OrigamiAutoStakingToErc4626 | unknown | project_anchor | own_supporting | 0 | berachain | unit-390599 | `0x1a0730...e3f67f` | ✅ Audited |
| OrigamiCoolerMigrator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390540 | `0x6b3441...415e26` | ✅ Audited |
| OrigamiDelegated4626Vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390514 | `0x07c550...3cf5a2` | ✅ Audited |
| OrigamiHOhmManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390575 | `0xe6c5dc...2cf3ff` | ✅ Audited |
| OrigamiHOhmVault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390520 | `0x1db159...8844f6` | ✅ Audited |
| OrigamiInfraredVaultManager | unknown | project_anchor | own_supporting | 0 | berachain | unit-390594 | `0x05d346...457b79` | ✅ Audited |
| OrigamiLovToken | unknown | project_anchor | own_supporting | 0 | berachain | unit-390593 | `0x0059fd...f06c06` | ✅ Audited |
| OrigamiLovTokenMorphoManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390513 | `0x051dc8...bb1ec3` | ✅ Audited |
| OrigamiSuperSkyManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390563 | `0xc52233...49dc9e` | ✅ Audited |
| OrigamiSwapperWithCallback | unknown | project_anchor | own_supporting | 0 | berachain | unit-390600 | `0x23d774...8c80db` | ✅ Audited |
| OrigamiTokenTeleporter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390569 | `0xce3990...83932a` | ✅ Audited |

### ⚠️ Verified + Unaudited (59)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| EzEthToEthExchangeRateAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2ca3c...c8652b` | ⚠️ Unaudited |
| GnosisSafe | unknown | project_anchor | own_supporting | 1 | ethereum | unit-390665 | `0x781b4c...4ab696` | ⚠️ Unaudited |
| HATVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x998f1b...a31abd` | ⚠️ Unaudited |
| OpalAdapterEuler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe8584c...93d02e` | ⚠️ Unaudited |
| OpalAdapterFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1cecff...02c98d` | ⚠️ Unaudited |
| OpalAdapterSpotAssets | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x964dd6...0dc8e4` | ⚠️ Unaudited |
| OpalManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7daf45...76aa15` | ⚠️ Unaudited |
| OpalPeriphery | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x430b37...88f3cc` | ⚠️ Unaudited |
| OpalVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b3f4e...fa8b23` | ⚠️ Unaudited |
| OrigamiAaveV3BorrowAndLend | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390522 | `0x2432b4...dbb678` | ⚠️ Unaudited |
| OrigamiAaveV3FlashLoanProvider | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390551 | `0x884693...b2e006` | ⚠️ Unaudited |
| OrigamiAutoStakingFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xc3d19a...36d747` | ⚠️ Unaudited |
| OrigamiAutoStakingToErc4626Deployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x5a1e91...9a2423` | ⚠️ Unaudited |
| OrigamiBorrowLendMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x381d5b...98b978` | ⚠️ Unaudited |
| OrigamiBoycoUsdcManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xcb6d80...1c82ba` | ⚠️ Unaudited |
| OrigamiBoycoVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x0b53af...14d4d4` | ⚠️ Unaudited |
| OrigamiBundler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x346497...3ccb33` | ⚠️ Unaudited |
| OrigamiBundlerPluginEntryPoint | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x652400...3ca1ea` | ⚠️ Unaudited |
| OrigamiBundlerPluginKyberSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x759238...4e3edd` | ⚠️ Unaudited |
| OrigamiBundlerPluginOhmStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b6fe4...a27470` | ⚠️ Unaudited |
| OrigamiBundlerPluginTbsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8ac59...d3dd2c` | ⚠️ Unaudited |
| OrigamiBundlerPluginTbsV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4c97e...05c15d` | ⚠️ Unaudited |
| OrigamiCowSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07b734...fe178f` | ⚠️ Unaudited |
| OrigamiCrossRateOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x075766...8de783` | ⚠️ Unaudited |
| OrigamiDelegated4626VaultDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x29648c...8c129a` | ⚠️ Unaudited |
| OrigamiDexAggregatorSwapper | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390538 | `0x5bf103...b40234` | ⚠️ Unaudited |
| OrigamiErc4626AndDexAggregatorSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x302563...84e262` | ⚠️ Unaudited |
| OrigamiErc4626Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x1d1620...968955` | ⚠️ Unaudited |
| OrigamiErc4626WithRewardsManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9224f...5eb08c` | ⚠️ Unaudited |
| OrigamiEtherFiEthToEthOracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-390571 | `0xe0db69...23c32b` | ⚠️ Unaudited |
| OrigamiEulerV2BorrowAndLend | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x01e52c...ee0ee2` | ⚠️ Unaudited |
| OrigamiFixedPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x18a900...7cceab` | ⚠️ Unaudited |
| OrigamiGlpInvestment | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x39cfdb...dd32f5` | ⚠️ Unaudited |
| OrigamiGmxEarnAccount | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0b53af...14d4d4` | ⚠️ Unaudited |
| OrigamiGmxInvestment | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0348ea...c8824a` | ⚠️ Unaudited |
| OrigamiGmxManager | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-390582 | `0x588335...49ac24` | ⚠️ Unaudited |
| OrigamiGmxRewardsAggregator | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-390583 | `0x643d71...08317f` | ⚠️ Unaudited |
| OrigamiHOhmArbBot | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x593e68...a2330f` | ⚠️ Unaudited |
| OrigamiInfraredVaultManagerDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x4a3c19...44e7d1` | ⚠️ Unaudited |
| OrigamiInfraredVaultProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x2ec777...d08b79` | ⚠️ Unaudited |
| OrigamiInvestmentVault | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-390586 | `0x7fc862...619eda` | ⚠️ Unaudited |
| OrigamiLanternOffering | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x727d8f...8cf3e3` | ⚠️ Unaudited |
| OrigamiLovTokenFlashAndBorrowManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x013c51...ac13e2` | ⚠️ Unaudited |
| OrigamiLovTokenMorphoManagerMarketAL | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390543 | `0x71578e...8da22a` | ⚠️ Unaudited |
| OrigamiMorphoBorrowAndLend | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390511 | `0x034011...533e3b` | ⚠️ Unaudited |
| OrigamiOFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x5bad2b...f948ea` | ⚠️ Unaudited |
| OrigamiScaledOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x736fdf...404cad` | ⚠️ Unaudited |
| OrigamiStableChainlinkOracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-390519 | `0x1b1844...8d55e4` | ⚠️ Unaudited |
| OrigamiSuperSavingsUsdsManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05654f...435c13` | ⚠️ Unaudited |
| OrigamiSuperSavingsUsdsVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f90a6...a84800` | ⚠️ Unaudited |
| OrigamiSwapperWithLiquidityManagement | unknown | project_anchor | own_supporting | 0 | berachain | unit-390598 | `0x1511ad...7ceb47` | ⚠️ Unaudited |
| OrigamiTokenRecovery | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0cbb58...534ef6` | ⚠️ Unaudited |
| OrigamiWstEthToEthOracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-390524 | `0x2848d9...fbad77` | ⚠️ Unaudited |
| RsEthToEthExchangeRateAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbac9fc...bbcd80` | ⚠️ Unaudited |
| RswEthToEthExchangeRateAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2b18e...a2d582` | ⚠️ Unaudited |
| SwEthToEthExchangeRateAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x88154f...5d06e3` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x85a602...40bdfb` | ⚠️ Unaudited |
| TokenPrices | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x39cfdb...dd32f5` | ⚠️ Unaudited |
| WeEthToEthExchangeRateAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4270e1...28f828` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (102)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390515 | `0x0b53af...14d4d4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390517 | `0x117b36...0d845d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390518 | `0x180f4d...118129` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390521 | `0x235e2a...fc1394` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390523 | `0x26df94...1321a7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390525 | `0x2ec777...d08b79` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390526 | `0x2f80ee...fa1709` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390528 | `0x3963d8...bdefe6` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-390529 | `0x39cfdb...dd32f5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390531 | `0x42cd29...f5d342` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390532 | `0x43947f...d0d111` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390534 | `0x4e5686...0a5ea2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390535 | `0x5383bf...b23b79` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390536 | `0x550433...c98299` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390539 | `0x68011e...361925` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390542 | `0x71520c...b2f26a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390544 | `0x76cf78...4ee407` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-390546 | `0x784f75...1c831d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390547 | `0x78f310...29a8e6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390548 | `0x7d7609...c76603` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390549 | `0x7fc862...619eda` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390553 | `0x9c1f72...8a5247` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390554 | `0x9fa6d1...dbe53c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390555 | `0xaedddb...ff212e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390556 | `0xb26631...352d96` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390557 | `0xb48ac9...f76df2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390558 | `0xb9dad3...877187` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390559 | `0xbfa722...1a9ce6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390560 | `0xc03c43...d17ea5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390561 | `0xc1a249...0203cd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390562 | `0xc24248...ebc6de` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390564 | `0xc65a88...35d2e5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390565 | `0xc8a26a...8be32c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390566 | `0xc9632e...e8e3a9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390572 | `0xe488a6...323bae` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390573 | `0xe567dc...7abf4e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390574 | `0xe6b1f8...e48f17` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390577 | `0xed95cf...f1e83c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390578 | `0xefc8ed...fb7e93` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390579 | `0xf7ed9c...d28cdc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390580 | `0xf919e7...9c322c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-390584 | `0x73957e...3def9b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-390585 | `0x784f75...1c831d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-390587 | `0x9b517e...12134e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-390588 | `0xb48ac9...f76df2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-390589 | `0xc0f9dd...e79562` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-390590 | `0xc3431d...5c2a94` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-390591 | `0xcb6d80...1c82ba` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-390592 | `0xe488a6...323bae` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390595 | `0x081eb2...e9e7e4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390596 | `0x0a377e...e68b30` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390597 | `0x0f678e...7ae111` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390601 | `0x252cb4...486384` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390602 | `0x294d88...ce242b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390603 | `0x2a66de...110b21` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390604 | `0x3190ee...247b89` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390605 | `0x32bc5e...2fc1f6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390606 | `0x345c31...37539d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390608 | `0x3ed86a...af9896` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390611 | `0x50c10f...727e91` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390612 | `0x537486...ff796f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390613 | `0x564f0f...561999` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390614 | `0x68233f...e40823` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390615 | `0x6834ff...c545e6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390616 | `0x69f1e9...29a30a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390617 | `0x6a3be0...ed9207` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390618 | `0x7a1bb5...e03afc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390619 | `0x7c6e5c...7f44c5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390620 | `0x857142...997207` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390621 | `0x87ec88...d65237` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390624 | `0x8b21aa...82e305` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390625 | `0x8e0084...f5602b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390626 | `0x90b724...cec557` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390629 | `0x9e5cbe...df2aa4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390630 | `0xa109af...c6dd1a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390631 | `0xa128a1...dc5b58` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390632 | `0xa16335...bab9c2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390634 | `0xa77715...dccc69` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390635 | `0xaa784e...124387` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390636 | `0xab35a4...974ec4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390638 | `0xb1952d...d23fb3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390639 | `0xb9234c...fef0e1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390640 | `0xb9c3dc...2ec384` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390641 | `0xbd2f11...1afb92` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390642 | `0xbd884d...96d263` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390644 | `0xc6a91d...6cac7b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390646 | `0xcdb967...f872c8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390647 | `0xd6d5c6...edb3bc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390648 | `0xd7f54c...fffb0c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390649 | `0xd88ded...ce3beb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390650 | `0xd8c27d...86e1b9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390651 | `0xdb1591...a7b754` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390652 | `0xdfd251...af9a60` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390654 | `0xe14182...86d24c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390655 | `0xe38695...103521` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390656 | `0xe3a215...fe7b78` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390657 | `0xe49bc7...2288fa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390658 | `0xe7c153...243a53` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390659 | `0xe8bd04...f3a671` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390660 | `0xee6796...ac4b72` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390661 | `0xf47aa2...3bed40` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390664 | `0xfcb6c2...b0df8a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Jacopod OPAL Report](https://github.com/TempleDAO/origami-public/blob/main/audits/opal/jacopod_opal.pdf) | Jacopod | Audit | 2026-02 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [Panprog OPAL Report](https://github.com/TempleDAO/origami-public/blob/main/audits/opal/panprog-opal.pdf) | Panprog | Audit | 2025-12 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [Panprog Bundler Report](https://github.com/TempleDAO/origami-public/blob/main/audits/opal/panprog-bundler.pdf) | Panprog | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 12 | high |
| [Nethermind OPAL Report](https://github.com/TempleDAO/origami-public/blob/main/audits/opal/nethermind_opal.pdf) | Nethermind | Audit | 2025-12 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [Nethermind Bundler Report](https://github.com/TempleDAO/origami-public/blob/main/audits/opal/nethermind_bundler.pdf) | Nethermind | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [Bundler3 Spearbit Report](https://github.com/morpho-org/bundler3/blob/main/audits/2025-01-02-bundler3-spearbit.pdf) | Spearbit | Audit | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [Bundler3 Updated Spearbit Report](https://github.com/morpho-org/bundler3/blob/main/audits/2025-02-17-bundler3-update-spearbit.pdf) | Spearbit | Audit | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | medium |
| [Bundler3 Updated Open Zeppelin Report](https://github.com/morpho-org/bundler3/blob/main/audits/2025-02-18-bundler3-with-update-open-zeppelin.pdf) | OpenZeppelin | Audit | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 28 | high |
| [Electisec Report (CowSwapper Re-Audit)](https://github.com/TempleDAO/origami-public/blob/main/audits/cow-swapper/cow-swapper-electisec.pdf) | Electisec | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Jacopod Report (SKY+)](https://github.com/TempleDAO/origami-public/blob/main/audits/SKY%2B/SKY%2B-jacopod.pdf) | Jacopod | Audit | 2025-06 | aging | Direct | contract_name | matched | 2 | 0 | 0 | 3 | high |
| [SBSecurity Report (sUSDS+)](https://github.com/TempleDAO/origami-public/blob/main/audits/sUSDS%2Bs/sUSDS%2Bs-SBSecurity.pdf) | SBSecurity | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Jacopod Report](https://github.com/TempleDAO/origami-public/blob/main/audits/auto-staking/jacopod-autostaking.pdf) | Jacopod | Audit | 2025-05 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 5 | high |
| [Nethermind Report](https://github.com/TempleDAO/origami-public/blob/main/audits/hOHM/Nethermind_hOHM.pdf) | Nethermind | Audit | 2025-04 | aging | Direct | contract_name | matched | 4 | 0 | 0 | 9 | high |
| [Panprog Report](https://github.com/TempleDAO/origami-public/blob/main/audits/hOHM/Panprog_hOHM.pdf) | Panprog | Audit | 2025-03 | aging | Direct | contract_name | matched | 4 | 0 | 0 | 5 | high |
| [Electisec Report (Migrator)](https://github.com/TempleDAO/origami-public/blob/main/audits/hOHM/Electisec_hOHM_Migrator.pdf) | Electisec | Audit | 2025-03 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 0 | high |
| [Electisec Report](https://github.com/TempleDAO/origami-public/blob/main/audits/hOHM/Electisec_hOHM.pdf) | Electisec | Audit | 2025-03 | aging | Direct | contract_name | matched | 4 | 0 | 0 | 5 | high |
| [Panprog Report](https://github.com/TempleDAO/origami-public/blob/main/audits/eulerBorrowLend/panprog_lovTokenEulerAdapter.pdf) | Panprog | Audit | 2025-04 | aging | Direct | contract_name | matched | 2 | 0 | 0 | 2 | high |
| [Pyro Report](https://github.com/TempleDAO/origami-public/blob/main/audits/oriBGT/oriBGT-audit-pyro.pdf) | Pyro | Audit | 2025-03 | aging | Direct | contract_name | matched | 3 | 0 | 0 | 1 | high |
| [Jacopod Report](https://github.com/TempleDAO/origami-public/blob/main/audits/oriBGT/oriBGT-audit-jacopod.pdf) | Jacopod | Audit | 2025-03 | aging | Direct | contract_name | matched | 3 | 0 | 0 | 1 | high |
| [Panprog Report](https://github.com/TempleDAO/origami-public/blob/main/audits/boyco/Panprog_Audit_Report-Origami_Boyco.pdf) | Panprog | Audit | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [Halborn Report](https://github.com/TempleDAO/origami-public/blob/main/audits/boyco/Halborn_Audit_Report-Origami_Boyco.pdf) | Halborn | Audit | 2024-12 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [Zellic Report](https://github.com/TempleDAO/origami-public/blob/main/audits/origami-v2/Origami%20Finance%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2024-01 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 18 | high |
| [<img src="/files/2gef4EG77ADA9eg9jvO9" alt="" data-size="line"> yAudit Report](https://reports.yaudit.dev/01-2023-TempleDAO-Origami) | yAudit | Audit | 2023-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [yAudit Report Recheck](https://reports.yaudit.dev/02-2023-TempleDAO-Origami-Recheck) | yAudit | Audit | 2023-02 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [morpho-auto-compounder-jacopod.pdf](https://github.com/TempleDAO/origami-public/blob/main/audits/morpho-auto-compounder/morpho-auto-compounder-jacopod.pdf) | Jacopod | Audit | 2025-07 | aging | Direct | contract_name | matched | 2 | 0 | 0 | 7 | high |
| [01-2023-TempleDao-Origami-yAcademy-Report.pdf](https://github.com/TempleDAO/origami-public/blob/main/audits/origami-v1/01-2023-TempleDao-Origami-yAcademy-Report.pdf) | yAcademy | Audit | 2023-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [02-2023-TempleDao-Origami-Recheck-yAcademy-Report.pdf](https://github.com/TempleDAO/origami-public/blob/main/audits/origami-v1/02-2023-TempleDao-Origami-Recheck-yAcademy-Report.pdf) | yAcademy | Audit | 2023-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | medium |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [17892] Jacopod OPAL Report — no match: Scope table lists 6 files; architecture review mentions 2 additional adapters (Euler, Morpho) as main contracts. Audit date from cover page.
- [17893] Panprog OPAL Report — no match: All contracts listed in scope section with file paths. Audit date from cover page: December 2, 2025.
- [17894] Panprog Bundler Report — no match: All contracts listed in scope section of the audit report.
- [17895] Nethermind OPAL Report — no match: All 8 contracts from the Audited Files table are in scope. The audit date is December 01, 2025 from the cover page.
- [17896] Nethermind Bundler Report — no match: All contracts listed in the 'Audited Files' table on page 3 of the report.
- [17897] Bundler3 Spearbit Report — no match: Extracted contract names from findings context and file paths mentioned in the report. No explicit scope section found, but contracts are clearly part of the audited codebase.
- [17898] Bundler3 Updated Spearbit Report — no match: No explicit scope section; contracts inferred from findings and context. Audit date from cover page.
- [17899] Bundler3 Updated Open Zeppelin Report — no match: Extracted all contracts from scope section and fully audited new files. Audit date from cover page: February 18, 2025.
- [17900] Electisec Report (CowSwapper Re-Audit) — no match: Only one contract file was audited: OrigamiCowSwapper.sol. The audit period is given as 2025-07-14 to 2025-07-15, and the review summary states the code review was performed between those dates. The end date 2025-07-15 is used as the audit date.
- [17901] Jacopod Report (SKY+) — matched: All contracts listed in the 'Files in scope' table are extracted. The audit date is from the cover page.
- [17902] SBSecurity Report (sUSDS+) — no match: Scope table lists four contracts: OrigamiErc4626.sol, OrigamiCowSwapper.sol, OrigamiSuperSavingsUsdsManager.sol, OrigamiSuperSavingsUsdsVault.sol. Audit date from title: Oct 5, 2024.
- [17903] Jacopod Report — matched: Extracted 6 contracts from the scope table in the report. Audit date is the mitigation review delivery date (2025-05-14) as the main review end date is 2025-05-13 but the report date is 2025-05-14.
- [17904] Nethermind Report — matched: All 13 contracts from the Audited Files table were extracted. The audit date is April 04, 2025 from the cover page and summary table.
- [17905] Panprog Report — matched: All 9 contracts listed in the scope section with file paths. Audit date is March 7, 2025 (fixes reviewed date).
- [17906] Electisec Report (Migrator) — matched: Only one contract in scope: OrigamiCoolerMigrator. Audit date inferred from review period March 18-19, 2025.
- [17907] Electisec Report — matched: All contracts listed in the Scope section of the audit report were extracted. The audit date is the end date of the review period (March 6, 2025).
- [17908] Panprog Report — matched: All four contracts listed in scope section with file paths.
- [17909] Pyro Report — matched: Scope table lists two contracts; system overview mentions two additional contracts that are part of the audited system.
- [17910] Jacopod Report — matched: Extracted 4 contracts from the scope table. Audit date from document header.
- [17911] Panprog Report — no match: All 11 files listed in scope section. Audit date from cover page.
- [17912] Halborn Report — no match: Scope section explicitly lists 5 contracts with file paths. Audit date is the end date of engagement: December 16th, 2024.
- [17913] Zellic Report — matched: Extracted 19 contract names from the scope section and threat model modules. The audit date is January 26, 2024, as stated on the cover page and throughout the document.
- [17914] <img src="/files/2gef4EG77ADA9eg9jvO9" alt="" data-size="line"> yAudit Report — no match: The provided text is a header/footer snippet with no contract names or scope details.
- [17915] yAudit Report Recheck — no match: No scope section or contract names found in the provided text.
- [17916] morpho-auto-compounder-jacopod.pdf — matched: All contracts listed in the 'Files in scope' table (section 6.1) are extracted. The audit date is from the cover page: July 22, 2025.
- [17917] 01-2023-TempleDao-Origami-yAcademy-Report.pdf — no match: Scope defined as files in contracts/investments/* and contracts/common/*. Contract names extracted from findings and file references.
- [17918] 02-2023-TempleDao-Origami-Recheck-yAcademy-Report.pdf — no match: Scope directories: contracts/investments/* and contracts/common/*. Specific contract names extracted from file paths and findings. MintableToken is mentioned but not explicitly in scope table; assumed part of investments. Date from review period end (Feb 26, 2023).

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Jacopod OPAL Report | OpalAdapterFactory | unmatched — not counted | — | listed in scope table | no |
| Jacopod OPAL Report | OpalManager | unmatched — not counted | — | listed in scope table | no |
| Jacopod OPAL Report | OpalMaxJoinExitLib | unmatched — not counted | — | listed in scope table | no |
| Jacopod OPAL Report | OpalVault | unmatched — not counted | — | listed in scope table | no |
| Jacopod OPAL Report | OpalAdapterAaveV3 | unmatched — not counted | — | listed in scope table | no |
| Jacopod OPAL Report | OpalAdapterBase | unmatched — not counted | — | listed in scope table | no |
| Jacopod OPAL Report | OpalAdapterEuler | unmatched — not counted | — | mentioned in architecture review as main contract | no |
| Jacopod OPAL Report | OpalAdapterMorpho | unmatched — not counted | — | mentioned in architecture review as main contract | no |
| Panprog OPAL Report | OpalVault | unmatched — not counted | — | listed in scope | no |
| Panprog OPAL Report | OpalManager | unmatched — not counted | — | listed in scope | no |
| Panprog OPAL Report | OpalAdapterFactory | unmatched — not counted | — | listed in scope | no |
| Panprog OPAL Report | OpalAdapterBase | unmatched — not counted | — | listed in scope | no |
| Panprog OPAL Report | OpalAdapterSpotAssets | unmatched — not counted | — | listed in scope | no |
| Panprog OPAL Report | OpalAdapterAaveV3 | unmatched — not counted | — | listed in scope | no |
| Panprog OPAL Report | OpalAdapterMorpho | unmatched — not counted | — | listed in scope | no |
| Panprog OPAL Report | OpalAdapterEuler | unmatched — not counted | — | listed in scope | no |
| Panprog Bundler Report | OrigamiBundler | unmatched — not counted | — | listed in scope | no |
| Panprog Bundler Report | OrigamiBundlerPluginCore | unmatched — not counted | — | listed in scope | no |
| Panprog Bundler Report | OrigamiBundlerPluginMultiAccess | unmatched — not counted | — | listed in scope | no |
| Panprog Bundler Report | OrigamiBundlerPluginEntryPoint | unmatched — not counted | — | listed in scope | no |
| Panprog Bundler Report | OrigamiBundlerPluginOhmStaking | unmatched — not counted | — | listed in scope | no |
| Panprog Bundler Report | OrigamiBundlerPluginTbsV1 | unmatched — not counted | — | listed in scope | no |
| Panprog Bundler Report | OrigamiBundlerPluginTbsV2 | unmatched — not counted | — | listed in scope | no |
| Panprog Bundler Report | OrigamiBundlerPluginKyberSwap | unmatched — not counted | — | listed in scope | no |
| Panprog Bundler Report | OrigamiBundlerPluginAaveV3Flash | unmatched — not counted | — | listed in scope | no |
| Panprog Bundler Report | OrigamiBundlerPluginMorphoFlash | unmatched — not counted | — | listed in scope | no |
| Panprog Bundler Report | OrigamiBundlerPluginPendleSwap | unmatched — not counted | — | listed in scope | no |
| Panprog Bundler Report | PendleRouterScalingLib | unmatched — not counted | — | listed in scope | no |
| Nethermind OPAL Report | OpalAdapterFactory | unmatched — not counted | — | listed in Audited Files table | no |
| Nethermind OPAL Report | OpalVault | unmatched — not counted | — | listed in Audited Files table | no |
| Nethermind OPAL Report | OpalManager | unmatched — not counted | — | listed in Audited Files table | no |
| Nethermind OPAL Report | OpalAdapterAaveV3 | unmatched — not counted | — | listed in Audited Files table | no |
| Nethermind OPAL Report | OpalAdapterSpotAssets | unmatched — not counted | — | listed in Audited Files table | no |
| Nethermind OPAL Report | OpalAdapterEuler | unmatched — not counted | — | listed in Audited Files table | no |
| Nethermind OPAL Report | OpalAdapterMorpho | unmatched — not counted | — | listed in Audited Files table | no |
| Nethermind OPAL Report | OpalAdapterBase | unmatched — not counted | — | listed in Audited Files table | no |
| Nethermind Bundler Report | OrigamiBundler | unmatched — not counted | — | Listed in Audited Files table | no |
| Nethermind Bundler Report | OrigamiBundlerPluginEntryPoint | unmatched — not counted | — | Listed in Audited Files table | no |
| Nethermind Bundler Report | OrigamiBundlerPluginCore | unmatched — not counted | — | Listed in Audited Files table | no |
| Nethermind Bundler Report | OrigamiBundlerPluginTbsV1 | unmatched — not counted | — | Listed in Audited Files table | no |
| Nethermind Bundler Report | OrigamiBundlerPluginTbsV2 | unmatched — not counted | — | Listed in Audited Files table | no |
| Nethermind Bundler Report | OrigamiBundlerPluginKyberSwap | unmatched — not counted | — | Listed in Audited Files table | no |
| Nethermind Bundler Report | OrigamiBundlerPluginMultiAccess | unmatched — not counted | — | Listed in Audited Files table | no |
| Nethermind Bundler Report | OrigamiBundlerPluginAaveV3Flash | unmatched — not counted | — | Listed in Audited Files table | no |
| Nethermind Bundler Report | OrigamiBundlerPluginOhmStaking | unmatched — not counted | — | Listed in Audited Files table | no |
| Bundler3 Spearbit Report | Bundler | unmatched — not counted | — | mentioned in executive summary and findings | no |
| Bundler3 Spearbit Report | EthereumGeneralAdapter1 | unmatched — not counted | — | listed in findings context | no |
| Bundler3 Spearbit Report | GeneralAdapter1 | unmatched — not counted | — | listed in findings context | no |
| Bundler3 Spearbit Report | ParaswapAdapter | unmatched — not counted | — | listed in findings context | no |
| Bundler3 Spearbit Report | CoreAdapter | unmatched — not counted | — | listed in findings context | no |
| Bundler3 Spearbit Report | AaveV2MigrationAdapter | unmatched — not counted | — | listed in findings context | no |
| Bundler3 Spearbit Report | AaveV3MigrationAdapter | unmatched — not counted | — | listed in findings context | no |
| Bundler3 Spearbit Report | CompoundV2MigrationAdapter | unmatched — not counted | — | listed in findings context | no |
| Bundler3 Spearbit Report | CompoundV3MigrationAdapter | unmatched — not counted | — | listed in findings context | no |
| Bundler3 Spearbit Report | BytesLib | unmatched — not counted | — | listed in findings context | no |
| Bundler3 Updated Spearbit Report | GeneralAdapter1 | unmatched — not counted | — | mentioned in findings context | no |
| Bundler3 Updated Spearbit Report | ERC20WrapperAdapter | unmatched — not counted | — | mentioned in recommendation as new standalone adapter | no |
| Bundler3 Updated Spearbit Report | CoreAdapter | unmatched — not counted | — | mentioned in findings context | no |
| Bundler3 Updated Open Zeppelin Report | Bundler | unmatched — not counted | — | listed in scope | no |
| Bundler3 Updated Open Zeppelin Report | CoreAdapter | unmatched — not counted | — | listed in scope | no |
| Bundler3 Updated Open Zeppelin Report | EthereumGeneralAdapter1 | unmatched — not counted | — | listed in scope | no |
| Bundler3 Updated Open Zeppelin Report | GeneralAdapter1 | unmatched — not counted | — | listed in scope | no |
| Bundler3 Updated Open Zeppelin Report | AaveV2MigrationAdapter | unmatched — not counted | — | listed in scope | no |
| Bundler3 Updated Open Zeppelin Report | AaveV3MigrationAdapter | unmatched — not counted | — | listed in scope | no |
| Bundler3 Updated Open Zeppelin Report | AaveV3OptimizerMigrationAdapter | unmatched — not counted | — | listed in scope | no |
| Bundler3 Updated Open Zeppelin Report | CompoundV2MigrationAdapter | unmatched — not counted | — | listed in scope | no |
| Bundler3 Updated Open Zeppelin Report | CompoundV3MigrationAdapter | unmatched — not counted | — | listed in scope | no |
| Bundler3 Updated Open Zeppelin Report | IAaveV2 | unmatched — not counted | — | listed in scope | no |
| Bundler3 Updated Open Zeppelin Report | IAaveV3 | unmatched — not counted | — | listed in scope | no |
| Bundler3 Updated Open Zeppelin Report | IAaveV3Optimizer | unmatched — not counted | — | listed in scope | no |
| Bundler3 Updated Open Zeppelin Report | IBundler | unmatched — not counted | — | listed in scope | no |
| Bundler3 Updated Open Zeppelin Report | ICEth | unmatched — not counted | — | listed in scope | no |
| Bundler3 Updated Open Zeppelin Report | ICToken | unmatched — not counted | — | listed in scope | no |
| Bundler3 Updated Open Zeppelin Report | ICompoundV3 | unmatched — not counted | — | listed in scope | no |
| Bundler3 Updated Open Zeppelin Report | IComptroller | unmatched — not counted | — | listed in scope | no |
| Bundler3 Updated Open Zeppelin Report | IDaiPermit | unmatched — not counted | — | listed in scope | no |
| Bundler3 Updated Open Zeppelin Report | IStEth | unmatched — not counted | — | listed in scope | no |
| Bundler3 Updated Open Zeppelin Report | IWNative | unmatched — not counted | — | listed in scope | no |
| Bundler3 Updated Open Zeppelin Report | IWstEth | unmatched — not counted | — | listed in scope | no |
| Bundler3 Updated Open Zeppelin Report | BytesLib | unmatched — not counted | — | listed in scope | no |
| Bundler3 Updated Open Zeppelin Report | ErrorsLib | unmatched — not counted | — | listed in scope | no |
| Bundler3 Updated Open Zeppelin Report | MathRayLib | unmatched — not counted | — | listed in scope | no |
| Bundler3 Updated Open Zeppelin Report | UtilsLib | unmatched — not counted | — | listed in scope | no |
| Bundler3 Updated Open Zeppelin Report | ParaswapAdapter | unmatched — not counted | — | fully audited new file | no |
| Bundler3 Updated Open Zeppelin Report | IParaswapAdapter | unmatched — not counted | — | fully audited new file | no |
| Bundler3 Updated Open Zeppelin Report | IAugustusRegistry | unmatched — not counted | — | fully audited new file | no |
| Electisec Report (CowSwapper Re-Audit) | OrigamiCowSwapper | unmatched — not counted | — | listed in Audited Files section | no |
| Jacopod Report (SKY+) | ISkyLockstakeEngine | unmatched — not counted | — | listed in scope table | no |
| Jacopod Report (SKY+) | ISkyStakingRewards | unmatched — not counted | — | listed in scope table | no |
| Jacopod Report (SKY+) | ISkyVat | unmatched — not counted | — | listed in scope table | no |
| Jacopod Report (SKY+) | OrigamiSuperSkyManager | own contract | OrigamiSuperSkyManager (selected) `0xc52233...49dc9e` — deployed 2025-06-26 06:03:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Jacopod Report (SKY+) | OrigamiDelegated4626Vault | own contract | OrigamiDelegated4626Vault (selected) `0x07c550...3cf5a2` — deployed 2025-06-26 06:02:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SBSecurity Report (sUSDS+) | OrigamiErc4626 | unmatched — not counted | — | listed in scope table | no |
| SBSecurity Report (sUSDS+) | OrigamiCowSwapper | unmatched — not counted | — | listed in scope table | no |
| SBSecurity Report (sUSDS+) | OrigamiSuperSavingsUsdsManager | unmatched — not counted | — | listed in scope table | no |
| SBSecurity Report (sUSDS+) | OrigamiSuperSavingsUsdsVault | unmatched — not counted | — | listed in scope table | no |
| Jacopod Report | OrigamiAutoStakingFactory | unmatched — not counted | — | listed in scope table | no |
| Jacopod Report | OrigamiAutoStakingToErc4626Deployer | unmatched — not counted | — | listed in scope table | no |
| Jacopod Report | OrigamiSwapperWithCallbackDeployer | unmatched — not counted | — | listed in scope table | no |
| Jacopod Report | OrigamiAutoStakingToErc4626 | own contract | OrigamiAutoStakingToErc4626 (selected) `0x1a0730...e3f67f` — deployed 2025-05-14 07:05:56+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Jacopod Report | OrigamiAutoStaking | unmatched — not counted | — | listed in scope table | no |
| Jacopod Report | MultiRewards | unmatched — not counted | — | listed in scope table | no |
| Nethermind Report | OlympusCoolerDelegation | unmatched — not counted | — | listed in Audited Files table | no |
| Nethermind Report | OrigamiTokenizedBalanceSheetVault | unmatched — not counted | — | listed in Audited Files table | no |
| Nethermind Report | OrigamiSwapperWithCallback | own contract | OrigamiSwapperWithCallback (selected) `0x23d774...8c80db` — deployed 2025-03-17 02:31:02+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Nethermind Report | OrigamiElevatedAccess | unmatched — not counted | — | listed in Audited Files table | no |
| Nethermind Report | Whitelisted | unmatched — not counted | — | listed in Audited Files table | no |
| Nethermind Report | OrigamiOftElevatedAccess | unmatched — not counted | — | listed in Audited Files table | no |
| Nethermind Report | OrigamiElevatedAccessUpgradeable | unmatched — not counted | — | listed in Audited Files table | no |
| Nethermind Report | OrigamiElevatedAccessBase | unmatched — not counted | — | listed in Audited Files table | no |
| Nethermind Report | OrigamiTokenTeleporter | own contract | OrigamiTokenTeleporter (selected) `0xce3990...83932a` — deployed 2025-05-08 02:42:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Nethermind Report | OrigamiTeleportableToken | unmatched — not counted | — | listed in Audited Files table | no |
| Nethermind Report | OrigamiOFT | unmatched — not counted | — | listed in Audited Files table | no |
| Nethermind Report | OrigamiHOhmManager | own contract | OrigamiHOhmManager (selected) `0xe6c5dc...2cf3ff` — deployed 2025-05-07 11:36:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Nethermind Report | OrigamiHOhmVault | own contract | OrigamiHOhmVault (selected) `0x1db159...8844f6` — deployed 2025-05-07 11:35:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Panprog Report | OrigamiTokenizedBalanceSheetVault | unmatched — not counted | — | listed in scope | no |
| Panprog Report | OrigamiOftElevatedAccess | unmatched — not counted | — | listed in scope | no |
| Panprog Report | OrigamiOFT | unmatched — not counted | — | listed in scope | no |
| Panprog Report | OrigamiTeleportableToken | unmatched — not counted | — | listed in scope | no |
| Panprog Report | OrigamiTokenTeleporter | own contract | OrigamiTokenTeleporter (selected) `0xce3990...83932a` — deployed 2025-05-08 02:42:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Panprog Report | OrigamiSwapperWithCallback | own contract | OrigamiSwapperWithCallback (selected) `0x23d774...8c80db` — deployed 2025-03-17 02:31:02+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Panprog Report | OrigamiHOhmManager | own contract | OrigamiHOhmManager (selected) `0xe6c5dc...2cf3ff` — deployed 2025-05-07 11:36:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Panprog Report | OrigamiHOhmVault | own contract | OrigamiHOhmVault (selected) `0x1db159...8844f6` — deployed 2025-05-07 11:35:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Panprog Report | OlympusCoolerDelegation | unmatched — not counted | — | listed in scope | no |
| Electisec Report (Migrator) | OrigamiCoolerMigrator | own contract | OrigamiCoolerMigrator (selected) `0x6b3441...415e26` — deployed 2025-05-15 05:27:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Electisec Report | OrigamiTokenizedBalanceSheetVault | unmatched — not counted | — | listed in scope | no |
| Electisec Report | OrigamiOftElevatedAccess | unmatched — not counted | — | listed in scope | no |
| Electisec Report | OrigamiOFT | unmatched — not counted | — | listed in scope | no |
| Electisec Report | OrigamiTeleportableToken | unmatched — not counted | — | listed in scope | no |
| Electisec Report | OrigamiTokenTeleporter | own contract | OrigamiTokenTeleporter (selected) `0xce3990...83932a` — deployed 2025-05-08 02:42:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Electisec Report | OrigamiSwapperWithCallback | own contract | OrigamiSwapperWithCallback (selected) `0x23d774...8c80db` — deployed 2025-03-17 02:31:02+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Electisec Report | OrigamiHOhmManager | own contract | OrigamiHOhmManager (selected) `0xe6c5dc...2cf3ff` — deployed 2025-05-07 11:36:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Electisec Report | OrigamiHOhmVault | own contract | OrigamiHOhmVault (selected) `0x1db159...8844f6` — deployed 2025-05-07 11:35:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Electisec Report | OlympusCoolerDelegation | unmatched — not counted | — | listed in scope | no |
| Panprog Report | OrigamiEulerV2BorrowAndLend | unmatched — not counted | — | listed in scope | no |
| Panprog Report | OrigamiLovToken | own contract | OrigamiLovToken (selected) `0x0059fd...f06c06` — deployed 2025-04-29 02:12:13+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Panprog Report | OrigamiAbstractLovTokenManager | unmatched — not counted | — | listed in scope | no |
| Panprog Report | OrigamiLovTokenMorphoManager | own contract | OrigamiLovTokenMorphoManager (selected) `0x051dc8...bb1ec3` — deployed 2024-06-13 03:11:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Pyro Report | OrigamiInfraredVaultManager | own contract | OrigamiInfraredVaultManager (selected) `0x05d346...457b79` — deployed 2025-07-17 02:27:27+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Pyro Report | OrigamiSwapperWithCallback | own contract | OrigamiSwapperWithCallback (selected) `0x23d774...8c80db` — deployed 2025-03-17 02:31:02+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Pyro Report | OrigamiDelegated4626Vault | own contract | OrigamiDelegated4626Vault (selected) `0x07c550...3cf5a2` — deployed 2025-06-26 06:02:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Pyro Report | OrigamiErc4626vault | unmatched — not counted | — | mentioned in system overview as standard vault inherited by OrigamiDelegated4626Vault | no |
| Jacopod Report | OrigamiSwapperWithCallback | own contract | OrigamiSwapperWithCallback (selected) `0x23d774...8c80db` — deployed 2025-03-17 02:31:02+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Jacopod Report | OrigamiDelegated4626Vault | own contract | OrigamiDelegated4626Vault (selected) `0x07c550...3cf5a2` — deployed 2025-06-26 06:02:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Jacopod Report | OrigamiErc4626 | unmatched — not counted | — | listed in scope table | no |
| Jacopod Report | OrigamiInfraredVaultManager | own contract | OrigamiInfraredVaultManager (selected) `0x05d346...457b79` — deployed 2025-07-17 02:27:27+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Panprog Report | OrigamiBoycoVault | unmatched — not counted | — | listed in scope | no |
| Panprog Report | OrigamiBoycoUsdcManager | unmatched — not counted | — | listed in scope | no |
| Panprog Report | OrigamiBeraRewardsVaultProxy | unmatched — not counted | — | listed in scope | no |
| Panprog Report | OrigamiBeraBgtProxy | unmatched — not counted | — | listed in scope | no |
| Panprog Report | OrigamiBalancerComposableStablePoolHelper | unmatched — not counted | — | listed in scope | no |
| Panprog Report | OrigamiElevatedAccess | unmatched — not counted | — | listed in scope | no |
| Panprog Report | OrigamiElevatedAccessBase | unmatched — not counted | — | listed in scope | no |
| Panprog Report | OrigamiElevatedAccessUpgradeable | unmatched — not counted | — | listed in scope | no |
| Panprog Report | OrigamiErc4626 | unmatched — not counted | — | listed in scope | no |
| Panprog Report | OrigamiManagerPausable | unmatched — not counted | — | listed in scope | no |
| Panprog Report | OrigamiMath | unmatched — not counted | — | listed in scope | no |
| Halborn Report | OrigamiBalancerComposableStablePoolHelper | unmatched — not counted | — | listed in scope section | no |
| Halborn Report | OrigamiBeraBgtProxy | unmatched — not counted | — | listed in scope section | no |
| Halborn Report | OrigamiBeraRewardsVaultProxy | unmatched — not counted | — | listed in scope section | no |
| Halborn Report | OrigamiBoycoHoneyManager | unmatched — not counted | — | listed in scope section | no |
| Halborn Report | OrigamiBoycoHoneyVault | unmatched — not counted | — | listed in scope section | no |
| Zellic Report | LinearWithKinkInterestRateModel | unmatched — not counted | — | Listed in scope under 'Programs' as part of common contracts. | no |
| Zellic Report | MintableToken | unmatched — not counted | — | Listed in scope under 'Programs' as part of common contracts. | no |
| Zellic Report | OrigamiAaveV3IdleStrategy | unmatched — not counted | — | Listed in scope under 'Programs' as part of idleStrategy contracts. | no |
| Zellic Report | OrigamiAbstractLovTokenManager | unmatched — not counted | — | Listed in scope under 'Programs' as part of lovToken contracts. | no |
| Zellic Report | OrigamiCircuitBreakerAllUsersPerPeriod | unmatched — not counted | — | Listed in scope under 'Programs' as part of common contracts. | no |
| Zellic Report | OrigamiCircuitBreakerProxy | unmatched — not counted | — | Listed in scope under 'Programs' as part of common contracts. | no |
| Zellic Report | OrigamiCrossRateOracle | unmatched — not counted | — | Listed in scope under 'Programs' as part of common contracts. | no |
| Zellic Report | OrigamiDebtToken | unmatched — not counted | — | Listed in scope under 'Programs' as part of common contracts. | no |
| Zellic Report | OrigamiElevatedAccessBase | unmatched — not counted | — | Listed in scope under 'Programs' as part of common contracts. | no |
| Zellic Report | OrigamiIdleStrategyManager | unmatched — not counted | — | Listed in scope under 'Programs' as part of idleStrategy contracts. | no |
| Zellic Report | OrigamiInvestmentVault | unmatched — not counted | — | Listed in scope under 'Programs' as part of investments contracts. | no |
| Zellic Report | OrigamiLendingClerk | unmatched — not counted | — | Listed in scope under 'Programs' as part of lending contracts. | no |
| Zellic Report | OrigamiLendingRewardsMinter | unmatched — not counted | — | Listed in scope under 'Programs' as part of lending contracts. | no |
| Zellic Report | OrigamiLendingSupplyManager | unmatched — not counted | — | Listed in scope under 'Programs' as part of lending contracts. | no |
| Zellic Report | OrigamiLovTokenErc4626Manager | unmatched — not counted | — | Listed in scope under 'Programs' as part of lovToken contracts. | no |
| Zellic Report | OrigamiLovToken | own contract | OrigamiLovToken (selected) `0x0059fd...f06c06` — deployed 2025-04-29 02:12:13+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Zellic Report | OrigamiOToken | unmatched — not counted | — | Listed in scope under 'Programs' as part of investments contracts. | no |
| Zellic Report | RepricingToken | unmatched — not counted | — | Listed in scope under 'Programs' as part of util contracts. | no |
| Zellic Report | TokenPrices | unmatched — not counted | — | Listed in scope under 'Programs' as part of util contracts. | no |
| morpho-auto-compounder-jacopod.pdf | OrigamiErc4626WithRewardsManager | unmatched — not counted | — | listed in scope table with 408 additions | no |
| morpho-auto-compounder-jacopod.pdf | OrigamiVestingReserves | unmatched — not counted | — | listed in scope table with 111 additions | no |
| morpho-auto-compounder-jacopod.pdf | OrigamiErc4626 | unmatched — not counted | — | listed in scope table with 34 lines | no |
| morpho-auto-compounder-jacopod.pdf | OrigamiDelegated4626Vault | own contract | OrigamiDelegated4626Vault (selected) `0x07c550...3cf5a2` — deployed 2025-06-26 06:02:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| morpho-auto-compounder-jacopod.pdf | OrigamiInfraredVaultManager | own contract | OrigamiInfraredVaultManager (selected) `0x05d346...457b79` — deployed 2025-07-17 02:27:27+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| morpho-auto-compounder-jacopod.pdf | OrigamiBoycoVault | unmatched — not counted | — | listed in scope table with 69 deletions | no |
| morpho-auto-compounder-jacopod.pdf | IOrigamiErc4626WithRewardsManager | unmatched — not counted | — | listed in scope table with 91 additions | no |
| morpho-auto-compounder-jacopod.pdf | IMerklDistributor | unmatched — not counted | — | listed in scope table with 28 additions | no |
| morpho-auto-compounder-jacopod.pdf | IOrigamiVestingReserves | unmatched — not counted | — | listed in scope table with 30 additions | no |
| 01-2023-TempleDao-Origami-yAcademy-Report.pdf | OrigamiGmxEarnAccount | unmatched — not counted | — | mentioned in findings and scope directories | no |
| 01-2023-TempleDao-Origami-yAcademy-Report.pdf | OrigamiGmxInvestment | unmatched — not counted | — | mentioned in findings | no |
| 01-2023-TempleDao-Origami-yAcademy-Report.pdf | OrigamiGmxManager | unmatched — not counted | — | mentioned in findings | no |
| 01-2023-TempleDao-Origami-yAcademy-Report.pdf | MintableToken | unmatched — not counted | — | mentioned in findings | no |
| 01-2023-TempleDao-Origami-yAcademy-Report.pdf | Operator | unmatched — not counted | — | mentioned in findings | no |
| 01-2023-TempleDao-Origami-yAcademy-Report.pdf | TokenPrices | unmatched — not counted | — | mentioned in findings | no |
| 01-2023-TempleDao-Origami-yAcademy-Report.pdf | OrigamiInvestment | unmatched — not counted | — | mentioned in findings | no |
| 02-2023-TempleDao-Origami-Recheck-yAcademy-Report.pdf | Governable | unmatched — not counted | — | listed in scope: contracts/common/* | no |
| 02-2023-TempleDao-Origami-Recheck-yAcademy-Report.pdf | GovernableUpgradeable | unmatched — not counted | — | listed in scope: contracts/common/* | no |
| 02-2023-TempleDao-Origami-Recheck-yAcademy-Report.pdf | MintableToken | unmatched — not counted | — | mentioned in informational finding | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x2432b4...dbb678` | OrigamiAaveV3BorrowAndLend | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x884693...b2e006` | OrigamiAaveV3FlashLoanProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5bf103...b40234` | OrigamiDexAggregatorSwapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x71578e...8da22a` | OrigamiLovTokenMorphoManagerMarketAL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x034011...533e3b` | OrigamiMorphoBorrowAndLend | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x1511ad...7ceb47` | OrigamiSwapperWithLiquidityManagement | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 68 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 102 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 16
- Inherited remapped matches: 0
- Address-book scope dispositions: 27 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 173 unmatched
- Matched-own operational status: 27 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=23, low=2, medium=2
- Match method counts: unique_name=27

Zero-match audit list:

- [17892] Jacopod OPAL Report
- [17893] Panprog OPAL Report
- [17894] Panprog Bundler Report
- [17895] Nethermind OPAL Report
- [17896] Nethermind Bundler Report
- [17897] Bundler3 Spearbit Report
- [17898] Bundler3 Updated Spearbit Report
- [17899] Bundler3 Updated Open Zeppelin Report
- [17900] Electisec Report (CowSwapper Re-Audit)
- [17902] SBSecurity Report (sUSDS+)
- [17911] Panprog Report
- [17912] Halborn Report
- [17914] <img src="/files/2gef4EG77ADA9eg9jvO9" alt="" data-size="line"> yAudit Report
- [17915] yAudit Report Recheck
- [17917] 01-2023-TempleDao-Origami-yAcademy-Report.pdf
- [17918] 02-2023-TempleDao-Origami-Recheck-yAcademy-Report.pdf

Fork inheritance lineage and inherited audits are included when available.
