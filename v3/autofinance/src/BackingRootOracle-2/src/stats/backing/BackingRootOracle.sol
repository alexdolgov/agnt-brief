// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2023 Tokemak Foundation. All rights reserved.
pragma solidity ^0.8.24;

import { Roles } from "src/libs/Roles.sol";
import { Errors } from "src/utils/Errors.sol";
import { SecurityBase } from "src/security/SecurityBase.sol";
import { ISystemRegistry } from "src/interfaces/ISystemRegistry.sol";
import { SystemComponent } from "src/SystemComponent.sol";
import { IBackingOracle } from "src/interfaces/stats/backing/IBackingOracle.sol";

/// @notice Determines asset backing in terms of the chains native asset
contract BackingRootOracle is SystemComponent, SecurityBase, IBackingOracle {
    /// ================================================
    /// Public Vars
    /// ================================================

    /// @notice Returns the oracle configured for the provided asset
    mapping(address => IBackingOracle) public assetOracles;

    /// ================================================
    /// Events
    /// ================================================

    event TokenRegistered(address token, address oracle);
    event TokenRegistrationReplaced(address token, address oldOracle, address newOracle);
    event TokenRegistrationRemoved(address token);

    /// ================================================
    /// Functions - Construction
    /// ================================================

    constructor(
        ISystemRegistry _systemRegistry,
        address[] memory initialMappingTokens,
        IBackingOracle[] memory initialMappingOracles
    ) SystemComponent(_systemRegistry) SecurityBase(address(_systemRegistry.accessController())) {
        uint256 len = initialMappingTokens.length;
        if (len > 0) {
            Errors.verifyArrayLengths(len, initialMappingOracles.length, "initMapLen");
            for (uint256 i = 0; i < len;) {
                _registerMapping(initialMappingTokens[i], initialMappingOracles[i]);
                unchecked {
                    ++i;
                }
            }
        }
    }

    /// ================================================
    /// Functions - External
    /// ================================================

    /// @notice Returns the backing of the asset in terms of the chains native asset
    /// @dev Does not make state changes but isn't view due to oracle requirements
    /// @param asset Asset to check the backing of
    function getAssetBackingPerShare(
        address asset
    ) external returns (uint256) {
        // Skip the token address(0) check and just rely on the oracle lookup
        // Emit token so we can figure out what was actually 0 later
        IBackingOracle oracle = _checkTokenOracleRegistration(asset);

        return oracle.getAssetBackingPerShare(asset);
    }

    /// @notice Register a new token to oracle mapping
    /// @dev May require additional registration in the oracle itself
    /// @param token address of the token to register
    /// @param oracle address of the oracle to use to lookup backing
    function registerMapping(address token, IBackingOracle oracle) external hasRole(Roles.BACKING_ORACLE_MANAGER) {
        _registerMapping(token, oracle);
    }

    /// @notice Replace an existing token -> oracle mapping
    /// @dev Must exist, matching existing, and new != old value to successfully replace
    /// @param token address of the token to register
    /// @param oldOracle existing oracle address
    /// @param newOracle new oracle address
    function replaceMapping(
        address token,
        IBackingOracle oldOracle,
        IBackingOracle newOracle
    ) external hasRole(Roles.BACKING_ORACLE_MANAGER) {
        Errors.verifyNotZero(token, "token");
        Errors.verifyNotZero(address(oldOracle), "oldOracle");
        Errors.verifyNotZero(address(newOracle), "newOracle");

        // We want to ensure you know what you're replacing so ensure
        // you provide a matching old value
        if (assetOracles[token] != oldOracle) {
            revert Errors.InvalidParam("oldOracle");
        }

        // If the old and new values match we can assume you're not doing
        // what you think you're doing so we just fail
        if (oldOracle == newOracle) {
            revert Errors.AlreadySet("newOracle");
        }

        assetOracles[token] = newOracle;

        emit TokenRegistrationReplaced(token, address(oldOracle), address(newOracle));
    }

    /// @notice Remove a token to oracle mapping
    /// @dev Must exist. Does not remove any additional configuration from the oracle itself
    /// @param token address of the token that is registered
    function removeMapping(
        address token
    ) external hasRole(Roles.BACKING_ORACLE_MANAGER) {
        Errors.verifyNotZero(token, "token");

        // If you're trying to remove something that doesn't exist then
        // some condition you're expecting isn't true. We revert so you can reevaluate
        if (address(assetOracles[token]) == address(0)) {
            revert Errors.NotRegistered();
        }

        delete assetOracles[token];

        emit TokenRegistrationRemoved(token);
    }

    /// ================================================
    /// Functions - Private
    /// ================================================

    /// @notice Return backing oracle for return reverting if does not exist
    function _checkTokenOracleRegistration(
        address token
    ) private view returns (IBackingOracle oracle) {
        oracle = assetOracles[token];
        if (address(oracle) == address(0)) {
            revert Errors.NotRegistered();
        }
    }

    /// @notice Register a new token to oracle mapping
    /// @dev May require additional registration in the oracle itself
    /// @param token address of the token to register
    /// @param oracle address of the oracle to use to lookup backing
    function _registerMapping(address token, IBackingOracle oracle) private {
        Errors.verifyNotZero(token, "token");
        Errors.verifyNotZero(address(oracle), "oracle");

        // We want the operation of replacing a mapping to be an explicit
        // call so we don't accidentally overwrite something
        if (address(assetOracles[token]) != address(0)) {
            revert Errors.AlreadySet("token");
        }

        assetOracles[token] = oracle;

        emit TokenRegistered(token, address(oracle));
    }
}
