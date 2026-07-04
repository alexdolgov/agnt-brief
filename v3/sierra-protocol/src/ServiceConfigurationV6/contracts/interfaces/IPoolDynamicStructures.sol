//Copyright Open Trade Technology Ltd. 2023. All rights reserved.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;
struct IPoolConfigurableSettingsDynamic {
  address borrowerManager;
  address borrowerWalletAddr;
  address feeCollectorAddress;
  uint256 closeOfDepositTime;
  uint256 closeOfWithdrawTime;
  uint256 transferOutDays;
  IPoolDynamicExchangeRateType exchangeRateType;
}

struct PoolAddressListDynamic {
  address liquidityAsset;
  address poolAdmin;
  address serviceConfiguration;
  address poolControllerFactoryDynamic;
  address poolAccessControlFactory;
}
struct IPoolAccountingsDynamic {
  uint256 totalAssetsDeposited;
  uint256 totalAssetsWithdrawn;
  uint256 exchangeRate;
  uint256 exchangeRateSetDay;
  uint256 exchangeRateChangeRate;
  uint256 exchangeRateCompoundingRate;
  uint256 exchangeRateAtMaturity;
  uint256 exchangeRateMaturityDay;
  uint256 interestRate;
  uint256 indicativeInterestRate;
  uint256 collateralRate;
}
enum IPoolDynamicExchangeRateType {
  Undefined,
  Dynamic,
  Linear,
  Compounding,
  Term
}
enum IPoolLifeCycleStateDynamic {
  Initialized,
  Active,
  Closed,
  DisruptionOrDefault
}
enum IPoolDepositActiveStateDynamic {
  Active,
  Inactive
}
enum IPoolWithdrawActiveStateDynamic {
  Active,
  Inactive
}
enum IPoolDynamicWithdrawStage {
  UndefinedStage,
  Requested,
  Accepted,
  Repaid
}
enum IPoolDynamicDepositType {
  UndefinedDeposit,
  ContractDeposit,
  OffChainDeposit,
  CrossChainDeposit,
  TransferDeposit
}
struct IPoolLenderDataDynamic {
  uint256 requestedShares;
  uint256 requestedAssets;
  uint256 acceptedShares;
  uint256 acceptedAssets;
  uint256 assetsDeposited;
  uint256 assetsWithdrawn;
  uint256 outstandingRequests;
}

struct IPoolWithdrawDynamic {
  bytes32 uuid;
  address lender;
  uint256 assets;
  uint256 shares;
  IPoolDynamicWithdrawStage stage;
  address fundsDestination;
  bool transferRedeem;
}
struct IPoolConfigurationStateDynamic {
  address poolAddr;
  string name;
  string symbol;
  address poolAccessControl;
  address poolControllerDynamic;
  uint256 activatedAt;
  // PoolControllerDynamic
  address serviceConfiguration;
  address liquidityAssetAddr;
  address poolAdmin;
  address borrowerManager;
  address borrowerWalletAddr;
  address feeCollectorAddress;
  uint256 closeOfDepositTime;
  uint256 closeOfWithdrawTime;
  uint256 transferOutDays;
  IPoolDynamicExchangeRateType exchangeRateType;
}
struct IPoolOverviewStateDynamic {
  address poolAddr;
  uint256 state;
  // accountings
  uint256 totalAssetsDeposited;
  uint256 totalAssetsWithdrawn;
  uint256 totalAssets;
  uint256 totalShares;
  uint256 exchangeRate;
  uint256 exchangeRateAtSetDay;
  uint256 exchangeRateSetDay;
  uint256 exchangeRateChangeRate;
  uint256 exchangeRateCompoundingRate;
  uint256 exchangeRateAtMaturity;
  uint256 exchangeRateMaturityDay;
  uint256 interestRate;
  uint256 indicativeInterestRate;
  uint256 collateralRate;
  //
  IPoolWithdrawDynamic[] activeWithdraws;
}

struct IPoolAccountStateDynamic {
  address poolAddr;
  address accountAddr;
  address liquidityAssetAddr;
  uint256 tokenBalance;
  uint256 assetBalance;
  uint256 maxWithdrawRequest;
  uint256 maxRedeemRequest;
  // lenderData

  uint256 requestedSharesOf;
  uint256 requestedAssetsOf;
  uint256 acceptedShares;
  uint256 acceptedAssets;
  uint256 assetsDeposited;
  uint256 assetsWithdrawn;
}
