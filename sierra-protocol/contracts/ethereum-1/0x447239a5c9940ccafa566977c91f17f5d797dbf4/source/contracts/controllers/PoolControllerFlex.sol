// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

import "../libraries/PoolLibFlex.sol";
import "../interfaces/IPoolFlex.sol";

import "../interfaces/IVault.sol";
import "./interfaces/IPoolControllerFlex.sol";

import "../factories/interfaces/IVaultFactory.sol";
import "../interfaces/IServiceConfigurationV3.sol";

import {IERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "../upgrades/BeaconImplementation.sol";

/**
 * @title Pool controller for the pool.
 * @dev Deployed as a beacon proxy contract.
 */

contract PoolControllerFlex is IPoolControllerFlex, BeaconImplementation {
    using SafeERC20 for IERC20;

    function version() public pure returns (uint16) {
        return 256 * 1 + 0;
    }

    /**
     * @dev A reference to the pool for this controller.
     */
    IPoolFlex public pool;

    /**
     * @inheritdoc IPoolControllerFlex
     */
    address public admin;

    /**
     * @dev A reference to the global service configuration.
     */
    address public serviceConfiguration;

    /**
     * @dev Settings configurable by the PoolAdmin. Some are fixed at pool creation,
     * and some are modifiable during certain Pool lifecycle states.
     */
    IPoolConfigurableSettingsFlex private _settings;

    /**
     * @dev The current pool lifecycle state.
     */
    IPoolLifeCycleStateFlex private _state;

    /**
     * @dev A reference to the ERC20 liquidity asset for the pool.
     */
    IERC20 private _liquidityAsset;

    /**
     * @dev Modifier that checks that the protocol is not paused.
     */
    modifier onlyNotPaused() {
        require(
            IServiceConfigurationV3(serviceConfiguration).paused() == false,
            "Pool: Protocol paused"
        );
        _;
    }

    /**
     * @dev Modifier that can be overriden by derived classes to enforce
     * access control.
     */
    modifier onlyPermittedAdmin() {
        require(
            IServiceConfigurationV3(serviceConfiguration).isPoolAdmin(
                msg.sender
            ),
            "Pool: Only Pool Admin Allowed"
        );
        _;
    }

    /**
     * @dev Modifier that checks that the caller is the pool's admin.
     */
    modifier onlyAdmin() {
        require(msg.sender == admin, "Pool: caller is not admin");
        _;
    }

    /**
     * @dev Modifier that checks that the pool is Initialized or Active
     */
    modifier atState(IPoolLifeCycleStateFlex state_) {
        require(
            state() == state_,
            "Pool: FunctionInvalidAtThisLifeCycleState2"
        );
        _;
    }

    /**
     * @dev Modifier that checks that the pool is Initialized or Active
     */
    modifier atInitializedOrActiveState() {
        IPoolLifeCycleStateFlex _currentState = state();

        require(
            _currentState == IPoolLifeCycleStateFlex.Active ||
                _currentState == IPoolLifeCycleStateFlex.Initialized,
            "Pool: FunctionInvalidAtThisLifeCycleState3"
        );
        _;
    }

    /**
     * @dev Modifier that checks that the pool is Initialized or Active
     */
    modifier atActiveOrClosedState() {
        IPoolLifeCycleStateFlex _currentState = state();

        require(
            _currentState == IPoolLifeCycleStateFlex.Active ||
                _currentState == IPoolLifeCycleStateFlex.Closed,
            "Pool: FunctionInvalidAtThisLifeCycleState4"
        );
        _;
    }

    /**
     * @dev Pool initializer.
     */

    function initialize(
        address pool_,
        address serviceConfiguration_,
        address admin_,
        address liquidityAsset_,
        IPoolConfigurableSettingsFlex memory poolSettings_
    ) public initializer {
        serviceConfiguration = serviceConfiguration_;
        pool = IPoolFlex(pool_);
        admin = admin_;
        _settings = poolSettings_;

        _liquidityAsset = IERC20(liquidityAsset_);
        _liquidityAsset.safeApprove(address(this), type(uint256).max);

        _setState(IPoolLifeCycleStateFlex.Initialized);
    }

    function updatePoolSettings(
        IPoolConfigurableSettingsFlex memory poolSettings_
    ) external onlyAdmin {
        emit PoolSettingsUpdated();
        _settings = poolSettings_;
    }

    /*//////////////////////////////////////////////////////////////
                                Settings
    //////////////////////////////////////////////////////////////*/
    function borrowerManagerAddr() external view returns (address) {
        return _settings.borrowerManagerAddr;
    }

    function borrowerWalletAddr() external view returns (address) {
        return _settings.borrowerWalletAddr;
    }

    function dailyOriginationFeeRate() external view returns (uint256) {
        return _settings.dailyOriginationFeeRate;
    }

    /**
     * @inheritdoc IPoolControllerFlex
     */
    function settings()
        external
        view
        returns (IPoolConfigurableSettingsFlex memory)
    {
        return _settings;
    }

    /*//////////////////////////////////////////////////////////////
                                State
    //////////////////////////////////////////////////////////////*/

    /**
     * @inheritdoc IPoolControllerFlex
     */
    function state() public view returns (IPoolLifeCycleStateFlex) {
        return _state;
    }

    /**
     * @dev Set the pool lifecycle state. If the state changes, this method
     * will also update the activatedAt variable
     */
    function _setState(IPoolLifeCycleStateFlex newState) internal {
        if (_state != newState) {
            if (
                newState == IPoolLifeCycleStateFlex.Active &&
                pool.activatedAt() == 0
            ) {
                pool.onActivated();
            }

            _state = newState;

            emit LifeCycleStateTransition(newState);
        }
    }

    function activatePool()
        external
        onlyNotPaused
        onlyPermittedAdmin
        onlyAdmin
        atInitializedOrActiveState
    {
        _setState(IPoolLifeCycleStateFlex.Active);
    }

    function closeOfDepositTime() external view returns (uint256) {
        return _settings.closeOfDepositTime;
    }

    function closeOfWithdrawTime() external view returns (uint256) {
        return _settings.closeOfWithdrawTime;
    }

    function transferInDays() external view returns (uint256) {
        return _settings.transferInDays;
    }

    function transferOutDays() external view returns (uint256) {
        return _settings.transferOutDays;
    }

    function originationFee() external view returns (uint256) {
        return _settings.originationFee;
    }

    /**
     * @inheritdoc IPoolControllerFlex
     */
    function disruptionOrDefault()
        external
        onlyNotPaused
        onlyPermittedAdmin
        onlyAdmin
        atActiveOrClosedState
    {
        _state = IPoolLifeCycleStateFlex.DisruptionOrDefault;

        emit DisruptionOrDefault(address(pool));
    }
}
