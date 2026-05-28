// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2025 Tokemak Foundation. All rights reserved.

pragma solidity ^0.8.24;

import { ISystemRegistry } from "src/interfaces/ISystemRegistry.sol";
import { IStrategyHook } from "src/interfaces/strategy/IStrategyHook.sol";
import { BaseStrategyHook } from "src/strategy/hooks/BaseStrategyHook.sol";
import { Errors } from "src/utils/Errors.sol";
import { Roles } from "src/libs/Roles.sol";
import { ProcessRebalanceParams } from "src/vault/libs/AutopoolState.sol";

/// @title Verifies minimum time gap between rebalances
contract MinTimeGapHook is BaseStrategyHook {
    /// =====================================================
    /// Public Vars
    /// =====================================================

    /// @notice Mapping of Autopool to its last rebalance timestamp with its minimum time gap
    mapping(address => AutopoolData) public autopoolData;

    /// =====================================================
    /// Structs
    /// =====================================================

    struct AutopoolData {
        uint40 minSecondsGap;
        uint40 idleMinSecondsGap;
        uint40 lastRebalanceTimestamp;
        uint40 idleLastRebalanceTimestamp;
    }

    struct RegistrationData {
        uint40 minSecondsGap;
        uint40 idleMinSecondsGap;
    }

    /// =====================================================
    /// Events
    /// =====================================================

    event AutopoolMinTimeGapConfigured(address autoPool, uint256 minSecondsGap, uint256 idleMinSecondsGap);

    /// =====================================================
    /// Errors
    /// =====================================================

    error RebalanceTimeGapNotMet();

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
    /// @param minSecondsGaps Minimum time gaps
    function configureAutopools(
        address[] memory autopools,
        uint40[] memory minSecondsGaps,
        uint40[] memory idleMinSecondsGaps
    ) external hasRole(Roles.STRATEGY_HOOK_CONFIGURATION) {
        _configureAutopools(autopools, minSecondsGaps, idleMinSecondsGaps);
    }

    /// @notice Ensures enough time has passed between rebalances
    function onRebalanceStart(ProcessRebalanceParams calldata params, address) external view override {
        bool isIdleRebalance = isRebalanceToIdle(params.rebalanceParams);
        address autoPool = msg.sender;
        AutopoolData memory data = autopoolData[autoPool];

        uint40 minSecondsGap = isIdleRebalance ? data.idleMinSecondsGap : data.minSecondsGap;
        if (minSecondsGap == 0) {
            revert NotConfigured(autoPool);
        }

        uint40 lastRebalanceTimestamp = isIdleRebalance ? data.idleLastRebalanceTimestamp : data.lastRebalanceTimestamp;
        // slither-disable-next-line timestamp
        if (block.timestamp - lastRebalanceTimestamp < minSecondsGap) {
            revert RebalanceTimeGapNotMet();
        }
    }

    /// @inheritdoc IStrategyHook
    function onRebalanceOutAssetsReady(ProcessRebalanceParams calldata params, address) external override {
        address autoPool = msg.sender;

        if (isRebalanceToIdle(params.rebalanceParams)) {
            autopoolData[autoPool].idleLastRebalanceTimestamp = uint40(block.timestamp);
        } else {
            autopoolData[autoPool].lastRebalanceTimestamp = uint40(block.timestamp);
        }
    }

    /// @inheritdoc IStrategyHook
    function getFnFlags() external pure override returns (uint8) {
        return 3;
    }

    /// =====================================================
    /// Functions – Internal
    /// =====================================================

    /// @inheritdoc BaseStrategyHook
    function _onRegistered(
        bytes memory data
    ) internal override {
        RegistrationData memory registrationData = abi.decode(data, (RegistrationData));
        _configureAutopool(msg.sender, registrationData.minSecondsGap, registrationData.idleMinSecondsGap);
    }

    /// @inheritdoc BaseStrategyHook
    function _onUnregistered(
        bytes memory
    ) internal override {
        delete autopoolData[msg.sender];
        emit AutopoolMinTimeGapConfigured(msg.sender, 0, 0);
    }

    /// =====================================================
    /// Functions - Private
    /// =====================================================

    function _configureAutopools(
        address[] memory autopools,
        uint40[] memory minSecondsGaps,
        uint40[] memory idleMinSecondsGaps
    ) private {
        Errors.verifyArrayLengths(autopools.length, minSecondsGaps.length, "autopools+minSecondsGaps");
        Errors.verifyArrayLengths(autopools.length, idleMinSecondsGaps.length, "autopools+idleMinSecondsGaps");

        for (uint256 i = 0; i < autopools.length; ++i) {
            address autoPool = autopools[i];
            Errors.verifyNotZero(autoPool, "autoPool");

            _configureAutopool(autoPool, minSecondsGaps[i], idleMinSecondsGaps[i]);
        }
    }

    /// @dev Validate, set configuration, and emit events for an Autopool
    function _configureAutopool(address autopool, uint40 minSecondsGaps, uint40 idleMinSecondsGaps) private {
        if (minSecondsGaps < 1 minutes || minSecondsGaps > 30 days) {
            revert Errors.InvalidParam("minSecondsGap");
        }
        if (idleMinSecondsGaps < 1 minutes || idleMinSecondsGaps > 30 days) {
            revert Errors.InvalidParam("idleMinSecondsGap");
        }
        autopoolData[autopool] = AutopoolData({
            minSecondsGap: minSecondsGaps,
            idleMinSecondsGap: idleMinSecondsGaps,
            lastRebalanceTimestamp: autopoolData[autopool].lastRebalanceTimestamp,
            idleLastRebalanceTimestamp: autopoolData[autopool].idleLastRebalanceTimestamp
        });
        emit AutopoolMinTimeGapConfigured(autopool, minSecondsGaps, idleMinSecondsGaps);
    }
}
