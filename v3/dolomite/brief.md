# Agentic Audit Brief: Dolomite

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 2 audit(s)
- Eligible audit results: 10 (2 matched; 8 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Dolomite (`dolomite`)
- Website: [https://dolomite.io](https://dolomite.io)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, berachain, ethereum, ink, mantle, polygon-zkevm, x-layer
- Contract surface: 229 unique implementations (260 raw deployments)
- Coverage basis: 1/132 confirmed own live verified implementations (0.8%); conservative 0.8% with 0 needs-review implementation(s)
- DeFi Llama TVL: $751,365,859.50
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

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

- Indexed contracts: 164; live-surface contracts included: 164 (163 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 260/294 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/132 (0.8%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 229 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 38
- Deployed-live implementations: 229 of 229 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 1/132
- Verified + Unaudited implementations: 131
- Verified by bytecode match: 0
- Unverified implementations: 97
- Unique implementations: 229
- Raw deployments: 260
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
| Cyfrin | Tier 1 | 1 | 0.8% | 2025-04 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CallImpl | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236959 | `0x6727fe...73cfdc` | ✅ Audited |

### ⚠️ Verified + Unaudited (131)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AlwaysZeroInterestSetter | unknown | project_anchor | own_supporting | 0 | mantle | unit-236988 | 4 deployments: ethereum `0x9ecbbc...d28ca2`; mantle `0x3f0269...504923`; base `0x9ecbbc...d28ca2`; berachain `0x9ecbbc...d28ca2` | ⚠️ Unaudited |
| AlwaysZeroInterestSetter | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236952 | `0x37b6ff...de2168` | ⚠️ Unaudited |
| ArbitrumMultiCall | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236971 | `0xb18b8b...03fb1f` | ⚠️ Unaudited |
| BorrowPositionProxy | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-236982 | `0xe43638...f5a099` | ⚠️ Unaudited |
| BorrowPositionProxyV1 | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-236848 | `0x67567f...c30ba6` | ⚠️ Unaudited |
| BorrowPositionProxyV1 | core_logic | project_anchor | own_supporting | 0 | mantle | unit-236999 | `0x97a086...64b733` | ⚠️ Unaudited |
| BorrowPositionProxyV1 | core_logic | project_anchor | own_supporting | 0 | base | unit-237080 | 2 deployments: base `0x67567f...c30ba6`; berachain `0x67567f...c30ba6` | ⚠️ Unaudited |
| BorrowPositionProxyV2 | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-236856 | `0xc06271...2b10bd` | ⚠️ Unaudited |
| BorrowPositionProxyV2 | core_logic | project_anchor | own_supporting | 0 | mantle | unit-237006 | `0xe99a7e...9dd793` | ⚠️ Unaudited |
| BorrowPositionProxyV2 | core_logic | project_anchor | own_supporting | 0 | base | unit-237088 | 2 deployments: base `0xc06271...2b10bd`; berachain `0xc06271...2b10bd` | ⚠️ Unaudited |
| BorrowPositionProxyV2 | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-236953 | `0x38e49a...4bf3a7` | ⚠️ Unaudited |
| BorrowPositionRouter | adapter | project_anchor | own_supporting | 1 | ethereum | unit-237098 | `0xf579b3...133d0f` | ⚠️ Unaudited |
| BorrowPositionRouter | adapter | project_anchor | own_supporting | 1 | base | unit-237131 | `0xf579b3...133d0f` | ⚠️ Unaudited |
| BorrowPositionRouter | adapter | project_anchor | own_supporting | 1 | arbitrum | unit-237105 | `0xf579b3...133d0f` | ⚠️ Unaudited |
| BorrowPositionRouter | adapter | project_anchor | own_supporting | 1 | berachain | unit-237122 | `0xf579b3...133d0f` | ⚠️ Unaudited |
| ChainlinkPriceOracleV3 | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-236845 | `0x465e51...7ae191` | ⚠️ Unaudited |
| ChainlinkPriceOracleV3 | operational_periphery | project_anchor | own_supporting | 0 | base | unit-237077 | 2 deployments: base `0x465e51...7ae191`; berachain `0x465e51...7ae191` | ⚠️ Unaudited |
| ChaosLabsPriceOracleV3 | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-236970 | `0xb02808...7db34e` | ⚠️ Unaudited |
| ChroniclePriceOracleV3 | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-236855 | `0xb6b3ea...af4359` | ⚠️ Unaudited |
| ChroniclePriceOracleV3 | operational_periphery | project_anchor | own_supporting | 0 | mantle | unit-237004 | `0xe4d345...3250b9` | ⚠️ Unaudited |
| ChroniclePriceOracleV3 | operational_periphery | project_anchor | own_supporting | 0 | base | unit-237087 | 2 deployments: base `0xb6b3ea...af4359`; berachain `0xb6b3ea...af4359` | ⚠️ Unaudited |
| ChroniclePriceOracleV3 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236964 | `0x8990a4...ed4eeb` | ⚠️ Unaudited |
| CREATE3Factory | registry | project_anchor | own_supporting | 0 | ethereum | unit-236853 | 5 deployments: ethereum `0xa8f7e7...7599f7`; mantle `0xa8f7e7...7599f7`; base `0xa8f7e7...7599f7`; arbitrum `0xa8f7e7...7599f7`; berachain `0xa8f7e7...7599f7` | ⚠️ Unaudited |
| DepositWithdrawalProxy | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-236859 | `0xd6a31b...1187e6` | ⚠️ Unaudited |
| DepositWithdrawalProxy | operational_periphery | project_anchor | own_supporting | 0 | mantle | unit-236985 | `0x1a3752...facca5` | ⚠️ Unaudited |
| DepositWithdrawalProxy | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236948 | `0x17c57c...23f13d` | ⚠️ Unaudited |
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
| DolomiteAccountRegistry | registry | project_anchor | own_supporting | 1 | berachain | unit-237121 | `0xfee366...24daae` | ⚠️ Unaudited |
| DolomiteMargin | unknown | project_anchor | own_supporting | 0 | ethereum | unit-236839 | `0x003ca2...c2b97d` | ⚠️ Unaudited |
| DolomiteMargin | unknown | project_anchor | own_supporting | 0 | mantle | unit-237005 | `0xe6ef4f...917de8` | ⚠️ Unaudited |
| DolomiteMargin | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236960 | `0x6bd780...409072` | ⚠️ Unaudited |
| DolomiteMargin | unknown | project_anchor | own_supporting | 0 | berachain | unit-237040 | `0x003ca2...c2b97d` | ⚠️ Unaudited |
| DolomiteMigrator | periphery | project_anchor | own_supporting | 0 | ethereum | unit-236850 | `0x9e97d8...e7a0d3` | ⚠️ Unaudited |
| DolomiteMigrator | periphery | project_anchor | own_supporting | 0 | mantle | unit-236989 | `0x481ef8...843cbd` | ⚠️ Unaudited |
| DolomiteMigrator | periphery | project_anchor | own_supporting | 0 | base | unit-237082 | 2 deployments: base `0x9e97d8...e7a0d3`; berachain `0x9e97d8...e7a0d3` | ⚠️ Unaudited |
| DolomiteMigrator | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236977 | `0xd5545e...f5afc9` | ⚠️ Unaudited |
| DolomiteOwner | unknown | project_anchor | own_supporting | 0 | mantle | unit-237002 | 3 deployments: mantle `0xcf359a...7bb11d`; base `0xcf359a...7bb11d`; arbitrum `0xcf359a...7bb11d` | ⚠️ Unaudited |
| DolomiteOwnerV1 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-236858 | `0xcf359a...7bb11d` | ⚠️ Unaudited |
| DolomiteOwnerV1 | unknown | project_anchor | own_supporting | 0 | berachain | unit-237064 | `0xcf359a...7bb11d` | ⚠️ Unaudited |
| DolomiteOwnerV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-236857 | `0xc2b66e...53de06` | ⚠️ Unaudited |
| DolomiteOwnerV2 | unknown | project_anchor | own_supporting | 0 | mantle | unit-237001 | 4 deployments: mantle `0xc2b66e...53de06`; base `0xc2b66e...53de06`; arbitrum `0xc2b66e...53de06`; berachain `0xc2b66e...53de06` | ⚠️ Unaudited |
| DolomiteRegistryImplementation | registry | project_anchor | own_supporting | 1 | ethereum | unit-237099 | `0x0f38bf...fe09fd` | ⚠️ Unaudited |
| DolomiteRegistryImplementation | registry | project_anchor | own_supporting | 1 | mantle | unit-237112 | `0x7bec16...f7e09b` | ⚠️ Unaudited |
| DolomiteRegistryImplementation | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-237107 | `0x2a059d...8c2404` | ⚠️ Unaudited |
| DOLOWithOwnable | governance | project_anchor | own_supporting | 0 | ethereum | unit-236841 | 2 deployments: ethereum `0x0f8100...39a654`; arbitrum `0x0f8100...39a654` | ⚠️ Unaudited |
| EventEmitterRegistry | registry | project_anchor | own_supporting | 1 | ethereum | unit-237097 | `0x6d4013...232486` | ⚠️ Unaudited |
| EventEmitterRegistry | registry | project_anchor | own_supporting | 1 | mantle | unit-237110 | `0x778cea...fb827c` | ⚠️ Unaudited |
| EventEmitterRegistry | registry | project_anchor | own_supporting | 1 | base | unit-237129 | `0x6d4013...232486` | ⚠️ Unaudited |
| EventEmitterRegistry | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-237103 | `0x4bff12...18cc2f` | ⚠️ Unaudited |
| EventEmitterRegistry | registry | project_anchor | own_supporting | 1 | berachain | unit-237120 | `0x6d4013...232486` | ⚠️ Unaudited |
| Expiry | unknown | project_anchor | own_supporting | 0 | ethereum | unit-236844 | `0x2ae007...1d8d5d` | ⚠️ Unaudited |
| Expiry | unknown | project_anchor | own_supporting | 0 | mantle | unit-236993 | `0x6df6db...889a25` | ⚠️ Unaudited |
| Expiry | unknown | project_anchor | own_supporting | 0 | base | unit-237076 | 2 deployments: base `0x2ae007...1d8d5d`; berachain `0x2ae007...1d8d5d` | ⚠️ Unaudited |
| Expiry | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236979 | `0xdec1ae...973bea` | ⚠️ Unaudited |
| ExpiryProxy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-236842 | `0x1b39f7...67e7bc` | ⚠️ Unaudited |
| ExpiryProxy | unknown | project_anchor | own_supporting | 0 | mantle | unit-236983 | `0x075a06...fecc65` | ⚠️ Unaudited |
| ExpiryProxy | unknown | project_anchor | own_supporting | 0 | base | unit-237074 | 2 deployments: base `0x1b39f7...67e7bc`; berachain `0x1b39f7...67e7bc` | ⚠️ Unaudited |
| ExpiryProxy | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236954 | `0x40899e...730b00` | ⚠️ Unaudited |
| GenericTraderProxyV1 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-236854 | `0xb50bcd...fb928d` | ⚠️ Unaudited |
| GenericTraderProxyV1 | unknown | project_anchor | own_supporting | 0 | mantle | unit-237003 | `0xd432c3...d2edab` | ⚠️ Unaudited |
| GenericTraderProxyV1 | unknown | project_anchor | own_supporting | 0 | base | unit-237086 | 2 deployments: base `0xb50bcd...fb928d`; berachain `0xb50bcd...fb928d` | ⚠️ Unaudited |
| GenericTraderProxyV1 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236967 | `0x905f3a...f61d2b` | ⚠️ Unaudited |
| GenericTraderRouter | adapter | project_anchor | own_supporting | 1 | ethereum | unit-237100 | `0x7b61cb...72bc6b` | ⚠️ Unaudited |
| GenericTraderRouter | adapter | project_anchor | own_supporting | 1 | base | unit-237132 | `0x7b61cb...72bc6b` | ⚠️ Unaudited |
| GenericTraderRouter | adapter | project_anchor | own_supporting | 1 | berachain | unit-237126 | `0x7b61cb...72bc6b` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | project_anchor | own_supporting | 1 | ethereum | unit-237096 | `0xa75c21...55a1d4` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | project_anchor | own_supporting | 1 | mantle | unit-237109 | `0xa75c21...55a1d4` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | project_anchor | own_supporting | 1 | base | unit-237128 | `0xa75c21...55a1d4` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | project_anchor | own_supporting | 1 | berachain | unit-237114 | `0xa75c21...55a1d4` | ⚠️ Unaudited |
| IsolationModeFreezableLiquidatorProxy | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-236849 | `0x8d178f...5c8870` | ⚠️ Unaudited |
| IsolationModeFreezableLiquidatorProxy | operational_periphery | project_anchor | own_supporting | 0 | mantle | unit-237008 | `0xfed1f9...e259a4` | ⚠️ Unaudited |
| IsolationModeFreezableLiquidatorProxy | operational_periphery | project_anchor | own_supporting | 0 | base | unit-237081 | `0x8d178f...5c8870` | ⚠️ Unaudited |
| IsolationModeFreezableLiquidatorProxy | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-236961 | `0x76ac55...a33e44` | ⚠️ Unaudited |
| IsolationModeFreezableLiquidatorProxy | operational_periphery | project_anchor | own_supporting | 0 | berachain | unit-237054 | `0x8d178f...5c8870` | ⚠️ Unaudited |
| LiquidatorAssetRegistry | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-236860 | `0xd82100...c56cfa` | ⚠️ Unaudited |
| LiquidatorAssetRegistry | operational_periphery | project_anchor | own_supporting | 0 | mantle | unit-236995 | 3 deployments: mantle `0x7b6d28...2d69b5`; base `0xd82100...c56cfa`; berachain `0xd82100...c56cfa` | ⚠️ Unaudited |
| LiquidatorAssetRegistry | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236946 | `0x10d987...f44fac` | ⚠️ Unaudited |
| LiquidatorProxyV1 | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-236861 | `0xdb168c...bf99d3` | ⚠️ Unaudited |
| LiquidatorProxyV1 | operational_periphery | project_anchor | own_supporting | 0 | mantle | unit-236996 | `0x8e6b0e...073a71` | ⚠️ Unaudited |
| LiquidatorProxyV1 | operational_periphery | project_anchor | own_supporting | 0 | base | unit-237093 | 2 deployments: base `0xdb168c...bf99d3`; berachain `0xdb168c...bf99d3` | ⚠️ Unaudited |
| LiquidatorProxyV1 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236965 | `0x8c6e33...fa715a` | ⚠️ Unaudited |
| LiquidatorProxyV4WithGenericTrader | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-236843 | `0x2adeaf...c5487b` | ⚠️ Unaudited |
| LiquidatorProxyV4WithGenericTrader | operational_periphery | project_anchor | own_supporting | 0 | mantle | unit-236986 | 2 deployments: mantle `0x22dd9f...084fc7`; base `0x2adeaf...c5487b` | ⚠️ Unaudited |
| LiquidatorProxyV4WithGenericTrader | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236951 | `0x349756...ab9cb3` | ⚠️ Unaudited |
| LiquidatorProxyV5 | operational_periphery | project_anchor | own_supporting | 0 | mantle | unit-236984 | `0x1506f8...72b99a` | ⚠️ Unaudited |
| LiquidatorProxyV5 | operational_periphery | project_anchor | own_supporting | 0 | base | unit-237073 | `0x1506f8...72b99a` | ⚠️ Unaudited |
| MultiCall | periphery | project_anchor | own_supporting | 0 | ethereum | unit-236847 | 4 deployments: ethereum `0x58142b...617d2a`; mantle `0x6978ff...1bebc5`; base `0x58142b...617d2a`; berachain `0x58142b...617d2a` | ⚠️ Unaudited |
| ODOLO | unknown | project_anchor | own_supporting | 0 | berachain | unit-237041 | `0x02e513...c89543` | ⚠️ Unaudited |
| OdosAggregatorTrader | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236950 | `0x2cdbb2...e67f3c` | ⚠️ Unaudited |
| OptionAirdrop | operational_periphery | project_anchor | own_supporting | 1 | berachain | unit-237115 | `0xd88f47...9b99ef` | ⚠️ Unaudited |
| OracleAggregatorV2 | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-236852 | `0xa150ef...1d636e` | ⚠️ Unaudited |
| OracleAggregatorV2 | operational_periphery | project_anchor | own_supporting | 0 | mantle | unit-236987 | `0x2c640b...24b77d` | ⚠️ Unaudited |
| OracleAggregatorV2 | operational_periphery | project_anchor | own_supporting | 0 | base | unit-237084 | 2 deployments: base `0xa150ef...1d636e`; berachain `0xa150ef...1d636e` | ⚠️ Unaudited |
| OracleAggregatorV2 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236973 | `0xbfca44...d06ca0` | ⚠️ Unaudited |
| ParaswapAggregatorTraderV2 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236978 | `0xd991d9...92383a` | ⚠️ Unaudited |
| PartiallyDelayedMultiSig | governance | project_anchor | own_supporting | 0 | ethereum | unit-236846 | `0x52d7bc...fd05f9` | ⚠️ Unaudited |
| RedstonePriceOracleV3 | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-236862 | `0xe09f85...4cdd45` | ⚠️ Unaudited |
| RedstonePriceOracleV3 | operational_periphery | project_anchor | own_supporting | 0 | mantle | unit-236992 | `0x6b15c3...8403a2` | ⚠️ Unaudited |
| RedstonePriceOracleV3 | operational_periphery | project_anchor | own_supporting | 0 | base | unit-237094 | 2 deployments: base `0xe09f85...4cdd45`; berachain `0xe09f85...4cdd45` | ⚠️ Unaudited |
| RedstonePriceOracleV3 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236956 | `0x5fbae9...be01d2` | ⚠️ Unaudited |
| RegistryProxy | registry | project_anchor | own_supporting | 0 | ethereum | unit-236863 | `0xfee366...24daae` | ⚠️ Unaudited |
| RegularAirdrop | operational_periphery | project_anchor | own_supporting | 1 | berachain | unit-237124 | `0xa3f079...838bc9` | ⚠️ Unaudited |
| RewardsDistributor | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-236958 | `0x66cd7d...73db67` | ⚠️ Unaudited |
| RollingClaims | unknown | project_anchor | own_supporting | 1 | berachain | unit-237123 | `0x79e6e9...a8a026` | ⚠️ Unaudited |
| RouterProxy | adapter | project_anchor | own_supporting | 0 | mantle | unit-236994 | `0x7b61cb...72bc6b` | ⚠️ Unaudited |
| RouterProxy | adapter | project_anchor | own_supporting | 0 | mantle | unit-237007 | `0xf579b3...133d0f` | ⚠️ Unaudited |
| SafeL2 | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-237102 | `0xa75c21...55a1d4` | ⚠️ Unaudited |
| StrategicVestingClaims | operational_periphery | project_anchor | own_supporting | 1 | berachain | unit-237117 | `0x7efd08...061176` | ⚠️ Unaudited |
| TransferProxy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-236840 | `0x07c28e...2624f8` | ⚠️ Unaudited |
| TransferProxy | unknown | project_anchor | own_supporting | 0 | mantle | unit-236998 | `0x958237...9af66c` | ⚠️ Unaudited |
| TransferProxy | unknown | project_anchor | own_supporting | 0 | base | unit-237070 | 2 deployments: base `0x07c28e...2624f8`; berachain `0x07c28e...2624f8` | ⚠️ Unaudited |
| TransferProxy | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236963 | `0x86cfc6...92470d` | ⚠️ Unaudited |
| TransferProxy | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236980 | `0xe04f88...b1df5a` | ⚠️ Unaudited |
| VeArt | unknown | project_anchor | own_supporting | 0 | berachain | unit-237051 | `0x54267e...68a6f0` | ⚠️ Unaudited |
| VeExternalVesterImplementationV2 | operational_periphery | project_anchor | own_supporting | 1 | berachain | unit-237116 | `0x3e9b9a...2d2cec` | ⚠️ Unaudited |
| VeFeeCalculator | unknown | project_anchor | own_supporting | 0 | berachain | unit-237058 | `0xa7b2c7...917ce9` | ⚠️ Unaudited |
| VesterExploder | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236949 | `0x2c9052...62cb62` | ⚠️ Unaudited |
| VesterImplementationV2 | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-237106 | `0x531bc6...b63797` | ⚠️ Unaudited |
| VestingClaims | operational_periphery | project_anchor | own_supporting | 1 | berachain | unit-237125 | `0x3a025c...c06c07` | ⚠️ Unaudited |
| VestingClaims | operational_periphery | project_anchor | own_supporting | 1 | berachain | unit-237119 | `0xbd225c...f20f7b` | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | project_anchor | own_supporting | 1 | berachain | unit-237118 | `0xcb86b7...e141d4` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (97)

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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236947 | `0x1506f8...72b99a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236955 | `0x52d7bc...fd05f9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236962 | `0x7b61cb...72bc6b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236966 | `0x8fa6d7...208451` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236972 | `0xb3f81b...81d0c3` | ❓ Unverified |
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
| mantle | `0xfed1f9...e259a4` | IsolationModeFreezableLiquidatorProxy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x8d178f...5c8870` | IsolationModeFreezableLiquidatorProxy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x76ac55...a33e44` | IsolationModeFreezableLiquidatorProxy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
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
| native | 116 |
| upstream | 10 |
| standard_library | 6 |
| needs_review | 97 |

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
