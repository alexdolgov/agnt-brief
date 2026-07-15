# Agentic Audit Brief: Dolomite

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 2 audit(s)
- Eligible audit results: 10 (2 matched; 8 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Dolomite (`dolomite`)
- Website: [https://dolomite.io](https://dolomite.io)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, berachain, ethereum, ink, mantle, polygon-zkevm, x-layer
- Contract surface: 421 unique implementations (910 raw deployments)
- Coverage basis: 1/132 confirmed own live verified implementations (0.8%); conservative 0.8% with 0 needs-review implementation(s)
- DeFi Llama TVL: $751,365,859.50
- On-chain TVL (included contracts): $7,000,963.71
- TVL by chain: Arbitrum $7,000,963.71

## Project Description

This brief describes the observed EVM deployment and audit surface for Dolomite. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 164 contract row(s) across arbitrum, base, berachain, ethereum, ink, mantle, polygon-zkevm, x-layer. Structural roles: 96 supporting, 52 core, 16 unclassified. 57 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 164
- Structural roles: supporting (96), core (52), unclassified (16)
- Contract kinds: contract (164)
- Detected standards: erc1967proxy (34), accesscontrol (10), erc165 (10), ownable (7), erc20 (4)
- Frameworks: openzeppelin (124)
- Upgradeable-pattern rows: 57

## Fork Analysis

4 of 242 contracts are derived from known codebases. 238 contracts have no detected origin.

### Forked Contracts

**DolomiteMargin** (`0x003ca2...c2b97d`, chain 1)
Origin: reservoir-protocol (`0x003ca2...c2b97d`)
Containment: 100.0% - 81 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**DolomiteMargin** (`0xe6ef4f...917de8`, chain 5000)
Origin: reservoir-protocol (`0x003ca2...c2b97d`)
Containment: 100.0% - 81 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**DolomiteMargin** (`0x6bd780...409072`, chain 42161)
Origin: reservoir-protocol (`0x003ca2...c2b97d`)
Containment: 65.4% - 52 functions inherited
Centroid audit status: pending_validation

Additions (unaudited):
- getAccountParNoMarketCheck(Account.Info,uint256)
- getMarketIsRecyclable(uint256)
- getRecyclableMarkets(uint256)
- getRiskParams()
- ownerAddMarket(address,IPriceOracle,IInterestSetter,Decimal.D256,Decimal.D256,uint256,bool,bool)
- ownerRemoveMarkets(uint256[],address)
- ownerSetMaxWei(uint256,uint256)
- ownerSetSpreadPremium(uint256,Decimal.D256)

Removals (removed from original):
- getAccountRiskOverrideByAccount(Account.Info)
- getAccountRiskOverrideSetterByAccountOwner(address)
- getCallbackGasLimit()
- getDefaultAccountRiskOverrideSetter()
- getIsBorrowAllowed()
- getIsLiquidationAllowed()
- getLiquidationSpreadForAccountAndPair(Account.Info,uint256,uint256)
- getLiquidationSpreadOverrideByAccount(Account.Info)
- getMarginRatioForAccount(Account.Info)
- getMarginRatioOverrideByAccount(Account.Info)
- getMarketBorrowInterestRateApr(uint256)
- getMarketBorrowInterestRatePerSecond(uint256)
- getMarketEarningsRateOverride(uint256)
- getMarketLiquidationSpreadPremium(uint256)
- getMarketMaxBorrowWei(uint256)
- getMarketMaxSupplyWei(uint256)
- getMarketSupplyInterestRateApr(uint256)
- getMarketTotalWei(uint256)
- getOracleSentinel()
- isOwner()
- ownerAddMarket(address,IPriceOracle,IInterestSetter,Decimal.D256,Decimal.D256,uint256,uint256,Decimal.D256,bool)
- ownerSetAccountRiskOverride(address,IAccountRiskOverrideSetter)
- ownerSetCallbackGasLimit(uint256)
- ownerSetDefaultAccountRiskOverride(IAccountRiskOverrideSetter)
- ownerSetEarningsRateOverride(uint256,Decimal.D256)
- ownerSetLiquidationSpreadPremium(uint256,Decimal.D256)
- ownerSetMaxBorrowWei(uint256,uint256)
- ownerSetMaxSupplyWei(uint256,uint256)
- ownerSetOracleSentinel(IOracleSentinel)

**DolomiteMargin** (`0x003ca2...c2b97d`, chain 80094)
Origin: reservoir-protocol (`0x003ca2...c2b97d`)
Containment: 100.0% - 81 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x7b61cb...72bc6b`, chain 196)
- UnnamedContract (`0x836b55...34e4e5`, chain 196)
- UnnamedContract (`0xf579b3...133d0f`, chain 196)
- UnnamedContract (`0xf8b2c6...3d2dff`, chain 196)
- UnnamedContract (`0x3f0269...504923`, chain 1101)
- UnnamedContract (`0x6b15c3...8403a2`, chain 1101)
- UnnamedContract (`0xe4d345...3250b9`, chain 1101)
- UnnamedContract (`0xfed1f9...e259a4`, chain 1101)
- UnnamedContract (`0x52d7bc...fd05f9`, chain 5000)
- UnnamedContract (`0x9101dd...ddd6b5`, chain 5000)
- UnnamedContract (`0x003ca2...c2b97d`, chain 8453)
- UnnamedContract (`0x0f38bf...fe09fd`, chain 8453)
- UnnamedContract (`0x145637...0f90b2`, chain 8453)
- UnnamedContract (`0x52d7bc...fd05f9`, chain 8453)
- UnnamedContract (`0xd6a31b...1187e6`, chain 8453)
- UnnamedContract (`0x1506f8...72b99a`, chain 42161)
- UnnamedContract (`0x52d7bc...fd05f9`, chain 42161)
- UnnamedContract (`0x7b61cb...72bc6b`, chain 42161)
- UnnamedContract (`0x8fa6d7...208451`, chain 42161)
- UnnamedContract (`0xb3f81b...81d0c3`, chain 42161)
- UnnamedContract (`0x0f38bf...fe09fd`, chain 80094)
- UnnamedContract (`0x1506f8...72b99a`, chain 80094)
- UnnamedContract (`0x2adeaf...c5487b`, chain 80094)
- UnnamedContract (`0x52d7bc...fd05f9`, chain 80094)
- AlwaysZeroInterestSetter (`0x9ecbbc...d28ca2`, chain 1)
- AlwaysZeroInterestSetter (`0x9ecbbc...d28ca2`, chain 8453)
- AlwaysZeroInterestSetter (`0x37b6ff...de2168`, chain 42161)
- AlwaysZeroInterestSetter (`0x9ecbbc...d28ca2`, chain 80094)
- ArbitrumMultiCall (`0xb18b8b...03fb1f`, chain 42161)
- BorrowPositionProxy (`0xe43638...f5a099`, chain 42161)
- BorrowPositionProxyV1 (`0x67567f...c30ba6`, chain 1)
- BorrowPositionProxyV1 (`0x97a086...64b733`, chain 5000)
- BorrowPositionProxyV1 (`0x67567f...c30ba6`, chain 8453)
- BorrowPositionProxyV1 (`0x67567f...c30ba6`, chain 80094)
- BorrowPositionProxyV2 (`0xc06271...2b10bd`, chain 1)
- BorrowPositionProxyV2 (`0xc06271...2b10bd`, chain 8453)
- BorrowPositionProxyV2 (`0x38e49a...4bf3a7`, chain 42161)
- BorrowPositionProxyV2 (`0xc06271...2b10bd`, chain 80094)
- ChainlinkPriceOracleV3 (`0x465e51...7ae191`, chain 1)
- ChainlinkPriceOracleV3 (`0x465e51...7ae191`, chain 8453)
- ChainlinkPriceOracleV3 (`0x465e51...7ae191`, chain 80094)
- ChaosLabsPriceOracleV3 (`0xb02808...7db34e`, chain 42161)
- ChroniclePriceOracleV3 (`0xb6b3ea...af4359`, chain 1)
- ChroniclePriceOracleV3 (`0xe4d345...3250b9`, chain 5000)
- ChroniclePriceOracleV3 (`0xb6b3ea...af4359`, chain 8453)
- ChroniclePriceOracleV3 (`0x8990a4...ed4eeb`, chain 42161)
- ChroniclePriceOracleV3 (`0xb6b3ea...af4359`, chain 80094)
- CREATE3Factory (`0xa8f7e7...7599f7`, chain 1)
- CREATE3Factory (`0xa8f7e7...7599f7`, chain 5000)
- CREATE3Factory (`0xa8f7e7...7599f7`, chain 8453)
- CREATE3Factory (`0xa8f7e7...7599f7`, chain 42161)
- CREATE3Factory (`0xa8f7e7...7599f7`, chain 80094)
- DepositWithdrawalProxy (`0xd6a31b...1187e6`, chain 1)
- DepositWithdrawalProxy (`0x17c57c...23f13d`, chain 42161)
- DepositWithdrawalProxy (`0xadb9d6...7b9594`, chain 42161)
- DepositWithdrawalProxy (`0xd6a31b...1187e6`, chain 80094)
- DOLO (`0x0f8100...39a654`, chain 80094)
- DolomiteMigrator (`0x9e97d8...e7a0d3`, chain 1)
- DolomiteMigrator (`0x9e97d8...e7a0d3`, chain 8453)
- DolomiteMigrator (`0x9e97d8...e7a0d3`, chain 80094)
- DolomiteOwner (`0xcf359a...7bb11d`, chain 5000)
- DolomiteOwner (`0xcf359a...7bb11d`, chain 8453)
- DolomiteOwner (`0xcf359a...7bb11d`, chain 42161)
- DolomiteOwnerV1 (`0xcf359a...7bb11d`, chain 1)
- DolomiteOwnerV1 (`0xcf359a...7bb11d`, chain 80094)
- DolomiteOwnerV2 (`0xc2b66e...53de06`, chain 1)
- DolomiteOwnerV2 (`0xc2b66e...53de06`, chain 5000)
- DolomiteOwnerV2 (`0xc2b66e...53de06`, chain 8453)
- DolomiteOwnerV2 (`0xc2b66e...53de06`, chain 42161)
- DolomiteOwnerV2 (`0xc2b66e...53de06`, chain 80094)
- DOLOWithOwnable (`0x0f8100...39a654`, chain 1)
- DOLOWithOwnable (`0x0f8100...39a654`, chain 42161)
- Expiry (`0x2ae007...1d8d5d`, chain 1)
- Expiry (`0x2ae007...1d8d5d`, chain 8453)
- Expiry (`0xdec1ae...973bea`, chain 42161)
- Expiry (`0x2ae007...1d8d5d`, chain 80094)
- ExpiryProxy (`0x1b39f7...67e7bc`, chain 1)
- ExpiryProxy (`0x1b39f7...67e7bc`, chain 8453)
- ExpiryProxy (`0x40899e...730b00`, chain 42161)
- ExpiryProxy (`0x1b39f7...67e7bc`, chain 80094)
- GenericTraderProxyV1 (`0xb50bcd...fb928d`, chain 1)
- GenericTraderProxyV1 (`0xb50bcd...fb928d`, chain 8453)
- GenericTraderProxyV1 (`0xb50bcd...fb928d`, chain 80094)
- GnosisSafeProxy (`0xa75c21...55a1d4`, chain 1)
- GnosisSafeProxy (`0xa75c21...55a1d4`, chain 5000)
- GnosisSafeProxy (`0xa75c21...55a1d4`, chain 8453)
- GnosisSafeProxy (`0xa75c21...55a1d4`, chain 42161)
- GnosisSafeProxy (`0xa75c21...55a1d4`, chain 80094)
- IsolationModeFreezableLiquidatorProxy (`0x8d178f...5c8870`, chain 1)
- IsolationModeFreezableLiquidatorProxy (`0x8d178f...5c8870`, chain 8453)
- IsolationModeFreezableLiquidatorProxy (`0x76ac55...a33e44`, chain 42161)
- IsolationModeFreezableLiquidatorProxy (`0x8d178f...5c8870`, chain 80094)
- LiquidatorAssetRegistry (`0xd82100...c56cfa`, chain 1)
- LiquidatorAssetRegistry (`0xd82100...c56cfa`, chain 8453)
- LiquidatorAssetRegistry (`0x10d987...f44fac`, chain 42161)
- LiquidatorAssetRegistry (`0xd82100...c56cfa`, chain 80094)
- LiquidatorProxyV1 (`0xdb168c...bf99d3`, chain 1)
- LiquidatorProxyV1 (`0xdb168c...bf99d3`, chain 8453)
- LiquidatorProxyV1 (`0x8c6e33...fa715a`, chain 42161)
- LiquidatorProxyV1 (`0xdb168c...bf99d3`, chain 80094)
- LiquidatorProxyV4WithGenericTrader (`0x2adeaf...c5487b`, chain 1)
- LiquidatorProxyV4WithGenericTrader (`0x22dd9f...084fc7`, chain 5000)
- LiquidatorProxyV4WithGenericTrader (`0x2adeaf...c5487b`, chain 8453)
- LiquidatorProxyV5 (`0x1506f8...72b99a`, chain 5000)
- LiquidatorProxyV5 (`0x1506f8...72b99a`, chain 8453)
- MultiCall (`0x58142b...617d2a`, chain 1)
- MultiCall (`0x6978ff...1bebc5`, chain 5000)
- MultiCall (`0x58142b...617d2a`, chain 8453)
- MultiCall (`0x58142b...617d2a`, chain 80094)
- ODOLO (`0x02e513...c89543`, chain 80094)
- OdosAggregatorTrader (`0x2cdbb2...e67f3c`, chain 42161)
- OracleAggregatorV2 (`0xa150ef...1d636e`, chain 1)
- OracleAggregatorV2 (`0xa150ef...1d636e`, chain 8453)
- OracleAggregatorV2 (`0xbfca44...d06ca0`, chain 42161)
- OracleAggregatorV2 (`0xa150ef...1d636e`, chain 80094)
- ParaswapAggregatorTraderV2 (`0xd991d9...92383a`, chain 42161)
- PartiallyDelayedMultiSig (`0x52d7bc...fd05f9`, chain 1)
- RedstonePriceOracleV3 (`0xe09f85...4cdd45`, chain 1)
- RedstonePriceOracleV3 (`0xe09f85...4cdd45`, chain 8453)
- RedstonePriceOracleV3 (`0x5fbae9...be01d2`, chain 42161)
- RedstonePriceOracleV3 (`0xe09f85...4cdd45`, chain 80094)
- RegistryProxy (`0x0f38bf...fe09fd`, chain 1)
- RegistryProxy (`0x6d4013...232486`, chain 1)
- RegistryProxy (`0xfee366...24daae`, chain 1)
- RegistryProxy (`0xc90e5d...b95787`, chain 5000)
- RegistryProxy (`0x6d4013...232486`, chain 8453)
- RegistryProxy (`0xfee366...24daae`, chain 8453)
- RegistryProxy (`0x2a059d...8c2404`, chain 42161)
- RegistryProxy (`0x4bff12...18cc2f`, chain 42161)
- RegistryProxy (`0xc777fb...d59c63`, chain 42161)
- RegistryProxy (`0x6d4013...232486`, chain 80094)
- RegistryProxy (`0x79e6e9...a8a026`, chain 80094)
- RegistryProxy (`0xfee366...24daae`, chain 80094)
- RewardsDistributor (`0x66cd7d...73db67`, chain 42161)
- RouterProxy (`0x7b61cb...72bc6b`, chain 1)
- RouterProxy (`0xf579b3...133d0f`, chain 1)
- RouterProxy (`0xf8b2c6...3d2dff`, chain 1)
- RouterProxy (`0x7b61cb...72bc6b`, chain 5000)
- RouterProxy (`0xf579b3...133d0f`, chain 5000)
- RouterProxy (`0xf8b2c6...3d2dff`, chain 5000)
- RouterProxy (`0x7b61cb...72bc6b`, chain 8453)
- RouterProxy (`0xf579b3...133d0f`, chain 8453)
- RouterProxy (`0xf8b2c6...3d2dff`, chain 8453)
- RouterProxy (`0xf579b3...133d0f`, chain 42161)
- RouterProxy (`0xf8b2c6...3d2dff`, chain 42161)
- RouterProxy (`0x7b61cb...72bc6b`, chain 80094)
- RouterProxy (`0xf579b3...133d0f`, chain 80094)
- RouterProxy (`0xf8b2c6...3d2dff`, chain 80094)
- TransferProxy (`0x07c28e...2624f8`, chain 1)
- TransferProxy (`0x958237...9af66c`, chain 5000)
- TransferProxy (`0x07c28e...2624f8`, chain 8453)
- TransferProxy (`0x86cfc6...92470d`, chain 42161)
- TransferProxy (`0xe04f88...b1df5a`, chain 42161)
- TransferProxy (`0x07c28e...2624f8`, chain 80094)
- UnnamedContract (`0x02942c...4522cc`, chain 1101)
- UnnamedContract (`0x08e866...22fe96`, chain 1101)
- UnnamedContract (`0x11a7e2...cb6bde`, chain 1101)
- UnnamedContract (`0x14b83b...431c63`, chain 1101)
- UnnamedContract (`0x1506f8...72b99a`, chain 1101)
- UnnamedContract (`0x17c57c...23f13d`, chain 1101)
- UnnamedContract (`0x227455...812141`, chain 1101)
- UnnamedContract (`0x277118...382d7e`, chain 1101)
- UnnamedContract (`0x2e9be8...36cec4`, chain 1101)
- UnnamedContract (`0x4232fc...ab708a`, chain 1101)
- UnnamedContract (`0x4723da...8f812d`, chain 1101)
- UnnamedContract (`0x52d7bc...fd05f9`, chain 1101)
- UnnamedContract (`0x64f7a2...39a249`, chain 1101)
- UnnamedContract (`0x660bd8...d88255`, chain 1101)
- UnnamedContract (`0x694f7b...f5c8b4`, chain 1101)
- UnnamedContract (`0x6b68bd...2fe3ce`, chain 1101)
- UnnamedContract (`0x6d35bf...1b0a57`, chain 1101)
- UnnamedContract (`0x7b61cb...72bc6b`, chain 1101)
- UnnamedContract (`0x836b55...34e4e5`, chain 1101)
- UnnamedContract (`0x86cfc6...92470d`, chain 1101)
- UnnamedContract (`0x88a6d8...745866`, chain 1101)
- UnnamedContract (`0xa5f4ce...76e2e9`, chain 1101)
- UnnamedContract (`0xa75c21...55a1d4`, chain 1101)
- UnnamedContract (`0xa8f7e7...7599f7`, chain 1101)
- UnnamedContract (`0xb3f81b...81d0c3`, chain 1101)
- UnnamedContract (`0xb3ff98...664e77`, chain 1101)
- UnnamedContract (`0xb4f0eb...c4147d`, chain 1101)
- UnnamedContract (`0xb6b3ea...af4359`, chain 1101)
- UnnamedContract (`0xbf3179...586075`, chain 1101)
- UnnamedContract (`0xc28a4e...4f5faa`, chain 1101)
- UnnamedContract (`0xc2b66e...53de06`, chain 1101)
- UnnamedContract (`0xc90e5d...b95787`, chain 1101)
- UnnamedContract (`0xcb1b98...2af30d`, chain 1101)
- UnnamedContract (`0xcf359a...7bb11d`, chain 1101)
- UnnamedContract (`0xd44807...5036f3`, chain 1101)
- UnnamedContract (`0xd55afc...84d33e`, chain 1101)
- UnnamedContract (`0xdc94f0...9355fd`, chain 1101)
- UnnamedContract (`0xdfb6ba...87b1e8`, chain 1101)
- UnnamedContract (`0xe09f85...4cdd45`, chain 1101)
- UnnamedContract (`0xf0c0db...53f781`, chain 1101)
- UnnamedContract (`0xf579b3...133d0f`, chain 1101)
- UnnamedContract (`0xf8b2c6...3d2dff`, chain 1101)
- UnnamedContract (`0x003ca2...c2b97d`, chain 57073)
- UnnamedContract (`0x07c28e...2624f8`, chain 57073)
- UnnamedContract (`0x0f38bf...fe09fd`, chain 57073)
- UnnamedContract (`0x1506f8...72b99a`, chain 57073)
- UnnamedContract (`0x1b39f7...67e7bc`, chain 57073)
- UnnamedContract (`0x2adeaf...c5487b`, chain 57073)
- UnnamedContract (`0x2ae007...1d8d5d`, chain 57073)
- UnnamedContract (`0x465e51...7ae191`, chain 57073)
- UnnamedContract (`0x52d7bc...fd05f9`, chain 57073)
- UnnamedContract (`0x58142b...617d2a`, chain 57073)
- UnnamedContract (`0x67567f...c30ba6`, chain 57073)
- UnnamedContract (`0x6d4013...232486`, chain 57073)
- UnnamedContract (`0x7b61cb...72bc6b`, chain 57073)
- UnnamedContract (`0x8d178f...5c8870`, chain 57073)
- UnnamedContract (`0x9e97d8...e7a0d3`, chain 57073)
- UnnamedContract (`0x9ecbbc...d28ca2`, chain 57073)
- UnnamedContract (`0xa150ef...1d636e`, chain 57073)
- UnnamedContract (`0xa75c21...55a1d4`, chain 57073)
- UnnamedContract (`0xa8f7e7...7599f7`, chain 57073)
- UnnamedContract (`0xb50bcd...fb928d`, chain 57073)
- UnnamedContract (`0xb6b3ea...af4359`, chain 57073)
- UnnamedContract (`0xc06271...2b10bd`, chain 57073)
- UnnamedContract (`0xc2b66e...53de06`, chain 57073)
- UnnamedContract (`0xcf359a...7bb11d`, chain 57073)
- UnnamedContract (`0xd6a31b...1187e6`, chain 57073)
- UnnamedContract (`0xd82100...c56cfa`, chain 57073)
- UnnamedContract (`0xdb168c...bf99d3`, chain 57073)
- UnnamedContract (`0xe09f85...4cdd45`, chain 57073)
- UnnamedContract (`0xf579b3...133d0f`, chain 57073)
- UnnamedContract (`0xf8b2c6...3d2dff`, chain 57073)
- UnnamedContract (`0xfee366...24daae`, chain 57073)
- UpgradeableProxy (`0x3a025c...c06c07`, chain 80094)
- UpgradeableProxy (`0x3e9b9a...2d2cec`, chain 80094)
- UpgradeableProxy (`0x7efd08...061176`, chain 80094)
- UpgradeableProxy (`0xa3f079...838bc9`, chain 80094)
- UpgradeableProxy (`0xbd225c...f20f7b`, chain 80094)
- UpgradeableProxy (`0xcb86b7...e141d4`, chain 80094)
- UpgradeableProxy (`0xd88f47...9b99ef`, chain 80094)
- VeArt (`0x54267e...68a6f0`, chain 80094)
- VeFeeCalculator (`0xa7b2c7...917ce9`, chain 80094)
- VesterExploder (`0x2c9052...62cb62`, chain 42161)
- VesterProxy (`0x531bc6...b63797`, chain 42161)

## Contract Surface Quality

- Logic-topography rows: 164; live-surface rows included: 164 (164 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 260/294 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/132 (0.8%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 229 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 192 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 87
- Confirmed-live implementations: 229 of 421 unique; 192 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/288
- Verified + Unaudited implementations: 287
- Verified by bytecode match: 0
- Unverified implementations: 133
- Unique implementations: 421
- Raw deployments: 910
- Audits discovered: 10 (10 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-04 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 7 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: 0.8% (Cyfrin)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Cyfrin | Tier 1 | 1 | 0.3% | 2025-04 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CallImpl | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236959 | `0x6727fe...73cfdc` | ✅ Audited |

### ⚠️ Verified + Unaudited (287)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| DolomiteERC20 | token | non_address_book | non_address_book_inventory (excluded) | 2 | arbitrum | n/a | 2 deployments: arbitrum `0x0a52bc...61d995`; arbitrum `0x6dbd96...8228d6` | ⚠️ Unaudited |
| AccountValuesReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa61cb0...cbb68e` | ⚠️ Unaudited |
| AdminImpl | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 6 deployments: mantle `0x18fa03...b0a6e1`; arbitrum `0x23cc48...3c5fb6`; arbitrum `0x2a50ef...1d3431`; arbitrum `0x6b15c3...8403a2`; arbitrum `0x93fbbd...69a6ed`; arbitrum `0xb04ccb...17cfc9` | ⚠️ Unaudited |
| AlwaysOnlineOracleSentinel | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x2ce1af...b30304` | ⚠️ Unaudited |
| AlwaysZeroInterestSetter | unknown | project_anchor | own_supporting | 0 | mantle | unit-236988 | 4 deployments: ethereum `0x9ecbbc...d28ca2`; mantle `0x3f0269...504923`; base `0x9ecbbc...d28ca2`; berachain `0x9ecbbc...d28ca2` | ⚠️ Unaudited |
| AlwaysZeroInterestSetter | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236952 | `0x37b6ff...de2168` | ⚠️ Unaudited |
| ARBIsolationModeTokenVaultV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 8 deployments: arbitrum `0x0c5b39...235c0b`; arbitrum `0x1897f8...2f21fa`; arbitrum `0x3ddc2a...aa9146`; arbitrum `0x44122d...48b99e`; arbitrum `0x48431f...366a70`; arbitrum `0x66a0fd...187dd3`; arbitrum `0xe2d45b...abf4e7`; arbitrum `0xe3cd64...2c0cd4` | ⚠️ Unaudited |
| ARBIsolationModeVaultFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1d9e10...68e3c3` | ⚠️ Unaudited |
| ArbitrumMultiCall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 8 deployments: arbitrum `0x39c942...04bd08`; arbitrum `0x4e4d9a...82b9f5`; arbitrum `0xa60686...5ba181`; arbitrum `0xa7dc4c...08a71f`; arbitrum `0xa8f329...d37224`; arbitrum `0xd432c3...d2edab`; arbitrum `0xd86233...7269bf`; arbitrum `0xf20b95...aee9f7` | ⚠️ Unaudited |
| ArbitrumMultiCall | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236971 | `0xb18b8b...03fb1f` | ⚠️ Unaudited |
| ARBRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x6b14fe...117341`; arbitrum `0xa7ecd2...303515` | ⚠️ Unaudited |
| AsyncIsolationModeUnwrapperTraderImpl | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 8 deployments: mantle `0x079322...30accd`; mantle `0x5231c3...8da12d`; mantle `0x86cfc6...92470d`; arbitrum `0x622d6b...521985`; arbitrum `0x7078f9...198426`; arbitrum `0xa880ad...9e24dc`; arbitrum `0xd15ff3...d1f31e`; arbitrum `0xdb0038...a445a7` | ⚠️ Unaudited |
| AsyncIsolationModeWrapperTraderImpl | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: mantle `0x828f34...542811`; arbitrum `0x51fbd4...07f2ec`; arbitrum `0xca1e8e...0016d4`; arbitrum `0xfb5ce5...5fffe7` | ⚠️ Unaudited |
| BorrowPositionProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x144dcf...a82511` | ⚠️ Unaudited |
| BorrowPositionProxy | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-236982 | `0xe43638...f5a099` | ⚠️ Unaudited |
| BorrowPositionProxyV1 | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-236848 | `0x67567f...c30ba6` | ⚠️ Unaudited |
| BorrowPositionProxyV1 | core_logic | project_anchor | own_supporting | 0 | mantle | unit-236999 | `0x97a086...64b733` | ⚠️ Unaudited |
| BorrowPositionProxyV1 | core_logic | project_anchor | own_supporting | 0 | base | unit-237080 | 2 deployments: base `0x67567f...c30ba6`; berachain `0x67567f...c30ba6` | ⚠️ Unaudited |
| BorrowPositionProxyV2 | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-236856 | `0xc06271...2b10bd` | ⚠️ Unaudited |
| BorrowPositionProxyV2 | core_logic | project_anchor | own_supporting | 0 | mantle | unit-237006 | `0xe99a7e...9dd793` | ⚠️ Unaudited |
| BorrowPositionProxyV2 | core_logic | project_anchor | own_supporting | 0 | base | unit-237088 | 2 deployments: base `0xc06271...2b10bd`; berachain `0xc06271...2b10bd` | ⚠️ Unaudited |
| BorrowPositionProxyV2 | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-236953 | `0x38e49a...4bf3a7` | ⚠️ Unaudited |
| BorrowPositionProxyV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x9a7c4f...4cd29f`; arbitrum `0xb2b5d8...b6f3ec` | ⚠️ Unaudited |
| BorrowPositionRouter | adapter | project_anchor | own_supporting | 1 | ethereum | unit-237098 | `0xf579b3...133d0f` | ⚠️ Unaudited |
| BorrowPositionRouter | adapter | project_anchor | own_supporting | 1 | base | unit-237131 | `0xf579b3...133d0f` | ⚠️ Unaudited |
| BorrowPositionRouter | adapter | project_anchor | own_supporting | 1 | arbitrum | unit-237105 | `0xf579b3...133d0f` | ⚠️ Unaudited |
| BorrowPositionRouter | adapter | project_anchor | own_supporting | 1 | berachain | unit-237122 | `0xf579b3...133d0f` | ⚠️ Unaudited |
| CallImpl | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 4 deployments: mantle `0x894ec1...022f4e`; arbitrum `0x94bab7...b1ca06`; arbitrum `0xcda182...464419`; arbitrum `0xfce308...2956c4` | ⚠️ Unaudited |
| ChainlinkPriceOracleV3 | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-236845 | `0x465e51...7ae191` | ⚠️ Unaudited |
| ChainlinkPriceOracleV3 | operational_periphery | project_anchor | own_supporting | 0 | base | unit-237077 | 2 deployments: base `0x465e51...7ae191`; berachain `0x465e51...7ae191` | ⚠️ Unaudited |
| ChaosLabsPriceOracleV3 | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-236970 | `0xb02808...7db34e` | ⚠️ Unaudited |
| ChroniclePriceOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x43c2fd...4ab4ae` | ⚠️ Unaudited |
| ChroniclePriceOracleV3 | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-236855 | `0xb6b3ea...af4359` | ⚠️ Unaudited |
| ChroniclePriceOracleV3 | operational_periphery | project_anchor | own_supporting | 0 | mantle | unit-237004 | `0xe4d345...3250b9` | ⚠️ Unaudited |
| ChroniclePriceOracleV3 | operational_periphery | project_anchor | own_supporting | 0 | base | unit-237087 | 2 deployments: base `0xb6b3ea...af4359`; berachain `0xb6b3ea...af4359` | ⚠️ Unaudited |
| ChroniclePriceOracleV3 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236964 | `0x8990a4...ed4eeb` | ⚠️ Unaudited |
| CREATE3Factory | registry | project_anchor | own_supporting | 0 | ethereum | unit-236853 | 5 deployments: ethereum `0xa8f7e7...7599f7`; mantle `0xa8f7e7...7599f7`; base `0xa8f7e7...7599f7`; arbitrum `0xa8f7e7...7599f7`; berachain `0xa8f7e7...7599f7` | ⚠️ Unaudited |
| DepositImpl | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 7 deployments: mantle `0x23cc48...3c5fb6`; arbitrum `0x22dd9f...084fc7`; arbitrum `0x58067f...29caf5`; arbitrum `0x5b12e4...f264fb`; arbitrum `0x631faf...060f60`; arbitrum `0xc4d82e...ad76e1`; arbitrum `0xf884b5...803a33` | ⚠️ Unaudited |
| DepositWithdrawalProxy | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-236859 | `0xd6a31b...1187e6` | ⚠️ Unaudited |
| DepositWithdrawalProxy | operational_periphery | project_anchor | own_supporting | 0 | mantle | unit-236985 | `0x1a3752...facca5` | ⚠️ Unaudited |
| DepositWithdrawalProxy | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236948 | `0x17c57c...23f13d` | ⚠️ Unaudited |
| DepositWithdrawalProxy | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x9fa142...61ca8f`; arbitrum `0xa526b7...2737c4`; arbitrum `0xe355df...15aeea` | ⚠️ Unaudited |
| DepositWithdrawalProxy | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-236969 | `0xadb9d6...7b9594` | ⚠️ Unaudited |
| DepositWithdrawalProxy | operational_periphery | project_anchor | own_supporting | 0 | berachain | unit-237065 | `0xd6a31b...1187e6` | ⚠️ Unaudited |
| DepositWithdrawalRouter | operational_periphery | project_anchor | own_supporting | 1 | ethereum | unit-237095 | `0xf8b2c6...3d2dff` | ⚠️ Unaudited |
| DepositWithdrawalRouter | operational_periphery | project_anchor | own_supporting | 1 | mantle | unit-237108 | `0xf8b2c6...3d2dff` | ⚠️ Unaudited |
| DepositWithdrawalRouter | operational_periphery | project_anchor | own_supporting | 1 | base | unit-237127 | `0xf8b2c6...3d2dff` | ⚠️ Unaudited |
| DepositWithdrawalRouter | operational_periphery | project_anchor | own_supporting | 1 | arbitrum | unit-237101 | `0xf8b2c6...3d2dff` | ⚠️ Unaudited |
| DepositWithdrawalRouter | operational_periphery | project_anchor | own_supporting | 1 | berachain | unit-237113 | `0xf8b2c6...3d2dff` | ⚠️ Unaudited |
| DOLO | unknown | project_anchor | own_supporting | 0 | berachain | unit-237044 | `0x0f8100...39a654` | ⚠️ Unaudited |
| DolomiteAccountRegistry | registry | project_anchor | own_supporting | 1 | mantle | unit-237111 | `0xc90e5d...b95787` | ⚠️ Unaudited |
| DolomiteAccountRegistry | registry | project_anchor | own_supporting | 1 | base | unit-237130 | `0xfee366...24daae` | ⚠️ Unaudited |
| DolomiteAccountRegistry | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-237104 | `0xc777fb...d59c63` | ⚠️ Unaudited |
| DolomiteAccountRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: mantle `0xee34b4...0b22e6`; arbitrum `0xdeaacc...4b690b` | ⚠️ Unaudited |
| DolomiteAccountRegistry | registry | project_anchor | own_supporting | 1 | berachain | unit-237121 | `0xfee366...24daae` | ⚠️ Unaudited |
| DolomiteAmmFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: arbitrum `0x38ff2f...a07a7e`; arbitrum `0x79c666...de1394`; arbitrum `0xd55afc...84d33e`; arbitrum `0xd99c21...30c1ef`; arbitrum `0xf1ad8a...921615` | ⚠️ Unaudited |
| DolomiteAmmRouterProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 7 deployments: arbitrum `0x03809a...8c44f0`; arbitrum `0x9d66b4...5cf77f`; arbitrum `0xa09b4a...2d5a08`; arbitrum `0xc28a4e...4f5faa`; arbitrum `0xc47e01...76f4bd`; arbitrum `0xd8f9c5...cbb632`; arbitrum `0xe6ef4f...917de8` | ⚠️ Unaudited |
| DolomiteCompatibleWhitelistForPlutusDAO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x4f8b6e...362c20`; arbitrum `0xd873e5...cca7ec` | ⚠️ Unaudited |
| DolomiteERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x5a1166...ac57a1`; arbitrum `0xfa7e3c...524b1c` | ⚠️ Unaudited |
| DolomiteERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x709881...5ca585`; arbitrum `0xb67534...010e4c` | ⚠️ Unaudited |
| DolomiteERC20WithPayable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x1c68e7...afe64f` | ⚠️ Unaudited |
| DolomiteERC20WithPayable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x517e81...460130`; arbitrum `0xbe2b54...de8046` | ⚠️ Unaudited |
| DolomiteERC4626 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xce29b2...d781a0` | ⚠️ Unaudited |
| DolomiteERC4626 | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | arbitrum | n/a | 4 deployments: arbitrum `0x00173d...5eb6b8`; arbitrum `0x25e504...a1e434`; arbitrum `0x5138b4...7304af`; arbitrum `0x73c47e...98dd54` | ⚠️ Unaudited |
| DolomiteERC4626WithPayable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x0a21d2...9083db` | ⚠️ Unaudited |
| DolomiteERC4626WithPayable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0xa8f462...1bda20`; arbitrum `0xe37b8e...f20667` | ⚠️ Unaudited |
| DolomiteMargin | unknown | project_anchor | own_supporting | 0 | ethereum | unit-236839 | `0x003ca2...c2b97d` | ⚠️ Unaudited |
| DolomiteMargin | unknown | project_anchor | own_supporting | 0 | mantle | unit-237005 | `0xe6ef4f...917de8` | ⚠️ Unaudited |
| DolomiteMargin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: arbitrum `0x6a7698...8617af`; arbitrum `0x9f7779...02e876`; arbitrum `0xb7576f...699e7e`; arbitrum `0xe44cef...df8601` | ⚠️ Unaudited |
| DolomiteMargin | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236960 | `0x6bd780...409072` | ⚠️ Unaudited |
| DolomiteMargin | unknown | project_anchor | own_supporting | 0 | berachain | unit-237040 | `0x003ca2...c2b97d` | ⚠️ Unaudited |
| DolomiteMigrator | periphery | project_anchor | own_supporting | 0 | ethereum | unit-236850 | `0x9e97d8...e7a0d3` | ⚠️ Unaudited |
| DolomiteMigrator | periphery | project_anchor | own_supporting | 0 | mantle | unit-236989 | `0x481ef8...843cbd` | ⚠️ Unaudited |
| DolomiteMigrator | periphery | project_anchor | own_supporting | 0 | base | unit-237082 | 2 deployments: base `0x9e97d8...e7a0d3`; berachain `0x9e97d8...e7a0d3` | ⚠️ Unaudited |
| DolomiteMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x32c327...d0f990` | ⚠️ Unaudited |
| DolomiteMigrator | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236977 | `0xd5545e...f5afc9` | ⚠️ Unaudited |
| DolomiteOwner | unknown | project_anchor | own_supporting | 0 | mantle | unit-237002 | 3 deployments: mantle `0xcf359a...7bb11d`; base `0xcf359a...7bb11d`; arbitrum `0xcf359a...7bb11d` | ⚠️ Unaudited |
| DolomiteOwner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x68f6d3...03933c` | ⚠️ Unaudited |
| DolomiteOwnerV1 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-236858 | `0xcf359a...7bb11d` | ⚠️ Unaudited |
| DolomiteOwnerV1 | unknown | project_anchor | own_supporting | 0 | berachain | unit-237064 | `0xcf359a...7bb11d` | ⚠️ Unaudited |
| DolomiteOwnerV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-236857 | `0xc2b66e...53de06` | ⚠️ Unaudited |
| DolomiteOwnerV2 | unknown | project_anchor | own_supporting | 0 | mantle | unit-237001 | 4 deployments: mantle `0xc2b66e...53de06`; base `0xc2b66e...53de06`; arbitrum `0xc2b66e...53de06`; berachain `0xc2b66e...53de06` | ⚠️ Unaudited |
| DolomiteRegistryImplementation | registry | project_anchor | own_supporting | 1 | ethereum | unit-237099 | `0x0f38bf...fe09fd` | ⚠️ Unaudited |
| DolomiteRegistryImplementation | registry | project_anchor | own_supporting | 1 | mantle | unit-237112 | `0x7bec16...f7e09b` | ⚠️ Unaudited |
| DolomiteRegistryImplementation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 21 deployments: mantle `0x2fe6f5...127642`; mantle `0x5b1e3b...3ea1ca`; mantle `0xfc2806...366ea8`; arbitrum `0x0315c5...a269b9`; arbitrum `0x1052e7...3778a6`; arbitrum `0x1f578e...202e52`; arbitrum `0x530935...7050b1`; arbitrum `0x5e13c2...4f73b7`; arbitrum `0x759fd3...2c23ee`; arbitrum `0x89ef0b...764f5d`; arbitrum `0xa95c12...673bcb`; arbitrum `0xaa8eac...c16f29`; arbitrum `0xad1877...a3c758`; arbitrum `0xbcb384...096c11`; arbitrum `0xc97eea...068733`; arbitrum `0xdac933...21eb9c`; arbitrum `0xe8ef47...3c0a5b`; arbitrum `0xf5e5e2...d5cac4`; arbitrum `0xf5e882...eb684a`; arbitrum `0xfbdae3...43ce6b`; arbitrum `0xff9ae5...ab7c89` | ⚠️ Unaudited |
| DolomiteRegistryImplementation | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-237107 | `0x2a059d...8c2404` | ⚠️ Unaudited |
| DolomiteRegistryImplementation | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | arbitrum | n/a | 3 deployments: arbitrum `0x33b086...1b624f`; arbitrum `0x5343c6...88199c`; arbitrum `0xa2f635...f35407` | ⚠️ Unaudited |
| DOLOWithOwnable | governance | project_anchor | own_supporting | 0 | ethereum | unit-236841 | 2 deployments: ethereum `0x0f8100...39a654`; arbitrum `0x0f8100...39a654` | ⚠️ Unaudited |
| DoubleExponentInterestSetter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 8 deployments: mantle `0xdb70d8...aa687c`; arbitrum `0x0a34f5...24d415`; arbitrum `0x2f0588...8f1a95`; arbitrum `0x39871a...d9d061`; arbitrum `0x77694d...457d40`; arbitrum `0x836b55...34e4e5`; arbitrum `0xf17616...b63555`; arbitrum `0xf74fdc...fdb37b` | ⚠️ Unaudited |
| EsGmxReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8b7d8e...1219fc` | ⚠️ Unaudited |
| EventEmitterRegistry | registry | project_anchor | own_supporting | 1 | ethereum | unit-237097 | `0x6d4013...232486` | ⚠️ Unaudited |
| EventEmitterRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 11 deployments: mantle `0x093b06...f6302f`; mantle `0x250b15...d6b5d1`; mantle `0x2fdb2b...6f8785`; mantle `0x78cf9b...1b8720`; arbitrum `0x0b2db9...37d0a3`; arbitrum `0x1804bc...9318c3`; arbitrum `0x3fcbc7...828122`; arbitrum `0x968e3f...8015ec`; arbitrum `0xa524c3...58c223`; arbitrum `0xcc6f8f...2335b9`; arbitrum `0xd3792b...ace5ea` | ⚠️ Unaudited |
| EventEmitterRegistry | registry | project_anchor | own_supporting | 1 | mantle | unit-237110 | `0x778cea...fb827c` | ⚠️ Unaudited |
| EventEmitterRegistry | registry | project_anchor | own_supporting | 1 | base | unit-237129 | `0x6d4013...232486` | ⚠️ Unaudited |
| EventEmitterRegistry | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-237103 | `0x4bff12...18cc2f` | ⚠️ Unaudited |
| EventEmitterRegistry | registry | project_anchor | own_supporting | 1 | berachain | unit-237120 | `0x6d4013...232486` | ⚠️ Unaudited |
| Expiry | unknown | project_anchor | own_supporting | 0 | ethereum | unit-236844 | `0x2ae007...1d8d5d` | ⚠️ Unaudited |
| Expiry | unknown | project_anchor | own_supporting | 0 | mantle | unit-236993 | `0x6df6db...889a25` | ⚠️ Unaudited |
| Expiry | unknown | project_anchor | own_supporting | 0 | base | unit-237076 | 2 deployments: base `0x2ae007...1d8d5d`; berachain `0x2ae007...1d8d5d` | ⚠️ Unaudited |
| Expiry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: arbitrum `0x0d64b6...dcd8dc`; arbitrum `0x2ce1af...b30304`; arbitrum `0x9ffa76...5a0fae`; arbitrum `0xee34b4...0b22e6` | ⚠️ Unaudited |
| Expiry | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236979 | `0xdec1ae...973bea` | ⚠️ Unaudited |
| ExpiryProxy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-236842 | `0x1b39f7...67e7bc` | ⚠️ Unaudited |
| ExpiryProxy | unknown | project_anchor | own_supporting | 0 | mantle | unit-236983 | `0x075a06...fecc65` | ⚠️ Unaudited |
| ExpiryProxy | unknown | project_anchor | own_supporting | 0 | base | unit-237074 | 2 deployments: base `0x1b39f7...67e7bc`; berachain `0x1b39f7...67e7bc` | ⚠️ Unaudited |
| ExpiryProxy | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236954 | `0x40899e...730b00` | ⚠️ Unaudited |
| ExternalOARB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc5e16f...8b2ac2` | ⚠️ Unaudited |
| ExternalVesterImplementationV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3d2586...a7a8b9` | ⚠️ Unaudited |
| GenericTraderProxyV1 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-236854 | `0xb50bcd...fb928d` | ⚠️ Unaudited |
| GenericTraderProxyV1 | unknown | project_anchor | own_supporting | 0 | mantle | unit-237003 | `0xd432c3...d2edab` | ⚠️ Unaudited |
| GenericTraderProxyV1 | unknown | project_anchor | own_supporting | 0 | base | unit-237086 | 2 deployments: base `0xb50bcd...fb928d`; berachain `0xb50bcd...fb928d` | ⚠️ Unaudited |
| GenericTraderProxyV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 8 deployments: mantle `0x8a13c0...419d5c`; arbitrum `0x26cb28...8a7f7c`; arbitrum `0x3e647e...846242`; arbitrum `0x4f565c...2b6fa6`; arbitrum `0x9615e0...304c1a`; arbitrum `0xc1a485...fc5ebd`; arbitrum `0xe50c31...de83f6`; arbitrum `0xf6d327...2ca363` | ⚠️ Unaudited |
| GenericTraderProxyV1 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236967 | `0x905f3a...f61d2b` | ⚠️ Unaudited |
| GenericTraderProxyV1Lib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: mantle `0x6727fe...73cfdc`; mantle `0xec502f...817c4b`; arbitrum `0x361b24...7c93d1`; arbitrum `0x49df0d...e8bf93`; arbitrum `0x5477f4...57df68` | ⚠️ Unaudited |
| GenericTraderRouter | adapter | project_anchor | own_supporting | 1 | ethereum | unit-237100 | `0x7b61cb...72bc6b` | ⚠️ Unaudited |
| GenericTraderRouter | adapter | project_anchor | own_supporting | 1 | base | unit-237132 | `0x7b61cb...72bc6b` | ⚠️ Unaudited |
| GenericTraderRouter | adapter | project_anchor | own_supporting | 1 | berachain | unit-237126 | `0x7b61cb...72bc6b` | ⚠️ Unaudited |
| GettersImpl | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x00c2b5...f86459` | ⚠️ Unaudited |
| GLPIsolationModeTokenVaultV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: arbitrum `0x0dbbd1...05eb4c`; arbitrum `0x319457...be4088`; arbitrum `0x36becd...b97146`; arbitrum `0x60f8d7...247d32` | ⚠️ Unaudited |
| GLPIsolationModeTokenVaultV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 6 deployments: arbitrum `0x4600e1...1d256a`; arbitrum `0x56359d...6ad212`; arbitrum `0x6fde67...1d0831`; arbitrum `0x7bb95c...ba0c30`; arbitrum `0x898a4c...55d677`; arbitrum `0xf592b1...33bf07` | ⚠️ Unaudited |
| GLPIsolationModeUnwrapperTraderV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: arbitrum `0x83e805...5d1fa2`; arbitrum `0xaacdc4...39d79d`; arbitrum `0xbe39b6...17d184`; arbitrum `0xf25e0d...9c582d` | ⚠️ Unaudited |
| GLPIsolationModeWrapperTraderV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: arbitrum `0x4717fb...e49506`; arbitrum `0x815ebf...1729fc`; arbitrum `0xa5f85e...3a6d58`; arbitrum `0xec3162...27f91b` | ⚠️ Unaudited |
| GLPPriceOracleV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x26cf2b...271744`; arbitrum `0x32a558...b15791`; arbitrum `0xf34209...cfde24` | ⚠️ Unaudited |
| GLPUnwrapperProxyV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x54ef98...2a75a0` | ⚠️ Unaudited |
| GLPUnwrapperTraderV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe2e262...fe2268` | ⚠️ Unaudited |
| GLPUnwrapperTraderV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x54e523...1131ea` | ⚠️ Unaudited |
| GLPWrappedTokenUserVaultFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x34df4e...542698` | ⚠️ Unaudited |
| GLPWrappedTokenUserVaultV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0xc1d404...427a53`; arbitrum `0xdc525a...3f1531` | ⚠️ Unaudited |
| GLPWrapperProxyV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3d6189...da9448` | ⚠️ Unaudited |
| GLPWrapperTraderV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfa60e0...b13bfe` | ⚠️ Unaudited |
| GLPWrapperTraderV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaa3325...a64225` | ⚠️ Unaudited |
| GMXIsolationModeTokenVaultV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 8 deployments: arbitrum `0x0ddf58...c0527e`; arbitrum `0x13cdef...39ff37`; arbitrum `0x74e373...23ed27`; arbitrum `0x95f13c...5a26fe`; arbitrum `0xb5f5d2...456eab`; arbitrum `0xc43985...745c0f`; arbitrum `0xd28d59...e85b46`; arbitrum `0xd4cf0d...c402b8` | ⚠️ Unaudited |
| GMXIsolationModeVaultFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x790ff5...b55ca5` | ⚠️ Unaudited |
| GmxRegistryV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x068dc7...31166e`; arbitrum `0x07f114...f377a1` | ⚠️ Unaudited |
| GmxRegistryV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x39f390...bce7ad`; arbitrum `0xdbc616...b30f89` | ⚠️ Unaudited |
| GmxV2IsolationModeTokenVaultV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 16 deployments: arbitrum `0x1f975c...62f4dc`; arbitrum `0x264d5c...75c4ae`; arbitrum `0x4dd20f...3fbb99`; arbitrum `0x5799a6...5211dc`; arbitrum `0x742bb2...3f9e33`; arbitrum `0x7977d3...df6ce6`; arbitrum `0x818f98...440fb1`; arbitrum `0x924a11...a7e0a1`; arbitrum `0x94d181...769e8f`; arbitrum `0xb7919f...629094`; arbitrum `0xb93e57...2162c4`; arbitrum `0xbb86e9...d4524f`; arbitrum `0xbd9f93...933061`; arbitrum `0xc9f503...f2d931`; arbitrum `0xcfc1cd...c3deb1`; arbitrum `0xe72f23...35ed3d` | ⚠️ Unaudited |
| GmxV2IsolationModeUnwrapperTraderV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 9 | arbitrum | n/a | 9 deployments: arbitrum `0x0572e5...bed4ec`; arbitrum `0x106fda...ed0200`; arbitrum `0x2b9d14...852758`; arbitrum `0x333838...a5cfbe`; arbitrum `0x71fcbb...1157c4`; arbitrum `0x77a7dc...311317`; arbitrum `0xa1b50f...af63e5`; arbitrum `0xdfdbbd...f0d83c`; arbitrum `0xecd64f...f86034` | ⚠️ Unaudited |
| GmxV2IsolationModeUnwrapperTraderV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 13 deployments: arbitrum `0x2d898d...8dfe9e`; arbitrum `0x342ade...1ab916`; arbitrum `0x4f1272...330c10`; arbitrum `0x55261c...0d4390`; arbitrum `0x5627a9...a0873c`; arbitrum `0x7e0006...f83eff`; arbitrum `0x8690c2...346130`; arbitrum `0x9cd90d...805fd1`; arbitrum `0xa2e03b...c72d8b`; arbitrum `0xa39f1a...1ea0fd`; arbitrum `0xe87bb3...51e9f7`; arbitrum `0xe96151...76eb03`; arbitrum `0xeccd34...71eab6` | ⚠️ Unaudited |
| GmxV2IsolationModeVaultFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 12 deployments: arbitrum `0x18cb14...abc0e0`; arbitrum `0x1beed3...e027c1`; arbitrum `0x1e8e8b...7050ef`; arbitrum `0x1ebb1c...bfd412`; arbitrum `0x20d51c...547e7e`; arbitrum `0x24c912...7c614d`; arbitrum `0x2c7991...a39329`; arbitrum `0x2d165a...3d7f92`; arbitrum `0x505582...a1b074`; arbitrum `0x5c99f6...45ed1c`; arbitrum `0xb15bbb...cec4d8`; arbitrum `0xc58764...b01c9b` | ⚠️ Unaudited |
| GmxV2IsolationModeWrapperTraderV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 8 | arbitrum | n/a | 8 deployments: arbitrum `0x2059e1...72dbe6`; arbitrum `0x471c5c...0d1d2d`; arbitrum `0x6d1da0...013907`; arbitrum `0x86bb92...f72b53`; arbitrum `0x8f6bc6...2e7bf2`; arbitrum `0xba3293...8d7e47`; arbitrum `0xc50306...259ef0`; arbitrum `0xc58ccf...3e06d8` | ⚠️ Unaudited |
| GmxV2IsolationModeWrapperTraderV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 11 deployments: arbitrum `0x62f345...520526`; arbitrum `0x66502c...d8a9db`; arbitrum `0x827246...e166ba`; arbitrum `0x971dcb...3f102b`; arbitrum `0xa3b49d...7f8898`; arbitrum `0xaf9ab8...4fbacf`; arbitrum `0xb19027...f2c9d9`; arbitrum `0xb321b2...654c18`; arbitrum `0xb51e13...de29aa`; arbitrum `0xc99f41...d9ad37`; arbitrum `0xcb62d5...03be7e` | ⚠️ Unaudited |
| GmxV2Library | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 9 deployments: arbitrum `0x38e254...386d65`; arbitrum `0x517b96...af74d6`; arbitrum `0x5e7b26...b2ab71`; arbitrum `0x6b8964...0229d9`; arbitrum `0x86c466...a75c59`; arbitrum `0xbafd53...874fb2`; arbitrum `0xd4f9fb...dd07e1`; arbitrum `0xd670f7...571454`; arbitrum `0xd7b6b9...b3a374` | ⚠️ Unaudited |
| GmxV2MarketTokenPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x14349a...a596a0`; arbitrum `0xf4596b...b54974`; arbitrum `0xf6cb63...1048cc` | ⚠️ Unaudited |
| GmxV2Registry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xadc1a8...7316a8` | ⚠️ Unaudited |
| GmxV2Registry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0xe62970...aae3f5`; arbitrum `0xf01dc6...203eb6` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | project_anchor | own_supporting | 1 | ethereum | unit-237096 | `0xa75c21...55a1d4` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | project_anchor | own_supporting | 1 | mantle | unit-237109 | `0xa75c21...55a1d4` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | project_anchor | own_supporting | 1 | base | unit-237128 | `0xa75c21...55a1d4` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | project_anchor | own_supporting | 1 | berachain | unit-237114 | `0xa75c21...55a1d4` | ⚠️ Unaudited |
| GravitaExternalVesterImplementationV2 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xec0f08...a04326` | ⚠️ Unaudited |
| IsolationModeFreezableLiquidatorProxy | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-236849 | `0x8d178f...5c8870` | ⚠️ Unaudited |
| IsolationModeFreezableLiquidatorProxy | operational_periphery | project_anchor | own_supporting | 0 | base | unit-237081 | `0x8d178f...5c8870` | ⚠️ Unaudited |
| IsolationModeFreezableLiquidatorProxy | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-236961 | `0x76ac55...a33e44` | ⚠️ Unaudited |
| IsolationModeFreezableLiquidatorProxy | unknown | project_anchor | own_supporting | 0 | arbitrum | n/a | 4 deployments: mantle `0xb1e10b...591980`; mantle `0xfed1f9...e259a4`; arbitrum `0xadea94...d16026`; arbitrum `0xfe4262...3f0ed0` | ⚠️ Unaudited |
| IsolationModeFreezableLiquidatorProxy | operational_periphery | project_anchor | own_supporting | 0 | berachain | unit-237054 | `0x8d178f...5c8870` | ⚠️ Unaudited |
| IsolationModeTokenVaultMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc9299e...590729` | ⚠️ Unaudited |
| IsolationModeTokenVaultV1ActionsImpl | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 11 deployments: mantle `0x017e2a...0bc4ec`; mantle `0x8e2f95...462f6f`; arbitrum `0x2ccef1...7ff5d2`; arbitrum `0x7b9f5d...9057a7`; arbitrum `0xa2dfe6...ef7d21`; arbitrum `0xa665ef...b555cf`; arbitrum `0xadedda...f818c2`; arbitrum `0xb76cc1...954f3f`; arbitrum `0xc06e4d...569a6f`; arbitrum `0xd04d6a...7b21ef`; arbitrum `0xf3766d...a792dd` | ⚠️ Unaudited |
| IsolationModeTraderProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 7 deployments: arbitrum `0x039bc4...37362f`; arbitrum `0x16b360...e9b18d`; arbitrum `0x99190d...97b333`; arbitrum `0xc33b3d...f0de09`; arbitrum `0xc87456...fe691f`; arbitrum `0xd55a71...1db5cb`; arbitrum `0xd73cfb...953e66` | ⚠️ Unaudited |
| JonesIsolationModeTokenVaultMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6b4ab9...c384a8` | ⚠️ Unaudited |
| JonesUSDCIsolationModeTokenVaultV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 11 deployments: arbitrum `0x1d3355...c0e3ca`; arbitrum `0x1e61df...86b51a`; arbitrum `0x235c83...a240ff`; arbitrum `0x279682...6c9032`; arbitrum `0x27974a...15f995`; arbitrum `0x2eb274...be5bc4`; arbitrum `0x6c1e20...6ebf9b`; arbitrum `0x6ec8b4...2c6cee`; arbitrum `0x6f2a6b...1e482b`; arbitrum `0x702bbe...848e19`; arbitrum `0x81501e...ed1a70` | ⚠️ Unaudited |
| JonesUSDCIsolationModeTokenVaultV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: arbitrum `0x504683...1b592b`; arbitrum `0x73bc3d...018dce`; arbitrum `0x782588...5ec74f`; arbitrum `0xc1e233...3345ce`; arbitrum `0xe01a3c...188aa1` | ⚠️ Unaudited |
| JonesUSDCIsolationModeUnwrapperTraderV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 8 deployments: arbitrum `0x00e418...3bc8ce`; arbitrum `0x61eb7f...4071ec`; arbitrum `0x76306f...3acb79`; arbitrum `0x7abe6b...6c878e`; arbitrum `0x87763a...31ac08`; arbitrum `0x8c24b0...0fb6e0`; arbitrum `0xa8a936...204045`; arbitrum `0xf525be...3f6971` | ⚠️ Unaudited |
| JonesUSDCIsolationModeUnwrapperTraderV2ForLiquidation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 6 deployments: arbitrum `0x17dda7...4e6c93`; arbitrum `0x8ba70c...48aa7c`; arbitrum `0x9750d8...9c9330`; arbitrum `0xcc7ac4...fbec5c`; arbitrum `0xdba4fa...c5d349`; arbitrum `0xdf088c...4dbf0e` | ⚠️ Unaudited |
| JonesUSDCIsolationModeVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x2adba3...11fc05`; arbitrum `0x8bfc42...e330a4` | ⚠️ Unaudited |
| JonesUSDCIsolationModeWrapperTraderV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 7 deployments: arbitrum `0x22c58e...a23789`; arbitrum `0x362b6b...cb5063`; arbitrum `0x8427d5...238767`; arbitrum `0x8f4348...ccf785`; arbitrum `0xbc5029...eb93d0`; arbitrum `0xe4240a...e89915`; arbitrum `0xeff8a5...e2d6f0` | ⚠️ Unaudited |
| JonesUSDCPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x2ed567...9f1e0e`; arbitrum `0xe091e7...02f3cf` | ⚠️ Unaudited |
| JonesUSDCRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: arbitrum `0x2b989e...945186`; arbitrum `0x482c1b...612b77`; arbitrum `0x8b1f06...e6ca31`; arbitrum `0x985559...ab3f9f`; arbitrum `0xdeeaee...63092b` | ⚠️ Unaudited |
| JonesUSDCRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x6856d5...85823b`; arbitrum `0xc30a2c...84c0ed` | ⚠️ Unaudited |
| JonesUSDCRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0xea0030...069295`; arbitrum `0xef85d5...be7b65` | ⚠️ Unaudited |
| JonesUSDCTransformer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x370a47...f10cc3` | ⚠️ Unaudited |
| JonesUSDCV2IsolationModeVaultFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x14c60c...e33012` | ⚠️ Unaudited |
| LinearStepFunctionInterestSetter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 40 deployments: mantle `0x0a5125...0b7589`; mantle `0x11a7e2...cb6bde`; mantle `0x2a2e69...47053a`; mantle `0x2bab6a...0bd3bf`; mantle `0x58067f...29caf5`; mantle `0x5d6b63...731eda`; mantle `0x5f2eff...f781a2`; mantle `0x694f7b...f5c8b4`; mantle `0x6d35bf...1b0a57`; mantle `0x7c228f...7d6c83`; mantle `0x82b931...4dc08c`; mantle `0x8b808a...46197c`; mantle `0x8e6270...598c19`; mantle `0x94bab7...b1ca06`; mantle `0x958a9c...744bf7`; mantle `0xa60686...5ba181`; mantle `0xc38372...6c32e6`; mantle `0xd1f7f2...811a65`; mantle `0xdc94f0...9355fd`; mantle `0xe355df...15aeea`; arbitrum `0x065e35...691a3b`; arbitrum `0x093d6d...ead734`; arbitrum `0x22c1b4...a02753`; arbitrum `0x27b285...7f4114`; arbitrum `0x291c75...ad7715`; arbitrum `0x36d9b0...fd1930`; arbitrum `0x5aefd9...83025a`; arbitrum `0x7a6c75...4544d4`; arbitrum `0xad9f52...b3d48b`; arbitrum `0xb1f1e9...aea4fd`; arbitrum `0xb62799...233d11`; arbitrum `0xc10934...e16bfe`; arbitrum `0xcf63a1...ae5081`; arbitrum `0xd25e3b...c1bf12`; arbitrum `0xd3d380...d4a94a`; arbitrum `0xd80b6e...2e69d3`; arbitrum `0xd9378c...2234e8`; arbitrum `0xe3718a...d60a81`; arbitrum `0xe39231...12d8d3`; arbitrum `0xe396aa...8f9886` | ⚠️ Unaudited |
| LiquidateOrVaporizeImpl | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 8 deployments: mantle `0xb131bf...24691b`; arbitrum `0x20fad8...b8fa3b`; arbitrum `0x452ca7...6dee59`; arbitrum `0x5f2eff...f781a2`; arbitrum `0x63bd44...f6d451`; arbitrum `0x78cf9b...1b8720`; arbitrum `0xa222d4...9f5d12`; arbitrum `0xce29b2...d781a0` | ⚠️ Unaudited |
| LiquidatorAssetRegistry | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-236860 | `0xd82100...c56cfa` | ⚠️ Unaudited |
| LiquidatorAssetRegistry | operational_periphery | project_anchor | own_supporting | 0 | mantle | unit-236995 | 3 deployments: mantle `0x7b6d28...2d69b5`; base `0xd82100...c56cfa`; berachain `0xd82100...c56cfa` | ⚠️ Unaudited |
| LiquidatorAssetRegistry | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236946 | `0x10d987...f44fac` | ⚠️ Unaudited |
| LiquidatorAssetRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x893242...0111b2` | ⚠️ Unaudited |
| LiquidatorProxyV1 | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-236861 | `0xdb168c...bf99d3` | ⚠️ Unaudited |
| LiquidatorProxyV1 | operational_periphery | project_anchor | own_supporting | 0 | mantle | unit-236996 | `0x8e6b0e...073a71` | ⚠️ Unaudited |
| LiquidatorProxyV1 | operational_periphery | project_anchor | own_supporting | 0 | base | unit-237093 | 2 deployments: base `0xdb168c...bf99d3`; berachain `0xdb168c...bf99d3` | ⚠️ Unaudited |
| LiquidatorProxyV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 7 deployments: arbitrum `0x10114c...06e745`; arbitrum `0x227455...812141`; arbitrum `0x6d13e5...8caa53`; arbitrum `0x84b027...c53450`; arbitrum `0xa5f4ce...76e2e9`; arbitrum `0xaee9ea...eec122`; arbitrum `0xdda7d8...fab581` | ⚠️ Unaudited |
| LiquidatorProxyV1 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236965 | `0x8c6e33...fa715a` | ⚠️ Unaudited |
| LiquidatorProxyV1WithAmm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 9 deployments: arbitrum `0x43baa7...7bc198`; arbitrum `0x6e106a...617f77`; arbitrum `0x7a20b3...aaa8c6`; arbitrum `0xaa652e...9bdf63`; arbitrum `0xb38768...febe0b`; arbitrum `0xb3ff98...664e77`; arbitrum `0xe1d717...a6f719`; arbitrum `0xe6b389...6dfd5f`; arbitrum `0xf61a26...41f1f2` | ⚠️ Unaudited |
| LiquidatorProxyV2WithExternalLiquidity | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x1bbc20...f8d3ba`; arbitrum `0xcc24ca...77f368`; arbitrum `0xf53f5c...978fb1` | ⚠️ Unaudited |
| LiquidatorProxyV3WithLiquidityToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0c3588...7fcc02` | ⚠️ Unaudited |
| LiquidatorProxyV4WithGenericTrader | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-236843 | `0x2adeaf...c5487b` | ⚠️ Unaudited |
| LiquidatorProxyV4WithGenericTrader | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 9 deployments: mantle `0x17b8bc...a77f2c`; arbitrum `0x1f30d4...11b573`; arbitrum `0x6c75d6...b6220a`; arbitrum `0x7997a5...5bccdc`; arbitrum `0xac66e9...9ebd0b`; arbitrum `0xc5c857...08d869`; arbitrum `0xe409a9...3a8ea6`; arbitrum `0xfcfce8...ec79b9`; arbitrum `0xfd8444...3ab6d7` | ⚠️ Unaudited |
| LiquidatorProxyV4WithGenericTrader | operational_periphery | project_anchor | own_supporting | 0 | mantle | unit-236986 | 2 deployments: mantle `0x22dd9f...084fc7`; base `0x2adeaf...c5487b` | ⚠️ Unaudited |
| LiquidatorProxyV4WithGenericTrader | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236951 | `0x349756...ab9cb3` | ⚠️ Unaudited |
| LiquidatorProxyV5 | operational_periphery | project_anchor | own_supporting | 0 | mantle | unit-236984 | `0x1506f8...72b99a` | ⚠️ Unaudited |
| LiquidatorProxyV5 | operational_periphery | project_anchor | own_supporting | 0 | base | unit-237073 | `0x1506f8...72b99a` | ⚠️ Unaudited |
| MagicGLPPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4dfbb8...a78f5f` | ⚠️ Unaudited |
| MagicGLPUnwrapperTrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9e8d90...ae345d` | ⚠️ Unaudited |
| MagicGLPUnwrapperTraderV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x76a03c...5a29dd` | ⚠️ Unaudited |
| MagicGLPWrapperTrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x36ab95...bb14a1` | ⚠️ Unaudited |
| MagicGLPWrapperTraderV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x298a07...06224d` | ⚠️ Unaudited |
| MarginPositionRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7a952d...c626d0` | ⚠️ Unaudited |
| Migrations | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: mantle `0x5b03c8...8bca7c`; arbitrum `0x34bd12...3a6b2b`; arbitrum `0x4c5aae...7bcb43`; arbitrum `0x51d184...e33d58`; arbitrum `0x987afb...d8a7b1` | ⚠️ Unaudited |
| MineralToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 2 deployments: mantle `0x9f7779...02e876`; arbitrum `0xd81bc9...7401ad` | ⚠️ Unaudited |
| MineralToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x01d963...4e2c5c`; arbitrum `0x946f4a...fbf26d` | ⚠️ Unaudited |
| MNTIsolationModeTokenVaultV1 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x660bd8...d88255` | ⚠️ Unaudited |
| MNTIsolationModeVaultFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x6b68bd...2fe3ce` | ⚠️ Unaudited |
| MNTRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 1 | mantle | n/a | 2 deployments: mantle `0x4c0868...ea32d0`; mantle `0x50cc5e...4c9cb8` | ⚠️ Unaudited |
| MultiCall | periphery | project_anchor | own_supporting | 0 | ethereum | unit-236847 | 4 deployments: ethereum `0x58142b...617d2a`; mantle `0x6978ff...1bebc5`; base `0x58142b...617d2a`; berachain `0x58142b...617d2a` | ⚠️ Unaudited |
| OARB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcbed80...5a6a93` | ⚠️ Unaudited |
| ODOLO | unknown | project_anchor | own_supporting | 0 | berachain | unit-237041 | `0x02e513...c89543` | ⚠️ Unaudited |
| OdosAggregatorTrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xdce03d...39d379` | ⚠️ Unaudited |
| OdosAggregatorTrader | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236950 | `0x2cdbb2...e67f3c` | ⚠️ Unaudited |
| OperationImpl | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 6 deployments: mantle `0x38ff2f...a07a7e`; arbitrum `0x7908b4...124527`; arbitrum `0x8007d1...32e02c`; arbitrum `0xb131bf...24691b`; arbitrum `0xd6a797...4e9d3b`; arbitrum `0xe4d345...3250b9` | ⚠️ Unaudited |
| OptionAirdrop | operational_periphery | project_anchor | own_supporting | 1 | berachain | unit-237115 | `0xd88f47...9b99ef` | ⚠️ Unaudited |
| OracleAggregatorV2 | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-236852 | `0xa150ef...1d636e` | ⚠️ Unaudited |
| OracleAggregatorV2 | operational_periphery | project_anchor | own_supporting | 0 | mantle | unit-236987 | `0x2c640b...24b77d` | ⚠️ Unaudited |
| OracleAggregatorV2 | operational_periphery | project_anchor | own_supporting | 0 | base | unit-237084 | 2 deployments: base `0xa150ef...1d636e`; berachain `0xa150ef...1d636e` | ⚠️ Unaudited |
| OracleAggregatorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x28a17e...1d8b9c` | ⚠️ Unaudited |
| OracleAggregatorV2 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236973 | `0xbfca44...d06ca0` | ⚠️ Unaudited |
| ParaswapAggregatorTrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x6173c3...059a68`; arbitrum `0x8ca96f...f5bfd9` | ⚠️ Unaudited |
| ParaswapAggregatorTraderV2 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236978 | `0xd991d9...92383a` | ⚠️ Unaudited |
| PartiallyDelayedMultiSig | governance | project_anchor | own_supporting | 0 | ethereum | unit-236846 | `0x52d7bc...fd05f9` | ⚠️ Unaudited |
| PartiallyDelayedMultiSig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb48b34...df8754` | ⚠️ Unaudited |
| PayableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: arbitrum `0x027db2...6b6fc3`; arbitrum `0x6978ff...1bebc5`; arbitrum `0x88a6d8...745866`; arbitrum `0xaa1a2e...75e0fa`; arbitrum `0xc90e5d...b95787` | ⚠️ Unaudited |
| PendleGLPRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xa2faf5...55f6b0` | ⚠️ Unaudited |
| PendleRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 8 | arbitrum | n/a | 8 deployments: arbitrum `0x154de4...cad2ac`; arbitrum `0x51df6b...62e33b`; arbitrum `0x5c451e...79fc1d`; arbitrum `0x6c05d6...8f0056`; arbitrum `0x6caec9...ef60a5`; arbitrum `0x7561b6...79f1c6`; arbitrum `0x882835...17d2fe`; arbitrum `0xc822de...077f5d` | ⚠️ Unaudited |
| PlutusVaultGLPIsolationModeTokenVaultV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 7 deployments: arbitrum `0x105df7...7a2e11`; arbitrum `0x452a5d...c6dc8d`; arbitrum `0x4bcab4...b6bf9f`; arbitrum `0x881079...424297`; arbitrum `0x9c1238...62006f`; arbitrum `0xc929ca...4e2333`; arbitrum `0xe8e7e8...7bc9e9` | ⚠️ Unaudited |
| PlutusVaultGLPIsolationModeUnwrapperTraderV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: arbitrum `0x025332...216c24`; arbitrum `0x18e6e0...51d60b`; arbitrum `0x74d3cb...ba575f`; arbitrum `0xaa3e63...d57b69` | ⚠️ Unaudited |
| PlutusVaultGLPIsolationModeWrapperTraderV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: arbitrum `0x226b02...26d2a3`; arbitrum `0x850198...33a7a1`; arbitrum `0x89649b...1f4698`; arbitrum `0xcf8d6c...9db576` | ⚠️ Unaudited |
| PlutusVaultGLPPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x11e4e7...50a3a0`; arbitrum `0x72dfd3...db19ef`; arbitrum `0xcaba6d...f956a7` | ⚠️ Unaudited |
| PlutusVaultGLPUnwrapperTrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb5010b...3f6d37` | ⚠️ Unaudited |
| PlutusVaultGLPWrappedTokenUserVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5c80ac...cfb043` | ⚠️ Unaudited |
| PlutusVaultGLPWrappedTokenUserVaultV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x978d46...66f8aa` | ⚠️ Unaudited |
| PlutusVaultGLPWrapperTrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc2fa9f...010b92` | ⚠️ Unaudited |
| PlutusVaultRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x6fceb6...c6d1bb`; arbitrum `0x704ed0...2ed8f3` | ⚠️ Unaudited |
| PlutusVaultRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xccb359...113ce5` | ⚠️ Unaudited |
| PtGLPTransformer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc410e7...fac564` | ⚠️ Unaudited |
| RamsesCLPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x86acc8...3fe41b` | ⚠️ Unaudited |
| RamsesLegacyPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x44d96d...da52e0` | ⚠️ Unaudited |
| RedstonePriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x67d5c2...c7f759` | ⚠️ Unaudited |
| RedstonePriceOracleV3 | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-236862 | `0xe09f85...4cdd45` | ⚠️ Unaudited |
| RedstonePriceOracleV3 | operational_periphery | project_anchor | own_supporting | 0 | mantle | unit-236992 | `0x6b15c3...8403a2` | ⚠️ Unaudited |
| RedstonePriceOracleV3 | operational_periphery | project_anchor | own_supporting | 0 | base | unit-237094 | 2 deployments: base `0xe09f85...4cdd45`; berachain `0xe09f85...4cdd45` | ⚠️ Unaudited |
| RedstonePriceOracleV3 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236956 | `0x5fbae9...be01d2` | ⚠️ Unaudited |
| RegistryProxy | registry | project_anchor | own_supporting | 0 | ethereum | unit-236863 | `0xfee366...24daae` | ⚠️ Unaudited |
| RegistryProxy | registry | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 20 deployments: mantle `0x02942c...4522cc`; mantle `0x141b3d...ac56e8`; mantle `0x3d05e4...7ea9a3`; mantle `0x4723da...8f812d`; mantle `0x64f7a2...39a249`; mantle `0x66d4d4...495001`; mantle `0x7656b1...0c6c63`; mantle `0xc28a4e...4f5faa`; mantle `0xd6a797...4e9d3b`; mantle `0xd86233...7269bf`; arbitrum `0x1572ba...d5b733`; arbitrum `0x1b349d...5777d5`; arbitrum `0x33d83d...eb5315`; arbitrum `0x66ea40...64696e`; arbitrum `0x6a5c48...ac72ea`; arbitrum `0x8169e2...610625`; arbitrum `0x97f893...e1b210`; arbitrum `0x9e3246...fb1169`; arbitrum `0xe5f586...6f6e3f`; arbitrum `0xf088cc...1fd963` | ⚠️ Unaudited |
| RegularAirdrop | operational_periphery | project_anchor | own_supporting | 1 | berachain | unit-237124 | `0xa3f079...838bc9` | ⚠️ Unaudited |
| RewardsDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: mantle `0x4232fc...ab708a`; arbitrum `0x2e3d10...728b4b`; arbitrum `0x669b04...a598ad`; arbitrum `0xfb47dc...0d8360` | ⚠️ Unaudited |
| RewardsDistributor | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-236958 | `0x66cd7d...73db67` | ⚠️ Unaudited |
| RollingClaims | unknown | project_anchor | own_supporting | 1 | berachain | unit-237123 | `0x79e6e9...a8a026` | ⚠️ Unaudited |
| RouterProxy | adapter | project_anchor | own_supporting | 0 | mantle | unit-236994 | `0x7b61cb...72bc6b` | ⚠️ Unaudited |
| RouterProxy | adapter | project_anchor | own_supporting | 0 | mantle | unit-237007 | `0xf579b3...133d0f` | ⚠️ Unaudited |
| SafeDelegateCallLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 2 deployments: mantle `0x52d57f...41a5a9`; arbitrum `0xaa6509...8bb425` | ⚠️ Unaudited |
| SafeGettersForDolomiteMargin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x938194...f7a16a` | ⚠️ Unaudited |
| SafeL2 | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-237102 | `0xa75c21...55a1d4` | ⚠️ Unaudited |
| SignedOperationProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 6 deployments: mantle `0xbe6c38...128f52`; arbitrum `0x0a2d7d...11ab5d`; arbitrum `0x3d28c5...5531b1`; arbitrum `0x6da4cf...bbc427`; arbitrum `0x80de7c...3de7fb`; arbitrum `0xfc2806...366ea8` | ⚠️ Unaudited |
| SimpleFeeOwner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: arbitrum `0x07e323...da779a`; arbitrum `0x2fdb2b...6f8785`; arbitrum `0x947f60...9b9aee`; arbitrum `0xd802d4...c631c2` | ⚠️ Unaudited |
| SimpleIsolationModeUnwrapperTraderV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 7 deployments: mantle `0xd44807...5036f3`; arbitrum `0x0234d1...e0db31`; arbitrum `0x192c34...d9d695`; arbitrum `0x66aa62...b7ea4e`; arbitrum `0x77e91d...55ee68`; arbitrum `0x8cdf57...2c145c`; arbitrum `0xe437e7...41d9b0` | ⚠️ Unaudited |
| SimpleIsolationModeWrapperTraderV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 7 deployments: mantle `0x277118...382d7e`; arbitrum `0x21f339...a83a74`; arbitrum `0x2e5973...47b77f`; arbitrum `0x32fa54...985b68`; arbitrum `0x4f69f6...b09598`; arbitrum `0x7f9434...beea52`; arbitrum `0xf68eb4...bd8c74` | ⚠️ Unaudited |
| StakedGmxReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x49c4e0...5378ba` | ⚠️ Unaudited |
| StrategicVestingClaims | operational_periphery | project_anchor | own_supporting | 1 | berachain | unit-237117 | `0x7efd08...061176` | ⚠️ Unaudited |
| TradeImpl | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: mantle `0xb7576f...699e7e`; arbitrum `0x1e0be7...cf56d7`; arbitrum `0x2fe6f5...127642`; arbitrum `0x7d157f...a19f58`; arbitrum `0xdce03d...39d379` | ⚠️ Unaudited |
| TransferImpl | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 5 deployments: mantle `0x21f683...a1cce8`; arbitrum `0x2f503b...f9ba90`; arbitrum `0x52d57f...41a5a9`; arbitrum `0xf691b8...4eefa4`; arbitrum `0xfed1f9...e259a4` | ⚠️ Unaudited |
| TransferProxy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-236840 | `0x07c28e...2624f8` | ⚠️ Unaudited |
| TransferProxy | unknown | project_anchor | own_supporting | 0 | mantle | unit-236998 | `0x958237...9af66c` | ⚠️ Unaudited |
| TransferProxy | unknown | project_anchor | own_supporting | 0 | base | unit-237070 | 2 deployments: base `0x07c28e...2624f8`; berachain `0x07c28e...2624f8` | ⚠️ Unaudited |
| TransferProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: arbitrum `0x00c2b5...f86459`; arbitrum `0xb1e10b...591980`; arbitrum `0xcb1b98...2af30d`; arbitrum `0xe6f14d...552728` | ⚠️ Unaudited |
| TransferProxy | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236963 | `0x86cfc6...92470d` | ⚠️ Unaudited |
| TransferProxy | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236980 | `0xe04f88...b1df5a` | ⚠️ Unaudited |
| TWAPPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: arbitrum `0x1093e0...5af851`; arbitrum `0x7dc900...d5e127`; arbitrum `0x8ddfa8...bf8b21`; arbitrum `0xad635c...9f9b1b`; arbitrum `0xcb1091...aedf47` | ⚠️ Unaudited |
| TWAPPriceOracleV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: arbitrum `0x289f70...41d645`; arbitrum `0x5fa8c3...2e9dec`; arbitrum `0x7c72f2...913787`; arbitrum `0x8979c6...5adacd`; arbitrum `0xcaa06e...472dda` | ⚠️ Unaudited |
| UpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x836b55...34e4e5` | ⚠️ Unaudited |
| USDMRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa9b377...7f6c6d` | ⚠️ Unaudited |
| VeArt | unknown | project_anchor | own_supporting | 0 | berachain | unit-237051 | `0x54267e...68a6f0` | ⚠️ Unaudited |
| VeExternalVesterImplementationV2 | operational_periphery | project_anchor | own_supporting | 1 | berachain | unit-237116 | `0x3e9b9a...2d2cec` | ⚠️ Unaudited |
| VeFeeCalculator | unknown | project_anchor | own_supporting | 0 | berachain | unit-237058 | `0xa7b2c7...917ce9` | ⚠️ Unaudited |
| VesterDiscountCalculatorV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8b43f6...d6a4da` | ⚠️ Unaudited |
| VesterExploder | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236949 | `0x2c9052...62cb62` | ⚠️ Unaudited |
| VesterExploder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc34c2f...7e503a` | ⚠️ Unaudited |
| VesterImplementation | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0xa8e31f...b2efcd`; arbitrum `0xbf08a2...c1bddc` | ⚠️ Unaudited |
| VesterImplementation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd086c3...91ba80` | ⚠️ Unaudited |
| VesterImplementationLibForV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x174860...833f16`; arbitrum `0xd2b57e...02e682` | ⚠️ Unaudited |
| VesterImplementationV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x2960c1...36157d`; arbitrum `0x36416f...d73a02` | ⚠️ Unaudited |
| VesterImplementationV2 | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-237106 | 2 deployments: arbitrum `0x531bc6...b63797`; arbitrum `0xdb3e6b...8172a5` | ⚠️ Unaudited |
| VestingClaims | operational_periphery | project_anchor | own_supporting | 1 | berachain | unit-237125 | `0x3a025c...c06c07` | ⚠️ Unaudited |
| VestingClaims | operational_periphery | project_anchor | own_supporting | 1 | berachain | unit-237119 | `0xbd225c...f20f7b` | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | project_anchor | own_supporting | 1 | berachain | unit-237118 | `0xcb86b7...e141d4` | ⚠️ Unaudited |
| WithdrawalImpl | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: mantle `0x77694d...457d40`; arbitrum `0x017e2a...0bc4ec`; arbitrum `0x43c2fd...4ab4ae`; arbitrum `0x8dc7c0...a88332`; arbitrum `0xa8c900...435da5` | ⚠️ Unaudited |
| WorldLibertyFinancial | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x372235...1a706c` | ⚠️ Unaudited |
| WorldLibertyFinancialSale | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x4a142d...f9c3ca`; ethereum `0xe217e1...afad10` | ⚠️ Unaudited |
| WorldLibertyFinancialSale | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x76ef8d...c51a1e`; ethereum `0xac2ea4...560c22` | ⚠️ Unaudited |
| WorldLibertyFinancialV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xda5e19...7cbef6` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (133)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | x-layer | unit-236941 | `0x7b61cb...72bc6b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | x-layer | unit-236942 | `0x836b55...34e4e5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | x-layer | unit-236943 | `0xf579b3...133d0f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | x-layer | unit-236944 | `0xf8b2c6...3d2dff` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-236865 | `0x02942c...4522cc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-236867 | `0x08e866...22fe96` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-236869 | `0x11a7e2...cb6bde` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-236871 | `0x14b83b...431c63` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-236872 | `0x1506f8...72b99a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-236873 | `0x17c57c...23f13d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-236875 | `0x227455...812141` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-236876 | `0x277118...382d7e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-236880 | `0x2e9be8...36cec4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-236881 | `0x3f0269...504923` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-236882 | `0x4232fc...ab708a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-236884 | `0x4723da...8f812d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-236886 | `0x52d7bc...fd05f9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-236889 | `0x64f7a2...39a249` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-236890 | `0x660bd8...d88255` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-236893 | `0x694f7b...f5c8b4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-236894 | `0x6b15c3...8403a2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-236895 | `0x6b68bd...2fe3ce` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-236896 | `0x6d35bf...1b0a57` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-236898 | `0x7b61cb...72bc6b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-236900 | `0x836b55...34e4e5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-236901 | `0x86cfc6...92470d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-236902 | `0x88a6d8...745866` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-236910 | `0xa5f4ce...76e2e9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-236911 | `0xa75c21...55a1d4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-236912 | `0xa8f7e7...7599f7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-236913 | `0xb3f81b...81d0c3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-236914 | `0xb3ff98...664e77` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-236915 | `0xb4f0eb...c4147d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-236918 | `0xb6b3ea...af4359` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-236919 | `0xbf3179...586075` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-236921 | `0xc28a4e...4f5faa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-236922 | `0xc2b66e...53de06` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-236923 | `0xc90e5d...b95787` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-236924 | `0xcb1b98...2af30d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-236925 | `0xcf359a...7bb11d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-236926 | `0xd44807...5036f3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-236927 | `0xd55afc...84d33e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-236932 | `0xdc94f0...9355fd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-236933 | `0xdfb6ba...87b1e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-236934 | `0xe09f85...4cdd45` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-236935 | `0xe4d345...3250b9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-236936 | `0xf0c0db...53f781` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-236937 | `0xf579b3...133d0f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-236938 | `0xf8b2c6...3d2dff` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-236939 | `0xfed1f9...e259a4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-236990 | `0x52d7bc...fd05f9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-236997 | `0x9101dd...ddd6b5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-237069 | `0x003ca2...c2b97d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-237071 | `0x0f38bf...fe09fd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-237072 | `0x145637...0f90b2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-237078 | `0x52d7bc...fd05f9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-237091 | `0xd6a31b...1187e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x003ca2...c2b97d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x14b83b...431c63` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236947 | `0x1506f8...72b99a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1c2a28...4b5edb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1ec7c8...c5ead5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x250b15...d6b5d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2c640b...24b77d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2f9ba4...2eeeaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x481ef8...843cbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4a1e8f...026cd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5231c3...8da12d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236955 | `0x52d7bc...fd05f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x567eff...257fa2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5b1e3b...3ea1ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x685369...47297a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6ff359...004da9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7656b1...0c6c63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x778cea...fb827c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236962 | `0x7b61cb...72bc6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7bec16...f7e09b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x801368...85f311` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x828f34...542811` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8a8021...d6f879` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8d741f...38ce1f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236966 | `0x8fa6d7...208451` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9101dd...ddd6b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x994ebc...cefa96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9c356e...dd5022` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaf462f...8c9329` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236972 | `0xb3f81b...81d0c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbf25e1...d503e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc61e4d...eb064e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcafd36...f1e2ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xccc43e...103d50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xce4513...76b568` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd956b4...f3702c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdf968d...98b3b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdfb6ba...87b1e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe66d14...984921` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe98928...222883` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xffb4b5...ec5c31` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-237009 | `0x003ca2...c2b97d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-237010 | `0x07c28e...2624f8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-237011 | `0x0f38bf...fe09fd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-237012 | `0x1506f8...72b99a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-237013 | `0x1b39f7...67e7bc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-237014 | `0x2adeaf...c5487b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-237015 | `0x2ae007...1d8d5d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-237016 | `0x465e51...7ae191` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-237017 | `0x52d7bc...fd05f9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-237018 | `0x58142b...617d2a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-237019 | `0x67567f...c30ba6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-237020 | `0x6d4013...232486` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-237021 | `0x7b61cb...72bc6b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-237022 | `0x8d178f...5c8870` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-237023 | `0x9e97d8...e7a0d3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-237024 | `0x9ecbbc...d28ca2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-237025 | `0xa150ef...1d636e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-237026 | `0xa75c21...55a1d4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-237027 | `0xa8f7e7...7599f7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-237028 | `0xb50bcd...fb928d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-237029 | `0xb6b3ea...af4359` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-237030 | `0xc06271...2b10bd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-237031 | `0xc2b66e...53de06` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-237032 | `0xcf359a...7bb11d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-237033 | `0xd6a31b...1187e6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-237034 | `0xd82100...c56cfa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-237035 | `0xdb168c...bf99d3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-237036 | `0xe09f85...4cdd45` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-237037 | `0xf579b3...133d0f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-237038 | `0xf8b2c6...3d2dff` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-237039 | `0xfee366...24daae` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-237043 | `0x0f38bf...fe09fd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-237045 | `0x1506f8...72b99a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-237047 | `0x2adeaf...c5487b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-237050 | `0x52d7bc...fd05f9` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Dolomite Margin - Cyfrin - 2023-08-23.pdf](https://github.com/dolomite-exchange/dolomite-margin/blob/master/docs/Dolomite%20Margin%20-%20Cyfrin%20-%202023-08-23.pdf) | Cyfrin | Audit | 2023-08 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 31 | high |
| [Dolomite Margin - SECBIT - 2021-08-02.pdf](https://github.com/dolomite-exchange/dolomite-margin/blob/master/docs/Dolomite%20Margin%20-%20SECBIT%20-%202021-08-02.pdf) | unknown | Audit | 2021-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [zokyo.io](https://zokyo.io/) | Guardian | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [www.openzeppelin.com/news/solo-margin-protocol-audit-30ac2aaf6b10](https://www.openzeppelin.com/news/solo-margin-protocol-audit-30ac2aaf6b10) | OpenZeppelin | Audit | 2019-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 17 | high |
| [dYdX Audit Report Bramah Systems.pdf](https://github.com/dolomite-exchange/dolomite-margin/blob/master/docs/dYdX%20Audit%20Report%20Bramah%20Systems.pdf) | OpenZeppelin | Audit | 2019-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 43 | high |
| [Dolomite Protocol Modules - GLP & Isolation Mode Report - Zokyo - 2023-04-19.pdf](https://github.com/dolomite-exchange/dolomite-margin-modules/blob/master/docs/Dolomite%20Protocol%20Modules%20-%20GLP%20%26%20Isolation%20Mode%20Report%20-%20Zokyo%20-%202023-04-19.pdf) | Guardian | Audit | 2023-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 18 | n/a |
| [2024-01-11_Dolomite.pdf](https://github.com/GuardianAudits/Audits/blob/main/Dolomite/2024-01-11_Dolomite.pdf) | Guardian | Audit | 2024-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 13 | n/a |
| [2025-04-24-cyfrin-dolomite-POLVaults-v2.0.pdf](https://github.com/Cyfrin/cyfrin-audit-reports/blob/main/reports/2025-04-24-cyfrin-dolomite-POLVaults-v2.0.pdf) | Cyfrin | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 21 | high |
| [pol_audit_scope.md](https://github.com/dolomite-exchange/dolomite-margin-modules/blob/master/pol_audit_scope.md) | Pol | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [2023-08-26-cyfrin-dolomite-margin.pdf](https://github.com/Cyfrin/cyfrin-audit-reports/blob/main/reports/2023-08-26-cyfrin-dolomite-margin.pdf) | Cyfrin | Audit | 2023-08 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 30 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13057] Dolomite Margin - Cyfrin - 2023-08-23.pdf — matched: Extracted contract names from scope listing in executive summary (page 3) and from findings. Audit date from cover page: August 26, 2023.
- [13058] Dolomite Margin - SECBIT - 2021-08-02.pdf — no match: All contracts listed in the 'Contract List' table under section 2.2 are explicitly in scope. The audit date is from the report header.
- [13059] zokyo.io — no match: The provided text is a marketing page for Zokyo's services, not an actual audit report. No contracts, scope, or audit date are present.
- [13060] www.openzeppelin.com/news/solo-margin-protocol-audit-30ac2aaf6b10 — no match: Audit report for Solo Margin Protocol by dYdX. Scope is ./contracts/protocol/ folder. All contracts mentioned in the report are listed.
- [13061] dYdX Audit Report Bramah Systems.pdf — no match: All .sol files listed in the directory structure are in scope. Audit date from report delivery date.
- [13062] Dolomite Protocol Modules - GLP & Isolation Mode Report - Zokyo - 2023-04-19.pdf — no match: No reason recorded
- [13063] 2024-01-11_Dolomite.pdf — no match: No reason recorded
- [13064] 2025-04-24-cyfrin-dolomite-POLVaults-v2.0.pdf — no match: All contracts listed in the Audit Scope section (page 3) were extracted. The audit date is from the cover page: April 24, 2025.
- [13065] pol_audit_scope.md — no match: Scope section lists packages/berachain/contracts/* (which likely contains multiple contracts but only POLIsolationModeVault is named) and GenericTraderProxyV2.sol. No specific contract names extracted from the wildcard path.
- [13066] 2023-08-26-cyfrin-dolomite-margin.pdf — matched: Extracted contract names from scope listing in executive summary (page 3) and from findings. Audit date from cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Dolomite Margin - Cyfrin - 2023-08-23.pdf | DolomiteMargin | ambiguous — not counted | DolomiteMargin (alternative) `0x6bd780...409072` — deployed 2022-10-03 23:34:29+03 — liveness: live (code_present_context)<br>DolomiteMargin (alternative) `0xe6ef4f...917de8` — deployed 2024-04-28 17:07:30+03 — liveness: live (code_present_context)<br>DolomiteMargin (alternative) `0x003ca2...c2b97d` — deployed 2025-01-24 05:56:21+03 — liveness: live (code_present_context)<br>DolomiteMargin (alternative) `0x003ca2...c2b97d` — deployed 2025-06-21 19:11:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Dolomite Margin - Cyfrin - 2023-08-23.pdf | Storage | unmatched — not counted | — | mentioned in executive summary and findings | no |
| Dolomite Margin - Cyfrin - 2023-08-23.pdf | OperationImpl | unmatched — not counted | — | mentioned in findings M-5, L-6, I-3 | no |
| Dolomite Margin - Cyfrin - 2023-08-23.pdf | TradeImpl | unmatched — not counted | — | mentioned in findings M-3, I-3 | no |
| Dolomite Margin - Cyfrin - 2023-08-23.pdf | AdminImpl | unmatched — not counted | — | mentioned in findings M-2, M-4, L-5 | no |
| Dolomite Margin - Cyfrin - 2023-08-23.pdf | LiquidateOrVaporizeImpl | unmatched — not counted | — | mentioned in findings M-1, L-4, I-3 | no |
| Dolomite Margin - Cyfrin - 2023-08-23.pdf | CallImpl | own contract | CallImpl (selected) `0x6727fe...73cfdc` — deployed 2022-04-15 05:21:30+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Dolomite Margin - Cyfrin - 2023-08-23.pdf | Bits | unmatched — not counted | — | mentioned in finding L-1 | no |
| Dolomite Margin - Cyfrin - 2023-08-23.pdf | ChainlinkPriceOracleV1 | unmatched — not counted | — | mentioned in finding M-1 | no |
| Dolomite Margin - Cyfrin - 2023-08-23.pdf | BorrowPositionProxyV1 | ambiguous — not counted | BorrowPositionProxyV1 (alternative) `0x97a086...64b733` — deployed 2024-04-28 17:12:40+03 — liveness: live (current_address_book_code)<br>BorrowPositionProxyV1 (alternative) `0x67567f...c30ba6` — deployed 2024-12-18 04:54:23+03 — liveness: live (current_address_book_code)<br>BorrowPositionProxyV1 (alternative) `0x67567f...c30ba6` — deployed 2025-06-21 19:29:59+03 — liveness: live (current_address_book_code)<br>BorrowPositionProxyV1 (alternative) `0x67567f...c30ba6` — deployed 2025-01-24 06:02:10+03 — liveness: live (current_address_book_code)<br>UnnamedContract (alternative) `0xc28a4e...4f5faa` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Dolomite Margin - Cyfrin - 2023-08-23.pdf | BorrowPositionProxyV2 | ambiguous — not counted | UnnamedContract (alternative) `0xb3ff98...664e77` — liveness: live (current_address_book_code)<br>BorrowPositionProxyV2 (alternative) `0xc06271...2b10bd` — deployed 2025-06-21 19:30:11+03 — liveness: live (current_address_book_code)<br>BorrowPositionProxyV2 (alternative) `0xc06271...2b10bd` — deployed 2025-01-24 06:03:17+03 — liveness: live (current_address_book_code)<br>BorrowPositionProxyV2 (alternative) `0xc06271...2b10bd` — deployed 2024-12-18 04:54:29+03 — liveness: live (current_address_book_code)<br>BorrowPositionProxyV2 (alternative) `0x38e49a...4bf3a7` — deployed 2023-01-12 01:28:47+03 — liveness: live (current_address_book_code)<br>BorrowPositionProxyV2 (alternative) `0xe99a7e...9dd793` — deployed 2024-04-28 17:13:04+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Dolomite Margin - Cyfrin - 2023-08-23.pdf | DepositWithdrawalProxy | ambiguous — not counted | DepositWithdrawalProxy (alternative) `0x17c57c...23f13d` — deployed 2022-04-15 08:09:27+03 — liveness: live (current_address_book_code)<br>DepositWithdrawalProxy (alternative) `0xadb9d6...7b9594` — deployed 2022-12-01 23:16:14+03 — liveness: live (current_address_book_code)<br>UnnamedContract (alternative) `0xdfb6ba...87b1e8` — liveness: live (current_address_book_code)<br>DepositWithdrawalProxy (alternative) `0xd6a31b...1187e6` — deployed 2025-01-24 06:04:23+03 — liveness: live (current_address_book_code)<br>DepositWithdrawalProxy (alternative) `0xd6a31b...1187e6` — deployed 2025-06-21 19:30:47+03 — liveness: live (current_address_book_code)<br>DepositWithdrawalProxy (alternative) `0x1a3752...facca5` — deployed 2024-04-28 17:17:08+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Dolomite Margin - Cyfrin - 2023-08-23.pdf | GenericTraderProxyV1 | ambiguous — not counted | GenericTraderProxyV1 (alternative) `0x905f3a...f61d2b` — deployed 2023-12-29 03:49:56+03 — liveness: live (current_address_book_code)<br>GenericTraderProxyV1 (alternative) `0xb50bcd...fb928d` — deployed 2024-12-18 04:55:13+03 — liveness: live (current_address_book_code)<br>GenericTraderProxyV1 (alternative) `0xb50bcd...fb928d` — deployed 2025-01-24 06:08:53+03 — liveness: live (current_address_book_code)<br>UnnamedContract (alternative) `0x88a6d8...745866` — liveness: live (current_address_book_code)<br>GenericTraderProxyV1 (alternative) `0xd432c3...d2edab` — deployed 2024-08-12 09:24:48+03 — liveness: live (current_address_book_code)<br>GenericTraderProxyV1 (alternative) `0xb50bcd...fb928d` — deployed 2025-06-21 19:31:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Dolomite Margin - Cyfrin - 2023-08-23.pdf | GenericTraderProxyBase | unmatched — not counted | — | mentioned in finding I-4 | no |
| Dolomite Margin - Cyfrin - 2023-08-23.pdf | LiquidatorProxyV4WithGenericTrader | ambiguous — not counted | DepositWithdrawalProxy (alternative) `0x17c57c...23f13d` — deployed 2022-04-15 08:09:27+03 — liveness: live (current_address_book_code)<br>LiquidatorProxyV4WithGenericTrader (alternative) `0x22dd9f...084fc7` — deployed 2024-08-12 09:59:04+03 — liveness: live (current_address_book_code)<br>LiquidatorProxyV4WithGenericTrader (alternative) `0x2adeaf...c5487b` — deployed 2024-12-18 04:56:13+03 — liveness: live (current_address_book_code)<br>LiquidatorProxyV4WithGenericTrader (alternative) `0x2adeaf...c5487b` — deployed 2025-06-21 19:35:11+03 — liveness: live (current_address_book_code)<br>LiquidatorProxyV4WithGenericTrader (alternative) `0x349756...ab9cb3` — deployed 2023-12-29 04:13:42+03 — liveness: live (current_address_book_code)<br>UnnamedContract (alternative) `0x227455...812141` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Dolomite Margin - Cyfrin - 2023-08-23.pdf | MarginPositionRegistry | unmatched — not counted | — | listed in scope in executive summary | no |
| Dolomite Margin - Cyfrin - 2023-08-23.pdf | GettersImpl | unmatched — not counted | — | mentioned in appendix | no |
| Dolomite Margin - Cyfrin - 2023-08-23.pdf | Permission | unmatched — not counted | — | mentioned in appendix | no |
| Dolomite Margin - Cyfrin - 2023-08-23.pdf | Require | unmatched — not counted | — | mentioned in appendix | no |
| Dolomite Margin - Cyfrin - 2023-08-23.pdf | Cache | unmatched — not counted | — | mentioned in appendix | no |
| Dolomite Margin - Cyfrin - 2023-08-23.pdf | Token | unmatched — not counted | — | mentioned in appendix | no |
| Dolomite Margin - Cyfrin - 2023-08-23.pdf | Types | unmatched — not counted | — | mentioned in appendix | no |
| Dolomite Margin - Cyfrin - 2023-08-23.pdf | AccountActionLib | unmatched — not counted | — | mentioned in finding I-1 | no |
| Dolomite Margin - Cyfrin - 2023-08-23.pdf | SafeLiquidationCallback | unmatched — not counted | — | mentioned in finding L-4 | no |
| Dolomite Margin - Cyfrin - 2023-08-23.pdf | IPriceOracle | unmatched — not counted | — | mentioned in finding M-1 | no |
| Dolomite Margin - Cyfrin - 2023-08-23.pdf | IChainlinkAggregator | unmatched — not counted | — | mentioned in finding M-1 | no |
| Dolomite Margin - Cyfrin - 2023-08-23.pdf | IOracleSentinel | unmatched — not counted | — | mentioned in finding M-1 | no |
| Dolomite Margin - Cyfrin - 2023-08-23.pdf | IAutoTrader | unmatched — not counted | — | mentioned in finding L-6 | no |
| Dolomite Margin - Cyfrin - 2023-08-23.pdf | IIsolationModeUnwrapperTrader | unmatched — not counted | — | mentioned in finding I-4 | no |
| Dolomite Margin - Cyfrin - 2023-08-23.pdf | IIsolationModeWrapperTrader | unmatched — not counted | — | mentioned in finding I-4 | no |
| Dolomite Margin - Cyfrin - 2023-08-23.pdf | IIsolationModeToken | unmatched — not counted | — | mentioned in finding I-4 | no |
| Dolomite Margin - Cyfrin - 2023-08-23.pdf | IExpiry | unmatched — not counted | — | mentioned in appendix | no |
| Dolomite Margin - SECBIT - 2021-08-02.pdf | DolomiteAmmRouterProxy | unmatched — not counted | — | listed in scope table | no |
| Dolomite Margin - SECBIT - 2021-08-02.pdf | LiquidatorProxyV1WithAmmForSoloMargin | unmatched — not counted | — | listed in scope table | no |
| Dolomite Margin - SECBIT - 2021-08-02.pdf | TransferProxy | ambiguous — not counted | TransferProxy (alternative) `0x07c28e...2624f8` — deployed 2025-01-24 06:01:00+03 — liveness: live (current_address_book_code)<br>TransferProxy (alternative) `0x07c28e...2624f8` — deployed 2024-12-18 04:54:15+03 — liveness: live (current_address_book_code)<br>UnnamedContract (alternative) `0xd55afc...84d33e` — liveness: live (current_address_book_code)<br>TransferProxy (alternative) `0x07c28e...2624f8` — deployed 2025-06-21 19:29:47+03 — liveness: live (current_address_book_code)<br>TransferProxy (alternative) `0x86cfc6...92470d` — deployed 2022-04-11 09:56:49+03 — liveness: live (current_address_book_code)<br>TransferProxy (alternative) `0x958237...9af66c` — deployed 2024-04-28 17:12:10+03 — liveness: live (current_address_book_code)<br>TransferProxy (alternative) `0xe04f88...b1df5a` — deployed 2022-10-03 23:42:28+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Dolomite Margin - SECBIT - 2021-08-02.pdf | SimpleFeeOwner | unmatched — not counted | — | listed in scope table | no |
| Dolomite Margin - SECBIT - 2021-08-02.pdf | UniswapV2ERC20 | unmatched — not counted | — | listed in scope table | no |
| Dolomite Margin - SECBIT - 2021-08-02.pdf | UniswapV2Factory | unmatched — not counted | — | listed in scope table | no |
| Dolomite Margin - SECBIT - 2021-08-02.pdf | UniswapV2Pair | unmatched — not counted | — | listed in scope table | no |
| www.openzeppelin.com/news/solo-margin-protocol-audit-30ac2aaf6b10 | Admin | unmatched — not counted | — | mentioned in report | no |
| www.openzeppelin.com/news/solo-margin-protocol-audit-30ac2aaf6b10 | AdminImpl | unmatched — not counted | — | mentioned in report | no |
| www.openzeppelin.com/news/solo-margin-protocol-audit-30ac2aaf6b10 | Getters | unmatched — not counted | — | mentioned in report | no |
| www.openzeppelin.com/news/solo-margin-protocol-audit-30ac2aaf6b10 | Storage | unmatched — not counted | — | mentioned in report | no |
| www.openzeppelin.com/news/solo-margin-protocol-audit-30ac2aaf6b10 | Cache | unmatched — not counted | — | mentioned in report | no |
| www.openzeppelin.com/news/solo-margin-protocol-audit-30ac2aaf6b10 | OperationImpl | unmatched — not counted | — | mentioned in report | no |
| www.openzeppelin.com/news/solo-margin-protocol-audit-30ac2aaf6b10 | Token | unmatched — not counted | — | mentioned in report | no |
| www.openzeppelin.com/news/solo-margin-protocol-audit-30ac2aaf6b10 | Require | unmatched — not counted | — | mentioned in report | no |
| www.openzeppelin.com/news/solo-margin-protocol-audit-30ac2aaf6b10 | ReentrancyGuard | unmatched — not counted | — | mentioned in report | no |
| www.openzeppelin.com/news/solo-margin-protocol-audit-30ac2aaf6b10 | Monetary | unmatched — not counted | — | mentioned in report | no |
| www.openzeppelin.com/news/solo-margin-protocol-audit-30ac2aaf6b10 | Decimal | unmatched — not counted | — | mentioned in report | no |
| www.openzeppelin.com/news/solo-margin-protocol-audit-30ac2aaf6b10 | Math | unmatched — not counted | — | mentioned in report | no |
| www.openzeppelin.com/news/solo-margin-protocol-audit-30ac2aaf6b10 | Types | unmatched — not counted | — | mentioned in report | no |
| www.openzeppelin.com/news/solo-margin-protocol-audit-30ac2aaf6b10 | Time | unmatched — not counted | — | mentioned in report | no |
| www.openzeppelin.com/news/solo-margin-protocol-audit-30ac2aaf6b10 | Actions | unmatched — not counted | — | mentioned in report | no |
| www.openzeppelin.com/news/solo-margin-protocol-audit-30ac2aaf6b10 | SoloMargin | unmatched — not counted | — | mentioned in report | no |
| www.openzeppelin.com/news/solo-margin-protocol-audit-30ac2aaf6b10 | IErc20 | unmatched — not counted | — | mentioned in report | no |
| dYdX Audit Report Bramah Systems.pdf | Migrations | unmatched — not counted | — | listed in directory structure | no |
| dYdX Audit Report Bramah Systems.pdf | OnlySolo | unmatched — not counted | — | listed in directory structure | no |
| dYdX Audit Report Bramah Systems.pdf | PayableProxyForSoloMargin | unmatched — not counted | — | listed in directory structure | no |
| dYdX Audit Report Bramah Systems.pdf | Expiry | ambiguous — not counted | Expiry (alternative) `0x2ae007...1d8d5d` — deployed 2025-01-24 06:06:37+03 — liveness: live (code_present_context)<br>Expiry (alternative) `0x2ae007...1d8d5d` — deployed 2025-06-21 19:31:23+03 — liveness: live (code_present_context)<br>Expiry (alternative) `0x6df6db...889a25` — deployed 2024-04-28 17:17:30+03 — liveness: live (code_present_context)<br>Expiry (alternative) `0xdec1ae...973bea` — deployed 2022-10-03 23:42:39+03 — liveness: live (code_present_context)<br>Expiry (alternative) `0x2ae007...1d8d5d` — deployed 2024-12-18 04:54:51+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| dYdX Audit Report Bramah Systems.pdf | Admin | unmatched — not counted | — | listed in directory structure | no |
| dYdX Audit Report Bramah Systems.pdf | Getters | unmatched — not counted | — | listed in directory structure | no |
| dYdX Audit Report Bramah Systems.pdf | Operation | unmatched — not counted | — | listed in directory structure | no |
| dYdX Audit Report Bramah Systems.pdf | Permission | unmatched — not counted | — | listed in directory structure | no |
| dYdX Audit Report Bramah Systems.pdf | SoloMargin | unmatched — not counted | — | listed in directory structure | no |
| dYdX Audit Report Bramah Systems.pdf | State | unmatched — not counted | — | listed in directory structure | no |
| dYdX Audit Report Bramah Systems.pdf | AdminImpl | unmatched — not counted | — | listed in directory structure | no |
| dYdX Audit Report Bramah Systems.pdf | OperationImpl | unmatched — not counted | — | listed in directory structure | no |
| dYdX Audit Report Bramah Systems.pdf | IAutoTrader | unmatched — not counted | — | listed in directory structure | no |
| dYdX Audit Report Bramah Systems.pdf | ICallee | unmatched — not counted | — | listed in directory structure | no |
| dYdX Audit Report Bramah Systems.pdf | IErc20 | unmatched — not counted | — | listed in directory structure | no |
| dYdX Audit Report Bramah Systems.pdf | IExchangeWrapper | unmatched — not counted | — | listed in directory structure | no |
| dYdX Audit Report Bramah Systems.pdf | IInterestSetter | unmatched — not counted | — | listed in directory structure | no |
| dYdX Audit Report Bramah Systems.pdf | IPriceOracle | unmatched — not counted | — | listed in directory structure | no |
| dYdX Audit Report Bramah Systems.pdf | Account | unmatched — not counted | — | listed in directory structure | no |
| dYdX Audit Report Bramah Systems.pdf | Actions | unmatched — not counted | — | listed in directory structure | no |
| dYdX Audit Report Bramah Systems.pdf | Decimal | unmatched — not counted | — | listed in directory structure | no |
| dYdX Audit Report Bramah Systems.pdf | Events | unmatched — not counted | — | listed in directory structure | no |
| dYdX Audit Report Bramah Systems.pdf | Exchange | unmatched — not counted | — | listed in directory structure | no |
| dYdX Audit Report Bramah Systems.pdf | Interest | unmatched — not counted | — | listed in directory structure | no |
| dYdX Audit Report Bramah Systems.pdf | Math | unmatched — not counted | — | listed in directory structure | no |
| dYdX Audit Report Bramah Systems.pdf | Monetary | unmatched — not counted | — | listed in directory structure | no |
| dYdX Audit Report Bramah Systems.pdf | Require | unmatched — not counted | — | listed in directory structure | no |
| dYdX Audit Report Bramah Systems.pdf | Storage | unmatched — not counted | — | listed in directory structure | no |
| dYdX Audit Report Bramah Systems.pdf | Time | unmatched — not counted | — | listed in directory structure | no |
| dYdX Audit Report Bramah Systems.pdf | Token | unmatched — not counted | — | listed in directory structure | no |
| dYdX Audit Report Bramah Systems.pdf | Types | unmatched — not counted | — | listed in directory structure | no |
| dYdX Audit Report Bramah Systems.pdf | ErroringOmiseToken | unmatched — not counted | — | listed in directory structure | no |
| dYdX Audit Report Bramah Systems.pdf | ErroringToken | unmatched — not counted | — | listed in directory structure | no |
| dYdX Audit Report Bramah Systems.pdf | OmiseToken | unmatched — not counted | — | listed in directory structure | no |
| dYdX Audit Report Bramah Systems.pdf | TestAutoTrader | unmatched — not counted | — | listed in directory structure | no |
| dYdX Audit Report Bramah Systems.pdf | TestCallee | unmatched — not counted | — | listed in directory structure | no |
| dYdX Audit Report Bramah Systems.pdf | TestInterestSetter | unmatched — not counted | — | listed in directory structure | no |
| dYdX Audit Report Bramah Systems.pdf | TestPriceOracle | unmatched — not counted | — | listed in directory structure | no |
| dYdX Audit Report Bramah Systems.pdf | TestSoloMargin | unmatched — not counted | — | listed in directory structure | no |
| dYdX Audit Report Bramah Systems.pdf | TestToken | unmatched — not counted | — | listed in directory structure | no |
| dYdX Audit Report Bramah Systems.pdf | TokenA | unmatched — not counted | — | listed in directory structure | no |
| dYdX Audit Report Bramah Systems.pdf | TokenB | unmatched — not counted | — | listed in directory structure | no |
| dYdX Audit Report Bramah Systems.pdf | TokenC | unmatched — not counted | — | listed in directory structure | no |
| Dolomite Protocol Modules - GLP & Isolation Mode Report - Zokyo - 2023-04-19.pdf | AccountActionLib | unmatched — not counted | — | — | no |
| Dolomite Protocol Modules - GLP & Isolation Mode Report - Zokyo - 2023-04-19.pdf | AccountBalanceLib | unmatched — not counted | — | — | no |
| Dolomite Protocol Modules - GLP & Isolation Mode Report - Zokyo - 2023-04-19.pdf | DolomiteMarginMath | unmatched — not counted | — | — | no |
| Dolomite Protocol Modules - GLP & Isolation Mode Report - Zokyo - 2023-04-19.pdf | GLPMathLib | unmatched — not counted | — | — | no |
| Dolomite Protocol Modules - GLP & Isolation Mode Report - Zokyo - 2023-04-19.pdf | GLPPriceOracleV1 | unmatched — not counted | — | — | no |
| Dolomite Protocol Modules - GLP & Isolation Mode Report - Zokyo - 2023-04-19.pdf | GLPUnwrapperTraderV1 | unmatched — not counted | — | — | no |
| Dolomite Protocol Modules - GLP & Isolation Mode Report - Zokyo - 2023-04-19.pdf | GLPWrappedTokenUserVaultFactory | unmatched — not counted | — | — | no |
| Dolomite Protocol Modules - GLP & Isolation Mode Report - Zokyo - 2023-04-19.pdf | GLPWrappedTokenUserVaultV1 | unmatched — not counted | — | — | no |
| Dolomite Protocol Modules - GLP & Isolation Mode Report - Zokyo - 2023-04-19.pdf | GLPWrapperTraderV1 | unmatched — not counted | — | — | no |
| Dolomite Protocol Modules - GLP & Isolation Mode Report - Zokyo - 2023-04-19.pdf | GmxRegistryV1 | unmatched — not counted | — | — | no |
| Dolomite Protocol Modules - GLP & Isolation Mode Report - Zokyo - 2023-04-19.pdf | OnlyDolomiteMargin | unmatched — not counted | — | — | no |
| Dolomite Protocol Modules - GLP & Isolation Mode Report - Zokyo - 2023-04-19.pdf | ProxyContractHelpers | unmatched — not counted | — | — | no |
| Dolomite Protocol Modules - GLP & Isolation Mode Report - Zokyo - 2023-04-19.pdf | Require | unmatched — not counted | — | — | no |
| Dolomite Protocol Modules - GLP & Isolation Mode Report - Zokyo - 2023-04-19.pdf | WrappedTokenUserVaultFactory | unmatched — not counted | — | — | no |
| Dolomite Protocol Modules - GLP & Isolation Mode Report - Zokyo - 2023-04-19.pdf | WrappedTokenUserVaultUnwrapper | unmatched — not counted | — | — | no |
| Dolomite Protocol Modules - GLP & Isolation Mode Report - Zokyo - 2023-04-19.pdf | WrappedTokenUserVaultUpgradeableProxy | unmatched — not counted | — | — | no |
| Dolomite Protocol Modules - GLP & Isolation Mode Report - Zokyo - 2023-04-19.pdf | WrappedTokenUserVaultV1 | unmatched — not counted | — | — | no |
| Dolomite Protocol Modules - GLP & Isolation Mode Report - Zokyo - 2023-04-19.pdf | WrappedTokenUserVaultWrapperTrader | unmatched — not counted | — | — | no |
| 2024-01-11_Dolomite.pdf | AsyncIsolationModeTraderBase | unmatched — not counted | — | — | no |
| 2024-01-11_Dolomite.pdf | AsyncIsolationModeUnwrapperTraderImpl | unmatched — not counted | — | — | no |
| 2024-01-11_Dolomite.pdf | FreezableIsolationModeVaultFactory | unmatched — not counted | — | — | no |
| 2024-01-11_Dolomite.pdf | GenericTraderProxyBase | unmatched — not counted | — | — | no |
| 2024-01-11_Dolomite.pdf | GmxV2IsolationModeTokenVaultV1 | unmatched — not counted | — | — | no |
| 2024-01-11_Dolomite.pdf | GmxV2IsolationModeUnwrapperTraderV2 | unmatched — not counted | — | — | no |
| 2024-01-11_Dolomite.pdf | GmxV2IsolationModeVaultFactory | unmatched — not counted | — | — | no |
| 2024-01-11_Dolomite.pdf | GmxV2IsolationModeWrapperTraderV2 | unmatched — not counted | — | — | no |
| 2024-01-11_Dolomite.pdf | GmxV2Library | unmatched — not counted | — | — | no |
| 2024-01-11_Dolomite.pdf | GmxV2MarketTokenPriceOracle | unmatched — not counted | — | — | no |
| 2024-01-11_Dolomite.pdf | GmxV2Registry | unmatched — not counted | — | — | no |
| 2024-01-11_Dolomite.pdf | IsolationModeTokenVaultV1WithFreezable | unmatched — not counted | — | — | no |
| 2024-01-11_Dolomite.pdf | UpgradeableAsyncIsolationModeWrapperTrader | unmatched — not counted | — | — | no |
| 2025-04-24-cyfrin-dolomite-POLVaults-v2.0.pdf | GenericTraderProxyBase | unmatched — not counted | — | listed in scope | no |
| 2025-04-24-cyfrin-dolomite-POLVaults-v2.0.pdf | GenericTraderProxyV2 | unmatched — not counted | — | listed in scope | no |
| 2025-04-24-cyfrin-dolomite-POLVaults-v2.0.pdf | GenericTraderProxyV2Lib | unmatched — not counted | — | listed in scope | no |
| 2025-04-24-cyfrin-dolomite-POLVaults-v2.0.pdf | BerachainRewardsRegistry | unmatched — not counted | — | listed in scope | no |
| 2025-04-24-cyfrin-dolomite-POLVaults-v2.0.pdf | IsolationModeTokenVaultV1 | unmatched — not counted | — | listed in scope | no |
| 2025-04-24-cyfrin-dolomite-POLVaults-v2.0.pdf | SimpleIsolationModeVaultFactory | unmatched — not counted | — | listed in scope | no |
| 2025-04-24-cyfrin-dolomite-POLVaults-v2.0.pdf | IsolationModeVaultFactory | unmatched — not counted | — | listed in scope | no |
| 2025-04-24-cyfrin-dolomite-POLVaults-v2.0.pdf | POLIsolationModeTokenVaultV1 | unmatched — not counted | — | listed in scope | no |
| 2025-04-24-cyfrin-dolomite-POLVaults-v2.0.pdf | POLIsolationModeVaultFactory | unmatched — not counted | — | listed in scope | no |
| 2025-04-24-cyfrin-dolomite-POLVaults-v2.0.pdf | POLIsolationModeTraderBaseV2 | unmatched — not counted | — | listed in scope | no |
| 2025-04-24-cyfrin-dolomite-POLVaults-v2.0.pdf | POLIsolationModeWrapperTraderV2 | unmatched — not counted | — | listed in scope | no |
| 2025-04-24-cyfrin-dolomite-POLVaults-v2.0.pdf | POLIsolationModeUnwrapperTraderV2 | unmatched — not counted | — | listed in scope | no |
| 2025-04-24-cyfrin-dolomite-POLVaults-v2.0.pdf | POLIsolationModeWrapperUpgradeableProxy | unmatched — not counted | — | listed in scope | no |
| 2025-04-24-cyfrin-dolomite-POLVaults-v2.0.pdf | POLIsolationModeUnwrapperUpgradeableProxy | unmatched — not counted | — | listed in scope | no |
| 2025-04-24-cyfrin-dolomite-POLVaults-v2.0.pdf | POLPriceOracleV2 | unmatched — not counted | — | listed in scope | no |
| 2025-04-24-cyfrin-dolomite-POLVaults-v2.0.pdf | InfraredBGTIsolationModeTokenVaultV1 | unmatched — not counted | — | listed in scope | no |
| 2025-04-24-cyfrin-dolomite-POLVaults-v2.0.pdf | InfraredBGTIsolationModeVaultFactory | unmatched — not counted | — | listed in scope | no |
| 2025-04-24-cyfrin-dolomite-POLVaults-v2.0.pdf | InfraredBGTMetaVault | unmatched — not counted | — | listed in scope | no |
| 2025-04-24-cyfrin-dolomite-POLVaults-v2.0.pdf | MetaVaultRewardReceiver | unmatched — not counted | — | listed in scope | no |
| 2025-04-24-cyfrin-dolomite-POLVaults-v2.0.pdf | MetaVaultRewardTokenFactory | unmatched — not counted | — | listed in scope | no |
| 2025-04-24-cyfrin-dolomite-POLVaults-v2.0.pdf | MetaVaultUpgradeableProxy | unmatched — not counted | — | listed in scope | no |
| pol_audit_scope.md | POLIsolationModeVault | unmatched — not counted | — | mentioned in scope as 'POL isolation mode token vaults' and 'POLIsolationModeVault' in text | no |
| pol_audit_scope.md | GenericTraderProxyV2 | unmatched — not counted | — | explicitly listed in scope | no |
| 2023-08-26-cyfrin-dolomite-margin.pdf | DolomiteMargin | ambiguous — not counted | DolomiteMargin (alternative) `0x6bd780...409072` — deployed 2022-10-03 23:34:29+03 — liveness: live (code_present_context)<br>DolomiteMargin (alternative) `0xe6ef4f...917de8` — deployed 2024-04-28 17:07:30+03 — liveness: live (code_present_context)<br>DolomiteMargin (alternative) `0x003ca2...c2b97d` — deployed 2025-01-24 05:56:21+03 — liveness: live (code_present_context)<br>DolomiteMargin (alternative) `0x003ca2...c2b97d` — deployed 2025-06-21 19:11:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2023-08-26-cyfrin-dolomite-margin.pdf | Storage | unmatched — not counted | — | mentioned in executive summary and findings | no |
| 2023-08-26-cyfrin-dolomite-margin.pdf | OperationImpl | unmatched — not counted | — | mentioned in findings M-5, L-6, I-3 | no |
| 2023-08-26-cyfrin-dolomite-margin.pdf | TradeImpl | unmatched — not counted | — | mentioned in findings M-3, I-3 | no |
| 2023-08-26-cyfrin-dolomite-margin.pdf | AdminImpl | unmatched — not counted | — | mentioned in findings M-2, M-4, L-5 | no |
| 2023-08-26-cyfrin-dolomite-margin.pdf | LiquidateOrVaporizeImpl | unmatched — not counted | — | mentioned in findings M-1, L-4, I-3 | no |
| 2023-08-26-cyfrin-dolomite-margin.pdf | CallImpl | own contract | CallImpl (selected) `0x6727fe...73cfdc` — deployed 2022-04-15 05:21:30+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-08-26-cyfrin-dolomite-margin.pdf | GettersImpl | unmatched — not counted | — | mentioned in appendix gas optimizations | no |
| 2023-08-26-cyfrin-dolomite-margin.pdf | Bits | unmatched — not counted | — | mentioned in finding L-1 | no |
| 2023-08-26-cyfrin-dolomite-margin.pdf | Require | unmatched — not counted | — | mentioned in appendix | no |
| 2023-08-26-cyfrin-dolomite-margin.pdf | Token | unmatched — not counted | — | mentioned in appendix | no |
| 2023-08-26-cyfrin-dolomite-margin.pdf | Types | unmatched — not counted | — | mentioned in appendix | no |
| 2023-08-26-cyfrin-dolomite-margin.pdf | Cache | unmatched — not counted | — | mentioned in appendix | no |
| 2023-08-26-cyfrin-dolomite-margin.pdf | Permission | unmatched — not counted | — | mentioned in appendix | no |
| 2023-08-26-cyfrin-dolomite-margin.pdf | ChainlinkPriceOracleV1 | unmatched — not counted | — | mentioned in finding M-1 | no |
| 2023-08-26-cyfrin-dolomite-margin.pdf | IPriceOracle | unmatched — not counted | — | mentioned in finding M-1 and appendix | no |
| 2023-08-26-cyfrin-dolomite-margin.pdf | IOracleSentinel | unmatched — not counted | — | mentioned in finding M-1 | no |
| 2023-08-26-cyfrin-dolomite-margin.pdf | BorrowPositionProxyV1 | ambiguous — not counted | BorrowPositionProxyV1 (alternative) `0x97a086...64b733` — deployed 2024-04-28 17:12:40+03 — liveness: live (current_address_book_code)<br>BorrowPositionProxyV1 (alternative) `0x67567f...c30ba6` — deployed 2024-12-18 04:54:23+03 — liveness: live (current_address_book_code)<br>BorrowPositionProxyV1 (alternative) `0x67567f...c30ba6` — deployed 2025-06-21 19:29:59+03 — liveness: live (current_address_book_code)<br>BorrowPositionProxyV1 (alternative) `0x67567f...c30ba6` — deployed 2025-01-24 06:02:10+03 — liveness: live (current_address_book_code)<br>UnnamedContract (alternative) `0xc28a4e...4f5faa` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2023-08-26-cyfrin-dolomite-margin.pdf | BorrowPositionProxyV2 | ambiguous — not counted | UnnamedContract (alternative) `0xb3ff98...664e77` — liveness: live (current_address_book_code)<br>BorrowPositionProxyV2 (alternative) `0xc06271...2b10bd` — deployed 2025-06-21 19:30:11+03 — liveness: live (current_address_book_code)<br>BorrowPositionProxyV2 (alternative) `0xc06271...2b10bd` — deployed 2025-01-24 06:03:17+03 — liveness: live (current_address_book_code)<br>BorrowPositionProxyV2 (alternative) `0xc06271...2b10bd` — deployed 2024-12-18 04:54:29+03 — liveness: live (current_address_book_code)<br>BorrowPositionProxyV2 (alternative) `0x38e49a...4bf3a7` — deployed 2023-01-12 01:28:47+03 — liveness: live (current_address_book_code)<br>BorrowPositionProxyV2 (alternative) `0xe99a7e...9dd793` — deployed 2024-04-28 17:13:04+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2023-08-26-cyfrin-dolomite-margin.pdf | DepositWithdrawalProxy | ambiguous — not counted | DepositWithdrawalProxy (alternative) `0x17c57c...23f13d` — deployed 2022-04-15 08:09:27+03 — liveness: live (current_address_book_code)<br>DepositWithdrawalProxy (alternative) `0xadb9d6...7b9594` — deployed 2022-12-01 23:16:14+03 — liveness: live (current_address_book_code)<br>UnnamedContract (alternative) `0xdfb6ba...87b1e8` — liveness: live (current_address_book_code)<br>DepositWithdrawalProxy (alternative) `0xd6a31b...1187e6` — deployed 2025-01-24 06:04:23+03 — liveness: live (current_address_book_code)<br>DepositWithdrawalProxy (alternative) `0xd6a31b...1187e6` — deployed 2025-06-21 19:30:47+03 — liveness: live (current_address_book_code)<br>DepositWithdrawalProxy (alternative) `0x1a3752...facca5` — deployed 2024-04-28 17:17:08+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2023-08-26-cyfrin-dolomite-margin.pdf | GenericTraderProxyV1 | ambiguous — not counted | GenericTraderProxyV1 (alternative) `0x905f3a...f61d2b` — deployed 2023-12-29 03:49:56+03 — liveness: live (current_address_book_code)<br>GenericTraderProxyV1 (alternative) `0xb50bcd...fb928d` — deployed 2024-12-18 04:55:13+03 — liveness: live (current_address_book_code)<br>GenericTraderProxyV1 (alternative) `0xb50bcd...fb928d` — deployed 2025-01-24 06:08:53+03 — liveness: live (current_address_book_code)<br>UnnamedContract (alternative) `0x88a6d8...745866` — liveness: live (current_address_book_code)<br>GenericTraderProxyV1 (alternative) `0xd432c3...d2edab` — deployed 2024-08-12 09:24:48+03 — liveness: live (current_address_book_code)<br>GenericTraderProxyV1 (alternative) `0xb50bcd...fb928d` — deployed 2025-06-21 19:31:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2023-08-26-cyfrin-dolomite-margin.pdf | GenericTraderProxyBase | unmatched — not counted | — | mentioned in finding I-4 | no |
| 2023-08-26-cyfrin-dolomite-margin.pdf | LiquidatorProxyV4WithGenericTrader | ambiguous — not counted | DepositWithdrawalProxy (alternative) `0x17c57c...23f13d` — deployed 2022-04-15 08:09:27+03 — liveness: live (current_address_book_code)<br>LiquidatorProxyV4WithGenericTrader (alternative) `0x22dd9f...084fc7` — deployed 2024-08-12 09:59:04+03 — liveness: live (current_address_book_code)<br>LiquidatorProxyV4WithGenericTrader (alternative) `0x2adeaf...c5487b` — deployed 2024-12-18 04:56:13+03 — liveness: live (current_address_book_code)<br>LiquidatorProxyV4WithGenericTrader (alternative) `0x2adeaf...c5487b` — deployed 2025-06-21 19:35:11+03 — liveness: live (current_address_book_code)<br>LiquidatorProxyV4WithGenericTrader (alternative) `0x349756...ab9cb3` — deployed 2023-12-29 04:13:42+03 — liveness: live (current_address_book_code)<br>UnnamedContract (alternative) `0x227455...812141` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2023-08-26-cyfrin-dolomite-margin.pdf | MarginPositionRegistry | unmatched — not counted | — | listed in scope | no |
| 2023-08-26-cyfrin-dolomite-margin.pdf | IIsolationModeUnwrapperTrader | unmatched — not counted | — | mentioned in finding I-4 | no |
| 2023-08-26-cyfrin-dolomite-margin.pdf | IIsolationModeWrapperTrader | unmatched — not counted | — | mentioned in finding I-4 | no |
| 2023-08-26-cyfrin-dolomite-margin.pdf | IIsolationModeToken | unmatched — not counted | — | mentioned in finding I-4 | no |
| 2023-08-26-cyfrin-dolomite-margin.pdf | IAutoTrader | unmatched — not counted | — | mentioned in finding L-6 | no |
| 2023-08-26-cyfrin-dolomite-margin.pdf | IExpiry | unmatched — not counted | — | mentioned in appendix | no |
| 2023-08-26-cyfrin-dolomite-margin.pdf | SafeLiquidationCallback | unmatched — not counted | — | mentioned in finding L-4 | no |
| 2023-08-26-cyfrin-dolomite-margin.pdf | AccountActionLib | unmatched — not counted | — | mentioned in finding I-1 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| mantle | `0x3f0269...504923` | AlwaysZeroInterestSetter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x37b6ff...de2168` | AlwaysZeroInterestSetter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xb18b8b...03fb1f` | ArbitrumMultiCall | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xe43638...f5a099` | BorrowPositionProxy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x67567f...c30ba6` | BorrowPositionProxyV1 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x97a086...64b733` | BorrowPositionProxyV1 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x67567f...c30ba6` | BorrowPositionProxyV1 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc06271...2b10bd` | BorrowPositionProxyV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0xe99a7e...9dd793` | BorrowPositionProxyV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xc06271...2b10bd` | BorrowPositionProxyV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x38e49a...4bf3a7` | BorrowPositionProxyV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf579b3...133d0f` | BorrowPositionRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xf579b3...133d0f` | BorrowPositionRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xf579b3...133d0f` | BorrowPositionRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0xf579b3...133d0f` | BorrowPositionRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xb02808...7db34e` | ChaosLabsPriceOracleV3 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa8f7e7...7599f7` | CREATE3Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd6a31b...1187e6` | DepositWithdrawalProxy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x1a3752...facca5` | DepositWithdrawalProxy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x17c57c...23f13d` | DepositWithdrawalProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xadb9d6...7b9594` | DepositWithdrawalProxy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0xd6a31b...1187e6` | DepositWithdrawalProxy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf8b2c6...3d2dff` | DepositWithdrawalRouter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0xf8b2c6...3d2dff` | DepositWithdrawalRouter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xf8b2c6...3d2dff` | DepositWithdrawalRouter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xf8b2c6...3d2dff` | DepositWithdrawalRouter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0xf8b2c6...3d2dff` | DepositWithdrawalRouter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x0f8100...39a654` | DOLO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0xc90e5d...b95787` | DolomiteAccountRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xfee366...24daae` | DolomiteAccountRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xc777fb...d59c63` | DolomiteAccountRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0xfee366...24daae` | DolomiteAccountRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x003ca2...c2b97d` | DolomiteMargin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0xe6ef4f...917de8` | DolomiteMargin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x6bd780...409072` | DolomiteMargin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x003ca2...c2b97d` | DolomiteMargin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9e97d8...e7a0d3` | DolomiteMigrator | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x481ef8...843cbd` | DolomiteMigrator | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x9e97d8...e7a0d3` | DolomiteMigrator | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xd5545e...f5afc9` | DolomiteMigrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0xcf359a...7bb11d` | DolomiteOwner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcf359a...7bb11d` | DolomiteOwnerV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0xcf359a...7bb11d` | DolomiteOwnerV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc2b66e...53de06` | DolomiteOwnerV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0xc2b66e...53de06` | DolomiteOwnerV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0f38bf...fe09fd` | DolomiteRegistryImplementation | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x7bec16...f7e09b` | DolomiteRegistryImplementation | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x2a059d...8c2404` | DolomiteRegistryImplementation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0f8100...39a654` | DOLOWithOwnable | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6d4013...232486` | EventEmitterRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x778cea...fb827c` | EventEmitterRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x6d4013...232486` | EventEmitterRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x4bff12...18cc2f` | EventEmitterRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x6d4013...232486` | EventEmitterRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2ae007...1d8d5d` | Expiry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x6df6db...889a25` | Expiry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x2ae007...1d8d5d` | Expiry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xdec1ae...973bea` | Expiry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1b39f7...67e7bc` | ExpiryProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x075a06...fecc65` | ExpiryProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x1b39f7...67e7bc` | ExpiryProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x40899e...730b00` | ExpiryProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb50bcd...fb928d` | GenericTraderProxyV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0xd432c3...d2edab` | GenericTraderProxyV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xb50bcd...fb928d` | GenericTraderProxyV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x905f3a...f61d2b` | GenericTraderProxyV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7b61cb...72bc6b` | GenericTraderRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x7b61cb...72bc6b` | GenericTraderRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x7b61cb...72bc6b` | GenericTraderRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8d178f...5c8870` | IsolationModeFreezableLiquidatorProxy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x8d178f...5c8870` | IsolationModeFreezableLiquidatorProxy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x76ac55...a33e44` | IsolationModeFreezableLiquidatorProxy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xadea94...d16026` | IsolationModeFreezableLiquidatorProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x8d178f...5c8870` | IsolationModeFreezableLiquidatorProxy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd82100...c56cfa` | LiquidatorAssetRegistry | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x7b6d28...2d69b5` | LiquidatorAssetRegistry | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x10d987...f44fac` | LiquidatorAssetRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xdb168c...bf99d3` | LiquidatorProxyV1 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x8e6b0e...073a71` | LiquidatorProxyV1 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xdb168c...bf99d3` | LiquidatorProxyV1 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x8c6e33...fa715a` | LiquidatorProxyV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2adeaf...c5487b` | LiquidatorProxyV4WithGenericTrader | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x22dd9f...084fc7` | LiquidatorProxyV4WithGenericTrader | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x349756...ab9cb3` | LiquidatorProxyV4WithGenericTrader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x1506f8...72b99a` | LiquidatorProxyV5 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x1506f8...72b99a` | LiquidatorProxyV5 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x02e513...c89543` | ODOLO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x2cdbb2...e67f3c` | OdosAggregatorTrader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0xd88f47...9b99ef` | OptionAirdrop | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa150ef...1d636e` | OracleAggregatorV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x2c640b...24b77d` | OracleAggregatorV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xa150ef...1d636e` | OracleAggregatorV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xbfca44...d06ca0` | OracleAggregatorV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xd991d9...92383a` | ParaswapAggregatorTraderV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x52d7bc...fd05f9` | PartiallyDelayedMultiSig | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xfee366...24daae` | RegistryProxy | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0xa3f079...838bc9` | RegularAirdrop | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x66cd7d...73db67` | RewardsDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x79e6e9...a8a026` | RollingClaims | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x7b61cb...72bc6b` | RouterProxy | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0xf579b3...133d0f` | RouterProxy | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x7efd08...061176` | StrategicVestingClaims | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x07c28e...2624f8` | TransferProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x958237...9af66c` | TransferProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x07c28e...2624f8` | TransferProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x86cfc6...92470d` | TransferProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xe04f88...b1df5a` | TransferProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x54267e...68a6f0` | VeArt | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x3e9b9a...2d2cec` | VeExternalVesterImplementationV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0xa7b2c7...917ce9` | VeFeeCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x2c9052...62cb62` | VesterExploder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x531bc6...b63797` | VesterImplementationV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x3a025c...c06c07` | VestingClaims | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0xbd225c...f20f7b` | VestingClaims | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0xcb86b7...e141d4` | VotingEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 268 |
| upstream | 14 |
| standard_library | 6 |
| needs_review | 133 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 8
- Inherited remapped matches: 0
- Address-book scope dispositions: 2 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 14 ambiguous, 168 unmatched
- Matched-own operational status: 2 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=6, low=1, medium=1
- Match method counts: unique_name=2

Zero-match audit list:

- [13058] Dolomite Margin - SECBIT - 2021-08-02.pdf
- [13059] zokyo.io
- [13060] www.openzeppelin.com/news/solo-margin-protocol-audit-30ac2aaf6b10
- [13061] dYdX Audit Report Bramah Systems.pdf
- [13062] Dolomite Protocol Modules - GLP & Isolation Mode Report - Zokyo - 2023-04-19.pdf
- [13063] 2024-01-11_Dolomite.pdf
- [13064] 2025-04-24-cyfrin-dolomite-POLVaults-v2.0.pdf
- [13065] pol_audit_scope.md

Fork inheritance lineage and inherited audits are included when available.
