# Agentic Audit Brief: Gyroscope Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 10 (0 matched; 10 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Gyroscope Protocol (`gyroscope-protocol`)
- Website: [https://app.gyro.finance/](https://app.gyro.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, base, ethereum, gnosis, optimism, polygon, polygon-zkevm, sei, sonic
- Contract surface: 272 unique implementations (499 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $353,872.28
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Gyroscope Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 61 contract row(s) across arbitrum, avalanche, base, ethereum, gnosis, optimism, polygon, polygon-zkevm, sei, sonic. Structural roles: 49 unclassified, 8 supporting, 4 core. 6 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 61
- Structural roles: unclassified (49), supporting (8), core (4)
- Contract kinds: contract (53), abstract (8)
- Detected standards: erc1967proxy (4), accesscontrol (3), erc165 (3), erc20 (1), erc20permit (1)
- Frameworks: openzeppelin (9), openzeppelin-upgradeable (5)
- Upgradeable-pattern rows: 6

## Fork Analysis

0 of 2 contracts are derived from known codebases. 2 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x70c443...8b7383`, chain 1)
- UnnamedContract (`0xc63529...6cfbb9`, chain 8453)

## Contract Surface Quality

- Logic-topography rows: 61; live-surface rows included: 61 (0 live, 61 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 2/48 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 2 own, 46 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 224 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 52
- Confirmed-live implementations: 2 of 272 unique; 270 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/195
- Verified + Unaudited implementations: 195
- Verified by bytecode match: 0
- Unverified implementations: 77
- Unique implementations: 272
- Raw deployments: 499
- Audits discovered: 10 (10 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-06 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 8 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (195)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ActionTierConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x0f51c8...1bfce1`; ethereum `0x8342b9...3478b6`; ethereum `0xe9f7b8...fda965` | ⚠️ Unaudited |
| AdaptiveRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc23542...fade44` | ⚠️ Unaudited |
| AggregateLPVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe8b18f...0db528` | ⚠️ Unaudited |
| AggregatorBatchRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb9d01c...20ab14` | ⚠️ Unaudited |
| AggregatorRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: optimism `0x84813a...a63617`; sonic `0x7943b4...bb8565` | ⚠️ Unaudited |
| AssetRegistry | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-241688 | 2 deployments: ethereum `0x66a7aa...60b0b2`; ethereum `0x94c341...5c9126` | ⚠️ Unaudited |
| AssociatedDAOVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2321e...6b0247` | ⚠️ Unaudited |
| Authorizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x5cf492...62a4b9`; base `0x809b79...93213a` | ⚠️ Unaudited |
| AuthorizerAdaptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6cad2e...509bc7` | ⚠️ Unaudited |
| AuthorizerAdaptorEntrypoint | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x36cac2...b5a17c`; base `0x9129e8...86b8dc` | ⚠️ Unaudited |
| AuthorizerWithAdaptorValidation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa69e0c...7e8eee` | ⚠️ Unaudited |
| BAL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5dbad7...2113cd` | ⚠️ Unaudited |
| BalancerPoolVault | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-241687 | `0x29609b...ee26e6` | ⚠️ Unaudited |
| BatchRelayerLibrary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 6 deployments: optimism `0x96484f...f13b6d`; sonic `0x149843...4f50fc`; sonic `0x965c2f...0cef57`; base `0x82416c...a382c4`; base `0xaf779e...c80632`; base `0xdf9b5b...3be025` | ⚠️ Unaudited |
| BatchRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xad8905...f8a85e` | ⚠️ Unaudited |
| BatchRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0x776165...968daf` | ⚠️ Unaudited |
| BatchVaultPriceOracle | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241660 | `0x46412c...9ec881` | ⚠️ Unaudited |
| Beets | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2d0e08...66e4f0` | ⚠️ Unaudited |
| BeetsNftDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 3 deployments: sonic `0x685dfb...aad88e`; sonic `0x91befa...077ea2`; sonic `0xfaa8d7...14a6f5` | ⚠️ Unaudited |
| BeetsOFTV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1e5fe9...626795` | ⚠️ Unaudited |
| BeetsShadowArbitrage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4c5e12...e28010` | ⚠️ Unaudited |
| Boost Delegation V2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x681714...ff4bc0` | ⚠️ Unaudited |
| BoundedERC20WithEMA | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xc69129...be714c`; ethereum `0xe4c243...efb1e4` | ⚠️ Unaudited |
| BufferRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x311334...358615`; sonic `0x532da9...3a721b` | ⚠️ Unaudited |
| CheckedPriceOracle | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241658 | `0x2a18f5...482411` | ⚠️ Unaudited |
| CheckedPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 6 deployments: ethereum `0xbdcfe6...a471b2`; polygon `0x64f84a...c75fc3`; polygon `0x70772f...20fcab`; polygon `0x8e9a7c...d5cf49`; polygon `0xba116c...1455c7`; polygon `0xfd83a2...377dcc` | ⚠️ Unaudited |
| Child Liquidity Gauge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: sonic `0xf00c00...d7ce76`; base `0x59562f...c3324f`; base `0x9f7e65...b37013` | ⚠️ Unaudited |
| ChildChainGaugeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: optimism `0xa523f4...4612dc`; sonic `0xe6338d...33bd7c`; base `0x2498a2...29ba95`; base `0xb1a4fe...d9021f` | ⚠️ Unaudited |
| CircuitBreakerLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0xe42ffa...42e467`; base `0xef454a...865425` | ⚠️ Unaudited |
| ClaimSignatureRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 3 deployments: optimism `0x56c8d8...864aeb`; optimism `0xc86ef8...be6100`; optimism `0xea6920...b8a687` | ⚠️ Unaudited |
| CombinedRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd2f927...37f98f` | ⚠️ Unaudited |
| CombinedRateProviderFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xdc580c...a923e6` | ⚠️ Unaudited |
| ComposableStablePoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 5 deployments: optimism `0x043a2d...625412`; optimism `0x4bdcc2...0eada7`; optimism `0x85a80a...853062`; sonic `0x993767...f3fc62`; base `0x8df317...579b88` | ⚠️ Unaudited |
| CompositeLiquidityRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0xc9b360...d5988f`; sonic `0xcf2166...0f3e65` | ⚠️ Unaudited |
| ConnectorArbBot | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x284265...2dc9d9`; arbitrum `0xc6f195...2fc29c` | ⚠️ Unaudited |
| ConstantPriceFeed | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4eff2d...ff4cb5` | ⚠️ Unaudited |
| ConstantRateProvider | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241662 | `0x5413e8...8556d8` | ⚠️ Unaudited |
| ConstantRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 17 deployments: ethereum `0xbb08c8...c46ce2`; ethereum `0xd43f5a...b820a1`; sonic `0x180ec5...138c46`; sonic `0x526c66...18a8d2`; sonic `0x635d8b...0e1051`; sonic `0x9969ce...a60a0a`; sonic `0xc5ef57...aa26de`; sonic `0xec722f...43f747`; sonic `0xecdfaa...ea2bd7`; base `0x3e89cc...348313`; base `0x3fa516...b88f15`; base `0x587983...8eb5cc`; base `0x5e10c2...3a4748`; base `0xa42cc9...4e67ef`; arbitrum `0x3a216b...67697f`; arbitrum `0x72f6da...fe2dd0`; arbitrum `0xdcd8db...c70832` | ⚠️ Unaudited |
| ConstantRateProviderFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 7 deployments: sonic `0x511052...ec6554`; sonic `0x545bf8...049a7a`; sonic `0x7afc1c...71c75d`; sonic `0x8267f1...fb9f43`; sonic `0xb32d49...3af497`; sonic `0xd64d82...807f89`; sonic `0xdc8315...f0b26e` | ⚠️ Unaudited |
| CouncillorNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x1fb731...aba876`; ethereum `0x79e65f...dd35dc`; ethereum `0x917156...7d1e18` | ⚠️ Unaudited |
| CouncillorNFTVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x339b89...f09404`; ethereum `0x360ce1...4719ee` | ⚠️ Unaudited |
| CowSwapFeeBurner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf4743d...7241d7` | ⚠️ Unaudited |
| CTokenRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ee79e...d8c718` | ⚠️ Unaudited |
| DistributionManager | governance | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241661 | `0x4d9c76...0e6586` | ⚠️ Unaudited |
| EclpLPOracleFactory | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc00ff7...e5426d` | ⚠️ Unaudited |
| EmergencyRecovery | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70d3ec...f1215d` | ⚠️ Unaudited |
| ERC4626CowSwapFeeBurner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x201efd...2a86cc`; optimism `0x7c1b7a...c78275` | ⚠️ Unaudited |
| ERC4626LinearPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x161f40...028846` | ⚠️ Unaudited |
| ERC4626RateProviderFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 6 deployments: ethereum `0xfc541f...c259ec`; optimism `0x02a569...e75c33`; gnosis `0x15e86b...574cec`; sonic `0xc9a0e6...50e487`; base `0xefd3af...d7ff1a`; arbitrum `0xe548a2...915f31` | ⚠️ Unaudited |
| EventEmitter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe0f1df...65211e` | ⚠️ Unaudited |
| ExternalWeightedMath | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7920bf...c50cfd` | ⚠️ Unaudited |
| FoundingFrog | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e56f1...de07ec` | ⚠️ Unaudited |
| FoundingMemberVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x0400d6...9f157c`; ethereum `0x5241b3...4460bb`; ethereum `0x7783b7...9d2754`; ethereum `0xaf5578...6274a2`; ethereum `0xc87d57...1bcac2` | ⚠️ Unaudited |
| FreezableTransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x53b8b1...2a6298`; ethereum `0xb2d2db...2e2916` | ⚠️ Unaudited |
| FreezableTransparentUpgradeableProxy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-241684 | 2 deployments: ethereum `0x77f2ae...5e0014`; ethereum `0x8e1787...a94ff2` | ⚠️ Unaudited |
| FreezableTransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc95140...947f22` | ⚠️ Unaudited |
| FreezableTransparentUpgradeableProxy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sei | unit-241678 | `0xb438ea...baf7fa` | ⚠️ Unaudited |
| FrogMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe02f11...6523b3` | ⚠️ Unaudited |
| GaugeWorkingBalanceHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa7d524...738d48` | ⚠️ Unaudited |
| GearboxLinearPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9dd326...07bd62` | ⚠️ Unaudited |
| GenericVault | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 3 | ethereum | unit-241685 (3 proxies) | 4 deployments: ethereum `0x80ecf3...295176`; ethereum `0x830913...89ab31`; ethereum `0x88f3b4...821d65`; ethereum `0x98962b...6a4953` | ⚠️ Unaudited |
| GenericVaultPriceOracle | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241668 | `0x89b938...de854a` | ⚠️ Unaudited |
| GnosisSafe | governance | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-241691 | `0xa8d612...b5f9e9` | ⚠️ Unaudited |
| GovernanceManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x587b60...a684a7`; ethereum `0xb05bce...4e206e`; ethereum `0xb2fbd0...2ae755`; ethereum `0xfc6879...beba17` | ⚠️ Unaudited |
| GovernanceProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x00a2a9...abb4a8`; arbitrum `0x32acb4...2a23f3` | ⚠️ Unaudited |
| GovernanceRoleManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x78898a...b3a4b9` | ⚠️ Unaudited |
| GydDistributor | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241670 | `0xc1024e...b0561d` | ⚠️ Unaudited |
| GydRecovery | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241659 | `0x2a803c...fd4025` | ⚠️ Unaudited |
| GydToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241675 | `0xfa08eb...ea0cb5` | ⚠️ Unaudited |
| GydTokenPaused | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-241683 | `0xe07f9d...491e8a` | ⚠️ Unaudited |
| Gyro2CLPPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x579653...1d98c9`; ethereum `0x99fafe...9eb1af` | ⚠️ Unaudited |
| Gyro2CLPPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 6 deployments: optimism `0x4b979e...99729c`; optimism `0x99364f...c52c58`; polygon `0x3841ee...1eac46`; polygon `0x3b55b6...53c7a4`; polygon `0x968348...2bb982`; sonic `0xe61fce...5884a7` | ⚠️ Unaudited |
| Gyro2CLPPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x5d8545...1dfc34` | ⚠️ Unaudited |
| Gyro2CLPPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x7a3652...a4a088`; arbitrum `0x8342b9...3478b6` | ⚠️ Unaudited |
| Gyro3CLPPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x90f08b...83adda`; polygon `0x977e8a...043079` | ⚠️ Unaudited |
| Gyro3CLPPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x05d8c4...a3971e`; sonic `0x0e3558...0a627e` | ⚠️ Unaudited |
| Gyro3CLPPoolFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | 3 deployments: polygon `0x694852...f04cfb`; polygon `0xe0d2c7...5f28bd`; sei `0x4ac500...9c6c24` | ⚠️ Unaudited |
| GyroConfig | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | optimism | unit-241692 | 2 deployments: optimism `0x32acb4...2a23f3`; optimism `0xe02f11...6523b3` | ⚠️ Unaudited |
| GyroConfig | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | gnosis | unit-241695 | 2 deployments: gnosis `0x00a2a9...abb4a8`; gnosis `0xe02f11...6523b3` | ⚠️ Unaudited |
| GyroConfig | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | polygon | unit-241698 | `0xfdc2e9...3fbe67` | ⚠️ Unaudited |
| GyroConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: polygon `0xf5d544...45f18c`; sonic `0x2426d2...aff07f` | ⚠️ Unaudited |
| GyroConfig | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | sonic | unit-241699 | 2 deployments: sonic `0x3f1f85...b068da`; sonic `0xeecee5...8ea81b` | ⚠️ Unaudited |
| GyroConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | sonic | n/a | 3 deployments: sonic `0xa23112...bda069`; sonic `0xab7d2e...a70cce`; sonic `0xde6237...21e23d` | ⚠️ Unaudited |
| GyroConfig | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | sei | unit-241696 | 2 deployments: sei `0x194941...2deadd`; sei `0x788fb3...5262c0` | ⚠️ Unaudited |
| GyroConfig | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | base | unit-241703 | 2 deployments: base `0x8a5eb9...42c8a6`; base `0x9b683c...77413c` | ⚠️ Unaudited |
| GyroConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x9b683c...77413c`; arbitrum `0xefde1c...c97f58` | ⚠️ Unaudited |
| GyroECLPMath | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | 10 deployments: optimism `0x4e56f1...de07ec`; gnosis `0x9b683c...77413c`; polygon `0x10aba8...3b5d63`; polygon `0x2ec9fa...64a530`; polygon `0xbe1a07...0c4350`; sonic `0xfa45ac...947be3`; sei `0x086602...b38701`; base `0x721325...951e5f`; arbitrum `0x41e9ac...4d946a`; arbitrum `0xcfc923...7ecbfd` | ⚠️ Unaudited |
| GyroECLPPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d93b8...66ee91` | ⚠️ Unaudited |
| GyroECLPPool | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241676 | `0xfbfad5...a64c63` | ⚠️ Unaudited |
| GyroECLPPoolFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 9 deployments: ethereum `0xa87217...25bda2`; optimism `0x22625e...86b017`; optimism `0x53eff5...c479ef`; optimism `0xefde1c...c97f58`; polygon `0x949af2...f9d02f`; sonic `0xf02373...7775a9`; sei `0x66d89d...6c0c93`; base `0x5f6848...f082e3`; arbitrum `0x721325...951e5f` | ⚠️ Unaudited |
| GyroECLPPoolFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | optimism | unit-241693 | 2 deployments: optimism `0x9b683c...77413c`; optimism `0xe8b18f...0db528` | ⚠️ Unaudited |
| GyroECLPPoolFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | gnosis | unit-241694 | 2 deployments: gnosis `0x5d3be8...c99b89`; gnosis `0x8a5eb9...42c8a6` | ⚠️ Unaudited |
| GyroECLPPoolFactory | registry | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | polygon | unit-241697 | `0x1a79a2...05926b` | ⚠️ Unaudited |
| GyroECLPPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x4c818c...addf17`; polygon `0xd42045...ee0ef6` | ⚠️ Unaudited |
| GyroECLPPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x4a1d66...0defec`; sonic `0xda598c...94fb8b` | ⚠️ Unaudited |
| GyroECLPPoolFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | sonic | unit-241700 | 2 deployments: sonic `0x536429...620c5f`; sonic `0xe22c6d...b38739` | ⚠️ Unaudited |
| GyroECLPPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x765505...178c6b`; sonic `0xf80435...9c4491` | ⚠️ Unaudited |
| GyroECLPPoolFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | base | unit-241704 | 2 deployments: base `0x15e86b...574cec`; base `0xdca5f1...53eaf6` | ⚠️ Unaudited |
| GyroECLPPoolFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | arbitrum | unit-241702 | 2 deployments: arbitrum `0xdca5f1...53eaf6`; arbitrum `0xde0e16...b9ec2e` | ⚠️ Unaudited |
| GyroL2Governance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0xd0c53f...990ba3` | ⚠️ Unaudited |
| GyroThreePoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe59910...36d981` | ⚠️ Unaudited |
| GyroTokenPaused | token | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x7cd75b...218d23` | ⚠️ Unaudited |
| GyroTwoPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x333fad...3ed028` | ⚠️ Unaudited |
| L2GydDistributor | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-241679 | `0x4dfdad...6ba299` | ⚠️ Unaudited |
| L2Gyfi | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0xf7f808...ffa38c` | ⚠️ Unaudited |
| LBPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: optimism `0xc1a645...3227f0`; sonic `0x60e9fe...f8b5d9` | ⚠️ Unaudited |
| LegendsOfMaBeets | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 4 deployments: sonic `0x5ae2ce...d6fe37`; sonic `0x6dab80...407885`; sonic `0x82adf9...52bd81`; sonic `0xefd42b...f66fef` | ⚠️ Unaudited |
| LevelNftDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x113cf9...106d71` | ⚠️ Unaudited |
| LockedVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4476ff...bfa007`; ethereum `0x534aca...d5f95b` | ⚠️ Unaudited |
| LockedVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x48a64b...023d2b`; ethereum `0xa3979e...4a3008` | ⚠️ Unaudited |
| LockedVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x991aeb...70a336`; ethereum `0xdb5494...eff57a` | ⚠️ Unaudited |
| LockedVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xb6dc4f...410f9e`; ethereum `0xe1c7ad...44123b` | ⚠️ Unaudited |
| LockedVaultWithThreshold | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16b13d...1ac7d1` | ⚠️ Unaudited |
| LockedVaultWithThreshold | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x695225...b6bc61`; ethereum `0xb94c4f...8bc1f6` | ⚠️ Unaudited |
| MaBeetsBoost | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x496b56...a2f7b4` | ⚠️ Unaudited |
| ManagedPoolAddRemoveTokenLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: optimism `0xf24917...b9fd39`; base `0xb19382...377b75` | ⚠️ Unaudited |
| ManagedPoolAmmLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7d2248...d28c9a` | ⚠️ Unaudited |
| ManagedPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x956cca...3d9288`; base `0x9a62c9...20134d` | ⚠️ Unaudited |
| MevCaptureHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3630d2...eeaf5b` | ⚠️ Unaudited |
| MockERC4626Token | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4638ab...f1551c` | ⚠️ Unaudited |
| MockGearboxDieselToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb521dd...760ce4` | ⚠️ Unaudited |
| MockGearboxVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x79e435...05ea6c` | ⚠️ Unaudited |
| MockStaticAToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x698cae...2bcda4` | ⚠️ Unaudited |
| MockVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe38816...0be5f7` | ⚠️ Unaudited |
| Motherboard | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-241689 | 2 deployments: ethereum `0x8de76b...fff393`; ethereum `0xbaf6a0...a6cc95` | ⚠️ Unaudited |
| MultiownerProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71260f...c4f961` | ⚠️ Unaudited |
| NftDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x6fb10e...133ed5`; sonic `0xe36d5d...598b9c` | ⚠️ Unaudited |
| NoProtocolFeeLiquidityBootstrappingPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0c6052...18828f` | ⚠️ Unaudited |
| NullVotingEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: optimism `0xc3ccac...a1bb68`; base `0x475d18...0fa229` | ⚠️ Unaudited |
| OneSidedECLPJoiner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 3 deployments: gnosis `0x84b22e...232c0e`; base `0xe8b48d...236016`; arbitrum `0xa0a555...f1322b` | ⚠️ Unaudited |
| PauseManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0xfce81c...2b238e` | ⚠️ Unaudited |
| PoolOwner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 9 deployments: ethereum `0x4b15f2...34250b`; optimism `0xcfc923...7ecbfd`; gnosis `0xefde1c...c97f58`; sonic `0x315f64...ec52ee`; sonic `0x34a02e...a48bca`; sonic `0x7ca5ea...c7fcae`; sei `0x9e4658...69a172`; base `0x5d56ea...324f0c`; arbitrum `0xc2daef...3492e6` | ⚠️ Unaudited |
| PoolPauseHelper | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x136f1e...1778d1`; optimism `0x16b50f...7ae5db` | ⚠️ Unaudited |
| PoolRecoveryHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x03f3fb...712054` | ⚠️ Unaudited |
| PoolSwapFeeHelper | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 3 deployments: optimism `0x1cd776...b1d608`; optimism `0x355bd3...53ad95`; optimism `0xbdbadc...7d6ff1` | ⚠️ Unaudited |
| PrimaryAMMV1 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241673 | `0xe7ea59...5a6ce5` | ⚠️ Unaudited |
| ProtocolFeeController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: optimism `0xdb8d75...a1bd3a`; base `0x2ff226...4e5363` | ⚠️ Unaudited |
| ProtocolFeeControllerMigration | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1b6f05...f17e59` | ⚠️ Unaudited |
| ProtocolFeeHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x774cb6...17eb94`; optimism `0xcc267d...3a7a4e` | ⚠️ Unaudited |
| ProtocolFeePercentagesProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x4d4ddc...1f4146`; base `0xded7fe...e6695d` | ⚠️ Unaudited |
| ProtocolFeeSweeper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x4cb42f...a4ac4d`; optimism `0x86e67e...e7bc2b` | ⚠️ Unaudited |
| ProtocolFeesWithdrawer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xacf05b...996650` | ⚠️ Unaudited |
| ProtocolIdRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: optimism `0x9805dc...764102`; base `0x682f0d...e27589` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 10 deployments: gnosis `0x4e56f1...de07ec`; polygon `0x83d34c...c4cbbe`; sonic `0x096f0a...ef3089`; sonic `0x33c11b...8f7a47`; sonic `0x4b13e4...89d0f1`; sonic `0x5aa1b0...7d34de`; sonic `0x8a4fdf...0dc399`; sei `0x8c12a1...48ef03`; base `0xefde1c...c97f58`; arbitrum `0x4e56f1...de07ec` | ⚠️ Unaudited |
| PythAggregatorV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3c35e5...17781a` | ⚠️ Unaudited |
| QueryProcessor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 4 deployments: gnosis `0x32acb4...2a23f3`; sonic `0xdbf966...920ca9`; sei `0x594383...cfa4c4`; base `0xefc86a...d228c1` | ⚠️ Unaudited |
| QuotientRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 3 deployments: sonic `0x10e0b3...245587`; sonic `0x79a88b...c40447`; base `0x15cfd6...7b627f` | ⚠️ Unaudited |
| RateManager | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241671 | `0xdbc810...c4eda7` | ⚠️ Unaudited |
| ReClammPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 3 deployments: optimism `0x0b1120...e63911`; optimism `0x891ec9...017e0d`; sonic `0x99c13b...310de0` | ⚠️ Unaudited |
| RecoveryModeHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x313a8d...0be053` | ⚠️ Unaudited |
| Reliquary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x492e4b...6a8f7d`; sonic `0x973670...941684` | ⚠️ Unaudited |
| Reserve | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-241682 | 2 deployments: ethereum `0x00ffba...435c2a`; ethereum `0xc7ab17...b21a37` | ⚠️ Unaudited |
| ReserveManager | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241657 | `0x2519a7...1c2869` | ⚠️ Unaudited |
| ReserveSafetyManager | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241669 | `0x8f3832...3a3fab` | ⚠️ Unaudited |
| ReserveStewardshipIncentives | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241664 | `0x5c73d4...d94f86` | ⚠️ Unaudited |
| RewardsClaimer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x238fbf...818b0a` | ⚠️ Unaudited |
| RootSafetyCheck | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241663 | `0x56773c...273789` | ⚠️ Unaudited |
| Router | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0x6077b9...d1a71c` | ⚠️ Unaudited |
| Router | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: optimism `0xe2fa4e...9e285b`; sonic `0x93db46...a8dae5` | ⚠️ Unaudited |
| sGYD | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-241690 | `0xea50f4...f37816` | ⚠️ Unaudited |
| sGYD | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | arbitrum | unit-241701 | `0xea50f4...f37816` | ⚠️ Unaudited |
| Simple Vesting Escrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x455a56...b72aeb` | ⚠️ Unaudited |
| SonicBeetsMigrator | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x5f9a5c...05e386` | ⚠️ Unaudited |
| SonicStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0xbf46ae...59038d`; sonic `0xf4fa7f...79400b` | ⚠️ Unaudited |
| SonicStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0xd5f7fc...b3f141`; sonic `0xe5da20...be3955` | ⚠️ Unaudited |
| SonicStakingWithdrawRequestHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x52b16e...432d78` | ⚠️ Unaudited |
| StableLPOracleFactory | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 3 deployments: optimism `0xa0de07...b7c883`; optimism `0xb96524...ba40e9`; optimism `0xc4c494...1cf468` | ⚠️ Unaudited |
| StablePoolFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 5 deployments: optimism `0x1780e8...d943ab`; optimism `0x268e2e...d9af42`; sonic `0x482ee5...48affb`; sonic `0x815ab5...6f31fd`; base `0xc49ca9...97950c` | ⚠️ Unaudited |
| StableSurgeHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: optimism `0xf39ca6...ab9015`; sonic `0x049919...c6f1b3` | ⚠️ Unaudited |
| StableSurgePoolFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 4 deployments: optimism `0x3beb05...429ace`; optimism `0xfd2142...f3128f`; sonic `0x3d9319...0f0bad`; sonic `0x6187f6...e6776e` | ⚠️ Unaudited |
| StandaloneECLPPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcfae89...e9f7fd` | ⚠️ Unaudited |
| StaticATokenRateProviderV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd25712...84aa9d` | ⚠️ Unaudited |
| StaticPercentageFeeHandler | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241666 | `0x757cfc...f9a051` | ⚠️ Unaudited |
| StaticTierStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 12 deployments: ethereum `0x0b4237...d60edf`; ethereum `0x4180e9...7c24d3`; ethereum `0x6170ed...4dae7a`; ethereum `0xc0dea0...1fb7b4`; ethereum `0xc2daef...3492e6`; ethereum `0xd32971...65b272`; ethereum `0xd70027...570c75`; ethereum `0xd837d6...8d1c6d`; ethereum `0xd95523...18fd49`; ethereum `0xea8106...fd538e`; ethereum `0xfdbcc2...e4d582`; ethereum `0xfe4199...27c27c` | ⚠️ Unaudited |
| TellorOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc7168...3ac25d` | ⚠️ Unaudited |
| TellorOracle | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241672 | `0xe22188...f9d9a0` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 4 deployments: sonic `0x4b1617...4bbc0d`; sonic `0xd0f62f...c743f4`; sonic `0xdcd406...8a67f2`; sonic `0xf750f4...f0e5d0` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1f4141...3c22a6`; ethereum `0x9543b9...bef92a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xb7ae7b...41bc50`; ethereum `0xe548a2...915f31` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xcfc923...7ecbfd`; ethereum `0xde0e16...b9ec2e` | ⚠️ Unaudited |
| TrustedSignerPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x28f93f...b9464a`; polygon `0x611a66...a5ece4` | ⚠️ Unaudited |
| TrustedSignerPriceOracle | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241674 | `0xf4ca93...4b4aa5` | ⚠️ Unaudited |
| UnbalancedAddViaSwapRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x03cbcc...dff36f` | ⚠️ Unaudited |
| UpdatableRateProviderBalV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 10 deployments: optimism `0x32f6fc...c41041`; sonic `0x13024f...50a05d`; sonic `0x20a7e5...04bc89`; sonic `0x218cb3...a7bd9f`; sonic `0x4881ef...99ec83`; sonic `0x5b5c4b...1f2048`; sonic `0xb7b5d2...f5f144`; sei `0x27ce6a...8d7bb0`; base `0x2a803c...fd4025`; base `0x42d9b3...4aadc0` | ⚠️ Unaudited |
| VaultExplorer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 4 deployments: optimism `0x1311fb...5cc4d1`; optimism `0xeaedc3...aacf2e`; sonic `0x6f6cd1...637300`; sonic `0x9672af...09d5b3` | ⚠️ Unaudited |
| VaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x170206...68492d` | ⚠️ Unaudited |
| VaultRegistry | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-241686 | 2 deployments: ethereum `0x82c45c...0b5a22`; ethereum `0xf2865b...ed4eb5` | ⚠️ Unaudited |
| VaultSafetyMode | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241667 | `0x84b22e...232c0e` | ⚠️ Unaudited |
| Vesting Escrow Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x15e556...dc76be` | ⚠️ Unaudited |
| VotingEscrowDelegationProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x9da189...7e017c`; base `0xd87f44...9f5acd` | ⚠️ Unaudited |
| VotingPowerAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa015a8...cb1487` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: ethereum `0xfc7d96...55c467`; optimism `0x81cfae...eeb310` | ⚠️ Unaudited |
| WeightedLPOracleFactory | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 3 deployments: optimism `0x6ee18f...e3cb3f`; optimism `0x718e11...f4457f`; optimism `0xeb2bb0...9fe804` | ⚠️ Unaudited |
| WeightedPoolFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 5 deployments: optimism `0x0f08ee...347b7c`; optimism `0x254f3a...5f83b0`; sonic `0x22f5b7...44d56d`; sonic `0x4726eb...d60fc3`; base `0x4c32a8...d6a1c4` | ⚠️ Unaudited |
| X33RateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xfa5084...a68312` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (77)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Proxy (impl: 0x78a3dcdda13a58c198b5aabea91f51273abd1d87) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x522ef5...8aa889`; ethereum `0x78a3dc...bd1d87` | ❓ Unverified |
| Proxy (impl: 0x9b683ca24b0e013512e2566b68704dbe9677413c) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x8a5eb9...42c8a6`; avalanche `0x9b683c...77413c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02a569...e75c33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0980e8...5c6754` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ee0a5...a8403a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19144e...bc09ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a7f72...bb6a3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1add0c...0d8f17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x287dfa...637f07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c1c0e...253f55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2decae...2cb615` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e77c9...091c15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ec43d...7ea792` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x329084...6f6fb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x354389...cb2cda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42abd5...f68e56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43455e...660a69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ae17b...441dd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52beb0...1993fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x587983...8eb5cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5986af...9b3939` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59c856...1e196d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60a6c5...bc42f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x683b88...81b8ec` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-241665 | `0x70c443...8b7383` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x713b6b...c5edc3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7171e6...d2611b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a3652...a4a088` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e43d3...981c42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86d794...2fe1e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x938895...f3efbe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b337c...a45287` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d2f03...11ac78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab42c4...64f44b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad4413...527360` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xafdcd8...e35d04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0753a...246f6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7af8b...1a0fb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc156f6...b0fbef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd4f032...dac7a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xead80e...c911ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa0d65...4fe3d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfca17a...139d6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x00a2a9...abb4a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb9f8ab...fd7b88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x155aeb...c21b9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1cab84...345cf2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7de29b...5a3c3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbe6f65...83f09d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd89025...96eb87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe3246e...d0a90a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfc2b39...800aae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x9763e6...2ca562` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x9cde25...521867` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xadf9ed...01e92d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb221bc...2f6bb1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc07500...33d39a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xde491d...448bdb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xfcc325...67dba1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon-zkevm | unit-241677 | `0x5d56ea...324f0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x60825f...7d07b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x6b87fa...d69fb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x7660d9...0d9e5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x9c5a52...a97e1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0xa7a10b...eb0b08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x180295...cf1d77` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-241681 | `0xc63529...6cfbb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2dd70f...cabdbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbcb724...74efc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xeef937...3a34e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x32acb4...2a23f3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-241680 | `0x41e9ac...4d946a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5d3be8...c99b89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5d56ea...324f0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa88bbe...789d6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xefc86a...d228c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xefde1c...c97f58` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [NM_0526_Gyroscope-dynamic-eclp.pdf](https://github.com/gyrostable/audit-reports/blob/main/Nethermind/NM_0526_Gyroscope-dynamic-eclp.pdf) | Nethermind | Audit | 2025-06 | aging | Direct | n/a | no match | 0 | 0 | 0 | 6 | n/a |
| [NM0440_GYFI_FINAL.pdf](https://github.com/gyrostable/audit-reports/blob/main/Nethermind/NM0440_GYFI_FINAL.pdf) | Nethermind | Audit | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [NM0255_GYROSCOPE _FINAL.pdf](https://github.com/gyrostable/audit-reports/blob/main/Nethermind/NM0255_GYROSCOPE%20_FINAL.pdf) | Nethermind | Audit | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [NM0264_GYRO_SGYD.pdf](https://github.com/gyrostable/audit-reports/blob/main/Nethermind/NM0264_GYRO_SGYD.pdf) | Nethermind | Audit | 2024-07 | stale | Direct | n/a | no match | 0 | 0 | 0 | 11 | n/a |
| [NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf](https://github.com/gyrostable/audit-reports/blob/main/Nethermind/NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf) | Nethermind | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 50 | high |
| [NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf](https://github.com/gyrostable/audit-reports/blob/main/Nethermind/NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf) | Nethermind | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 40 | high |
| [NM-0055 Security Review - Gyroscope CEMM.pdf](https://github.com/gyrostable/audit-reports/blob/main/Nethermind/NM-0055%20Security%20Review%20-%20Gyroscope%20CEMM.pdf) | Nethermind | Audit | 2022-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [NM-0051 Security Review Gyroscope.pdf](https://github.com/gyrostable/audit-reports/blob/main/Nethermind/NM-0051%20Security%20Review%20Gyroscope.pdf) | Nethermind | Audit | 2022-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 50 | high |
| [Summary Report & Fix Review - Gyroscope.pdf](https://github.com/gyrostable/audit-reports/blob/main/Trail%20of%20Bits/Summary%20Report%20%26%20Fix%20Review%20-%20Gyroscope.pdf) | Trail of Bits | Audit | 2022-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [Gyroscope_Protocol_Audit_Report.pdf](https://github.com/gyrostable/audit-reports/blob/main/Runtime%20Verification/Gyroscope_Protocol_Audit_Report.pdf) | Runtime Verification | Audit | 2022-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2962] NM_0526_Gyroscope-dynamic-eclp.pdf — no match: No reason recorded
- [2963] NM0440_GYFI_FINAL.pdf — no match: Audited files table lists three contracts: GYFIAirdrop.sol, GYFILocker.sol, Types.sol. Audit date is Feb 26, 2025 from the final report date.
- [2964] NM0255_GYROSCOPE _FINAL.pdf — no match: Extracted 5 unique contract names from two repositories: CCIP-GYD (CCIPHelpers, GydL1CCIPEscrow, L2Gyd, CCIPReceiverUpgradeable) and ZkEVM-GYD (L2Gyd, GydL1Escrow). L2Gyd appears in both repositories but is listed once. Audit date is June 25, 2024 (final report date).
- [2965] NM0264_GYRO_SGYD.pdf — no match: No reason recorded
- [2966] NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf — no match: All contracts listed in the 'Audited Files' table (Section 2) are in scope. The audit date is the final report date (August 15, 2023).
- [2967] NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf — no match: Extracted contract names from the 'Audited Files' tables (two tables) and the system overview. The audit date is the final report date: August 15, 2023.
- [2968] NM-0055 Security Review - Gyroscope CEMM.pdf — no match: Extracted 6 contracts from the scope table and findings sections. Audit date from final report date.
- [2969] NM-0051 Security Review Gyroscope.pdf — no match: All contracts listed in the 'Audited Files' sections (Vaults Repository and Protocol Repository) are included. The audit date is from the final report date on the cover page.
- [2970] Summary Report & Fix Review - Gyroscope.pdf — no match: Extracted contract names from scope descriptions, findings, and fix log. Audit date from cover page.
- [2971] Gyroscope_Protocol_Audit_Report.pdf — no match: Three contracts explicitly listed in scope sections: PrimaryAMMV1, GyroCEMMMath, BalancerLPSharePricing. Other contracts mentioned (e.g., Motherboard, BaseVaultPriceOracle) are not in scope per report statements.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| NM_0526_Gyroscope-dynamic-eclp.pdf | BaseUpdatableRateProvider | unmatched — not counted | — | — | no |
| NM_0526_Gyroscope-dynamic-eclp.pdf | GovernanceRoleManager | unmatched — not counted | — | — | no |
| NM_0526_Gyroscope-dynamic-eclp.pdf | Gyro3CLPPool | unmatched — not counted | — | — | no |
| NM_0526_Gyroscope-dynamic-eclp.pdf | GyroConfigManager | unmatched — not counted | — | — | no |
| NM_0526_Gyroscope-dynamic-eclp.pdf | UpdatableRateProviderBalV2 | unmatched — not counted | — | — | no |
| NM_0526_Gyroscope-dynamic-eclp.pdf | UpdatableRateProviderBalV3 | unmatched — not counted | — | — | no |
| NM0440_GYFI_FINAL.pdf | GYFIAirdrop | unmatched — not counted | — | listed in Audited Files table | no |
| NM0440_GYFI_FINAL.pdf | GYFILocker | unmatched — not counted | — | listed in Audited Files table | no |
| NM0440_GYFI_FINAL.pdf | Types | unmatched — not counted | — | listed in Audited Files table | no |
| NM0255_GYROSCOPE _FINAL.pdf | CCIPHelpers | unmatched — not counted | — | Listed in audited files table for CCIP-GYD repository | no |
| NM0255_GYROSCOPE _FINAL.pdf | GydL1CCIPEscrow | unmatched — not counted | — | Listed in audited files table for CCIP-GYD repository | no |
| NM0255_GYROSCOPE _FINAL.pdf | L2Gyd | unmatched — not counted | — | Listed in audited files table for ZkEVM-GYD repository | no |
| NM0255_GYROSCOPE _FINAL.pdf | CCIPReceiverUpgradeable | unmatched — not counted | — | Listed in audited files table for CCIP-GYD repository | no |
| NM0255_GYROSCOPE _FINAL.pdf | GydL1Escrow | unmatched — not counted | — | Listed in audited files table for ZkEVM-GYD repository | no |
| NM0264_GYRO_SGYD.pdf | BaseDistributor | unmatched — not counted | — | — | no |
| NM0264_GYRO_SGYD.pdf | GydDistributor | unmatched — not counted | — | — | no |
| NM0264_GYRO_SGYD.pdf | ICurveLiquidityGauge | unmatched — not counted | — | — | no |
| NM0264_GYRO_SGYD.pdf | IGYD | unmatched — not counted | — | — | no |
| NM0264_GYRO_SGYD.pdf | IGydDistributor | unmatched — not counted | — | — | no |
| NM0264_GYRO_SGYD.pdf | IL1GydEscrow | unmatched — not counted | — | — | no |
| NM0264_GYRO_SGYD.pdf | IsGYD | unmatched — not counted | — | — | no |
| NM0264_GYRO_SGYD.pdf | L2GydDistributor | unmatched — not counted | — | — | no |
| NM0264_GYRO_SGYD.pdf | ScaledMath | unmatched — not counted | — | — | no |
| NM0264_GYRO_SGYD.pdf | Stream | unmatched — not counted | — | — | no |
| NM0264_GYRO_SGYD.pdf | sGYD | unmatched — not counted | — | — | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | GydToken | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | GydRecovery | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | ReserveManager | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | Motherboard | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | GyroConfig | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | FreezableProxy | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | LiquidityMining | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | PrimaryAMMV1 | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | Reserve | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | ReserveStewardshipIncentives | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | VaultRegistry | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | CheckedPriceOracle | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | BatchVaultPriceOracle | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | GenericVaultPriceOracle | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | BaseVaultPriceOracle | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | AssetRegistry | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | TellorOracle | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | ChainLinkPriceOracle | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | TrustedSignerPriceOracle | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | BaseChainLinkOracle | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | BaseBalancerPriceOracle | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | BalancerLPSharePricing | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | BalancerCPMMPriceOracle | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | BalancerECLPV2PriceOracle | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | Balancer2CLPPriceOracle | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | Balancer3CLPPriceOracle | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | GovernableBase | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | Governable | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | GovernableUpgradeable | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | GovernanceProxy | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | ReserveSafetyManager | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | VaultSafetyMode | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | RootSafetyCheck | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | StaticPercentageFeeHandler | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | BalancerPoolVault | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | GenericVault | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | BaseVault | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | ReserveSystemRead | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | Vaults | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | ConfigHelpers | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | Errors | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | VaultMetadataExtension | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | Arrays | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | DecimalScale | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | ConfigKeys | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | DataTypes | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | TypeConversion | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | ReserveStateExtensions | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | Flow | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | SignedFixedPoint | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | WrappedERC20WithEMA | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | VotingPowerAggregator | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | ActionTierConfig | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | LiquidityMining | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | RecruitNFT | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | GovernanceManager | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | EmergencyRecovery | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | GovernanceOnly | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | ImmutableOwner | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | RecruitNFTVault | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | FriendlyDAOVault | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | NFTVault | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | FoundingFrogVault | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | LPVault | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | AggregateLPVault | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | NoSafeManagementByMultisig | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | SafeManagementModule | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | SimpleThresholdStrategy | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | SetAddressStrategy | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | BaseThresholdStrategy | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | SetVaultFeesStrategy | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | SetSystemParamsStrategy | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | StaticTierStrategy | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | Errors | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | ScaledMath | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | DataTypes | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | VotingPowerHistory | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | Merkle | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | IVotingPowersUpdater | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | ITierer | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | IVotingPowerAggregator | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | IVault | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | ITierStrategy | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | IDelegatingVault | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | ILiquidityMining | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | IWrappedERC20WithEMA | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | ILockingVault | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | GydRecovery | unmatched — not counted | — | listed in audited files table (second table) | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | Motherboard | unmatched — not counted | — | listed in audited files table (second table) | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | ReserveStewardshipIncentives | unmatched — not counted | — | listed in audited files table (second table) | no |
| NM-0055 Security Review - Gyroscope CEMM.pdf | GyroCEMMPool | unmatched — not counted | — | listed in scope table and findings sections | no |
| NM-0055 Security Review - Gyroscope CEMM.pdf | GyroCEMMOracleMath | unmatched — not counted | — | listed in scope table | no |
| NM-0055 Security Review - Gyroscope CEMM.pdf | GyroCEMMMath | unmatched — not counted | — | listed in scope table | no |
| NM-0055 Security Review - Gyroscope CEMM.pdf | GyroCEMMPoolErrors | unmatched — not counted | — | listed in scope table | no |
| NM-0055 Security Review - Gyroscope CEMM.pdf | GyroPoolMath | unmatched — not counted | — | listed in scope table and findings sections | no |
| NM-0055 Security Review - Gyroscope CEMM.pdf | SignedFixedPoint | unmatched — not counted | — | listed in scope table and findings sections | no |
| NM-0051 Security Review Gyroscope.pdf | Gyro2PoolErrors | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | GyroTwoMath | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | GyroTwoOracleMath | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | GyroTwoPool | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | GyroTwoPoolFactory | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | GyroThreeMath | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | GyroThreePool | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | GyroThreePoolErrors | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | GyroThreePoolFactory | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | GyroCEMMMath | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | GyroCEMMOracleMath | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | GyroCEMMPool | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | GyroCEMMPoolErrors | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | GyroPoolMath | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | Governable | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | BalancerExchanger | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | BalancerPoolRegistry | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | StaticPercentageFeeHandler | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | FeeBank | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | GydToken | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | GyroConfig | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | LPTokenExchangerRegistry | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | Motherboard | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | AssetRegistry | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | BalancerCEMMPriceOracle | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | BalancerCPMMPriceOracle | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | BalancerCPMMV2PriceOracle | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | BalancerCPMMV3PriceOracle | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | BalancerLPSharePricing | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | BaseBalancerPriceOracle | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | BaseChainLinkOracle | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | BaseVaultPriceOracle | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | BatchVaultPriceOracle | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | ChainLinkPriceOracle | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | CheckedPriceOracle | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | CrashProtectedChainLinkPriceOracle | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | TrustedSignerPriceOracle | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | UniswapV3TwapPriceOracle | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | PrimaryAMMV1 | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | Reserve | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | ReserveManager | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | ReserveSafetyManager | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | RootSafetyCheck | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | VaultSafetyMode | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | VaultRegistry | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | BalancerPoolVault | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | BaseVault | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | DataTypes | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | Flow | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | SignedFixedPoint | unmatched — not counted | — | listed in scope table | no |
| Summary Report & Fix Review - Gyroscope.pdf | GyroToken | unmatched — not counted | — | gyro-token/ contains the Gyro token contracts. | no |
| Summary Report & Fix Review - Gyroscope.pdf | GyroTwoPool | unmatched — not counted | — | vaults/ contains the GyroTwoPool, GyroThreePool, and GyroCEMMPool implementations | no |
| Summary Report & Fix Review - Gyroscope.pdf | GyroThreePool | unmatched — not counted | — | vaults/ contains the GyroTwoPool, GyroThreePool, and GyroCEMMPool implementations | no |
| Summary Report & Fix Review - Gyroscope.pdf | GyroCEMMPool | unmatched — not counted | — | vaults/ contains the GyroTwoPool, GyroThreePool, and GyroCEMMPool implementations | no |
| Summary Report & Fix Review - Gyroscope.pdf | PrimaryAMMV1 | unmatched — not counted | — | protocol/ contains the AMM and various other core contracts of the system. Our scope in the initial two weeks was limited to the PrimaryAMMV1 contract. | no |
| Summary Report & Fix Review - Gyroscope.pdf | ReserveSafetyManager | unmatched — not counted | — | Certain safety checks performed during minting and redeeming operations do not properly check the returned error codes; as a result, minting and redeeming operations could succeed even if the ReserveSafetyManager indicates that they are unsafe. | no |
| Summary Report & Fix Review - Gyroscope.pdf | FeeBank | unmatched — not counted | — | SafeERC20 functions not used in FeeBank | no |
| Summary Report & Fix Review - Gyroscope.pdf | GryoTokenL1 | unmatched — not counted | — | Risk of trapped funds in the GryoTokenL1 contract due to missing ETH validation | no |
| Gyroscope_Protocol_Audit_Report.pdf | PrimaryAMMV1 | unmatched — not counted | — | listed in scope | no |
| Gyroscope_Protocol_Audit_Report.pdf | GyroCEMMMath | unmatched — not counted | — | listed in scope | no |
| Gyroscope_Protocol_Audit_Report.pdf | BalancerLPSharePricing | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 186 |
| upstream | 2 |
| standard_library | 3 |
| needs_review | 81 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 10
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 182 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=8
- Match method counts: n/a

Zero-match audit list:

- [2962] NM_0526_Gyroscope-dynamic-eclp.pdf
- [2963] NM0440_GYFI_FINAL.pdf
- [2964] NM0255_GYROSCOPE _FINAL.pdf
- [2965] NM0264_GYRO_SGYD.pdf
- [2966] NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf
- [2967] NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf
- [2968] NM-0055 Security Review - Gyroscope CEMM.pdf
- [2969] NM-0051 Security Review Gyroscope.pdf
- [2970] Summary Report & Fix Review - Gyroscope.pdf
- [2971] Gyroscope_Protocol_Audit_Report.pdf

Fork inheritance lineage and inherited audits are included when available.
