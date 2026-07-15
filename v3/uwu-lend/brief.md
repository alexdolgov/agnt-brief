# Agentic Audit Brief: UwU Lend

## Export Authority

- Production state: **published scope**
- Raw selected rows: 12 across 1 audit(s)
- Eligible audit results: 1 (1 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: UwU Lend (`uwu-lend`)
- Website: [https://www.uwulend.fi/](https://www.uwulend.fi/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 152 unique implementations (406 raw deployments)
- Coverage basis: 12/54 confirmed own live verified implementations (22.2%); conservative 22.2% with 0 needs-review implementation(s)
- DeFi Llama TVL: $236,350.53
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for UwU Lend. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 123 contract row(s) across ethereum. Structural roles: 71 core, 36 unclassified, 16 supporting. 15 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 123
- Structural roles: core (71), unclassified (36), supporting (16)
- Contract kinds: contract (120), unclassified (3)
- Detected standards: erc20 (35), ownable (18), erc1967proxy (15), erc20permit (8), erc165 (3), pausable (3), accesscontrol (2), erc4626 (2)
- Frameworks: openzeppelin (80), foundry (23), boringcrypto (4)
- Upgradeable-pattern rows: 15

## Fork Analysis

5 of 89 contracts are derived from known codebases. 84 contracts have no detected origin.

### Forked Contracts

**FRAXStablecoin** (`0x853d95...75b99e`, chain 1)
Origin: alchemix (`0x853d95...75b99e`)
Containment: 100.0% - 22 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**InitializableImmutableAdminUpgradeabilityProxy** (`0x408c97...5b005c`, chain 1)
Origin: xave-finance (`0xc8c8e2...50eb8c`)
Containment: 100.0% - 17 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**LendingPool** (`0x05bfa9...25ea4d`, chain 1)
Origin: bao-finance (`0x8dff5e...a30fcf`)
Containment: 100.0% - 26 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**LendingPoolConfigurator** (`0x40daf7...835347`, chain 1)
Origin: xave-finance (`0xc8c8e2...50eb8c`)
Containment: 100.0% - 17 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**ValidationLogic** (`0x3c0ada...8839af`, chain 1)
Origin: bao-finance (`0x8dff5e...a30fcf`)
Containment: 100.0% - 26 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- AaveOracle (`0xac4a2a...772598`, chain 1)
- AaveProtocolDataProvider (`0x17938e...8cd521`, chain 1)
- AnyswapV5ERC20 (`0x3b79a2...7faf57`, chain 1)
- ATokensAndRatesHelper (`0xaab1b4...b95645`, chain 1)
- BLUSDToken (`0xb9d7dd...3f79c3`, chain 1)
- ChefIncentivesController (`0x219531...1cccdb`, chain 1)
- crvUSD Stablecoin (`0xf939e0...ac1b4e`, chain 1)
- Dai (`0x6b1754...271d0f`, chain 1)
- DefaultReserveInterestRateStrategy (`0x03bca3...af7b64`, chain 1)
- DefaultReserveInterestRateStrategy (`0x4cc685...ccd1c2`, chain 1)
- DefaultReserveInterestRateStrategy (`0x690dcb...ff494a`, chain 1)
- DefaultReserveInterestRateStrategy (`0x9203a2...cf1a9c`, chain 1)
- DefaultReserveInterestRateStrategy (`0xb87872...5543b0`, chain 1)
- DefaultReserveInterestRateStrategy (`0xba285e...e9e6a6`, chain 1)
- DefaultReserveInterestRateStrategy (`0xc818d6...7a89c5`, chain 1)
- DefaultReserveInterestRateStrategy (`0xf15ca7...8c1836`, chain 1)
- GenericLogic (`0xaede01...198b89`, chain 1)
- IncentivesControllerV2 (`0xdb5c23...8e9e5a`, chain 1)
- IncentivesControllerV3 (`0xf8390b...d6c568`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0x02738e...560dae`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0x1254b1...8e410f`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0x13cdfd...11176b`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0x20e61b...564aa4`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0x2409af...87c668`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0x243387...31aa70`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0x24959f...233c7d`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0x29d567...03ac3f`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0x39a873...7726b9`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0x453842...d023d3`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0x511447...b7e670`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0x51e0f1...9427d9`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0x5c8cb0...b3f241`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0x64e484...e4e2d4`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0x67fadb...0e13e5`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0x6ace5c...d8fc8d`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0x8028ea...ea90a6`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0x82a49c...8d2805`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0x8c240c...8fa93d`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0x9abe34...bb18ef`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0xaac1d6...8dc160`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0xadfa5f...500086`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0xb95bd0...3c7626`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0xb9e8bc...0affa0`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0xbac9d1...488d66`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0xc480a1...bc12fc`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0xc4bf70...1ba0fa`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0xd1e6b0...3510e2`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0xd5bfd3...47850b`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0xd7f6e4...450d11`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0xdb1a8f...a59eba`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0xe873e3...748fad`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0xeb61e5...8a14cc`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0xec12f6...b7b2c1`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0xf12931...0b67a6`, chain 1)
- LendingPoolAddressesProvider (`0x011c0d...f7f1fb`, chain 1)
- LendingPoolAddressesProviderRegistry (`0xac5384...cabed4`, chain 1)
- LendingPoolCollateralManager (`0x2e9f84...fe7ddb`, chain 1)
- LendingRateOracle (`0x413a1f...522fe4`, chain 1)
- Leverager (`0x780dcf...2f32ed`, chain 1)
- LUSDToken (`0x5f9880...568ba0`, chain 1)
- MagicInternetMoneyV1 (`0x99d8a9...1e17f3`, chain 1)
- MultiFeeDistribution (`0x7c0bf1...c5e237`, chain 1)
- MultiFeeDistributionV2 (`0x0a7b2a...9b0188`, chain 1)
- MultiFeeDistributionV3 (`0x630de1...2bdd44`, chain 1)
- ReserveLogic (`0x4be759...8fbdd9`, chain 1)
- SavingsDai (`0x83f20f...42beea`, chain 1)
- Sifu (`0x8dd098...9697ff`, chain 1)
- SifuM (`0x593899...ddaab5`, chain 1)
- sSpellV1 (`0x26fa3f...a106a9`, chain 1)
- sSpellV1 (`0x4ca9c6...c42b8c`, chain 1)
- StableAndVariableTokensHelper (`0xbcdad8...92279a`, chain 1)
- StakedUSDeV2 (`0x9d39a5...7a3497`, chain 1)
- StakingRewards (`0xe36435...527186`, chain 1)
- TetherToken (`0xdac17f...831ec7`, chain 1)
- TokenMintERC20Token (`0x29127f...eac313`, chain 1)
- UiPoolDataProviderV2 (`0x19dd01...e20ce5`, chain 1)
- UniswapV2Pair (`0x3e0486...2b6027`, chain 1)
- UwU (`0x55c08c...765257`, chain 1)
- Vyper_contract (`0xd533a9...34cd52`, chain 1)
- WalletBalanceProvider (`0x793533...c6addd`, chain 1)
- WBTC (`0x2260fa...c2c599`, chain 1)
- WETH9 (`0xc02aaa...756cc2`, chain 1)
- WETHGateway (`0x2fd22a...4d7d2f`, chain 1)
- Wonderland (`0x9b06f3...c68a76`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 123; live-surface rows included: 123 (123 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 87/87 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 12/54 (22.2%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 54 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 98 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 36
- Confirmed-live implementations: 54 of 152 unique; 98 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 12/102
- Verified + Unaudited implementations: 90
- Verified by bytecode match: 0
- Unverified implementations: 50
- Unique implementations: 152
- Raw deployments: 406
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-12 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 12 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 12 | 11.8% | 2022-12 |

## Contract Surface

### ✅ Verified + Audited (12)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveOracle | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-260169 | `0xac4a2a...772598` | ✅ Audited |
| AToken | token | project_anchor | own_supporting | 18 | ethereum | unit-260194 | 59 deployments: ethereum `0x02738e...560dae`; ethereum `0x044ad8...6a9c97`; ethereum `0x10ee4a...d7fa5d`; ethereum `0x12df06...51bc52`; ethereum `0x13adb4...4e5509`; ethereum `0x17b132...24f6c8`; ethereum `0x20e61b...564aa4`; ethereum `0x243387...31aa70`; ethereum `0x24959f...233c7d`; ethereum `0x2c9389...2f7f64`; ethereum `0x2ea21b...58b479`; ethereum `0x3435cc...24eaf5`; ethereum `0x3e0807...d9b22c`; ethereum `0x41adb3...d7a5ce`; ethereum `0x4722a5...9a5a9c`; ethereum `0x482364...a74bf7`; ethereum `0x48ab39...2c4b35`; ethereum `0x4c82a5...a7b002`; ethereum `0x511447...b7e670`; ethereum `0x550649...b0e4aa`; ethereum `0x5675dd...ed0f41`; ethereum `0x56e3f1...2bd25c`; ethereum `0x576098...4b6fdd`; ethereum `0x5ed051...93059b`; ethereum `0x5f5c8f...fc95ca`; ethereum `0x61e9a7...0fd6ff`; ethereum `0x67b375...020b8e`; ethereum `0x67fadb...0e13e5`; ethereum `0x6ace5c...d8fc8d`; ethereum `0x7a9f54...dcc1f0`; ethereum `0x8028ea...ea90a6`; ethereum `0x8232d3...4430f5`; ethereum `0x871ac0...b36cca`; ethereum `0x8c240c...8fa93d`; ethereum `0x8dd93b...65fd27`; ethereum `0x8ddbbe...d10e89`; ethereum `0x9d111e...049e25`; ethereum `0x9dad36...205075`; ethereum `0xa066f1...5973fe`; ethereum `0xa256d0...1bd54c`; ethereum `0xa69d94...e1188a`; ethereum `0xadfa5f...500086`; ethereum `0xb5bb4f...2afeb8`; ethereum `0xb5cf0d...d2cbe2`; ethereum `0xb95bd0...3c7626`; ethereum `0xc480a1...bc12fc`; ethereum `0xc4bf70...1ba0fa`; ethereum `0xcb0245...574bb6`; ethereum `0xcca2f0...844429`; ethereum `0xd1e6b0...3510e2`; ethereum `0xdb1a8f...a59eba`; ethereum `0xe44d24...75b14b`; ethereum `0xe6e33b...dc8c43`; ethereum `0xe73c56...bbf99a`; ethereum `0xe873e3...748fad`; ethereum `0xeb61e5...8a14cc`; ethereum `0xf12931...0b67a6`; ethereum `0xf47dfc...5b2a06`; ethereum `0xff1c3d...abc039` | ✅ Audited |
| ChefIncentivesController | governance | project_anchor | own_supporting | 0 | ethereum | unit-260139 | `0x219531...1cccdb` | ✅ Audited |
| GenericLogic | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260171 | `0xaede01...198b89` | ✅ Audited |
| LendingPoolAddressesProvider | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-260134 | 6 deployments: ethereum `0x011c0d...f7f1fb`; ethereum `0x10141a...19a0d0`; ethereum `0x1166de...5390bf`; ethereum `0x3e2587...cbe234`; ethereum `0x86aba3...6be7cc`; ethereum `0xebdbb9...eb10f6` | ✅ Audited |
| Leverager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260158 | `0x780dcf...2f32ed` | ✅ Audited |
| MultiFeeDistribution | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260160 | `0x7c0bf1...c5e237` | ✅ Audited |
| MultiFeeDistributionV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260136 | `0x0a7b2a...9b0188` | ✅ Audited |
| ReserveLogic | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260149 | `0x4be759...8fbdd9` | ✅ Audited |
| StakingRewards | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260181 | `0xe36435...527186` | ✅ Audited |
| ValidationLogic | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260146 | `0x3c0ada...8839af` | ✅ Audited |
| VariableDebtToken | token | project_anchor | own_supporting | 16 | ethereum | n/a | 57 deployments: ethereum `0x0f6885...fac22c`; ethereum `0x1125a0...06549a`; ethereum `0x1254b1...8e410f`; ethereum `0x13cdfd...11176b`; ethereum `0x1c01d3...a4faa0`; ethereum `0x24c988...bb9af6`; ethereum `0x28d9ca...41e51b`; ethereum `0x29d567...03ac3f`; ethereum `0x2ce6eb...1203d9`; ethereum `0x3923c7...26ea32`; ethereum `0x39a873...7726b9`; ethereum `0x404776...4211bf`; ethereum `0x407e84...6f9368`; ethereum `0x4385ae...ada6e0`; ethereum `0x453842...d023d3`; ethereum `0x4b8e01...ec0319`; ethereum `0x50db71...475781`; ethereum `0x51e0f1...9427d9`; ethereum `0x5c8cb0...b3f241`; ethereum `0x604b79...9fdce4`; ethereum `0x6063ed...805b47`; ethereum `0x64e484...e4e2d4`; ethereum `0x70e3e2...3e9255`; ethereum `0x726da5...7c9189`; ethereum `0x75e02d...d25614`; ethereum `0x79e01c...8bf9c8`; ethereum `0x7c14f3...4e1c99`; ethereum `0x82a49c...8d2805`; ethereum `0x8975bc...a633ad`; ethereum `0x89ec19...db1f90`; ethereum `0x8da785...e34929`; ethereum `0x903e35...d9e45b`; ethereum `0x97a19b...8ad012`; ethereum `0x9abe34...bb18ef`; ethereum `0x9ddfc4...a64f45`; ethereum `0xa2c32a...d9eebc`; ethereum `0xa71b2c...997083`; ethereum `0xaab791...cecd93`; ethereum `0xaac1d6...8dc160`; ethereum `0xac1bd7...191c7a`; ethereum `0xb894e2...d0b1f4`; ethereum `0xb9e8bc...0affa0`; ethereum `0xbac9d1...488d66`; ethereum `0xbae076...5e146b`; ethereum `0xbb8565...923d52`; ethereum `0xbc9a6b...b2c544`; ethereum `0xc52369...7c33b6`; ethereum `0xd1367a...696148`; ethereum `0xd4a4da...219d1b`; ethereum `0xd5bfd3...47850b`; ethereum `0xd626d6...5e204f`; ethereum `0xd7f6e4...450d11`; ethereum `0xdebb85...e8e86f`; ethereum `0xe03496...d539ef`; ethereum `0xec12f6...b7b2c1`; ethereum `0xf3d6fa...f4affa`; ethereum `0xfcbd89...b3096f` | ✅ Audited |

### ⚠️ Verified + Unaudited (90)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveProtocolDataProvider | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260137 | `0x17938e...8cd521` | ⚠️ Unaudited |
| ActivePool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf9eb2...fe3d7f` | ⚠️ Unaudited |
| AggMonetaryPolicy - monetary policy based on aggregated prices for crvUSD | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c5a7f...9bc933` | ⚠️ Unaudited |
| AggregatorStablePrice - aggregator of stablecoin prices for crvUSD | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18672b...0e4e62` | ⚠️ Unaudited |
| AnyswapV5ERC20 | token | project_anchor | own_supporting | 0 | ethereum | unit-260145 | `0x3b79a2...7faf57` | ⚠️ Unaudited |
| ATokenBurnable | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9621e...4f61b5` | ⚠️ Unaudited |
| ATokensAndRatesHelper | token | project_anchor | own_supporting | 0 | ethereum | unit-260168 | `0xaab1b4...b95645` | ⚠️ Unaudited |
| BLUSDToken | token | project_anchor | own_supporting | 0 | ethereum | unit-260173 | `0xb9d7dd...3f79c3` | ⚠️ Unaudited |
| BondNFT | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa83848...4029ee` | ⚠️ Unaudited |
| BorrowerOperations | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24179c...83e007` | ⚠️ Unaudited |
| ChickenBondManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x57619f...e37137` | ⚠️ Unaudited |
| CollSurplusPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d32e8...ce5521` | ⚠️ Unaudited |
| crvUSD ControllerFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9332f...0738bc` | ⚠️ Unaudited |
| crvUSD Stablecoin | token | project_anchor | own_supporting | 0 | ethereum | unit-260184 | `0xf939e0...ac1b4e` | ⚠️ Unaudited |
| CustomPriceGetter | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 9 deployments: ethereum `0x02da86...aab6a8`; ethereum `0x493923...a06c5a`; ethereum `0x4a5c35...8624fb`; ethereum `0x964d57...c5c99d`; ethereum `0xa659b7...f61a91`; ethereum `0xaedcf5...492eb1`; ethereum `0xc40769...ff9a85`; ethereum `0xec6744...0eadd2`; ethereum `0xf160ab...264bb5` | ⚠️ Unaudited |
| Dai | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260157 | `0x6b1754...271d0f` | ⚠️ Unaudited |
| DefaultReserveInterestRateStrategy | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-260135 | `0x03bca3...af7b64` | ⚠️ Unaudited |
| DefaultReserveInterestRateStrategy | operational_periphery | project_anchor | own_core | 0 | ethereum | n/a | 36 deployments: ethereum `0x07b127...001ab7`; ethereum `0x0f2e9d...55684e`; ethereum `0x1d2d10...0dc61b`; ethereum `0x23a625...4d2115`; ethereum `0x271787...3d0874`; ethereum `0x2a7743...144fb6`; ethereum `0x2cee07...cae023`; ethereum `0x39cee7...7f5d30`; ethereum `0x3a1c46...5c6b06`; ethereum `0x43631b...6ab1d0`; ethereum `0x4fc093...0868ce`; ethereum `0x5d89fa...71e820`; ethereum `0x673ef6...fbcb9b`; ethereum `0x6b0118...8b2d64`; ethereum `0x73cae6...360f88`; ethereum `0x88fbeb...be03f5`; ethereum `0x9fcd8c...8f6012`; ethereum `0xa3c977...0247f7`; ethereum `0xa645c8...5ed356`; ethereum `0xaf3da5...f19df7`; ethereum `0xb5782e...8eca31`; ethereum `0xba285e...e9e6a6`; ethereum `0xc3f77e...c9342b`; ethereum `0xc52216...8663f3`; ethereum `0xc65de1...7ac239`; ethereum `0xc9bae0...9e036d`; ethereum `0xca2a83...edebf3`; ethereum `0xca328d...86c90e`; ethereum `0xcb830c...34421f`; ethereum `0xcca85d...757c09`; ethereum `0xd14b84...9ba3bf`; ethereum `0xd4fb94...da1479`; ethereum `0xda7411...e362d2`; ethereum `0xec2416...691390`; ethereum `0xf01f28...76e15b`; ethereum `0xf15ca7...8c1836` | ⚠️ Unaudited |
| DefaultReserveInterestRateStrategy | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-260151 | `0x4cc685...ccd1c2` | ⚠️ Unaudited |
| DefaultReserveInterestRateStrategy | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-260156 | `0x690dcb...ff494a` | ⚠️ Unaudited |
| DefaultReserveInterestRateStrategy | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-260164 | `0x9203a2...cf1a9c` | ⚠️ Unaudited |
| DefaultReserveInterestRateStrategy | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-260172 | `0xb87872...5543b0` | ⚠️ Unaudited |
| DefaultReserveInterestRateStrategy | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-260177 | `0xc818d6...7a89c5` | ⚠️ Unaudited |
| DSToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x97bf1f...b71e0e`; ethereum `0x9aed7a...d6727b` | ⚠️ Unaudited |
| Dummy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3d0e3...8e8ebc` | ⚠️ Unaudited |
| Factory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5a5f1...f2322b` | ⚠️ Unaudited |
| FallbackOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9bc633...5698b9` | ⚠️ Unaudited |
| FlashLiquidatorV2 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x475220...d418fa` | ⚠️ Unaudited |
| FRAXStablecoin | token | project_anchor | own_supporting | 0 | ethereum | unit-260162 | `0x853d95...75b99e` | ⚠️ Unaudited |
| IncentivesControllerV2 | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x78f3fc...c346b2`; ethereum `0x81a45d...b7ad45` | ⚠️ Unaudited |
| IncentivesControllerV2 | governance | project_anchor | own_supporting | 0 | ethereum | unit-260180 | `0xdb5c23...8e9e5a` | ⚠️ Unaudited |
| IncentivesControllerV3 | governance | project_anchor | own_supporting | 0 | ethereum | n/a | 5 deployments: ethereum `0x24911d...79215b`; ethereum `0x415243...560ec3`; ethereum `0x8c7f54...57aedf`; ethereum `0x93ad34...dd453a`; ethereum `0xf8390b...d6c568` | ⚠️ Unaudited |
| LendingPool | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-260186 | 2 deployments: ethereum `0x05bfa9...25ea4d`; ethereum `0x2409af...87c668` | ⚠️ Unaudited |
| LendingPoolAddressesProviderRegistry | registry | project_anchor | own_supporting | 0 | ethereum | n/a | 5 deployments: ethereum `0x34a7db...e4a3ec`; ethereum `0x439239...e9ccca`; ethereum `0x668b23...0dd9ef`; ethereum `0x843a69...ff16d8`; ethereum `0xac5384...cabed4` | ⚠️ Unaudited |
| LendingPoolCollateralManager | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-260143 | `0x2e9f84...fe7ddb` | ⚠️ Unaudited |
| LendingPoolConfigurator | core_logic | project_anchor | own_core | 1 | ethereum | n/a | 3 deployments: ethereum `0x1c0e90...2c69ae`; ethereum `0x408c97...5b005c`; ethereum `0x40daf7...835347` | ⚠️ Unaudited |
| LendingRateOracle | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-260148 | `0x413a1f...522fe4` | ⚠️ Unaudited |
| Leverager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x0663cf...b6567c`; ethereum `0x10bc45...7afdd8`; ethereum `0x3516b8...9f8c2a`; ethereum `0x38972f...c73c2d` | ⚠️ Unaudited |
| LQTYStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f9fbb...fc605d` | ⚠️ Unaudited |
| LQTYToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6dea81...88c54d` | ⚠️ Unaudited |
| LUSDPriceGetter | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x092978...5df00f`; ethereum `0x257642...3d7e69` | ⚠️ Unaudited |
| LUSDToken | token | project_anchor | own_supporting | 0 | ethereum | unit-260154 | `0x5f9880...568ba0` | ⚠️ Unaudited |
| MagicInternetMoneyV1 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260165 | `0x99d8a9...1e17f3` | ⚠️ Unaudited |
| MarryStrgtVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x3d8bd8...138a82`; ethereum `0x6502dc...b152b9`; ethereum `0xb45d8a...cea199`; ethereum `0xc1950e...0b34f8` | ⚠️ Unaudited |
| MarryStrgtVaultWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x9a92e2...3ffafe`; ethereum `0xe1ec18...8e0773` | ⚠️ Unaudited |
| Migration | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x130e52...f824f2`; ethereum `0x458e7e...9a7e59`; ethereum `0x54f839...5c3a7b`; ethereum `0x67bd24...30edab` | ⚠️ Unaudited |
| MigrationUpdater | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb1be6...aceeea` | ⚠️ Unaudited |
| MultiClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32facb...203a5f` | ⚠️ Unaudited |
| MultiFeeDistributionUNIV3POS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x24c7ce...21f446`; ethereum `0x4c7e22...3115c7`; ethereum `0x716ea7...4d4457`; ethereum `0xaa5bce...8867df` | ⚠️ Unaudited |
| MultiFeeDistributionV3 | unknown | project_anchor | own_core | 0 | ethereum | n/a | 2 deployments: ethereum `0x29a906...b184bd`; ethereum `0x630de1...2bdd44` | ⚠️ Unaudited |
| NEC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc80c0...b97a5e` | ⚠️ Unaudited |
| OneInchSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeeccba...8ca178` | ⚠️ Unaudited |
| OneWayLendingFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea6876...3205e0` | ⚠️ Unaudited |
| PegPrice | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x226845...6c5445`; ethereum `0xe911fa...8c85a6` | ⚠️ Unaudited |
| RangePriceGetter | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 9 deployments: ethereum `0x29473b...63100e`; ethereum `0x781b29...2fac2d`; ethereum `0x786a26...424284`; ethereum `0x80d357...ff1245`; ethereum `0x8338be...2e62e9`; ethereum `0x90ba92...6c7b18`; ethereum `0x923576...d1bac5`; ethereum `0xa15151...61bc92`; ethereum `0xe6518b...5bcf97` | ⚠️ Unaudited |
| Redemption | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xb92998...87bed9`; ethereum `0xc003be...93faa3` | ⚠️ Unaudited |
| SavingsDai | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260161 | `0x83f20f...42beea` | ⚠️ Unaudited |
| Sifu | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260163 | `0x8dd098...9697ff` | ⚠️ Unaudited |
| SifuM | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260153 | `0x593899...ddaab5` | ⚠️ Unaudited |
| SIFUPriceGetter | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x51e9d8...9fffc9`; ethereum `0xc68838...bad0f4` | ⚠️ Unaudited |
| SiloOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ac896...3ccef7` | ⚠️ Unaudited |
| sSpellV1 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260141 | `0x26fa3f...a106a9` | ⚠️ Unaudited |
| sSpellV1 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260150 | `0x4ca9c6...c42b8c` | ⚠️ Unaudited |
| StabilityPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66017d...5a21bb` | ⚠️ Unaudited |
| StableAndVariableTokensHelper | token | project_anchor | own_supporting | 0 | ethereum | unit-260175 | `0xbcdad8...92279a` | ⚠️ Unaudited |
| StableDebtToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 17 deployments: ethereum `0x043fc0...2b4bbd`; ethereum `0x05d682...6a58eb`; ethereum `0x1c5c84...18bf99`; ethereum `0x2cb86d...7a62f7`; ethereum `0x3f4478...f76e14`; ethereum `0x4ff822...1b2e5a`; ethereum `0x6b5766...e69bea`; ethereum `0x74943d...8214be`; ethereum `0x7aef02...731131`; ethereum `0xa097ec...7bd5bd`; ethereum `0xbf5214...00b919`; ethereum `0xbf772d...9d7e96`; ethereum `0xc7c3d7...a60a3c`; ethereum `0xcbd753...20adc4`; ethereum `0xcc80c9...123b0d`; ethereum `0xec6f20...d85774`; ethereum `0xf39a01...c2a59c` | ⚠️ Unaudited |
| StakedUSDeV2 | token | project_anchor | own_supporting | 0 | ethereum | unit-260167 | `0x9d39a5...7a3497` | ⚠️ Unaudited |
| sUSDePriceProviderBUniCatch | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd25295...a4b2e8` | ⚠️ Unaudited |
| TetherToken | token | project_anchor | own_supporting | 0 | ethereum | unit-260179 | `0xdac17f...831ec7` | ⚠️ Unaudited |
| TokenMintERC20Token | token | project_anchor | own_supporting | 0 | ethereum | unit-260142 | `0x29127f...eac313` | ⚠️ Unaudited |
| TroveManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa39739...cf4bb2` | ⚠️ Unaudited |
| UiPoolDataProviderV2 | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-260138 | `0x19dd01...e20ce5` | ⚠️ Unaudited |
| Unipool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd37a77...bdf0d5` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260147 | `0x3e0486...2b6027` | ⚠️ Unaudited |
| USDe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c9edd...1e68b3` | ⚠️ Unaudited |
| UwU | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260152 | `0x55c08c...765257` | ⚠️ Unaudited |
| UwUETHLPPriceGetter | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x853376...0bf5f8` | ⚠️ Unaudited |
| UwUUiPriceGetter | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x027d9e...5dc514` | ⚠️ Unaudited |
| VariableDebtTokenBurnable | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9802a7...b979af` | ⚠️ Unaudited |
| VaultPriceGetter | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe4127...eed5fd` | ⚠️ Unaudited |
| VaultRangePriceGetter | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a8e89...861241` | ⚠️ Unaudited |
| VoltaPower | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99497b...9ea779` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 38 deployments: ethereum `0x2f50d5...5846bb`; ethereum `0x3993d3...22d446`; ethereum `0x3a283d...907611`; ethereum `0x3b6831...bce833`; ethereum `0x3d229e...d7b23b`; ethereum `0x4c18e4...e0ae79`; ethereum `0x4ca9b3...be596f`; ethereum `0x575ccd...318e2c`; ethereum `0x5f3b5d...94e2a2`; ethereum `0x64e3c2...ac041d`; ethereum `0x6c3f90...e6e490`; ethereum `0x705350...55410f`; ethereum `0x70fc95...745f68`; ethereum `0x752ebe...efaeac`; ethereum `0x7ca5b0...1d7575`; ethereum `0x80466c...638fe5`; ethereum `0x8282bd...43a2ef`; ethereum `0x8301ae...d7c511`; ethereum `0x848467...e84834`; ethereum `0x9838ec...c9427b`; ethereum `0x98638f...996122`; ethereum `0x98a7f1...d3eb8b`; ethereum `0xa85461...5fba10`; ethereum `0xa90996...857849`; ethereum `0xb19059...e572fd`; ethereum `0xb1f2cd...202cac`; ethereum `0xb57649...b0e0d4`; ethereum `0xbc89cd...ca8f53`; ethereum `0xbebc44...2ff1c7`; ethereum `0xbfcf63...d0952a`; ethereum `0xc4ad29...7675ff`; ethereum `0xca3d75...9a6bdf`; ethereum `0xcb0871...60147b`; ethereum `0xd061d6...c2fce0`; ethereum `0xd10d54...902e5a`; ethereum `0xd446a9...ab7e5a`; ethereum `0xd51a44...faae46`; ethereum `0xed4064...ff5c4d` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260178 | `0xd533a9...34cd52` | ⚠️ Unaudited |
| WalletBalanceProvider | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260159 | `0x793533...c6addd` | ⚠️ Unaudited |
| WBTC | token | project_anchor | own_supporting | 0 | ethereum | unit-260140 | `0x2260fa...c2c599` | ⚠️ Unaudited |
| WETH9 | token | project_anchor | own_supporting | 0 | ethereum | unit-260176 | `0xc02aaa...756cc2` | ⚠️ Unaudited |
| WETHGateway | token | project_anchor | own_supporting | 0 | ethereum | unit-260144 | `0x2fd22a...4d7d2f` | ⚠️ Unaudited |
| WMEMOPriceGetter | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb4989...c4eb3a` | ⚠️ Unaudited |
| Wonderland | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260166 | `0x9b06f3...c68a76` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (50)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x019d39...e6a3e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08fd54...7dffdf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c16d7...cfbd66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d309b...5c28d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23a0a2...98db14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25d580...854585` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x298a32...556f66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e707e...18da7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3fe2eb...7bcac8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x442707...379219` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4791e8...fabacc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c7e93...f6d388` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b4e67...9c73b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5fa44a...45c806` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60b8b1...09da4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6356bf...831e88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x687527...a2d518` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7749ee...a97712` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c417f...7c6a86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f0e5a...42e3e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f49be...18a1b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82893d...fc1779` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8aa8b3...4e182d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b93ae...e03812` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9060a4...ac0762` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x964ead...9cd6e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c1fcf...5a6cb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa4fcc8...ff24bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa61dac...d8dfc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa67a82...a27c87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8c931...d36e2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa436c...0549a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xacfbdb...34ecdb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1ad05...5be7cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2f81b...b91328` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb6c153...2453f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7cd17...cfa764` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8aedf...383499` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb0589...3e45f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc74211...e247df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc77841...0cd5ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc80468...bbc0d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd21040...bff916` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd7f950...186717` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd7fbb4...a0d3a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd865c7...bd32bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe76d93...e99c7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe81964...a761c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xedb47f...6b4724` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeee1b3...1c2549` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [PeckShield-Audit-Report-UWU-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-UWU-v1.0.pdf) | PeckShield | Audit | 2022-12 | stale | Direct | contract_name | matched | 12 | 2 | 0 | 3 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21205] PeckShield-Audit-Report-UWU-v1.0.pdf — matched: Extracted 15 contract names from the scope section (pages 4-5) and findings. The audit date is December 31, 2022 from the cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| PeckShield-Audit-Report-UWU-v1.0.pdf | MultiFeeDistribution | own contract | MultiFeeDistribution (selected) `0x7c0bf1...c5e237` — deployed 2022-09-19 19:11:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-UWU-v1.0.pdf | StakingRewards | own contract | StakingRewards (selected) `0xe36435...527186` — deployed 2022-09-19 19:13:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-UWU-v1.0.pdf | ChefIncentivesController | own contract | ChefIncentivesController (selected) `0x219531...1cccdb` — deployed 2022-09-19 20:05:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-UWU-v1.0.pdf | Leverager | own contract | Leverager (selected) `0x780dcf...2f32ed` — deployed 2022-10-13 00:59:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-UWU-v1.0.pdf | ReserveLogic | own contract | ReserveLogic (selected) `0x4be759...8fbdd9` — deployed 2022-09-19 19:54:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-UWU-v1.0.pdf | GenericLogic | own contract | GenericLogic (selected) `0xaede01...198b89` — deployed 2022-09-19 19:54:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-UWU-v1.0.pdf | ValidationLogic | own contract | ValidationLogic (selected) `0x3c0ada...8839af` — deployed 2022-09-19 19:55:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-UWU-v1.0.pdf | LendingPool | ambiguous — not counted | LendingPool (alternative) `0x05bfa9...25ea4d` — deployed 2022-09-19 19:55:35+03 — liveness: live (proxy_unit_reachable)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0x2409af...87c668` — deployed 2022-09-19 19:55:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| PeckShield-Audit-Report-UWU-v1.0.pdf | LendingPoolConfigurator | ambiguous — not counted | InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0x408c97...5b005c` — deployed 2022-09-19 19:56:11+03 — liveness: live (code_present_context)<br>LendingPoolConfigurator (alternative) `0x40daf7...835347` — deployed 2022-09-19 19:55:59+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| PeckShield-Audit-Report-UWU-v1.0.pdf | AToken | own proxy deployment | InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0xc4bf70...1ba0fa` — deployed 2022-09-19 20:10:59+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0x243387...31aa70` — deployed 2022-09-19 20:10:23+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0x02738e...560dae` — deployed 2022-09-19 20:09:47+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0xf12931...0b67a6` — deployed 2024-04-16 13:21:11+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0x67fadb...0e13e5` — deployed 2022-09-19 20:09:23+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0x8028ea...ea90a6` — deployed 2022-10-17 14:06:11+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0xe873e3...748fad` — deployed 2023-08-31 18:53:35+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0x6ace5c...d8fc8d` — deployed 2022-09-19 20:09:35+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0x20e61b...564aa4` — deployed 2024-03-11 14:52:47+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0x24959f...233c7d` — deployed 2022-10-11 20:26:47+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0xdb1a8f...a59eba` — deployed 2022-09-19 20:10:35+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0xeb61e5...8a14cc` — deployed 2024-01-23 16:35:35+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0xd1e6b0...3510e2` — deployed 2023-08-15 11:41:47+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0xadfa5f...500086` — deployed 2022-09-19 20:10:11+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0xc480a1...bc12fc` — deployed 2022-09-19 20:09:59+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0xb95bd0...3c7626` — deployed 2022-09-19 20:08:47+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (selected) `0x511447...b7e670` — deployed 2022-12-26 13:25:11+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0x8c240c...8fa93d` — deployed 2022-09-19 20:08:59+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2022-12-26 was 5d from audit; next candidate 75d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-UWU-v1.0.pdf | VariableDebtToken | own proxy deployment | InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0x82a49c...8d2805` — deployed 2023-08-31 18:53:35+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0x1254b1...8e410f` — deployed 2022-09-19 20:08:47+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0x51e0f1...9427d9` — deployed 2022-09-19 20:08:59+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0x39a873...7726b9` — deployed 2022-10-17 14:06:11+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0x5c8cb0...b3f241` — deployed 2022-09-19 20:09:47+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0xbac9d1...488d66` — deployed 2022-09-19 20:09:23+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0xb9e8bc...0affa0` — deployed 2022-09-19 20:10:35+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0x453842...d023d3` — deployed 2023-08-15 11:41:47+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0x13cdfd...11176b` — deployed 2022-09-19 20:10:59+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0x9abe34...bb18ef` — deployed 2022-09-19 20:10:11+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0xaac1d6...8dc160` — deployed 2022-10-11 20:26:47+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0xd5bfd3...47850b` — deployed 2022-09-19 20:09:59+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0x64e484...e4e2d4` — deployed 2022-09-19 20:09:35+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (selected) `0xec12f6...b7b2c1` — deployed 2022-12-26 13:25:11+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0x29d567...03ac3f` — deployed 2022-09-19 20:10:23+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0xd7f6e4...450d11` — deployed 2024-04-16 13:21:11+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2022-12-26 was 5d from audit; next candidate 75d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-UWU-v1.0.pdf | AaveOracle | own contract | AaveOracle (selected) `0xac4a2a...772598` — deployed 2022-09-19 19:57:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-UWU-v1.0.pdf | FallbackOracle | unmatched — not counted | — | Explicitly stated: 'this audit only covers the fallback-oracle/FallbackOracle.sol contract' on page 5. | no |
| PeckShield-Audit-Report-UWU-v1.0.pdf | MultiFeeDistributionV2 | own contract | MultiFeeDistributionV2 (selected) `0x0a7b2a...9b0188` — deployed 2022-12-19 16:38:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-UWU-v1.0.pdf | LendingPoolAddressesProvider | own contract | LendingPoolAddressesProvider (selected) `0x011c0d...f7f1fb` — deployed 2022-09-19 19:52:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xaab1b4...b95645` | ATokensAndRatesHelper | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb9d7dd...3f79c3` | BLUSDToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf939e0...ac1b4e` | crvUSD Stablecoin | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6b1754...271d0f` | Dai | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x03bca3...af7b64` | DefaultReserveInterestRateStrategy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x07b127...001ab7` | DefaultReserveInterestRateStrategy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4cc685...ccd1c2` | DefaultReserveInterestRateStrategy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x690dcb...ff494a` | DefaultReserveInterestRateStrategy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9203a2...cf1a9c` | DefaultReserveInterestRateStrategy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb87872...5543b0` | DefaultReserveInterestRateStrategy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc818d6...7a89c5` | DefaultReserveInterestRateStrategy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xdb5c23...8e9e5a` | IncentivesControllerV2 | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x24911d...79215b` | IncentivesControllerV3 | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x05bfa9...25ea4d` | LendingPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x34a7db...e4a3ec` | LendingPoolAddressesProviderRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2e9f84...fe7ddb` | LendingPoolCollateralManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1c0e90...2c69ae` | LendingPoolConfigurator | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x413a1f...522fe4` | LendingRateOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5f9880...568ba0` | LUSDToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x99d8a9...1e17f3` | MagicInternetMoneyV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x29a906...b184bd` | MultiFeeDistributionV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x83f20f...42beea` | SavingsDai | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8dd098...9697ff` | Sifu | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x593899...ddaab5` | SifuM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x26fa3f...a106a9` | sSpellV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4ca9c6...c42b8c` | sSpellV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xbcdad8...92279a` | StableAndVariableTokensHelper | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9d39a5...7a3497` | StakedUSDeV2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xdac17f...831ec7` | TetherToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x19dd01...e20ce5` | UiPoolDataProviderV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x55c08c...765257` | UwU | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd533a9...34cd52` | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x793533...c6addd` | WalletBalanceProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2260fa...c2c599` | WBTC | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc02aaa...756cc2` | WETH9 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2fd22a...4d7d2f` | WETHGateway | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9b06f3...c68a76` | Wonderland | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 95 |
| upstream | 7 |
| standard_library | 0 |
| needs_review | 50 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 12 own (2 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 2 ambiguous, 1 unmatched
- Matched-own operational status: 12 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: temporal_name=2, unique_name=10

Fork inheritance lineage and inherited audits are included when available.
