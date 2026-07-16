//Copyright Open Trade Technology Ltd. 2023. All rights reserved.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "../../interfaces/IPoolStructures.sol";

/**
 * @dev Expresses the various states a pool can be in throughout its lifecycle.
 */
enum IPoolLifeCycleState {
  Initialized,
  Active,
  Closed,
  DisruptionOrDefault
}

/**
 * @title The various configurable settings that customize Pool behavior.
 */

/**
 * @title A Pool's Admin controller
 * @dev Pool Admin's interact with the pool via the controller, including funding loans and adjusting
 * settings.
 */
interface IPoolController {
  /**
   * @dev Emitted when pool settings are updated.
   */
  event PoolSettingsUpdated();

  /**
   * @dev Emitted when the pool transitions a lifecycle state.
   */
  event LifeCycleStateTransition(IPoolLifeCycleState state);

  /**
   * @dev Emitted when a pool is marked as in DisruptionOrDefault.
   */
  event DisruptionOrDefault(address indexed pool);

  event Rescheduled(address indexed pool);

  function version() external returns (uint16);

  /**
   * @dev The Pool's admin
   */
  function admin() external view returns (address);

  /*//////////////////////////////////////////////////////////////
                Settings
    //////////////////////////////////////////////////////////////*/

  /**
   * @dev The current configurable pool settings.
   */
  function settings() external view returns (IPoolConfigurableSettings memory);

  function serviceConfiguration() external view returns (address);

  /**
   * @dev Allow the current pool admin to update the pool capacity at any
   * time.
   */
  function setPoolCapacity(uint256) external;

  /**
   * @dev Allow the current pool admin to update the pool's end date. The end date can
   * only be moved earlier (but not in the past, as measured by the current block's timestamp).
   * Once the end date is reached, the Pool is closed.
   */
  function setPoolEndDate(uint256) external;

  function closeOfBusinessTime() external view returns (uint256);

  function borrowerManager() external view returns (address);

  function borrowerWalletAddress() external view returns (address);

  /*//////////////////////////////////////////////////////////////
                State
    //////////////////////////////////////////////////////////////*/

  function reschedule(
    address loan,
    uint256 accrualStartDayTimestamp,
    uint256 transferInWindowDurationDays,
    uint256 transferOutWindowDurationDays,
    uint256 durationDays
  ) external;

  /**
   * @dev Returns the current pool lifecycle state.
   */
  function state() external view returns (IPoolLifeCycleState);

  function activatePool() external;

  /*//////////////////////////////////////////////////////////////
                Loans
    //////////////////////////////////////////////////////////////*/
  function approveLoanForPool(address loan) external;

  function initiateRollover(address loan, address priorLoan) external;

  function completeRolloverNetPayment(address) external;

  function disruptionOrDefault() external;

  function releaseRolloverRedemption(address owner) external;

  /*//////////////////////////////////////////////////////////////
                Fees
    //////////////////////////////////////////////////////////////*/

  /**
   * @dev Called by the pool admin, this claims fees that have accumulated
   * in the Pool's FeeVault from ongoing borrower payments.
   */
  function withdrawFeeVault(uint256 amount, address receiver) external;

  function crossChainTransferApproveSource(
    uint32 destinationChainId,
    address destinationPoolAddr,
    address destinationWalletAddr,
    address sourceWalletAddr,
    uint256 amount
  ) external;

  function crossChainTransferApproveDestination(
    uint32 sourceChainId,
    address sourcePoolAddr,
    address destinationWalletAddr,
    address sourceWalletAddr,
    uint256 amount
  ) external;

  function crossChainTransferMintDestination(address destinationWalletAddr, uint256 amount) external;
}
