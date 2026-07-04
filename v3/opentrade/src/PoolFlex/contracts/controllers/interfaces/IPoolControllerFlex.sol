// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

import "../../interfaces/IPool.sol";
import "../../interfaces/ILoan.sol";

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
    function settings()
        external
        view
        returns (IPoolConfigurableSettingsFlex memory);

    function serviceConfiguration() external view returns (address);

    /**
     * @dev Allow the current pool admin to update the pool capacity at any
     * time.
     */
    function updatePoolSettings(
        IPoolConfigurableSettingsFlex memory poolSettings_
    ) external;

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
}
