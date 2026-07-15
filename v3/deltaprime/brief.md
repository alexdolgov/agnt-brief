# Agentic Audit Brief: DeltaPrime

## Export Authority

- Production state: **published scope**
- Raw selected rows: 27 across 6 audit(s)
- Eligible audit results: 8 (6 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: DeltaPrime (`deltaprime`)
- Website: [https://deltaprime.io](https://deltaprime.io)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche
- Contract surface: 108 unique implementations (111 raw deployments)
- Coverage basis: 17/36 confirmed own live verified implementations (47.2%); conservative 47.2% with 0 needs-review implementation(s)
- DeFi Llama TVL: $3,350,390.99
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for DeltaPrime. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 39 contract row(s) across arbitrum, avalanche. Structural roles: 30 core, 9 supporting. 30 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 39
- Structural roles: core (30), supporting (9)
- Contract kinds: contract (39)
- Detected standards: ownable (10), erc1967proxy (5), erc20 (4), erc165 (1)
- Frameworks: openzeppelin (39), openzeppelin-upgradeable (25), uniswap (24), uniswap-v3 (17)
- Upgradeable-pattern rows: 30

## Fork Analysis

0 of 111 contracts are derived from known codebases. 111 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x00c0b3...1cb9ff`, chain 42161)
- UnnamedContract (`0x0a0d95...74e255`, chain 42161)
- UnnamedContract (`0x0bebeb...3d46b3`, chain 42161)
- UnnamedContract (`0x2af687...3523d7`, chain 42161)
- UnnamedContract (`0x2b8c61...c3d08a`, chain 42161)
- UnnamedContract (`0x526a9c...0bab35`, chain 42161)
- UnnamedContract (`0x56f671...b8fd43`, chain 42161)
- UnnamedContract (`0x5c671d...3e497c`, chain 42161)
- UnnamedContract (`0x889cfe...7552b9`, chain 42161)
- UnnamedContract (`0x8fe384...7a1de0`, chain 42161)
- UnnamedContract (`0x9d0ac6...cd51c1`, chain 42161)
- UnnamedContract (`0xa22a30...91d77f`, chain 42161)
- UnnamedContract (`0xa508c3...0afb74`, chain 42161)
- UnnamedContract (`0xa5984c...1a5b48`, chain 42161)
- UnnamedContract (`0xb13c47...db8799`, chain 42161)
- UnnamedContract (`0xb60935...aad3c5`, chain 42161)
- UnnamedContract (`0xb83264...3282af`, chain 42161)
- UnnamedContract (`0xbadc83...4a52e1`, chain 42161)
- UnnamedContract (`0xc4644c...9c4ae3`, chain 42161)
- UnnamedContract (`0xdeab10...040147`, chain 42161)
- UnnamedContract (`0xf7844a...e262cd`, chain 42161)
- UnnamedContract (`0xf8d1b3...9fdea4`, chain 42161)
- UnnamedContract (`0xfd5665...3a7b79`, chain 42161)
- UnnamedContract (`0xff5e3d...265c20`, chain 42161)
- UnnamedContract (`0x02f802...777118`, chain 43114)
- UnnamedContract (`0x05f08c...fad5c7`, chain 43114)
- UnnamedContract (`0x05ff7c...f7a5dc`, chain 43114)
- UnnamedContract (`0x10cc67...68a859`, chain 43114)
- UnnamedContract (`0x23c691...dd7b93`, chain 43114)
- UnnamedContract (`0x3a7de0...345b95`, chain 43114)
- UnnamedContract (`0x3de81c...a6d14e`, chain 43114)
- UnnamedContract (`0x3f13aa...d4e303`, chain 43114)
- UnnamedContract (`0x42f642...1aba7a`, chain 43114)
- UnnamedContract (`0x451377...341bc5`, chain 43114)
- UnnamedContract (`0x46fad5...dfb60b`, chain 43114)
- UnnamedContract (`0x493d93...79b81c`, chain 43114)
- UnnamedContract (`0x4eecb7...3bb1af`, chain 43114)
- UnnamedContract (`0x52b74a...07061c`, chain 43114)
- UnnamedContract (`0x58570d...3b971e`, chain 43114)
- UnnamedContract (`0x58da82...c446a6`, chain 43114)
- UnnamedContract (`0x5ddeb4...d4d064`, chain 43114)
- UnnamedContract (`0x5efffd...703818`, chain 43114)
- UnnamedContract (`0x5f6847...9e1e9f`, chain 43114)
- UnnamedContract (`0x61ff2a...74680e`, chain 43114)
- UnnamedContract (`0x637fdb...546a08`, chain 43114)
- UnnamedContract (`0x63d138...ac18e7`, chain 43114)
- UnnamedContract (`0x646afd...8ff9fe`, chain 43114)
- UnnamedContract (`0x66b8ad...edb2cb`, chain 43114)
- UnnamedContract (`0x6a47ec...086181`, chain 43114)
- UnnamedContract (`0x7201e8...f7dbb1`, chain 43114)
- UnnamedContract (`0x731a27...37729a`, chain 43114)
- UnnamedContract (`0x796dbe...32132f`, chain 43114)
- UnnamedContract (`0x8cfb12...3e9815`, chain 43114)
- UnnamedContract (`0x8e2bd8...cef70a`, chain 43114)
- UnnamedContract (`0x8f0848...0a78fd`, chain 43114)
- UnnamedContract (`0x938a0c...bc8518`, chain 43114)
- UnnamedContract (`0x93a0f1...830e80`, chain 43114)
- UnnamedContract (`0x9f0798...31fb95`, chain 43114)
- UnnamedContract (`0xa09687...81edf9`, chain 43114)
- UnnamedContract (`0xa22eba...07db8e`, chain 43114)
- UnnamedContract (`0xab764b...782ad2`, chain 43114)
- UnnamedContract (`0xb2c4b9...a22cfc`, chain 43114)
- UnnamedContract (`0xbf98e0...5be421`, chain 43114)
- UnnamedContract (`0xc15d06...e0b599`, chain 43114)
- UnnamedContract (`0xc295bb...2c6c4a`, chain 43114)
- UnnamedContract (`0xc8e375...9c8711`, chain 43114)
- UnnamedContract (`0xcd5779...39420d`, chain 43114)
- UnnamedContract (`0xd7feb2...359148`, chain 43114)
- UnnamedContract (`0xdb5d94...7cf7fa`, chain 43114)
- UnnamedContract (`0xe06e2e...f89f78`, chain 43114)
- UnnamedContract (`0xf39782...8ed58e`, chain 43114)
- UnnamedContract (`0xfaf20e...8c7795`, chain 43114)
- ArbPoolFactory (`0xd1f36c...819119`, chain 42161)
- ArbVariableUtilisationRatesCalculator (`0x5d776f...12b34f`, chain 42161)
- AssetsExposureController (`0x565fd8...16c00a`, chain 42161)
- AssetsOperationsArbitrumFacet (`0xfeff07...39d1eb`, chain 42161)
- BeefyFinanceArbitrumFacet (`0xa26467...b026d6`, chain 42161)
- BtcPoolTUP (`0x475589...bb63d0`, chain 43114)
- DepositSwapArbitrum (`0x0b420f...0bccea`, chain 42161)
- DiamondCutFacet (`0x44ac7f...03cc77`, chain 42161)
- DiamondInit (`0x3e273b...7e7d04`, chain 42161)
- DiamondLoupeFacet (`0x69bec7...72b23f`, chain 42161)
- EthPool (`0x58ee09...f4b166`, chain 42161)
- GLPFacetArbi (`0xad7ef2...5295d1`, chain 42161)
- HealthMeterFacetProd (`0x16238e...aac8f9`, chain 42161)
- LevelFinanceFacet (`0x17fa27...92f66c`, chain 42161)
- LiquidationFlashloanArbitrum (`0x5a8053...52a788`, chain 42161)
- OwnershipFacet (`0x8f1374...0770b2`, chain 42161)
- ParaSwapFacet (`0x3b963b...066ac3`, chain 42161)
- SmartLoanDiamondBeacon (`0x62cf82...dc0c6c`, chain 42161)
- SmartLoanDiamondBeacon (`0x2916b3...94e56d`, chain 43114)
- SmartLoanLiquidationFacet (`0x686e83...2893a0`, chain 42161)
- SmartLoansFactory (`0x8b5c03...9eb22d`, chain 42161)
- SmartLoansFactoryTUP (`0x3ea9d4...21b03d`, chain 43114)
- SmartLoanViewFacet (`0xd9eb3d...364512`, chain 42161)
- SmartLoanWrappedNativeTokenFacet (`0x388f7c...492d54`, chain 42161)
- SolvencyFacetProd (`0xe4f747...d9dbc8`, chain 42161)
- SolvencyFacetProdArbitrum (`0xf102c7...427681`, chain 42161)
- SushiSwapDEXFacet (`0x952361...1530b2`, chain 42161)
- TokenManager (`0x8463b7...a823de`, chain 42161)
- TraderJoeV2ArbitrumFacet (`0xb4554d...65751c`, chain 42161)
- UsdcPool (`0x2a1384...7f1d51`, chain 42161)
- UsdcPoolTUP (`0x2323da...32d12b`, chain 43114)
- UsdcVariableUtilisationRatesCalculator (`0x38c8a2...526133`, chain 42161)
- UsdtPool (`0xb02c43...e22cf7`, chain 43114)
- UsdtPoolTUP (`0xd222e1...efbca1`, chain 43114)
- WavaxPoolTUP (`0xd26e50...6542f5`, chain 43114)
- WethPool (`0x483ea7...a331bb`, chain 42161)
- WethVariableUtilisationRatesCalculator (`0x0d184a...bc5a72`, chain 42161)
- YieldYakFacetArbi (`0xe71427...d783a6`, chain 42161)
- YieldYakSwapArbitrumFacet (`0x39c575...fbd44d`, chain 42161)

## Contract Surface Quality

- Indexed contracts: 39; live-surface contracts included: 39 (39 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 108/108 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 17/36 (47.2%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 108 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 7
- Deployed-live implementations: 108 of 108 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 17/36
- Verified + Unaudited implementations: 19
- Verified by bytecode match: 0
- Unverified implementations: 72
- Unique implementations: 108
- Raw deployments: 111
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 6
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-09 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 7 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 17 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Unknown | Tier 2 | 10 | 27.8% | 2022-11 |
| BlockSec | Tier 2 | 7 | 19.4% | 2025-09 |
| AstraSec | Tier 2 | 5 | 13.9% | 2024-06 |
| PeckShield | Tier 2 | 4 | 11.1% | 2023-09 |

## Contract Surface

### ✅ Verified + Audited (17)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AssetsExposureController | governance | project_anchor | own_supporting | 0 | arbitrum | unit-383751 | `0x565fd8...16c00a` | ✅ Audited |
| BeefyFinanceArbitrumFacet | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383767 | `0xa26467...b026d6` | ✅ Audited |
| DepositSwapArbitrum | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383735 | `0x0b420f...0bccea` | ✅ Audited |
| DiamondCutFacet | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383748 | `0x44ac7f...03cc77` | ✅ Audited |
| DiamondInit | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383747 | `0x3e273b...7e7d04` | ✅ Audited |
| DiamondLoupeFacet | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383758 | `0x69bec7...72b23f` | ✅ Audited |
| HealthMeterFacetProd | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383738 | `0x16238e...aac8f9` | ✅ Audited |
| OwnershipFacet | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383762 | `0x8f1374...0770b2` | ✅ Audited |
| ParaSwapFacet | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383746 | `0x3b963b...066ac3` | ✅ Audited |
| SmartLoanDiamondBeacon | registry | project_anchor | own_supporting | 1 | avalanche | unit-383838 | `0x2916b3...94e56d` | ✅ Audited |
| SmartLoanLiquidationFacet | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383757 | `0x686e83...2893a0` | ✅ Audited |
| SmartLoansFactory | registry | project_anchor | own_supporting | 0 | arbitrum | unit-383761 | `0x8b5c03...9eb22d` | ✅ Audited |
| SmartLoansFactory | registry | project_anchor | own_supporting | 1 | avalanche | unit-383840 | `0x3ea9d4...21b03d` | ✅ Audited |
| SmartLoanViewFacet | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383778 | `0xd9eb3d...364512` | ✅ Audited |
| SmartLoanWrappedNativeTokenFacet | token | project_anchor | own_supporting | 0 | arbitrum | unit-383743 | `0x388f7c...492d54` | ✅ Audited |
| SolvencyFacetProd | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383780 | `0xe4f747...d9dbc8` | ✅ Audited |
| TokenManager | governance | project_anchor | own_supporting | 0 | arbitrum | unit-383759 | `0x8463b7...a823de` | ✅ Audited |

### ⚠️ Verified + Unaudited (19)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ArbPoolFactory | registry | project_anchor | own_supporting | 0 | arbitrum | unit-383777 | `0xd1f36c...819119` | ⚠️ Unaudited |
| ArbVariableUtilisationRatesCalculator | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383756 | `0x5d776f...12b34f` | ⚠️ Unaudited |
| AssetsOperationsArbitrumFacet | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383786 | `0xfeff07...39d1eb` | ⚠️ Unaudited |
| EthPool | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-383753 | `0x58ee09...f4b166` | ⚠️ Unaudited |
| GLPFacetArbi | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383770 | `0xad7ef2...5295d1` | ⚠️ Unaudited |
| LevelFinanceFacet | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383739 | `0x17fa27...92f66c` | ⚠️ Unaudited |
| LiquidationFlashloanArbitrum | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383754 | `0x5a8053...52a788` | ⚠️ Unaudited |
| SmartLoanDiamondBeacon | registry | project_anchor | own_supporting | 1 | arbitrum | unit-383837 | `0x62cf82...dc0c6c` | ⚠️ Unaudited |
| SolvencyFacetProdArbitrum | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383782 | `0xf102c7...427681` | ⚠️ Unaudited |
| SushiSwapDEXFacet | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383764 | `0x952361...1530b2` | ⚠️ Unaudited |
| TraderJoeV2ArbitrumFacet | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383772 | `0xb4554d...65751c` | ⚠️ Unaudited |
| UsdcPool | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-383740 | `0x2a1384...7f1d51` | ⚠️ Unaudited |
| UsdcPoolTUP | core_logic | project_anchor | own_supporting | 4 | avalanche | unit-383839 (4 proxies) | 4 deployments: avalanche `0x2323da...32d12b`; avalanche `0x475589...bb63d0`; avalanche `0xd222e1...efbca1`; avalanche `0xd26e50...6542f5` | ⚠️ Unaudited |
| UsdcVariableUtilisationRatesCalculator | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383744 | `0x38c8a2...526133` | ⚠️ Unaudited |
| UsdtPool | core_logic | project_anchor | own_supporting | 0 | avalanche | unit-383825 | `0xb02c43...e22cf7` | ⚠️ Unaudited |
| WethPool | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-383749 | `0x483ea7...a331bb` | ⚠️ Unaudited |
| WethVariableUtilisationRatesCalculator | token | project_anchor | own_supporting | 0 | arbitrum | unit-383737 | `0x0d184a...bc5a72` | ⚠️ Unaudited |
| YieldYakFacetArbi | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383781 | `0xe71427...d783a6` | ⚠️ Unaudited |
| YieldYakSwapArbitrumFacet | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383745 | `0x39c575...fbd44d` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (72)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383733 | `0x00c0b3...1cb9ff` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383734 | `0x0a0d95...74e255` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383736 | `0x0bebeb...3d46b3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383741 | `0x2af687...3523d7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383742 | `0x2b8c61...c3d08a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383750 | `0x526a9c...0bab35` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383752 | `0x56f671...b8fd43` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383755 | `0x5c671d...3e497c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383760 | `0x889cfe...7552b9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383763 | `0x8fe384...7a1de0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383765 | `0x9d0ac6...cd51c1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383766 | `0xa22a30...91d77f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383768 | `0xa508c3...0afb74` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383769 | `0xa5984c...1a5b48` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383771 | `0xb13c47...db8799` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383773 | `0xb60935...aad3c5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383774 | `0xb83264...3282af` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383775 | `0xbadc83...4a52e1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383776 | `0xc4644c...9c4ae3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383779 | `0xdeab10...040147` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383783 | `0xf7844a...e262cd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383784 | `0xf8d1b3...9fdea4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383785 | `0xfd5665...3a7b79` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383787 | `0xff5e3d...265c20` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383788 | `0x02f802...777118` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383789 | `0x05f08c...fad5c7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383790 | `0x05ff7c...f7a5dc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383791 | `0x10cc67...68a859` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383792 | `0x23c691...dd7b93` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383793 | `0x3a7de0...345b95` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383794 | `0x3de81c...a6d14e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383795 | `0x3f13aa...d4e303` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383796 | `0x42f642...1aba7a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383797 | `0x451377...341bc5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383798 | `0x46fad5...dfb60b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383799 | `0x493d93...79b81c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383800 | `0x4eecb7...3bb1af` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383801 | `0x52b74a...07061c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383802 | `0x58570d...3b971e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383803 | `0x58da82...c446a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383804 | `0x5ddeb4...d4d064` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383805 | `0x5efffd...703818` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383806 | `0x5f6847...9e1e9f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383807 | `0x61ff2a...74680e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383808 | `0x637fdb...546a08` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383809 | `0x63d138...ac18e7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383810 | `0x646afd...8ff9fe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383811 | `0x66b8ad...edb2cb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383812 | `0x6a47ec...086181` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383813 | `0x7201e8...f7dbb1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383814 | `0x731a27...37729a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383815 | `0x796dbe...32132f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383816 | `0x8cfb12...3e9815` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383817 | `0x8e2bd8...cef70a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383818 | `0x8f0848...0a78fd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383819 | `0x938a0c...bc8518` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383820 | `0x93a0f1...830e80` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383821 | `0x9f0798...31fb95` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383822 | `0xa09687...81edf9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383823 | `0xa22eba...07db8e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383824 | `0xab764b...782ad2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383826 | `0xb2c4b9...a22cfc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383827 | `0xbf98e0...5be421` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383828 | `0xc15d06...e0b599` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383829 | `0xc295bb...2c6c4a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383830 | `0xc8e375...9c8711` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383831 | `0xcd5779...39420d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383832 | `0xd7feb2...359148` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383833 | `0xdb5d94...7cf7fa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383834 | `0xe06e2e...f89f78` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383835 | `0xf39782...8ed58e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383836 | `0xfaf20e...8c7795` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [AstraSec-AuditReport-DeltaPrime-Final.pdf](https://github.com/DeltaPrimeLabs/deltaprime-contracts-v2/blob/main/audits/AstraSec-AuditReport-DeltaPrime-Final.pdf) | AstraSec | Audit | 2024-06 | stale | Direct | contract_name | matched | 5 | 0 | 0 | 15 | high |
| [DeltaPrime-Review-Piotr-Szlachciak.pdf](https://github.com/DeltaPrimeLabs/deltaprime-contracts-v2/blob/main/audits/DeltaPrime-Review-Piotr-Szlachciak.pdf) | Piotr Szlachciak | Audit | 2021-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [PeckShield-Audit-Report-DeltaPrime-v1.0.pdf](https://github.com/DeltaPrimeLabs/deltaprime-contracts-v2/blob/main/audits/PeckShield-Audit-Report-DeltaPrime-v1.0.pdf) | PeckShield | Audit | 2022-12 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 5 | medium |
| [PeckShield-Audit-Report-DeltaPrime-v2.0.pdf](https://github.com/DeltaPrimeLabs/deltaprime-contracts-v2/blob/main/audits/PeckShield-Audit-Report-DeltaPrime-v2.0.pdf) | PeckShield | Audit | 2023-05 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 5 | high |
| [PeckShield-Audit-Report-DeltaPrime-v2.1.pdf](https://github.com/DeltaPrimeLabs/deltaprime-contracts-v2/blob/main/audits/PeckShield-Audit-Report-DeltaPrime-v2.1.pdf) | PeckShield | Audit | 2023-09 | stale | Direct | contract_name | matched | 3 | 0 | 0 | 6 | high |
| [PeckShield-Audit-Report-DeltaPrime.pdf](https://github.com/DeltaPrimeLabs/deltaprime-contracts-v2/blob/main/audits/PeckShield-Audit-Report-DeltaPrime.pdf) | PeckShield | Audit | 2022-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Smart_Contract_Audit_DeltaPrime_Protocol_04112022.pdf](https://github.com/DeltaPrimeLabs/deltaprime-contracts-v2/blob/main/audits/Smart_Contract_Audit_DeltaPrime_Protocol_04112022.pdf) | Unknown | Audit | 2022-11 | stale | Direct | contract_name | matched | 10 | 2 | 0 | 56 | high |
| [blocksec_deltaprime_v1.0-signed.pdf](https://github.com/DeltaPrimeLabs/deltaprime-contracts-v2/blob/main/audits/blocksec_deltaprime_v1.0-signed.pdf) | BlockSec | Audit | 2025-09 | fresh | Direct | contract_name | matched | 7 | 0 | 0 | 27 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [19685] AstraSec-AuditReport-DeltaPrime-Final.pdf — matched: All contracts listed in SHA256 table are in scope. Audit date from title page.
- [19686] DeltaPrime-Review-Piotr-Szlachciak.pdf — no match: Contracts extracted from file paths in the report. No explicit scope section found; all contracts mentioned in findings are assumed in scope.
- [19687] PeckShield-Audit-Report-DeltaPrime-v1.0.pdf — matched: No explicit scope section; contract names extracted from findings targets and mentions.
- [19688] PeckShield-Audit-Report-DeltaPrime-v2.0.pdf — matched: Extracted contract names from findings targets and descriptions. No explicit scope table, but contracts are clearly audited.
- [19689] PeckShield-Audit-Report-DeltaPrime-v2.1.pdf — matched: Contracts extracted from findings sections where they are explicitly listed as targets. The audit date is from the cover page and version history.
- [19690] PeckShield-Audit-Report-DeltaPrime.pdf — no match: Extracted contracts from findings targets and explicit scope mention of PriceAwareUpgradeable.sol. Audit date from cover page.
- [19691] Smart_Contract_Audit_DeltaPrime_Protocol_04112022.pdf — matched: Extracted all contracts from the 'Source Unites in Scope' table (pages 21-24) and the 'Tested Contract Files' section (pages 9-12). Audit date from cover page: 04.11.2022.
- [19692] blocksec_deltaprime_v1.0-signed.pdf — matched: Extracted contract names from the scope section listing 'contracts/*' and from file paths mentioned in findings. Excluded files are listed but not included. Audit date from cover page: September 22, 2025.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| AstraSec-AuditReport-DeltaPrime-Final.pdf | DepositSwapAvalanche | unmatched — not counted | — | listed in SHA256 table | no |
| AstraSec-AuditReport-DeltaPrime-Final.pdf | DepositSwapArbitrum | own contract | DepositSwapArbitrum (selected) `0x0b420f...0bccea` — deployed 2023-09-25 14:53:49+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| AstraSec-AuditReport-DeltaPrime-Final.pdf | OnlyOwnerOrInsolvent | unmatched — not counted | — | listed in SHA256 table | no |
| AstraSec-AuditReport-DeltaPrime-Final.pdf | TokenManager | own contract | TokenManager (selected) `0x8463b7...a823de` — deployed 2023-08-22 13:21:49+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| AstraSec-AuditReport-DeltaPrime-Final.pdf | AssetsOperationsFacet | unmatched — not counted | — | listed in SHA256 table and finding M-2 | no |
| AstraSec-AuditReport-DeltaPrime-Final.pdf | GmxV2CallbacksFacet | unmatched — not counted | — | listed in SHA256 table | no |
| AstraSec-AuditReport-DeltaPrime-Final.pdf | GmxV2Facet | unmatched — not counted | — | listed in SHA256 table and finding M-1 | no |
| AstraSec-AuditReport-DeltaPrime-Final.pdf | ParaSwapFacet | own contract | ParaSwapFacet (selected) `0x3b963b...066ac3` — deployed 2023-09-15 19:00:31+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| AstraSec-AuditReport-DeltaPrime-Final.pdf | SmartLoanLiquidationFacet | own contract | SmartLoanLiquidationFacet (selected) `0x686e83...2893a0` — deployed 2023-09-02 13:24:38+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| AstraSec-AuditReport-DeltaPrime-Final.pdf | TraderJoeV2Facet | unmatched — not counted | — | listed in SHA256 table | no |
| AstraSec-AuditReport-DeltaPrime-Final.pdf | BeefyFinanceArbitrumFacet | own contract | BeefyFinanceArbitrumFacet (selected) `0xa26467...b026d6` — deployed 2023-09-04 18:47:56+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| AstraSec-AuditReport-DeltaPrime-Final.pdf | GLPFacet | unmatched — not counted | — | listed in SHA256 table | no |
| AstraSec-AuditReport-DeltaPrime-Final.pdf | PenpieFacet | unmatched — not counted | — | listed in SHA256 table | no |
| AstraSec-AuditReport-DeltaPrime-Final.pdf | BalancerV2Facet | unmatched — not counted | — | listed in SHA256 table | no |
| AstraSec-AuditReport-DeltaPrime-Final.pdf | CaiFacet | unmatched — not counted | — | listed in SHA256 table | no |
| AstraSec-AuditReport-DeltaPrime-Final.pdf | GogoPoolFacet | unmatched — not counted | — | listed in SHA256 table | no |
| AstraSec-AuditReport-DeltaPrime-Final.pdf | UniswapV3Facet | unmatched — not counted | — | listed in SHA256 table and finding L-1 | no |
| AstraSec-AuditReport-DeltaPrime-Final.pdf | YieldYakFacet | unmatched — not counted | — | listed in SHA256 table | no |
| AstraSec-AuditReport-DeltaPrime-Final.pdf | YieldYakSwapFacet | unmatched — not counted | — | listed in SHA256 table | no |
| AstraSec-AuditReport-DeltaPrime-Final.pdf | DiamondStorageLib | unmatched — not counted | — | listed in SHA256 table and finding L-3 | no |
| DeltaPrime-Review-Piotr-Szlachciak.pdf | VariableUtilisationRatesCalculator | unmatched — not counted | — | listed in scope | no |
| DeltaPrime-Review-Piotr-Szlachciak.pdf | Pool | unmatched — not counted | — | listed in scope | no |
| DeltaPrime-Review-Piotr-Szlachciak.pdf | CompoundingIndex | unmatched — not counted | — | listed in scope | no |
| DeltaPrime-Review-Piotr-Szlachciak.pdf | SmartLoansFactory | ambiguous — not counted | SmartLoansFactoryTUP (proxy) (alternative) `0x3ea9d4...21b03d` — deployed 2022-12-10 02:03:30+03 — liveness: live (current_address_book_code)<br>SmartLoansFactory (alternative) `0x8b5c03...9eb22d` — deployed 2023-09-20 14:37:02+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| DeltaPrime-Review-Piotr-Szlachciak.pdf | PangolinExchange | unmatched — not counted | — | listed in scope | no |
| DeltaPrime-Review-Piotr-Szlachciak.pdf | SmartLoan | unmatched — not counted | — | listed in scope | no |
| PeckShield-Audit-Report-DeltaPrime-v1.0.pdf | Pool | unmatched — not counted | — | Target in finding PVE-001 | no |
| PeckShield-Audit-Report-DeltaPrime-v1.0.pdf | SmartLoanWrappedNativeTokenFacet | own contract | SmartLoanWrappedNativeTokenFacet (selected) `0x388f7c...492d54` — deployed 2023-08-23 22:20:51+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-DeltaPrime-v1.0.pdf | SolvencyFacet | unmatched — not counted | — | Target in finding PVE-003 | no |
| PeckShield-Audit-Report-DeltaPrime-v1.0.pdf | UniswapV2DEXFacet | unmatched — not counted | — | Target in finding PVE-004 | no |
| PeckShield-Audit-Report-DeltaPrime-v1.0.pdf | StakingPool | unmatched — not counted | — | Mentioned in finding PVE-004 | no |
| PeckShield-Audit-Report-DeltaPrime-v1.0.pdf | VectorFinanceFacet | unmatched — not counted | — | Mentioned in finding PVE-004 | no |
| PeckShield-Audit-Report-DeltaPrime-v2.0.pdf | Pool | unmatched — not counted | — | Target of findings PVE-001 and PVE-002 | no |
| PeckShield-Audit-Report-DeltaPrime-v2.0.pdf | WrappedNativeTokenPool | unmatched — not counted | — | Target of finding PVE-003 | no |
| PeckShield-Audit-Report-DeltaPrime-v2.0.pdf | LiquidationFlashloan | unmatched — not counted | — | Target of findings PVE-004 and PVE-005 | no |
| PeckShield-Audit-Report-DeltaPrime-v2.0.pdf | UniswapV2Intermediary | unmatched — not counted | — | Mentioned in finding PVE-005 as a contract with similar issue | no |
| PeckShield-Audit-Report-DeltaPrime-v2.0.pdf | TokenManager | own contract | TokenManager (selected) `0x8463b7...a823de` — deployed 2023-08-22 13:21:49+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-DeltaPrime-v2.0.pdf | VestingDistributor | unmatched — not counted | — | Mentioned in finding PVE-001 as related contract | no |
| PeckShield-Audit-Report-DeltaPrime-v2.1.pdf | UniswapV3IntegrationHelper | unmatched — not counted | — | Section 3.1: 'Target: UniswapV3IntegrationHelper' | no |
| PeckShield-Audit-Report-DeltaPrime-v2.1.pdf | DepositSwap | unmatched — not counted | — | Section 3.2: 'Target: DepositSwap' | no |
| PeckShield-Audit-Report-DeltaPrime-v2.1.pdf | PoolRewarder | unmatched — not counted | — | Section 3.3: 'Note the PoolRewarder::getRewardsFor() routine can be similarly improved.' | no |
| PeckShield-Audit-Report-DeltaPrime-v2.1.pdf | VestingDistributor | unmatched — not counted | — | Section 3.4: 'Target: VestingDistributor' | no |
| PeckShield-Audit-Report-DeltaPrime-v2.1.pdf | TokenManager | own contract | TokenManager (selected) `0x8463b7...a823de` — deployed 2023-08-22 13:21:49+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-DeltaPrime-v2.1.pdf | SmartLoansFactory | own contract | SmartLoansFactoryTUP (proxy) (alternative) `0x3ea9d4...21b03d` — deployed 2022-12-10 02:03:30+03 — liveness: live (current_address_book_code)<br>SmartLoansFactory (selected) `0x8b5c03...9eb22d` — deployed 2023-09-20 14:37:02+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2023-09-20 was 12d from audit; next candidate 272d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-DeltaPrime-v2.1.pdf | HealthMeterFacetProd | own contract | HealthMeterFacetProd (selected) `0x16238e...aac8f9` — deployed 2023-08-23 22:21:09+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-DeltaPrime-v2.1.pdf | RecoveryFacet | unmatched — not counted | — | Section 3.8: 'Target: RecoveryFacet' | no |
| PeckShield-Audit-Report-DeltaPrime-v2.1.pdf | LiquidationFlashloan | unmatched — not counted | — | Section 3.10: 'Target: LiquidationFlashloan' | no |
| PeckShield-Audit-Report-DeltaPrime.pdf | SmartLoan | unmatched — not counted | — | Target in finding PVE-001 | no |
| PeckShield-Audit-Report-DeltaPrime.pdf | Pool | unmatched — not counted | — | Target in findings PVE-002 and PVE-003 | no |
| PeckShield-Audit-Report-DeltaPrime.pdf | PangolinExchange | unmatched — not counted | — | Target in finding PVE-004 | no |
| PeckShield-Audit-Report-DeltaPrime.pdf | PriceAwareUpgradeable | unmatched — not counted | — | Explicitly included in audit scope | no |
| Smart_Contract_Audit_DeltaPrime_Protocol_04112022.pdf | VariableUtilisationRatesCalculator | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_DeltaPrime_Protocol_04112022.pdf | ECDSAVerify | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_DeltaPrime_Protocol_04112022.pdf | SmartLoanDiamondBeacon | own proxy deployment | SmartLoanDiamondBeacon (proxy) (alternative) `0x62cf82...dc0c6c` — deployed 2023-08-07 19:06:23+03 — liveness: live (current_address_book_code)<br>SmartLoanDiamondBeacon (proxy) (selected) `0x2916b3...94e56d` — deployed 2022-12-10 02:02:50+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2022-12-10 was 36d from audit; next candidate 276d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Smart_Contract_Audit_DeltaPrime_Protocol_04112022.pdf | UbeswapDEXFacet | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_DeltaPrime_Protocol_04112022.pdf | DiamondCutFacet | own contract | DiamondCutFacet (selected) `0x44ac7f...03cc77` — deployed 2023-08-07 18:57:38+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Smart_Contract_Audit_DeltaPrime_Protocol_04112022.pdf | OwnershipFacet | own contract | OwnershipFacet (selected) `0x8f1374...0770b2` — deployed 2023-08-07 21:33:15+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Smart_Contract_Audit_DeltaPrime_Protocol_04112022.pdf | SmartLoanViewFacet | own contract | SmartLoanViewFacet (selected) `0xd9eb3d...364512` — deployed 2023-08-07 21:34:09+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Smart_Contract_Audit_DeltaPrime_Protocol_04112022.pdf | DiamondInit | own contract | DiamondInit (selected) `0x3e273b...7e7d04` — deployed 2023-08-07 19:06:24+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Smart_Contract_Audit_DeltaPrime_Protocol_04112022.pdf | UniswapV2DEXFacet | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_DeltaPrime_Protocol_04112022.pdf | DiamondLoupeFacet | own contract | DiamondLoupeFacet (selected) `0x69bec7...72b23f` — deployed 2023-08-07 19:06:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Smart_Contract_Audit_DeltaPrime_Protocol_04112022.pdf | AssetsOperationsFacet | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_DeltaPrime_Protocol_04112022.pdf | SmartLoanWrappedNativeTokenFacet | own contract | SmartLoanWrappedNativeTokenFacet (selected) `0x388f7c...492d54` — deployed 2023-08-23 22:20:51+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Smart_Contract_Audit_DeltaPrime_Protocol_04112022.pdf | TraderJoeDEXFacet | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_DeltaPrime_Protocol_04112022.pdf | VectorFinanceFacet | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_DeltaPrime_Protocol_04112022.pdf | YieldYakFacet | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_DeltaPrime_Protocol_04112022.pdf | PangolinDEXFacet | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_DeltaPrime_Protocol_04112022.pdf | SmartLoanLiquidationFacet | own contract | SmartLoanLiquidationFacet (selected) `0x686e83...2893a0` — deployed 2023-09-02 13:24:38+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Smart_Contract_Audit_DeltaPrime_Protocol_04112022.pdf | SolvencyFacet | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_DeltaPrime_Protocol_04112022.pdf | CompoundingIndex | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_DeltaPrime_Protocol_04112022.pdf | Pool | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_DeltaPrime_Protocol_04112022.pdf | TokenManager | own contract | TokenManager (selected) `0x8463b7...a823de` — deployed 2023-08-22 13:21:49+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Smart_Contract_Audit_DeltaPrime_Protocol_04112022.pdf | DiamondHelper | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_DeltaPrime_Protocol_04112022.pdf | WrappedNativeTokenPool | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_DeltaPrime_Protocol_04112022.pdf | TokenList | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_DeltaPrime_Protocol_04112022.pdf | UbeswapIntermediary | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_DeltaPrime_Protocol_04112022.pdf | UniswapV2Intermediary | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_DeltaPrime_Protocol_04112022.pdf | TraderJoeIntermediary | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_DeltaPrime_Protocol_04112022.pdf | PangolinIntermediary | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_DeltaPrime_Protocol_04112022.pdf | LinearIndex | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_DeltaPrime_Protocol_04112022.pdf | ReentrancyGuardKeccak | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_DeltaPrime_Protocol_04112022.pdf | OnlyOwnerOrInsolvent | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_DeltaPrime_Protocol_04112022.pdf | RedstoneConfigManager | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_DeltaPrime_Protocol_04112022.pdf | DeploymentConstants | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_DeltaPrime_Protocol_04112022.pdf | SolvencyMethods | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_DeltaPrime_Protocol_04112022.pdf | DiamondStorageLib | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_DeltaPrime_Protocol_04112022.pdf | SmartLoansFactory | own proxy deployment | SmartLoansFactoryTUP (proxy) (selected) `0x3ea9d4...21b03d` — deployed 2022-12-10 02:03:30+03 — liveness: live (current_address_book_code)<br>SmartLoansFactory (alternative) `0x8b5c03...9eb22d` — deployed 2023-09-20 14:37:02+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2022-12-10 was 36d from audit; next candidate 320d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Smart_Contract_Audit_DeltaPrime_Protocol_04112022.pdf | BeaconProxyVirtual | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_DeltaPrime_Protocol_04112022.pdf | ERC1967UpgradeVirtual | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_DeltaPrime_Protocol_04112022.pdf | SmartLoanDiamondProxy | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_DeltaPrime_Protocol_04112022.pdf | IAssetsExchange | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_DeltaPrime_Protocol_04112022.pdf | IIndex | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_DeltaPrime_Protocol_04112022.pdf | IUbeswapDEXFacet | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_DeltaPrime_Protocol_04112022.pdf | IAssetsOperationsFacet | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_DeltaPrime_Protocol_04112022.pdf | IOwnershipFacet | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_DeltaPrime_Protocol_04112022.pdf | IDiamondInit | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_DeltaPrime_Protocol_04112022.pdf | ISolvencyFacet | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_DeltaPrime_Protocol_04112022.pdf | ISmartLoanLiquidationFacet | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_DeltaPrime_Protocol_04112022.pdf | IYieldYakFacet | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_DeltaPrime_Protocol_04112022.pdf | ITraderJoeDEXFacet | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_DeltaPrime_Protocol_04112022.pdf | IVectorFinanceFacet | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_DeltaPrime_Protocol_04112022.pdf | IPangolinDEXFacet | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_DeltaPrime_Protocol_04112022.pdf | IYakStakingVectorSAV2 | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_DeltaPrime_Protocol_04112022.pdf | IYakStakingAVAXAAVEV1 | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_DeltaPrime_Protocol_04112022.pdf | IUniswapV2DEXFacet | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_DeltaPrime_Protocol_04112022.pdf | ISmartLoanWrappedNativeTokenFacet | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_DeltaPrime_Protocol_04112022.pdf | ISmartLoanViewFacet | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_DeltaPrime_Protocol_04112022.pdf | IDiamondCut | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_DeltaPrime_Protocol_04112022.pdf | IRatesCalculator | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_DeltaPrime_Protocol_04112022.pdf | IVectorFinanceStaking | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_DeltaPrime_Protocol_04112022.pdf | IWrappedNativeToken | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_DeltaPrime_Protocol_04112022.pdf | IStakingPositions | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_DeltaPrime_Protocol_04112022.pdf | IBorrowersRegistry | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_DeltaPrime_Protocol_04112022.pdf | SmartLoanGigaChadInterface | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_DeltaPrime_Protocol_04112022.pdf | IDiamondLoupe | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_DeltaPrime_Protocol_04112022.pdf | IERC173 | unmatched — not counted | — | listed in scope table | no |
| Smart_Contract_Audit_DeltaPrime_Protocol_04112022.pdf | IDiamondBeacon | unmatched — not counted | — | listed in scope table | no |
| blocksec_deltaprime_v1.0-signed.pdf | vPrime | unmatched — not counted | — | listed in scope (contracts/*) | no |
| blocksec_deltaprime_v1.0-signed.pdf | sPrimeUniswap | unmatched — not counted | — | listed in scope (contracts/*) | no |
| blocksec_deltaprime_v1.0-signed.pdf | vPrimeController | unmatched — not counted | — | listed in scope (contracts/*) | no |
| blocksec_deltaprime_v1.0-signed.pdf | sPrime | unmatched — not counted | — | listed in scope (contracts/*) | no |
| blocksec_deltaprime_v1.0-signed.pdf | sPrimeImpl | unmatched — not counted | — | listed in scope (contracts/*) | no |
| blocksec_deltaprime_v1.0-signed.pdf | TraderJoeV2Facet | unmatched — not counted | — | listed in scope (contracts/*) | no |
| blocksec_deltaprime_v1.0-signed.pdf | GmxV2Facet | unmatched — not counted | — | listed in scope (contracts/*) | no |
| blocksec_deltaprime_v1.0-signed.pdf | GmxV2CallbacksFacet | unmatched — not counted | — | listed in scope (contracts/*) | no |
| blocksec_deltaprime_v1.0-signed.pdf | AssetsExposureController | own contract | AssetsExposureController (selected) `0x565fd8...16c00a` — deployed 2023-08-07 21:33:20+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| blocksec_deltaprime_v1.0-signed.pdf | SmartLoanDiamondBeacon | ambiguous — not counted | SmartLoanDiamondBeacon (proxy) (alternative) `0x62cf82...dc0c6c` — deployed 2023-08-07 19:06:23+03 — liveness: live (current_address_book_code)<br>SmartLoanDiamondBeacon (proxy) (alternative) `0x2916b3...94e56d` — deployed 2022-12-10 02:02:50+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| blocksec_deltaprime_v1.0-signed.pdf | IndexRouter | unmatched — not counted | — | listed in scope (contracts/*) | no |
| blocksec_deltaprime_v1.0-signed.pdf | CaiFacet | unmatched — not counted | — | listed in scope (contracts/*) | no |
| blocksec_deltaprime_v1.0-signed.pdf | PenpieFacet | unmatched — not counted | — | listed in scope (contracts/*) | no |
| blocksec_deltaprime_v1.0-signed.pdf | ParaSwapFacet | own contract | ParaSwapFacet (selected) `0x3b963b...066ac3` — deployed 2023-09-15 19:00:31+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| blocksec_deltaprime_v1.0-signed.pdf | AssetsOperationsFacet | unmatched — not counted | — | listed in scope (contracts/*) | no |
| blocksec_deltaprime_v1.0-signed.pdf | UniswapV3Facet | unmatched — not counted | — | listed in scope (contracts/*) | no |
| blocksec_deltaprime_v1.0-signed.pdf | SolvencyMethods | unmatched — not counted | — | listed in scope (contracts/*) | no |
| blocksec_deltaprime_v1.0-signed.pdf | SmartLoansFactoryRestrictedAccess | unmatched — not counted | — | listed in scope (contracts/*) | no |
| blocksec_deltaprime_v1.0-signed.pdf | SmartLoansFactory | ambiguous — not counted | SmartLoansFactoryTUP (proxy) (alternative) `0x3ea9d4...21b03d` — deployed 2022-12-10 02:03:30+03 — liveness: live (current_address_book_code)<br>SmartLoansFactory (alternative) `0x8b5c03...9eb22d` — deployed 2023-09-20 14:37:02+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| blocksec_deltaprime_v1.0-signed.pdf | Pool | unmatched — not counted | — | listed in scope (contracts/*) | no |
| blocksec_deltaprime_v1.0-signed.pdf | DepositRewarderAbstract | unmatched — not counted | — | listed in scope (contracts/*) | no |
| blocksec_deltaprime_v1.0-signed.pdf | TokenManager | own contract | TokenManager (selected) `0x8463b7...a823de` — deployed 2023-08-22 13:21:49+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| blocksec_deltaprime_v1.0-signed.pdf | SolvencyFacetProd | own contract | SolvencyFacetProd (selected) `0xe4f747...d9dbc8` — deployed 2023-08-07 21:33:26+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| blocksec_deltaprime_v1.0-signed.pdf | HealthMeterFacetProd | own contract | HealthMeterFacetProd (selected) `0x16238e...aac8f9` — deployed 2023-08-23 22:21:09+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| blocksec_deltaprime_v1.0-signed.pdf | SmartLoanWrappedNativeTokenFacet | own contract | SmartLoanWrappedNativeTokenFacet (selected) `0x388f7c...492d54` — deployed 2023-08-23 22:20:51+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| blocksec_deltaprime_v1.0-signed.pdf | SmartLoanLiquidationFacet | own contract | SmartLoanLiquidationFacet (selected) `0x686e83...2893a0` — deployed 2023-09-02 13:24:38+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| blocksec_deltaprime_v1.0-signed.pdf | OnlyOwnerOrInsolvent | unmatched — not counted | — | listed in scope (contracts/*) | no |
| blocksec_deltaprime_v1.0-signed.pdf | ReentrancyGuardKeccak | unmatched — not counted | — | listed in scope (contracts/*) | no |
| blocksec_deltaprime_v1.0-signed.pdf | DiamondStorageLib | unmatched — not counted | — | listed in scope (contracts/*) | no |
| blocksec_deltaprime_v1.0-signed.pdf | GmxV2PlusFacet | unmatched — not counted | — | listed in scope (contracts/*) | no |
| blocksec_deltaprime_v1.0-signed.pdf | GogoPoolFacet | unmatched — not counted | — | listed in scope (contracts/*) | no |
| blocksec_deltaprime_v1.0-signed.pdf | AssetsOperationsAvalancheFacet | unmatched — not counted | — | listed in scope (contracts/*) | no |
| blocksec_deltaprime_v1.0-signed.pdf | UniswapV2Intermediary | unmatched — not counted | — | listed in scope (contracts/*) | no |
| blocksec_deltaprime_v1.0-signed.pdf | LBHooksLens | unmatched — not counted | — | listed in scope (contracts/*) | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | `0xd1f36c...819119` | ArbPoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x5d776f...12b34f` | ArbVariableUtilisationRatesCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xfeff07...39d1eb` | AssetsOperationsArbitrumFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x58ee09...f4b166` | EthPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xad7ef2...5295d1` | GLPFacetArbi | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x17fa27...92f66c` | LevelFinanceFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x5a8053...52a788` | LiquidationFlashloanArbitrum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x62cf82...dc0c6c` | SmartLoanDiamondBeacon | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xf102c7...427681` | SolvencyFacetProdArbitrum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xb4554d...65751c` | TraderJoeV2ArbitrumFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x2a1384...7f1d51` | UsdcPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x2323da...32d12b` | UsdcPoolTUP | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x38c8a2...526133` | UsdcVariableUtilisationRatesCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xb02c43...e22cf7` | UsdtPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x483ea7...a331bb` | WethPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x0d184a...bc5a72` | WethVariableUtilisationRatesCalculator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xe71427...d783a6` | YieldYakFacetArbi | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x39c575...fbd44d` | YieldYakSwapArbitrumFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 35 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 72 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 27 own (2 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 3 ambiguous, 121 unmatched
- Matched-own operational status: 27 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=7, medium=1
- Match method counts: temporal_name=3, unique_name=24

Zero-match audit list:

- [19686] DeltaPrime-Review-Piotr-Szlachciak.pdf
- [19690] PeckShield-Audit-Report-DeltaPrime.pdf

Fork inheritance lineage and inherited audits are included when available.
