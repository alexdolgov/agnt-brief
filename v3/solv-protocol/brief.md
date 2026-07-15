# Agentic Audit Brief: Solv Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 17 (1 matched; 16 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Solv Protocol (`solv-protocol`)
- Website: [https://solv.finance/](https://solv.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, base, berachain, bob, bsc, ethereum, linea, mantle, merlin, polygon, scroll
- Contract surface: 128 unique implementations (128 raw deployments)
- Coverage basis: 1/2 confirmed own live verified implementations (50.0%); conservative 50.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $441,346,597.45
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Solv Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across arbitrum, avalanche, base, bob, bsc, ethereum, linea, mantle, merlin, scroll. Structural roles: 1 core, 1 infra. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: core (1), infra (1)
- Contract kinds: contract (2)
- Detected standards: erc1967proxy (2)
- Frameworks: openzeppelin (2), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 2

## Fork Analysis

1 of 34 contracts are derived from known codebases. 33 contracts have no detected origin.

### Forked Contracts

**ERC1967Proxy** (`0x09d334...bd0533`, chain 56)
Origin: free-protocol (`0x09d334...bd0533`)
Containment: 100.0% - 26 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0c2bc4...cd5b7d`, chain 1)
- UnnamedContract (`0x1d5262...ef86ba`, chain 1)
- UnnamedContract (`0x763b8a...93218d`, chain 1)
- UnnamedContract (`0x80cc10...7de2d4`, chain 1)
- UnnamedContract (`0xa2bf58...51ef80`, chain 1)
- UnnamedContract (`0xba0e1c...c824c3`, chain 1)
- UnnamedContract (`0xd8f734...66c351`, chain 1)
- UnnamedContract (`0x1ff723...13d845`, chain 56)
- UnnamedContract (`0x2be450...6a234a`, chain 56)
- UnnamedContract (`0x6c0d32...74e546`, chain 56)
- UnnamedContract (`0x85167a...4c7dc0`, chain 56)
- UnnamedContract (`0xa91a44...80c4dd`, chain 56)
- UnnamedContract (`0xad0fc9...374845`, chain 56)
- UnnamedContract (`0x0ba5f5...f35705`, chain 4200)
- UnnamedContract (`0x7bf582...ad348b`, chain 4200)
- UnnamedContract (`0xafcdfd...4ea86b`, chain 4200)
- UnnamedContract (`0xb777e6...66016d`, chain 4200)
- UnnamedContract (`0x9954ec...42c09f`, chain 8453)
- UnnamedContract (`0x0679e9...aec176`, chain 42161)
- UnnamedContract (`0x1af4ea...ae4196`, chain 42161)
- UnnamedContract (`0x407320...47a6e5`, chain 42161)
- UnnamedContract (`0x445f5d...68a8f3`, chain 42161)
- UnnamedContract (`0xd3d62e...c7e41a`, chain 42161)
- UnnamedContract (`0xf00aa0...1037c7`, chain 42161)
- UnnamedContract (`0x19a90f...b1773a`, chain 43114)
- UnnamedContract (`0x5e3067...3d388d`, chain 43114)
- UnnamedContract (`0x814f3a...85263a`, chain 43114)
- UnnamedContract (`0xb4bed2...783090`, chain 43114)
- UnnamedContract (`0xc2f695...897100`, chain 43114)
- UnnamedContract (`0x3f2be1...300b68`, chain 60808)
- UnnamedContract (`0xb97cbc...19c32f`, chain 60808)
- UnnamedContract (`0xd157b7...ebc864`, chain 60808)
- TransparentUpgradeableProxy (`0x83e025...667ea7`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 2; live-surface rows included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 34/43 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/2 (50.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 34 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 94 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 4 standard proxy/library)
- Proxy deployments represented within implementation groups: 23
- Confirmed-live implementations: 34 of 128 unique; 94 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/96
- Verified + Unaudited implementations: 95
- Verified by bytecode match: 0
- Unverified implementations: 32
- Unique implementations: 128
- Raw deployments: 128
- Audits discovered: 17 (17 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-05 (fresh)
- Audit staleness (calendar age): 2 fresh, 4 aging, 11 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: 50.0% (OpenZeppelin)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| OpenZeppelin | Tier 1 | 1 | 1.0% | 2024-12 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| MainnetMinter | unknown | project_anchor | own_supporting | 1 | bsc | unit-392830 | `0x83e025...667ea7` | ✅ Audited |

### ⚠️ Verified + Unaudited (95)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccessControlledOffchainAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x038fa5...97c4b6` | ⚠️ Unaudited |
| AddressResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2095ae...160611` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x030879...1f66d1` | ⚠️ Unaudited |
| ARM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x38660c...5cce5f` | ⚠️ Unaudited |
| ARMProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x411de1...c75e81` | ⚠️ Unaudited |
| AtomicLockContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x036505...5f6241` | ⚠️ Unaudited |
| AtomicMintContract | unknown | project_anchor | own_supporting | 1 | bsc | unit-392829 | `0x09d334...bd0533` | ⚠️ Unaudited |
| BondPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x27c39b...cb8d4f` | ⚠️ Unaudited |
| BondVoucher | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x03d3de...899cd3` | ⚠️ Unaudited |
| BondVoucherDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x23bdfd...176f1c` | ⚠️ Unaudited |
| BRORouter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xb8c587...b00878` | ⚠️ Unaudited |
| BurnMintTokenPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x00ce37...1e4ce7` | ⚠️ Unaudited |
| BurnMintTokenPoolAndProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x07d7a9...dd4200` | ⚠️ Unaudited |
| BurnWithFromMintTokenPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0c6dda...672d02` | ⚠️ Unaudited |
| BurnWithFromMintTokenPoolAndProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x476eef...240b93` | ⚠️ Unaudited |
| CommitStore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x002b16...0edeea` | ⚠️ Unaudited |
| ConvertiblePool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1f800d...66196f` | ⚠️ Unaudited |
| ConvertibleVoucher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08a394...16747a` | ⚠️ Unaudited |
| ConvertibleVoucherDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xf613e5...94a43b` | ⚠️ Unaudited |
| CreditBondOfferingMarket | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x26e417...72de24` | ⚠️ Unaudited |
| DefaultBondVoucherSVG | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x042502...9b5cab` | ⚠️ Unaudited |
| DefaultConvertibleVoucherSVG | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a8de2...e901ab` | ⚠️ Unaudited |
| DefaultEarnSVG | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3cc251...231af1` | ⚠️ Unaudited |
| DefaultFlexibleDateVestingVoucherSVG | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3516f5...237686` | ⚠️ Unaudited |
| DefaultOpenFundRedemptionSVG | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x9476fa...f7e918` | ⚠️ Unaudited |
| DefaultOpenFundShareSVG | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5c3c75...188f18` | ⚠️ Unaudited |
| EACAggregatorProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x03a1f4...42cc45` | ⚠️ Unaudited |
| EarnConcrete | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08884c...8e77ca` | ⚠️ Unaudited |
| EarnDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e9b61...71c4db` | ⚠️ Unaudited |
| EarnMetadataDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x071449...af4065` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x6c029d...78efe9` | ⚠️ Unaudited |
| EVM2EVMOffRamp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x006fc7...8bbca7` | ⚠️ Unaudited |
| EVM2EVMOnRamp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x004405...03a390` | ⚠️ Unaudited |
| FeeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x13da31...6495d1` | ⚠️ Unaudited |
| FlexibleDateVestingPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00c392...99d97c` | ⚠️ Unaudited |
| FlexibleDateVestingVoucher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a0c7c...15c228` | ⚠️ Unaudited |
| FlexibleDateVestingVoucherDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1187c9...5f7486` | ⚠️ Unaudited |
| FoFNavOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x11c2a1...880914` | ⚠️ Unaudited |
| ForwardTokenToFormContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc86b8...d023c1` | ⚠️ Unaudited |
| GnosisSafe | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xbbf0a0...b3b5d5` | ⚠️ Unaudited |
| GnosisSafeL2 | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x04dd7c...791d3f` | ⚠️ Unaudited |
| Governable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaf8e96...9d8a47` | ⚠️ Unaudited |
| ICToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x030879...1f66d1` | ⚠️ Unaudited |
| InitialConvertibleOfferingMarket | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2e2e94...dc6afe` | ⚠️ Unaudited |
| InitialVestingOfferingMarket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a34f8...cc6d7e` | ⚠️ Unaudited |
| IssueMarket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x443e5e...55e7f8` | ⚠️ Unaudited |
| LockReleaseTokenPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0238d2...25e2e4` | ⚠️ Unaudited |
| LockReleaseTokenPoolAndProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d7368...521fc0` | ⚠️ Unaudited |
| ManualPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x193371...6e45e2` | ⚠️ Unaudited |
| NavOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x02a90b...05dcd9` | ⚠️ Unaudited |
| OFMWhitelistStrategyManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x069c3b...ae2ff5` | ⚠️ Unaudited |
| OpenFundMarket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x069c3b...ae2ff5` | ⚠️ Unaudited |
| OpenFundRedemptionConcrete | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2181e8...89f78a` | ⚠️ Unaudited |
| OpenFundRedemptionDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x006a8b...d3612a` | ⚠️ Unaudited |
| OpenFundRedemptionMetadataDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14df2c...da160d` | ⚠️ Unaudited |
| OpenFundShareConcrete | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x2b45bc...8cd63f` | ⚠️ Unaudited |
| OpenFundShareDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x069c3b...ae2ff5` | ⚠️ Unaudited |
| OpenFundShareMetadataDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x08884c...8e77ca` | ⚠️ Unaudited |
| PriceOracleManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x7b430d...e2edc4` | ⚠️ Unaudited |
| PriceRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x020082...a81985` | ⚠️ Unaudited |
| PriceStrategyManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce4816...72d6b8` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x010476...cc305d` | ⚠️ Unaudited |
| ProxyToMeson | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x25ab3e...6948d3` | ⚠️ Unaudited |
| RegistryModuleOwnerCustom | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13022e...b2e533` | ⚠️ Unaudited |
| RMN | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c1c02...4948f3` | ⚠️ Unaudited |
| Router | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x141fa0...17dde8` | ⚠️ Unaudited |
| SafeProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x33ec85...b46bb6` | ⚠️ Unaudited |
| SftWrappedToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x33d762...5fe16d` | ⚠️ Unaudited |
| SftWrappedTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0679e9...aec176` | ⚠️ Unaudited |
| SftWrapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2b62cd...41b649` | ⚠️ Unaudited |
| SOLV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x169e36...4c940d` | ⚠️ Unaudited |
| SolvBTCMultiAssetPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x024a24...0e22c3` | ⚠️ Unaudited |
| SolvBTCRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x02c5be...3ad2ce` | ⚠️ Unaudited |
| SolvBTCRouterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x13da31...6495d1` | ⚠️ Unaudited |
| SolvBTCV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x3647c5...dbbdc0` | ⚠️ Unaudited |
| SolvBTCYieldTokenOracleForSFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x0e9b61...71c4db` | ⚠️ Unaudited |
| SolvBTCYieldTokenV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x32bc65...617d75` | ⚠️ Unaudited |
| SolvBTCYieldTokenV3_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x0f6f33...728f3b` | ⚠️ Unaudited |
| SolvConvertibleMarket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29935f...1b9d69` | ⚠️ Unaudited |
| Solver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73a911...087cfa` | ⚠️ Unaudited |
| SolvICMarket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01981d...f9f4f2` | ⚠️ Unaudited |
| SVGBackgroundGenerator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37eab4...9574dd` | ⚠️ Unaudited |
| TimelockedERC20ContainerConcrete | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc57108...4745d7` | ⚠️ Unaudited |
| TimelockedERC20ContainerDefaultSVG | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfc8ffd...5affbf` | ⚠️ Unaudited |
| TimelockedERC20ContainerDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x314e06...5004ee` | ⚠️ Unaudited |
| TimelockedERC20ContainerMetadataDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3e709b...f69ac5` | ⚠️ Unaudited |
| TokenAdminRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x39ae10...e7751e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x01024a...591261` | ⚠️ Unaudited |
| UniswapV2PriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xaebb5d...47ff72` | ⚠️ Unaudited |
| UpgradableMeson | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1522de...3f5aec` | ⚠️ Unaudited |
| USDCTokenPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x13f967...acb6d5` | ⚠️ Unaudited |
| VestingPool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x00c392...99d97c` | ⚠️ Unaudited |
| WhitelistStrategyManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa1a4fa...ad5ed6` | ⚠️ Unaudited |
| XSolvBTCOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x121de6...d77ae5` | ⚠️ Unaudited |
| XSolvBTCPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x412b49...fed437` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392788 | `0x0c2bc4...cd5b7d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392789 | `0x1d5262...ef86ba` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392790 | `0x763b8a...93218d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392791 | `0x80cc10...7de2d4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392792 | `0xa2bf58...51ef80` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392793 | `0xba0e1c...c824c3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392794 | `0xd8f734...66c351` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-392812 | `0x1ff723...13d845` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-392813 | `0x2be450...6a234a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-392814 | `0x6c0d32...74e546` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-392815 | `0x85167a...4c7dc0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-392816 | `0xa91a44...80c4dd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-392817 | `0xad0fc9...374845` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | merlin | unit-392795 | `0x0ba5f5...f35705` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | merlin | unit-392797 | `0x7bf582...ad348b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | merlin | unit-392798 | `0xafcdfd...4ea86b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | merlin | unit-392799 | `0xb777e6...66016d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-392828 | `0x9954ec...42c09f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-392800 | `0x0679e9...aec176` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-392801 | `0x1af4ea...ae4196` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-392802 | `0x407320...47a6e5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-392803 | `0x445f5d...68a8f3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-392804 | `0xd3d62e...c7e41a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-392805 | `0xf00aa0...1037c7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392806 | `0x19a90f...b1773a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392807 | `0x5e3067...3d388d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392809 | `0x814f3a...85263a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392810 | `0xb4bed2...783090` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392811 | `0xc2f695...897100` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bob | unit-392818 | `0x3f2be1...300b68` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bob | unit-392823 | `0xb97cbc...19c32f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bob | unit-392824 | `0xd157b7...ebc864` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [SolvProtocol-SolvBTCVault-Oct-2025-OffsideLabs.pdf](https://github.com/solv-finance/Audit/blob/main/Offside/SolvProtocol-SolvBTCVault-Oct-2025-OffsideLabs.pdf) | OffsideLabs | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |
| [Solv Mainnet Minter Audit-Openzeppelin.pdf](https://github.com/solv-finance/Audit/blob/main/Openzeppelin/Solv%20Mainnet%20Minter%20Audit-Openzeppelin.pdf) | OpenZeppelin | Audit | 2024-11 | aging | Direct | contract_name | matched | 1 | 1 | 0 | 0 | high |
| [SolvBTC Blacklist Audit-Openzeppelin.pdf](https://github.com/solv-finance/Audit/blob/main/Openzeppelin/SolvBTC%20Blacklist%20Audit-Openzeppelin.pdf) | OpenZeppelin | Audit | 2024-12 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [20241209_Paladin_LayerZeroSolvBTC_Final_Report.pdf](https://github.com/solv-finance/Audit/blob/main/Paladin/20241209_Paladin_LayerZeroSolvBTC_Final_Report.pdf) | Paladin | Audit | 2024-12 | aging | Direct | address | no match | 0 | 0 | 0 | 1 | high |
| [Solv-Protocol-SolvBTC-Audit-Report-Quanstamp_2024-08-16.pdf](https://github.com/solv-finance/Audit/blob/main/Quanstamp/Solv-Protocol-SolvBTC-Audit-Report-Quanstamp_2024-08-16.pdf) | Quanstamp | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [Solv-Protocol-Vault-Guardian-Audit-Report-Quanstamp_2024-03-26.pdf](https://github.com/solv-finance/Audit/blob/main/Quanstamp/Solv-Protocol-Vault-Guardian-Audit-Report-Quanstamp_2024-03-26.pdf) | Guardian | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 29 | high |
| [Solv-Protocol-xSolvBTC-Audit-Report-Quanstamp_2025-07-10.pdf](https://github.com/solv-finance/Audit/blob/main/Quanstamp/Solv-Protocol-xSolvBTC-Audit-Report-Quanstamp_2025-07-10.pdf) | Quanstamp | Audit | 2025-06 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [ERC3525 audit report v2 - Salus.pdf](https://github.com/solv-finance/Audit/blob/main/Salus/ERC3525%20audit%20report%20v2%20-%20Salus.pdf) | Salus | Audit | 2023-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [SOLV-token-bsc_audit_report_salus_2024-06-21.pdf](https://github.com/solv-finance/Audit/blob/main/Salus/SOLV-token-bsc_audit_report_salus_2024-06-21.pdf) | Salus | Audit | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [SOLV-token-eth_audit_report_salus_2026-05-06.pdf](https://github.com/solv-finance/Audit/blob/main/Salus/SOLV-token-eth_audit_report_salus_2026-05-06.pdf) | Salus | Audit | 2026-05 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Solv Protocol V3 Audit Report v2 - Salus.pdf](https://github.com/solv-finance/Audit/blob/main/Salus/Solv%20Protocol%20V3%20Audit%20Report%20v2%20-%20Salus.pdf) | Salus | Audit | 2023-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 29 | high |
| [Solv-Protocol-Open-Fund_audit_report_2023-07-31 - Salus.pdf](https://github.com/solv-finance/Audit/blob/main/Salus/Solv-Protocol-Open-Fund_audit_report_2023-07-31%20-%20Salus.pdf) | Salus | Audit | 2023-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 16 | high |
| [Solv-Protocol-Vault-Guardian-Audit-Report-Salus_2024-01-04.pdf](https://github.com/solv-finance/Audit/blob/main/Salus/Solv-Protocol-Vault-Guardian-Audit-Report-Salus_2024-01-04.pdf) | Guardian | Audit | 2024-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 15 | high |
| [Solv-Protocol_incremental_audit_report_2023-05-15 - Salus.pdf](https://github.com/solv-finance/Audit/blob/main/Salus/Solv-Protocol_incremental_audit_report_2023-05-15%20-%20Salus.pdf) | Salus | Audit | 2023-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [Solv-Yield-Bearing-Tokens-Audit-Report-Salus-20240101.pdf](https://github.com/solv-finance/Audit/blob/main/Salus/Solv-Yield-Bearing-Tokens-Audit-Report-Salus-20240101.pdf) | Salus | Audit | 2024-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [Solv_Protocol_TimeLocked_ERC20_Container_audit_report_2023_07_05 - Salus.pdf](https://github.com/solv-finance/Audit/blob/main/Salus/Solv_Protocol_TimeLocked_ERC20_Container_audit_report_2023_07_05%20-%20Salus.pdf) | Salus | Audit | 2023-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [Solv_Protocol_TimeLocked_ERC20_Container_audit_report_2023_07_05.pdf](https://github.com/solv-finance/Audit/blob/main/Salus/Solv_Protocol_TimeLocked_ERC20_Container_audit_report_2023_07_05.pdf) | Salus | Audit | 2023-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [18103] SolvProtocol-SolvBTCVault-Oct-2025-OffsideLabs.pdf — no match: Extracted contract names from the audit scope file listing and state files. Audit date from executive summary: concluded on September 20th, 2025.
- [18104] Solv Mainnet Minter Audit-Openzeppelin.pdf — matched: Only one contract in scope: MainnetMinter.sol
- [18105] SolvBTC Blacklist Audit-Openzeppelin.pdf — no match: Scope section explicitly lists four files: ISolvBTC.sol, SolvBTCV2_1.sol, SolvBTCV3.sol, and BlacklistableUpgradeable.sol. Audit date is December 27, 2024 from the header.
- [18106] 20241209_Paladin_LayerZeroSolvBTC_Final_Report.pdf — no match: Only SolvBTCAdapter is explicitly listed in the scope. Other contracts (MintAndBurnOFTAdapterWithFeeAndRateLimitUpgradeable, etc.) are dependencies, not in scope.
- [18107] Solv-Protocol-SolvBTC-Audit-Report-Quanstamp_2024-08-16.pdf — no match: Extracted from scope section and file listings. SolvBTCFactory and SolvBTCRouter are mentioned in findings as new contracts added during fix review.
- [18108] Solv-Protocol-Vault-Guardian-Audit-Report-Quanstamp_2024-03-26.pdf — no match: Extracted all contracts from the scope section (src/ files) and file signatures appendix. Audit date from changelog: '2024-03-25 - Final Report'.
- [18109] Solv-Protocol-xSolvBTC-Audit-Report-Quanstamp_2025-07-10.pdf — no match: Three contracts explicitly listed in scope section: SolvBTCRouterV2, XSolvBTCPool, XSolvBTCOracle. Audit date from final report date (2025-06-24).
- [18110] ERC3525 audit report v2 - Salus.pdf — no match: All contracts listed in Appendix 1 - Files in Scope. Audit date from 'Dates Mar 10 2023' in Project Dashboard.
- [18111] SOLV-token-bsc_audit_report_salus_2024-06-21.pdf — no match: Only one contract in scope: SOLV.sol. Audit date from 'Dates' field.
- [18112] SOLV-token-eth_audit_report_salus_2026-05-06.pdf — no match: Only one contract file in scope: contracts/SOLV-ethereum.sol. Audit date from 'Dates May 06 2026' and 'Logs May 06 2026'.
- [18113] Solv Protocol V3 Audit Report v2 - Salus.pdf — no match: Extracted 29 contract names from the scope table in Appendix 1. Audit date from 'Dates Mar 10 2023' in the project dashboard.
- [18114] Solv-Protocol-Open-Fund_audit_report_2023-07-31 - Salus.pdf — no match: Extracted 16 contract names from scope table and findings targets. Audit date from 'Dates July312023' and 'Logs July262023;July312023'.
- [18115] Solv-Protocol-Vault-Guardian-Audit-Report-Salus_2024-01-04.pdf — no match: All contracts listed in Appendix 1 - Files in Scope. Audit date from 'Dates Jan042024' in ProjectDashboard.
- [18116] Solv-Protocol_incremental_audit_report_2023-05-15 - Salus.pdf — no match: Extracted 6 contracts from Appendix-1 Files in Scope. Audit date from 'Dates May152023' and 'Logs May062023;May152023'.
- [18117] Solv-Yield-Bearing-Tokens-Audit-Report-Salus-20240101.pdf — no match: Extracted 5 contracts from Appendix 1 - Files in Scope. Audit date inferred from 'Dates Jan012024' in ProjectDashboard, interpreted as January 2024, using last day of month.
- [18118] Solv_Protocol_TimeLocked_ERC20_Container_audit_report_2023_07_05 - Salus.pdf — no match: Extracted 9 contracts from Appendix-1 Files in Scope plus ERC20TransferHelper from findings targets.
- [18119] Solv_Protocol_TimeLocked_ERC20_Container_audit_report_2023_07_05.pdf — no match: Extracted 9 contracts from Appendix-1 Files in Scope and 1 additional contract (ERC20TransferHelper) from findings targets.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| SolvProtocol-SolvBTCVault-Oct-2025-OffsideLabs.pdf | SolvBTCVault | unmatched — not counted | — | listed in scope | no |
| SolvProtocol-SolvBTCVault-Oct-2025-OffsideLabs.pdf | VaultDeposit | unmatched — not counted | — | listed in scope | no |
| SolvProtocol-SolvBTCVault-Oct-2025-OffsideLabs.pdf | VaultInitialize | unmatched — not counted | — | listed in scope | no |
| SolvProtocol-SolvBTCVault-Oct-2025-OffsideLabs.pdf | VaultOracleUpdate | unmatched — not counted | — | listed in scope | no |
| SolvProtocol-SolvBTCVault-Oct-2025-OffsideLabs.pdf | VaultRequestWithdraw | unmatched — not counted | — | listed in scope | no |
| SolvProtocol-SolvBTCVault-Oct-2025-OffsideLabs.pdf | VaultUpdate | unmatched — not counted | — | listed in scope | no |
| SolvProtocol-SolvBTCVault-Oct-2025-OffsideLabs.pdf | VaultWithdraw | unmatched — not counted | — | listed in scope | no |
| SolvProtocol-SolvBTCVault-Oct-2025-OffsideLabs.pdf | MinterManagerInitialize | unmatched — not counted | — | listed in scope | no |
| SolvProtocol-SolvBTCVault-Oct-2025-OffsideLabs.pdf | MinterManagerMint | unmatched — not counted | — | listed in scope | no |
| SolvProtocol-SolvBTCVault-Oct-2025-OffsideLabs.pdf | MinterManagerTransferAdmin | unmatched — not counted | — | listed in scope | no |
| SolvProtocol-SolvBTCVault-Oct-2025-OffsideLabs.pdf | MinterManagerUpdateMinter | unmatched — not counted | — | listed in scope | no |
| SolvProtocol-SolvBTCVault-Oct-2025-OffsideLabs.pdf | Vault | unmatched — not counted | — | listed in scope | no |
| SolvProtocol-SolvBTCVault-Oct-2025-OffsideLabs.pdf | WithdrawRequest | unmatched — not counted | — | listed in scope | no |
| SolvProtocol-SolvBTCVault-Oct-2025-OffsideLabs.pdf | MinterManager | unmatched — not counted | — | listed in scope | no |
| Solv Mainnet Minter Audit-Openzeppelin.pdf | MainnetMinter | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x83e025...667ea7` — deployed 2025-01-21 10:43:24+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SolvBTC Blacklist Audit-Openzeppelin.pdf | ISolvBTC | unmatched — not counted | — | listed in scope | no |
| SolvBTC Blacklist Audit-Openzeppelin.pdf | SolvBTCV2_1 | unmatched — not counted | — | listed in scope | no |
| SolvBTC Blacklist Audit-Openzeppelin.pdf | SolvBTCV3 | unmatched — not counted | — | listed in scope | no |
| SolvBTC Blacklist Audit-Openzeppelin.pdf | BlacklistableUpgradeable | unmatched — not counted | — | listed in scope | no |
| 20241209_Paladin_LayerZeroSolvBTC_Final_Report.pdf | SolvBTCAdapter | unmatched — not counted | — | listed in scope table and findings section | no |
| Solv-Protocol-SolvBTC-Audit-Report-Quanstamp_2024-08-16.pdf | SolvBTC | unmatched — not counted | — | listed in scope | no |
| Solv-Protocol-SolvBTC-Audit-Report-Quanstamp_2024-08-16.pdf | SolvBTCYieldTokenOracleForSFT | unmatched — not counted | — | listed in scope | no |
| Solv-Protocol-SolvBTC-Audit-Report-Quanstamp_2024-08-16.pdf | SolvBTCMultiAssetPool | unmatched — not counted | — | listed in scope | no |
| Solv-Protocol-SolvBTC-Audit-Report-Quanstamp_2024-08-16.pdf | SftWrapRouter | unmatched — not counted | — | listed in scope | no |
| Solv-Protocol-SolvBTC-Audit-Report-Quanstamp_2024-08-16.pdf | SftWrappedTokenFactory | unmatched — not counted | — | listed in scope | no |
| Solv-Protocol-SolvBTC-Audit-Report-Quanstamp_2024-08-16.pdf | SolvBTCYieldToken | unmatched — not counted | — | listed in scope | no |
| Solv-Protocol-SolvBTC-Audit-Report-Quanstamp_2024-08-16.pdf | SolvBTCFactory | unmatched — not counted | — | mentioned in findings as new contract | no |
| Solv-Protocol-SolvBTC-Audit-Report-Quanstamp_2024-08-16.pdf | SolvBTCRouter | unmatched — not counted | — | mentioned in findings as new contract | no |
| Solv-Protocol-Vault-Guardian-Audit-Report-Quanstamp_2024-03-26.pdf | SolvVaultGuardianForSafe13 | unmatched — not counted | — | listed in scope and file signatures appendix | no |
| Solv-Protocol-Vault-Guardian-Audit-Report-Quanstamp_2024-03-26.pdf | SolvVaultGuardianForSafe14 | unmatched — not counted | — | mentioned in findings and test files | no |
| Solv-Protocol-Vault-Guardian-Audit-Report-Quanstamp_2024-03-26.pdf | SolvVaultGuardianBase | unmatched — not counted | — | listed in scope and file signatures appendix | no |
| Solv-Protocol-Vault-Guardian-Audit-Report-Quanstamp_2024-03-26.pdf | FunctionAuthorization | unmatched — not counted | — | listed in scope and file signatures appendix | no |
| Solv-Protocol-Vault-Guardian-Audit-Report-Quanstamp_2024-03-26.pdf | BaseAuthorization | unmatched — not counted | — | listed in scope and file signatures appendix | no |
| Solv-Protocol-Vault-Guardian-Audit-Report-Quanstamp_2024-03-26.pdf | BaseACL | unmatched — not counted | — | listed in scope and file signatures appendix | no |
| Solv-Protocol-Vault-Guardian-Audit-Report-Quanstamp_2024-03-26.pdf | Governable | unmatched — not counted | — | listed in scope and file signatures appendix | no |
| Solv-Protocol-Vault-Guardian-Audit-Report-Quanstamp_2024-03-26.pdf | Multicall | unmatched — not counted | — | listed in scope and file signatures appendix | no |
| Solv-Protocol-Vault-Guardian-Audit-Report-Quanstamp_2024-03-26.pdf | Path | unmatched — not counted | — | listed in scope and file signatures appendix | no |
| Solv-Protocol-Vault-Guardian-Audit-Report-Quanstamp_2024-03-26.pdf | BytesLib | unmatched — not counted | — | listed in scope and file signatures appendix | no |
| Solv-Protocol-Vault-Guardian-Audit-Report-Quanstamp_2024-03-26.pdf | ERC20TransferAuthorization | unmatched — not counted | — | listed in scope and file signatures appendix | no |
| Solv-Protocol-Vault-Guardian-Audit-Report-Quanstamp_2024-03-26.pdf | ERC20ApproveAuthorization | unmatched — not counted | — | listed in scope and file signatures appendix | no |
| Solv-Protocol-Vault-Guardian-Audit-Report-Quanstamp_2024-03-26.pdf | ERC3525ApproveAuthorization | unmatched — not counted | — | listed in scope and file signatures appendix | no |
| Solv-Protocol-Vault-Guardian-Audit-Report-Quanstamp_2024-03-26.pdf | CoboArgusAdminAuthorization | unmatched — not counted | — | listed in scope and file signatures appendix | no |
| Solv-Protocol-Vault-Guardian-Audit-Report-Quanstamp_2024-03-26.pdf | SolvOpenEndFundAuthorization | unmatched — not counted | — | listed in scope and file signatures appendix | no |
| Solv-Protocol-Vault-Guardian-Audit-Report-Quanstamp_2024-03-26.pdf | SolvOpenEndFundAuthorizationACL | unmatched — not counted | — | listed in scope and file signatures appendix | no |
| Solv-Protocol-Vault-Guardian-Audit-Report-Quanstamp_2024-03-26.pdf | SolvMasterFundAuthorization | unmatched — not counted | — | listed in scope and file signatures appendix | no |
| Solv-Protocol-Vault-Guardian-Audit-Report-Quanstamp_2024-03-26.pdf | SolvMasterFundAuthorizationACL | unmatched — not counted | — | listed in scope and file signatures appendix | no |
| Solv-Protocol-Vault-Guardian-Audit-Report-Quanstamp_2024-03-26.pdf | GMXV1Authorization | unmatched — not counted | — | listed in scope and file signatures appendix | no |
| Solv-Protocol-Vault-Guardian-Audit-Report-Quanstamp_2024-03-26.pdf | GMXV1AuthorizationACL | unmatched — not counted | — | listed in scope and file signatures appendix | no |
| Solv-Protocol-Vault-Guardian-Audit-Report-Quanstamp_2024-03-26.pdf | GMXV2Authorization | unmatched — not counted | — | listed in scope and file signatures appendix | no |
| Solv-Protocol-Vault-Guardian-Audit-Report-Quanstamp_2024-03-26.pdf | GMXV2AuthorizationACL | unmatched — not counted | — | listed in scope and file signatures appendix | no |
| Solv-Protocol-Vault-Guardian-Audit-Report-Quanstamp_2024-03-26.pdf | AgniAuthorization | unmatched — not counted | — | listed in scope and file signatures appendix | no |
| Solv-Protocol-Vault-Guardian-Audit-Report-Quanstamp_2024-03-26.pdf | AgniAuthorizationACL | unmatched — not counted | — | listed in scope and file signatures appendix | no |
| Solv-Protocol-Vault-Guardian-Audit-Report-Quanstamp_2024-03-26.pdf | LendleAuthorization | unmatched — not counted | — | listed in scope and file signatures appendix | no |
| Solv-Protocol-Vault-Guardian-Audit-Report-Quanstamp_2024-03-26.pdf | LendleAuthorizationACL | unmatched — not counted | — | listed in scope and file signatures appendix | no |
| Solv-Protocol-Vault-Guardian-Audit-Report-Quanstamp_2024-03-26.pdf | Type | unmatched — not counted | — | listed in scope and file signatures appendix | no |
| Solv-Protocol-Vault-Guardian-Audit-Report-Quanstamp_2024-03-26.pdf | IOpenFundMarket | unmatched — not counted | — | listed in scope and file signatures appendix | no |
| Solv-Protocol-Vault-Guardian-Audit-Report-Quanstamp_2024-03-26.pdf | IERC3525 | unmatched — not counted | — | listed in scope and file signatures appendix | no |
| Solv-Protocol-xSolvBTC-Audit-Report-Quanstamp_2025-07-10.pdf | SolvBTCRouterV2 | unmatched — not counted | — | listed in scope | no |
| Solv-Protocol-xSolvBTC-Audit-Report-Quanstamp_2025-07-10.pdf | XSolvBTCPool | unmatched — not counted | — | listed in scope | no |
| Solv-Protocol-xSolvBTC-Audit-Report-Quanstamp_2025-07-10.pdf | XSolvBTCOracle | unmatched — not counted | — | listed in scope | no |
| ERC3525 audit report v2 - Salus.pdf | ERC3525SlotApprovable | unmatched — not counted | — | listed in Appendix 1 - Files in Scope | no |
| ERC3525 audit report v2 - Salus.pdf | ERC3525Mintable | unmatched — not counted | — | listed in Appendix 1 - Files in Scope | no |
| ERC3525 audit report v2 - Salus.pdf | ERC3525 | unmatched — not counted | — | listed in Appendix 1 - Files in Scope and targeted in findings | no |
| ERC3525 audit report v2 - Salus.pdf | ERC3525Burnable | unmatched — not counted | — | listed in Appendix 1 - Files in Scope | no |
| ERC3525 audit report v2 - Salus.pdf | ERC3525SlotEnumerable | unmatched — not counted | — | listed in Appendix 1 - Files in Scope | no |
| SOLV-token-bsc_audit_report_salus_2024-06-21.pdf | SOLV | unmatched — not counted | — | listed in scope and targeted in findings | no |
| SOLV-token-eth_audit_report_salus_2026-05-06.pdf | SOLV-ethereum | unmatched — not counted | — | listed in Appendix 1 - Files in Scope | no |
| Solv Protocol V3 Audit Report v2 - Salus.pdf | AddressResolver | unmatched — not counted | — | listed in scope table | no |
| Solv Protocol V3 Audit Report v2 - Salus.pdf | ResolverCache | unmatched — not counted | — | listed in scope table | no |
| Solv Protocol V3 Audit Report v2 - Salus.pdf | AdminControl | unmatched — not counted | — | listed in scope table | no |
| Solv Protocol V3 Audit Report v2 - Salus.pdf | OwnControl | unmatched — not counted | — | listed in scope table | no |
| Solv Protocol V3 Audit Report v2 - Salus.pdf | SFTConcreteControl | unmatched — not counted | — | listed in scope table | no |
| Solv Protocol V3 Audit Report v2 - Salus.pdf | SFTDelegateControl | unmatched — not counted | — | listed in scope table | no |
| Solv Protocol V3 Audit Report v2 - Salus.pdf | ERC20TransferHelper | unmatched — not counted | — | listed in scope table | no |
| Solv Protocol V3 Audit Report v2 - Salus.pdf | ERC3525TransferHelper | unmatched — not counted | — | listed in scope table | no |
| Solv Protocol V3 Audit Report v2 - Salus.pdf | WhitelistStrategyManager | unmatched — not counted | — | listed in scope table | no |
| Solv Protocol V3 Audit Report v2 - Salus.pdf | IssueMarket | unmatched — not counted | — | listed in scope table | no |
| Solv Protocol V3 Audit Report v2 - Salus.pdf | FixedPriceStrategy | unmatched — not counted | — | listed in scope table | no |
| Solv Protocol V3 Audit Report v2 - Salus.pdf | IssueMarketStorage | unmatched — not counted | — | listed in scope table | no |
| Solv Protocol V3 Audit Report v2 - Salus.pdf | BaseSFTDelegateUpgradeable | unmatched — not counted | — | listed in scope table | no |
| Solv Protocol V3 Audit Report v2 - Salus.pdf | BaseSFTConcreteUpgradeable | unmatched — not counted | — | listed in scope table | no |
| Solv Protocol V3 Audit Report v2 - Salus.pdf | SFTIssuableConcrete | unmatched — not counted | — | listed in scope table | no |
| Solv Protocol V3 Audit Report v2 - Salus.pdf | SFTIssuableDelegate | unmatched — not counted | — | listed in scope table | no |
| Solv Protocol V3 Audit Report v2 - Salus.pdf | MultiRechargeableConcrete | unmatched — not counted | — | listed in scope table | no |
| Solv Protocol V3 Audit Report v2 - Salus.pdf | MultiRechargeableDelegate | unmatched — not counted | — | listed in scope table | no |
| Solv Protocol V3 Audit Report v2 - Salus.pdf | MultiRepayableConcrete | unmatched — not counted | — | listed in scope table | no |
| Solv Protocol V3 Audit Report v2 - Salus.pdf | MultiRepayableDelegate | unmatched — not counted | — | listed in scope table | no |
| Solv Protocol V3 Audit Report v2 - Salus.pdf | SFTMintableConcrete | unmatched — not counted | — | listed in scope table | no |
| Solv Protocol V3 Audit Report v2 - Salus.pdf | SFTMintableDelegate | unmatched — not counted | — | listed in scope table | no |
| Solv Protocol V3 Audit Report v2 - Salus.pdf | PayableDelegate | unmatched — not counted | — | listed in scope table | no |
| Solv Protocol V3 Audit Report v2 - Salus.pdf | PayableConcrete | unmatched — not counted | — | listed in scope table | no |
| Solv Protocol V3 Audit Report v2 - Salus.pdf | FactoryCore | unmatched — not counted | — | listed in scope table | no |
| Solv Protocol V3 Audit Report v2 - Salus.pdf | PayableConcreteFactory | unmatched — not counted | — | listed in scope table | no |
| Solv Protocol V3 Audit Report v2 - Salus.pdf | PayableDelegateFactory | unmatched — not counted | — | listed in scope table | no |
| Solv Protocol V3 Audit Report v2 - Salus.pdf | UnderwriterProfitConcrete | unmatched — not counted | — | listed in scope table | no |
| Solv Protocol V3 Audit Report v2 - Salus.pdf | UnderwriterProfitDelegate | unmatched — not counted | — | listed in scope table | no |
| Solv-Protocol-Open-Fund_audit_report_2023-07-31 - Salus.pdf | ERC3525TransferHelper | unmatched — not counted | — | listed in scope | no |
| Solv-Protocol-Open-Fund_audit_report_2023-07-31 - Salus.pdf | ERC20TransferHelper | unmatched — not counted | — | listed in scope | no |
| Solv-Protocol-Open-Fund_audit_report_2023-07-31 - Salus.pdf | FCFSMultiRepayableConcrete | unmatched — not counted | — | listed in scope | no |
| Solv-Protocol-Open-Fund_audit_report_2023-07-31 - Salus.pdf | FCFSMultiRepayableDelegate | unmatched — not counted | — | listed in scope | no |
| Solv-Protocol-Open-Fund_audit_report_2023-07-31 - Salus.pdf | SFTValueIssuableConcrete | unmatched — not counted | — | listed in scope | no |
| Solv-Protocol-Open-Fund_audit_report_2023-07-31 - Salus.pdf | SFTValueIssuableDelegate | unmatched — not counted | — | listed in scope | no |
| Solv-Protocol-Open-Fund_audit_report_2023-07-31 - Salus.pdf | OpenFundShareDelegate | unmatched — not counted | — | listed in scope | no |
| Solv-Protocol-Open-Fund_audit_report_2023-07-31 - Salus.pdf | OpenFundShareConcrete | unmatched — not counted | — | listed in scope | no |
| Solv-Protocol-Open-Fund_audit_report_2023-07-31 - Salus.pdf | OpenFundRedemptionDelegate | unmatched — not counted | — | listed in scope | no |
| Solv-Protocol-Open-Fund_audit_report_2023-07-31 - Salus.pdf | OpenFundRedemptionConcrete | unmatched — not counted | — | listed in scope | no |
| Solv-Protocol-Open-Fund_audit_report_2023-07-31 - Salus.pdf | OFMWhitelistStrategyManager | unmatched — not counted | — | listed in scope | no |
| Solv-Protocol-Open-Fund_audit_report_2023-07-31 - Salus.pdf | OpenFundMarket | unmatched — not counted | — | listed in scope | no |
| Solv-Protocol-Open-Fund_audit_report_2023-07-31 - Salus.pdf | OpenFundMarketStorage | unmatched — not counted | — | listed in scope | no |
| Solv-Protocol-Open-Fund_audit_report_2023-07-31 - Salus.pdf | OFMConstants | unmatched — not counted | — | listed in scope | no |
| Solv-Protocol-Open-Fund_audit_report_2023-07-31 - Salus.pdf | NavOracle | unmatched — not counted | — | target in finding 8 | no |
| Solv-Protocol-Open-Fund_audit_report_2023-07-31 - Salus.pdf | IFCFSMultiRepayableDelegate | unmatched — not counted | — | target in finding 13 | no |
| Solv-Protocol-Vault-Guardian-Audit-Report-Salus_2024-01-04.pdf | SolvVaultGuardian | unmatched — not counted | — | listed in Appendix 1 - Files in Scope | no |
| Solv-Protocol-Vault-Guardian-Audit-Report-Salus_2024-01-04.pdf | BaseACL | unmatched — not counted | — | listed in Appendix 1 - Files in Scope | no |
| Solv-Protocol-Vault-Guardian-Audit-Report-Salus_2024-01-04.pdf | BaseAuthorization | unmatched — not counted | — | listed in Appendix 1 - Files in Scope | no |
| Solv-Protocol-Vault-Guardian-Audit-Report-Salus_2024-01-04.pdf | FunctionAuthorization | unmatched — not counted | — | listed in Appendix 1 - Files in Scope | no |
| Solv-Protocol-Vault-Guardian-Audit-Report-Salus_2024-01-04.pdf | Type | unmatched — not counted | — | listed in Appendix 1 - Files in Scope | no |
| Solv-Protocol-Vault-Guardian-Audit-Report-Salus_2024-01-04.pdf | Governable | unmatched — not counted | — | listed in Appendix 1 - Files in Scope | no |
| Solv-Protocol-Vault-Guardian-Audit-Report-Salus_2024-01-04.pdf | Multicall | unmatched — not counted | — | listed in Appendix 1 - Files in Scope | no |
| Solv-Protocol-Vault-Guardian-Audit-Report-Salus_2024-01-04.pdf | GMXV1Authorization | unmatched — not counted | — | listed in Appendix 1 - Files in Scope | no |
| Solv-Protocol-Vault-Guardian-Audit-Report-Salus_2024-01-04.pdf | GMXV1AuthorizationACL | unmatched — not counted | — | listed in Appendix 1 - Files in Scope | no |
| Solv-Protocol-Vault-Guardian-Audit-Report-Salus_2024-01-04.pdf | GMXV2Authorization | unmatched — not counted | — | listed in Appendix 1 - Files in Scope | no |
| Solv-Protocol-Vault-Guardian-Audit-Report-Salus_2024-01-04.pdf | GMXV2AuthorizationACL | unmatched — not counted | — | listed in Appendix 1 - Files in Scope | no |
| Solv-Protocol-Vault-Guardian-Audit-Report-Salus_2024-01-04.pdf | CoboArgusAdminAuthorization | unmatched — not counted | — | listed in Appendix 1 - Files in Scope | no |
| Solv-Protocol-Vault-Guardian-Audit-Report-Salus_2024-01-04.pdf | ERC20TransferAuthorization | unmatched — not counted | — | listed in Appendix 1 - Files in Scope | no |
| Solv-Protocol-Vault-Guardian-Audit-Report-Salus_2024-01-04.pdf | SolvOpenEndFundAuthorization | unmatched — not counted | — | listed in Appendix 1 - Files in Scope | no |
| Solv-Protocol-Vault-Guardian-Audit-Report-Salus_2024-01-04.pdf | SolvOpenEndFundAuthorizationACL | unmatched — not counted | — | listed in Appendix 1 - Files in Scope | no |
| Solv-Protocol_incremental_audit_report_2023-05-15 - Salus.pdf | IssueMarket | unmatched — not counted | — | listed in scope | no |
| Solv-Protocol_incremental_audit_report_2023-05-15 - Salus.pdf | MultiRechargeableConcrete | unmatched — not counted | — | listed in scope | no |
| Solv-Protocol_incremental_audit_report_2023-05-15 - Salus.pdf | IEarnConcrete | unmatched — not counted | — | listed in scope | no |
| Solv-Protocol_incremental_audit_report_2023-05-15 - Salus.pdf | EarnConcrete | unmatched — not counted | — | listed in scope | no |
| Solv-Protocol_incremental_audit_report_2023-05-15 - Salus.pdf | EarnDelegate | unmatched — not counted | — | listed in scope | no |
| Solv-Protocol_incremental_audit_report_2023-05-15 - Salus.pdf | PayableBeaconFactory | unmatched — not counted | — | listed in scope | no |
| Solv-Yield-Bearing-Tokens-Audit-Report-Salus-20240101.pdf | SftWrappedToken | unmatched — not counted | — | listed in Appendix 1 - Files in Scope | no |
| Solv-Yield-Bearing-Tokens-Audit-Report-Salus-20240101.pdf | SftWrappedTokenFactory | unmatched — not counted | — | listed in Appendix 1 - Files in Scope | no |
| Solv-Yield-Bearing-Tokens-Audit-Report-Salus-20240101.pdf | AdminControl | unmatched — not counted | — | listed in Appendix 1 - Files in Scope | no |
| Solv-Yield-Bearing-Tokens-Audit-Report-Salus-20240101.pdf | GovernorControl | unmatched — not counted | — | listed in Appendix 1 - Files in Scope | no |
| Solv-Yield-Bearing-Tokens-Audit-Report-Salus-20240101.pdf | ERC3525TransferHelper | unmatched — not counted | — | listed in Appendix 1 - Files in Scope | no |
| Solv_Protocol_TimeLocked_ERC20_Container_audit_report_2023_07_05 - Salus.pdf | SlotOwnable | unmatched — not counted | — | listed in Appendix-1 Files in Scope | no |
| Solv_Protocol_TimeLocked_ERC20_Container_audit_report_2023_07_05 - Salus.pdf | ITimelockedERC20Concrete | unmatched — not counted | — | listed in Appendix-1 Files in Scope | no |
| Solv_Protocol_TimeLocked_ERC20_Container_audit_report_2023_07_05 - Salus.pdf | ITimelockedERC20Delegate | unmatched — not counted | — | listed in Appendix-1 Files in Scope | no |
| Solv_Protocol_TimeLocked_ERC20_Container_audit_report_2023_07_05 - Salus.pdf | TimelockedERC20Concrete | unmatched — not counted | — | listed in Appendix-1 Files in Scope | no |
| Solv_Protocol_TimeLocked_ERC20_Container_audit_report_2023_07_05 - Salus.pdf | TimelockedERC20Delegate | unmatched — not counted | — | listed in Appendix-1 Files in Scope | no |
| Solv_Protocol_TimeLocked_ERC20_Container_audit_report_2023_07_05 - Salus.pdf | ITimelockedERC20ContainerConcrete | unmatched — not counted | — | listed in Appendix-1 Files in Scope | no |
| Solv_Protocol_TimeLocked_ERC20_Container_audit_report_2023_07_05 - Salus.pdf | ITimelockedERC20ContainerDelegate | unmatched — not counted | — | listed in Appendix-1 Files in Scope | no |
| Solv_Protocol_TimeLocked_ERC20_Container_audit_report_2023_07_05 - Salus.pdf | TimelockedERC20ContainerConcrete | unmatched — not counted | — | listed in Appendix-1 Files in Scope | no |
| Solv_Protocol_TimeLocked_ERC20_Container_audit_report_2023_07_05 - Salus.pdf | TimelockedERC20ContainerDelegate | unmatched — not counted | — | listed in Appendix-1 Files in Scope | no |
| Solv_Protocol_TimeLocked_ERC20_Container_audit_report_2023_07_05 - Salus.pdf | ERC20TransferHelper | unmatched — not counted | — | mentioned in finding #4 target | no |
| Solv_Protocol_TimeLocked_ERC20_Container_audit_report_2023_07_05.pdf | SlotOwnable | unmatched — not counted | — | listed in Appendix-1 Files in Scope | no |
| Solv_Protocol_TimeLocked_ERC20_Container_audit_report_2023_07_05.pdf | ITimelockedERC20Concrete | unmatched — not counted | — | listed in Appendix-1 Files in Scope | no |
| Solv_Protocol_TimeLocked_ERC20_Container_audit_report_2023_07_05.pdf | ITimelockedERC20Delegate | unmatched — not counted | — | listed in Appendix-1 Files in Scope | no |
| Solv_Protocol_TimeLocked_ERC20_Container_audit_report_2023_07_05.pdf | TimelockedERC20Concrete | unmatched — not counted | — | listed in Appendix-1 Files in Scope | no |
| Solv_Protocol_TimeLocked_ERC20_Container_audit_report_2023_07_05.pdf | TimelockedERC20Delegate | unmatched — not counted | — | listed in Appendix-1 Files in Scope | no |
| Solv_Protocol_TimeLocked_ERC20_Container_audit_report_2023_07_05.pdf | ITimelockedERC20ContainerConcrete | unmatched — not counted | — | listed in Appendix-1 Files in Scope | no |
| Solv_Protocol_TimeLocked_ERC20_Container_audit_report_2023_07_05.pdf | ITimelockedERC20ContainerDelegate | unmatched — not counted | — | listed in Appendix-1 Files in Scope | no |
| Solv_Protocol_TimeLocked_ERC20_Container_audit_report_2023_07_05.pdf | TimelockedERC20ContainerConcrete | unmatched — not counted | — | listed in Appendix-1 Files in Scope | no |
| Solv_Protocol_TimeLocked_ERC20_Container_audit_report_2023_07_05.pdf | TimelockedERC20ContainerDelegate | unmatched — not counted | — | listed in Appendix-1 Files in Scope | no |
| Solv_Protocol_TimeLocked_ERC20_Container_audit_report_2023_07_05.pdf | ERC20TransferHelper | unmatched — not counted | — | mentioned as target in finding 4 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x09d334...bd0533` | AtomicMintContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 88 |
| upstream | 1 |
| standard_library | 7 |
| needs_review | 32 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 16
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (1 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 157 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=17
- Match method counts: unique_name=1

Zero-match audit list:

- [18103] SolvProtocol-SolvBTCVault-Oct-2025-OffsideLabs.pdf
- [18105] SolvBTC Blacklist Audit-Openzeppelin.pdf
- [18106] 20241209_Paladin_LayerZeroSolvBTC_Final_Report.pdf
- [18107] Solv-Protocol-SolvBTC-Audit-Report-Quanstamp_2024-08-16.pdf
- [18108] Solv-Protocol-Vault-Guardian-Audit-Report-Quanstamp_2024-03-26.pdf
- [18109] Solv-Protocol-xSolvBTC-Audit-Report-Quanstamp_2025-07-10.pdf
- [18110] ERC3525 audit report v2 - Salus.pdf
- [18111] SOLV-token-bsc_audit_report_salus_2024-06-21.pdf
- [18112] SOLV-token-eth_audit_report_salus_2026-05-06.pdf
- [18113] Solv Protocol V3 Audit Report v2 - Salus.pdf
- [18114] Solv-Protocol-Open-Fund_audit_report_2023-07-31 - Salus.pdf
- [18115] Solv-Protocol-Vault-Guardian-Audit-Report-Salus_2024-01-04.pdf
- [18116] Solv-Protocol_incremental_audit_report_2023-05-15 - Salus.pdf
- [18117] Solv-Yield-Bearing-Tokens-Audit-Report-Salus-20240101.pdf
- [18118] Solv_Protocol_TimeLocked_ERC20_Container_audit_report_2023_07_05 - Salus.pdf
- [18119] Solv_Protocol_TimeLocked_ERC20_Container_audit_report_2023_07_05.pdf

Fork inheritance lineage and inherited audits are included when available.
