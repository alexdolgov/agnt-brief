# Agentic Audit Brief: Dolomite

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 2 audit(s)
- Eligible audit results: 10 (2 matched; 8 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Dolomite (`dolomite`)
- Website: [https://dolomite.io](https://dolomite.io)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, base, berachain, ethereum, ink, mantle, polygon-zkevm, x-layer
- Contract surface: 422 unique implementations (911 raw deployments)
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

**DolomiteMargin** (`0x003ca23fd5f0ca87d01f6ec6cd14a8ae60c2b97d`, chain 1)
Origin: reservoir-protocol (`0x003ca2...c2b97d`)
Containment: 100.0% - 81 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**DolomiteMargin** (`0xe6ef4f0b2455bab92ce7cc78e35324ab58917de8`, chain 5000)
Origin: reservoir-protocol (`0x003ca2...c2b97d`)
Containment: 100.0% - 81 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**DolomiteMargin** (`0x6bd780e7fdf01d77e4d475c821f1e7ae05409072`, chain 42161)
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

**DolomiteMargin** (`0x003ca23fd5f0ca87d01f6ec6cd14a8ae60c2b97d`, chain 80094)
Origin: reservoir-protocol (`0x003ca2...c2b97d`)
Containment: 100.0% - 81 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x7b61cba306cfdb02493b94757143132b1b72bc6b`, chain 196)
- UnnamedContract (`0x836b557cf9ef29fcf49c776841191782df34e4e5`, chain 196)
- UnnamedContract (`0xf579b345cda0860668b857de10abd62442133d0f`, chain 196)
- UnnamedContract (`0xf8b2c637a68cf6a17b1df9f8992eebeff63d2dff`, chain 196)
- UnnamedContract (`0x3f0269aac5d3fa3cd518d9e809f45458c1504923`, chain 1101)
- UnnamedContract (`0x6b15c3f0d266be946ea2d33c40d1a7204c8403a2`, chain 1101)
- UnnamedContract (`0xe4d3450d52edf515433fec12eaefffbfa83250b9`, chain 1101)
- UnnamedContract (`0xfed1f92936fb71da71ecf2d22543a85489e259a4`, chain 1101)
- UnnamedContract (`0x52d7bcb650c591f6e8da90f797a1d0bfd8fd05f9`, chain 5000)
- UnnamedContract (`0x9101dda4c53caf2f85e39c4f135474a37eddd6b5`, chain 5000)
- UnnamedContract (`0x003ca23fd5f0ca87d01f6ec6cd14a8ae60c2b97d`, chain 8453)
- UnnamedContract (`0x0f38bfbd9c1450bcf7a758e80e148ce78cfe09fd`, chain 8453)
- UnnamedContract (`0x145637a4aa6b2001dc9ecbc89cef75bb960f90b2`, chain 8453)
- UnnamedContract (`0x52d7bcb650c591f6e8da90f797a1d0bfd8fd05f9`, chain 8453)
- UnnamedContract (`0xd6a31b6aea4d26a19bf479b5032d9ddc481187e6`, chain 8453)
- UnnamedContract (`0x1506f80d2fd5fbef2424573ec86e5481c972b99a`, chain 42161)
- UnnamedContract (`0x52d7bcb650c591f6e8da90f797a1d0bfd8fd05f9`, chain 42161)
- UnnamedContract (`0x7b61cba306cfdb02493b94757143132b1b72bc6b`, chain 42161)
- UnnamedContract (`0x8fa6d763ca105b3c88fd01317db2e66021208451`, chain 42161)
- UnnamedContract (`0xb3f81b0f53cdee755c70665923e08a8f0e81d0c3`, chain 42161)
- UnnamedContract (`0x0f38bfbd9c1450bcf7a758e80e148ce78cfe09fd`, chain 80094)
- UnnamedContract (`0x1506f80d2fd5fbef2424573ec86e5481c972b99a`, chain 80094)
- UnnamedContract (`0x2adeafd960366411215ce8706c1afe2853c5487b`, chain 80094)
- UnnamedContract (`0x52d7bcb650c591f6e8da90f797a1d0bfd8fd05f9`, chain 80094)
- AlwaysZeroInterestSetter (`0x9ecbbceb49c39a59d18b064b7049aac2d4d28ca2`, chain 1)
- AlwaysZeroInterestSetter (`0x9ecbbceb49c39a59d18b064b7049aac2d4d28ca2`, chain 8453)
- AlwaysZeroInterestSetter (`0x37b6ff70654edfbdaa3c9a723fdadf5844de2168`, chain 42161)
- AlwaysZeroInterestSetter (`0x9ecbbceb49c39a59d18b064b7049aac2d4d28ca2`, chain 80094)
- ArbitrumMultiCall (`0xb18b8b1a5bdea1f3c9776715b9325f932803fb1f`, chain 42161)
- BorrowPositionProxy (`0xe43638797513ef7a6d326a95e8647d86d2f5a099`, chain 42161)
- BorrowPositionProxyV1 (`0x67567fce98a44745820069c37c395426f1c30ba6`, chain 1)
- BorrowPositionProxyV1 (`0x97a08604a56f16947a4a956efec2ef223364b733`, chain 5000)
- BorrowPositionProxyV1 (`0x67567fce98a44745820069c37c395426f1c30ba6`, chain 8453)
- BorrowPositionProxyV1 (`0x67567fce98a44745820069c37c395426f1c30ba6`, chain 80094)
- BorrowPositionProxyV2 (`0xc06271eb97d960f4034ddf953e16271ccb2b10bd`, chain 1)
- BorrowPositionProxyV2 (`0xc06271eb97d960f4034ddf953e16271ccb2b10bd`, chain 8453)
- BorrowPositionProxyV2 (`0x38e49a617305101216ec6306e3a18065d14bf3a7`, chain 42161)
- BorrowPositionProxyV2 (`0xc06271eb97d960f4034ddf953e16271ccb2b10bd`, chain 80094)
- ChainlinkPriceOracleV3 (`0x465e5105e6106acd15e491953bb7b674247ae191`, chain 1)
- ChainlinkPriceOracleV3 (`0x465e5105e6106acd15e491953bb7b674247ae191`, chain 8453)
- ChainlinkPriceOracleV3 (`0x465e5105e6106acd15e491953bb7b674247ae191`, chain 80094)
- ChaosLabsPriceOracleV3 (`0xb02808f5db0e6926e00af4971abdf1da6c7db34e`, chain 42161)
- ChroniclePriceOracleV3 (`0xb6b3eaf640707688186e7df34ac7d21fabaf4359`, chain 1)
- ChroniclePriceOracleV3 (`0xe4d3450d52edf515433fec12eaefffbfa83250b9`, chain 5000)
- ChroniclePriceOracleV3 (`0xb6b3eaf640707688186e7df34ac7d21fabaf4359`, chain 8453)
- ChroniclePriceOracleV3 (`0x8990a46fd1f2e00b8eb85dafd85735d2b5ed4eeb`, chain 42161)
- ChroniclePriceOracleV3 (`0xb6b3eaf640707688186e7df34ac7d21fabaf4359`, chain 80094)
- CREATE3Factory (`0xa8f7e7a361de6a2172fcb2acce68bd21597599f7`, chain 1)
- CREATE3Factory (`0xa8f7e7a361de6a2172fcb2acce68bd21597599f7`, chain 5000)
- CREATE3Factory (`0xa8f7e7a361de6a2172fcb2acce68bd21597599f7`, chain 8453)
- CREATE3Factory (`0xa8f7e7a361de6a2172fcb2acce68bd21597599f7`, chain 42161)
- CREATE3Factory (`0xa8f7e7a361de6a2172fcb2acce68bd21597599f7`, chain 80094)
- DepositWithdrawalProxy (`0xd6a31b6aea4d26a19bf479b5032d9ddc481187e6`, chain 1)
- DepositWithdrawalProxy (`0x17c57c98b666bac9f3dce4033180190fe923f13d`, chain 42161)
- DepositWithdrawalProxy (`0xadb9d68c613df4aa363b42161e1282117c7b9594`, chain 42161)
- DepositWithdrawalProxy (`0xd6a31b6aea4d26a19bf479b5032d9ddc481187e6`, chain 80094)
- DOLO (`0x0f81001ef0a83ecce5ccebf63eb302c70a39a654`, chain 80094)
- DolomiteMigrator (`0x9e97d89c44c3f213db22593af98165a1b9e7a0d3`, chain 1)
- DolomiteMigrator (`0x9e97d89c44c3f213db22593af98165a1b9e7a0d3`, chain 8453)
- DolomiteMigrator (`0x9e97d89c44c3f213db22593af98165a1b9e7a0d3`, chain 80094)
- DolomiteOwner (`0xcf359a2fa50548c6793a5ed7f26471c1b17bb11d`, chain 5000)
- DolomiteOwner (`0xcf359a2fa50548c6793a5ed7f26471c1b17bb11d`, chain 8453)
- DolomiteOwner (`0xcf359a2fa50548c6793a5ed7f26471c1b17bb11d`, chain 42161)
- DolomiteOwnerV1 (`0xcf359a2fa50548c6793a5ed7f26471c1b17bb11d`, chain 1)
- DolomiteOwnerV1 (`0xcf359a2fa50548c6793a5ed7f26471c1b17bb11d`, chain 80094)
- DolomiteOwnerV2 (`0xc2b66e247dae5ee749ae1d827190115f3653de06`, chain 1)
- DolomiteOwnerV2 (`0xc2b66e247dae5ee749ae1d827190115f3653de06`, chain 5000)
- DolomiteOwnerV2 (`0xc2b66e247dae5ee749ae1d827190115f3653de06`, chain 8453)
- DolomiteOwnerV2 (`0xc2b66e247dae5ee749ae1d827190115f3653de06`, chain 42161)
- DolomiteOwnerV2 (`0xc2b66e247dae5ee749ae1d827190115f3653de06`, chain 80094)
- DOLOWithOwnable (`0x0f81001ef0a83ecce5ccebf63eb302c70a39a654`, chain 1)
- DOLOWithOwnable (`0x0f81001ef0a83ecce5ccebf63eb302c70a39a654`, chain 42161)
- Expiry (`0x2ae007882b91206942c70adc833a61ee531d8d5d`, chain 1)
- Expiry (`0x2ae007882b91206942c70adc833a61ee531d8d5d`, chain 8453)
- Expiry (`0xdec1ae3b570ac3c57871bbd7bfeacc807f973bea`, chain 42161)
- Expiry (`0x2ae007882b91206942c70adc833a61ee531d8d5d`, chain 80094)
- ExpiryProxy (`0x1b39f7c19d952752f255536e72726a592167e7bc`, chain 1)
- ExpiryProxy (`0x1b39f7c19d952752f255536e72726a592167e7bc`, chain 8453)
- ExpiryProxy (`0x40899e265a7899968f0f153410321b9175730b00`, chain 42161)
- ExpiryProxy (`0x1b39f7c19d952752f255536e72726a592167e7bc`, chain 80094)
- GenericTraderProxyV1 (`0xb50bcdfc914e0afb484dee621f49010862fb928d`, chain 1)
- GenericTraderProxyV1 (`0xb50bcdfc914e0afb484dee621f49010862fb928d`, chain 8453)
- GenericTraderProxyV1 (`0xb50bcdfc914e0afb484dee621f49010862fb928d`, chain 80094)
- GnosisSafeProxy (`0xa75c21c5be284122a87a37a76cc6c4dd3e55a1d4`, chain 1)
- GnosisSafeProxy (`0xa75c21c5be284122a87a37a76cc6c4dd3e55a1d4`, chain 5000)
- GnosisSafeProxy (`0xa75c21c5be284122a87a37a76cc6c4dd3e55a1d4`, chain 8453)
- GnosisSafeProxy (`0xa75c21c5be284122a87a37a76cc6c4dd3e55a1d4`, chain 42161)
- GnosisSafeProxy (`0xa75c21c5be284122a87a37a76cc6c4dd3e55a1d4`, chain 80094)
- IsolationModeFreezableLiquidatorProxy (`0x8d178ff41f94ae761325451529750166d35c8870`, chain 1)
- IsolationModeFreezableLiquidatorProxy (`0x8d178ff41f94ae761325451529750166d35c8870`, chain 8453)
- IsolationModeFreezableLiquidatorProxy (`0x76ac5542ee033a15f78d1f8b4ad48af618a33e44`, chain 42161)
- IsolationModeFreezableLiquidatorProxy (`0x8d178ff41f94ae761325451529750166d35c8870`, chain 80094)
- LiquidatorAssetRegistry (`0xd82100524392c7dbdd7502f136a226c8a4c56cfa`, chain 1)
- LiquidatorAssetRegistry (`0xd82100524392c7dbdd7502f136a226c8a4c56cfa`, chain 8453)
- LiquidatorAssetRegistry (`0x10d98759762efac656bd4be7f2f5599208f44fac`, chain 42161)
- LiquidatorAssetRegistry (`0xd82100524392c7dbdd7502f136a226c8a4c56cfa`, chain 80094)
- LiquidatorProxyV1 (`0xdb168cd1bcb63304991fc6e2013d0d87ddbf99d3`, chain 1)
- LiquidatorProxyV1 (`0xdb168cd1bcb63304991fc6e2013d0d87ddbf99d3`, chain 8453)
- LiquidatorProxyV1 (`0x8c6e337da1bd534548c5a9b6ac3d9e4d15fa715a`, chain 42161)
- LiquidatorProxyV1 (`0xdb168cd1bcb63304991fc6e2013d0d87ddbf99d3`, chain 80094)
- LiquidatorProxyV4WithGenericTrader (`0x2adeafd960366411215ce8706c1afe2853c5487b`, chain 1)
- LiquidatorProxyV4WithGenericTrader (`0x22dd9f4393a3cc698d6c09ad14b0b9d515084fc7`, chain 5000)
- LiquidatorProxyV4WithGenericTrader (`0x2adeafd960366411215ce8706c1afe2853c5487b`, chain 8453)
- LiquidatorProxyV5 (`0x1506f80d2fd5fbef2424573ec86e5481c972b99a`, chain 5000)
- LiquidatorProxyV5 (`0x1506f80d2fd5fbef2424573ec86e5481c972b99a`, chain 8453)
- MultiCall (`0x58142bd85e67c40a7c0ccf2e1eef6eb543617d2a`, chain 1)
- MultiCall (`0x6978ffdcd509ded2f8557565e0a9fc5cfa1bebc5`, chain 5000)
- MultiCall (`0x58142bd85e67c40a7c0ccf2e1eef6eb543617d2a`, chain 8453)
- MultiCall (`0x58142bd85e67c40a7c0ccf2e1eef6eb543617d2a`, chain 80094)
- ODOLO (`0x02e513b5b54ee216bf836ceb471507488fc89543`, chain 80094)
- OdosAggregatorTrader (`0x2cdbb25b4aca98a55f6b1a0f67d9f43455e67f3c`, chain 42161)
- OracleAggregatorV2 (`0xa150ef2d5827db283321d15d62d5d07fb41d636e`, chain 1)
- OracleAggregatorV2 (`0xa150ef2d5827db283321d15d62d5d07fb41d636e`, chain 8453)
- OracleAggregatorV2 (`0xbfca44ab734e57dc823ca609a0714eec9ed06ca0`, chain 42161)
- OracleAggregatorV2 (`0xa150ef2d5827db283321d15d62d5d07fb41d636e`, chain 80094)
- ParaswapAggregatorTraderV2 (`0xd991d9e0a22a51391c25b258eef8c1c4a392383a`, chain 42161)
- PartiallyDelayedMultiSig (`0x52d7bcb650c591f6e8da90f797a1d0bfd8fd05f9`, chain 1)
- RedstonePriceOracleV3 (`0xe09f85b284c177c8325c5ccaeae30a14494cdd45`, chain 1)
- RedstonePriceOracleV3 (`0xe09f85b284c177c8325c5ccaeae30a14494cdd45`, chain 8453)
- RedstonePriceOracleV3 (`0x5fbae9cbbc209efdf2054e050baf5a0783be01d2`, chain 42161)
- RedstonePriceOracleV3 (`0xe09f85b284c177c8325c5ccaeae30a14494cdd45`, chain 80094)
- RegistryProxy (`0x0f38bfbd9c1450bcf7a758e80e148ce78cfe09fd`, chain 1)
- RegistryProxy (`0x6d40138c99f6d9116f738f44a0e6751a42232486`, chain 1)
- RegistryProxy (`0xfee366ceca2472b99d0a501b6b3d01351c24daae`, chain 1)
- RegistryProxy (`0xc90e5df165c26441f6f4e558ca6128a42eb95787`, chain 5000)
- RegistryProxy (`0x6d40138c99f6d9116f738f44a0e6751a42232486`, chain 8453)
- RegistryProxy (`0xfee366ceca2472b99d0a501b6b3d01351c24daae`, chain 8453)
- RegistryProxy (`0x2a059d6d682e5fb1226eb8bc2977b512698c2404`, chain 42161)
- RegistryProxy (`0x4bff12773b0dc3cb35f174b5cd351f662018cc2f`, chain 42161)
- RegistryProxy (`0xc777fb526922fb61581b65f8eb55bb769cd59c63`, chain 42161)
- RegistryProxy (`0x6d40138c99f6d9116f738f44a0e6751a42232486`, chain 80094)
- RegistryProxy (`0x79e6e932bf6686a4d357d7821e6e08835ba8a026`, chain 80094)
- RegistryProxy (`0xfee366ceca2472b99d0a501b6b3d01351c24daae`, chain 80094)
- RewardsDistributor (`0x66cd7d0cc677f42f6662622c60a5e60ef573db67`, chain 42161)
- RouterProxy (`0x7b61cba306cfdb02493b94757143132b1b72bc6b`, chain 1)
- RouterProxy (`0xf579b345cda0860668b857de10abd62442133d0f`, chain 1)
- RouterProxy (`0xf8b2c637a68cf6a17b1df9f8992eebeff63d2dff`, chain 1)
- RouterProxy (`0x7b61cba306cfdb02493b94757143132b1b72bc6b`, chain 5000)
- RouterProxy (`0xf579b345cda0860668b857de10abd62442133d0f`, chain 5000)
- RouterProxy (`0xf8b2c637a68cf6a17b1df9f8992eebeff63d2dff`, chain 5000)
- RouterProxy (`0x7b61cba306cfdb02493b94757143132b1b72bc6b`, chain 8453)
- RouterProxy (`0xf579b345cda0860668b857de10abd62442133d0f`, chain 8453)
- RouterProxy (`0xf8b2c637a68cf6a17b1df9f8992eebeff63d2dff`, chain 8453)
- RouterProxy (`0xf579b345cda0860668b857de10abd62442133d0f`, chain 42161)
- RouterProxy (`0xf8b2c637a68cf6a17b1df9f8992eebeff63d2dff`, chain 42161)
- RouterProxy (`0x7b61cba306cfdb02493b94757143132b1b72bc6b`, chain 80094)
- RouterProxy (`0xf579b345cda0860668b857de10abd62442133d0f`, chain 80094)
- RouterProxy (`0xf8b2c637a68cf6a17b1df9f8992eebeff63d2dff`, chain 80094)
- TransferProxy (`0x07c28e60b28c98e09f5b69c9c473fe19062624f8`, chain 1)
- TransferProxy (`0x9582378f220c724012c59c376c1910c0549af66c`, chain 5000)
- TransferProxy (`0x07c28e60b28c98e09f5b69c9c473fe19062624f8`, chain 8453)
- TransferProxy (`0x86cfc6ba3bbbc603b8dec5b032afa10a3592470d`, chain 42161)
- TransferProxy (`0xe04f884e8bb9868b6013dead84ad5a3b8cb1df5a`, chain 42161)
- TransferProxy (`0x07c28e60b28c98e09f5b69c9c473fe19062624f8`, chain 80094)
- UnnamedContract (`0x02942cde28029d13e070fc5ffd160e51e44522cc`, chain 1101)
- UnnamedContract (`0x08e86624ca88e702d1c43557ad82e84ef222fe96`, chain 1101)
- UnnamedContract (`0x11a7e2ef87b50605606542783876b32667cb6bde`, chain 1101)
- UnnamedContract (`0x14b83b01091636709a468386877619d34d431c63`, chain 1101)
- UnnamedContract (`0x1506f80d2fd5fbef2424573ec86e5481c972b99a`, chain 1101)
- UnnamedContract (`0x17c57c98b666bac9f3dce4033180190fe923f13d`, chain 1101)
- UnnamedContract (`0x227455c3e636b0fcc9d37f3efa2cd5af7a812141`, chain 1101)
- UnnamedContract (`0x277118ca98f7a8c26afeb12928d0a37edb382d7e`, chain 1101)
- UnnamedContract (`0x2e9be819d04cb62bf3816b627c9dff819136cec4`, chain 1101)
- UnnamedContract (`0x4232fce0d67839f4fd536990bdc02043d9ab708a`, chain 1101)
- UnnamedContract (`0x4723da2196668d26c76885fe23d568e9688f812d`, chain 1101)
- UnnamedContract (`0x52d7bcb650c591f6e8da90f797a1d0bfd8fd05f9`, chain 1101)
- UnnamedContract (`0x64f7a2a0f32654b09c66aa64405661f27039a249`, chain 1101)
- UnnamedContract (`0x660bd80f67aa9c7bfb82933e1068f8f616d88255`, chain 1101)
- UnnamedContract (`0x694f7ba53e331d8494043a41262dc063b0f5c8b4`, chain 1101)
- UnnamedContract (`0x6b68bdccb22931937d7d11e556d95a07e02fe3ce`, chain 1101)
- UnnamedContract (`0x6d35bfe1de1e2c311e347e306fc6770dab1b0a57`, chain 1101)
- UnnamedContract (`0x7b61cba306cfdb02493b94757143132b1b72bc6b`, chain 1101)
- UnnamedContract (`0x836b557cf9ef29fcf49c776841191782df34e4e5`, chain 1101)
- UnnamedContract (`0x86cfc6ba3bbbc603b8dec5b032afa10a3592470d`, chain 1101)
- UnnamedContract (`0x88a6d8e6ffdb145a8719d43e6fd48f3383745866`, chain 1101)
- UnnamedContract (`0xa5f4ceb032a1d7c711bb8ae687f9ab13a976e2e9`, chain 1101)
- UnnamedContract (`0xa75c21c5be284122a87a37a76cc6c4dd3e55a1d4`, chain 1101)
- UnnamedContract (`0xa8f7e7a361de6a2172fcb2acce68bd21597599f7`, chain 1101)
- UnnamedContract (`0xb3f81b0f53cdee755c70665923e08a8f0e81d0c3`, chain 1101)
- UnnamedContract (`0xb3ff983d7927540b7f92602657a2a26977664e77`, chain 1101)
- UnnamedContract (`0xb4f0eb9c8fb5fbabef339f8738173db645c4147d`, chain 1101)
- UnnamedContract (`0xb6b3eaf640707688186e7df34ac7d21fabaf4359`, chain 1101)
- UnnamedContract (`0xbf3179ad5339dcb6bd741bc08c3011fada586075`, chain 1101)
- UnnamedContract (`0xc28a4ec9f09e4071e3707eaaca5c3754fa4f5faa`, chain 1101)
- UnnamedContract (`0xc2b66e247dae5ee749ae1d827190115f3653de06`, chain 1101)
- UnnamedContract (`0xc90e5df165c26441f6f4e558ca6128a42eb95787`, chain 1101)
- UnnamedContract (`0xcb1b98acaec1700dc268eaf01d1f98b67a2af30d`, chain 1101)
- UnnamedContract (`0xcf359a2fa50548c6793a5ed7f26471c1b17bb11d`, chain 1101)
- UnnamedContract (`0xd4480794d7b2bacbcb749462dd5e6f4c555036f3`, chain 1101)
- UnnamedContract (`0xd55afc5ee5ffdad3d44829b22e2c2b10a484d33e`, chain 1101)
- UnnamedContract (`0xdc94f0c55c9a21b02f2743cf4b77fa02329355fd`, chain 1101)
- UnnamedContract (`0xdfb6baa334712cbbeb26b7537f62b81c2a87b1e8`, chain 1101)
- UnnamedContract (`0xe09f85b284c177c8325c5ccaeae30a14494cdd45`, chain 1101)
- UnnamedContract (`0xf0c0db8e4e01bd9a8e01860ef83077405a53f781`, chain 1101)
- UnnamedContract (`0xf579b345cda0860668b857de10abd62442133d0f`, chain 1101)
- UnnamedContract (`0xf8b2c637a68cf6a17b1df9f8992eebeff63d2dff`, chain 1101)
- UnnamedContract (`0x003ca23fd5f0ca87d01f6ec6cd14a8ae60c2b97d`, chain 57073)
- UnnamedContract (`0x07c28e60b28c98e09f5b69c9c473fe19062624f8`, chain 57073)
- UnnamedContract (`0x0f38bfbd9c1450bcf7a758e80e148ce78cfe09fd`, chain 57073)
- UnnamedContract (`0x1506f80d2fd5fbef2424573ec86e5481c972b99a`, chain 57073)
- UnnamedContract (`0x1b39f7c19d952752f255536e72726a592167e7bc`, chain 57073)
- UnnamedContract (`0x2adeafd960366411215ce8706c1afe2853c5487b`, chain 57073)
- UnnamedContract (`0x2ae007882b91206942c70adc833a61ee531d8d5d`, chain 57073)
- UnnamedContract (`0x465e5105e6106acd15e491953bb7b674247ae191`, chain 57073)
- UnnamedContract (`0x52d7bcb650c591f6e8da90f797a1d0bfd8fd05f9`, chain 57073)
- UnnamedContract (`0x58142bd85e67c40a7c0ccf2e1eef6eb543617d2a`, chain 57073)
- UnnamedContract (`0x67567fce98a44745820069c37c395426f1c30ba6`, chain 57073)
- UnnamedContract (`0x6d40138c99f6d9116f738f44a0e6751a42232486`, chain 57073)
- UnnamedContract (`0x7b61cba306cfdb02493b94757143132b1b72bc6b`, chain 57073)
- UnnamedContract (`0x8d178ff41f94ae761325451529750166d35c8870`, chain 57073)
- UnnamedContract (`0x9e97d89c44c3f213db22593af98165a1b9e7a0d3`, chain 57073)
- UnnamedContract (`0x9ecbbceb49c39a59d18b064b7049aac2d4d28ca2`, chain 57073)
- UnnamedContract (`0xa150ef2d5827db283321d15d62d5d07fb41d636e`, chain 57073)
- UnnamedContract (`0xa75c21c5be284122a87a37a76cc6c4dd3e55a1d4`, chain 57073)
- UnnamedContract (`0xa8f7e7a361de6a2172fcb2acce68bd21597599f7`, chain 57073)
- UnnamedContract (`0xb50bcdfc914e0afb484dee621f49010862fb928d`, chain 57073)
- UnnamedContract (`0xb6b3eaf640707688186e7df34ac7d21fabaf4359`, chain 57073)
- UnnamedContract (`0xc06271eb97d960f4034ddf953e16271ccb2b10bd`, chain 57073)
- UnnamedContract (`0xc2b66e247dae5ee749ae1d827190115f3653de06`, chain 57073)
- UnnamedContract (`0xcf359a2fa50548c6793a5ed7f26471c1b17bb11d`, chain 57073)
- UnnamedContract (`0xd6a31b6aea4d26a19bf479b5032d9ddc481187e6`, chain 57073)
- UnnamedContract (`0xd82100524392c7dbdd7502f136a226c8a4c56cfa`, chain 57073)
- UnnamedContract (`0xdb168cd1bcb63304991fc6e2013d0d87ddbf99d3`, chain 57073)
- UnnamedContract (`0xe09f85b284c177c8325c5ccaeae30a14494cdd45`, chain 57073)
- UnnamedContract (`0xf579b345cda0860668b857de10abd62442133d0f`, chain 57073)
- UnnamedContract (`0xf8b2c637a68cf6a17b1df9f8992eebeff63d2dff`, chain 57073)
- UnnamedContract (`0xfee366ceca2472b99d0a501b6b3d01351c24daae`, chain 57073)
- UpgradeableProxy (`0x3a025c7fcf7632197ea82e64acd6ff53e1c06c07`, chain 80094)
- UpgradeableProxy (`0x3e9b9a16743551da49b5e136c716bba7932d2cec`, chain 80094)
- UpgradeableProxy (`0x7efd088ae500598a19a242d6d48b9f7e0d061176`, chain 80094)
- UpgradeableProxy (`0xa3f079292cc35ba64996fe0bce3049928a838bc9`, chain 80094)
- UpgradeableProxy (`0xbd225c09e4b032e41d5e8aea5f81efff45f20f7b`, chain 80094)
- UpgradeableProxy (`0xcb86b75ee6133d179a12d550b09fb3cdb1e141d4`, chain 80094)
- UpgradeableProxy (`0xd88f473832b0403c7736ef237af5aff8759b99ef`, chain 80094)
- VeArt (`0x54267e603646648e623a7a3c21dbbd4cd968a6f0`, chain 80094)
- VeFeeCalculator (`0xa7b2c7b13e7628b70dda64a257767f7292917ce9`, chain 80094)
- VesterExploder (`0x2c9052bb57898c3c2c6239f3d69567fc5962cb62`, chain 42161)
- VesterProxy (`0x531bc6e97b65adf8b3683240bd594932cfb63797`, chain 42161)

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
- Outside the address book: 193 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 87
- Confirmed-live implementations: 229 of 422 unique; 193 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/288
- Verified + Unaudited implementations: 287
- Verified by bytecode match: 0
- Unverified implementations: 134
- Unique implementations: 422
- Raw deployments: 911
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
| CallImpl | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236959 | `0x6727fe07ff5dce46f34d20fb1f9d62edda73cfdc` | ✅ Audited |

### ⚠️ Verified + Unaudited (287)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| DolomiteERC20 | token | non_address_book | non_address_book_inventory (excluded) | 2 | arbitrum | n/a | 2 deployments: arbitrum `0x0a52bcb532f59f6a37a9d3b5bc9ffd47e461d995`; arbitrum `0x6dbd962b4f62d18f756b5de57425574c4b8228d6` | ⚠️ Unaudited |
| AccountValuesReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa61cb09be5bec5e8a1aa1daed880cc0230cbb68e` | ⚠️ Unaudited |
| AdminImpl | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 6 deployments: mantle `0x18fa033a317fbda23f41af91083ca3b9fab0a6e1`; arbitrum `0x23cc48d69a44dd13fa428c1131aa249bab3c5fb6`; arbitrum `0x2a50efa8d04d84ee1aa285e035a97d9e1f1d3431`; arbitrum `0x6b15c3f0d266be946ea2d33c40d1a7204c8403a2`; arbitrum `0x93fbbdfaff42b6dd1a7a60b6d40a67407469a6ed`; arbitrum `0xb04ccb2d3850bf08eca8a9ff7db7d018fa17cfc9` | ⚠️ Unaudited |
| AlwaysOnlineOracleSentinel | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x2ce1af2108f34128eff476d56f930d8e06b30304` | ⚠️ Unaudited |
| AlwaysZeroInterestSetter | unknown | project_anchor | own_supporting | 0 | mantle | unit-236988 | 4 deployments: ethereum `0x9ecbbceb49c39a59d18b064b7049aac2d4d28ca2`; mantle `0x3f0269aac5d3fa3cd518d9e809f45458c1504923`; base `0x9ecbbceb49c39a59d18b064b7049aac2d4d28ca2`; berachain `0x9ecbbceb49c39a59d18b064b7049aac2d4d28ca2` | ⚠️ Unaudited |
| AlwaysZeroInterestSetter | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236952 | `0x37b6ff70654edfbdaa3c9a723fdadf5844de2168` | ⚠️ Unaudited |
| ARBIsolationModeTokenVaultV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 8 deployments: arbitrum `0x0c5b395408082c8313ac33201a144ee561235c0b`; arbitrum `0x1897f871852c10217b00d5b92bc127764c2f21fa`; arbitrum `0x3ddc2ae7cd2583985de986d97eed6c92efaa9146`; arbitrum `0x44122d653d5e2d2ac1f8c684093c22318748b99e`; arbitrum `0x48431fbc7a014bdc42946646c074d781cc366a70`; arbitrum `0x66a0fd23e0da1ade9f922da832053a1009187dd3`; arbitrum `0xe2d45bb7bb4de984bf590dcc9bfbdc94dfabf4e7`; arbitrum `0xe3cd6478665e0980d58df294183b6fb0742c0cd4` | ⚠️ Unaudited |
| ARBIsolationModeVaultFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1d9e10b161ae54feabe1e3f71f658cac3468e3c3` | ⚠️ Unaudited |
| ArbitrumMultiCall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 8 deployments: arbitrum `0x39c942c52c2b2c838b93089394e10d4e3104bd08`; arbitrum `0x4e4d9aa828a4597d82e3f02f9181668aab82b9f5`; arbitrum `0xa60686a02f2db7a42d753b711ae8978a5d5ba181`; arbitrum `0xa7dc4c2b6b08e967adb15ea24dcf2fe73a08a71f`; arbitrum `0xa8f329b75cc7e5068ed030e11c3967fa59d37224`; arbitrum `0xd432c30de38b5d6f30257a353ed853503ed2edab`; arbitrum `0xd86233e2e53a87f0735c5643f3189cfec07269bf`; arbitrum `0xf20b95a1f47c90e2f8c5bd06c7692b7337aee9f7` | ⚠️ Unaudited |
| ArbitrumMultiCall | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236971 | `0xb18b8b1a5bdea1f3c9776715b9325f932803fb1f` | ⚠️ Unaudited |
| ARBRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x6b14fedc245ba9ce1fbd17e49e4f38311b117341`; arbitrum `0xa7ecd2f9570218b9d3b5308af2b73d7cfb303515` | ⚠️ Unaudited |
| AsyncIsolationModeUnwrapperTraderImpl | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 8 deployments: mantle `0x07932299a91fe5a0c900d0987486115fbb30accd`; mantle `0x5231c38d2d0716439a48b67590564d87d48da12d`; mantle `0x86cfc6ba3bbbc603b8dec5b032afa10a3592470d`; arbitrum `0x622d6be41504001004129bb9da4bd8e342521985`; arbitrum `0x7078f900c96b203788fb0ccd8c78d24b71198426`; arbitrum `0xa880ad32a0a8ecc9384b368796de88fecd9e24dc`; arbitrum `0xd15ff364289568ac8958dc29f0b4f5c4d6d1f31e`; arbitrum `0xdb00380710e79b63e02a96c2bbb0230315a445a7` | ⚠️ Unaudited |
| AsyncIsolationModeWrapperTraderImpl | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: mantle `0x828f34333c4c5456db9506af2d3c677359542811`; arbitrum `0x51fbd497b53b4ffe144399a3029479af2707f2ec`; arbitrum `0xca1e8e660ba01206187684297aabf36be30016d4`; arbitrum `0xfb5ce5d42c0fa1504d041d0655a40d05815fffe7` | ⚠️ Unaudited |
| BorrowPositionProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x144dcfcd3287cf4372887ef55225696924a82511` | ⚠️ Unaudited |
| BorrowPositionProxy | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-236982 | `0xe43638797513ef7a6d326a95e8647d86d2f5a099` | ⚠️ Unaudited |
| BorrowPositionProxyV1 | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-236848 | `0x67567fce98a44745820069c37c395426f1c30ba6` | ⚠️ Unaudited |
| BorrowPositionProxyV1 | core_logic | project_anchor | own_supporting | 0 | mantle | unit-236999 | `0x97a08604a56f16947a4a956efec2ef223364b733` | ⚠️ Unaudited |
| BorrowPositionProxyV1 | core_logic | project_anchor | own_supporting | 0 | base | unit-237080 | 2 deployments: base `0x67567fce98a44745820069c37c395426f1c30ba6`; berachain `0x67567fce98a44745820069c37c395426f1c30ba6` | ⚠️ Unaudited |
| BorrowPositionProxyV2 | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-236856 | `0xc06271eb97d960f4034ddf953e16271ccb2b10bd` | ⚠️ Unaudited |
| BorrowPositionProxyV2 | core_logic | project_anchor | own_supporting | 0 | mantle | unit-237006 | `0xe99a7e4556caf7925fbac52765128e524e9dd793` | ⚠️ Unaudited |
| BorrowPositionProxyV2 | core_logic | project_anchor | own_supporting | 0 | base | unit-237088 | 2 deployments: base `0xc06271eb97d960f4034ddf953e16271ccb2b10bd`; berachain `0xc06271eb97d960f4034ddf953e16271ccb2b10bd` | ⚠️ Unaudited |
| BorrowPositionProxyV2 | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-236953 | `0x38e49a617305101216ec6306e3a18065d14bf3a7` | ⚠️ Unaudited |
| BorrowPositionProxyV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x9a7c4f9bb2a68b6ea44942203d87fd1e6e4cd29f`; arbitrum `0xb2b5d8ffe4c3c5eea7d71ea4db9cc2b2fab6f3ec` | ⚠️ Unaudited |
| BorrowPositionRouter | adapter | project_anchor | own_supporting | 1 | ethereum | unit-237098 | `0xf579b345cda0860668b857de10abd62442133d0f` | ⚠️ Unaudited |
| BorrowPositionRouter | adapter | project_anchor | own_supporting | 1 | base | unit-237131 | `0xf579b345cda0860668b857de10abd62442133d0f` | ⚠️ Unaudited |
| BorrowPositionRouter | adapter | project_anchor | own_supporting | 1 | arbitrum | unit-237105 | `0xf579b345cda0860668b857de10abd62442133d0f` | ⚠️ Unaudited |
| BorrowPositionRouter | adapter | project_anchor | own_supporting | 1 | berachain | unit-237122 | `0xf579b345cda0860668b857de10abd62442133d0f` | ⚠️ Unaudited |
| CallImpl | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 4 deployments: mantle `0x894ec118e18f167cc94b56546bc3cc22f8022f4e`; arbitrum `0x94bab7c3810029d06937fd30e6aefd395eb1ca06`; arbitrum `0xcda1826be8764b7104e66a3b4bf93cdbf2464419`; arbitrum `0xfce308e5427071876aefa83e31c53985862956c4` | ⚠️ Unaudited |
| ChainlinkPriceOracleV3 | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-236845 | `0x465e5105e6106acd15e491953bb7b674247ae191` | ⚠️ Unaudited |
| ChainlinkPriceOracleV3 | operational_periphery | project_anchor | own_supporting | 0 | base | unit-237077 | 2 deployments: base `0x465e5105e6106acd15e491953bb7b674247ae191`; berachain `0x465e5105e6106acd15e491953bb7b674247ae191` | ⚠️ Unaudited |
| ChaosLabsPriceOracleV3 | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-236970 | `0xb02808f5db0e6926e00af4971abdf1da6c7db34e` | ⚠️ Unaudited |
| ChroniclePriceOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x43c2fdb89a1c491f9fe86e1ff05bd2be204ab4ae` | ⚠️ Unaudited |
| ChroniclePriceOracleV3 | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-236855 | `0xb6b3eaf640707688186e7df34ac7d21fabaf4359` | ⚠️ Unaudited |
| ChroniclePriceOracleV3 | operational_periphery | project_anchor | own_supporting | 0 | mantle | unit-237004 | `0xe4d3450d52edf515433fec12eaefffbfa83250b9` | ⚠️ Unaudited |
| ChroniclePriceOracleV3 | operational_periphery | project_anchor | own_supporting | 0 | base | unit-237087 | 2 deployments: base `0xb6b3eaf640707688186e7df34ac7d21fabaf4359`; berachain `0xb6b3eaf640707688186e7df34ac7d21fabaf4359` | ⚠️ Unaudited |
| ChroniclePriceOracleV3 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236964 | `0x8990a46fd1f2e00b8eb85dafd85735d2b5ed4eeb` | ⚠️ Unaudited |
| CREATE3Factory | registry | project_anchor | own_supporting | 0 | ethereum | unit-236853 | 5 deployments: ethereum `0xa8f7e7a361de6a2172fcb2acce68bd21597599f7`; mantle `0xa8f7e7a361de6a2172fcb2acce68bd21597599f7`; base `0xa8f7e7a361de6a2172fcb2acce68bd21597599f7`; arbitrum `0xa8f7e7a361de6a2172fcb2acce68bd21597599f7`; berachain `0xa8f7e7a361de6a2172fcb2acce68bd21597599f7` | ⚠️ Unaudited |
| DepositImpl | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 7 deployments: mantle `0x23cc48d69a44dd13fa428c1131aa249bab3c5fb6`; arbitrum `0x22dd9f4393a3cc698d6c09ad14b0b9d515084fc7`; arbitrum `0x58067f851c63cbc42e5c44748be58da26e29caf5`; arbitrum `0x5b12e419a57e3102ec1d47bd11ba5ec87ef264fb`; arbitrum `0x631fafbfeaf3984e0ab34a4be1a74fa2e9060f60`; arbitrum `0xc4d82e8e5240ac7c816aca138eb41534c9ad76e1`; arbitrum `0xf884b50a1d0d1ffd96fd8ab9e4d1c0d8d0803a33` | ⚠️ Unaudited |
| DepositWithdrawalProxy | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-236859 | `0xd6a31b6aea4d26a19bf479b5032d9ddc481187e6` | ⚠️ Unaudited |
| DepositWithdrawalProxy | operational_periphery | project_anchor | own_supporting | 0 | mantle | unit-236985 | `0x1a3752eb5db6b2ac0207ce3847f18743d3facca5` | ⚠️ Unaudited |
| DepositWithdrawalProxy | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236948 | `0x17c57c98b666bac9f3dce4033180190fe923f13d` | ⚠️ Unaudited |
| DepositWithdrawalProxy | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x9fa142853af93d0cc3af986c27688d54ce61ca8f`; arbitrum `0xa526b730b96d0adc11b206560de19760f12737c4`; arbitrum `0xe355df372c4faaedf895b958de5d7fb89215aeea` | ⚠️ Unaudited |
| DepositWithdrawalProxy | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-236969 | `0xadb9d68c613df4aa363b42161e1282117c7b9594` | ⚠️ Unaudited |
| DepositWithdrawalProxy | operational_periphery | project_anchor | own_supporting | 0 | berachain | unit-237065 | `0xd6a31b6aea4d26a19bf479b5032d9ddc481187e6` | ⚠️ Unaudited |
| DepositWithdrawalRouter | operational_periphery | project_anchor | own_supporting | 1 | ethereum | unit-237095 | `0xf8b2c637a68cf6a17b1df9f8992eebeff63d2dff` | ⚠️ Unaudited |
| DepositWithdrawalRouter | operational_periphery | project_anchor | own_supporting | 1 | mantle | unit-237108 | `0xf8b2c637a68cf6a17b1df9f8992eebeff63d2dff` | ⚠️ Unaudited |
| DepositWithdrawalRouter | operational_periphery | project_anchor | own_supporting | 1 | base | unit-237127 | `0xf8b2c637a68cf6a17b1df9f8992eebeff63d2dff` | ⚠️ Unaudited |
| DepositWithdrawalRouter | operational_periphery | project_anchor | own_supporting | 1 | arbitrum | unit-237101 | `0xf8b2c637a68cf6a17b1df9f8992eebeff63d2dff` | ⚠️ Unaudited |
| DepositWithdrawalRouter | operational_periphery | project_anchor | own_supporting | 1 | berachain | unit-237113 | `0xf8b2c637a68cf6a17b1df9f8992eebeff63d2dff` | ⚠️ Unaudited |
| DOLO | unknown | project_anchor | own_supporting | 0 | berachain | unit-237044 | `0x0f81001ef0a83ecce5ccebf63eb302c70a39a654` | ⚠️ Unaudited |
| DolomiteAccountRegistry | registry | project_anchor | own_supporting | 1 | mantle | unit-237111 | `0xc90e5df165c26441f6f4e558ca6128a42eb95787` | ⚠️ Unaudited |
| DolomiteAccountRegistry | registry | project_anchor | own_supporting | 1 | base | unit-237130 | `0xfee366ceca2472b99d0a501b6b3d01351c24daae` | ⚠️ Unaudited |
| DolomiteAccountRegistry | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-237104 | `0xc777fb526922fb61581b65f8eb55bb769cd59c63` | ⚠️ Unaudited |
| DolomiteAccountRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: mantle `0xee34b48a6fc757386763409183bbab704a0b22e6`; arbitrum `0xdeaacc7a7ef622584fc19b13f5ef674cfa4b690b` | ⚠️ Unaudited |
| DolomiteAccountRegistry | registry | project_anchor | own_supporting | 1 | berachain | unit-237121 | `0xfee366ceca2472b99d0a501b6b3d01351c24daae` | ⚠️ Unaudited |
| DolomiteAmmFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: arbitrum `0x38ff2f1b4f104ee4830d7a46adbf74fa7ea07a7e`; arbitrum `0x79c666093972bdcd77efb350b2f88b42d0de1394`; arbitrum `0xd55afc5ee5ffdad3d44829b22e2c2b10a484d33e`; arbitrum `0xd99c21c96103f36bc1fa26dd6448af4da030c1ef`; arbitrum `0xf1ad8a1845b2d8a7c87c5915243d87f074921615` | ⚠️ Unaudited |
| DolomiteAmmRouterProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 7 deployments: arbitrum `0x03809ae9a86061d8901f020f8778bce1ce8c44f0`; arbitrum `0x9d66b4e07ee5e2f7acd1298cca6f22959f5cf77f`; arbitrum `0xa09b4a3fc92965e587a94539ee8b35ecf42d5a08`; arbitrum `0xc28a4ec9f09e4071e3707eaaca5c3754fa4f5faa`; arbitrum `0xc47e015830e775ec932bcce8cfc9452f5d76f4bd`; arbitrum `0xd8f9c59176ae25414fc4180f6433fc45b0cbb632`; arbitrum `0xe6ef4f0b2455bab92ce7cc78e35324ab58917de8` | ⚠️ Unaudited |
| DolomiteCompatibleWhitelistForPlutusDAO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x4f8b6ef682ee0e3a66eb5507dfb0daa647362c20`; arbitrum `0xd873e5d8020cfd47b6268ca5d3732c4f75cca7ec` | ⚠️ Unaudited |
| DolomiteERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x5a1166fbadd1c78afe088497bef5a23e5bac57a1`; arbitrum `0xfa7e3cbbc839841d3221a99e174dc06c96524b1c` | ⚠️ Unaudited |
| DolomiteERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x709881d9039d8e2f5ede3eec64657ecbfe5ca585`; arbitrum `0xb67534c6eb4d38391d4d61efb1ecaee167010e4c` | ⚠️ Unaudited |
| DolomiteERC20WithPayable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x1c68e777966cc3083f0adcdfe8be31eb2eafe64f` | ⚠️ Unaudited |
| DolomiteERC20WithPayable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x517e81e661363c7ae152aabb1aa2c3afc0460130`; arbitrum `0xbe2b54256b671a1104fe2d9f5280db1b4cde8046` | ⚠️ Unaudited |
| DolomiteERC4626 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xce29b273fdd21cef1ce4dfd104dd608941d781a0` | ⚠️ Unaudited |
| DolomiteERC4626 | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | arbitrum | n/a | 4 deployments: arbitrum `0x00173df2fe78ffcde820fac4de4a0b061f5eb6b8`; arbitrum `0x25e50469e598d3f87462d70b444ad1f8d3a1e434`; arbitrum `0x5138b4e470a759bbc1987136ed332fd3c37304af`; arbitrum `0x73c47e1c8be85604d89eb66c920e78360498dd54` | ⚠️ Unaudited |
| DolomiteERC4626WithPayable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x0a21d2995f7acac4b46fc4c2c5b93fcbd69083db` | ⚠️ Unaudited |
| DolomiteERC4626WithPayable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0xa8f462446f7edd7c13ffab71710726d29a1bda20`; arbitrum `0xe37b8ebac74e1f7d0c991276c34eda12fef20667` | ⚠️ Unaudited |
| DolomiteMargin | unknown | project_anchor | own_supporting | 0 | ethereum | unit-236839 | `0x003ca23fd5f0ca87d01f6ec6cd14a8ae60c2b97d` | ⚠️ Unaudited |
| DolomiteMargin | unknown | project_anchor | own_supporting | 0 | mantle | unit-237005 | `0xe6ef4f0b2455bab92ce7cc78e35324ab58917de8` | ⚠️ Unaudited |
| DolomiteMargin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: arbitrum `0x6a76986201e1906eb8d887bb4ad74b55888617af`; arbitrum `0x9f7779a8af28de91262ba9d6383fef899102e876`; arbitrum `0xb7576f7a382b8f446846ef72fedb6c3e6d699e7e`; arbitrum `0xe44cefd2e6b0b846e2720e7b823e173d9fdf8601` | ⚠️ Unaudited |
| DolomiteMargin | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236960 | `0x6bd780e7fdf01d77e4d475c821f1e7ae05409072` | ⚠️ Unaudited |
| DolomiteMargin | unknown | project_anchor | own_supporting | 0 | berachain | unit-237040 | `0x003ca23fd5f0ca87d01f6ec6cd14a8ae60c2b97d` | ⚠️ Unaudited |
| DolomiteMigrator | periphery | project_anchor | own_supporting | 0 | ethereum | unit-236850 | `0x9e97d89c44c3f213db22593af98165a1b9e7a0d3` | ⚠️ Unaudited |
| DolomiteMigrator | periphery | project_anchor | own_supporting | 0 | mantle | unit-236989 | `0x481ef837a6266a0798f0465e14d9a38400843cbd` | ⚠️ Unaudited |
| DolomiteMigrator | periphery | project_anchor | own_supporting | 0 | base | unit-237082 | 2 deployments: base `0x9e97d89c44c3f213db22593af98165a1b9e7a0d3`; berachain `0x9e97d89c44c3f213db22593af98165a1b9e7a0d3` | ⚠️ Unaudited |
| DolomiteMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x32c327ae19e226e6643eace8bcec62cadcd0f990` | ⚠️ Unaudited |
| DolomiteMigrator | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236977 | `0xd5545e44d6baed250781375fcb98d9bdc7f5afc9` | ⚠️ Unaudited |
| DolomiteOwner | unknown | project_anchor | own_supporting | 0 | mantle | unit-237002 | 3 deployments: mantle `0xcf359a2fa50548c6793a5ed7f26471c1b17bb11d`; base `0xcf359a2fa50548c6793a5ed7f26471c1b17bb11d`; arbitrum `0xcf359a2fa50548c6793a5ed7f26471c1b17bb11d` | ⚠️ Unaudited |
| DolomiteOwner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x68f6d3b583f2cbaf11b60bfeb92c49efcd03933c` | ⚠️ Unaudited |
| DolomiteOwnerV1 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-236858 | `0xcf359a2fa50548c6793a5ed7f26471c1b17bb11d` | ⚠️ Unaudited |
| DolomiteOwnerV1 | unknown | project_anchor | own_supporting | 0 | berachain | unit-237064 | `0xcf359a2fa50548c6793a5ed7f26471c1b17bb11d` | ⚠️ Unaudited |
| DolomiteOwnerV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-236857 | `0xc2b66e247dae5ee749ae1d827190115f3653de06` | ⚠️ Unaudited |
| DolomiteOwnerV2 | unknown | project_anchor | own_supporting | 0 | mantle | unit-237001 | 4 deployments: mantle `0xc2b66e247dae5ee749ae1d827190115f3653de06`; base `0xc2b66e247dae5ee749ae1d827190115f3653de06`; arbitrum `0xc2b66e247dae5ee749ae1d827190115f3653de06`; berachain `0xc2b66e247dae5ee749ae1d827190115f3653de06` | ⚠️ Unaudited |
| DolomiteRegistryImplementation | registry | project_anchor | own_supporting | 1 | ethereum | unit-237099 | `0x0f38bfbd9c1450bcf7a758e80e148ce78cfe09fd` | ⚠️ Unaudited |
| DolomiteRegistryImplementation | registry | project_anchor | own_supporting | 1 | mantle | unit-237112 | `0x7bec164cacd60d5cbcaa7b81d9da4cf6a0f7e09b` | ⚠️ Unaudited |
| DolomiteRegistryImplementation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 21 deployments: mantle `0x2fe6f58436907a99ff73954a1cec4b1192127642`; mantle `0x5b1e3b0c577a37c82ebd03f543dc423bcd3ea1ca`; mantle `0xfc280671d79b02086dd59c89f69632040d366ea8`; arbitrum `0x0315c50fe76c0f69090f4195fe68f18368a269b9`; arbitrum `0x1052e7673c132672b31d3e461e290e61783778a6`; arbitrum `0x1f578eb5937fb4bb121083911667673458202e52`; arbitrum `0x53093589700635ca5871e5260831a9f98f7050b1`; arbitrum `0x5e13c267f433ac627df93d79ef87c7a40b4f73b7`; arbitrum `0x759fd3aacfdeb4bb83bc7b0c603556e4e82c23ee`; arbitrum `0x89ef0b57018a9e81cc37a3e9be12a727b3764f5d`; arbitrum `0xa95c12ce9ba490a70137d45cfc3fc351a5673bcb`; arbitrum `0xaa8eac4dd4bfa64d77c3f946072d857a07c16f29`; arbitrum `0xad1877d5d1daf3f71495f9c7720a829f5fa3c758`; arbitrum `0xbcb38440cf63b2edc2e2613a98e5e59582096c11`; arbitrum `0xc97eeac4c3b0a3387b06799abcc1f678f4068733`; arbitrum `0xdac9339bf093cdd2d7bff6580c107247fe21eb9c`; arbitrum `0xe8ef4707313c529f9144af52eecb8fb94e3c0a5b`; arbitrum `0xf5e5e253533c63d02bf7d7ea49412f18d4d5cac4`; arbitrum `0xf5e882c6d791e65b203bc786822ce35d18eb684a`; arbitrum `0xfbdae3ad24766297e141aa3a5eb8209cab43ce6b`; arbitrum `0xff9ae57c0b1e587caaf9a4294621858608ab7c89` | ⚠️ Unaudited |
| DolomiteRegistryImplementation | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-237107 | `0x2a059d6d682e5fb1226eb8bc2977b512698c2404` | ⚠️ Unaudited |
| DolomiteRegistryImplementation | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | arbitrum | n/a | 3 deployments: arbitrum `0x33b0862724ce237a8cb35fcf8df38f952f1b624f`; arbitrum `0x5343c6a56c60e836182bf4b669bc57d9b888199c`; arbitrum `0xa2f6351341b890f4c075338096e36e9996f35407` | ⚠️ Unaudited |
| DOLOWithOwnable | governance | project_anchor | own_supporting | 0 | ethereum | unit-236841 | 2 deployments: ethereum `0x0f81001ef0a83ecce5ccebf63eb302c70a39a654`; arbitrum `0x0f81001ef0a83ecce5ccebf63eb302c70a39a654` | ⚠️ Unaudited |
| DoubleExponentInterestSetter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 8 deployments: mantle `0xdb70d853618bdabd6742bef2a03da7d704aa687c`; arbitrum `0x0a34f58c7afe7caaaf36a039f9d69f45ff24d415`; arbitrum `0x2f05886c57b5b4bd7d2ebf2adf64a521888f1a95`; arbitrum `0x39871a4e6153547c2d0b1f8afcdc6530d8d9d061`; arbitrum `0x77694d25ee0b4f4a05374fdde824b31cd0457d40`; arbitrum `0x836b557cf9ef29fcf49c776841191782df34e4e5`; arbitrum `0xf176162c7a352e0c34ab3f35a2c367470fb63555`; arbitrum `0xf74fdc3e515f05bd0c5f89fbf03f59a02cfdb37b` | ⚠️ Unaudited |
| EsGmxReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8b7d8e6a48b627ff77bb734c42355f74821219fc` | ⚠️ Unaudited |
| EventEmitterRegistry | registry | project_anchor | own_supporting | 1 | ethereum | unit-237097 | `0x6d40138c99f6d9116f738f44a0e6751a42232486` | ⚠️ Unaudited |
| EventEmitterRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 11 deployments: mantle `0x093b0659a02d6472864e6e42ad18540393f6302f`; mantle `0x250b152e33018623c8fb5ddf54ce1cdb99d6b5d1`; mantle `0x2fdb2bfb1f5926e9996fd86fe5e0782b126f8785`; mantle `0x78cf9bfaa4d44ed123f8b74030f1c3d63e1b8720`; arbitrum `0x0b2db9b821825fa179d93570812972fc6d37d0a3`; arbitrum `0x1804bcc142191b90cc0a7116685cdf24f29318c3`; arbitrum `0x3fcbc774cc83c27e1c5458475328938d82828122`; arbitrum `0x968e3f08a2c8964a99eec23cf2d57a659d8015ec`; arbitrum `0xa524c3aa9f859626a9d5f08ef2db84d83358c223`; arbitrum `0xcc6f8fd443dc165dafa7bd32219b1e817f2335b9`; arbitrum `0xd3792bddefbc1bf48d36780b5b1d2e7df4ace5ea` | ⚠️ Unaudited |
| EventEmitterRegistry | registry | project_anchor | own_supporting | 1 | mantle | unit-237110 | `0x778cea4ce43ba1a3ed6306ca692b8d9d3dfb827c` | ⚠️ Unaudited |
| EventEmitterRegistry | registry | project_anchor | own_supporting | 1 | base | unit-237129 | `0x6d40138c99f6d9116f738f44a0e6751a42232486` | ⚠️ Unaudited |
| EventEmitterRegistry | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-237103 | `0x4bff12773b0dc3cb35f174b5cd351f662018cc2f` | ⚠️ Unaudited |
| EventEmitterRegistry | registry | project_anchor | own_supporting | 1 | berachain | unit-237120 | `0x6d40138c99f6d9116f738f44a0e6751a42232486` | ⚠️ Unaudited |
| Expiry | unknown | project_anchor | own_supporting | 0 | ethereum | unit-236844 | `0x2ae007882b91206942c70adc833a61ee531d8d5d` | ⚠️ Unaudited |
| Expiry | unknown | project_anchor | own_supporting | 0 | mantle | unit-236993 | `0x6df6dbf5053c3771217376fb3ef7f1f5d4889a25` | ⚠️ Unaudited |
| Expiry | unknown | project_anchor | own_supporting | 0 | base | unit-237076 | 2 deployments: base `0x2ae007882b91206942c70adc833a61ee531d8d5d`; berachain `0x2ae007882b91206942c70adc833a61ee531d8d5d` | ⚠️ Unaudited |
| Expiry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: arbitrum `0x0d64b6c7e51843c053e5ae9a92f88b0a81dcd8dc`; arbitrum `0x2ce1af2108f34128eff476d56f930d8e06b30304`; arbitrum `0x9ffa7607736ed48ad81b9645675cc1ada15a0fae`; arbitrum `0xee34b48a6fc757386763409183bbab704a0b22e6` | ⚠️ Unaudited |
| Expiry | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236979 | `0xdec1ae3b570ac3c57871bbd7bfeacc807f973bea` | ⚠️ Unaudited |
| ExpiryProxy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-236842 | `0x1b39f7c19d952752f255536e72726a592167e7bc` | ⚠️ Unaudited |
| ExpiryProxy | unknown | project_anchor | own_supporting | 0 | mantle | unit-236983 | `0x075a0614a64467f852cc3af3876574afc5fecc65` | ⚠️ Unaudited |
| ExpiryProxy | unknown | project_anchor | own_supporting | 0 | base | unit-237074 | 2 deployments: base `0x1b39f7c19d952752f255536e72726a592167e7bc`; berachain `0x1b39f7c19d952752f255536e72726a592167e7bc` | ⚠️ Unaudited |
| ExpiryProxy | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236954 | `0x40899e265a7899968f0f153410321b9175730b00` | ⚠️ Unaudited |
| ExternalOARB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc5e16f5009776ab645d6719b72962892428b2ac2` | ⚠️ Unaudited |
| ExternalVesterImplementationV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3d2586da719cac754ab3b0143f1c9886bea7a8b9` | ⚠️ Unaudited |
| GenericTraderProxyV1 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-236854 | `0xb50bcdfc914e0afb484dee621f49010862fb928d` | ⚠️ Unaudited |
| GenericTraderProxyV1 | unknown | project_anchor | own_supporting | 0 | mantle | unit-237003 | `0xd432c30de38b5d6f30257a353ed853503ed2edab` | ⚠️ Unaudited |
| GenericTraderProxyV1 | unknown | project_anchor | own_supporting | 0 | base | unit-237086 | 2 deployments: base `0xb50bcdfc914e0afb484dee621f49010862fb928d`; berachain `0xb50bcdfc914e0afb484dee621f49010862fb928d` | ⚠️ Unaudited |
| GenericTraderProxyV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 8 deployments: mantle `0x8a13c00facd1971fbb7ced5ebf88f9e900419d5c`; arbitrum `0x26cb28c95c964b75fe6e118e267e6f17908a7f7c`; arbitrum `0x3e647e1242a8ce0ce013cb967fbff742d7846242`; arbitrum `0x4f565c20a15f11edd5dad95c4cc9e4c3c82b6fa6`; arbitrum `0x9615e00ff9bf025571ac66e385f095aa5b304c1a`; arbitrum `0xc1a4850ab6d8ba93cd662da695cf5cdd49fc5ebd`; arbitrum `0xe50c3118349f09abafc1bb01ad5cb946b1de83f6`; arbitrum `0xf6d3278553b5d523eeb58f52df6e3737292ca363` | ⚠️ Unaudited |
| GenericTraderProxyV1 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236967 | `0x905f3add52f01a9069218c8d1c11e240aff61d2b` | ⚠️ Unaudited |
| GenericTraderProxyV1Lib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: mantle `0x6727fe07ff5dce46f34d20fb1f9d62edda73cfdc`; mantle `0xec502fe4c3e0c6ad08bfc176d57756143b817c4b`; arbitrum `0x361b242c2e4f7e002205c0d016b9ae0ac97c93d1`; arbitrum `0x49df0d7a2e52088e0672a91196b21cfdb4e8bf93`; arbitrum `0x5477f499f1273a89041527e7a1e76184d857df68` | ⚠️ Unaudited |
| GenericTraderRouter | adapter | project_anchor | own_supporting | 1 | ethereum | unit-237100 | `0x7b61cba306cfdb02493b94757143132b1b72bc6b` | ⚠️ Unaudited |
| GenericTraderRouter | adapter | project_anchor | own_supporting | 1 | base | unit-237132 | `0x7b61cba306cfdb02493b94757143132b1b72bc6b` | ⚠️ Unaudited |
| GenericTraderRouter | adapter | project_anchor | own_supporting | 1 | berachain | unit-237126 | `0x7b61cba306cfdb02493b94757143132b1b72bc6b` | ⚠️ Unaudited |
| GettersImpl | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x00c2b5a97641380fd10e1f69f8219b2642f86459` | ⚠️ Unaudited |
| GLPIsolationModeTokenVaultV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: arbitrum `0x0dbbd1da9bf685b079d8d7e1575a5df0d305eb4c`; arbitrum `0x319457b25ba347fb305c85c16bd3bd31bbbe4088`; arbitrum `0x36becd748e7e446069f47209555ec92db8b97146`; arbitrum `0x60f8d78181a49f8423fdff477254e82f16247d32` | ⚠️ Unaudited |
| GLPIsolationModeTokenVaultV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 6 deployments: arbitrum `0x4600e18f69cf1abfb2a4a8b388c635c6a71d256a`; arbitrum `0x56359da5151ab4b12370690a4e81ea09ae6ad212`; arbitrum `0x6fde670a0bd6fd4930e7b5403e579721ae1d0831`; arbitrum `0x7bb95cac97f906b683e62167a3178448d0ba0c30`; arbitrum `0x898a4cdd6536a96a033bf8ba45f1ac0a8355d677`; arbitrum `0xf592b1379920383bb67b4134529dc1061e33bf07` | ⚠️ Unaudited |
| GLPIsolationModeUnwrapperTraderV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: arbitrum `0x83e805152c99b3b4ffd6fc62a9058f63ed5d1fa2`; arbitrum `0xaacdc43568f9adc4d3b67a26bd04159ded39d79d`; arbitrum `0xbe39b67e4c58c203de332ccca8efb3a3f717d184`; arbitrum `0xf25e0d08ed3f692d3aa5195d781cd858179c582d` | ⚠️ Unaudited |
| GLPIsolationModeWrapperTraderV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: arbitrum `0x4717fb0ba2231cd8174a93bc325fad1baae49506`; arbitrum `0x815ebff233430b8c7e10420519bd42c3f81729fc`; arbitrum `0xa5f85eb5585ccb54a06eda290ec9b065ed3a6d58`; arbitrum `0xec3162ad61731b9e0b02f40504c88525d327f91b` | ⚠️ Unaudited |
| GLPPriceOracleV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x26cf2b04ba936aff81435e67c7c1551e17271744`; arbitrum `0x32a558519623a96611248660e882dc9cf0b15791`; arbitrum `0xf3420945232797a411ab72ef47ef63fea1cfde24` | ⚠️ Unaudited |
| GLPUnwrapperProxyV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x54ef98673563e830ee5cf80cf4900086022a75a0` | ⚠️ Unaudited |
| GLPUnwrapperTraderV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe2e26241e8572912d0fa3c213b935d10a4fe2268` | ⚠️ Unaudited |
| GLPUnwrapperTraderV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x54e523208ed40a591d9f54ee949c5c374d1131ea` | ⚠️ Unaudited |
| GLPWrappedTokenUserVaultFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x34df4e8062a8c8ae97e3382b452bd7bf60542698` | ⚠️ Unaudited |
| GLPWrappedTokenUserVaultV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0xc1d404297e1bb0eebbef4fda22629550cd427a53`; arbitrum `0xdc525abadae4c27b40c462fae8a1e7011e3f1531` | ⚠️ Unaudited |
| GLPWrapperProxyV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3d6189afb5efd2117b1c9ccf4742737795da9448` | ⚠️ Unaudited |
| GLPWrapperTraderV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfa60e0fc3da354d68f9d3ec5ac638d36bbb13bfe` | ⚠️ Unaudited |
| GLPWrapperTraderV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaa33255178a7be031a2d6b8438bfb55ca9a64225` | ⚠️ Unaudited |
| GMXIsolationModeTokenVaultV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 8 deployments: arbitrum `0x0ddf58358f00165cc0463a296905278f2bc0527e`; arbitrum `0x13cdef45ea21f7ff7835d6619f6c481ad039ff37`; arbitrum `0x74e373b844089ee791bc6032a8f9a91ce823ed27`; arbitrum `0x95f13cc09cd1f69469389e11dd6e89fa845a26fe`; arbitrum `0xb5f5d2cb83f97a7d79761088c069cd7a06456eab`; arbitrum `0xc43985a8986332fdaf4e4b21dd71bd3188745c0f`; arbitrum `0xd28d5952533aa05151f3c454964758b987e85b46`; arbitrum `0xd4cf0da853f93d391e42ef81b1debd9b20c402b8` | ⚠️ Unaudited |
| GMXIsolationModeVaultFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x790ff506ac24b03a21f3d0019227447ae2b55ca5` | ⚠️ Unaudited |
| GmxRegistryV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x068dc745455f65c3dc3cf3b439b661113b31166e`; arbitrum `0x07f1142c3025d39241051d1dcb19b9fff4f377a1` | ⚠️ Unaudited |
| GmxRegistryV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x39f39051c115d909d25021f5a18137b18abce7ad`; arbitrum `0xdbc61629a28901ce6c8a0d9a2bcf74ece8b30f89` | ⚠️ Unaudited |
| GmxV2IsolationModeTokenVaultV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 16 deployments: arbitrum `0x1f975c95b32859d3d5b37aa85c44c44dd462f4dc`; arbitrum `0x264d5c31fae0df7027c8f536dec21bc8a475c4ae`; arbitrum `0x4dd20f428816a63aaddddba646061306413fbb99`; arbitrum `0x5799a6dfbc4871a9110a0d4d4351ba54165211dc`; arbitrum `0x742bb2c55ff88b6b03e2192f34cfd74aab3f9e33`; arbitrum `0x7977d37395813be4e08124ed9b9b92e232df6ce6`; arbitrum `0x818f986edc9a208497206f816e4f6042d3440fb1`; arbitrum `0x924a11b867ae293ad21543db203042ba4aa7e0a1`; arbitrum `0x94d1817ff561aeb637a42393f38c3efabf769e8f`; arbitrum `0xb7919fef2f5beb533910680427c33fe211629094`; arbitrum `0xb93e5783ae432ee8ca9e636cabf7b658be2162c4`; arbitrum `0xbb86e997e5fafdc37d1e34b92749772059d4524f`; arbitrum `0xbd9f938f5baae2ded3f5c75cd89fcfc2a7933061`; arbitrum `0xc9f5034878d0bf5f378d64ac4be27a5fc1f2d931`; arbitrum `0xcfc1cdfc4e6ecc4a786eaedc66a81ef592c3deb1`; arbitrum `0xe72f237563bb6d70170cdf55f743d691da35ed3d` | ⚠️ Unaudited |
| GmxV2IsolationModeUnwrapperTraderV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 9 | arbitrum | n/a | 9 deployments: arbitrum `0x0572e554784ea93312d18408aef2223431bed4ec`; arbitrum `0x106fda10c64ffced99737b942ff7fc08a5ed0200`; arbitrum `0x2b9d148fabcaa522015492d205cad9f2b4852758`; arbitrum `0x3338384dca79f2cc3d33611b257f904af3a5cfbe`; arbitrum `0x71fcbbd889594639ea29a859b84265e41d1157c4`; arbitrum `0x77a7dc42e1591575166d2a0b98e25dac7b311317`; arbitrum `0xa1b50f27456fc53b187dc1dcedd636e976af63e5`; arbitrum `0xdfdbbd3b6d3c93e539e57f095ab68bf359f0d83c`; arbitrum `0xecd64fb5e83b40ab72fee9c1d0c3d1463ff86034` | ⚠️ Unaudited |
| GmxV2IsolationModeUnwrapperTraderV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 13 deployments: arbitrum `0x2d898d5f9ef550a80bd27ca280ce93e2968dfe9e`; arbitrum `0x342adec7ed745c389a4a7cb27033edc9401ab916`; arbitrum `0x4f1272d2d8a009445afab7d1972e44560f330c10`; arbitrum `0x55261cebe9a9159b69106907f84f6f881f0d4390`; arbitrum `0x5627a99a763f8ac194b82a96a081984cd0a0873c`; arbitrum `0x7e00064c3236992cbd396c845a97cb4c67f83eff`; arbitrum `0x8690c27cc455d4f63b59a4dd9843c882e6346130`; arbitrum `0x9cd90d066100004005ebe71978e8567a89805fd1`; arbitrum `0xa2e03b566a9ded496f7b4f6315040e2233c72d8b`; arbitrum `0xa39f1a9900c57fef088fd14e9ae43e77661ea0fd`; arbitrum `0xe87bb3f256b3034a987f7b2230d16ab2ce51e9f7`; arbitrum `0xe96151b9dcd9951baa3ce33accd5dec69576eb03`; arbitrum `0xeccd34d6b320eeaebc7041450600c7ce7571eab6` | ⚠️ Unaudited |
| GmxV2IsolationModeVaultFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 12 deployments: arbitrum `0x18cb14564fbb015bd3439220d177799355abc0e0`; arbitrum `0x1beed3b7d1237b7773b5c4c249933e3ca5e027c1`; arbitrum `0x1e8e8b7a2f827b3bc12b00ee402145061b7050ef`; arbitrum `0x1ebb1c7023addbb2b6e30e6f4c8d4a4440bfd412`; arbitrum `0x20d51cb520c4622dcc3d7e35003dbab07d547e7e`; arbitrum `0x24c9121c75c099b38d40020872b8a0d2c27c614d`; arbitrum `0x2c799166c9f0dbf9efc5004cbce4c5a37fa39329`; arbitrum `0x2d165a76dd3e552df3860789331ab73c5a3d7f92`; arbitrum `0x505582242757f16d72f8c4462a616e388ca1b074`; arbitrum `0x5c99f6cf6069698d234d50bf69ebd2f53e45ed1c`; arbitrum `0xb15bbbfcff6c411410c66642306d1ffa7ecec4d8`; arbitrum `0xc587646f67b38739006ed0200e2e0a26fdb01c9b` | ⚠️ Unaudited |
| GmxV2IsolationModeWrapperTraderV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 8 | arbitrum | n/a | 8 deployments: arbitrum `0x2059e12116aabe982475b37af8800ec17572dbe6`; arbitrum `0x471c5cf22bead0b3585de5bdf4c1138af30d1d2d`; arbitrum `0x6d1da0fcdf7b1351988f6d766c0b8c9c1b013907`; arbitrum `0x86bb92c9fc019a12535c9cbd152989f736f72b53`; arbitrum `0x8f6bc6ead4914c10e9dcba0289a3892eb32e7bf2`; arbitrum `0xba32936ae28940bdda99e31f4d580a09018d7e47`; arbitrum `0xc503064b1d7dcf39304c72c5b4750f0b01259ef0`; arbitrum `0xc58ccfb7c8207ab9b1b2ce89b292c5db353e06d8` | ⚠️ Unaudited |
| GmxV2IsolationModeWrapperTraderV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 11 deployments: arbitrum `0x62f345c0f4482e9e45538a9ec78abbda8d520526`; arbitrum `0x66502c4a505f10b5d0bceef038ad56a7c1d8a9db`; arbitrum `0x827246b7cd92883f2118c9e81eeeeab91fe166ba`; arbitrum `0x971dcbdb1cc21bdcd3cf218752798c79043f102b`; arbitrum `0xa3b49d5649040c766b82d63fab1e44556e7f8898`; arbitrum `0xaf9ab89b49ad3eb32593952c001807a38c4fbacf`; arbitrum `0xb1902725262eb4a4a9b57a9c45f7c49d12f2c9d9`; arbitrum `0xb321b2576070adfc0ae6065e800231cf70654c18`; arbitrum `0xb51e13202712360206efa967a9239a0448de29aa`; arbitrum `0xc99f41a4472c8043aebed82a3a70967d16d9ad37`; arbitrum `0xcb62d51768a39e84c23234db58331376a903be7e` | ⚠️ Unaudited |
| GmxV2Library | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 9 deployments: arbitrum `0x38e254e3c6ba4077de32e8612bf3112156386d65`; arbitrum `0x517b963914ba99eb4f4342c6be0f586cb1af74d6`; arbitrum `0x5e7b26e22456585fbc0349c5ff98a69ac9b2ab71`; arbitrum `0x6b8964b454e514d97ee50cd5e87a2338360229d9`; arbitrum `0x86c46693f64c3e40899ddd63c9cae09b95a75c59`; arbitrum `0xbafd5327d84b9838347f1a5528b281772e874fb2`; arbitrum `0xd4f9fb20c9693670bb79b8c9869a1a4c3edd07e1`; arbitrum `0xd670f7e3ef7df3e0a3806e1023656b987e571454`; arbitrum `0xd7b6b9e73f3f0ee8062942772afa877a2cb3a374` | ⚠️ Unaudited |
| GmxV2MarketTokenPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x14349a78224a45a6e3372e5205098ddc11a596a0`; arbitrum `0xf4596bf2b237160ca7b15fd510b46ba12db54974`; arbitrum `0xf6cb6348716e27e86189730b71f7db27fd1048cc` | ⚠️ Unaudited |
| GmxV2Registry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xadc1a8ad79e55ab9e8569e497775b63e737316a8` | ⚠️ Unaudited |
| GmxV2Registry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0xe629707bd7cec7b39b3f02555d92af1eaaaae3f5`; arbitrum `0xf01dc65eb0271d07a4f37298cfef6f44c5203eb6` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | project_anchor | own_supporting | 1 | ethereum | unit-237096 | `0xa75c21c5be284122a87a37a76cc6c4dd3e55a1d4` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | project_anchor | own_supporting | 1 | mantle | unit-237109 | `0xa75c21c5be284122a87a37a76cc6c4dd3e55a1d4` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | project_anchor | own_supporting | 1 | base | unit-237128 | `0xa75c21c5be284122a87a37a76cc6c4dd3e55a1d4` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | project_anchor | own_supporting | 1 | berachain | unit-237114 | `0xa75c21c5be284122a87a37a76cc6c4dd3e55a1d4` | ⚠️ Unaudited |
| GravitaExternalVesterImplementationV2 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xec0f08bc015a0d0fba1df0b8b11d4779f5a04326` | ⚠️ Unaudited |
| IsolationModeFreezableLiquidatorProxy | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-236849 | `0x8d178ff41f94ae761325451529750166d35c8870` | ⚠️ Unaudited |
| IsolationModeFreezableLiquidatorProxy | operational_periphery | project_anchor | own_supporting | 0 | base | unit-237081 | `0x8d178ff41f94ae761325451529750166d35c8870` | ⚠️ Unaudited |
| IsolationModeFreezableLiquidatorProxy | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-236961 | `0x76ac5542ee033a15f78d1f8b4ad48af618a33e44` | ⚠️ Unaudited |
| IsolationModeFreezableLiquidatorProxy | unknown | project_anchor | own_supporting | 0 | arbitrum | n/a | 4 deployments: mantle `0xb1e10bc4e270997d774f004053be97cb77591980`; mantle `0xfed1f92936fb71da71ecf2d22543a85489e259a4`; arbitrum `0xadea94e726ab96b6377e5dff5c24a73130d16026`; arbitrum `0xfe42623a5353a64baf4864a1202828a6743f0ed0` | ⚠️ Unaudited |
| IsolationModeFreezableLiquidatorProxy | operational_periphery | project_anchor | own_supporting | 0 | berachain | unit-237054 | `0x8d178ff41f94ae761325451529750166d35c8870` | ⚠️ Unaudited |
| IsolationModeTokenVaultMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc9299e8457e41b9415acc2658602bdf3aa590729` | ⚠️ Unaudited |
| IsolationModeTokenVaultV1ActionsImpl | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 11 deployments: mantle `0x017e2a089ec5712bbdb8e7b2a0903269f40bc4ec`; mantle `0x8e2f95b1c107bbcf00c7f8439cc335e70c462f6f`; arbitrum `0x2ccef16241ef4008edd777d509f5931ac57ff5d2`; arbitrum `0x7b9f5dfee29383d266faddcad0c0a70ead9057a7`; arbitrum `0xa2dfe626d3567d2a6111177bba832e4c66ef7d21`; arbitrum `0xa665ef04a4da96205981c8844abc054311b555cf`; arbitrum `0xadedda034f43a50fbf430f47cdbce4457cf818c2`; arbitrum `0xb76cc11ba2bc2b3b40469e9a8c1ae0c84f954f3f`; arbitrum `0xc06e4d86c2ce81bb9e2eceb59bf96bb301569a6f`; arbitrum `0xd04d6a579ffef85c17a7ccf4641ff1e28b7b21ef`; arbitrum `0xf3766d95549fdfb37e17bbc7bd47defb57a792dd` | ⚠️ Unaudited |
| IsolationModeTraderProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 7 deployments: arbitrum `0x039bc43fe68d76211b82707b1ee0960fc237362f`; arbitrum `0x16b3600edb16eb9e7b40e026c26f1edad7e9b18d`; arbitrum `0x99190dd587d239eaa41aaa960195529bad97b333`; arbitrum `0xc33b3d653bac5be49be105c25a5373984ef0de09`; arbitrum `0xc874562c034fd246dd0f9c011668c2f087fe691f`; arbitrum `0xd55a716e10ce7d2301058dc167408a504e1db5cb`; arbitrum `0xd73cfb3f18dd39566374828c549cd67ad9953e66` | ⚠️ Unaudited |
| JonesIsolationModeTokenVaultMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6b4ab9b50f451f58f41a36bca95d61dd02c384a8` | ⚠️ Unaudited |
| JonesUSDCIsolationModeTokenVaultV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 11 deployments: arbitrum `0x1d33550e923dfc4dbb01d90b32f36b3279c0e3ca`; arbitrum `0x1e61df0cd71c507c460a9f972501b3acff86b51a`; arbitrum `0x235c83695a63e71f6d9a9414ce181c1a05a240ff`; arbitrum `0x27968252a14b30b2f459cf51e90d7a77706c9032`; arbitrum `0x27974a1e7d5c8e4dc57c514c48b2f4164015f995`; arbitrum `0x2eb27406b550269e25aae0c22e77943c61be5bc4`; arbitrum `0x6c1e20bd44f7a3ab3ed448b84676bbe4146ebf9b`; arbitrum `0x6ec8b4e5702b175e99ffec3c8cd3b66f972c6cee`; arbitrum `0x6f2a6b46ac26cdd7b66e01a0cf8b15c29b1e482b`; arbitrum `0x702bbec7ed9cbd9494d2eb2f5dbb22829d848e19`; arbitrum `0x81501e1ce9d5c2aecd206fea827a0809b5ed1a70` | ⚠️ Unaudited |
| JonesUSDCIsolationModeTokenVaultV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: arbitrum `0x504683343495cbde1eed002ffe1744fed21b592b`; arbitrum `0x73bc3dc69e49ea21e670e73c351562c996018dce`; arbitrum `0x78258898413e03918395670ea1ddb1b3fd5ec74f`; arbitrum `0xc1e23335d9d7699d6eb0b31d99912440b33345ce`; arbitrum `0xe01a3c3e0c96c810c9314bf4978225e482188aa1` | ⚠️ Unaudited |
| JonesUSDCIsolationModeUnwrapperTraderV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 8 deployments: arbitrum `0x00e4180f25896229979a52d73be22963e93bc8ce`; arbitrum `0x61eb7f571cc89bb56c3314891bd323701d4071ec`; arbitrum `0x76306f4e3dba43056dd05dbf391e48f4f03acb79`; arbitrum `0x7abe6b1d9d02d15cb65b65fb1a3db8f8556c878e`; arbitrum `0x87763a4f392bdfd00c39f264db63a0b93831ac08`; arbitrum `0x8c24b066cc65685989a88b6417f3dee8a60fb6e0`; arbitrum `0xa8a93601f1af9698af2eb1c55765d1664b204045`; arbitrum `0xf525be80bbac8ab53703b6f5bd3da9a0e63f6971` | ⚠️ Unaudited |
| JonesUSDCIsolationModeUnwrapperTraderV2ForLiquidation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 6 deployments: arbitrum `0x17dda7914de4d2b6c94edf59c3e7049ce64e6c93`; arbitrum `0x8ba70c0fc026b2324face4c9a052488ddd48aa7c`; arbitrum `0x9750d87abd718e6900755d7eef091c5cbd9c9330`; arbitrum `0xcc7ac40f2d5bcaabd6ce9bef91b26ed297fbec5c`; arbitrum `0xdba4fa28d454f401b2227c24f9a21199c3c5d349`; arbitrum `0xdf088c040e817e951553b14157e3475c9c4dbf0e` | ⚠️ Unaudited |
| JonesUSDCIsolationModeVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x2adba3f917bb0af2530f8f295ad2a6ff1111fc05`; arbitrum `0x8bfc421e3353809598aee362b4883d1cc8e330a4` | ⚠️ Unaudited |
| JonesUSDCIsolationModeWrapperTraderV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 7 deployments: arbitrum `0x22c58ef969682a74550f9caea36f10a32aa23789`; arbitrum `0x362b6b5f9e78bd5c584e72bfbdde2c1fb2cb5063`; arbitrum `0x8427d514206a16b7ac5530f75d510502d4238767`; arbitrum `0x8f43489e30e9f24bcfc8c5c1710ff4c426ccf785`; arbitrum `0xbc502907bfc41d1bd3b4f4c7269ea15be7eb93d0`; arbitrum `0xe4240a6eae3ed21110ed94c046e9036374e89915`; arbitrum `0xeff8a5308818d0c09df5776cc1cb69ac39e2d6f0` | ⚠️ Unaudited |
| JonesUSDCPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x2ed56783e04b6f11fcc982dd536061945f9f1e0e`; arbitrum `0xe091e7a5897759faf5591d2ef1cff0fd9a02f3cf` | ⚠️ Unaudited |
| JonesUSDCRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: arbitrum `0x2b989e06e1887300c7bb01a713d7c899df945186`; arbitrum `0x482c1bf61895c3d5a7a51700e11379ea18612b77`; arbitrum `0x8b1f06026225d9ee0d3c270b5349c0e7b0e6ca31`; arbitrum `0x9855590ea877393e936b935d72fe8549dcab3f9f`; arbitrum `0xdeeaee043c556c9a5065623f612509a55e63092b` | ⚠️ Unaudited |
| JonesUSDCRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x6856d57bf5aa7772f293029aac9002f65985823b`; arbitrum `0xc30a2c10add9cf993386642dcb7c84b78a84c0ed` | ⚠️ Unaudited |
| JonesUSDCRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0xea0030692310330f9f844056303519694c069295`; arbitrum `0xef85d592402458ff181c4693152f6c973dbe7b65` | ⚠️ Unaudited |
| JonesUSDCTransformer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x370a47aff17249d010db21db53f3691190f10cc3` | ⚠️ Unaudited |
| JonesUSDCV2IsolationModeVaultFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x14c60cb8301e879dfb9eecbebc013353b7e33012` | ⚠️ Unaudited |
| LinearStepFunctionInterestSetter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 40 deployments: mantle `0x0a512510438bd340c59a000e997709eedc0b7589`; mantle `0x11a7e2ef87b50605606542783876b32667cb6bde`; mantle `0x2a2e69a1cce76df1f0ca877b3f29c7cedf47053a`; mantle `0x2bab6a89fe40f88a9219485f514da90ec60bd3bf`; mantle `0x58067f851c63cbc42e5c44748be58da26e29caf5`; mantle `0x5d6b63795dcd977f736bddc58b68f4ff38731eda`; mantle `0x5f2eff4fe0a26d2d1b25c79e872c2b7bccf781a2`; mantle `0x694f7ba53e331d8494043a41262dc063b0f5c8b4`; mantle `0x6d35bfe1de1e2c311e347e306fc6770dab1b0a57`; mantle `0x7c228f0c1e92bd61e116c60778b546b6da7d6c83`; mantle `0x82b931e867fd16603a48eb667bde2ff2654dc08c`; mantle `0x8b808a1feef1d9cdd00fb46a19e4814e5646197c`; mantle `0x8e62704c2b4e6f56f3c15229cb98a358c5598c19`; mantle `0x94bab7c3810029d06937fd30e6aefd395eb1ca06`; mantle `0x958a9c230360003b548d572cb88bb25b8a744bf7`; mantle `0xa60686a02f2db7a42d753b711ae8978a5d5ba181`; mantle `0xc38372fa7e6431dcc490f354a1bcc36a5d6c32e6`; mantle `0xd1f7f2162ecb645eec7484cef084949791811a65`; mantle `0xdc94f0c55c9a21b02f2743cf4b77fa02329355fd`; mantle `0xe355df372c4faaedf895b958de5d7fb89215aeea`; arbitrum `0x065e35073029ad0293d517860138f2ec7d691a3b`; arbitrum `0x093d6d441f18f1aa66126d72a2fae75194ead734`; arbitrum `0x22c1b4aa6390d55690d581f1851ba3ab80a02753`; arbitrum `0x27b285cb6864c8eea08fe0f8ab6bd99fa37f4114`; arbitrum `0x291c753a8751eb05889996f334e1554505ad7715`; arbitrum `0x36d9b05c13af6c86e9100f05a9afeab766fd1930`; arbitrum `0x5aefd9b2656552afbb326a9b3d5d1badc483025a`; arbitrum `0x7a6c75914b66a685a977d12377d3563c274544d4`; arbitrum `0xad9f52c7e9c8b3cf0ae85ccf71b51b47cab3d48b`; arbitrum `0xb1f1e974129bd0bb5752b4306e5b6625a1aea4fd`; arbitrum `0xb6279957547fa5e64752a295f126211349233d11`; arbitrum `0xc10934e017f9f6c0ee411454f2d15aa8cfe16bfe`; arbitrum `0xcf63a1ec835f86dee66023823d29c2dd27ae5081`; arbitrum `0xd25e3bebe9cbf93b1e8a402e357f49ed32c1bf12`; arbitrum `0xd3d3803177bd12cc8735cb360ec1c06208d4a94a`; arbitrum `0xd80b6eb30a41f0387e7fb9aff9cf22ecf52e69d3`; arbitrum `0xd9378cb58aa7f591e2919a4cb25a9e7d3e2234e8`; arbitrum `0xe3718ad9e2cb2e21bb28add8c6520b6ac4d60a81`; arbitrum `0xe3923100a183372d2c48d44e949ac6da3312d8d3`; arbitrum `0xe396aad57e974fe6c55443c4c87c5b226f8f9886` | ⚠️ Unaudited |
| LiquidateOrVaporizeImpl | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 8 deployments: mantle `0xb131bf1484abc080aca0983c07852d730924691b`; arbitrum `0x20fad8614e40e486c79f26b1c053873119b8fa3b`; arbitrum `0x452ca7b561f9c9af3f77c2d93331a0e0566dee59`; arbitrum `0x5f2eff4fe0a26d2d1b25c79e872c2b7bccf781a2`; arbitrum `0x63bd442334d457b58742a72b88abeaeffef6d451`; arbitrum `0x78cf9bfaa4d44ed123f8b74030f1c3d63e1b8720`; arbitrum `0xa222d4fe2fc4bd944952c4949a5dd4ed469f5d12`; arbitrum `0xce29b273fdd21cef1ce4dfd104dd608941d781a0` | ⚠️ Unaudited |
| LiquidatorAssetRegistry | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-236860 | `0xd82100524392c7dbdd7502f136a226c8a4c56cfa` | ⚠️ Unaudited |
| LiquidatorAssetRegistry | operational_periphery | project_anchor | own_supporting | 0 | mantle | unit-236995 | 3 deployments: mantle `0x7b6d28a0debb6f4b1c58743aae3bf149a32d69b5`; base `0xd82100524392c7dbdd7502f136a226c8a4c56cfa`; berachain `0xd82100524392c7dbdd7502f136a226c8a4c56cfa` | ⚠️ Unaudited |
| LiquidatorAssetRegistry | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236946 | `0x10d98759762efac656bd4be7f2f5599208f44fac` | ⚠️ Unaudited |
| LiquidatorAssetRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x89324260096f1e7d3678bf0ec9e3b8c7530111b2` | ⚠️ Unaudited |
| LiquidatorProxyV1 | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-236861 | `0xdb168cd1bcb63304991fc6e2013d0d87ddbf99d3` | ⚠️ Unaudited |
| LiquidatorProxyV1 | operational_periphery | project_anchor | own_supporting | 0 | mantle | unit-236996 | `0x8e6b0e3ad57a9637ab27c1480600d45177073a71` | ⚠️ Unaudited |
| LiquidatorProxyV1 | operational_periphery | project_anchor | own_supporting | 0 | base | unit-237093 | 2 deployments: base `0xdb168cd1bcb63304991fc6e2013d0d87ddbf99d3`; berachain `0xdb168cd1bcb63304991fc6e2013d0d87ddbf99d3` | ⚠️ Unaudited |
| LiquidatorProxyV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 7 deployments: arbitrum `0x10114c4d4c6d55474b9c20cdbf622b3c8806e745`; arbitrum `0x227455c3e636b0fcc9d37f3efa2cd5af7a812141`; arbitrum `0x6d13e5f5458f2bc4d6589093ee5632be658caa53`; arbitrum `0x84b027f8fcefe40d044ccf9ccb54cc6e48c53450`; arbitrum `0xa5f4ceb032a1d7c711bb8ae687f9ab13a976e2e9`; arbitrum `0xaee9ea8e290860dbda4b8c01f669025f2deec122`; arbitrum `0xdda7d883b19536823ccd6d16f0b14d9ba1fab581` | ⚠️ Unaudited |
| LiquidatorProxyV1 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236965 | `0x8c6e337da1bd534548c5a9b6ac3d9e4d15fa715a` | ⚠️ Unaudited |
| LiquidatorProxyV1WithAmm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 9 deployments: arbitrum `0x43baa743edb127fe01b655a34193535c637bc198`; arbitrum `0x6e106ae5bab0a353fac04325d8e676e82d617f77`; arbitrum `0x7a20b3d15097c052222b25a5535451dd93aaa8c6`; arbitrum `0xaa652e0e6fd880dcbc217847bfd1a58c249bdf63`; arbitrum `0xb3876872e60b168dafc9c650a2e1522f45febe0b`; arbitrum `0xb3ff983d7927540b7f92602657a2a26977664e77`; arbitrum `0xe1d7178f5544fb3b70888689e28b847b73a6f719`; arbitrum `0xe6b3895f9a7f81909dde224fa2582869736dfd5f`; arbitrum `0xf61a26ff162685c22b880e568f607d0aeb41f1f2` | ⚠️ Unaudited |
| LiquidatorProxyV2WithExternalLiquidity | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x1bbc201f68f209a054e3e86891401d7255f8d3ba`; arbitrum `0xcc24caa605375c011a4f7e6be7f6c2a3e377f368`; arbitrum `0xf53f5c41d36a6952b6ff623269c920c0c0978fb1` | ⚠️ Unaudited |
| LiquidatorProxyV3WithLiquidityToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0c35882b90bc7da4d499553a8c681ce4e17fcc02` | ⚠️ Unaudited |
| LiquidatorProxyV4WithGenericTrader | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-236843 | `0x2adeafd960366411215ce8706c1afe2853c5487b` | ⚠️ Unaudited |
| LiquidatorProxyV4WithGenericTrader | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 9 deployments: mantle `0x17b8bcf4b7cc3782d4c67407de6144a904a77f2c`; arbitrum `0x1f30d41694fe439280c67e5556a0694d2b11b573`; arbitrum `0x6c75d62fe0d4e584ab6248cd0121d28a4cb6220a`; arbitrum `0x7997a5e848fd5aa92e47f4d94011c6c9aa5bccdc`; arbitrum `0xac66e962a1c52b8a3b32af432a60ffdbc99ebd0b`; arbitrum `0xc5c857bd8f01a343ec82666aea14025d0208d869`; arbitrum `0xe409a91de00a8cec8432e10e6b4cad63383a8ea6`; arbitrum `0xfcfce8d1899f0e4773ca5722592e4aa19fec79b9`; arbitrum `0xfd84446abcb9016f823904f13d16fb7f103ab6d7` | ⚠️ Unaudited |
| LiquidatorProxyV4WithGenericTrader | operational_periphery | project_anchor | own_supporting | 0 | mantle | unit-236986 | 2 deployments: mantle `0x22dd9f4393a3cc698d6c09ad14b0b9d515084fc7`; base `0x2adeafd960366411215ce8706c1afe2853c5487b` | ⚠️ Unaudited |
| LiquidatorProxyV4WithGenericTrader | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236951 | `0x34975624e992bf5c094ef0cf3344660f7aab9cb3` | ⚠️ Unaudited |
| LiquidatorProxyV5 | operational_periphery | project_anchor | own_supporting | 0 | mantle | unit-236984 | `0x1506f80d2fd5fbef2424573ec86e5481c972b99a` | ⚠️ Unaudited |
| LiquidatorProxyV5 | operational_periphery | project_anchor | own_supporting | 0 | base | unit-237073 | `0x1506f80d2fd5fbef2424573ec86e5481c972b99a` | ⚠️ Unaudited |
| MagicGLPPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4dfbb88233c1ebbaf9ff55d4c0aba97343a78f5f` | ⚠️ Unaudited |
| MagicGLPUnwrapperTrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9e8d909c340a7af5d6623c6d7c7aca436eae345d` | ⚠️ Unaudited |
| MagicGLPUnwrapperTraderV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x76a03ced39f0930777974906ee7e792bd25a29dd` | ⚠️ Unaudited |
| MagicGLPWrapperTrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x36ab95afa0648598c3c5329b2c26b5179ebb14a1` | ⚠️ Unaudited |
| MagicGLPWrapperTraderV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x298a07c4a5b6bc32e1ef37bf5ccb3a17c106224d` | ⚠️ Unaudited |
| MarginPositionRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7a952dfab6eddb9a7f8e49d679f778be4bc626d0` | ⚠️ Unaudited |
| Migrations | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: mantle `0x5b03c8af639a419b9b66041a46048056a28bca7c`; arbitrum `0x34bd12225d0b4daadc933cb8bed1b506e53a6b2b`; arbitrum `0x4c5aae2e250685304f25be05aef195f9267bcb43`; arbitrum `0x51d184af30f2f54bf16cea0555fa44e623e33d58`; arbitrum `0x987afbff1487bf2b6b9b19238c1cfbcfd1d8a7b1` | ⚠️ Unaudited |
| MineralToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 2 deployments: mantle `0x9f7779a8af28de91262ba9d6383fef899102e876`; arbitrum `0xd81bc90e4f329be8519cefe00b55bb1c327401ad` | ⚠️ Unaudited |
| MineralToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x01d96345e533269b53c282b8c93ed7507c4e2c5c`; arbitrum `0x946f4a316e8ae3c7fdcdf86e84496c3ee3fbf26d` | ⚠️ Unaudited |
| MNTIsolationModeTokenVaultV1 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x660bd80f67aa9c7bfb82933e1068f8f616d88255` | ⚠️ Unaudited |
| MNTIsolationModeVaultFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x6b68bdccb22931937d7d11e556d95a07e02fe3ce` | ⚠️ Unaudited |
| MNTRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 1 | mantle | n/a | 2 deployments: mantle `0x4c08681c6d8e9857fe6fbd0ba39c427199ea32d0`; mantle `0x50cc5ee639b3e3f0caf4de5905e9294fc54c9cb8` | ⚠️ Unaudited |
| MultiCall | periphery | project_anchor | own_supporting | 0 | ethereum | unit-236847 | 4 deployments: ethereum `0x58142bd85e67c40a7c0ccf2e1eef6eb543617d2a`; mantle `0x6978ffdcd509ded2f8557565e0a9fc5cfa1bebc5`; base `0x58142bd85e67c40a7c0ccf2e1eef6eb543617d2a`; berachain `0x58142bd85e67c40a7c0ccf2e1eef6eb543617d2a` | ⚠️ Unaudited |
| OARB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcbed801b4162bf2a19b06968663438b5165a6a93` | ⚠️ Unaudited |
| ODOLO | unknown | project_anchor | own_supporting | 0 | berachain | unit-237041 | `0x02e513b5b54ee216bf836ceb471507488fc89543` | ⚠️ Unaudited |
| OdosAggregatorTrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xdce03d31d9ad29c3785e61d6f85b31ab3239d379` | ⚠️ Unaudited |
| OdosAggregatorTrader | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236950 | `0x2cdbb25b4aca98a55f6b1a0f67d9f43455e67f3c` | ⚠️ Unaudited |
| OperationImpl | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 6 deployments: mantle `0x38ff2f1b4f104ee4830d7a46adbf74fa7ea07a7e`; arbitrum `0x7908b447ed2050043bb32daffab0673970124527`; arbitrum `0x8007d1ad7d73a9ef93c55b3afb21861bcb32e02c`; arbitrum `0xb131bf1484abc080aca0983c07852d730924691b`; arbitrum `0xd6a797a4ed192013cf3a444920b45bbb9c4e9d3b`; arbitrum `0xe4d3450d52edf515433fec12eaefffbfa83250b9` | ⚠️ Unaudited |
| OptionAirdrop | operational_periphery | project_anchor | own_supporting | 1 | berachain | unit-237115 | `0xd88f473832b0403c7736ef237af5aff8759b99ef` | ⚠️ Unaudited |
| OracleAggregatorV2 | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-236852 | `0xa150ef2d5827db283321d15d62d5d07fb41d636e` | ⚠️ Unaudited |
| OracleAggregatorV2 | operational_periphery | project_anchor | own_supporting | 0 | mantle | unit-236987 | `0x2c640b79ff62908fae611e6a445c7e480324b77d` | ⚠️ Unaudited |
| OracleAggregatorV2 | operational_periphery | project_anchor | own_supporting | 0 | base | unit-237084 | 2 deployments: base `0xa150ef2d5827db283321d15d62d5d07fb41d636e`; berachain `0xa150ef2d5827db283321d15d62d5d07fb41d636e` | ⚠️ Unaudited |
| OracleAggregatorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x28a17ecb649aa6d225da8cae1ac6d1495e1d8b9c` | ⚠️ Unaudited |
| OracleAggregatorV2 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236973 | `0xbfca44ab734e57dc823ca609a0714eec9ed06ca0` | ⚠️ Unaudited |
| ParaswapAggregatorTrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x6173c34e01a18d5897c06b4991152f2969059a68`; arbitrum `0x8ca96f3dc9597e4bf8770ad36d516a4550f5bfd9` | ⚠️ Unaudited |
| ParaswapAggregatorTraderV2 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236978 | `0xd991d9e0a22a51391c25b258eef8c1c4a392383a` | ⚠️ Unaudited |
| PartiallyDelayedMultiSig | governance | project_anchor | own_supporting | 0 | ethereum | unit-236846 | `0x52d7bcb650c591f6e8da90f797a1d0bfd8fd05f9` | ⚠️ Unaudited |
| PartiallyDelayedMultiSig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb48b34fcd7e64af09b868000be36861ac8df8754` | ⚠️ Unaudited |
| PayableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: arbitrum `0x027db2781590972d65e7acc7aa3d002ba16b6fc3`; arbitrum `0x6978ffdcd509ded2f8557565e0a9fc5cfa1bebc5`; arbitrum `0x88a6d8e6ffdb145a8719d43e6fd48f3383745866`; arbitrum `0xaa1a2edda1715353526ed09086b457b46375e0fa`; arbitrum `0xc90e5df165c26441f6f4e558ca6128a42eb95787` | ⚠️ Unaudited |
| PendleGLPRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xa2faf5d1bf7ea66f9dae29ab24ce1613b455f6b0` | ⚠️ Unaudited |
| PendleRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 8 | arbitrum | n/a | 8 deployments: arbitrum `0x154de437ccea5e997c303bdb4eca4de2accad2ac`; arbitrum `0x51df6bdaf0f073e387eb8709cbd43af34062e33b`; arbitrum `0x5c451e6d4032184e5c35d717e9ab62dd2279fc1d`; arbitrum `0x6c05d61095ca5369e789099c0f610ea05b8f0056`; arbitrum `0x6caec99ab0b2395dac76aec11dccc957c4ef60a5`; arbitrum `0x7561b609db632a15ed84006e92a462c37e79f1c6`; arbitrum `0x8828358d41ae20a1f7833b0892fc419d4617d2fe`; arbitrum `0xc822de44dbc24db32ae342d2342b409801077f5d` | ⚠️ Unaudited |
| PlutusVaultGLPIsolationModeTokenVaultV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 7 deployments: arbitrum `0x105df7ca44dda2a4934473a564e075f5fe7a2e11`; arbitrum `0x452a5d535c766d62e6cc795e6c43102bf8c6dc8d`; arbitrum `0x4bcab40ab73b3910999cfc109f2d6c35c6b6bf9f`; arbitrum `0x88107936912ccd536ffb99a900441d2cb0424297`; arbitrum `0x9c123841c01dd79e09f4bdb1caea7eb56462006f`; arbitrum `0xc929caa13e686bddf141c40abdcdc6b6734e2333`; arbitrum `0xe8e7e8b6b5104716502e5effba9735775f7bc9e9` | ⚠️ Unaudited |
| PlutusVaultGLPIsolationModeUnwrapperTraderV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: arbitrum `0x025332f3524b1864bf6e6d93d2bbd4deee216c24`; arbitrum `0x18e6e0adbdb42e8cc985db3cdf0459e22151d60b`; arbitrum `0x74d3cb3955e7517aec82d391c5767be50dba575f`; arbitrum `0xaa3e63b1f38dc4d7682cb34cbd0f4e1fcad57b69` | ⚠️ Unaudited |
| PlutusVaultGLPIsolationModeWrapperTraderV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: arbitrum `0x226b02aa7b2812f168ad2a08c185f76b3926d2a3`; arbitrum `0x850198296190ebdb80ce22a66ddc99f08633a7a1`; arbitrum `0x89649b0eea975a1930a36e13314d8bdde11f4698`; arbitrum `0xcf8d6cf1128abd19710731bb09100069e49db576` | ⚠️ Unaudited |
| PlutusVaultGLPPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x11e4e70b4ac087624f55d1dccab306440250a3a0`; arbitrum `0x72dfd3fefc08905f90ba962f2bc02f57e6db19ef`; arbitrum `0xcaba6d6ea33f17fe01d514fe3e402771dcf956a7` | ⚠️ Unaudited |
| PlutusVaultGLPUnwrapperTrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb5010ba20fd127af143ccfd9d77fd4c6923f6d37` | ⚠️ Unaudited |
| PlutusVaultGLPWrappedTokenUserVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5c80ac681b6b0e7ef6e0751211012601e6cfb043` | ⚠️ Unaudited |
| PlutusVaultGLPWrappedTokenUserVaultV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x978d4694f02474faef4e1d7ac19038968066f8aa` | ⚠️ Unaudited |
| PlutusVaultGLPWrapperTrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc2fa9f48b166bca8706ab53a60dca28979010b92` | ⚠️ Unaudited |
| PlutusVaultRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x6fceb6c2930d274b703b02a94eebaac7ecc6d1bb`; arbitrum `0x704ed087825d8be4dd842ea778d90d7a072ed8f3` | ⚠️ Unaudited |
| PlutusVaultRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xccb35971036a6fd0c37e04cb3d6658a57a113ce5` | ⚠️ Unaudited |
| PtGLPTransformer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc410e7d4592dbde2aab26dd28ff0bf6937fac564` | ⚠️ Unaudited |
| RamsesCLPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x86acc8e126b2c5f1bec52d7bcff1ba66b23fe41b` | ⚠️ Unaudited |
| RamsesLegacyPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x44d96d7b7b655d8372680075942f1fab41da52e0` | ⚠️ Unaudited |
| RedstonePriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x67d5c219e9a91b1918a129c721a58d0f88c7f759` | ⚠️ Unaudited |
| RedstonePriceOracleV3 | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-236862 | `0xe09f85b284c177c8325c5ccaeae30a14494cdd45` | ⚠️ Unaudited |
| RedstonePriceOracleV3 | operational_periphery | project_anchor | own_supporting | 0 | mantle | unit-236992 | `0x6b15c3f0d266be946ea2d33c40d1a7204c8403a2` | ⚠️ Unaudited |
| RedstonePriceOracleV3 | operational_periphery | project_anchor | own_supporting | 0 | base | unit-237094 | 2 deployments: base `0xe09f85b284c177c8325c5ccaeae30a14494cdd45`; berachain `0xe09f85b284c177c8325c5ccaeae30a14494cdd45` | ⚠️ Unaudited |
| RedstonePriceOracleV3 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236956 | `0x5fbae9cbbc209efdf2054e050baf5a0783be01d2` | ⚠️ Unaudited |
| RegistryProxy | registry | project_anchor | own_supporting | 0 | ethereum | unit-236863 | `0xfee366ceca2472b99d0a501b6b3d01351c24daae` | ⚠️ Unaudited |
| RegistryProxy | registry | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 20 deployments: mantle `0x02942cde28029d13e070fc5ffd160e51e44522cc`; mantle `0x141b3dd69fdef1782e8d5dfae62d10a297ac56e8`; mantle `0x3d05e4041d3a7388d566bcf4b2a5a3f0977ea9a3`; mantle `0x4723da2196668d26c76885fe23d568e9688f812d`; mantle `0x64f7a2a0f32654b09c66aa64405661f27039a249`; mantle `0x66d4d46b140149dfa603de01aac4b33723495001`; mantle `0x7656b1417886b89d6d72e8360923146d500c6c63`; mantle `0xc28a4ec9f09e4071e3707eaaca5c3754fa4f5faa`; mantle `0xd6a797a4ed192013cf3a444920b45bbb9c4e9d3b`; mantle `0xd86233e2e53a87f0735c5643f3189cfec07269bf`; arbitrum `0x1572ba6f148240ee2205d38de91c23d644d5b733`; arbitrum `0x1b349d6e54cb66f464037f6767969236c75777d5`; arbitrum `0x33d83dc5fc1f1f7559167936e204a1b53deb5315`; arbitrum `0x66ea40e7eeb447b49260bdc882cae7f7fc64696e`; arbitrum `0x6a5c4862c845f29f1e60dd3777fc34c87dac72ea`; arbitrum `0x8169e2e9b97274b9f04b93531603a30aaf610625`; arbitrum `0x97f893f0cc8f69f6133082f15758f0a3eae1b210`; arbitrum `0x9e324653d22a2de043ace687b0fd802665fb1169`; arbitrum `0xe5f58660888a8ac026de26095b024122876f6e3f`; arbitrum `0xf088cc021fbc4a040bd87c137dc697e9771fd963` | ⚠️ Unaudited |
| RegularAirdrop | operational_periphery | project_anchor | own_supporting | 1 | berachain | unit-237124 | `0xa3f079292cc35ba64996fe0bce3049928a838bc9` | ⚠️ Unaudited |
| RewardsDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: mantle `0x4232fce0d67839f4fd536990bdc02043d9ab708a`; arbitrum `0x2e3d10cc42227af0ce908f00c76ffe1de1728b4b`; arbitrum `0x669b048acd3f927ce8442617d9c6171cf4a598ad`; arbitrum `0xfb47dc009c12ecf8a6785bd5568163c5850d8360` | ⚠️ Unaudited |
| RewardsDistributor | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-236958 | `0x66cd7d0cc677f42f6662622c60a5e60ef573db67` | ⚠️ Unaudited |
| RollingClaims | unknown | project_anchor | own_supporting | 1 | berachain | unit-237123 | `0x79e6e932bf6686a4d357d7821e6e08835ba8a026` | ⚠️ Unaudited |
| RouterProxy | adapter | project_anchor | own_supporting | 0 | mantle | unit-236994 | `0x7b61cba306cfdb02493b94757143132b1b72bc6b` | ⚠️ Unaudited |
| RouterProxy | adapter | project_anchor | own_supporting | 0 | mantle | unit-237007 | `0xf579b345cda0860668b857de10abd62442133d0f` | ⚠️ Unaudited |
| SafeDelegateCallLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 2 deployments: mantle `0x52d57f0b5df4050d9b44181284e06c6d7341a5a9`; arbitrum `0xaa65096ebb42635238865eca79f6a9f61d8bb425` | ⚠️ Unaudited |
| SafeGettersForDolomiteMargin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9381942de7a66fdb4741272eab4fc0a362f7a16a` | ⚠️ Unaudited |
| SafeL2 | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-237102 | `0xa75c21c5be284122a87a37a76cc6c4dd3e55a1d4` | ⚠️ Unaudited |
| SignedOperationProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 6 deployments: mantle `0xbe6c38709fab83c8e0fe4319a5ee1440cf128f52`; arbitrum `0x0a2d7ddd83f04e2afaf5d8f6f08baa97bb11ab5d`; arbitrum `0x3d28c55ebda31f811f43a7601f36f420825531b1`; arbitrum `0x6da4cfc73590226868ce13c6155196f8e6bbc427`; arbitrum `0x80de7cb50cc6b0e1336cdde50df78eff413de7fb`; arbitrum `0xfc280671d79b02086dd59c89f69632040d366ea8` | ⚠️ Unaudited |
| SimpleFeeOwner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: arbitrum `0x07e323c9303b5646ea265e55d826c88625da779a`; arbitrum `0x2fdb2bfb1f5926e9996fd86fe5e0782b126f8785`; arbitrum `0x947f60427f2fa837b052f17521ad6242969b9aee`; arbitrum `0xd802d4b2586c80f60d55707bc26da71a64c631c2` | ⚠️ Unaudited |
| SimpleIsolationModeUnwrapperTraderV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 7 deployments: mantle `0xd4480794d7b2bacbcb749462dd5e6f4c555036f3`; arbitrum `0x0234d14f457d17c851c64ac67f364f5969e0db31`; arbitrum `0x192c34f4f9bd9732616e8edcbf26662ff8d9d695`; arbitrum `0x66aa62d0ecaa0967c78ab58e8d417a5017b7ea4e`; arbitrum `0x77e91d3f06c2c4b643f29d3fe74ca5af5e55ee68`; arbitrum `0x8cdf574402784fe40b16ce5846716949402c145c`; arbitrum `0xe437e70a287a7204125d1d16390071903841d9b0` | ⚠️ Unaudited |
| SimpleIsolationModeWrapperTraderV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 7 deployments: mantle `0x277118ca98f7a8c26afeb12928d0a37edb382d7e`; arbitrum `0x21f3395697b529a44ae1f4172ffcb9ebc9a83a74`; arbitrum `0x2e5973a6763dd2fcd182e2dd99d2e56c6f47b77f`; arbitrum `0x32fa54e84e2722fccc36e3912a121a24aa985b68`; arbitrum `0x4f69f61dc06f0517adafb6aab92a9df6e6b09598`; arbitrum `0x7f9434d0c3d77fd4d196d1469ac0db91b5beea52`; arbitrum `0xf68eb4064e3b7cf88a49c91213e457edadbd8c74` | ⚠️ Unaudited |
| StakedGmxReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x49c4e0322cc04416d0929ae4e653286d155378ba` | ⚠️ Unaudited |
| StrategicVestingClaims | operational_periphery | project_anchor | own_supporting | 1 | berachain | unit-237117 | `0x7efd088ae500598a19a242d6d48b9f7e0d061176` | ⚠️ Unaudited |
| TradeImpl | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: mantle `0xb7576f7a382b8f446846ef72fedb6c3e6d699e7e`; arbitrum `0x1e0be797880d3db0ce503cd40429a3a9f1cf56d7`; arbitrum `0x2fe6f58436907a99ff73954a1cec4b1192127642`; arbitrum `0x7d157fbaaedc920bcc4a15dc94a5f10142a19f58`; arbitrum `0xdce03d31d9ad29c3785e61d6f85b31ab3239d379` | ⚠️ Unaudited |
| TransferImpl | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 5 deployments: mantle `0x21f683ede5eb0e8a6f1768cc7dbaba0dfca1cce8`; arbitrum `0x2f503beb8c79b739f55e5b702273267492f9ba90`; arbitrum `0x52d57f0b5df4050d9b44181284e06c6d7341a5a9`; arbitrum `0xf691b87af8960e7dc70bc7636a72b850144eefa4`; arbitrum `0xfed1f92936fb71da71ecf2d22543a85489e259a4` | ⚠️ Unaudited |
| TransferProxy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-236840 | `0x07c28e60b28c98e09f5b69c9c473fe19062624f8` | ⚠️ Unaudited |
| TransferProxy | unknown | project_anchor | own_supporting | 0 | mantle | unit-236998 | `0x9582378f220c724012c59c376c1910c0549af66c` | ⚠️ Unaudited |
| TransferProxy | unknown | project_anchor | own_supporting | 0 | base | unit-237070 | 2 deployments: base `0x07c28e60b28c98e09f5b69c9c473fe19062624f8`; berachain `0x07c28e60b28c98e09f5b69c9c473fe19062624f8` | ⚠️ Unaudited |
| TransferProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: arbitrum `0x00c2b5a97641380fd10e1f69f8219b2642f86459`; arbitrum `0xb1e10bc4e270997d774f004053be97cb77591980`; arbitrum `0xcb1b98acaec1700dc268eaf01d1f98b67a2af30d`; arbitrum `0xe6f14dbf3d9c65621c639051b66fcd746e552728` | ⚠️ Unaudited |
| TransferProxy | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236963 | `0x86cfc6ba3bbbc603b8dec5b032afa10a3592470d` | ⚠️ Unaudited |
| TransferProxy | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236980 | `0xe04f884e8bb9868b6013dead84ad5a3b8cb1df5a` | ⚠️ Unaudited |
| TWAPPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: arbitrum `0x1093e0e82ec11080d6239538a5d5c60d155af851`; arbitrum `0x7dc900ee1ada0cb1b45c3c10b829682187d5e127`; arbitrum `0x8ddfa821ec6000e589de93d17b75687c9ebf8b21`; arbitrum `0xad635c94f1855de31add582ac4ce0dab699f9b1b`; arbitrum `0xcb10913bb95e66658bdb065ea85c7d6594aedf47` | ⚠️ Unaudited |
| TWAPPriceOracleV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: arbitrum `0x289f703af4999dc51189cd023a6873fd6141d645`; arbitrum `0x5fa8c36beac3842d39b26aa4e0a38dcb1e2e9dec`; arbitrum `0x7c72f2f29c05e173b6a6febf4fe7b175d9913787`; arbitrum `0x8979c647b5fb8fcddf6ccd0a8aa7ece4ad5adacd`; arbitrum `0xcaa06e8736c3f7b2198e62c2c7a446a0a3472dda` | ⚠️ Unaudited |
| UpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x836b557cf9ef29fcf49c776841191782df34e4e5` | ⚠️ Unaudited |
| USDMRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa9b377b97395c4031750ce8e9397c00c577f6c6d` | ⚠️ Unaudited |
| VeArt | unknown | project_anchor | own_supporting | 0 | berachain | unit-237051 | `0x54267e603646648e623a7a3c21dbbd4cd968a6f0` | ⚠️ Unaudited |
| VeExternalVesterImplementationV2 | operational_periphery | project_anchor | own_supporting | 1 | berachain | unit-237116 | `0x3e9b9a16743551da49b5e136c716bba7932d2cec` | ⚠️ Unaudited |
| VeFeeCalculator | unknown | project_anchor | own_supporting | 0 | berachain | unit-237058 | `0xa7b2c7b13e7628b70dda64a257767f7292917ce9` | ⚠️ Unaudited |
| VesterDiscountCalculatorV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8b43f6e9de2dc56afee03393a7d80e66ecd6a4da` | ⚠️ Unaudited |
| VesterExploder | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236949 | `0x2c9052bb57898c3c2c6239f3d69567fc5962cb62` | ⚠️ Unaudited |
| VesterExploder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc34c2fc2d1b6514fe9998d966dc843748e7e503a` | ⚠️ Unaudited |
| VesterImplementation | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0xa8e31f2b9e4c91f41a19f82bedefca86d8b2efcd`; arbitrum `0xbf08a2fdda494c2a27df96385f957f2173c1bddc` | ⚠️ Unaudited |
| VesterImplementation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd086c37e84146f6a03bacab54f80db3b2691ba80` | ⚠️ Unaudited |
| VesterImplementationLibForV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x174860044994694943117b597486071df4833f16`; arbitrum `0xd2b57e2c4460c4e651d2d7efe82290b8cf02e682` | ⚠️ Unaudited |
| VesterImplementationV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x2960c15a51bf8b190b579e6bb2f74c75e136157d`; arbitrum `0x36416f30f6e3b03d846b63e8fc6dc0722ed73a02` | ⚠️ Unaudited |
| VesterImplementationV2 | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-237106 | 2 deployments: arbitrum `0x531bc6e97b65adf8b3683240bd594932cfb63797`; arbitrum `0xdb3e6b1c71aa66bbcea9d662cbc0138be58172a5` | ⚠️ Unaudited |
| VestingClaims | operational_periphery | project_anchor | own_supporting | 1 | berachain | unit-237125 | `0x3a025c7fcf7632197ea82e64acd6ff53e1c06c07` | ⚠️ Unaudited |
| VestingClaims | operational_periphery | project_anchor | own_supporting | 1 | berachain | unit-237119 | `0xbd225c09e4b032e41d5e8aea5f81efff45f20f7b` | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | project_anchor | own_supporting | 1 | berachain | unit-237118 | `0xcb86b75ee6133d179a12d550b09fb3cdb1e141d4` | ⚠️ Unaudited |
| WithdrawalImpl | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: mantle `0x77694d25ee0b4f4a05374fdde824b31cd0457d40`; arbitrum `0x017e2a089ec5712bbdb8e7b2a0903269f40bc4ec`; arbitrum `0x43c2fdb89a1c491f9fe86e1ff05bd2be204ab4ae`; arbitrum `0x8dc7c04644b14e04e7a84654680bbf5e83a88332`; arbitrum `0xa8c90016c476540cb0103e31a98777251e435da5` | ⚠️ Unaudited |
| WorldLibertyFinancial | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3722359be0bfebb541bc98adfe1250cd901a706c` | ⚠️ Unaudited |
| WorldLibertyFinancialSale | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x4a142d62fb33e21a081863ae19ce3fc4ecf9c3ca`; ethereum `0xe217e15b3c19cc0427f9492dc3bcfe8220afad10` | ⚠️ Unaudited |
| WorldLibertyFinancialSale | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x76ef8d8b7ab2d572932091c03b9ef11ba2c51a1e`; ethereum `0xac2ea402314c50987478abafb2922dfbe3560c22` | ⚠️ Unaudited |
| WorldLibertyFinancialV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xda5e1988097297dcdc1f90d4dfe7909e847cbef6` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (134)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | x-layer | unit-236941 | `0x7b61cba306cfdb02493b94757143132b1b72bc6b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | x-layer | unit-236942 | `0x836b557cf9ef29fcf49c776841191782df34e4e5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | x-layer | unit-236943 | `0xf579b345cda0860668b857de10abd62442133d0f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | x-layer | unit-236944 | `0xf8b2c637a68cf6a17b1df9f8992eebeff63d2dff` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-236865 | `0x02942cde28029d13e070fc5ffd160e51e44522cc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-236867 | `0x08e86624ca88e702d1c43557ad82e84ef222fe96` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-236869 | `0x11a7e2ef87b50605606542783876b32667cb6bde` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-236871 | `0x14b83b01091636709a468386877619d34d431c63` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-236872 | `0x1506f80d2fd5fbef2424573ec86e5481c972b99a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-236873 | `0x17c57c98b666bac9f3dce4033180190fe923f13d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-236875 | `0x227455c3e636b0fcc9d37f3efa2cd5af7a812141` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-236876 | `0x277118ca98f7a8c26afeb12928d0a37edb382d7e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-236880 | `0x2e9be819d04cb62bf3816b627c9dff819136cec4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-236881 | `0x3f0269aac5d3fa3cd518d9e809f45458c1504923` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-236882 | `0x4232fce0d67839f4fd536990bdc02043d9ab708a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-236884 | `0x4723da2196668d26c76885fe23d568e9688f812d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-236886 | `0x52d7bcb650c591f6e8da90f797a1d0bfd8fd05f9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-236889 | `0x64f7a2a0f32654b09c66aa64405661f27039a249` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-236890 | `0x660bd80f67aa9c7bfb82933e1068f8f616d88255` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-236893 | `0x694f7ba53e331d8494043a41262dc063b0f5c8b4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-236894 | `0x6b15c3f0d266be946ea2d33c40d1a7204c8403a2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-236895 | `0x6b68bdccb22931937d7d11e556d95a07e02fe3ce` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-236896 | `0x6d35bfe1de1e2c311e347e306fc6770dab1b0a57` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-236898 | `0x7b61cba306cfdb02493b94757143132b1b72bc6b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-236900 | `0x836b557cf9ef29fcf49c776841191782df34e4e5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-236901 | `0x86cfc6ba3bbbc603b8dec5b032afa10a3592470d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-236902 | `0x88a6d8e6ffdb145a8719d43e6fd48f3383745866` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-236910 | `0xa5f4ceb032a1d7c711bb8ae687f9ab13a976e2e9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-236911 | `0xa75c21c5be284122a87a37a76cc6c4dd3e55a1d4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-236912 | `0xa8f7e7a361de6a2172fcb2acce68bd21597599f7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-236913 | `0xb3f81b0f53cdee755c70665923e08a8f0e81d0c3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-236914 | `0xb3ff983d7927540b7f92602657a2a26977664e77` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-236915 | `0xb4f0eb9c8fb5fbabef339f8738173db645c4147d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-236918 | `0xb6b3eaf640707688186e7df34ac7d21fabaf4359` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-236919 | `0xbf3179ad5339dcb6bd741bc08c3011fada586075` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-236921 | `0xc28a4ec9f09e4071e3707eaaca5c3754fa4f5faa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-236922 | `0xc2b66e247dae5ee749ae1d827190115f3653de06` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-236923 | `0xc90e5df165c26441f6f4e558ca6128a42eb95787` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-236924 | `0xcb1b98acaec1700dc268eaf01d1f98b67a2af30d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-236925 | `0xcf359a2fa50548c6793a5ed7f26471c1b17bb11d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-236926 | `0xd4480794d7b2bacbcb749462dd5e6f4c555036f3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-236927 | `0xd55afc5ee5ffdad3d44829b22e2c2b10a484d33e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-236932 | `0xdc94f0c55c9a21b02f2743cf4b77fa02329355fd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-236933 | `0xdfb6baa334712cbbeb26b7537f62b81c2a87b1e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-236934 | `0xe09f85b284c177c8325c5ccaeae30a14494cdd45` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-236935 | `0xe4d3450d52edf515433fec12eaefffbfa83250b9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-236936 | `0xf0c0db8e4e01bd9a8e01860ef83077405a53f781` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-236937 | `0xf579b345cda0860668b857de10abd62442133d0f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-236938 | `0xf8b2c637a68cf6a17b1df9f8992eebeff63d2dff` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-236939 | `0xfed1f92936fb71da71ecf2d22543a85489e259a4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-236990 | `0x52d7bcb650c591f6e8da90f797a1d0bfd8fd05f9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-236997 | `0x9101dda4c53caf2f85e39c4f135474a37eddd6b5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-237069 | `0x003ca23fd5f0ca87d01f6ec6cd14a8ae60c2b97d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-237071 | `0x0f38bfbd9c1450bcf7a758e80e148ce78cfe09fd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-237072 | `0x145637a4aa6b2001dc9ecbc89cef75bb960f90b2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-237078 | `0x52d7bcb650c591f6e8da90f797a1d0bfd8fd05f9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-237091 | `0xd6a31b6aea4d26a19bf479b5032d9ddc481187e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x003ca23fd5f0ca87d01f6ec6cd14a8ae60c2b97d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x14b83b01091636709a468386877619d34d431c63` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236947 | `0x1506f80d2fd5fbef2424573ec86e5481c972b99a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1c2a28078f8f6c6aec7fc77cdb8f22e3ca4b5edb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1ec7c893b99e289edf62f9bb88fc72bcdec5ead5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x250b152e33018623c8fb5ddf54ce1cdb99d6b5d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2c640b79ff62908fae611e6a445c7e480324b77d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2f9ba49e4411279fc0248a608d72c6ab502eeeaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x481ef837a6266a0798f0465e14d9a38400843cbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4a1e8fc38bc1222bf4932eac54b8a5bb04026cd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5231c38d2d0716439a48b67590564d87d48da12d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236955 | `0x52d7bcb650c591f6e8da90f797a1d0bfd8fd05f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x567eff5b03d9e4467b25b7e18b2411cb1d257fa2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5b1e3b0c577a37c82ebd03f543dc423bcd3ea1ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x68536922c63e91b030cc2f34814101b32e47297a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6ff3593645a7cf2b59926c2a833a559b8b004da9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7656b1417886b89d6d72e8360923146d500c6c63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x778cea4ce43ba1a3ed6306ca692b8d9d3dfb827c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236962 | `0x7b61cba306cfdb02493b94757143132b1b72bc6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7bec164cacd60d5cbcaa7b81d9da4cf6a0f7e09b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x801368c9ee31587dcab078431dfc61deef85f311` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x828f34333c4c5456db9506af2d3c677359542811` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8a80212d49f0169d58d61a5c448687d48cd6f879` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8d741f816e9c1480c38f057c8f42688a5038ce1f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236966 | `0x8fa6d763ca105b3c88fd01317db2e66021208451` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9101dda4c53caf2f85e39c4f135474a37eddd6b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x994ebc00a232df9e35313c58f608f9d6a8cefa96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9c356e2e169da4a1d760181aad99b8efebdd5022` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaf462f3f99c18df1bf26d219d2dbb9ae6a8c9329` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-236972 | `0xb3f81b0f53cdee755c70665923e08a8f0e81d0c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbf25e1230138a497bdb7bd87f4c81eeee3d503e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc61e4d039823d76d695f1f740b6f913786eb064e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcafd361fd0cdd8e6a0a58ff492c026bd25f1e2ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xccc43e1571322528bec9d7d26814d58229103d50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xce451310d82742a1689a5de6bac9fcf8a976b568` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd956b44938edc116369e7d39b013252647f3702c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdf968d42c42babe60c87f471d99845408d98b3b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdfb6baa334712cbbeb26b7537f62b81c2a87b1e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe66d14f91be2da5cd27b23d65e82703ef7984921` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe9892894e6c7d0947abb8cd3ddc84c42e9222883` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xffb4b58ee2c387eb4cb3c4f2d161d6396fec5c31` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-237009 | `0x003ca23fd5f0ca87d01f6ec6cd14a8ae60c2b97d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-237010 | `0x07c28e60b28c98e09f5b69c9c473fe19062624f8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-237011 | `0x0f38bfbd9c1450bcf7a758e80e148ce78cfe09fd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-237012 | `0x1506f80d2fd5fbef2424573ec86e5481c972b99a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-237013 | `0x1b39f7c19d952752f255536e72726a592167e7bc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-237014 | `0x2adeafd960366411215ce8706c1afe2853c5487b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-237015 | `0x2ae007882b91206942c70adc833a61ee531d8d5d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-237016 | `0x465e5105e6106acd15e491953bb7b674247ae191` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-237017 | `0x52d7bcb650c591f6e8da90f797a1d0bfd8fd05f9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-237018 | `0x58142bd85e67c40a7c0ccf2e1eef6eb543617d2a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-237019 | `0x67567fce98a44745820069c37c395426f1c30ba6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-237020 | `0x6d40138c99f6d9116f738f44a0e6751a42232486` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-237021 | `0x7b61cba306cfdb02493b94757143132b1b72bc6b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-237022 | `0x8d178ff41f94ae761325451529750166d35c8870` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-237023 | `0x9e97d89c44c3f213db22593af98165a1b9e7a0d3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-237024 | `0x9ecbbceb49c39a59d18b064b7049aac2d4d28ca2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-237025 | `0xa150ef2d5827db283321d15d62d5d07fb41d636e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-237026 | `0xa75c21c5be284122a87a37a76cc6c4dd3e55a1d4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-237027 | `0xa8f7e7a361de6a2172fcb2acce68bd21597599f7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-237028 | `0xb50bcdfc914e0afb484dee621f49010862fb928d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-237029 | `0xb6b3eaf640707688186e7df34ac7d21fabaf4359` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-237030 | `0xc06271eb97d960f4034ddf953e16271ccb2b10bd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-237031 | `0xc2b66e247dae5ee749ae1d827190115f3653de06` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-237032 | `0xcf359a2fa50548c6793a5ed7f26471c1b17bb11d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-237033 | `0xd6a31b6aea4d26a19bf479b5032d9ddc481187e6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-237034 | `0xd82100524392c7dbdd7502f136a226c8a4c56cfa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-237035 | `0xdb168cd1bcb63304991fc6e2013d0d87ddbf99d3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-237036 | `0xe09f85b284c177c8325c5ccaeae30a14494cdd45` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-237037 | `0xf579b345cda0860668b857de10abd62442133d0f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-237038 | `0xf8b2c637a68cf6a17b1df9f8992eebeff63d2dff` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-237039 | `0xfee366ceca2472b99d0a501b6b3d01351c24daae` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-237043 | `0x0f38bfbd9c1450bcf7a758e80e148ce78cfe09fd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-237045 | `0x1506f80d2fd5fbef2424573ec86e5481c972b99a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-237047 | `0x2adeafd960366411215ce8706c1afe2853c5487b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-237050 | `0x52d7bcb650c591f6e8da90f797a1d0bfd8fd05f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xb48b34fcd7e64af09b868000be36861ac8df8754` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 656
- Live contracts: 44
- Unknown liveness contracts: 612
- Source-verified contracts: 620
- Currently scope-matched contracts retained as-is: 1
- Classification counts: currently scope matched=1, candidate auto own=1, candidate review=278, contamination review=17, exact address book overlap=25, source verified unclassified=299, unverified unclassified=35

Showing first 200 of 656 contracts. The complete deployer expansion list is in `brief.json`.

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| currently scope matched | CallImpl<br>`0x6727fe07ff5dce46f34d20fb1f9d62edda73cfdc` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate auto own | AsyncIsolationModeWrapperTraderImpl<br>`0x828f34333c4c5456db9506af2d3c677359542811` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | TransparentUpgradeableProxy<br>`0xac2ea402314c50987478abafb2922dfbe3560c22` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x97f1f8003ad0fb1c99361170310c65dc84f921e3` |
| candidate review | TransparentUpgradeableProxy<br>`0xe217e15b3c19cc0427f9492dc3bcfe8220afad10` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x97f1f8003ad0fb1c99361170310c65dc84f921e3` |
| candidate review | AdminImpl<br>`0x18fa033a317fbda23f41af91083ca3b9fab0a6e1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | AsyncIsolationModeUnwrapperTraderImpl<br>`0x07932299a91fe5a0c900d0987486115fbb30accd` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | AsyncIsolationModeUnwrapperTraderImpl<br>`0x5231c38d2d0716439a48b67590564d87d48da12d` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | AsyncIsolationModeUnwrapperTraderImpl<br>`0x86cfc6ba3bbbc603b8dec5b032afa10a3592470d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | BorrowPositionProxyV2<br>`0xe99a7e4556caf7925fbac52765128e524e9dd793` | project_anchor | core_logic | live | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | CallImpl<br>`0x894ec118e18f167cc94b56546bc3cc22f8022f4e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | DepositImpl<br>`0x23cc48d69a44dd13fa428c1131aa249bab3c5fb6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | DolomiteMigrator<br>`0x481ef837a6266a0798f0465e14d9a38400843cbd` | project_anchor | periphery | live | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | DolomiteRegistryImplementation<br>`0x5b1e3b0c577a37c82ebd03f543dc423bcd3ea1ca` | non_address_book | registry | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | EventEmitterRegistry<br>`0x250b152e33018623c8fb5ddf54ce1cdb99d6b5d1` | non_address_book | registry | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | Expiry<br>`0x6df6dbf5053c3771217376fb3ef7f1f5d4889a25` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | GenericTraderProxyV1<br>`0x8a13c00facd1971fbb7ced5ebf88f9e900419d5c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | GenericTraderProxyV1<br>`0xd432c30de38b5d6f30257a353ed853503ed2edab` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | GenericTraderProxyV1Lib<br>`0x6727fe07ff5dce46f34d20fb1f9d62edda73cfdc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | GenericTraderProxyV1Lib<br>`0xec502fe4c3e0c6ad08bfc176d57756143b817c4b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | GettersImpl<br>`0x00c2b5a97641380fd10e1f69f8219b2642f86459` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | IsolationModeFreezableLiquidatorProxy<br>`0xb1e10bc4e270997d774f004053be97cb77591980` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | IsolationModeFreezableLiquidatorProxy<br>`0xfed1f92936fb71da71ecf2d22543a85489e259a4` | project_anchor | operational_periphery | live | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | IsolationModeTokenVaultV1ActionsImpl<br>`0x017e2a089ec5712bbdb8e7b2a0903269f40bc4ec` | non_address_book | core_logic | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | IsolationModeTokenVaultV1ActionsImpl<br>`0x8e2f95b1c107bbcf00c7f8439cc335e70c462f6f` | non_address_book | core_logic | unknown | verified | review: missing_independent_ownership_evidence | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | LiquidateOrVaporizeImpl<br>`0xb131bf1484abc080aca0983c07852d730924691b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | MNTIsolationModeTokenVaultV1<br>`0x660bd80f67aa9c7bfb82933e1068f8f616d88255` | non_address_book | core_logic | unknown | verified | review: missing_independent_ownership_evidence | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | OdosAggregatorTrader<br>`0xdce03d31d9ad29c3785e61d6f85b31ab3239d379` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | OperationImpl<br>`0x38ff2f1b4f104ee4830d7a46adbf74fa7ea07a7e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | RegistryProxy<br>`0x778cea4ce43ba1a3ed6306ca692b8d9d3dfb827c` | project_anchor | registry | live | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | RegistryProxy<br>`0x7bec164cacd60d5cbcaa7b81d9da4cf6a0f7e09b` | project_anchor | registry | live | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | SafeDelegateCallLib<br>`0x52d57f0b5df4050d9b44181284e06c6d7341a5a9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | TradeImpl<br>`0xb7576f7a382b8f446846ef72fedb6c3e6d699e7e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | TransferImpl<br>`0x21f683ede5eb0e8a6f1768cc7dbaba0dfca1cce8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | WithdrawalImpl<br>`0x77694d25ee0b4f4a05374fdde824b31cd0457d40` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | AdminImpl<br>`0x23cc48d69a44dd13fa428c1131aa249bab3c5fb6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | AdminImpl<br>`0x2a50efa8d04d84ee1aa285e035a97d9e1f1d3431` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | AdminImpl<br>`0x6b15c3f0d266be946ea2d33c40d1a7204c8403a2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | AdminImpl<br>`0x93fbbdfaff42b6dd1a7a60b6d40a67407469a6ed` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | AdminImpl<br>`0xb04ccb2d3850bf08eca8a9ff7db7d018fa17cfc9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | ARBIsolationModeTokenVaultV1<br>`0x0c5b395408082c8313ac33201a144ee561235c0b` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | ARBIsolationModeTokenVaultV1<br>`0x1897f871852c10217b00d5b92bc127764c2f21fa` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | ARBIsolationModeTokenVaultV1<br>`0x3ddc2ae7cd2583985de986d97eed6c92efaa9146` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | ARBIsolationModeTokenVaultV1<br>`0x44122d653d5e2d2ac1f8c684093c22318748b99e` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | ARBIsolationModeTokenVaultV1<br>`0x48431fbc7a014bdc42946646c074d781cc366a70` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | ARBIsolationModeTokenVaultV1<br>`0x66a0fd23e0da1ade9f922da832053a1009187dd3` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | ARBIsolationModeTokenVaultV1<br>`0xe2d45bb7bb4de984bf590dcc9bfbdc94dfabf4e7` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | ARBIsolationModeTokenVaultV1<br>`0xe3cd6478665e0980d58df294183b6fb0742c0cd4` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | AsyncIsolationModeUnwrapperTraderImpl<br>`0x622d6be41504001004129bb9da4bd8e342521985` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | AsyncIsolationModeUnwrapperTraderImpl<br>`0x7078f900c96b203788fb0ccd8c78d24b71198426` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | AsyncIsolationModeUnwrapperTraderImpl<br>`0xa880ad32a0a8ecc9384b368796de88fecd9e24dc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | AsyncIsolationModeUnwrapperTraderImpl<br>`0xd15ff364289568ac8958dc29f0b4f5c4d6d1f31e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | AsyncIsolationModeUnwrapperTraderImpl<br>`0xdb00380710e79b63e02a96c2bbb0230315a445a7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | AsyncIsolationModeWrapperTraderImpl<br>`0x51fbd497b53b4ffe144399a3029479af2707f2ec` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | AsyncIsolationModeWrapperTraderImpl<br>`0xca1e8e660ba01206187684297aabf36be30016d4` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | AsyncIsolationModeWrapperTraderImpl<br>`0xfb5ce5d42c0fa1504d041d0655a40d05815fffe7` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | BorrowPositionProxyV2<br>`0x9a7c4f9bb2a68b6ea44942203d87fd1e6e4cd29f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | BorrowPositionProxyV2<br>`0xb2b5d8ffe4c3c5eea7d71ea4db9cc2b2fab6f3ec` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | CallImpl<br>`0x94bab7c3810029d06937fd30e6aefd395eb1ca06` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | CallImpl<br>`0xcda1826be8764b7104e66a3b4bf93cdbf2464419` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | CallImpl<br>`0xfce308e5427071876aefa83e31c53985862956c4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | DepositImpl<br>`0x22dd9f4393a3cc698d6c09ad14b0b9d515084fc7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | DepositImpl<br>`0x58067f851c63cbc42e5c44748be58da26e29caf5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | DepositImpl<br>`0x5b12e419a57e3102ec1d47bd11ba5ec87ef264fb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | DepositImpl<br>`0x631fafbfeaf3984e0ab34a4be1a74fa2e9060f60` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | DepositImpl<br>`0xc4d82e8e5240ac7c816aca138eb41534c9ad76e1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | DepositImpl<br>`0xf884b50a1d0d1ffd96fd8ab9e4d1c0d8d0803a33` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | DolomiteAmmRouterProxy<br>`0x03809ae9a86061d8901f020f8778bce1ce8c44f0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | DolomiteAmmRouterProxy<br>`0x9d66b4e07ee5e2f7acd1298cca6f22959f5cf77f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | DolomiteAmmRouterProxy<br>`0xa09b4a3fc92965e587a94539ee8b35ecf42d5a08` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | DolomiteAmmRouterProxy<br>`0xc28a4ec9f09e4071e3707eaaca5c3754fa4f5faa` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | DolomiteAmmRouterProxy<br>`0xc47e015830e775ec932bcce8cfc9452f5d76f4bd` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | DolomiteAmmRouterProxy<br>`0xe6ef4f0b2455bab92ce7cc78e35324ab58917de8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | DolomiteMargin<br>`0x6a76986201e1906eb8d887bb4ad74b55888617af` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | DolomiteMargin<br>`0x9f7779a8af28de91262ba9d6383fef899102e876` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | DolomiteMargin<br>`0xb7576f7a382b8f446846ef72fedb6c3e6d699e7e` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | DolomiteMargin<br>`0xe44cefd2e6b0b846e2720e7b823e173d9fdf8601` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | DolomiteMigrator<br>`0x32c327ae19e226e6643eace8bcec62cadcd0f990` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | DolomiteMigrator<br>`0xd5545e44d6baed250781375fcb98d9bdc7f5afc9` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | DolomiteRegistryImplementation<br>`0x5e13c267f433ac627df93d79ef87c7a40b4f73b7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | DolomiteRegistryImplementation<br>`0xaa8eac4dd4bfa64d77c3f946072d857a07c16f29` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | DolomiteRegistryImplementation<br>`0xdac9339bf093cdd2d7bff6580c107247fe21eb9c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | EventEmitterRegistry<br>`0xcc6f8fd443dc165dafa7bd32219b1e817f2335b9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | GenericTraderProxyV1<br>`0x26cb28c95c964b75fe6e118e267e6f17908a7f7c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | GenericTraderProxyV1<br>`0x905f3add52f01a9069218c8d1c11e240aff61d2b` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | GenericTraderProxyV1<br>`0xc1a4850ab6d8ba93cd662da695cf5cdd49fc5ebd` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | GenericTraderProxyV1<br>`0xe50c3118349f09abafc1bb01ad5cb946b1de83f6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | GenericTraderProxyV1<br>`0xf6d3278553b5d523eeb58f52df6e3737292ca363` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | GenericTraderProxyV1Lib<br>`0x361b242c2e4f7e002205c0d016b9ae0ac97c93d1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | GenericTraderProxyV1Lib<br>`0x49df0d7a2e52088e0672a91196b21cfdb4e8bf93` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | GenericTraderProxyV1Lib<br>`0x5477f499f1273a89041527e7a1e76184d857df68` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | GLPIsolationModeTokenVaultV2<br>`0x4600e18f69cf1abfb2a4a8b388c635c6a71d256a` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | GLPIsolationModeTokenVaultV2<br>`0x56359da5151ab4b12370690a4e81ea09ae6ad212` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | GLPIsolationModeTokenVaultV2<br>`0x6fde670a0bd6fd4930e7b5403e579721ae1d0831` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | GLPIsolationModeTokenVaultV2<br>`0x7bb95cac97f906b683e62167a3178448d0ba0c30` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | GLPIsolationModeTokenVaultV2<br>`0x898a4cdd6536a96a033bf8ba45f1ac0a8355d677` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | GLPIsolationModeTokenVaultV2<br>`0xf592b1379920383bb67b4134529dc1061e33bf07` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | GMXIsolationModeTokenVaultV1<br>`0x0ddf58358f00165cc0463a296905278f2bc0527e` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | GMXIsolationModeTokenVaultV1<br>`0x13cdef45ea21f7ff7835d6619f6c481ad039ff37` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | GMXIsolationModeTokenVaultV1<br>`0x74e373b844089ee791bc6032a8f9a91ce823ed27` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | GMXIsolationModeTokenVaultV1<br>`0x95f13cc09cd1f69469389e11dd6e89fa845a26fe` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | GMXIsolationModeTokenVaultV1<br>`0xb5f5d2cb83f97a7d79761088c069cd7a06456eab` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | GMXIsolationModeTokenVaultV1<br>`0xc43985a8986332fdaf4e4b21dd71bd3188745c0f` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | GMXIsolationModeTokenVaultV1<br>`0xd28d5952533aa05151f3c454964758b987e85b46` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | GMXIsolationModeTokenVaultV1<br>`0xd4cf0da853f93d391e42ef81b1debd9b20c402b8` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | GmxV2IsolationModeTokenVaultV1<br>`0x1f975c95b32859d3d5b37aa85c44c44dd462f4dc` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | GmxV2IsolationModeTokenVaultV1<br>`0x264d5c31fae0df7027c8f536dec21bc8a475c4ae` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | GmxV2IsolationModeTokenVaultV1<br>`0x4dd20f428816a63aaddddba646061306413fbb99` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | GmxV2IsolationModeTokenVaultV1<br>`0x5799a6dfbc4871a9110a0d4d4351ba54165211dc` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | GmxV2IsolationModeTokenVaultV1<br>`0x742bb2c55ff88b6b03e2192f34cfd74aab3f9e33` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | GmxV2IsolationModeTokenVaultV1<br>`0x7977d37395813be4e08124ed9b9b92e232df6ce6` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | GmxV2IsolationModeTokenVaultV1<br>`0x818f986edc9a208497206f816e4f6042d3440fb1` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | GmxV2IsolationModeTokenVaultV1<br>`0x924a11b867ae293ad21543db203042ba4aa7e0a1` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | GmxV2IsolationModeTokenVaultV1<br>`0x94d1817ff561aeb637a42393f38c3efabf769e8f` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | GmxV2IsolationModeTokenVaultV1<br>`0xb7919fef2f5beb533910680427c33fe211629094` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | GmxV2IsolationModeTokenVaultV1<br>`0xb93e5783ae432ee8ca9e636cabf7b658be2162c4` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | GmxV2IsolationModeTokenVaultV1<br>`0xbb86e997e5fafdc37d1e34b92749772059d4524f` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | GmxV2IsolationModeTokenVaultV1<br>`0xbd9f938f5baae2ded3f5c75cd89fcfc2a7933061` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | GmxV2IsolationModeTokenVaultV1<br>`0xc9f5034878d0bf5f378d64ac4be27a5fc1f2d931` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | GmxV2IsolationModeTokenVaultV1<br>`0xcfc1cdfc4e6ecc4a786eaedc66a81ef592c3deb1` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | GmxV2IsolationModeTokenVaultV1<br>`0xe72f237563bb6d70170cdf55f743d691da35ed3d` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | GmxV2IsolationModeUnwrapperTraderV2<br>`0x2d898d5f9ef550a80bd27ca280ce93e2968dfe9e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | GmxV2IsolationModeUnwrapperTraderV2<br>`0x342adec7ed745c389a4a7cb27033edc9401ab916` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | GmxV2IsolationModeUnwrapperTraderV2<br>`0x4f1272d2d8a009445afab7d1972e44560f330c10` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | GmxV2IsolationModeUnwrapperTraderV2<br>`0x55261cebe9a9159b69106907f84f6f881f0d4390` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | GmxV2IsolationModeUnwrapperTraderV2<br>`0x5627a99a763f8ac194b82a96a081984cd0a0873c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | GmxV2IsolationModeUnwrapperTraderV2<br>`0x7e00064c3236992cbd396c845a97cb4c67f83eff` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | GmxV2IsolationModeUnwrapperTraderV2<br>`0x8690c27cc455d4f63b59a4dd9843c882e6346130` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | GmxV2IsolationModeUnwrapperTraderV2<br>`0x9cd90d066100004005ebe71978e8567a89805fd1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | GmxV2IsolationModeUnwrapperTraderV2<br>`0xa2e03b566a9ded496f7b4f6315040e2233c72d8b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | GmxV2IsolationModeUnwrapperTraderV2<br>`0xa39f1a9900c57fef088fd14e9ae43e77661ea0fd` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | GmxV2IsolationModeUnwrapperTraderV2<br>`0xe87bb3f256b3034a987f7b2230d16ab2ce51e9f7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | GmxV2IsolationModeUnwrapperTraderV2<br>`0xe96151b9dcd9951baa3ce33accd5dec69576eb03` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | GmxV2IsolationModeUnwrapperTraderV2<br>`0xeccd34d6b320eeaebc7041450600c7ce7571eab6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | GmxV2IsolationModeWrapperTraderV2<br>`0x62f345c0f4482e9e45538a9ec78abbda8d520526` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | GmxV2IsolationModeWrapperTraderV2<br>`0x66502c4a505f10b5d0bceef038ad56a7c1d8a9db` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | GmxV2IsolationModeWrapperTraderV2<br>`0x827246b7cd92883f2118c9e81eeeeab91fe166ba` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | GmxV2IsolationModeWrapperTraderV2<br>`0x971dcbdb1cc21bdcd3cf218752798c79043f102b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | GmxV2IsolationModeWrapperTraderV2<br>`0xa3b49d5649040c766b82d63fab1e44556e7f8898` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | GmxV2IsolationModeWrapperTraderV2<br>`0xaf9ab89b49ad3eb32593952c001807a38c4fbacf` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | GmxV2IsolationModeWrapperTraderV2<br>`0xb1902725262eb4a4a9b57a9c45f7c49d12f2c9d9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | GmxV2IsolationModeWrapperTraderV2<br>`0xb321b2576070adfc0ae6065e800231cf70654c18` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | GmxV2IsolationModeWrapperTraderV2<br>`0xb51e13202712360206efa967a9239a0448de29aa` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | GmxV2IsolationModeWrapperTraderV2<br>`0xc99f41a4472c8043aebed82a3a70967d16d9ad37` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | GmxV2IsolationModeWrapperTraderV2<br>`0xcb62d51768a39e84c23234db58331376a903be7e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | GmxV2Library<br>`0x38e254e3c6ba4077de32e8612bf3112156386d65` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | GmxV2Library<br>`0x517b963914ba99eb4f4342c6be0f586cb1af74d6` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | GmxV2Library<br>`0x5e7b26e22456585fbc0349c5ff98a69ac9b2ab71` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | GmxV2Library<br>`0x6b8964b454e514d97ee50cd5e87a2338360229d9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | GmxV2Library<br>`0x86c46693f64c3e40899ddd63c9cae09b95a75c59` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | GmxV2Library<br>`0xbafd5327d84b9838347f1a5528b281772e874fb2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | GmxV2Library<br>`0xd4f9fb20c9693670bb79b8c9869a1a4c3edd07e1` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | GmxV2Library<br>`0xd670f7e3ef7df3e0a3806e1023656b987e571454` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | GmxV2Library<br>`0xd7b6b9e73f3f0ee8062942772afa877a2cb3a374` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | GmxV2MarketTokenPriceOracle<br>`0x14349a78224a45a6e3372e5205098ddc11a596a0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | GmxV2MarketTokenPriceOracle<br>`0xf4596bf2b237160ca7b15fd510b46ba12db54974` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | GmxV2Registry<br>`0xe629707bd7cec7b39b3f02555d92af1eaaaae3f5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | GmxV2Registry<br>`0xf01dc65eb0271d07a4f37298cfef6f44c5203eb6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | IsolationModeFreezableLiquidatorProxy<br>`0xadea94e726ab96b6377e5dff5c24a73130d16026` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | IsolationModeFreezableLiquidatorProxy<br>`0xfe42623a5353a64baf4864a1202828a6743f0ed0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | IsolationModeTokenVaultMigrator<br>`0xc9299e8457e41b9415acc2658602bdf3aa590729` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | IsolationModeTokenVaultV1ActionsImpl<br>`0x2ccef16241ef4008edd777d509f5931ac57ff5d2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | IsolationModeTokenVaultV1ActionsImpl<br>`0x7b9f5dfee29383d266faddcad0c0a70ead9057a7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | IsolationModeTokenVaultV1ActionsImpl<br>`0xa2dfe626d3567d2a6111177bba832e4c66ef7d21` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | IsolationModeTokenVaultV1ActionsImpl<br>`0xa665ef04a4da96205981c8844abc054311b555cf` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | IsolationModeTokenVaultV1ActionsImpl<br>`0xadedda034f43a50fbf430f47cdbce4457cf818c2` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | IsolationModeTokenVaultV1ActionsImpl<br>`0xb76cc11ba2bc2b3b40469e9a8c1ae0c84f954f3f` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | IsolationModeTokenVaultV1ActionsImpl<br>`0xc06e4d86c2ce81bb9e2eceb59bf96bb301569a6f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | IsolationModeTokenVaultV1ActionsImpl<br>`0xd04d6a579ffef85c17a7ccf4641ff1e28b7b21ef` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | IsolationModeTokenVaultV1ActionsImpl<br>`0xf3766d95549fdfb37e17bbc7bd47defb57a792dd` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | IsolationModeTraderProxy<br>`0x039bc43fe68d76211b82707b1ee0960fc237362f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | IsolationModeTraderProxy<br>`0x6d1da0fcdf7b1351988f6d766c0b8c9c1b013907` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | IsolationModeTraderProxy<br>`0x86bb92c9fc019a12535c9cbd152989f736f72b53` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | IsolationModeTraderProxy<br>`0x8f6bc6ead4914c10e9dcba0289a3892eb32e7bf2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | IsolationModeTraderProxy<br>`0xc503064b1d7dcf39304c72c5b4750f0b01259ef0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | IsolationModeTraderProxy<br>`0xc58ccfb7c8207ab9b1b2ce89b292c5db353e06d8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | JonesIsolationModeTokenVaultMigrator<br>`0x6b4ab9b50f451f58f41a36bca95d61dd02c384a8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | JonesUSDCIsolationModeTokenVaultV1<br>`0x1d33550e923dfc4dbb01d90b32f36b3279c0e3ca` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | JonesUSDCIsolationModeTokenVaultV1<br>`0x1e61df0cd71c507c460a9f972501b3acff86b51a` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | JonesUSDCIsolationModeTokenVaultV1<br>`0x235c83695a63e71f6d9a9414ce181c1a05a240ff` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | JonesUSDCIsolationModeTokenVaultV1<br>`0x27968252a14b30b2f459cf51e90d7a77706c9032` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | JonesUSDCIsolationModeTokenVaultV1<br>`0x27974a1e7d5c8e4dc57c514c48b2f4164015f995` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | JonesUSDCIsolationModeTokenVaultV1<br>`0x2eb27406b550269e25aae0c22e77943c61be5bc4` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | JonesUSDCIsolationModeTokenVaultV1<br>`0x6c1e20bd44f7a3ab3ed448b84676bbe4146ebf9b` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | JonesUSDCIsolationModeTokenVaultV1<br>`0x6ec8b4e5702b175e99ffec3c8cd3b66f972c6cee` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | JonesUSDCIsolationModeTokenVaultV1<br>`0x6f2a6b46ac26cdd7b66e01a0cf8b15c29b1e482b` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | JonesUSDCIsolationModeTokenVaultV1<br>`0x702bbec7ed9cbd9494d2eb2f5dbb22829d848e19` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | JonesUSDCIsolationModeTokenVaultV1<br>`0x81501e1ce9d5c2aecd206fea827a0809b5ed1a70` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | JonesUSDCIsolationModeTokenVaultV2<br>`0x504683343495cbde1eed002ffe1744fed21b592b` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | JonesUSDCIsolationModeTokenVaultV2<br>`0x73bc3dc69e49ea21e670e73c351562c996018dce` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | JonesUSDCIsolationModeTokenVaultV2<br>`0x78258898413e03918395670ea1ddb1b3fd5ec74f` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | JonesUSDCIsolationModeTokenVaultV2<br>`0xc1e23335d9d7699d6eb0b31d99912440b33345ce` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | JonesUSDCIsolationModeTokenVaultV2<br>`0xe01a3c3e0c96c810c9314bf4978225e482188aa1` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | JonesUSDCIsolationModeUnwrapperTraderV2<br>`0x00e4180f25896229979a52d73be22963e93bc8ce` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | JonesUSDCIsolationModeUnwrapperTraderV2<br>`0x61eb7f571cc89bb56c3314891bd323701d4071ec` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | JonesUSDCIsolationModeUnwrapperTraderV2<br>`0x76306f4e3dba43056dd05dbf391e48f4f03acb79` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | JonesUSDCIsolationModeUnwrapperTraderV2<br>`0x7abe6b1d9d02d15cb65b65fb1a3db8f8556c878e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | JonesUSDCIsolationModeUnwrapperTraderV2<br>`0x87763a4f392bdfd00c39f264db63a0b93831ac08` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | JonesUSDCIsolationModeUnwrapperTraderV2<br>`0x8c24b066cc65685989a88b6417f3dee8a60fb6e0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | JonesUSDCIsolationModeUnwrapperTraderV2<br>`0xa8a93601f1af9698af2eb1c55765d1664b204045` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |
| candidate review | JonesUSDCIsolationModeUnwrapperTraderV2<br>`0xf525be80bbac8ab53703b6f5bd3da9a0e63f6971` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4427040bbbc8084acf86ff409e84a83b3fad9e85` |

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
| Dolomite Margin - Cyfrin - 2023-08-23.pdf | DolomiteMargin | ambiguous — not counted | DolomiteMargin (alternative) `0x6bd780e7fdf01d77e4d475c821f1e7ae05409072` — deployed 2022-10-03 23:34:29+03 — liveness: live (code_present_context)<br>DolomiteMargin (alternative) `0xe6ef4f0b2455bab92ce7cc78e35324ab58917de8` — deployed 2024-04-28 17:07:30+03 — liveness: live (code_present_context)<br>DolomiteMargin (alternative) `0x003ca23fd5f0ca87d01f6ec6cd14a8ae60c2b97d` — deployed 2025-01-24 05:56:21+03 — liveness: live (code_present_context)<br>DolomiteMargin (alternative) `0x003ca23fd5f0ca87d01f6ec6cd14a8ae60c2b97d` — deployed 2025-06-21 19:11:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Dolomite Margin - Cyfrin - 2023-08-23.pdf | Storage | unmatched — not counted | — | mentioned in executive summary and findings | no |
| Dolomite Margin - Cyfrin - 2023-08-23.pdf | OperationImpl | unmatched — not counted | — | mentioned in findings M-5, L-6, I-3 | no |
| Dolomite Margin - Cyfrin - 2023-08-23.pdf | TradeImpl | unmatched — not counted | — | mentioned in findings M-3, I-3 | no |
| Dolomite Margin - Cyfrin - 2023-08-23.pdf | AdminImpl | unmatched — not counted | — | mentioned in findings M-2, M-4, L-5 | no |
| Dolomite Margin - Cyfrin - 2023-08-23.pdf | LiquidateOrVaporizeImpl | unmatched — not counted | — | mentioned in findings M-1, L-4, I-3 | no |
| Dolomite Margin - Cyfrin - 2023-08-23.pdf | CallImpl | own contract | CallImpl (selected) `0x6727fe07ff5dce46f34d20fb1f9d62edda73cfdc` — deployed 2022-04-15 05:21:30+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Dolomite Margin - Cyfrin - 2023-08-23.pdf | Bits | unmatched — not counted | — | mentioned in finding L-1 | no |
| Dolomite Margin - Cyfrin - 2023-08-23.pdf | ChainlinkPriceOracleV1 | unmatched — not counted | — | mentioned in finding M-1 | no |
| Dolomite Margin - Cyfrin - 2023-08-23.pdf | BorrowPositionProxyV1 | ambiguous — not counted | BorrowPositionProxyV1 (alternative) `0x97a08604a56f16947a4a956efec2ef223364b733` — deployed 2024-04-28 17:12:40+03 — liveness: live (current_address_book_code)<br>BorrowPositionProxyV1 (alternative) `0x67567fce98a44745820069c37c395426f1c30ba6` — deployed 2024-12-18 04:54:23+03 — liveness: live (current_address_book_code)<br>BorrowPositionProxyV1 (alternative) `0x67567fce98a44745820069c37c395426f1c30ba6` — deployed 2025-06-21 19:29:59+03 — liveness: live (current_address_book_code)<br>BorrowPositionProxyV1 (alternative) `0x67567fce98a44745820069c37c395426f1c30ba6` — deployed 2025-01-24 06:02:10+03 — liveness: live (current_address_book_code)<br>UnnamedContract (alternative) `0xc28a4ec9f09e4071e3707eaaca5c3754fa4f5faa` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Dolomite Margin - Cyfrin - 2023-08-23.pdf | BorrowPositionProxyV2 | ambiguous — not counted | UnnamedContract (alternative) `0xb3ff983d7927540b7f92602657a2a26977664e77` — liveness: live (current_address_book_code)<br>BorrowPositionProxyV2 (alternative) `0xc06271eb97d960f4034ddf953e16271ccb2b10bd` — deployed 2025-06-21 19:30:11+03 — liveness: live (current_address_book_code)<br>BorrowPositionProxyV2 (alternative) `0xc06271eb97d960f4034ddf953e16271ccb2b10bd` — deployed 2025-01-24 06:03:17+03 — liveness: live (current_address_book_code)<br>BorrowPositionProxyV2 (alternative) `0xc06271eb97d960f4034ddf953e16271ccb2b10bd` — deployed 2024-12-18 04:54:29+03 — liveness: live (current_address_book_code)<br>BorrowPositionProxyV2 (alternative) `0x38e49a617305101216ec6306e3a18065d14bf3a7` — deployed 2023-01-12 01:28:47+03 — liveness: live (current_address_book_code)<br>BorrowPositionProxyV2 (alternative) `0xe99a7e4556caf7925fbac52765128e524e9dd793` — deployed 2024-04-28 17:13:04+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Dolomite Margin - Cyfrin - 2023-08-23.pdf | DepositWithdrawalProxy | ambiguous — not counted | DepositWithdrawalProxy (alternative) `0x17c57c98b666bac9f3dce4033180190fe923f13d` — deployed 2022-04-15 08:09:27+03 — liveness: live (current_address_book_code)<br>DepositWithdrawalProxy (alternative) `0xadb9d68c613df4aa363b42161e1282117c7b9594` — deployed 2022-12-01 23:16:14+03 — liveness: live (current_address_book_code)<br>UnnamedContract (alternative) `0xdfb6baa334712cbbeb26b7537f62b81c2a87b1e8` — liveness: live (current_address_book_code)<br>DepositWithdrawalProxy (alternative) `0xd6a31b6aea4d26a19bf479b5032d9ddc481187e6` — deployed 2025-01-24 06:04:23+03 — liveness: live (current_address_book_code)<br>DepositWithdrawalProxy (alternative) `0xd6a31b6aea4d26a19bf479b5032d9ddc481187e6` — deployed 2025-06-21 19:30:47+03 — liveness: live (current_address_book_code)<br>DepositWithdrawalProxy (alternative) `0x1a3752eb5db6b2ac0207ce3847f18743d3facca5` — deployed 2024-04-28 17:17:08+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Dolomite Margin - Cyfrin - 2023-08-23.pdf | GenericTraderProxyV1 | ambiguous — not counted | GenericTraderProxyV1 (alternative) `0x905f3add52f01a9069218c8d1c11e240aff61d2b` — deployed 2023-12-29 03:49:56+03 — liveness: live (current_address_book_code)<br>GenericTraderProxyV1 (alternative) `0xb50bcdfc914e0afb484dee621f49010862fb928d` — deployed 2024-12-18 04:55:13+03 — liveness: live (current_address_book_code)<br>GenericTraderProxyV1 (alternative) `0xb50bcdfc914e0afb484dee621f49010862fb928d` — deployed 2025-01-24 06:08:53+03 — liveness: live (current_address_book_code)<br>UnnamedContract (alternative) `0x88a6d8e6ffdb145a8719d43e6fd48f3383745866` — liveness: live (current_address_book_code)<br>GenericTraderProxyV1 (alternative) `0xd432c30de38b5d6f30257a353ed853503ed2edab` — deployed 2024-08-12 09:24:48+03 — liveness: live (current_address_book_code)<br>GenericTraderProxyV1 (alternative) `0xb50bcdfc914e0afb484dee621f49010862fb928d` — deployed 2025-06-21 19:31:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Dolomite Margin - Cyfrin - 2023-08-23.pdf | GenericTraderProxyBase | unmatched — not counted | — | mentioned in finding I-4 | no |
| Dolomite Margin - Cyfrin - 2023-08-23.pdf | LiquidatorProxyV4WithGenericTrader | ambiguous — not counted | DepositWithdrawalProxy (alternative) `0x17c57c98b666bac9f3dce4033180190fe923f13d` — deployed 2022-04-15 08:09:27+03 — liveness: live (current_address_book_code)<br>LiquidatorProxyV4WithGenericTrader (alternative) `0x22dd9f4393a3cc698d6c09ad14b0b9d515084fc7` — deployed 2024-08-12 09:59:04+03 — liveness: live (current_address_book_code)<br>LiquidatorProxyV4WithGenericTrader (alternative) `0x2adeafd960366411215ce8706c1afe2853c5487b` — deployed 2024-12-18 04:56:13+03 — liveness: live (current_address_book_code)<br>LiquidatorProxyV4WithGenericTrader (alternative) `0x2adeafd960366411215ce8706c1afe2853c5487b` — deployed 2025-06-21 19:35:11+03 — liveness: live (current_address_book_code)<br>LiquidatorProxyV4WithGenericTrader (alternative) `0x34975624e992bf5c094ef0cf3344660f7aab9cb3` — deployed 2023-12-29 04:13:42+03 — liveness: live (current_address_book_code)<br>UnnamedContract (alternative) `0x227455c3e636b0fcc9d37f3efa2cd5af7a812141` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
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
| Dolomite Margin - SECBIT - 2021-08-02.pdf | TransferProxy | ambiguous — not counted | TransferProxy (alternative) `0x07c28e60b28c98e09f5b69c9c473fe19062624f8` — deployed 2025-01-24 06:01:00+03 — liveness: live (current_address_book_code)<br>TransferProxy (alternative) `0x07c28e60b28c98e09f5b69c9c473fe19062624f8` — deployed 2024-12-18 04:54:15+03 — liveness: live (current_address_book_code)<br>UnnamedContract (alternative) `0xd55afc5ee5ffdad3d44829b22e2c2b10a484d33e` — liveness: live (current_address_book_code)<br>TransferProxy (alternative) `0x07c28e60b28c98e09f5b69c9c473fe19062624f8` — deployed 2025-06-21 19:29:47+03 — liveness: live (current_address_book_code)<br>TransferProxy (alternative) `0x86cfc6ba3bbbc603b8dec5b032afa10a3592470d` — deployed 2022-04-11 09:56:49+03 — liveness: live (current_address_book_code)<br>TransferProxy (alternative) `0x9582378f220c724012c59c376c1910c0549af66c` — deployed 2024-04-28 17:12:10+03 — liveness: live (current_address_book_code)<br>TransferProxy (alternative) `0xe04f884e8bb9868b6013dead84ad5a3b8cb1df5a` — deployed 2022-10-03 23:42:28+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
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
| dYdX Audit Report Bramah Systems.pdf | Expiry | ambiguous — not counted | Expiry (alternative) `0x2ae007882b91206942c70adc833a61ee531d8d5d` — deployed 2025-01-24 06:06:37+03 — liveness: live (code_present_context)<br>Expiry (alternative) `0x2ae007882b91206942c70adc833a61ee531d8d5d` — deployed 2025-06-21 19:31:23+03 — liveness: live (code_present_context)<br>Expiry (alternative) `0x6df6dbf5053c3771217376fb3ef7f1f5d4889a25` — deployed 2024-04-28 17:17:30+03 — liveness: live (code_present_context)<br>Expiry (alternative) `0xdec1ae3b570ac3c57871bbd7bfeacc807f973bea` — deployed 2022-10-03 23:42:39+03 — liveness: live (code_present_context)<br>Expiry (alternative) `0x2ae007882b91206942c70adc833a61ee531d8d5d` — deployed 2024-12-18 04:54:51+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
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
| 2023-08-26-cyfrin-dolomite-margin.pdf | DolomiteMargin | ambiguous — not counted | DolomiteMargin (alternative) `0x6bd780e7fdf01d77e4d475c821f1e7ae05409072` — deployed 2022-10-03 23:34:29+03 — liveness: live (code_present_context)<br>DolomiteMargin (alternative) `0xe6ef4f0b2455bab92ce7cc78e35324ab58917de8` — deployed 2024-04-28 17:07:30+03 — liveness: live (code_present_context)<br>DolomiteMargin (alternative) `0x003ca23fd5f0ca87d01f6ec6cd14a8ae60c2b97d` — deployed 2025-01-24 05:56:21+03 — liveness: live (code_present_context)<br>DolomiteMargin (alternative) `0x003ca23fd5f0ca87d01f6ec6cd14a8ae60c2b97d` — deployed 2025-06-21 19:11:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2023-08-26-cyfrin-dolomite-margin.pdf | Storage | unmatched — not counted | — | mentioned in executive summary and findings | no |
| 2023-08-26-cyfrin-dolomite-margin.pdf | OperationImpl | unmatched — not counted | — | mentioned in findings M-5, L-6, I-3 | no |
| 2023-08-26-cyfrin-dolomite-margin.pdf | TradeImpl | unmatched — not counted | — | mentioned in findings M-3, I-3 | no |
| 2023-08-26-cyfrin-dolomite-margin.pdf | AdminImpl | unmatched — not counted | — | mentioned in findings M-2, M-4, L-5 | no |
| 2023-08-26-cyfrin-dolomite-margin.pdf | LiquidateOrVaporizeImpl | unmatched — not counted | — | mentioned in findings M-1, L-4, I-3 | no |
| 2023-08-26-cyfrin-dolomite-margin.pdf | CallImpl | own contract | CallImpl (selected) `0x6727fe07ff5dce46f34d20fb1f9d62edda73cfdc` — deployed 2022-04-15 05:21:30+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| 2023-08-26-cyfrin-dolomite-margin.pdf | BorrowPositionProxyV1 | ambiguous — not counted | BorrowPositionProxyV1 (alternative) `0x97a08604a56f16947a4a956efec2ef223364b733` — deployed 2024-04-28 17:12:40+03 — liveness: live (current_address_book_code)<br>BorrowPositionProxyV1 (alternative) `0x67567fce98a44745820069c37c395426f1c30ba6` — deployed 2024-12-18 04:54:23+03 — liveness: live (current_address_book_code)<br>BorrowPositionProxyV1 (alternative) `0x67567fce98a44745820069c37c395426f1c30ba6` — deployed 2025-06-21 19:29:59+03 — liveness: live (current_address_book_code)<br>BorrowPositionProxyV1 (alternative) `0x67567fce98a44745820069c37c395426f1c30ba6` — deployed 2025-01-24 06:02:10+03 — liveness: live (current_address_book_code)<br>UnnamedContract (alternative) `0xc28a4ec9f09e4071e3707eaaca5c3754fa4f5faa` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2023-08-26-cyfrin-dolomite-margin.pdf | BorrowPositionProxyV2 | ambiguous — not counted | UnnamedContract (alternative) `0xb3ff983d7927540b7f92602657a2a26977664e77` — liveness: live (current_address_book_code)<br>BorrowPositionProxyV2 (alternative) `0xc06271eb97d960f4034ddf953e16271ccb2b10bd` — deployed 2025-06-21 19:30:11+03 — liveness: live (current_address_book_code)<br>BorrowPositionProxyV2 (alternative) `0xc06271eb97d960f4034ddf953e16271ccb2b10bd` — deployed 2025-01-24 06:03:17+03 — liveness: live (current_address_book_code)<br>BorrowPositionProxyV2 (alternative) `0xc06271eb97d960f4034ddf953e16271ccb2b10bd` — deployed 2024-12-18 04:54:29+03 — liveness: live (current_address_book_code)<br>BorrowPositionProxyV2 (alternative) `0x38e49a617305101216ec6306e3a18065d14bf3a7` — deployed 2023-01-12 01:28:47+03 — liveness: live (current_address_book_code)<br>BorrowPositionProxyV2 (alternative) `0xe99a7e4556caf7925fbac52765128e524e9dd793` — deployed 2024-04-28 17:13:04+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2023-08-26-cyfrin-dolomite-margin.pdf | DepositWithdrawalProxy | ambiguous — not counted | DepositWithdrawalProxy (alternative) `0x17c57c98b666bac9f3dce4033180190fe923f13d` — deployed 2022-04-15 08:09:27+03 — liveness: live (current_address_book_code)<br>DepositWithdrawalProxy (alternative) `0xadb9d68c613df4aa363b42161e1282117c7b9594` — deployed 2022-12-01 23:16:14+03 — liveness: live (current_address_book_code)<br>UnnamedContract (alternative) `0xdfb6baa334712cbbeb26b7537f62b81c2a87b1e8` — liveness: live (current_address_book_code)<br>DepositWithdrawalProxy (alternative) `0xd6a31b6aea4d26a19bf479b5032d9ddc481187e6` — deployed 2025-01-24 06:04:23+03 — liveness: live (current_address_book_code)<br>DepositWithdrawalProxy (alternative) `0xd6a31b6aea4d26a19bf479b5032d9ddc481187e6` — deployed 2025-06-21 19:30:47+03 — liveness: live (current_address_book_code)<br>DepositWithdrawalProxy (alternative) `0x1a3752eb5db6b2ac0207ce3847f18743d3facca5` — deployed 2024-04-28 17:17:08+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2023-08-26-cyfrin-dolomite-margin.pdf | GenericTraderProxyV1 | ambiguous — not counted | GenericTraderProxyV1 (alternative) `0x905f3add52f01a9069218c8d1c11e240aff61d2b` — deployed 2023-12-29 03:49:56+03 — liveness: live (current_address_book_code)<br>GenericTraderProxyV1 (alternative) `0xb50bcdfc914e0afb484dee621f49010862fb928d` — deployed 2024-12-18 04:55:13+03 — liveness: live (current_address_book_code)<br>GenericTraderProxyV1 (alternative) `0xb50bcdfc914e0afb484dee621f49010862fb928d` — deployed 2025-01-24 06:08:53+03 — liveness: live (current_address_book_code)<br>UnnamedContract (alternative) `0x88a6d8e6ffdb145a8719d43e6fd48f3383745866` — liveness: live (current_address_book_code)<br>GenericTraderProxyV1 (alternative) `0xd432c30de38b5d6f30257a353ed853503ed2edab` — deployed 2024-08-12 09:24:48+03 — liveness: live (current_address_book_code)<br>GenericTraderProxyV1 (alternative) `0xb50bcdfc914e0afb484dee621f49010862fb928d` — deployed 2025-06-21 19:31:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2023-08-26-cyfrin-dolomite-margin.pdf | GenericTraderProxyBase | unmatched — not counted | — | mentioned in finding I-4 | no |
| 2023-08-26-cyfrin-dolomite-margin.pdf | LiquidatorProxyV4WithGenericTrader | ambiguous — not counted | DepositWithdrawalProxy (alternative) `0x17c57c98b666bac9f3dce4033180190fe923f13d` — deployed 2022-04-15 08:09:27+03 — liveness: live (current_address_book_code)<br>LiquidatorProxyV4WithGenericTrader (alternative) `0x22dd9f4393a3cc698d6c09ad14b0b9d515084fc7` — deployed 2024-08-12 09:59:04+03 — liveness: live (current_address_book_code)<br>LiquidatorProxyV4WithGenericTrader (alternative) `0x2adeafd960366411215ce8706c1afe2853c5487b` — deployed 2024-12-18 04:56:13+03 — liveness: live (current_address_book_code)<br>LiquidatorProxyV4WithGenericTrader (alternative) `0x2adeafd960366411215ce8706c1afe2853c5487b` — deployed 2025-06-21 19:35:11+03 — liveness: live (current_address_book_code)<br>LiquidatorProxyV4WithGenericTrader (alternative) `0x34975624e992bf5c094ef0cf3344660f7aab9cb3` — deployed 2023-12-29 04:13:42+03 — liveness: live (current_address_book_code)<br>UnnamedContract (alternative) `0x227455c3e636b0fcc9d37f3efa2cd5af7a812141` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
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
| mantle | `0x3f0269aac5d3fa3cd518d9e809f45458c1504923` | AlwaysZeroInterestSetter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x37b6ff70654edfbdaa3c9a723fdadf5844de2168` | AlwaysZeroInterestSetter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xb18b8b1a5bdea1f3c9776715b9325f932803fb1f` | ArbitrumMultiCall | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xe43638797513ef7a6d326a95e8647d86d2f5a099` | BorrowPositionProxy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x67567fce98a44745820069c37c395426f1c30ba6` | BorrowPositionProxyV1 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x97a08604a56f16947a4a956efec2ef223364b733` | BorrowPositionProxyV1 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x67567fce98a44745820069c37c395426f1c30ba6` | BorrowPositionProxyV1 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc06271eb97d960f4034ddf953e16271ccb2b10bd` | BorrowPositionProxyV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0xe99a7e4556caf7925fbac52765128e524e9dd793` | BorrowPositionProxyV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xc06271eb97d960f4034ddf953e16271ccb2b10bd` | BorrowPositionProxyV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x38e49a617305101216ec6306e3a18065d14bf3a7` | BorrowPositionProxyV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf579b345cda0860668b857de10abd62442133d0f` | BorrowPositionRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xf579b345cda0860668b857de10abd62442133d0f` | BorrowPositionRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xf579b345cda0860668b857de10abd62442133d0f` | BorrowPositionRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0xf579b345cda0860668b857de10abd62442133d0f` | BorrowPositionRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xb02808f5db0e6926e00af4971abdf1da6c7db34e` | ChaosLabsPriceOracleV3 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa8f7e7a361de6a2172fcb2acce68bd21597599f7` | CREATE3Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd6a31b6aea4d26a19bf479b5032d9ddc481187e6` | DepositWithdrawalProxy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x1a3752eb5db6b2ac0207ce3847f18743d3facca5` | DepositWithdrawalProxy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x17c57c98b666bac9f3dce4033180190fe923f13d` | DepositWithdrawalProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xadb9d68c613df4aa363b42161e1282117c7b9594` | DepositWithdrawalProxy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0xd6a31b6aea4d26a19bf479b5032d9ddc481187e6` | DepositWithdrawalProxy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf8b2c637a68cf6a17b1df9f8992eebeff63d2dff` | DepositWithdrawalRouter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0xf8b2c637a68cf6a17b1df9f8992eebeff63d2dff` | DepositWithdrawalRouter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xf8b2c637a68cf6a17b1df9f8992eebeff63d2dff` | DepositWithdrawalRouter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xf8b2c637a68cf6a17b1df9f8992eebeff63d2dff` | DepositWithdrawalRouter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0xf8b2c637a68cf6a17b1df9f8992eebeff63d2dff` | DepositWithdrawalRouter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x0f81001ef0a83ecce5ccebf63eb302c70a39a654` | DOLO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0xc90e5df165c26441f6f4e558ca6128a42eb95787` | DolomiteAccountRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xfee366ceca2472b99d0a501b6b3d01351c24daae` | DolomiteAccountRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xc777fb526922fb61581b65f8eb55bb769cd59c63` | DolomiteAccountRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0xfee366ceca2472b99d0a501b6b3d01351c24daae` | DolomiteAccountRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x003ca23fd5f0ca87d01f6ec6cd14a8ae60c2b97d` | DolomiteMargin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0xe6ef4f0b2455bab92ce7cc78e35324ab58917de8` | DolomiteMargin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x6bd780e7fdf01d77e4d475c821f1e7ae05409072` | DolomiteMargin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x003ca23fd5f0ca87d01f6ec6cd14a8ae60c2b97d` | DolomiteMargin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9e97d89c44c3f213db22593af98165a1b9e7a0d3` | DolomiteMigrator | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x481ef837a6266a0798f0465e14d9a38400843cbd` | DolomiteMigrator | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x9e97d89c44c3f213db22593af98165a1b9e7a0d3` | DolomiteMigrator | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xd5545e44d6baed250781375fcb98d9bdc7f5afc9` | DolomiteMigrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0xcf359a2fa50548c6793a5ed7f26471c1b17bb11d` | DolomiteOwner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcf359a2fa50548c6793a5ed7f26471c1b17bb11d` | DolomiteOwnerV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0xcf359a2fa50548c6793a5ed7f26471c1b17bb11d` | DolomiteOwnerV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc2b66e247dae5ee749ae1d827190115f3653de06` | DolomiteOwnerV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0xc2b66e247dae5ee749ae1d827190115f3653de06` | DolomiteOwnerV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0f38bfbd9c1450bcf7a758e80e148ce78cfe09fd` | DolomiteRegistryImplementation | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x7bec164cacd60d5cbcaa7b81d9da4cf6a0f7e09b` | DolomiteRegistryImplementation | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x2a059d6d682e5fb1226eb8bc2977b512698c2404` | DolomiteRegistryImplementation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0f81001ef0a83ecce5ccebf63eb302c70a39a654` | DOLOWithOwnable | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6d40138c99f6d9116f738f44a0e6751a42232486` | EventEmitterRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x778cea4ce43ba1a3ed6306ca692b8d9d3dfb827c` | EventEmitterRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x6d40138c99f6d9116f738f44a0e6751a42232486` | EventEmitterRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x4bff12773b0dc3cb35f174b5cd351f662018cc2f` | EventEmitterRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x6d40138c99f6d9116f738f44a0e6751a42232486` | EventEmitterRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2ae007882b91206942c70adc833a61ee531d8d5d` | Expiry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x6df6dbf5053c3771217376fb3ef7f1f5d4889a25` | Expiry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x2ae007882b91206942c70adc833a61ee531d8d5d` | Expiry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xdec1ae3b570ac3c57871bbd7bfeacc807f973bea` | Expiry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1b39f7c19d952752f255536e72726a592167e7bc` | ExpiryProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x075a0614a64467f852cc3af3876574afc5fecc65` | ExpiryProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x1b39f7c19d952752f255536e72726a592167e7bc` | ExpiryProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x40899e265a7899968f0f153410321b9175730b00` | ExpiryProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb50bcdfc914e0afb484dee621f49010862fb928d` | GenericTraderProxyV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0xd432c30de38b5d6f30257a353ed853503ed2edab` | GenericTraderProxyV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xb50bcdfc914e0afb484dee621f49010862fb928d` | GenericTraderProxyV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x905f3add52f01a9069218c8d1c11e240aff61d2b` | GenericTraderProxyV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7b61cba306cfdb02493b94757143132b1b72bc6b` | GenericTraderRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x7b61cba306cfdb02493b94757143132b1b72bc6b` | GenericTraderRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x7b61cba306cfdb02493b94757143132b1b72bc6b` | GenericTraderRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8d178ff41f94ae761325451529750166d35c8870` | IsolationModeFreezableLiquidatorProxy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x8d178ff41f94ae761325451529750166d35c8870` | IsolationModeFreezableLiquidatorProxy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x76ac5542ee033a15f78d1f8b4ad48af618a33e44` | IsolationModeFreezableLiquidatorProxy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xadea94e726ab96b6377e5dff5c24a73130d16026` | IsolationModeFreezableLiquidatorProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x8d178ff41f94ae761325451529750166d35c8870` | IsolationModeFreezableLiquidatorProxy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd82100524392c7dbdd7502f136a226c8a4c56cfa` | LiquidatorAssetRegistry | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x7b6d28a0debb6f4b1c58743aae3bf149a32d69b5` | LiquidatorAssetRegistry | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x10d98759762efac656bd4be7f2f5599208f44fac` | LiquidatorAssetRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xdb168cd1bcb63304991fc6e2013d0d87ddbf99d3` | LiquidatorProxyV1 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x8e6b0e3ad57a9637ab27c1480600d45177073a71` | LiquidatorProxyV1 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xdb168cd1bcb63304991fc6e2013d0d87ddbf99d3` | LiquidatorProxyV1 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x8c6e337da1bd534548c5a9b6ac3d9e4d15fa715a` | LiquidatorProxyV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2adeafd960366411215ce8706c1afe2853c5487b` | LiquidatorProxyV4WithGenericTrader | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x22dd9f4393a3cc698d6c09ad14b0b9d515084fc7` | LiquidatorProxyV4WithGenericTrader | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x34975624e992bf5c094ef0cf3344660f7aab9cb3` | LiquidatorProxyV4WithGenericTrader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x1506f80d2fd5fbef2424573ec86e5481c972b99a` | LiquidatorProxyV5 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x1506f80d2fd5fbef2424573ec86e5481c972b99a` | LiquidatorProxyV5 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x02e513b5b54ee216bf836ceb471507488fc89543` | ODOLO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x2cdbb25b4aca98a55f6b1a0f67d9f43455e67f3c` | OdosAggregatorTrader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0xd88f473832b0403c7736ef237af5aff8759b99ef` | OptionAirdrop | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa150ef2d5827db283321d15d62d5d07fb41d636e` | OracleAggregatorV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x2c640b79ff62908fae611e6a445c7e480324b77d` | OracleAggregatorV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xa150ef2d5827db283321d15d62d5d07fb41d636e` | OracleAggregatorV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xbfca44ab734e57dc823ca609a0714eec9ed06ca0` | OracleAggregatorV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xd991d9e0a22a51391c25b258eef8c1c4a392383a` | ParaswapAggregatorTraderV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x52d7bcb650c591f6e8da90f797a1d0bfd8fd05f9` | PartiallyDelayedMultiSig | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xfee366ceca2472b99d0a501b6b3d01351c24daae` | RegistryProxy | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0xa3f079292cc35ba64996fe0bce3049928a838bc9` | RegularAirdrop | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x66cd7d0cc677f42f6662622c60a5e60ef573db67` | RewardsDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x79e6e932bf6686a4d357d7821e6e08835ba8a026` | RollingClaims | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x7b61cba306cfdb02493b94757143132b1b72bc6b` | RouterProxy | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0xf579b345cda0860668b857de10abd62442133d0f` | RouterProxy | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x7efd088ae500598a19a242d6d48b9f7e0d061176` | StrategicVestingClaims | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x07c28e60b28c98e09f5b69c9c473fe19062624f8` | TransferProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x9582378f220c724012c59c376c1910c0549af66c` | TransferProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x07c28e60b28c98e09f5b69c9c473fe19062624f8` | TransferProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x86cfc6ba3bbbc603b8dec5b032afa10a3592470d` | TransferProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xe04f884e8bb9868b6013dead84ad5a3b8cb1df5a` | TransferProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x54267e603646648e623a7a3c21dbbd4cd968a6f0` | VeArt | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x3e9b9a16743551da49b5e136c716bba7932d2cec` | VeExternalVesterImplementationV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0xa7b2c7b13e7628b70dda64a257767f7292917ce9` | VeFeeCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x2c9052bb57898c3c2c6239f3d69567fc5962cb62` | VesterExploder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x531bc6e97b65adf8b3683240bd594932cfb63797` | VesterImplementationV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x3a025c7fcf7632197ea82e64acd6ff53e1c06c07` | VestingClaims | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0xbd225c09e4b032e41d5e8aea5f81efff45f20f7b` | VestingClaims | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0xcb86b75ee6133d179a12d550b09fb3cdb1e141d4` | VotingEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 268 |
| upstream | 14 |
| standard_library | 6 |
| needs_review | 134 |

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
