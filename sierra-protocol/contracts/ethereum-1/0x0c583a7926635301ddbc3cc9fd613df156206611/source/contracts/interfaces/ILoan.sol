//Copyright Open Trade Technology Ltd. 2023. All rights reserved.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "./IServiceConfigurationV5.sol";
import "../interfaces/IVault.sol";

import "../interfaces/IPoolStructures.sol";

/**
 * @title The primary interface for Perimeter loans.
 */
interface ILoan {
  /**
   * @dev Emitted when loan is funded.
   */
  event LoanFunded(address asset, uint256 amount);

  /**
   * @dev Emitted when a Loan's lifecycle state transitions
   */
  event LifeCycleStateTransition(ILoanLifeCycleState state);

  function getRolloverAccounting() external view returns (ILoanRolloverAccounting memory);

  function approve() external;

  function canRequestRedemption() external view returns (bool);

  function inDepositWindow() external view returns (bool);

  function inInitiateRolloverWindow() external view returns (bool);

  function exchangeRateAtDeposit() external view returns (uint256);

  function exchangeRateAtMaturity() external view returns (uint256);

  function assetsRolloverToNextLoan() external view returns (uint256);

  function assetsFromPool() external view returns (uint256);

  function assetsToReturnToPool() external view returns (uint256);

  function accrualStartTimestamp() external view returns (uint256);

  function accrualStartDayTimestamp() external view returns (uint256);

  function transferInWindowDurationDays() external view returns (uint256);

  function transferOutWindowDurationDays() external view returns (uint256);

  function depositClosingTimestamp() external view returns (uint256);

  function earlyRedeemRequestClosingTimestamp() external view returns (uint256);

  function redemptionRequestClosingTimestamp() external view returns (uint256);

  function maturingTimestamp() external view returns (uint256);

  function redemptionAvailableTimestamp() external view returns (uint256);

  /**
   * @dev Current Loan lifecycle state.
   */
  function state() external view returns (ILoanLifeCycleState);

  function transitionState() external view returns (ILoanTransitionState);

  /**
   * @dev The loan's borrower.
   */
  function borrower() external view returns (address);

  /**
   * @dev The pool associated with a loan.
   */
  function pool() external view returns (address);

  /**
   * @dev The factory that created the loan.
   */
  function factory() external view returns (address);

  /**
   * @dev A timestamp that controls when the loan can be dissolved
   */
  function dropDeadTimestamp() external view returns (uint256);

  /**
   * @dev Amount expected in each payment
   */
  function interest() external view returns (uint256);

  function indicativeInterest() external view returns (uint256);

  function rolloverMaturedLoan() external;

  function rolloverAndFinalizeApr(uint256 apr) external;

  function rolloverAllocation(uint256 assetsRolloverToNextLoan_, uint256 assetToReturnToPool_) external;

  function completeRolloverNetPayment()
    external
    returns (uint256 feeVaultAmount, uint256 assetsReturnedToPool, uint256 interestAccrued);

  function fundRollover(
    uint256 assetsFromPool,
    uint256 assetsFromPriorLoan,
    uint256 totalSupply,
    address priorLoan
  ) external returns (ILoanLifeCycleState);

  function reschedule(
    uint256 accrualStartDayTimestamp_,
    uint256 transferInWindowDurationDays_,
    uint256 transferOutWindowDurationDays_,
    uint256 durationDays_
  ) external;

  /**
   * @dev When the loan was created.
   */
  function createdAt() external returns (uint256);

  /**
   * @dev Duration of the loan, after which the principal must be returned.
   */
  function durationDays() external view returns (uint256);

  /**
   * @dev Interest rate for the loan.
   */
  function finalizedApr() external view returns (uint256);

  function indicativeApr() external view returns (uint256);

  function originationFee() external view returns (uint256);

  /**
   * @dev Amount of loan principal.
   */
  function principal() external view returns (uint256);

  function startingPrincipal() external view returns (uint256);

  /**
   * @dev Address of the loan's funding vault, which holds liquidity transferred from the pool.
   */
  function fundingVault() external view returns (IVault);

  /**
   * @dev Liquidity asset of the loan or pool.
   */
  function liquidityAsset() external view returns (address);

  /**
   * @dev Address of the global service configuration.
   */
  function serviceConfiguration() external view returns (IServiceConfigurationV5);

  function repayEarlyWithdraw(uint256 principal, uint256 assetReduction) external;

  function crossChainTransferMintDestination(uint256 amount, uint256 assetsAtMaturity) external;

  function crossChainTransferBurnSource(uint256 amount) external returns (uint256 shares, uint256 assetsAtMaturity);

  function depoistToLoan(address lender, uint256 assets, uint256 shares) external;
}
