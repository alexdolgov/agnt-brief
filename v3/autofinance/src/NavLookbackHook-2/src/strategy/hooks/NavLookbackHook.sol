// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2025 Tokemak Foundation. All rights reserved.

pragma solidity ^0.8.24;

import { ISystemRegistry } from "src/interfaces/ISystemRegistry.sol";
import { NavTracking } from "src/strategy/NavTracking.sol";
import { IStrategyHook } from "src/interfaces/strategy/IStrategyHook.sol";
import { BaseStrategyHook } from "src/strategy/hooks/BaseStrategyHook.sol";
import { Errors } from "src/utils/Errors.sol";
import { Roles } from "src/libs/Roles.sol";
import { AutopoolDebt } from "src/vault/libs/AutopoolDebt.sol";
import { ProcessRebalanceParams } from "src/vault/libs/AutopoolState.sol";

/// @title Ensures NAV lookbacks are respected
contract NavLookbackHook is BaseStrategyHook {
    using NavTracking for NavTracking.State;

    /// =====================================================
    /// Public Vars
    /// =====================================================

    /// @notice Mapping of Autopool to its NAV lookback data
    mapping(address => NavLookbackData) public autopoolNavData;

    /// @notice NAV tracking state for Autopools
    //slither-disable-next-line uninitialized-state
    mapping(address => NavTracking.State) public autopoolNavTrackState;

    /// =====================================================
    /// Structs
    /// =====================================================

    /// @param navLookback1InDays The number of days for the first NAV decay comparison (e.g., 30 days)
    /// @param navLookback2InDays The number of days for the second NAV decay comparison (e.g., 60 days)
    /// @param navLookback3InDays The number of days for the third NAV decay comparison (e.g., 90 days)
    /// @param pauseRebalancePeriodInDays The number of days to pause rebalancing due to NAV decay
    /// @param lastPausedTimestamp The timestamp for when rebalancing was last paused
    struct NavLookbackData {
        uint8 navLookback1InDays;
        uint8 navLookback2InDays;
        uint8 navLookback3InDays;
        uint16 pauseRebalancePeriodInDays;
        uint40 lastPausedTimestamp;
    }

    /// @notice Parts of the AutopoolData for registering the hook
    struct RegistrationData {
        uint256 navLookback1InDays;
        uint256 navLookback2InDays;
        uint256 navLookback3InDays;
        uint256 pauseRebalancePeriodInDays;
    }

    /// =====================================================
    /// Events
    /// =====================================================

    event AutopoolNavLookbackConfigured(
        address autoPool,
        uint256 navLookback1InDays,
        uint256 navLookback2InDays,
        uint256 navLookback3InDays,
        uint256 pauseRebalancePeriodInDays
    );
    event PauseStart(address autoPool, uint256 navPerShare, uint256 nav1, uint256 nav2, uint256 nav3);
    event PauseStop(address autoPool);

    /// =====================================================
    /// Errors
    /// =====================================================

    error StrategyPaused();

    /// =====================================================
    /// Functions - Constructor
    /// =====================================================

    constructor(
        ISystemRegistry _systemRegistry
    ) BaseStrategyHook(_systemRegistry) { }

    /// =====================================================
    /// Functions - External
    /// =====================================================

    /// @notice Configures the hook
    /// @param autopools Target Autopools
    /// @param registrationData The nav lookback config data
    function configureAutopools(
        address[] memory autopools,
        RegistrationData[] memory registrationData
    ) external hasRole(Roles.STRATEGY_HOOK_CONFIGURATION) {
        _configureAutopools(autopools, registrationData);
    }

    /// @inheritdoc IStrategyHook
    /// @notice Ensures the strategy is not paused when rebalancing to idle
    function onRebalanceStart(ProcessRebalanceParams calldata args, address) external view override {
        if (!isRebalanceToIdle(args.rebalanceParams)) {
            _ensureNotPaused();
        }
    }

    /// @inheritdoc IStrategyHook
    function onNavUpdate(
        AutopoolDebt.AssetChanges memory assetChanges
    ) external override {
        address autopool = msg.sender;
        NavLookbackData storage autopoolData = autopoolNavData[autopool];
        uint256 navPerShare = (assetChanges.newIdle + assetChanges.newDebt) * 1e18 / assetChanges.endingTotalSupply;

        //slither-disable-start similar-names
        uint8 navLookback1InDays = autopoolData.navLookback1InDays;
        uint8 navLookback2InDays = autopoolData.navLookback2InDays;
        uint8 navLookback3InDays = autopoolData.navLookback3InDays;
        //slither-disable-end similar-names

        uint40 blockTime = uint40(block.timestamp);

        NavTracking.State storage navTrackingState = autopoolNavTrackState[autopool];
        navTrackingState.insert(navPerShare, blockTime);

        _clearExpiredPause();

        // check if the strategy needs to be paused due to NAV decay
        // the check only happens after there are enough data points
        // skip the check if the strategy is already paused
        // slither-disable-next-line timestamp
        if (navTrackingState.len > navLookback3InDays && !paused()) {
            uint256 nav1 = navTrackingState.getDaysAgo(navLookback1InDays);
            uint256 nav2 = navTrackingState.getDaysAgo(navLookback2InDays);
            uint256 nav3 = navTrackingState.getDaysAgo(navLookback3InDays);

            if (navPerShare < nav1 && navPerShare < nav2 && navPerShare < nav3) {
                autopoolData.lastPausedTimestamp = blockTime;
                emit PauseStart(autopool, navPerShare, nav1, nav2, nav3);
            }
        }
    }

    /// @inheritdoc IStrategyHook
    function getFnFlags() external pure override returns (uint8) {
        return 129;
    }

    /// =====================================================
    /// Functions – Public
    /// =====================================================

    /// @notice Get the NAV tracking state for an Autopool
    /// @param autopool The address of the Autopool
    /// @return The NAV tracking state
    /// @dev This function is needed to access NavTracking.State as a library
    function getAutopoolNavTrackState(
        address autopool
    ) public view returns (NavTracking.State memory) {
        return autopoolNavTrackState[autopool];
    }

    function paused() public view returns (bool) {
        NavLookbackData memory autopoolData = autopoolNavData[msg.sender];
        uint40 lastPausedTimestamp = autopoolData.lastPausedTimestamp;
        // slither-disable-next-line incorrect-equality,timestamp
        if (lastPausedTimestamp == 0) return false;
        uint40 pauseRebalanceInSeconds = uint40(autopoolData.pauseRebalancePeriodInDays) * 1 days;

        // slither-disable-next-line timestamp
        return uint40(block.timestamp) - lastPausedTimestamp <= pauseRebalanceInSeconds;
    }

    /// @notice Check if the pause state has expired for the calling Autopool
    /// @return True if the pause state has expired, false otherwise
    function expiredPauseState() public view returns (bool) {
        // slither-disable-next-line timestamp
        return autopoolNavData[msg.sender].lastPausedTimestamp > 0 && !paused();
    }

    /// =====================================================
    /// Functions – Internal
    /// =====================================================

    /// @inheritdoc BaseStrategyHook
    function _onRegistered(
        bytes memory data
    ) internal override {
        RegistrationData memory registrationData = abi.decode(data, (RegistrationData));
        _configureAutopool(msg.sender, registrationData);
    }

    /// @inheritdoc BaseStrategyHook
    function _onUnregistered(
        bytes memory
    ) internal override {
        autopoolNavData[msg.sender] = NavLookbackData({
            navLookback1InDays: 0,
            navLookback2InDays: 0,
            navLookback3InDays: 0,
            pauseRebalancePeriodInDays: 0,
            lastPausedTimestamp: 0
        });
        emit AutopoolNavLookbackConfigured(msg.sender, 0, 0, 0, 0);
    }

    function _clearExpiredPause() internal returns (bool) {
        if (!expiredPauseState()) return false;

        address autopool = msg.sender;
        autopoolNavData[autopool].lastPausedTimestamp = 0;
        emit PauseStop(autopool);
        return true;
    }

    function _ensureNotPaused() internal view {
        if (paused()) revert StrategyPaused();
    }

    /// =====================================================
    /// Functions - Private
    /// =====================================================

    function _configureAutopools(address[] memory autopools, RegistrationData[] memory registrationData) private {
        Errors.verifyArrayLengths(autopools.length, registrationData.length, "autopools+registrationData");

        for (uint256 i = 0; i < autopools.length; ++i) {
            address autoPool = autopools[i];
            Errors.verifyNotZero(autoPool, "autoPool");

            _configureAutopool(autoPool, registrationData[i]);
        }
    }

    /// @dev Validate, set configuration, and emit events for an Autopool
    function _configureAutopool(address autopool, RegistrationData memory registrationData) private {
        //slither-disable-start similar-names
        uint256 navLookback1InDays = registrationData.navLookback1InDays;
        uint256 navLookback2InDays = registrationData.navLookback2InDays;
        uint256 navLookback3InDays = registrationData.navLookback3InDays;
        //slither-disable-end similar-names
        uint256 pauseRebalancePeriodInDays = registrationData.pauseRebalancePeriodInDays;

        // 1) Validate the lookback days
        Errors.verifyNotZero(navLookback1InDays, "navLookback1InDays");

        // the 91st spot holds current (0 days ago), so the farthest back that can be retrieved is 90 days ago
        if (navLookback3InDays > NavTracking.MAX_NAV_TRACKING) {
            revert Errors.InvalidParam("navLookback_max");
        }

        // lookback should be configured smallest to largest and should not be equal
        if (navLookback1InDays >= navLookback2InDays || navLookback2InDays >= navLookback3InDays) {
            revert Errors.InvalidParam("navLookback_steps");
        }

        // 2) Validate the pause rebalance period
        if (pauseRebalancePeriodInDays < 7 || pauseRebalancePeriodInDays > 90) {
            revert Errors.InvalidParam("pauseRebalancePeriodInDays");
        }

        autopoolNavData[autopool] = NavLookbackData({
            navLookback1InDays: uint8(navLookback1InDays),
            navLookback2InDays: uint8(navLookback2InDays),
            navLookback3InDays: uint8(navLookback3InDays),
            pauseRebalancePeriodInDays: uint16(pauseRebalancePeriodInDays),
            lastPausedTimestamp: 0
        });
        emit AutopoolNavLookbackConfigured(
            autopool, navLookback1InDays, navLookback2InDays, navLookback3InDays, pauseRebalancePeriodInDays
        );
    }
}
