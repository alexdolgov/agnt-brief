# Agentic Audit Brief: Unit Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 2 audit(s)
- Eligible audit results: 4 (2 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Unit Protocol (`unit-protocol`)
- Website: [https://unitprotocol.org/](https://unitprotocol.org/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, bsc, ethereum, fantom, gnosis, optimism
- Contract surface: 483 unique implementations (483 raw deployments)
- Coverage basis: 1/7 confirmed own live verified implementations (14.3%); conservative 14.3% with 0 needs-review implementation(s)
- DeFi Llama TVL: $169,105.01
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Unit Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 13 contract row(s) across arbitrum, avalanche, bsc, ethereum, fantom, gnosis, optimism. Structural roles: 11 core, 2 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 13
- Structural roles: core (11), supporting (2)
- Contract kinds: contract (13)
- Detected standards: none
- Frameworks: openzeppelin (7), uniswap-v2 (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

2 of 62 contracts are derived from known codebases. 60 contracts have no detected origin.

### Forked Contracts

**ParametersBatchUpdater** (`0x4dd1a6...3cfb6f`, chain 1)
Origin: component (`0x4dd1a6...3cfb6f`)
Containment: 100.0% - 17 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Vault** (`0xb1cff8...7bcf19`, chain 1)
Origin: component (`0xb1cff8...7bcf19`)
Containment: 100.0% - 17 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0770e2...ebe561`, chain 1)
- UnnamedContract (`0x18ed7a...6edc38`, chain 1)
- UnnamedContract (`0x3b088b...100869`, chain 1)
- UnnamedContract (`0x68af7b...e8e21d`, chain 1)
- UnnamedContract (`0x6a99d3...a75e1f`, chain 1)
- UnnamedContract (`0x75fbfe...150c8f`, chain 1)
- UnnamedContract (`0x7ab4ff...c6d857`, chain 1)
- UnnamedContract (`0x9ccbb2...04daf4`, chain 1)
- UnnamedContract (`0xa8c0d2...d78564`, chain 1)
- UnnamedContract (`0xb0bcf6...6d0773`, chain 1)
- UnnamedContract (`0xcba715...fb4894`, chain 1)
- UnnamedContract (`0xcc33c2...b2081d`, chain 1)
- UnnamedContract (`0x0b24d3...e2f98d`, chain 56)
- UnnamedContract (`0x11b1bd...c21d2e`, chain 56)
- UnnamedContract (`0x1337da...73868f`, chain 56)
- UnnamedContract (`0x3f03b9...3abd9d`, chain 56)
- UnnamedContract (`0x56c7ca...f0fb48`, chain 56)
- UnnamedContract (`0x7815ed...621fa1`, chain 56)
- UnnamedContract (`0x852de0...eec39e`, chain 56)
- UnnamedContract (`0x99f2b1...5faf5a`, chain 56)
- UnnamedContract (`0xa1ad36...38465c`, chain 56)
- UnnamedContract (`0xbea721...ce547f`, chain 56)
- UnnamedContract (`0xdacd01...8cffcf`, chain 56)
- UnnamedContract (`0xdacfee...f4dd93`, chain 56)
- UnnamedContract (`0xe8372d...0e24a4`, chain 56)
- UnnamedContract (`0xf4ce55...1929fb`, chain 56)
- UnnamedContract (`0x068e56...9ba761`, chain 100)
- UnnamedContract (`0x0a87fe...b3424d`, chain 100)
- UnnamedContract (`0x22a974...066c43`, chain 100)
- UnnamedContract (`0x2ebb09...27a822`, chain 100)
- UnnamedContract (`0x431fc8...1974de`, chain 100)
- UnnamedContract (`0x767022...b837b8`, chain 100)
- UnnamedContract (`0x861784...0ba8de`, chain 100)
- UnnamedContract (`0x8747e4...d238f3`, chain 100)
- UnnamedContract (`0x8ae98d...968f91`, chain 100)
- UnnamedContract (`0x909555...1b2b19`, chain 100)
- UnnamedContract (`0x9096c4...f28346`, chain 100)
- UnnamedContract (`0xae973a...7a9d3e`, chain 100)
- UnnamedContract (`0xbf1b43...31a0e6`, chain 100)
- UnnamedContract (`0xca5d2e...0f50f6`, chain 100)
- UnnamedContract (`0xfe7ed0...7025b8`, chain 100)
- UnnamedContract (`0x0058ab...b21c7d`, chain 250)
- UnnamedContract (`0x1442bc...19d97e`, chain 250)
- UnnamedContract (`0x1c7aea...d71d2f`, chain 250)
- UnnamedContract (`0x1f18fa...b49def`, chain 250)
- UnnamedContract (`0x3129ac...6d16f8`, chain 250)
- UnnamedContract (`0x5196a9...30fe37`, chain 250)
- UnnamedContract (`0x5bef93...4d89f4`, chain 250)
- UnnamedContract (`0x828bb3...4d9bd3`, chain 250)
- UnnamedContract (`0xa8f0b5...031b6c`, chain 250)
- UnnamedContract (`0xb8b807...c78af4`, chain 250)
- UnnamedContract (`0xc440af...4b0908`, chain 250)
- UnnamedContract (`0xd12d60...075fc3`, chain 250)
- UnnamedContract (`0xd7a9b0...8d958e`, chain 250)
- UnnamedContract (`0xdbf1a7...905305`, chain 250)
- CDPRegistry (`0x1a5ff5...ec650c`, chain 1)
- CollateralRegistry (`0x3db39b...d22ef3`, chain 1)
- USDP (`0x145668...08c925`, chain 1)
- VaultManagerParameters (`0x203153...7d312e`, chain 1)
- VaultParameters (`0xb46f8c...5e9f1d`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 13; live-surface rows included: 13 (7 live, 6 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 62/105 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/7 (14.3%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 62 own, 42 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 379 discovered implementations shown in the inventory but excluded from coverage (64 third-party/infra; 10 standard proxy/library)
- Proxy deployments represented within implementation groups: 20
- Confirmed-live implementations: 62 of 483 unique; 421 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/392
- Verified + Unaudited implementations: 391
- Verified by bytecode match: 0
- Unverified implementations: 91
- Unique implementations: 483
- Raw deployments: 483
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| LevelK | Tier 2 | 1 | 0.3% | 2021-01 |
| yAudit | Tier 2 | 1 | 0.3% | 2020-10 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| USDP | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395401 | `0x145668...08c925` | ✅ Audited |

### ⚠️ Verified + Unaudited (391)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AavePoolController | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x1821c1...259c98` | ⚠️ Unaudited |
| Address | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ed976...ea0aab` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x00815e...0e5561` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0833cf...2d7648` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x1fa69a...cd98c7` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x59fa43...13fce6` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x7fd9da...c47ada` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x835482...d5c77e` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x9c0cae...fc1043` | ⚠️ Unaudited |
| AHv2Repayment | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x141e05...2f629e` | ⚠️ Unaudited |
| AllocationExchange | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a53cf...94385f` | ⚠️ Unaudited |
| APROracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ddc33...919361` | ⚠️ Unaudited |
| APRWithPoolOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x044dad...47ca14` | ⚠️ Unaudited |
| ArmorToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1337de...dfe46a` | ⚠️ Unaudited |
| AssetParametersViewer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd51f50...499af6` | ⚠️ Unaudited |
| BadgerPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0c869...80ef8d` | ⚠️ Unaudited |
| BadgerSettLiquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc743c9...98d817` | ⚠️ Unaudited |
| BancorFormula | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0c61e...3727dc` | ⚠️ Unaudited |
| BasicAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0807d0...41b7c3` | ⚠️ Unaudited |
| BCH_DAI_Reserve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2d578...b69772` | ⚠️ Unaudited |
| BCHGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcabb5e...e1a461` | ⚠️ Unaudited |
| BCHShifter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2095be...0de6cd` | ⚠️ Unaudited |
| BearingAssetOracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-395403 | `0x190db9...1864ab` | ⚠️ Unaudited |
| BearingAssetOracleSimple | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc31629...6b4315` | ⚠️ Unaudited |
| BFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d3303...9b619f` | ⚠️ Unaudited |
| BlackScholesEstimate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b4fd0...5da3dc` | ⚠️ Unaudited |
| Blacksmith | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0b94a...1caed5` | ⚠️ Unaudited |
| BonusRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3423c8...559f89` | ⚠️ Unaudited |
| BSCBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e4ae3...464ed6` | ⚠️ Unaudited |
| BSCWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70266e...cf18ea` | ⚠️ Unaudited |
| BTC_DAI_Reserve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11716a...aee110` | ⚠️ Unaudited |
| BTCShifter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1258d7...61902a` | ⚠️ Unaudited |
| CCapableErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x018a82...9ff5ab` | ⚠️ Unaudited |
| CCollateralCapErc20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a6fd0...2b930f` | ⚠️ Unaudited |
| CCollateralCapErc20NoInterestDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca1041...41c157` | ⚠️ Unaudited |
| CCTokenDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f0800...909b9e` | ⚠️ Unaudited |
| CDPManager01 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e13ab...8f66fa` | ⚠️ Unaudited |
| CDPManager01_Fallback | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad3617...386e15` | ⚠️ Unaudited |
| CDPRegistry | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395404 | `0x1a5ff5...ec650c` | ⚠️ Unaudited |
| CErc20Delegator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x00ce8e...8ae5b8` | ⚠️ Unaudited |
| CErc20Delegator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x00e5c0...c84bf3` | ⚠️ Unaudited |
| CErc20Delegator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x037107...3e2cde` | ⚠️ Unaudited |
| CErc20Delegator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2db6c8...5066d6` | ⚠️ Unaudited |
| CEther | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd06527...2860ee` | ⚠️ Unaudited |
| CEtherDelegator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x258592...4b3c1b` | ⚠️ Unaudited |
| CEtherDelegator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4bec5...af9876` | ⚠️ Unaudited |
| ChainlinkedKeep3rV1OracleMainAsset | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x0ca3de...8a3d21` | ⚠️ Unaudited |
| ChainlinkedKeep3rV1OraclePoolToken | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x3b5f4d...8391e9` | ⚠️ Unaudited |
| ChainlinkedKeydonixOracleMainAsset | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-395423 | `0x769e35...29b6dd` | ⚠️ Unaudited |
| ChainlinkedKeydonixOraclePoolToken | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x11586e...a1c500` | ⚠️ Unaudited |
| ChainlinkedOracleMainAsset | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x0b1754...dae774` | ⚠️ Unaudited |
| ChainlinkPriceOracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x76f24e...4b99d3` | ⚠️ Unaudited |
| ChainlinkPriceOracleV2 | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xb0602a...d20df4` | ⚠️ Unaudited |
| ChainlinkPriceOracleV3 | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x058c34...b2112d` | ⚠️ Unaudited |
| ClaimManagement | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9946f1...8463b2` | ⚠️ Unaudited |
| CollateralMaximizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x494ba8...1b96c1` | ⚠️ Unaudited |
| CollateralRegistry | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395408 | `0x3db39b...d22ef3` | ⚠️ Unaudited |
| Comp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ba592...7cb200` | ⚠️ Unaudited |
| CompensationEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda7b94...4b64c3` | ⚠️ Unaudited |
| COMPfarming | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1532eb...6aa870` | ⚠️ Unaudited |
| CompoundPoolController | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xaf0d83...6af3f4` | ⚠️ Unaudited |
| Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24ccd4...616117` | ⚠️ Unaudited |
| ConverterDAItoYCRV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98158e...8039ca` | ⚠️ Unaudited |
| Cover | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1349c5...15d504` | ⚠️ Unaudited |
| CoverDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2166c7...226454` | ⚠️ Unaudited |
| CoverERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e8b62...6b4eb5` | ⚠️ Unaudited |
| CoverFeeReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe06323...bc8b2e` | ⚠️ Unaudited |
| CoverForge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa92139...59d5f8` | ⚠️ Unaudited |
| CoverPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83085b...3032e2` | ⚠️ Unaudited |
| CoverPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1cb339...304791` | ⚠️ Unaudited |
| CoverRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35e105...bc9540` | ⚠️ Unaudited |
| CreamEth2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49d72e...9fdb64` | ⚠️ Unaudited |
| CreamLiquidate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8584b7...40ca64` | ⚠️ Unaudited |
| CreamLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x780f75...7a8b45` | ⚠️ Unaudited |
| CreamVotingPower | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb146bf...20d0f9` | ⚠️ Unaudited |
| CRON | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e14d0...5d322e` | ⚠️ Unaudited |
| CSLPDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b4722...151ffb` | ⚠️ Unaudited |
| CToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02beff...342ad4` | ⚠️ Unaudited |
| CTokenAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa67b44...2a038d` | ⚠️ Unaudited |
| Curation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d2b24...2c176c` | ⚠️ Unaudited |
| CurveLPOracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-395400 | `0x0e08d9...a8fe08` | ⚠️ Unaudited |
| CurveLpTokenPriceOracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x43c534...5e7a60` | ⚠️ Unaudited |
| CurveTriCryptoLpTokenPriceOracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xb2d169...48fe60` | ⚠️ Unaudited |
| CyTokenOracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-395410 | `0x40b743...dae1d8` | ⚠️ Unaudited |
| DarknodePayment | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x098e17...c370b9` | ⚠️ Unaudited |
| DarknodePaymentMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x085d9b...05f54d` | ⚠️ Unaudited |
| DarknodePaymentStore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x311999...effe49` | ⚠️ Unaudited |
| DarknodeRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x379900...341c2f` | ⚠️ Unaudited |
| DarknodeRegistryForwarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb03201...3058fa` | ⚠️ Unaudited |
| DarknodeRegistryLogicV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f9822...4acecb` | ⚠️ Unaudited |
| DarknodeRegistryProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09e343...017405` | ⚠️ Unaudited |
| DarknodeRegistryProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2d7b6c...054f0a` | ⚠️ Unaudited |
| DarknodeRegistryStore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14add4...98897a` | ⚠️ Unaudited |
| DarknodeRegistryV1ToV2Preupgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e69da...c38f1e` | ⚠️ Unaudited |
| DarknodeRegistryV1ToV2Upgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5945bb...9cfaa5` | ⚠️ Unaudited |
| DarknodeRewardVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x880407...3cd588` | ⚠️ Unaudited |
| DarknodeSlasher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04ed8f...2962f2` | ⚠️ Unaudited |
| DEX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ff192...a8373a` | ⚠️ Unaudited |
| DEXAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9992e9...8d3a58` | ⚠️ Unaudited |
| DisputeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x444c13...a5bfc2` | ⚠️ Unaudited |
| DistributeYFI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x812ac0...cfa017` | ⚠️ Unaudited |
| Distribution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d020e...366555` | ⚠️ Unaudited |
| DistributionAInterest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3eef97...5b8449` | ⚠️ Unaudited |
| DistributionAPrincipal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb6f4d5...06a403` | ⚠️ Unaudited |
| DistributionRewardsProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b1b08...368d6d` | ⚠️ Unaudited |
| DistributionSInterest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfdbd25...2a296b` | ⚠️ Unaudited |
| DistributionSPrincipal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf65b60...411577` | ⚠️ Unaudited |
| DistributionUniPrincipal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0aee80...7e1bd5` | ⚠️ Unaudited |
| DistributionUniSFI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa80f63...def6e0` | ⚠️ Unaudited |
| DSSLeverage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x050cd4...92640e` | ⚠️ Unaudited |
| DummyToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6aade8...4c009e` | ⚠️ Unaudited |
| DYDXERC3156 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6bdc1f...318693` | ⚠️ Unaudited |
| DydxPoolController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x631b0d...2e9bba` | ⚠️ Unaudited |
| DynamicSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x035fb9...4b5f60` | ⚠️ Unaudited |
| EasyConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50697a...224790` | ⚠️ Unaudited |
| EminenceCurrency | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ccea6...559ad4` | ⚠️ Unaudited |
| EpochManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3fab25...d2ee31` | ⚠️ Unaudited |
| ERC677MultiBridgeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ae055...f195e6` | ⚠️ Unaudited |
| FairLaunchCapitalVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a2d0e...c6cc0a` | ⚠️ Unaudited |
| Faketroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6257e3...9fef3f` | ⚠️ Unaudited |
| FeeDistribution | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-395409 | `0x3f93de...82df46` | ⚠️ Unaudited |
| FeeDistributionHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x57a3cc...044a1a` | ⚠️ Unaudited |
| FixedEurPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x817158...463e2a` | ⚠️ Unaudited |
| FixedTokenPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71fe48...807cc5` | ⚠️ Unaudited |
| fKRW | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c08b5...f2893a` | ⚠️ Unaudited |
| ForceTransferAssetStore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7633f...7b24c0` | ⚠️ Unaudited |
| Foundation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x492530...3dc911` | ⚠️ Unaudited |
| FundRescue | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ddbce...202667` | ⚠️ Unaudited |
| fUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d7f09...6dc10f` | ⚠️ Unaudited |
| FuseFeeDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50ce13...707583` | ⚠️ Unaudited |
| FusePoolController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5959db...375311` | ⚠️ Unaudited |
| FYToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef9bfa...75e650` | ⚠️ Unaudited |
| GatewayRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x503670...67a24e` | ⚠️ Unaudited |
| GaugeProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x823fd2...61081c` | ⚠️ Unaudited |
| GelatoGUniPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea3633...992b43` | ⚠️ Unaudited |
| GetOperatorDarknodes | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e27a3...b8b5f0` | ⚠️ Unaudited |
| GNS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28037b...05daeb` | ⚠️ Unaudited |
| GOhmPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x057ecd...9c3249` | ⚠️ Unaudited |
| Governance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7212f...0cb735` | ⚠️ Unaudited |
| GovernorBravoDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f6058...358b39` | ⚠️ Unaudited |
| GraphPreToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d9611...559e10` | ⚠️ Unaudited |
| GraphProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xadca0d...7b6825` | ⚠️ Unaudited |
| GraphProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xf55041...1263b9` | ⚠️ Unaudited |
| GraphProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf3b000...e71430` | ⚠️ Unaudited |
| GraphSale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09695a...afa68b` | ⚠️ Unaudited |
| GraphToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc944e9...da44a7` | ⚠️ Unaudited |
| GraphTokenLockManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x628404...095883` | ⚠️ Unaudited |
| GraphTokenLockSimple | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32ec7a...7f2ca1` | ⚠️ Unaudited |
| GraphTokenLockWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe5e63...5a2255` | ⚠️ Unaudited |
| HarvestPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6141d9...a92514` | ⚠️ Unaudited |
| HegicERCPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7224f2...a1345a` | ⚠️ Unaudited |
| HegicOptions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30a086...e4ae70` | ⚠️ Unaudited |
| HegicOptionsFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x061940...082f23` | ⚠️ Unaudited |
| IBAgreement | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30f254...37f812` | ⚠️ Unaudited |
| IBAgreementV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ae50b...46b3ff` | ⚠️ Unaudited |
| iCollateral | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78705d...f4e025` | ⚠️ Unaudited |
| iCollateralVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb10e11...3b0f69` | ⚠️ Unaudited |
| iCollateralVaultProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06a8fe...3ddcc1` | ⚠️ Unaudited |
| iDAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c5f9d...ca35a0` | ⚠️ Unaudited |
| iDAIZapSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x260fbb...a867fa` | ⚠️ Unaudited |
| IEarnAPR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9cad8a...268eec` | ⚠️ Unaudited |
| IEarnAPRWithPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x029fea...44c9bb` | ⚠️ Unaudited |
| IEarnManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x318135...50edfb` | ⚠️ Unaudited |
| IEarnProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b3680...884bb4` | ⚠️ Unaudited |
| IEther | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75a4d0...cd25eb` | ⚠️ Unaudited |
| InitializableAdminUpgradeabilityProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x7a43b0...51ee52` | ⚠️ Unaudited |
| InitializableClones | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x91ce55...b47415` | ⚠️ Unaudited |
| insuredVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa53e9e...2863d9` | ⚠️ Unaudited |
| insurerVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8813d...457bcf` | ⚠️ Unaudited |
| iTrade | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14a5ca...104e3e` | ⚠️ Unaudited |
| JumpRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x075538...12c1d7` | ⚠️ Unaudited |
| JumpRateModelV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x014872...d2e1a6` | ⚠️ Unaudited |
| Keep3r | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30f358...2f57f1` | ⚠️ Unaudited |
| Keep3rHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb41772...af955e` | ⚠️ Unaudited |
| Keep3rJob | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb68e7d...02d10d` | ⚠️ Unaudited |
| Keep3rV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ceb5c...185a44` | ⚠️ Unaudited |
| Keep3rV1Helper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1530a2...5a5df9` | ⚠️ Unaudited |
| Keep3rV1JobRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x739689...ab620c` | ⚠️ Unaudited |
| Keep3rV1Library | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdaef20...924c93` | ⚠️ Unaudited |
| Keep3rV1Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x733538...70282c` | ⚠️ Unaudited |
| Keep3rV1OracleUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a03b4...f5c080` | ⚠️ Unaudited |
| Keep3rV1Volatility | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x173ed6...132dc9` | ⚠️ Unaudited |
| Keep3rV2Helper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1bf162...c8f6c0` | ⚠️ Unaudited |
| Keep3rV2OracleFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2266be...7880cb` | ⚠️ Unaudited |
| Keep3rV3OracleUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1542ec...ba0f82` | ⚠️ Unaudited |
| LazyHarvest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ea775...c5d0f3` | ⚠️ Unaudited |
| LibCobbDouglas | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb84828...a649fb` | ⚠️ Unaudited |
| LiquidationAuction01 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa41a36...1af6a5` | ⚠️ Unaudited |
| LiquidationAuction02 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaef1ed...d79955` | ⚠️ Unaudited |
| LiquidationOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd82f6d...a3e8ce` | ⚠️ Unaudited |
| LiquidationTriggerChainlinkMainAsset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x854bf6...5baa12` | ⚠️ Unaudited |
| LiquidationTriggerKeep3rMainAsset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b6369...176270` | ⚠️ Unaudited |
| LiquidationTriggerKeep3rPoolToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ca1a5...e93e1e` | ⚠️ Unaudited |
| LiquidationTriggerKeep3rSushiSwapMainAsset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20c854...de57dd` | ⚠️ Unaudited |
| LiquidationTriggerKeep3rSushiSwapPoolToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78d09b...f06027` | ⚠️ Unaudited |
| LiquidationTriggerKeydonixMainAsset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x701a22...16c882` | ⚠️ Unaudited |
| LiquidationTriggerKeydonixPoolToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf6f903...26ab10` | ⚠️ Unaudited |
| LiquidationTriggerSimple | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18485d...0c5917` | ⚠️ Unaudited |
| LiquidityIncome | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x288324...5a56cd` | ⚠️ Unaudited |
| MasterChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2edad...a888cd` | ⚠️ Unaudited |
| MasterPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x188711...4a764d` | ⚠️ Unaudited |
| Maximillion | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x060917...e5aa2f` | ⚠️ Unaudited |
| MetaKeep3r | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93dfa8...0a9372` | ⚠️ Unaudited |
| Migrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x818180...d94830` | ⚠️ Unaudited |
| MiniMeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3472a5...c6e53d` | ⚠️ Unaudited |
| Minter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x708f45...82fb7b` | ⚠️ Unaudited |
| MintGatewayLogicV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a5628...ce22b4` | ⚠️ Unaudited |
| MintGatewayProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x05387a...c6b1aa` | ⚠️ Unaudited |
| MintGatewayUpgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x137730...b04804` | ⚠️ Unaudited |
| MStablePoolController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2afe31...d5fa0e` | ⚠️ Unaudited |
| MultipleDistribution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0218b7...aea918` | ⚠️ Unaudited |
| MultiSend | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x4f85a4...d12ed0` | ⚠️ Unaudited |
| MultiTransfer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdba82d...11e09d` | ⚠️ Unaudited |
| NexusMutualCover | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93a288...de7a28` | ⚠️ Unaudited |
| Normalizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9214a6...f023aa` | ⚠️ Unaudited |
| OptionsV1Library | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48bc6d...76cdd5` | ⚠️ Unaudited |
| OptionsV1Reserve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00fbd1...d86309` | ⚠️ Unaudited |
| OraclePoolToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5968bc...598434` | ⚠️ Unaudited |
| OracleRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10bbe2...e8f38f` | ⚠️ Unaudited |
| OracleV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc92ae5...fa9eda` | ⚠️ Unaudited |
| OracleV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9465f...167f53` | ⚠️ Unaudited |
| Orderbook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b8bb1...2598e0` | ⚠️ Unaudited |
| OSMedianizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf6308...1ed0f1` | ⚠️ Unaudited |
| ParametersBatchUpdater | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395413 | `0x4dd1a6...3cfb6f` | ⚠️ Unaudited |
| PerpToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc3966...233447` | ⚠️ Unaudited |
| PriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01ae37...cab2b1` | ⚠️ Unaudited |
| PriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3abce8...525cf7` | ⚠️ Unaudited |
| PriceOracleProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d8e38...61ae3c` | ⚠️ Unaudited |
| PriceOracleProxyIB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde19f5...297266` | ⚠️ Unaudited |
| PriceProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e94fa...3be471` | ⚠️ Unaudited |
| ProtocolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45d619...0d8d6a` | ⚠️ Unaudited |
| ProtocolLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x547516...bdbadf` | ⚠️ Unaudited |
| ProtocolLogicV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x637278...2447c8` | ⚠️ Unaudited |
| ProtocolProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d880b...69b47a` | ⚠️ Unaudited |
| ProxyAdmin | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x038e3f...886298` | ⚠️ Unaudited |
| QuackedDuck | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab5cf4...22f604` | ⚠️ Unaudited |
| RariFundController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x369855...f4e262` | ⚠️ Unaudited |
| RariFundProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35ddef...42c6e8` | ⚠️ Unaudited |
| RariFundToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17728f...96aa4d` | ⚠️ Unaudited |
| RariGovernanceToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54745f...3596d9` | ⚠️ Unaudited |
| RariGovernanceTokenVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5888e7...66840c` | ⚠️ Unaudited |
| RedeemRSFI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x710c41...bbd9c9` | ⚠️ Unaudited |
| RenERC20LogicV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a2d36...8c1bee` | ⚠️ Unaudited |
| RenERC20Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee2740...7894a7` | ⚠️ Unaudited |
| RenExAtomicSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3fed6...a01cc3` | ⚠️ Unaudited |
| RenExBalances | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ec18b...a77efd` | ⚠️ Unaudited |
| RenExBrokerVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31a0d1...d2e383` | ⚠️ Unaudited |
| RenExSettlement | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x908262...2b21e1` | ⚠️ Unaudited |
| RenExTokens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7cade4...744ec4` | ⚠️ Unaudited |
| RenProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x044906...0ad01c` | ⚠️ Unaudited |
| RenToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e0679...eb40ed` | ⚠️ Unaudited |
| RepublicToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21c482...9fcebd` | ⚠️ Unaudited |
| RERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c983b...024c20` | ⚠️ Unaudited |
| ReserveManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c5bf1...1beaed` | ⚠️ Unaudited |
| RewardsAirdropWithLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0013e1...62ad12` | ⚠️ Unaudited |
| RewardsManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x842ddf...94940e` | ⚠️ Unaudited |
| RgtTempPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b43d7...80aaed` | ⚠️ Unaudited |
| RiskOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x073931...e8fe50` | ⚠️ Unaudited |
| rSFI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5db451...c28510` | ⚠️ Unaudited |
| RULER | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2aeccb...7001f8` | ⚠️ Unaudited |
| RulerAirdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62c66d...e333d6` | ⚠️ Unaudited |
| RulerCore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2446b4...fd5e94` | ⚠️ Unaudited |
| RulerFeeReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70f342...b89002` | ⚠️ Unaudited |
| SafetyRedundancy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6bdfea...fb3c40` | ⚠️ Unaudited |
| SaffronERC20StakingPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0007a7...90719f` | ⚠️ Unaudited |
| SaffronLPBalanceToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0206dc...8a3b1e` | ⚠️ Unaudited |
| SaffronPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0033d4...72f754` | ⚠️ Unaudited |
| SaffronStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ecc64...d82582` | ⚠️ Unaudited |
| SaffronTeamHodl | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90b397...a4d0d3` | ⚠️ Unaudited |
| ServiceRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x866232...f5b3aa` | ⚠️ Unaudited |
| SettlementRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x119da7...551036` | ⚠️ Unaudited |
| SFI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67ce40...eec641` | ⚠️ Unaudited |
| SFITeamSplitter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f04f4...f18908` | ⚠️ Unaudited |
| ShifterRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d4713...876cac` | ⚠️ Unaudited |
| Signer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10d7cb...7081fc` | ⚠️ Unaudited |
| SimpleERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4849d2...01cc5c` | ⚠️ Unaudited |
| SingleSidedAMM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82bfdd...bf4b8a` | ⚠️ Unaudited |
| SmartWalletChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x173f5f...9f3b27` | ⚠️ Unaudited |
| SmartWalletWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5268ba...b120a3` | ⚠️ Unaudited |
| StableAMM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0670e2...9eb4cd` | ⚠️ Unaudited |
| StableConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe649d8...489e30` | ⚠️ Unaudited |
| StableCreditHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x404f9e...ca0acb` | ⚠️ Unaudited |
| StableCreditProtocol | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15fe17...26f5f9` | ⚠️ Unaudited |
| StableYieldCredit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11980d...d834e7` | ⚠️ Unaudited |
| StakedFodlPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92cf22...5e08e2` | ⚠️ Unaudited |
| StakedSpellPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb544f6...b4ed9c` | ⚠️ Unaudited |
| Staking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x296ebf...9e2a53` | ⚠️ Unaudited |
| StakingRewardsLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b471a...85e150` | ⚠️ Unaudited |
| Strategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce5e94...b8bade` | ⚠️ Unaudited |
| StrategyControllerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2be5d9...f9e88b` | ⚠️ Unaudited |
| StrategyCreamYFI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40bd98...549afb` | ⚠️ Unaudited |
| StrategyDForceDAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd643cf...d47ede` | ⚠️ Unaudited |
| StrategyDForceUSDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01b354...11ab5c` | ⚠️ Unaudited |
| StrategyDForceUSDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x787c77...a64bd8` | ⚠️ Unaudited |
| StrategyMKRVaultDAIDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28e5a4...e083a5` | ⚠️ Unaudited |
| StrategyMStableSavings | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31641a...69156f` | ⚠️ Unaudited |
| StrategyMStableSavingsTUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x442510...e0b81c` | ⚠️ Unaudited |
| StrategyProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16c20c...597c7a` | ⚠️ Unaudited |
| StrategySNXSUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2288c4...4ec989` | ⚠️ Unaudited |
| StrategyVaultTUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35cee4...ba817a` | ⚠️ Unaudited |
| StrategyVaultUSDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25faca...20d8d6` | ⚠️ Unaudited |
| StrategyYffi | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe197e...da0b73` | ⚠️ Unaudited |
| StrategyYFIGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x395f93...88797c` | ⚠️ Unaudited |
| StrategyYfii | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2de055...edfa70` | ⚠️ Unaudited |
| SupplyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf2eb91...41978f` | ⚠️ Unaudited |
| SushiBar | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x879824...ff4272` | ⚠️ Unaudited |
| Synthetic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0485a4...e99b6c` | ⚠️ Unaudited |
| SyntheticRebaseDollar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa90d9...38ffdc` | ⚠️ Unaudited |
| SynthetixAMM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ed4a4...f8c8be` | ⚠️ Unaudited |
| SynthetixExchange | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0691cf...04c2cf` | ⚠️ Unaudited |
| TendiesFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x101dd6...e24a9f` | ⚠️ Unaudited |
| TimeLoanPairFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2df934...60da0d` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1994b5...929b81` | ⚠️ Unaudited |
| TimelockGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x026d4b...1dfb61` | ⚠️ Unaudited |
| TokenVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3976cd...08ea65` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x014b22...78f436` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x6c806e...739bec` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x6dc585...836eec` | ⚠️ Unaudited |
| TreasuryVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93a62d...a0efde` | ⚠️ Unaudited |
| TripleSlopeRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b0c25...747556` | ⚠️ Unaudited |
| UniOracleFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61da8b...61d136` | ⚠️ Unaudited |
| UniswapLpTokenPriceOracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x50f42c...86c7c0` | ⚠️ Unaudited |
| UniswapTwapPriceOracleV2 | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x480bae...4fe79f` | ⚠️ Unaudited |
| UniswapTwapPriceOracleV2Root | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xf1860b...24ebdb` | ⚠️ Unaudited |
| UniswapV3Oracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x807983...6e0ba7` | ⚠️ Unaudited |
| UniswapV3TwapPriceOracleV2 | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x29490a...77d29b` | ⚠️ Unaudited |
| UniswapV3TwapPriceOracleV2Factory | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x8eed20...1ff9f1` | ⚠️ Unaudited |
| Unitroller | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x3d5bc3...ae9258` | ⚠️ Unaudited |
| UpdateBlacksmithPools | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa18bc0...32b7f2` | ⚠️ Unaudited |
| USDPStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ac08b...adf3a4` | ⚠️ Unaudited |
| USDPStakingCollector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x650cc1...dae511` | ⚠️ Unaudited |
| Vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395432 | `0xb1cff8...7bcf19` | ⚠️ Unaudited |
| VaultManagerChainlinkMainAsset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a646c...e1f9d1` | ⚠️ Unaudited |
| VaultManagerKeep3rMainAsset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16c3ad...cc8f76` | ⚠️ Unaudited |
| VaultManagerKeep3rPoolToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ee324...043b0c` | ⚠️ Unaudited |
| VaultManagerKeep3rSushiSwapMainAsset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54ba27...83067b` | ⚠️ Unaudited |
| VaultManagerKeep3rSushiSwapPoolToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18a238...6e8390` | ⚠️ Unaudited |
| VaultManagerKeep3rUniswapPoolToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2637d6...d7daa3` | ⚠️ Unaudited |
| VaultManagerKeydonixMainAsset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78727a...e64ecf` | ⚠️ Unaudited |
| VaultManagerKeydonixPoolToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1ca03...c60a75` | ⚠️ Unaudited |
| VaultManagerParameters | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395405 | `0x203153...7d312e` | ⚠️ Unaudited |
| VaultManagerSimple | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb82c6d...c6783c` | ⚠️ Unaudited |
| VaultManagerStandard | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2726eb...48fbdb` | ⚠️ Unaudited |
| VaultParameters | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395433 | `0xb46f8c...5e9f1d` | ⚠️ Unaudited |
| veCurveVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5bddf...1f502a` | ⚠️ Unaudited |
| Vesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe98567...8bd531` | ⚠️ Unaudited |
| VestingVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f5981...a7f03c` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ca0f0...6f6ace` | ⚠️ Unaudited |
| WETHDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c134e...f829a0` | ⚠️ Unaudited |
| WhitePaperInterestRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x521a06...59e88d` | ⚠️ Unaudited |
| WrappedToUnderlyingOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1145e9...eba6a1` | ⚠️ Unaudited |
| WrappedYFI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x017e71...231981` | ⚠️ Unaudited |
| WSTEthPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb11de4...71c517` | ⚠️ Unaudited |
| xRULER | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01f7fd...5f17b9` | ⚠️ Unaudited |
| xVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0205ae...e419c5` | ⚠️ Unaudited |
| yAffiliateFactoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44ff2a...53b367` | ⚠️ Unaudited |
| yBUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04bc0a...bca9ae` | ⚠️ Unaudited |
| yCollateralVaultProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24dd02...e82a5d` | ⚠️ Unaudited |
| yCRV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x170411...2a221c` | ⚠️ Unaudited |
| ycUSDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0597ea...bc0f2c` | ⚠️ Unaudited |
| ycUSDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x631d66...3931a4` | ⚠️ Unaudited |
| yDAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16de59...f0bd01` | ⚠️ Unaudited |
| yDAIv2Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56ab71...a6bd33` | ⚠️ Unaudited |
| yDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x610258...a05f83` | ⚠️ Unaudited |
| yDelegatedVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2088ba...b73d99` | ⚠️ Unaudited |
| YearnLiquidationKeep3r | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x41303e...343eeb` | ⚠️ Unaudited |
| YetiDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38794e...e3a7e7` | ⚠️ Unaudited |
| YFI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0bc529...6ad93e` | ⚠️ Unaudited |
| yInsure | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x181aea...d98f91` | ⚠️ Unaudited |
| yInsureView | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d2738...98340b` | ⚠️ Unaudited |
| ySUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36324b...d41380` | ⚠️ Unaudited |
| yTokenProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d5ad9...54203a` | ⚠️ Unaudited |
| yTokenRebalance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19b642...e9cc09` | ⚠️ Unaudited |
| yTUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73a052...a8190f` | ⚠️ Unaudited |
| yUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12c068...af3aff` | ⚠️ Unaudited |
| yUSDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26ea74...b21951` | ⚠️ Unaudited |
| yUSDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3118ee...b9aade` | ⚠️ Unaudited |
| yVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0fcda6...367889` | ⚠️ Unaudited |
| yVaultCheck | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1bbe0f...a6d1ad` | ⚠️ Unaudited |
| yVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x044dea...f677b5` | ⚠️ Unaudited |
| YvTokenOracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-395421 | `0x759eb0...64652d` | ⚠️ Unaudited |
| yWBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04aa51...787ec9` | ⚠️ Unaudited |
| yWrappedVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x881b06...025298` | ⚠️ Unaudited |
| zBCH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e68ee...8f1a73` | ⚠️ Unaudited |
| zBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x88c64a...78bb7d` | ⚠️ Unaudited |
| ZEC_DAI_Reserve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b3b73...407bf9` | ⚠️ Unaudited |
| ZECGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x37a486...62ef93` | ⚠️ Unaudited |
| ZECGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52c883...ada49d` | ⚠️ Unaudited |
| ZECShifter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b59ef...461d5b` | ⚠️ Unaudited |
| ZeroExExchangeController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1573a4...1d5f1a` | ⚠️ Unaudited |
| zZEC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09aa07...f65295` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (91)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395399 | `0x0770e2...ebe561` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395402 | `0x18ed7a...6edc38` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-395406 | `0x220ea7...9a1fbd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395407 | `0x3b088b...100869` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-395411 | `0x48ddd2...2dbce3` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-395412 | `0x4c71c2...d67cb1` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-395414 | `0x54b21c...61f1ca` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-395415 | `0x5c69be...c5aa6f` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-395416 | `0x5f4ec3...5b8419` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395417 | `0x68af7b...e8e21d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395418 | `0x6a99d3...a75e1f` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-395420 | `0x72a2e0...f6d2a8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395422 | `0x75fbfe...150c8f` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-395424 | `0x7721a6...f11174` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395425 | `0x7ab4ff...c6d857` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-395426 | `0x8074a6...65f2d5` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-395427 | `0x92e187...2357d5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395428 | `0x9ccbb2...04daf4` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-395429 | `0x9f2138...52eed8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395430 | `0xa8c0d2...d78564` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395431 | `0xb0bcf6...6d0773` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-395434 | `0xbfe2e6...82d078` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-395435 | `0xc02aaa...756cc2` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-395436 | `0xc0aee4...e4f2ac` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395437 | `0xcba715...fb4894` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395438 | `0xcc33c2...b2081d` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-395439 | `0xd31817...16f18f` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-395440 | `0xd88e1f...a507f9` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-395441 | `0xe85d5f...d6700a` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-395442 | `0xff536b...82bf40` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | optimism | unit-395443 | `0x420000...000006` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | unit-395485 | `0x0567f2...d42aee` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-395486 | `0x0b24d3...e2f98d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-395487 | `0x11b1bd...c21d2e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-395488 | `0x1337da...73868f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-395489 | `0x3f03b9...3abd9d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-395490 | `0x56c7ca...f0fb48` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | unit-395491 | `0x7562fb...e0f4b0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-395492 | `0x7815ed...621fa1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-395493 | `0x852de0...eec39e` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | unit-395494 | `0x8f904b...028264` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-395495 | `0x99f2b1...5faf5a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-395496 | `0xa1ad36...38465c` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | unit-395497 | `0xbb4cdb...bc095c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-395498 | `0xbea721...ce547f` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | unit-395499 | `0xca143c...350c73` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-395500 | `0xdacd01...8cffcf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-395501 | `0xdacfee...f4dd93` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-395502 | `0xe8372d...0e24a4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-395503 | `0xf4ce55...1929fb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-395444 | `0x068e56...9ba761` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-395445 | `0x0a87fe...b3424d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-395446 | `0x22a974...066c43` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-395447 | `0x2ebb09...27a822` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-395448 | `0x431fc8...1974de` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | gnosis | unit-395449 | `0x6635c1...e59f65` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | gnosis | unit-395450 | `0x678df3...5a82f8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-395451 | `0x767022...b837b8` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | gnosis | unit-395452 | `0x850943...9d30dd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-395453 | `0x861784...0ba8de` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-395454 | `0x8747e4...d238f3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-395455 | `0x8ae98d...968f91` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | gnosis | unit-395456 | `0x8e7ab0...c35c6a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-395457 | `0x909555...1b2b19` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-395458 | `0x9096c4...f28346` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-395459 | `0xae973a...7a9d3e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-395460 | `0xbf1b43...31a0e6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-395461 | `0xca5d2e...0f50f6` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | gnosis | unit-395462 | `0xe30a50...aa8c28` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | gnosis | unit-395463 | `0xe91d15...63a97d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-395464 | `0xfe7ed0...7025b8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-395465 | `0x0058ab...b21c7d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-395466 | `0x1442bc...19d97e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-395467 | `0x1c7aea...d71d2f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-395468 | `0x1f18fa...b49def` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | fantom | unit-395469 | `0x21be37...1a4c83` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-395470 | `0x3129ac...6d16f8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-395471 | `0x5196a9...30fe37` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-395472 | `0x5bef93...4d89f4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-395473 | `0x828bb3...4d9bd3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-395474 | `0xa8f0b5...031b6c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-395475 | `0xb8b807...c78af4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-395476 | `0xc440af...4b0908` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-395477 | `0xd12d60...075fc3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-395478 | `0xd7a9b0...8d958e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-395479 | `0xdbf1a7...905305` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | fantom | unit-395480 | `0xeac494...2d8cb9` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | fantom | unit-395481 | `0xf2da95...8849e1` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | fantom | unit-395482 | `0xf47665...0680dc` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-395483 | `0x82af49...3fbab1` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | unit-395484 | `0xb31f66...fd66c7` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Levelk_Security_Audit_Report.pdf](https://github.com/unitprotocol/protocol_docs/blob/master/Levelk_Security_Audit_Report.pdf) | LevelK | Audit | 2021-01 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 14 | high |
| [Mixbytes Security Audit Report.pdf](https://github.com/unitprotocol/protocol_docs/blob/master/Mixbytes%20Security%20Audit%20Report.pdf) | yAudit | Audit | 2020-10 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 9 | high |
| [certik-final-report.pdf](https://github.com/unitprotocol/protocol_docs/blob/master/certik-final-report.pdf) | CertiK | Audit | 2020-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [borrow_protocol.pdf](https://github.com/unitprotocol/protocol_docs/blob/master/borrow_protocol.pdf) | Unknown | Audit | 2022-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [18429] Levelk_Security_Audit_Report.pdf — matched: All contracts listed in section 1.2 Source Files. Date from cover page: Jan, 2021 -> last day of month.
- [18430] Mixbytes Security Audit Report.pdf — matched: Extracted from audit report dated October 01 2020. Scope includes core smart contracts at specified GitHub commit, excluding certain subdirectories and contracts as noted in re-audit scope.
- [18431] certik-final-report.pdf — no match: Contracts extracted from findings locations in the audit report. No explicit scope section found, but all contracts mentioned in findings are assumed in scope.
- [18432] borrow_protocol.pdf — no match: Scope section lists GitHub repo with contracts directory; contract names extracted from file references in findings.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Levelk_Security_Audit_Report.pdf | ParametersBatchUpdater | ambiguous — not counted | 0x861784… (alternative) `0x861784...0ba8de` — liveness: live (current_address_book_code)<br>ParametersBatchUpdater (alternative) `0x4dd1a6...3cfb6f` — deployed 2021-04-07 19:09:14+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Levelk_Security_Audit_Report.pdf | USDP | own contract | USDP (selected) `0x145668...08c925` — deployed 2020-11-23 20:25:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Levelk_Security_Audit_Report.pdf | Vault | ambiguous — not counted | Vault (alternative) `0xb1cff8...7bcf19` — deployed 2020-11-23 20:44:49+03 — liveness: live (code_present_context)<br>0x2ebb09… (alternative) `0x2ebb09...27a822` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Levelk_Security_Audit_Report.pdf | VaultParameters | ambiguous — not counted | VaultParameters (alternative) `0xb46f8c...5e9f1d` — deployed 2020-11-23 20:38:44+03 — liveness: live (code_present_context)<br>0x22a974… (alternative) `0x22a974...066c43` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Levelk_Security_Audit_Report.pdf | LiquidationAuction01 | unmatched — not counted | — | listed in scope | no |
| Levelk_Security_Audit_Report.pdf | LiquidationTriggerKeep3rMainAsset | unmatched — not counted | — | listed in scope | no |
| Levelk_Security_Audit_Report.pdf | LiquidationTriggerKeep3rPoolToken | unmatched — not counted | — | listed in scope | no |
| Levelk_Security_Audit_Report.pdf | LiquidationTriggerSimple | unmatched — not counted | — | listed in scope | no |
| Levelk_Security_Audit_Report.pdf | OracleSimple | unmatched — not counted | — | listed in scope | no |
| Levelk_Security_Audit_Report.pdf | VaultManagerKeep3rMainAsset | unmatched — not counted | — | listed in scope | no |
| Levelk_Security_Audit_Report.pdf | VaultManagerKeep3rPoolToken | unmatched — not counted | — | listed in scope | no |
| Levelk_Security_Audit_Report.pdf | VaultManagerParameters | ambiguous — not counted | VaultManagerParameters (alternative) `0x203153...7d312e` — deployed 2020-11-23 21:04:50+03 — liveness: live (code_present_context)<br>0x9096c4… (alternative) `0x9096c4...f28346` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Levelk_Security_Audit_Report.pdf | VaultManagerStandard | unmatched — not counted | — | listed in scope | no |
| Levelk_Security_Audit_Report.pdf | ChainlinkedKeep3rV10OracleMainAsset | unmatched — not counted | — | listed in scope | no |
| Levelk_Security_Audit_Report.pdf | ChainlinkedKeep3rV10OraclePoolToken | unmatched — not counted | — | listed in scope | no |
| Mixbytes Security Audit Report.pdf | Vault | ambiguous — not counted | Vault (alternative) `0xb1cff8...7bcf19` — deployed 2020-11-23 20:44:49+03 — liveness: live (code_present_context)<br>0x2ebb09… (alternative) `0x2ebb09...27a822` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Mixbytes Security Audit Report.pdf | VaultManagerUniswap | unmatched — not counted | — | listed in scope and findings | no |
| Mixbytes Security Audit Report.pdf | VaultManager | unmatched — not counted | — | listed in scope and findings | no |
| Mixbytes Security Audit Report.pdf | ChainlinkedUniswapOracle | unmatched — not counted | — | listed in scope and findings | no |
| Mixbytes Security Audit Report.pdf | VaultManagerStandard | unmatched — not counted | — | listed in scope and findings | no |
| Mixbytes Security Audit Report.pdf | LiquidatorUniswap | unmatched — not counted | — | listed in scope and findings | no |
| Mixbytes Security Audit Report.pdf | Parameters | unmatched — not counted | — | listed in scope and findings | no |
| Mixbytes Security Audit Report.pdf | UniswapOracle | unmatched — not counted | — | listed in scope and findings | no |
| Mixbytes Security Audit Report.pdf | USDP | own contract | USDP (selected) `0x145668...08c925` — deployed 2020-11-23 20:25:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Mixbytes Security Audit Report.pdf | Liquidator | unmatched — not counted | — | listed in scope and findings | no |
| certik-final-report.pdf | Parameters | unmatched — not counted | — | UNP-01, UNP-02 findings location | no |
| certik-final-report.pdf | Vault | ambiguous — not counted | Vault (alternative) `0xb1cff8...7bcf19` — deployed 2020-11-23 20:44:49+03 — liveness: live (code_present_context)<br>0x2ebb09… (alternative) `0x2ebb09...27a822` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| certik-final-report.pdf | SafeMath | unmatched — not counted | — | UNP-07 finding location | no |
| certik-final-report.pdf | ChainlinkedUniswapOracle | unmatched — not counted | — | UNP-08, UNP-09 findings location | no |
| certik-final-report.pdf | ChainlinkedUniswapOracleLP | unmatched — not counted | — | UNP-10, UNP-11 findings location | no |
| certik-final-report.pdf | VaultManagerStandard | unmatched — not counted | — | UNP-12 to UNP-14 findings location | no |
| certik-final-report.pdf | VaultManagerUniswap | unmatched — not counted | — | UNP-15 to UNP-21 findings location | no |
| certik-final-report.pdf | VaultManagerUniswapLP | unmatched — not counted | — | UNP-22 to UNP-28 findings location | no |
| borrow_protocol.pdf | BorrowModule01 | unmatched — not counted | — | mentioned in findings and scope | no |
| borrow_protocol.pdf | Assets01 | unmatched — not counted | — | mentioned in findings | no |
| borrow_protocol.pdf | AssetViewer | unmatched — not counted | — | mentioned in findings | no |
| borrow_protocol.pdf | ParametersStorage | unmatched — not counted | — | mentioned in findings | no |
| borrow_protocol.pdf | ERC721Tester | unmatched — not counted | — | test contract mentioned in findings | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x1a5ff5...ec650c` | CDPRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3db39b...d22ef3` | CollateralRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4dd1a6...3cfb6f` | ParametersBatchUpdater | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb1cff8...7bcf19` | Vault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x203153...7d312e` | VaultManagerParameters | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb46f8c...5e9f1d` | VaultParameters | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 358 |
| upstream | 21 |
| standard_library | 13 |
| needs_review | 91 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 2 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 6 ambiguous, 30 unmatched
- Matched-own operational status: 2 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=4
- Match method counts: unique_name=2

Zero-match audit list:

- [18431] certik-final-report.pdf
- [18432] borrow_protocol.pdf

Fork inheritance lineage and inherited audits are included when available.
