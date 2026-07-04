//Copyright Open Trade Technology Ltd. 2023. All rights reserved.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;
struct IRedemptionState {
  address[] redemptionLenders;
  uint256[] requestedShares;
  uint256[] redeemableShares;
}
struct IPoolConfigurableSettings {
  uint256 maxCapacity; // amount
  uint256 endDate; // epoch seconds
  address borrowerManager;
  address borrowerWalletAddress;
  uint256 closeOfBusinessTime;
  uint256 earlyWithdrawFeeBps;
}
struct IPoolAccountings {
  uint256 totalAvailableAssets;
  uint256 outstandingLoanPrincipals;
  uint256 totalAssetsDeposited;
  uint256 totalAssetsWithdrawn;
}
struct IPoolRolloverWithdrawState {
  uint256 requestedShares; // Number of shares requested in the `latestPeriod`
  uint256 requestedAssets;
  uint256 redeemableShares; // The shares that are currently withdrawable
  uint256 withdrawableAssets; // The assets that are currently withdrawable
  uint256 earlyRequestedShares; // The period in which the shares were requested
  uint256 earlyRequestedAssets;
  uint256 earlyAcceptedShares; // The period in which the shares were requested
  uint256 earlyAcceptedAssets;
}
struct ICrossChainTransferTermState {
  uint256 amount;
  bool isCrossChainSource;
}

/**
 * @title An enum capturing the various states a Loan may be in.
 */
enum ILoanLifeCycleState {
  Requested,
  Canceled,
  Funded,
  Matured,
  Active,
  Settled
}

enum ILoanTransitionState {
  Created /* RequestedLoan */,
  ApprovedForDeposits /* RequestedLoan */,
  TransitioningFundsIn /* RequestedLoan */,
  AccruingInterest /* ActiveLoan */,
  RedemptionsClosed /* ActiveLoan */,
  TransitioningFundsOut /* MaturedLoan */,
  RedemptionsReleased /* Settled loan */
}

struct ILoanCompleteState {
  address loanAddr;
  address borrowerAddr;
  address fundingVaultAddr;
  address poolAddr;
  uint256 state;
  uint256 transitionState;
  uint256 durationDays;
  uint256 principal;
  uint256 startingPrincipal;
  uint256 interest;
  uint256 indicativeInterest;
  uint256 originationFee;
  uint256 indicativeApr;
  uint256 finalizedApr;
  uint256 exchangeRateAtDeposit;
  uint256 exchangeRateAtMaturity;
  uint256 fundingVaultBalance;
  uint256 assetsRolloverToNextLoan;
  uint256 assetsToReturnToPool;
  uint256 assetsFromPool;
  uint256 accrualStartDayTimestamp;
  uint256 accrualStartTimestamp;
  uint256 transferInWindowDurationDays;
  uint256 transferOutWindowDurationDays;
  uint256 depositClosingTimestamp;
  uint256 redemptionRequestClosingTimestamp;
  uint256 maturingTimestamp;
  uint256 redemptionAvailableTimestamp;
  ILoanRolloverAccounting rolloverAccounting;
  bool canRequestRedemption;
}

/**
 * @title The various Loan terms.
 */
struct ILoanSettings {
  uint256 principal;
  uint256 indicativeApr;
  uint256 finalizedApr;
  uint256 durationDays;
  uint256 dropDeadTimestamp;
  uint256 originationBps;
  uint256 accrualStartDayTimestamp;
  uint256 transferInWindowDurationDays;
  uint256 transferOutWindowDurationDays;
  address priorLoan;
  uint256 startingPrincipal;
}

struct ILoanRolloverAccounting {
  uint256 totalSupply;
  uint256 assetsFromPool;
  uint256 assetsFromPriorLoan;
  uint256 assetToReturnToPool;
  uint256 exchangeRateAtDeposit;
  uint256 exchangeRateAtMaturity;
}

