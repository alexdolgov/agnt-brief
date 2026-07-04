// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2025 Tokemak Foundation. All rights reserved.

pragma solidity ^0.8.24;

import { SystemComponent } from "src/SystemComponent.sol";
import { SecurityBase } from "src/security/SecurityBase.sol";
import { ISystemRegistry } from "src/interfaces/ISystemRegistry.sol";
import { IStrategy } from "src/interfaces/strategy/IStrategy.sol";
import { IStrategyHook } from "src/interfaces/strategy/IStrategyHook.sol";
import { Errors } from "src/utils/Errors.sol";
import { AutopoolDebt } from "src/vault/libs/AutopoolDebt.sol";
import { ProcessRebalanceParams } from "src/vault/libs/AutopoolState.sol";

abstract contract BaseStrategyHook is IStrategyHook, SystemComponent, SecurityBase {
    /// =====================================================
    /// Errors
    /// =====================================================

    error NotConfigured(address autopool);

    /// =====================================================
    /// Functions - Constructor
    /// =====================================================

    constructor(
        ISystemRegistry _systemRegistry
    ) SystemComponent(_systemRegistry) SecurityBase(address(_systemRegistry.accessController())) { }

    /// =====================================================
    /// Functions - External
    /// =====================================================

    /// @inheritdoc IStrategyHook
    function getFnFlags() external view virtual returns (uint8);

    /// @inheritdoc IStrategyHook
    function onRegistered(
        bytes calldata registrationData
    ) external {
        _verifyCallerIsAutopool();
        _onRegistered(registrationData);
    }

    /// @inheritdoc IStrategyHook
    function onUnregistered(
        bytes calldata cleanupData
    ) external {
        _verifyCallerIsAutopool();
        _onUnregistered(cleanupData);
    }

    /// @inheritdoc IStrategyHook
    function onRebalanceStart(ProcessRebalanceParams calldata, address) external virtual {
        revert Errors.NotImplemented();
    }

    /// @inheritdoc IStrategyHook
    function onRebalanceOutAssetsReady(ProcessRebalanceParams calldata, address) external virtual {
        revert Errors.NotImplemented();
    }

    /// @inheritdoc IStrategyHook
    function onRebalanceInAssetsReturned(ProcessRebalanceParams calldata, address) external virtual {
        revert Errors.NotImplemented();
    }

    /// @inheritdoc IStrategyHook
    function onRebalanceDestinationVaultUpdated(ProcessRebalanceParams calldata, address) external virtual {
        revert Errors.NotImplemented();
    }

    /// @inheritdoc IStrategyHook
    function onRebalanceFeeProfitHandlingComplete(ProcessRebalanceParams calldata, address) external virtual {
        revert Errors.NotImplemented();
    }

    /// @inheritdoc IStrategyHook
    function onRebalanceComplete(ProcessRebalanceParams calldata, address) external virtual {
        revert Errors.NotImplemented();
    }

    /// @inheritdoc IStrategyHook
    function onDestinationDebtReport(address, AutopoolDebt.IdleDebtUpdates memory) external virtual {
        revert Errors.NotImplemented();
    }

    /// @inheritdoc IStrategyHook
    function onNavUpdate(
        AutopoolDebt.AssetChanges memory
    ) external virtual {
        revert Errors.NotImplemented();
    }

    /// =====================================================
    /// Functions - Public
    /// =====================================================

    function isRebalanceToIdle(
        IStrategy.RebalanceParams calldata params
    ) public view virtual returns (bool) {
        return params.destinationIn == msg.sender;
    }

    /// =====================================================
    /// Functions - Internal
    /// =====================================================

    /// @dev Revert if the caller is not an Autopool
    function _verifyCallerIsAutopool() internal view {
        if (!systemRegistry.autoPoolRegistry().isVault(msg.sender)) {
            revert Errors.AccessDenied();
        }
    }

    // slither-disable-start dead-code

    /// @notice Fires when the hook has been registered with an Autopool
    /// @param registrationData Any data needed during registration such as initial configuration
    function _onRegistered(
        bytes memory registrationData
    ) internal virtual {
        // Intentionally Empty
    }

    /// @notice Fires when the hook as been unregistered with an Autopool
    /// @param cleanupData Any information needed to run cleanup operations
    function _onUnregistered(
        bytes memory cleanupData
    ) internal virtual {
        // Intentionally empty
    }

    // slither-disable-end dead-code
}
