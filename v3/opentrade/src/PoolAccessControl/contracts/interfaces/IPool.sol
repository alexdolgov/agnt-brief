//Copyright Open Trade Technology Ltd. 2023. All rights reserved.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "./IERC4626.sol";
import "./IServiceConfiguration.sol";
import "../controllers/interfaces/IPoolController.sol";

import "./IPoolBase.sol";
import "../controllers/interfaces/IWithdrawController.sol";

import "./ILoan.sol";
import "../interfaces/IPoolAccessControl.sol";
import "../interfaces/IPoolStructures.sol";

/**
 * @title The interface for liquidity pools.
 */
interface IPool is IPoolBase {
  event Deposit(address indexed sender, address indexed owner, uint256 assets, uint256 shares);

  event Withdraw(
    address indexed sender,
    address indexed receiver,
    address indexed owner,
    uint256 assets,
    uint256 shares
  );

  /**
   * @dev The PoolController contract
   */
  function poolController() external view returns (IPoolController);

  /**
   * @dev The WithdrawController contract
   */
  function withdrawController() external view returns (IWithdrawController);

  /**
   * @dev The current configurable pool settings.
   */
  function settings() external view returns (IPoolConfigurableSettings calldata settings);

  /**
   * @dev The current pool state.
   */
  function state() external view returns (IPoolLifeCycleState);

  /**
   * @dev The pool accounting variables;
   */
  function accountings() external view returns (IPoolAccountings memory);

  function closeOfBusinessTime() external view returns (uint256);

  /**
   * @dev Callback from the pool controller when the pool is activated
   */
  function onActivated() external;

  function initiateRollover(address loan, address priorLoan) external;

  function completeRolloverNetPayment(address) external;

  function withdrawFeeVault(uint256 amount, address receiver) external;

  function loanCreated(address loan) external;

  function reschedule(
    address loan,
    uint256 accrualStartDayTimestamp,
    uint256 transferInWindowDurationDays,
    uint256 transferOutWindowDurationDays,
    uint256 durationDays
  ) external;

  function redemptionState() external view returns (IRedemptionState memory _redemptionState);

  function releaseRolloverRedemption(address owner) external;

  function exchangeRateAtMaturity() external view returns (uint256 _exchangeRateAtMaturity);

  function exchangeRateAtDeposit() external view returns (uint256);

  /**
   * @dev Calculate the total amount of underlying assets held by the vault,
   * excluding any assets due for withdrawal.
   */
  function totalAvailableAssets() external view returns (uint256);

  /**
   * @dev The total available supply that is not marked for withdrawal
   */
  function totalAvailableSupply() external view returns (uint256);

  /**
   * @dev The accrued interest at the current block.
   */
  function currentExpectedInterest() external view returns (uint256 interest);

  function rolloverAndFinalizeApr(uint256 _apr) external;

  /*//////////////////////////////////////////////////////////////
                       LOAN SET OPERATIONS
//////////////////////////////////////////////////////////////*/

  function approveLoanForPool(address loan) external;

  function createdLoan() external view returns (address);

  function activeLoan() external view returns (address);

  function requestedLoan() external view returns (address);

  function maturedLoan() external view returns (address);

  function settledLoans() external view returns (address[] memory);

  /*//////////////////////////////////////////////////////////////
                         Early Withdraw
   //////////////////////////////////////////////////////////////*/

  function requestEarlyRedeem(uint256 shares) external;

  function acceptEarlyRedeemRequest(address investorAddr) external returns (uint256 principal);

  function repayEarlyWithdraw(
    address investorAddr,
    uint256 amount
  ) external returns (uint256 principal, uint256 repayment, uint256 redeemedShares, uint256 fees);

  function deposit(uint256 assets, address lender) external returns (uint256 shares);

  function convertToAssets(uint256 shares) external view returns (uint256 assets);

  function convertToShares(uint256 assets) external view returns (uint256 shares);

  function maxWithdraw(address owner) external view returns (uint256 assets);

  function maxRedeem(address owner) external view returns (uint256 maxShares);

  function totalAssets() external view returns (uint256);

  function asset() external view returns (address);
  function convertToSharesAtDeposit(uint256 assets) external view returns (uint256 shares);
}