/* Paired with rolloverTiming field */
enum IPoolRolloverState {
  EarlyRolloverInitiate, // 0 accept Deposits and WithdrawRequests, no early withdraws) transitionTiming = time to expected rollover */
  RolloverInitiate, // 1 no deposits or withdrawRequests)  transitionTiming = time left of  expected rollover */
  LateRolloverInitiate, // 2  transitionTiming = time expected rollover pastDue */
  EarlyRolloverFinalize, // 3 Requested
  RolloverFinalize, // 4 Requested
  LateRolloverFinalize, // 5 Requested
  EarlyRepayWithdrawsAndFees, // 6 Matured loan
  RepayWithdrawsAndFees, // 7 Matured loan
  LateRepayWithdrawsAndFees, // 8 Matured loan
  EarlyReleaseRedemptions, // 9 Matured loan
  ReleaseRedemptions, // 10 Matured loan
  LateReleaseRedemptions, // 11 Matured loan
  CreateNextLoan, // 12
  ApproveNextLoan, //13
  LateApproveNextLoan, //14
  LoanNeedsRescheduling, //15
  NotRollingOver, //16
  InvalidState // 17
}

enum IPoolRolloverActor {
  PoolAdmin, // 0
  BorrowerManager, //1
  BorrowerWallet, //2
  Investor // 3
}

struct IPoolRolloverStateStruct {
  IPoolRolloverState rolloverState;
  IPoolRolloverActor rolloverActor;
  uint256 rolloverTimeToActionWindow;
  uint256 rolloverTimeLeftInActionWindow;
  uint256 rolloverTimePastActionWindow;
}

struct IPoolConfigurationState {
  address poolAddr;
  address admin;
  address poolController;
  address feeVault;
  address withdrawController;
  string name;
  string symbol;
  address borrowerManager;
  address borrowerWallet;
  address borrowerVault;
  uint256 maxCapacity;
  uint256 closeOfBusinessTime;
  uint256 poolEndDate;
  address liquidityPoolAssetAddr;
}

struct IPoolOverviewState {
  address poolAddr;
  address[] settledLoans;
  uint8 state;
  uint8 rolloverState;
  uint8 rolloverActor;
  uint256 rolloverTimeToActionWindow;
  uint256 rolloverTimeLeftInActionWindow;
  uint256 rolloverTimePastActionWindow;
  uint256 totalAvailableAssets;
  uint256 totalAvailableSupply;
  uint256 currentExpectedInterest;
  uint256 liquidityPoolAssets;
  uint256 totalAssets;
  uint256 totalOutstandingLoanPrincipal;
  uint256 totalAssetsDeposited;
  uint256 totalAssetsWithdrawn;
  uint256 totalRequestedShares;
  uint256 totalRedeemableShares;
  uint256 totalWithdrawableAssets;
  uint256 totalRequestedAssets;
  uint256 feeVaultBalance;
  uint256 borrowerVaultBalance;
  uint256 borrowerWalletBalance;
  uint256 poolBalance;
  uint256 exchangeRateAtMaturity;
  ILoanCompleteState requestedLoanState;
  ILoanCompleteState activeLoanState;
  ILoanCompleteState maturedLoanState;
  ILoanCompleteState createdLoanState;
  IRedemptionState redemptionState;
  uint256 totalEarlyRequestedShares;
  uint256 totalEarlyRequestedAssets;
  uint256 totalEarlyAcceptedShares;
  uint256 totalEarlyAcceptedAssets;
}

struct IPoolAccountState {
  address poolAddr;
  address accountAddr;
  uint256 balance;
  uint256 maxWithdrawRequest;
  uint256 maxRedeemRequest;
  uint256 maxWithdraw;
  uint256 maxRedeem;
  uint256 requestedSharesOf;
  uint256 redeemableSharesOf;
  uint256 requestedAssetsOf;
  uint256 withdrawableAssetsOf;
  uint256 earlyRequestedSharesOf;
  uint256 earlyRequestedAssetsOf;
  uint256 earlyAcceptedSharesOf;
  uint256 earlyAcceptedAssetsOf;
}

struct PoolAddressList {
  address liquidityAsset;
  address poolAdmin;
  address serviceConfiguration;
  address withdrawControllerFactory;
  address poolControllerFactory;
  address vaultFactory;
  address poolAccessControlFactory;
}
