//Copyright Open Trade Technology Ltd. 2023. All rights reserved.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "../../interfaces/IPoolFlexStructures.sol";

/**
 * @title A Pool's Admin controller
 * @dev Pool Admin's interact with the pool via the controller, including funding loans and adjusting
 * settings.
 */
interface IPoolControllerFlex {
  /**
   * @dev Emitted when pool settings are updated.
   */
  event PoolSettingsUpdated();

  /**
   * @dev Emitted when the pool transitions a lifecycle state.
   */
  event LifeCycleStateTransition(IPoolLifeCycleStateFlex state);

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
  function settings() external view returns (IPoolConfigurableSettingsFlex memory);

  function serviceConfiguration() external view returns (address);

  /**
   * @dev Allow the current pool admin to update the pool capacity at any
   * time.
   */
  function updatePoolSettings(IPoolConfigurableSettingsFlex memory poolSettings_) external;

  function dailyOriginationFeeRate() external view returns (uint256);

  function originationFee() external view returns (uint256);

  function closeOfDepositTime() external view returns (uint256);

  function closeOfWithdrawTime() external view returns (uint256);

  function transferInDays() external view returns (uint256);

  function transferOutDays() external view returns (uint256);

  function borrowerManagerAddr() external view returns (address);

  function borrowerWalletAddr() external view returns (address);

  function disruptionOrDefault() external;

  /**
   * @dev Returns the current pool lifecycle state.
   */
  function state() external view returns (IPoolLifeCycleStateFlex);

  function activatePool() external;

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
