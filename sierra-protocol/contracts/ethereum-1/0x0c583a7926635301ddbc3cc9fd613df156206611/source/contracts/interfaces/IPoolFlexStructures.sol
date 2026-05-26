//Copyright Open Trade Technology Ltd. 2023. All rights reserved.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

struct IPoolAccountingsFlex {
  uint256 interestRate;
  uint256 dailyInterestRate;
  uint256 totalPrincipalEarningInterest;
  uint256 totalInterestAccrued;
  uint256 totalAssetsDeposited;
  uint256 totalAssetsWithdrawn;
  uint256 exchangeRate;
  uint256 lastDayAccrued;
  uint256 totalFees;
  uint256 feesOutstanding;
  uint256 interstRateSetTime;
}

struct IPoolConfigurationStateFlex {
  address poolAddr;
  uint256 dailyOriginationFeeRate;
  uint256 originationFee;
  uint256 closeOfDepositTime;
  uint256 closeOfWithdrawTime;
  uint256 transferInDays;
  uint256 transferOutDays;
  address liquidityAssetAddr;
  address poolAdminAddr;
  address poolControllerAddr;
  address withdrawControllerAddr;
  address borrowerVaultAddr;
  string name;
  string symbol;
  address borrowerManagerAddr;
  address borrowerWalletAddr;
  uint256 maxCapacity;
  uint64[] nonBusinessDays;
  address businessDayRegistryAddr;
}

struct IPoolOverviewStateFlex {
  address poolAddr;
  uint256 interestRate;
  uint256 dailyInterestRate;
  uint256 totalPrincipalEarningInterest;
  uint256 totalInterestAccrued;
  uint256 totalAssetsDeposited;
  uint256 totalAssetsWithdrawn;
  uint256 exchangeRate;
  uint256 totalSupply;
  uint256 totalRequestedShares;
  uint256 totalRequestedAssets;
  uint256 totalAssetsTransitioningIn;
  uint256 totalSharesTransitioningIn;
  uint256 totalAssetsDueForWithdraws;
  uint256 totalFees;
  uint256 feesOutstanding;
  uint64[] nonBusinessDays;
  uint8 state;
  uint256 lastDayAccrued;
}

struct IPoolAccountStateFlex {
  address poolAddr;
  address accountAddr;
  uint256 tokenBalance;
  uint256 maxWithdrawRequest;
  uint256 maxRedeemRequest;
  uint256 requestedSharesOf;
  uint256 requestedAssetsOf;
  uint256 principalEarningInterest;
  uint256 interestAccrued;
  uint256 assetsDeposited;
  uint256 assetsWithdrawn;
  uint256 sharesTransitioningIn;
  uint256 assetsTransitioningIn;
  uint256 assetsDueForWithdraws;
  uint256 sharesDueForWithdraws;
}

struct PoolAddressListFlex {
  address liquidityAsset;
  address poolAdmin;
  address serviceConfiguration;
  address withdrawDepositControllerFactoryFlex;
  address poolControllerFactoryFlex;
  address vaultFactory;
  address poolAccessControlFactory;
  address businessDayRegistryFactory;
}
/**
 * @dev Expresses the various states a pool can be in throughout its lifecycle.
 */
enum IPoolLifeCycleStateFlex {
  Initialized,
  Active,
  Closed,
  DisruptionOrDefault
}

/**
 * @title The various configurable settings that customize Pool behavior.
 */
struct IPoolConfigurableSettingsFlex {
  uint256 maxCapacity; // amount
  address borrowerManagerAddr;
  address borrowerWalletAddr;
  uint256 closeOfDepositTime;
  uint256 closeOfWithdrawTime;
  uint256 originationFee;
  uint256 dailyOriginationFeeRate;
  uint256 transferInDays;
  uint256 transferOutDays;
}

struct IPoolLenderWithdrawEvent {
  uint256 requestedShares; // Number of shares requested in the `latestPeriod`
  uint256 requestedAssets;
  uint256 transferOutDayTimestamp;
  uint256 requestTimestamp;
  address lender;
  uint256 eventId;
}

struct IPoolLenderTotals {
  uint256 requestedShares; // Number of shares requested in the `latestPeriod`
  uint256 requestedAssets;
  address lender;
  uint256 assetsDeposited;
  uint256 assetsWithdrawn;
  uint256 sharesTransitioningIn;
  uint256 assetsTransitioningIn;
  uint256 assetsDueForWithdraws;
  uint256 sharesDueForWithdraws;
}

struct IDailyWithdrawTotals {
  uint256 requestedShares; // Number of shares requested in the `latestPeriod`
  uint256 requestedAssets;
  uint256 transferOutDayTimestamp;
}

struct IPoolWithdrawTotal {
  uint256 requestedShares; // Number of shares requested in the `latestPeriod`
  uint256 requestedAssets;
}

struct IPoolLenderDepositEvent {
  uint256 mintedShares;
  uint256 depositedAssets;
  uint256 transferInDayTimestamp;
  address lender;
}

struct IDailyDepositTotals {
  uint256 mintedShares;
  uint256 depositedAssets;
  uint256 transferInDayTimestamp;
}

struct IPoolDepositsTotal {
  uint256 mintedShares;
  uint256 depositedAssets;
}

struct ICrossChainTransferFlexState {
  uint256 amount;
  bool isCrossChainSource;
}
