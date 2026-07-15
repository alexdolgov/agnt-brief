# Agentic Audit Brief: DeltaPrime

## Export Authority

- Production state: **published scope**
- Raw selected rows: 27 across 6 audit(s)
- Eligible audit results: 8 (6 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: DeltaPrime (`deltaprime`)
- Website: [https://deltaprime.io](https://deltaprime.io)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche
- Contract surface: 963 unique implementations (1549 raw deployments)
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

- Logic-topography rows: 39; live-surface rows included: 39 (39 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 108/108 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 17/36 (47.2%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 108 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 855 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 13
- Confirmed-live implementations: 108 of 963 unique; 855 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 17/132
- Verified + Unaudited implementations: 115
- Verified by bytecode match: 0
- Unverified implementations: 831
- Unique implementations: 963
- Raw deployments: 1549
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
| Unknown | Tier 2 | 10 | 7.6% | 2022-11 |
| BlockSec | Tier 2 | 7 | 5.3% | 2025-09 |
| AstraSec | Tier 2 | 5 | 3.8% | 2024-06 |
| PeckShield | Tier 2 | 4 | 3.0% | 2023-09 |

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

### ⚠️ Verified + Unaudited (115)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ArbDepositIndex | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x647c15...0d5863` | ⚠️ Unaudited |
| ArbPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 16 deployments: arbitrum `0x200160...39f606`; arbitrum `0x419404...959fc5`; arbitrum `0x47f391...d623a6`; arbitrum `0x493d93...79b81c`; arbitrum `0x4cb8b0...d2e2dc`; arbitrum `0x5292af...236399`; arbitrum `0x57f2a8...3263ab`; arbitrum `0x587fe8...beaab7`; arbitrum `0x7bd921...eff1cd`; arbitrum `0x9a2cbb...2a4adf`; arbitrum `0x9b4efb...78a193`; arbitrum `0xa37a69...071e62`; arbitrum `0xc7cf98...f71503`; arbitrum `0xd65e7a...629d91`; arbitrum `0xf503bf...16f0f2`; arbitrum `0xfb2a62...5f108f` | ⚠️ Unaudited |
| ArbPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x91da06...a33ef9` | ⚠️ Unaudited |
| ArbPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xa273ef...948e2b` | ⚠️ Unaudited |
| ArbPoolFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x315c55...7b4870` | ⚠️ Unaudited |
| ArbPoolFactory | registry | project_anchor | own_supporting | 0 | arbitrum | unit-383777 | `0xd1f36c...819119` | ⚠️ Unaudited |
| ArbVariableUtilisationRatesCalculator | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383756 | `0x5d776f...12b34f` | ⚠️ Unaudited |
| ArbVariableUtilisationRatesCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: arbitrum `0x7b73b0...fc711d`; arbitrum `0xb9e770...6006b1`; arbitrum `0xd4a360...2cfc45`; arbitrum `0xffc157...f6dbb1` | ⚠️ Unaudited |
| ArbVariableUtilisationRatesCalculatorFixedRate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 9 deployments: arbitrum `0x034702...c849e2`; arbitrum `0x11daa8...066c26`; arbitrum `0x159cf7...4e69a7`; arbitrum `0x378bb4...5727e4`; arbitrum `0x41784e...13d71a`; arbitrum `0x519aee...eb67e2`; arbitrum `0x5820cb...74339c`; arbitrum `0x7db730...0631cf`; arbitrum `0xe77f03...fa5f23` | ⚠️ Unaudited |
| ArbVariableUtilisationRatesCalculatorZeroRate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf35884...af4f9c` | ⚠️ Unaudited |
| AssetsExposureController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x52b952...ee8d89` | ⚠️ Unaudited |
| AssetsOperationsArbitrumFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 46 deployments: arbitrum `0x040e6a...1d12e2`; arbitrum `0x05bb41...3d0ad9`; arbitrum `0x0b5a12...fa9492`; arbitrum `0x0ec0c6...aa0869`; arbitrum `0x109560...603865`; arbitrum `0x182f2c...03d5ba`; arbitrum `0x242d26...2afe07`; arbitrum `0x268607...626fc4`; arbitrum `0x26ae24...5bef80`; arbitrum `0x2a4fff...d15d21`; arbitrum `0x4074d6...3190ed`; arbitrum `0x4599e4...b5b94b`; arbitrum `0x4dbd37...781771`; arbitrum `0x5236b7...216db6`; arbitrum `0x53c1f7...64a567`; arbitrum `0x57ae63...44ec39`; arbitrum `0x5c5478...24d7d5`; arbitrum `0x632554...f07e21`; arbitrum `0x656024...a6e5f6`; arbitrum `0x6d00ec...0bb207`; arbitrum `0x6eb321...5774c4`; arbitrum `0x700c8c...d657f8`; arbitrum `0x71cdf7...498c48`; arbitrum `0x733149...2709b7`; arbitrum `0x771b82...bb4901`; arbitrum `0x803d63...e1e9aa`; arbitrum `0x86e39c...44c5fa`; arbitrum `0x884da1...8411b6`; arbitrum `0x89c896...7ed72b`; arbitrum `0x9826fa...0c5f6c`; arbitrum `0x988414...9a9d12`; arbitrum `0x98edaa...373187`; arbitrum `0x9cd052...8781ed`; arbitrum `0xa1ec5e...53b79f`; arbitrum `0xa2670d...7268e6`; arbitrum `0xa98402...79d6b3`; arbitrum `0xb27e01...458dae`; arbitrum `0xbf8b2d...a5d085`; arbitrum `0xc98915...96e473`; arbitrum `0xca60c5...91b5f5`; arbitrum `0xd43231...f94dcf`; arbitrum `0xd63fa0...350621`; arbitrum `0xe27372...63c23f`; arbitrum `0xe896cf...fe2b92`; arbitrum `0xe8f249...d82752`; arbitrum `0xf71eb1...85b4d0` | ⚠️ Unaudited |
| AssetsOperationsArbitrumFacet | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383786 | `0xfeff07...39d1eb` | ⚠️ Unaudited |
| AssetsOperationsFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5e02c0...bd2ce4` | ⚠️ Unaudited |
| BeefyFinanceArbitrumFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: arbitrum `0x10aaef...104c71`; arbitrum `0xb79184...ee2ba1`; arbitrum `0xbfb452...15d59c`; arbitrum `0xd8659a...c22072`; arbitrum `0xf2e90d...dcf37a` | ⚠️ Unaudited |
| BorrowAccessNFT | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf8d1b3...9fdea4` | ⚠️ Unaudited |
| BtcPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 15 deployments: arbitrum `0x19a9ce...08a764`; arbitrum `0x2644e1...373012`; arbitrum `0x47b0f0...4a1ddc`; arbitrum `0x5b6c77...7ddbf5`; arbitrum `0x6a08fb...6c6f38`; arbitrum `0x74d06e...30fc9e`; arbitrum `0x82babb...645081`; arbitrum `0xae5ba1...4237c5`; arbitrum `0xb5119f...d46d43`; arbitrum `0xb99201...4aa3ab`; arbitrum `0xc89476...9a044c`; arbitrum `0xcc3144...46ef10`; arbitrum `0xd26e50...6542f5`; arbitrum `0xf2f89a...d5f672`; arbitrum `0xf8c3e8...e949f7` | ⚠️ Unaudited |
| BtcPoolFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa42be1...e43f16` | ⚠️ Unaudited |
| BtcVariableUtilisationRatesCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: arbitrum `0x00fe52...69d2cc`; arbitrum `0x2557c3...fe637e`; arbitrum `0x290ebe...2aa14a`; arbitrum `0x7cb9b8...0830e6` | ⚠️ Unaudited |
| BtcVariableUtilisationRatesCalculatorFixedRate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: arbitrum `0x257757...6b46bc`; arbitrum `0x884b78...aadbc2`; arbitrum `0xa87458...6b7cb0`; arbitrum `0xad45f1...1daaf0`; arbitrum `0xecd58d...38ba66` | ⚠️ Unaudited |
| BtcVariableUtilisationRatesCalculatorZeroRate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfd9bab...bb9a1e` | ⚠️ Unaudited |
| ContractPausedEmptyImplementation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x54ef8c...d4d6ee` | ⚠️ Unaudited |
| CTKN | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 6 deployments: arbitrum `0x032d8e...b66c43`; arbitrum `0x2cf25d...34b975`; arbitrum `0x3f412f...f4e0bd`; arbitrum `0xa2ee2b...26b5ba`; arbitrum `0xa5a658...1836a4`; arbitrum `0xc71f9a...9a38ee` | ⚠️ Unaudited |
| CTKNMock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x55ca74...881826` | ⚠️ Unaudited |
| DaiPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 14 deployments: arbitrum `0x0444f5...85dd4d`; arbitrum `0x076460...a46c4f`; arbitrum `0x09952c...926064`; arbitrum `0x2a634b...b26a30`; arbitrum `0x31cc5a...c60da3`; arbitrum `0x5b8fff...db8919`; arbitrum `0x617f2e...16021d`; arbitrum `0x8259ad...32bb59`; arbitrum `0x8ff77b...e96d04`; arbitrum `0xa1eddb...1315b4`; arbitrum `0xd16b56...513168`; arbitrum `0xd74ef6...f19f9b`; arbitrum `0xdb5d94...7cf7fa`; arbitrum `0xf7c8bb...91b7d6` | ⚠️ Unaudited |
| DaiPoolFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb50349...a4c3da` | ⚠️ Unaudited |
| DaiVariableUtilisationRatesCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: arbitrum `0x44761e...db5c1f`; arbitrum `0x7eef8c...a49956`; arbitrum `0xa9ac9f...20fd69`; arbitrum `0xc876dc...784b74`; arbitrum `0xd480d9...4b5ebc` | ⚠️ Unaudited |
| DaiVariableUtilisationRatesCalculatorFixedRate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: arbitrum `0x5d33b4...81859e`; arbitrum `0x765310...958ef6`; arbitrum `0xbf8a40...e51d00`; arbitrum `0xf52628...5277f9` | ⚠️ Unaudited |
| DaiVariableUtilisationRatesCalculatorZeroRate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x255700...d557f9`; arbitrum `0x6a89dd...67a3ea` | ⚠️ Unaudited |
| DepositSwapArbitrum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x1b314c...8af907`; arbitrum `0xaa3a31...dd49e2` | ⚠️ Unaudited |
| DiamondCutFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x3732ba...f3fbcc`; arbitrum `0x81252d...51c8c1`; arbitrum `0xfccf6c...fa97ee` | ⚠️ Unaudited |
| DiamondLoupeFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5a501b...1e3763` | ⚠️ Unaudited |
| EarlyAccessNFT | token | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe31b51...237281` | ⚠️ Unaudited |
| ERC20Mock | token | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x9add42...d94860`; arbitrum `0xd7c136...0812cf` | ⚠️ Unaudited |
| EthPool | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-383753 | `0x58ee09...f4b166` | ⚠️ Unaudited |
| EthPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa2827f...a121e5` | ⚠️ Unaudited |
| GLPFacetArbi | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 9 deployments: arbitrum `0x1b8c6e...f0cbd0`; arbitrum `0x4a9b37...5170e7`; arbitrum `0x793fab...518b0b`; arbitrum `0x82e218...4f80bc`; arbitrum `0x92f037...c88dfa`; arbitrum `0xb544e1...36e29d`; arbitrum `0xbb94ff...1e2f67`; arbitrum `0xc10b6f...75751e`; arbitrum `0xe98776...b74e3a` | ⚠️ Unaudited |
| GLPFacetArbi | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383770 | `0xad7ef2...5295d1` | ⚠️ Unaudited |
| GlvFacetArbitrum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 10 deployments: arbitrum `0x11847e...1d22f3`; arbitrum `0x284416...f272f7`; arbitrum `0x326556...b7920d`; arbitrum `0x46566f...eb6c1c`; arbitrum `0x509e48...45ff8c`; arbitrum `0xca9676...0ce1ab`; arbitrum `0xcb8071...09ad6b`; arbitrum `0xd85641...244b25`; arbitrum `0xdba4cd...d4c8e3`; arbitrum `0xfa637f...ff70fc` | ⚠️ Unaudited |
| GmxBenchmarkMath | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x02ca12...75ca4f`; arbitrum `0x528ca2...ea567d` | ⚠️ Unaudited |
| GmxV2CallbacksFacetArbitrum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 37 deployments: arbitrum `0x02c55a...948edd`; arbitrum `0x09c107...9e51a0`; arbitrum `0x0b05ae...84f046`; arbitrum `0x0ce396...adac8e`; arbitrum `0x181624...672507`; arbitrum `0x18409b...6464f7`; arbitrum `0x1d74fc...6a636f`; arbitrum `0x28f86f...f9bf40`; arbitrum `0x2a82ad...ac8feb`; arbitrum `0x31a50a...91e3ac`; arbitrum `0x3ba10a...6a6edc`; arbitrum `0x4e2fb6...2ee54f`; arbitrum `0x4f3354...926906`; arbitrum `0x587d68...b05645`; arbitrum `0x6027b7...a7a55e`; arbitrum `0x6a828f...1bd655`; arbitrum `0x78885c...c01f7d`; arbitrum `0x838436...106e6b`; arbitrum `0x874a3c...6dc51f`; arbitrum `0x8e25d1...358450`; arbitrum `0x934250...dd1738`; arbitrum `0xa09a93...70b7a3`; arbitrum `0xa0ad3f...605357`; arbitrum `0xa0c32b...48b37a`; arbitrum `0xa4b4dc...80e68c`; arbitrum `0xb1d680...9b443b`; arbitrum `0xb2728f...9992b3`; arbitrum `0xb2ca32...9ade5b`; arbitrum `0xbb178e...42e333`; arbitrum `0xc53662...2df1ab`; arbitrum `0xd9a0f6...8ad9b2`; arbitrum `0xda39c4...76b07a`; arbitrum `0xdad1df...7388b4`; arbitrum `0xe15a59...b0805e`; arbitrum `0xe5138c...ce1d95`; arbitrum `0xeca1da...bc2da8`; arbitrum `0xf6c2e4...bb2032` | ⚠️ Unaudited |
| GmxV2FacetArbitrum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 52 deployments: arbitrum `0x009bfb...d77202`; arbitrum `0x03efc1...971c61`; arbitrum `0x07cce3...b0bf80`; arbitrum `0x101644...f7b22b`; arbitrum `0x1a0183...5ace77`; arbitrum `0x25de87...53f74a`; arbitrum `0x2e0138...417db2`; arbitrum `0x34440c...61e784`; arbitrum `0x3b8430...9d81a3`; arbitrum `0x3e597c...5d29dd`; arbitrum `0x3f4aad...a1c421`; arbitrum `0x4575a7...a0fe09`; arbitrum `0x4c07bf...aac8f1`; arbitrum `0x514897...b08b58`; arbitrum `0x55436a...1723e8`; arbitrum `0x5f52e3...22cb82`; arbitrum `0x61f67d...6e0a6f`; arbitrum `0x6c2df7...921ac8`; arbitrum `0x6f9c5d...d3a96a`; arbitrum `0x73c647...903071`; arbitrum `0x8f93c9...d13d23`; arbitrum `0x93df59...68d91e`; arbitrum `0x980779...aab03f`; arbitrum `0x997b79...290732`; arbitrum `0x9a7972...5eb738`; arbitrum `0xa480cf...dd7c0b`; arbitrum `0xa8fe94...809540`; arbitrum `0xae7e1d...97ae51`; arbitrum `0xb3f00b...8881f0`; arbitrum `0xb4073f...d12ad3`; arbitrum `0xb6af79...4ef22b`; arbitrum `0xbbf79d...8d5be4`; arbitrum `0xbcc297...201ed9`; arbitrum `0xbe4e41...2d2618`; arbitrum `0xc1e215...376211`; arbitrum `0xc3c881...654818`; arbitrum `0xc5dcd6...6c0ded`; arbitrum `0xca1467...79b8e0`; arbitrum `0xd1fee1...19dfb2`; arbitrum `0xd406bb...89894f`; arbitrum `0xd846fc...5353a8`; arbitrum `0xdb5380...f1e4a5`; arbitrum `0xdc1649...6dadf3`; arbitrum `0xdcb272...b06505`; arbitrum `0xe11b17...d5c42a`; arbitrum `0xe1b56c...617b5f`; arbitrum `0xe36472...c4f42f`; arbitrum `0xe5ff4d...52288b`; arbitrum `0xe923fb...be6376`; arbitrum `0xf71e04...2bfdab`; arbitrum `0xf8b2d3...f68166`; arbitrum `0xfa994c...f19cb9` | ⚠️ Unaudited |
| GmxV2PlusFacetArbitrum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 30 deployments: arbitrum `0x2160d2...a2a1ea`; arbitrum `0x2cf576...e40606`; arbitrum `0x3226ea...b46790`; arbitrum `0x3a766c...bf20f6`; arbitrum `0x3cf6cf...580843`; arbitrum `0x46c69a...9351b8`; arbitrum `0x4820bb...25043b`; arbitrum `0x52c4fb...d8ba02`; arbitrum `0x5728a7...ba3b80`; arbitrum `0x736d70...241a11`; arbitrum `0x7eb560...73580e`; arbitrum `0x7f942f...3cd0e1`; arbitrum `0x86883b...11d211`; arbitrum `0x872952...f26fd2`; arbitrum `0x88de44...84a69c`; arbitrum `0x8dab20...ff1f7e`; arbitrum `0x9aa7da...a305b8`; arbitrum `0xa4f6ca...247214`; arbitrum `0xb06360...c3c0ee`; arbitrum `0xb885fa...a684b2`; arbitrum `0xbcfbeb...b76173`; arbitrum `0xbea87f...849bfb`; arbitrum `0xc7368b...37e25b`; arbitrum `0xcfb93a...f5d5d4`; arbitrum `0xd36da1...df6c03`; arbitrum `0xe1e0bd...cb2dd5`; arbitrum `0xe202c0...0e3bfe`; arbitrum `0xea9583...b842c6`; arbitrum `0xeb071f...5a8902`; arbitrum `0xffde77...76b06d` | ⚠️ Unaudited |
| HealthMeterFacetProd | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 10 deployments: arbitrum `0x0f386e...0ad704`; arbitrum `0x124b02...33f17f`; arbitrum `0x386662...25dfc9`; arbitrum `0x438da2...0d8196`; arbitrum `0x5ccf13...a91dd6`; arbitrum `0x6ddb93...c6b34e`; arbitrum `0x8edb1a...31a56b`; arbitrum `0x99983b...15ae61`; arbitrum `0xc3eefd...a13bac`; arbitrum `0xf946fe...e56233` | ⚠️ Unaudited |
| LevelFinanceFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 12 deployments: arbitrum `0x0e2cfe...6eea1d`; arbitrum `0x27898d...14736c`; arbitrum `0x326ebe...9790ad`; arbitrum `0x37a5e0...87bf0b`; arbitrum `0x619ed4...3d4749`; arbitrum `0x6e68c0...65dac3`; arbitrum `0x7304bc...423658`; arbitrum `0x7a4336...8937e2`; arbitrum `0xc663aa...5faffd`; arbitrum `0xd49ced...acd225`; arbitrum `0xdd4032...b95c4a`; arbitrum `0xe7e35b...04f563` | ⚠️ Unaudited |
| LevelFinanceFacet | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383739 | `0x17fa27...92f66c` | ⚠️ Unaudited |
| LinkPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x2d99ee...f42a03` | ⚠️ Unaudited |
| LinkPoolFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x37b4a5...26dae1` | ⚠️ Unaudited |
| LinkVariableUtilisationRatesCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x317dbf...8071cc` | ⚠️ Unaudited |
| LiquidationFlashloanArbitrum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 9 deployments: arbitrum `0x0d45a3...f6e375`; arbitrum `0x2eb9db...a22026`; arbitrum `0x66eb3b...5e0649`; arbitrum `0x71bdf0...704c28`; arbitrum `0x7c4e79...a8456c`; arbitrum `0x83cd0a...e1c3ed`; arbitrum `0x97a9a2...15c755`; arbitrum `0xc4f546...6f9c25`; arbitrum `0xd171b9...f907cc` | ⚠️ Unaudited |
| LiquidationFlashloanArbitrum | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383754 | `0x5a8053...52a788` | ⚠️ Unaudited |
| LTIPFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x427f21...18522e`; arbitrum `0xb605a0...20775a` | ⚠️ Unaudited |
| MockERC20OpenMint | token | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5ce6ee...e872af` | ⚠️ Unaudited |
| MockToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x22205e...c6d2b7`; arbitrum `0x63a657...1f32b4`; arbitrum `0xa93930...1ba234` | ⚠️ Unaudited |
| MockToken6Decimals | token | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: arbitrum `0x019aba...eab533`; arbitrum `0x7a4a53...81dd3b`; arbitrum `0xb3efdb...5c009d`; arbitrum `0xcc318d...5d2f6f` | ⚠️ Unaudited |
| OwnershipFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: arbitrum `0x13b4ee...893932`; arbitrum `0x1e34d7...01a7f6`; arbitrum `0x88efcc...8f9300`; arbitrum `0x966ac0...414384`; arbitrum `0x9e8451...c36dc7` | ⚠️ Unaudited |
| ParaSwapFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 17 deployments: arbitrum `0x0aa196...5986c6`; arbitrum `0x29126b...f680a4`; arbitrum `0x34cb5f...19db03`; arbitrum `0x394c6a...ba5783`; arbitrum `0x641493...19f90a`; arbitrum `0x88f6f4...a5a67d`; arbitrum `0x8cb22e...c7009a`; arbitrum `0x91fa62...02de01`; arbitrum `0x941421...305c90`; arbitrum `0x9b80b7...dcf9ea`; arbitrum `0xa64a53...32043d`; arbitrum `0xaa50e9...4b317a`; arbitrum `0xb54804...aa9684`; arbitrum `0xbbf3d7...a8696c`; arbitrum `0xca7e2b...5925cf`; arbitrum `0xed01f3...f61ee0`; arbitrum `0xf45297...c5a30b` | ⚠️ Unaudited |
| PenpieFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 14 deployments: arbitrum `0x130c97...ad0acf`; arbitrum `0x4dc5a4...6e07d7`; arbitrum `0x50c477...1d509b`; arbitrum `0x5550b2...7205bb`; arbitrum `0x7145c3...ec2db5`; arbitrum `0x753a67...2ac5bc`; arbitrum `0x9ca3f3...ab8eda`; arbitrum `0xa9b5f2...a6e255`; arbitrum `0xc0b6df...05f676`; arbitrum `0xcda8c6...72d60a`; arbitrum `0xd4185b...35e211`; arbitrum `0xf5ae41...91f739`; arbitrum `0xf8d96b...05fc09`; arbitrum `0xff1138...ae2b83` | ⚠️ Unaudited |
| Prime_L2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3de81c...a6d14e` | ⚠️ Unaudited |
| PrimeBuybackDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3d6021...b3ace3` | ⚠️ Unaudited |
| PrimeLeverageFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 6 deployments: arbitrum `0x1899f6...f1fa91`; arbitrum `0x4d2946...9c7d96`; arbitrum `0x5cc04d...c4c3a0`; arbitrum `0x5d3301...938dcc`; arbitrum `0xabc210...d1127c`; arbitrum `0xb50853...a1411c` | ⚠️ Unaudited |
| PrimeRtknAirdropDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 14 deployments: arbitrum `0x0b6b88...29117d`; arbitrum `0x0c0cbd...0ea45f`; arbitrum `0x314497...3e991f`; arbitrum `0x5f2d3d...388258`; arbitrum `0x6ed885...fbe37a`; arbitrum `0x6eff91...2fea8c`; arbitrum `0x708c95...49366d`; arbitrum `0x7ccd64...c3d52a`; arbitrum `0x8b5306...08640b`; arbitrum `0x99ab80...bb1ac7`; arbitrum `0x9c4fbb...fc462d`; arbitrum `0xe3553b...afdfd1`; arbitrum `0xf02908...46acf4`; arbitrum `0xfda763...f7cdb2` | ⚠️ Unaudited |
| RecoveryFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8b912b...f912f3` | ⚠️ Unaudited |
| RemoveArbiAssetFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x8d74f3...0dabfb`; arbitrum `0x9e4de5...b80651` | ⚠️ Unaudited |
| RemoveWstEthAssetFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8fe7d8...71dc6e` | ⚠️ Unaudited |
| ReusablePrimeDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x90ab08...cc2620`; arbitrum `0xdce1e5...885f3e` | ⚠️ Unaudited |
| RTKNConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x0ff4c4...fffe25`; arbitrum `0x129d8f...dc2525`; arbitrum `0x1bf15c...a59e73` | ⚠️ Unaudited |
| RTKNDP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8eb3ce...bf03dc` | ⚠️ Unaudited |
| RTKNDP2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xca4dbd...ce160d` | ⚠️ Unaudited |
| RTKNMock1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x77811b...daa85e` | ⚠️ Unaudited |
| RTKNMock2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3310bc...815a71` | ⚠️ Unaudited |
| RtknToPrimeConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x85ff7e...47a7bd` | ⚠️ Unaudited |
| SmartLoanDiamondBeacon | registry | project_anchor | own_supporting | 1 | arbitrum | unit-383837 | `0x62cf82...dc0c6c` | ⚠️ Unaudited |
| SmartLoanDiamondBeacon | registry | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x968f94...6e2651`; arbitrum `0xb3a1e0...ea6f9e` | ⚠️ Unaudited |
| SmartLoanLiquidationFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 17 deployments: arbitrum `0x10cc67...68a859`; arbitrum `0x16fbaa...deb6b8`; arbitrum `0x2ac333...5e8d2a`; arbitrum `0x2e4cf9...58d207`; arbitrum `0x337d2d...9bfb06`; arbitrum `0x33eb03...2dab34`; arbitrum `0x349c3b...e11667`; arbitrum `0x43c4d0...9f4201`; arbitrum `0x65cb4f...85eada`; arbitrum `0x84db4e...c89d7f`; arbitrum `0x954467...e72c15`; arbitrum `0x97bf6e...04fdea`; arbitrum `0xa99572...f0c2b2`; arbitrum `0xc7144e...538467`; arbitrum `0xe3a10f...fbe95d`; arbitrum `0xf5481a...7a94a7`; arbitrum `0xf6ea93...6a9935` | ⚠️ Unaudited |
| SmartLoansFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: arbitrum `0x1a942d...c350b9`; arbitrum `0x9c3032...51122a`; arbitrum `0xe5b625...7c150e`; arbitrum `0xfe1406...67a347` | ⚠️ Unaudited |
| SmartLoanViewFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 22 deployments: arbitrum `0x049393...cc94fc`; arbitrum `0x13ff76...23fe64`; arbitrum `0x28a7ca...62f674`; arbitrum `0x2c2bf8...cee8a8`; arbitrum `0x376314...c2b3ad`; arbitrum `0x37fc55...821686`; arbitrum `0x39ca77...5d0cd9`; arbitrum `0x4659db...c437f2`; arbitrum `0x5429c8...f36b54`; arbitrum `0x998092...df5558`; arbitrum `0xae2029...6ef055`; arbitrum `0xb32014...1b01a6`; arbitrum `0xc6eb2e...16c1af`; arbitrum `0xcc7c4c...d40829`; arbitrum `0xdad16b...63d1e1`; arbitrum `0xe4b97f...95ab5b`; arbitrum `0xe5cbab...2ee51d`; arbitrum `0xe849cb...447f59`; arbitrum `0xeed177...8d9c98`; arbitrum `0xf33ca4...ccfa51`; arbitrum `0xf44472...ebeba0`; arbitrum `0xfc4f39...4c201d` | ⚠️ Unaudited |
| SmartLoanWrappedNativeTokenFacet | token | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 8 deployments: arbitrum `0x05ced7...046a62`; arbitrum `0x10d3dc...e5ad3f`; arbitrum `0x121b59...af97fa`; arbitrum `0x226603...717ad6`; arbitrum `0x8a3cda...cb5fa6`; arbitrum `0x8d784a...994d95`; arbitrum `0xe372fa...7d64a3`; arbitrum `0xe43a65...e820f8` | ⚠️ Unaudited |
| SolvencyFacetProdArbitrum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 35 deployments: arbitrum `0x0412b8...48f25c`; arbitrum `0x044e5f...a6e303`; arbitrum `0x0d10d3...ece007`; arbitrum `0x12f43e...1e6a88`; arbitrum `0x1d7ec7...1b9be0`; arbitrum `0x2a43c8...bf2a8f`; arbitrum `0x2a47f5...8282d6`; arbitrum `0x2f3005...79fe40`; arbitrum `0x3149a5...65cccd`; arbitrum `0x318533...26c395`; arbitrum `0x3cb6aa...f134b3`; arbitrum `0x46de55...6f2ff6`; arbitrum `0x579d0b...15c467`; arbitrum `0x5a3899...89ed7f`; arbitrum `0x6e4153...6d2aa4`; arbitrum `0x79f221...afebee`; arbitrum `0x7ec901...2c8590`; arbitrum `0x8f27fc...5d3641`; arbitrum `0x901ff7...39a8d8`; arbitrum `0x92a7b9...a8ec1f`; arbitrum `0x988cf5...2881e9`; arbitrum `0xa334e8...707770`; arbitrum `0xac3a92...804aba`; arbitrum `0xc938bd...cb66a7`; arbitrum `0xca605c...dc916c`; arbitrum `0xce49cc...d49e1a`; arbitrum `0xd3cd21...30e248`; arbitrum `0xd7eae5...23cadc`; arbitrum `0xda0de5...8a2e54`; arbitrum `0xda1c1b...8cfba2`; arbitrum `0xdc8488...1e7910`; arbitrum `0xddff57...4e891e`; arbitrum `0xe3b642...376d9c`; arbitrum `0xe91ddd...fa506a`; arbitrum `0xfff988...e1db14` | ⚠️ Unaudited |
| SolvencyFacetProdArbitrum | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383782 | `0xf102c7...427681` | ⚠️ Unaudited |
| sPrimeRevenueTokenChoices | token | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xedbe47...8f4434` | ⚠️ Unaudited |
| SushiSwapDEXFacet | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383764 | `0x952361...1530b2` | ⚠️ Unaudited |
| SwapDebtFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 6 deployments: arbitrum `0x0867d8...24a863`; arbitrum `0x1b3909...22957f`; arbitrum `0x1f53c3...618b9e`; arbitrum `0x81c96f...dca388`; arbitrum `0xac5194...d19187`; arbitrum `0xdc168a...0bc576` | ⚠️ Unaudited |
| TestGmxV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x89f85f...c2ad86` | ⚠️ Unaudited |
| Timelock | governance | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: arbitrum `0x19a2e8...b841ba`; arbitrum `0x1fa4de...ff15e7`; arbitrum `0x2642a3...f7ba95`; arbitrum `0x43d9a2...c9aa93` | ⚠️ Unaudited |
| TokenManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 15 deployments: arbitrum `0x005613...9c7ff9`; arbitrum `0x04aec3...b9539c`; arbitrum `0x35ca24...a0b3cd`; arbitrum `0x365854...2e3702`; arbitrum `0x38f4f6...a18d30`; arbitrum `0x462b7e...e506c3`; arbitrum `0x7ba466...0fa7c3`; arbitrum `0x81db28...bc5b7f`; arbitrum `0x9c122b...02cd36`; arbitrum `0x9c1876...6cfe3d`; arbitrum `0xb70286...bcc132`; arbitrum `0xb80670...3a4304`; arbitrum `0xc29afe...022967`; arbitrum `0xe182e5...c5ed84`; arbitrum `0xe24e0a...42ed18` | ⚠️ Unaudited |
| TraderJoeV2ArbitrumFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 27 deployments: arbitrum `0x099702...2397a2`; arbitrum `0x1b077f...2f3098`; arbitrum `0x21d719...9f34f2`; arbitrum `0x285026...f1252d`; arbitrum `0x33e63f...dc2200`; arbitrum `0x3490d6...77c764`; arbitrum `0x34e5e0...51a261`; arbitrum `0x364d3f...0c50a8`; arbitrum `0x445b88...975a0a`; arbitrum `0x4afd12...0c57a5`; arbitrum `0x4c6f5a...31b776`; arbitrum `0x4fcc3d...7175bc`; arbitrum `0x572d7f...8e8e77`; arbitrum `0x76483b...9e8432`; arbitrum `0x78dfaa...60ae2f`; arbitrum `0x85db28...997fae`; arbitrum `0x8629eb...33ad9c`; arbitrum `0x88ddad...c25991`; arbitrum `0x89dfd4...4f394a`; arbitrum `0x8e9dea...e4322e`; arbitrum `0x9db801...e0afe4`; arbitrum `0x9ea05b...9eb880`; arbitrum `0xb18599...768e38`; arbitrum `0xcdf738...362560`; arbitrum `0xd6002c...18cb5d`; arbitrum `0xeff02c...ef4268`; arbitrum `0xfc9ad6...cdbbbe` | ⚠️ Unaudited |
| TraderJoeV2ArbitrumFacet | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383772 | `0xb4554d...65751c` | ⚠️ Unaudited |
| UniPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xf9a12a...2a2967` | ⚠️ Unaudited |
| UniPoolFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x252cba...47566c` | ⚠️ Unaudited |
| UniVariableUtilisationRatesCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa0a4c3...f3e4ae` | ⚠️ Unaudited |
| UsdcPool | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-383740 | `0x2a1384...7f1d51` | ⚠️ Unaudited |
| UsdcPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 17 deployments: arbitrum `0x3b3d28...6145fd`; arbitrum `0x4db8ba...514978`; arbitrum `0x546f24...f3dcc5`; arbitrum `0x591fa3...889a79`; arbitrum `0x6e1bad...748f3a`; arbitrum `0x70c5e4...7f2aaf`; arbitrum `0x784451...16d676`; arbitrum `0x78d927...5d0031`; arbitrum `0x7cc8a9...cdf6f8`; arbitrum `0x8a3b51...93f973`; arbitrum `0x94aaa8...437bae`; arbitrum `0xacf6d8...5d7b72`; arbitrum `0xb4dc91...43bfac`; arbitrum `0xd90772...8a285b`; arbitrum `0xeaf5a4...ef340f`; arbitrum `0xf62b62...c7da92`; arbitrum `0xfb8320...889042` | ⚠️ Unaudited |
| UsdcPoolTUP | core_logic | project_anchor | own_supporting | 4 | avalanche | unit-383839 (4 proxies) | 4 deployments: avalanche `0x2323da...32d12b`; avalanche `0x475589...bb63d0`; avalanche `0xd222e1...efbca1`; avalanche `0xd26e50...6542f5` | ⚠️ Unaudited |
| UsdcVariableUtilisationRatesCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 7 deployments: arbitrum `0x23873d...26a329`; arbitrum `0x373248...7cba9a`; arbitrum `0x6715e7...7acb39`; arbitrum `0xa24e8b...391dce`; arbitrum `0xb03b33...7343a1`; arbitrum `0xd4970a...95760d`; arbitrum `0xd9f6df...0bca8f` | ⚠️ Unaudited |
| UsdcVariableUtilisationRatesCalculator | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383744 | `0x38c8a2...526133` | ⚠️ Unaudited |
| UsdcVariableUtilisationRatesCalculatorFixedRate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: arbitrum `0x341fc5...c4d243`; arbitrum `0x4c52cf...5a03b2`; arbitrum `0x9a3502...956528`; arbitrum `0xb218db...3bae74` | ⚠️ Unaudited |
| UsdcVariableUtilisationRatesCalculatorZeroRate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x97886a...0b35d5` | ⚠️ Unaudited |
| UsdtPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x5fae0e...eece74` | ⚠️ Unaudited |
| UsdtPool | core_logic | project_anchor | own_supporting | 0 | avalanche | unit-383825 | `0xb02c43...e22cf7` | ⚠️ Unaudited |
| UsdtVariableUtilisationRatesCalculator | token | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xddc0b0...c5ae9f` | ⚠️ Unaudited |
| vPrime | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x28739d...ccfabc` | ⚠️ Unaudited |
| vPrimeControllerArbitrum | governance | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2323da...32d12b` | ⚠️ Unaudited |
| WethPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 19 deployments: arbitrum `0x03dbff...8e389a`; arbitrum `0x03ecc7...eff127`; arbitrum `0x0b4c71...761a5a`; arbitrum `0x1400b8...05a3b2`; arbitrum `0x22e97b...c56856`; arbitrum `0x46a2cf...81cd9d`; arbitrum `0x4816a7...3fe6fa`; arbitrum `0x494735...4a78bc`; arbitrum `0x53fda4...6ae03e`; arbitrum `0x5fc2be...501110`; arbitrum `0x61ac1d...e84ebe`; arbitrum `0x8027e0...779ce8`; arbitrum `0xa1f7ff...609fd5`; arbitrum `0xa47adc...b78852`; arbitrum `0xb52124...1a91f2`; arbitrum `0xbe6719...1dbed8`; arbitrum `0xcde74b...4ef63d`; arbitrum `0xd334bf...58e571`; arbitrum `0xee8f1b...780b92` | ⚠️ Unaudited |
| WethPool | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-383749 | `0x483ea7...a331bb` | ⚠️ Unaudited |
| WethVariableUtilisationRatesCalculator | token | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: arbitrum `0x02a4b9...c5ae5f`; arbitrum `0x4d14da...24969f`; arbitrum `0x94ab21...689ffb`; arbitrum `0xd00d2b...f09ced`; arbitrum `0xe49801...897a49` | ⚠️ Unaudited |
| WethVariableUtilisationRatesCalculator | token | project_anchor | own_supporting | 0 | arbitrum | unit-383737 | `0x0d184a...bc5a72` | ⚠️ Unaudited |
| WethVariableUtilisationRatesCalculatorFixedRate | token | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 6 deployments: arbitrum `0x0b11a1...b8664e`; arbitrum `0x3acd0a...16c474`; arbitrum `0x4a0f31...987cd6`; arbitrum `0x8d4c79...fc6ede`; arbitrum `0xa17467...bbfc72`; arbitrum `0xd987b2...d7998c` | ⚠️ Unaudited |
| WethVariableUtilisationRatesCalculatorZeroRate | token | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x8a80f1...b7222c`; arbitrum `0xcf5473...5979d7`; arbitrum `0xe59408...872ba6` | ⚠️ Unaudited |
| WithdrawalIntentFacet | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 34 deployments: arbitrum `0x030b1b...12a2f7`; arbitrum `0x044cb8...e50998`; arbitrum `0x09885a...e31f32`; arbitrum `0x0b5fab...c6139f`; arbitrum `0x139f9c...4cfb52`; arbitrum `0x293768...3310d9`; arbitrum `0x4b5081...a79443`; arbitrum `0x4fd6ae...170e59`; arbitrum `0x52d572...113143`; arbitrum `0x56133d...48320a`; arbitrum `0x5c09b2...53cc6d`; arbitrum `0x5c1526...fbea69`; arbitrum `0x5e1a1b...f18b80`; arbitrum `0x6bfbb2...07d04d`; arbitrum `0x6ffea6...8b4d8e`; arbitrum `0x7b054a...8e96c7`; arbitrum `0x7b9076...b3028c`; arbitrum `0x86d200...ac4963`; arbitrum `0x8ad902...92cc75`; arbitrum `0x8fd264...297888`; arbitrum `0x92336b...5ee67b`; arbitrum `0x9eb10a...aaa6e0`; arbitrum `0xa5263d...a2382c`; arbitrum `0xa6a866...fe1a22`; arbitrum `0xa8df1c...e9c52a`; arbitrum `0xb2487e...1824e8`; arbitrum `0xb4e461...9c9c4b`; arbitrum `0xc4f726...35b05e`; arbitrum `0xd0ea7f...65edc3`; arbitrum `0xd562d0...eca489`; arbitrum `0xd6d37e...174d83`; arbitrum `0xdb443e...fe34e2`; arbitrum `0xefeb67...ab194c`; arbitrum `0xff3685...157360` | ⚠️ Unaudited |
| WithdrawUnsupportedPositionsFacet | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe5b3c1...15989c` | ⚠️ Unaudited |
| YieldYakFacetArbi | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 7 deployments: arbitrum `0x17d832...7f9aee`; arbitrum `0x30e50a...021558`; arbitrum `0x3b642a...1faf61`; arbitrum `0x408db5...d2c1d7`; arbitrum `0xe1e983...acaa6a`; arbitrum `0xf5b4a2...532acc`; arbitrum `0xf9471f...ebfd73` | ⚠️ Unaudited |
| YieldYakFacetArbi | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383781 | `0xe71427...d783a6` | ⚠️ Unaudited |
| YieldYakSwapArbitrumFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 12 deployments: arbitrum `0x096170...ec1715`; arbitrum `0x11803b...b1e29f`; arbitrum `0x437bc7...fe394e`; arbitrum `0x47b278...f7d4b0`; arbitrum `0x4d9965...19b9de`; arbitrum `0x65752f...04f6e5`; arbitrum `0x8ce5da...e0a361`; arbitrum `0xa60cd8...8ec6b3`; arbitrum `0xb03959...82f4a0`; arbitrum `0xbee8b0...2946a7`; arbitrum `0xcff6e0...bf67d6`; arbitrum `0xdb6a88...92b6a8` | ⚠️ Unaudited |
| YieldYakSwapArbitrumFacet | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383745 | `0x39c575...fbd44d` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (831)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Proxy (impl: 0xdcb1f88f89b78330d83d16fc65419ad088a7ef6e) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | `0xd38c5c...7e730e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383733 | `0x00c0b3...1cb9ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x01e113...4774b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x025fae...18f05d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x028e1f...1327e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x04d6db...851cd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x04f88d...ec5c0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0796a9...aeb0e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x08245f...99be79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x097317...ba33a3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383734 | `0x0a0d95...74e255` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383736 | `0x0bebeb...3d46b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0e3113...ed70a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0ed7b4...195fb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0f24e8...18b9b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0f61ae...0e2bf7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0f8b4a...88ce93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0f9c98...5558be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0fdbb2...031e8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x10859b...4b5cd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x10972f...326da3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x11938f...9aca52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x147e2e...1bfda0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x14c82c...fddd72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x14cb8b...d20c2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x14d199...d4dd0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x15ece4...d3b2bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x18166a...ba9cb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x18b95c...27a26c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1904b2...e2e771` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1b9bca...c3b06e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1db708...f99ce1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1e36f0...c0ff49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1f185d...c64078` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x206ac5...372551` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x22f6b6...d25cf9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2692e8...abc4d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x275cae...39675c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x280027...08e90d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2acf4b...8a0aa8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383741 | `0x2af687...3523d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2b67d1...158324` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383742 | `0x2b8c61...c3d08a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2c0ed5...570f04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2dfe26...98f6e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2e2fe9...b883c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2fcd23...3b58f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2fe9a1...df415f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x344993...6af923` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x347bfb...0cf6b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x35dc8f...dd8081` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x36df23...cf7a23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x38c83d...2ac967` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x38ec7c...823528` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3c4f8a...d3471c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3c9699...b53249` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x402f80...ce8c2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x406758...2a330e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x42d8b0...d89202` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x42fbae...c9c981` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x465a38...df3bcf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x474df4...86eb53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x476156...1531c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x47f655...388af7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x487598...572211` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x48dcd4...09c9f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x494d07...ac946c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x49f296...6fc4b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4ae651...be6557` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4b181a...b2814b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4be302...112195` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4c11e3...e7f31d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4d5292...89adaf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4f032c...92d8d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4f8712...34cbea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x50e063...2e01c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x518e32...3dd5d1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383750 | `0x526a9c...0bab35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x549b20...fefc0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x555b0c...64e372` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x568947...120976` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x569ab1...5c0993` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383752 | `0x56f671...b8fd43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x581816...fdc8b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5a65c9...eaf0b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5bfebc...8bfdbd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383755 | `0x5c671d...3e497c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5cde36...1f8c35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5de1bc...7f72e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5e67f5...d00f1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5f3db5...3e4195` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5f9a71...dc47f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x627efa...5a71c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x636557...3884c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x64933d...cd9349` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x663240...9b7716` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6862d0...14c66b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6a4959...84ce39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6aa046...c7cede` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6aa0fe...8f3982` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6b99dd...015dec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6ba540...fa67bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6c4cc8...72a1ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6d1cae...80ee80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6d641b...7bc335` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6e66f5...7dbce4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x70952a...b91f21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x70deaa...6ac55b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x729acf...414f9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7392da...297bf7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7789bf...2fcaf7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x788a83...7ed360` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x792a31...a32de6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7a73fd...4bfd4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7ca507...7bab40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7dcf90...fb63f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7eb84e...7a9c93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x81d7ad...f652b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x838fc9...c8127d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x848714...361183` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x853b35...75a7e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x85b3e2...58bbaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x85ccd7...de62a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x867f2a...472994` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x87812e...9a769c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8894df...609bc8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383760 | `0x889cfe...7552b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8a1ac9...a4525c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8ac9dc...b965cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8d3896...06bfa6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8ee2d6...7e00a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8f0a04...ca7890` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8fd72f...d4038e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383763 | `0x8fe384...7a1de0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9083e0...dfedf9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x92b548...7a2aa0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x936fea...8a7f47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x93b9d0...4b2556` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x970939...f3a854` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x97f4c8...7f6e4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x98c5ce...1f0b41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9b10f5...790b88` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383765 | `0x9d0ac6...cd51c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9f35b2...d3063d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383766 | `0xa22a30...91d77f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa322e7...a4399b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383768 | `0xa508c3...0afb74` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383769 | `0xa5984c...1a5b48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa6af43...e6f066` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa6b4d0...cbfb09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa6f394...73b423` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa9535e...1e93b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa9c8e3...662576` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaa36d9...2ad6ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaa9cea...51ba78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xab6919...e7d93c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xab91d9...1848f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xac6a79...731889` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xad2e37...3c98b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xadc48e...fb69d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb07262...f5bb61` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383771 | `0xb13c47...db8799` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb2b7ed...c22983` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb50ada...4f51c6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383773 | `0xb60935...aad3c5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383774 | `0xb83264...3282af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb86e7d...4f669f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb97a31...4079dc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383775 | `0xbadc83...4a52e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbbbef5...530d4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbc6ff4...0d2edd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbf1841...074c2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc1e3ef...3f75e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc2a446...0166cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc2b0fe...c95f3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc3d4ca...41846b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383776 | `0xc4644c...9c4ae3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc629e8...dc41c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc69d70...c41671` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc6ed4f...53b523` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc8f573...a096e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc92a36...e0c650` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcdd264...840944` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xce3efe...9180d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xce7d93...b11ecb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd04e07...b785ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd1a131...6377ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd58b43...f0ada6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd5e8f6...362540` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd603c2...801706` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd73a65...472e45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd86104...b01e92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd9ec11...49329b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdaf78e...970d9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdb5323...c62c7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdcb1f8...a7ef6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdd3802...9ad3e9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383779 | `0xdeab10...040147` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdec722...aa18dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe47a87...24d051` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe5b735...5b98c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe7b30e...18be5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe86ec4...4c90a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe933cf...109353` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xea3293...092e08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xea712a...b6e5f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xeb1e38...50e94f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xeb84cb...13803d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xeb9cee...8cb1f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xebabef...533d06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xee30b0...cb033d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf27f8b...dd2af2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf2adb0...243ec2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf3608e...ca077e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf3915c...58595e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf3eaa6...ed6c76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf5ad6c...ec8c48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf70fdb...6dc627` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf73511...637e18` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383783 | `0xf7844a...e262cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf7ceaf...4c0ce2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383784 | `0xf8d1b3...9fdea4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfa354e...8378f1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383785 | `0xfd5665...3a7b79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfe36a0...822937` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfefaaf...3655f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xff3f46...528a30` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383787 | `0xff5e3d...265c20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x015fdc...6163d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x021e11...5f1b35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x023da3...e76ccb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x027843...8702ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x02bfca...6e0611` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x02deb6...f02bfb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x02e806...e42033` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x02efc4...d07cc2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383788 | `0x02f802...777118` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x034db1...97673d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x035611...992ae5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x036f83...b65c77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x038ef8...cb1143` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x03ecc7...eff127` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x03efc1...971c61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x044558...aed778` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x04f88d...ec5c0f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383789 | `0x05f08c...fad5c7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383790 | `0x05ff7c...f7a5dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x066f86...890895` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0728d6...6dcb4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x074e3e...9a37bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x076460...a46c4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0809c2...0e5ce9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0815af...154a22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x082761...abd4bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x09254b...808bd2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x099702...2397a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x09fa9b...77e1f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0b5a12...fa9492` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0bf3c4...84ce22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0c6a9d...b1e50b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0d184a...bc5a72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0f31c3...a01b31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0f9246...a7460a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0ff6cd...b2d818` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x106246...f45d99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x10aaef...104c71` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383791 | `0x10cc67...68a859` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x121b59...af97fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x12318f...0728b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x127587...a8e275` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x12a049...5dc589` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x12e209...7f3ab4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x13652f...af4c58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1396d8...c9a21e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x160aef...9666ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x16f437...920c76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x175451...255521` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x182f2c...03d5ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x184dce...b8874b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1874fc...91cac0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x187ae5...213161` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x18fd7f...b0548f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1a65e1...0eec3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1a942d...c350b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1b254c...a97875` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1c9776...62c69b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1ce026...c2add9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1d18d5...be0487` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1d84e2...056c0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1efb45...8c9895` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1f6798...912538` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1f6e3e...8e9d58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1f818e...65da02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1fbe7d...b9fc64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x228a19...e5a197` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x22b1b2...bc3e20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2382a0...2b2406` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x23ae8a...7b23a0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383792 | `0x23c691...dd7b93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x23c7fe...ab0fcb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x241196...88e4ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2412bc...cbe8f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x244e3f...1ccba1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x250867...ec0e0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x251e8a...291def` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x252cba...47566c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x25f9e3...7860b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2643c5...f37082` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x267078...9cfde7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x26ae24...5bef80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x26d21d...ef4721` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x26e238...a6dbd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x26f868...fbcd10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x274ae5...bc7054` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x27898d...14736c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x278b32...739998` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x27e933...ac9400` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x280027...08e90d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x28739d...ccfabc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x29a823...a201e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x29acc7...320a5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2a634b...b26a30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2a7676...f804b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2b3342...bc4a28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2c6153...60834e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2d155c...14a6bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2d7ade...05239b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2e0c30...be7415` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2e5f11...afcce8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2eb1fa...3718b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2ec219...e8bd40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2fea1f...4ab9a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x30a97f...09c3c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x30be56...04f6f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x30f75f...794e3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x315c55...7b4870` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3165ed...2a102b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x31691e...c2a9d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x31ee3c...68c3fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x322a76...b94c28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x32570b...ee34d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x328651...d66d68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x33c803...c7f298` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x340e98...5815e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x34b925...c8275b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x34cb5f...19db03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x356437...206a20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3572a7...7ac62b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x35c89a...1d1547` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x35e37e...8760e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x35eaaa...78b047` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x365854...2e3702` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x36df23...cf7a23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x371b61...0bc482` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3750f8...37005d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x379c40...e50f35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x37e0ed...46cca7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x38c8a2...526133` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3a19ec...e2526a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3a5c3d...579e45` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383793 | `0x3a7de0...345b95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3b3d28...6145fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3b963b...066ac3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3c6edb...9ec308` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3cb6aa...f134b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3cb980...362ef2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3cf61b...49f1d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3d0cc9...ae6887` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3d23f5...6b9278` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3d85b5...d5a630` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383794 | `0x3de81c...a6d14e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3e22d7...f50c20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3e273b...7e7d04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3eb972...e52a3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3ed989...0b97be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3ee41e...2508d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3efbc6...963a93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3f06cf...830360` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3f06f8...d270ee` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383795 | `0x3f13aa...d4e303` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3f3a0d...747c5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3fe9be...6af4ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x408dd6...7df0b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4109d3...53d640` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4162f7...542bb0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383796 | `0x42f642...1aba7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x431290...0d3073` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4353c7...94c069` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x438961...98ab59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x44bb6c...511e18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x44c075...8eea39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x44e7de...c3f428` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x44f6ae...3c50d4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383797 | `0x451377...341bc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x45e457...ae699c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4614fa...39cfbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x46ef42...801afc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383798 | `0x46fad5...dfb60b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x476df0...e313cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x477068...a987d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x483ea7...a331bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x492579...a23428` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383799 | `0x493d93...79b81c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x494740...b79817` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x49a90b...86bf39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4a5fcd...58e51b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4a63e3...f5fbfb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4a8034...662655` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4afc67...e4299a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4cfa2d...fd24c6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383800 | `0x4eecb7...3bb1af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4fb135...03aba2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4fc4f0...a4853e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x50b0b5...7a94a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x514fce...4adf17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5236b7...216db6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383801 | `0x52b74a...07061c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x52f459...e9944d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5349d2...ccf17d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x53adce...179ae9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x53dd72...5abda8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5429c8...f36b54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x543744...6233a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x546bed...61ee3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x547092...aa8f77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x554da9...a1ea7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5550b2...7205bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x55c2b0...f69670` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x561f60...b7e5e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x565fd8...16c00a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x569da6...c147e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x56f671...b8fd43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x57aa5e...2f7f12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x57dcf6...64621a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x583ddf...8bd748` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383802 | `0x58570d...3b971e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x588606...39cca7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x58b30d...f4181b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383803 | `0x58da82...c446a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x58e44c...b04ec7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x591fa3...889a79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x596f6e...e7e875` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x598ff8...d4c21b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5a3899...89ed7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5acb06...d4cd4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5be954...633d4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5c31bf...8ff358` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5c8dc4...67459f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5c94e2...998845` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5d3e1e...e2dac6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383804 | `0x5ddeb4...d4d064` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5def32...42eef9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5e4e17...235837` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5eaa7c...013db0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383805 | `0x5efffd...703818` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5f2076...72265f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5f2a84...74662d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383806 | `0x5f6847...9e1e9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5f8f0c...1a6a7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5f914e...bddf09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5ff1de...482868` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x609a91...46091f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x60d930...9de490` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x618ce9...f5c8a0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383807 | `0x61ff2a...74680e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x622703...8ca804` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x627a40...59d7ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x62cf82...dc0c6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x636f2e...60e0c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x637312...dc1af3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383808 | `0x637fdb...546a08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x63a2c5...478d7c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383809 | `0x63d138...ac18e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6442aa...f5683a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383810 | `0x646afd...8ff9fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x65567a...396d71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x656024...a6e5f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6588ef...609ef8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x65997c...23ae2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x65d2ae...a68a9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6642dc...d975d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x66a9b2...7da7cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x66b00a...7c3a1d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383811 | `0x66b8ad...edb2cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x66d589...023164` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x66eb3b...5e0649` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x66f3d4...7b52ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6715e7...7acb39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x677ed8...9bc12d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x67b3fe...6e474a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x67f000...2cdbf4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x68541a...8e9a64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x686a06...84d0d2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383812 | `0x6a47ec...086181` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6a78ba...aefb99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6afaf6...a56d25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6b5dc7...53e319` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6ccc94...e294b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6d149f...db1ded` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6d7c12...dcc59d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6e4153...6d2aa4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6eb321...5774c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6f8e87...61450e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x700c8c...d657f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x70952a...b91f21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x70ab2d...523ca2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x715a84...fede75` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383813 | `0x7201e8...f7dbb1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x720c05...0c5d33` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383814 | `0x731a27...37729a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x73429b...21a5bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x749781...2c601e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x74b5c3...051713` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x74c8b0...d1ea27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7582b6...44163d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x75c09a...f9058e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x76cc6e...944d3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x76ccae...0cccab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x76e2cb...75ad83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x771b82...bb4901` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7789bf...2fcaf7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x77cebb...d6167f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x784451...16d676` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7865fa...6f690e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383815 | `0x796dbe...32132f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x797281...545c18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x79cebe...b084e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7a4336...8937e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7a49d8...ead6a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7a612c...71b7d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7a9de4...426ef0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7ab065...c4fac8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7acf6f...02bf15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7b8fd6...14c009` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7bd921...eff1cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7c4e79...a8456c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7dbcb7...b7f2d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7eb474...c598f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7f61ae...930bfc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7feebf...c13cfa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8034e0...ddee88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x80a695...8c685b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x80e982...dacbf2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x811777...82de79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x81a9c2...80fc4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x82ea19...fe4435` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x834c1b...69e344` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x83bc67...655819` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x83cd0a...e1c3ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x843a52...b1f538` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x857376...f0d808` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x85bac7...bb1d55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x85d3c8...0314e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x86de3b...23862d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x871a44...0f1dc1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x87ab14...c70bc0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x87ed42...3cfaa8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x881fa1...e4688c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8894df...609bc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x88ddad...c25991` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x88f6f4...a5a67d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8903cc...152cb1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x891882...2658ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x897350...d4e0c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x899c48...cfdddc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8ac992...931666` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8b912b...f912f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8c0278...11fd1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8cf6ba...ead439` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383816 | `0x8cfb12...3e9815` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8d40b3...21eec2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8d4e53...348108` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8d6e15...e4cece` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8ddbaf...8bd6a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8e25d1...358450` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383817 | `0x8e2bd8...cef70a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8edc9c...25baf2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383818 | `0x8f0848...0a78fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8f93c9...d13d23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8fc176...83cfcf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8fe384...7a1de0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8ffa4c...612e32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9049e7...085e77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x906cf1...d10341` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x908444...8d9942` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x911fad...76ebb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x911fd4...9094e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x912751...1b8865` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9208c8...f08dc1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x926455...f6cb10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9289d0...2764b8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383819 | `0x938a0c...bc8518` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383820 | `0x93a0f1...830e80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x93df59...68d91e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x94464c...bf3fa7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9479fb...c9d708` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x952361...1530b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x95301e...c742f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x95c24c...80026f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x962dfc...72fa55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x96312a...5cd1c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x97564e...88979d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x97a7dc...46102b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x97a9a2...15c755` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x988414...9a9d12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x994f42...f4dadf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x99983b...15ae61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9a249b...a4569d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9a6875...65186f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9a7972...5eb738` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9aa920...1ca705` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9ab319...ddbc2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9ab33e...d5e007` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9b670c...009c07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9c1876...6cfe3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9c1d4b...a8f550` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9cd7ec...9d57bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9d7c62...13b6c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9e02b7...3ead39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9e3a4c...a74f18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9eb889...37898d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383821 | `0x9f0798...31fb95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9fd0ba...cc05fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9fdb39...a43c42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9ff80e...3f3607` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa0170e...0fdb71` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383822 | `0xa09687...81edf9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa0c263...818639` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa0f699...eb5a51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa1a3c7...e5f1b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa1eddb...1315b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa22a30...91d77f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383823 | `0xa22eba...07db8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa23d76...146716` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa31316...12d39b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa3531d...5bb7e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa361df...2e32a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa384b0...59d812` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa42be1...e43f16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa43824...00b4f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa493b6...dfc643` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa4ae33...3d2b32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa4d395...3cc5f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa4f485...03e2ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa5b79c...f5bd77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa5bcab...d287e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa68a12...9c0c7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa75f9a...825f7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa82a6b...1ba447` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa8571f...c7f8b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa8f94e...e6ad12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa8fe94...809540` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa99572...f0c2b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaa3a31...dd49e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaa99fc...73cacf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383824 | `0xab764b...782ad2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xab91f4...49b7a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xac0035...e5dbc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xac3a92...804aba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xac6b05...2312a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xacf923...1b84d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xad35f9...5daa9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xada4d4...a491cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xadc48e...fb69d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xae0010...4eee41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xae7e1d...97ae51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xae8e9b...20d08c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaec837...292899` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaf293e...e05d8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaf343d...8ebdc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaf9739...40e84a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xafec1b...c79650` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb04af2...d6e9c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb13c47...db8799` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb2343b...fecaf4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb2996e...19a885` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb2a70c...ac4368` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb2b0c5...eebb52` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383826 | `0xb2c4b9...a22cfc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb354bc...53c89f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb36f67...25a829` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb40da8...85804e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb4307a...39e8bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb49453...abac1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb5aab4...1424e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb605a0...20775a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb6af79...4ef22b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb6d0f3...6ecb3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb79184...ee2ba1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb913ac...16b227` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xba1347...406745` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xba1eba...e43e42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xba819e...8ae098` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbadc83...4a52e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbbb1f0...05e62f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbc1aad...06ea2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbc6ef3...72d965` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbe3278...052d7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbe4e41...2d2618` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbe79d0...97b43a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbebf96...be5c34` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383827 | `0xbf98e0...5be421` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbfb77d...18281b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbff35b...a9bd44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc004a7...75a096` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc041e7...941705` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc0b6df...05f676` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383828 | `0xc15d06...e0b599` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc20229...e1855c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383829 | `0xc295bb...2c6c4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc3c881...654818` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc46167...ebced9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc4a23b...b63c4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc51122...5be16c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc54c72...fb2728` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc58d8d...bcb88d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc6d91c...d1770f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc76f00...0e72ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc7eeb6...28b235` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc80e2d...199ba9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc83d3b...6ff10d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc85730...b5722c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc8b2ab...20001b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383830 | `0xc8e375...9c8711` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc9b7e4...a79e9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xca60c5...91b5f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcbcf4c...12b58b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383831 | `0xcd5779...39420d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcdf738...362560` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xce003b...16007b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcf1795...4dec8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcf4be1...23dc88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcf90b3...9979e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcfc3a0...8ebef8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd082bf...a77221` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd0e644...441c6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd173e6...a4bcda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd1cd5d...7ba405` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd296c1...685e93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd2a2bc...c0abd7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd33fcb...29f8bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd356cd...e223b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd406bb...89894f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd4412a...750375` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd44a97...0d6a40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd55e05...352426` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd653ad...f6abfb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd7eae5...23cadc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383832 | `0xd7feb2...359148` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd803da...b60f1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd8d295...a9061e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xda1c1b...8cfba2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383833 | `0xdb5d94...7cf7fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdbe8a2...e890a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdc1649...6dadf3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdc39cc...3ab493` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdc7932...f62cae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xde0c5e...be4fb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdec722...aa18dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdfa060...008ec9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdfef86...5bfeec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe05d08...665d59` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383834 | `0xe06e2e...f89f78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe1ac18...e26ace` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe1ceab...8841b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe29e0f...ed796e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe2c255...a09e3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe36dde...122cbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe3bd27...5f353d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe55bc0...8a7d76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe5b625...7c150e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe5e104...0c040c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe657d0...4ea3a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe67b11...d6ded1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe71427...d783a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe7e35b...04f563` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe8043e...e1abe4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe84714...81af39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe849cb...447f59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe86ec4...4c90a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe8d7ba...69e545` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe8eab8...0c0a82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe8fdda...74ab8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe91ddd...fa506a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe9c7ea...885eaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xea1093...f4512d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xea7bd6...c5479e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xea7cab...9b2fd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xeaf5a4...ef340f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xeb1e90...3232cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xecbdae...74566d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xed6c91...9d908e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xed7ab4...eedafa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xee54f0...3ff95f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xee8f64...389f3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xef2d87...6941b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xef52a6...498187` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xef59ef...948f99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xefaf1a...04b20a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xeff02c...ef4268` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf06fb2...d1bb44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf1a98f...85da62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf1bd22...185ea8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf39424...a31fee` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383835 | `0xf39782...8ed58e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf3cdfa...6fee1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf469c4...3640a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf5952b...d1e5fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf62f31...e52316` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf652b8...6f5035` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf6ad3c...9fba44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf71376...3cbcee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf73511...637e18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf74c44...3ccea1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf7844a...e262cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf80096...b00125` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf81533...bf8503` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf825b4...b2e31f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf82ad9...7d7e56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf9a12a...2a2967` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfa9a2c...f04743` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383836 | `0xfaf20e...8c7795` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfb2a62...5f108f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfc1643...9eb85a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfd5665...3a7b79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfdbb20...5578c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfdc928...93c9bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfde54f...c41550` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfebedc...a83bc1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfeff07...39d1eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfff91e...c67104` | ❓ Unverified |

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
| native | 131 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 831 |

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
