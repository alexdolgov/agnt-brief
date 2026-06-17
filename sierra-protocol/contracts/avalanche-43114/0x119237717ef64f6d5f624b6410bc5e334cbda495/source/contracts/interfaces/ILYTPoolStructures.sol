//Copyright Open Trade Technology Ltd. 2023. All rights reserved.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

struct ILYTPoolConfigurableSettings {
    address issuer;
    address treasuryWalletAddr;
    address feeCollectorAddress;
    ILYTPoolExchangeRateType exchangeRateType;
}

struct LYTPoolAddressList {
  address liquidityAsset;
  address poolAdmin;
  address serviceConfiguration;
  address lytPoolControllerFactory;
  address poolAccessControlFactory;
}
struct ILYTPoolAccounting {
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
enum ILYTPoolExchangeRateType {
  Undefined,
  Dynamic,
  Linear,
  Compounding,
  Term
}
enum ILYTPoolLifeCycleState {
  Active,
  Closed
}
enum ILYTPoolDepositActiveState {
  Active,
  Inactive
}
enum ILYTPoolWithdrawActiveState {
  Active,
  Inactive
}
enum ILYTPoolWithdrawStage {
  UndefinedStage,
  Requested
}
enum ILYTPoolDepositType {
  UndefinedDeposit,
  ContractDeposit,
  OffChainDeposit,
  TransferDeposit
}
struct ILYTPoolLenderData {
  uint256 requestedShares;
  uint256 requestedAssets;
  uint256 assetsDeposited;
  uint256 assetsWithdrawn;
  uint256 outstandingRequests;
}

struct ILYTPoolWithdraw {
  bytes32 uuid;
  address lender;
  uint256 assets;
  uint256 shares;
  ILYTPoolWithdrawStage stage;
  address fundsDestination;
}
struct ILYTPoolConfigurationState {
  address poolAddr;
  string name;
  string symbol;
  address poolAccessControl;
  address lytPoolController;
  uint256 activatedAt;
  // LYTPoolController
  address serviceConfiguration;
  address liquidityAssetAddr;
  address poolAdmin;
  address issuer;
  address treasuryWalletAddr;
  address feeCollectorAddress;
  ILYTPoolExchangeRateType exchangeRateType;
}
struct ILYTPoolOverviewState {
  address poolAddr;
  uint256 state;
  // accounting
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
  ILYTPoolWithdraw[] activeWithdraws;
}

struct ILYTPoolAccountState {
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
  uint256 assetsDeposited;
  uint256 assetsWithdrawn;
}