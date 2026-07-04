// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2025 Tokemak Foundation. All rights reserved.

pragma solidity ^0.8.24;

import { ISystemRegistry } from "src/interfaces/ISystemRegistry.sol";
import { IDestinationVault } from "src/interfaces/vault/IDestinationVault.sol";
import { IRootPriceOracle } from "src/oracles/RootPriceOracle.sol";
import { IStrategyHook } from "src/interfaces/strategy/IStrategyHook.sol";
import { BaseStrategyHook } from "src/strategy/hooks/BaseStrategyHook.sol";
import { Errors } from "src/utils/Errors.sol";
import { Roles } from "src/libs/Roles.sol";
import { ProcessRebalanceParams } from "src/vault/libs/AutopoolState.sol";

/// @title Verifies LST Price Gap within tolerance
contract LstPriceHook is BaseStrategyHook {
    /// =====================================================
    /// Public Vars
    /// =====================================================

    /// @notice Mapping of Autopool to its price gap tolerance
    mapping(address => uint256) public autopoolTolerance;

    /// =====================================================
    /// Structs
    /// =====================================================

    struct RegistrationData {
        uint256 tolerance;
    }

    /// =====================================================
    /// Events
    /// =====================================================

    event InLSTPriceGap(address token, uint256 priceSafe, uint256 priceSpot);
    event OutLSTPriceGap(address token, uint256 priceSafe, uint256 priceSpot);
    event AutopoolToleranceConfigured(address autoPool, uint256 tolerance);

    /// =====================================================
    /// Errors
    /// =====================================================

    error PriceLowerThanTolerance();
    error PriceHigherThanTolerance();

    /// =====================================================
    /// Functions - Constructor
    /// =====================================================

    constructor(
        ISystemRegistry _systemRegistry
    ) BaseStrategyHook(_systemRegistry) { }

    /// =====================================================
    /// Functions – External
    /// =====================================================

    /// @notice Configures the hook
    /// @param autopools Target Autopools
    /// @param tolerances Tolerances for the price gap
    /// @dev Public wrapper for the function to control the access
    function configureAutopools(
        address[] memory autopools,
        uint256[] memory tolerances
    ) external hasRole(Roles.STRATEGY_HOOK_CONFIGURATION) {
        _configureAutopools(autopools, tolerances);
    }

    /// @inheritdoc IStrategyHook
    /// @notice Calculates the largest difference between spot & safe price for the underlying LST tokens
    /// @dev This does not support Curve meta pools
    function onRebalanceStart(ProcessRebalanceParams calldata params, address) external override {
        if (isRebalanceToIdle(params.rebalanceParams)) {
            // If the rebalance is in idle, we don't need to check the price gap
            return;
        }

        // solhint-disable-next-line max-line-length
        IRootPriceOracle pricer = systemRegistry.rootPriceOracle();

        IDestinationVault dest;
        address[] memory lstTokens;
        uint256 numLsts;
        address dvPoolAddress;

        uint256 tolerance = autopoolTolerance[msg.sender];
        if (tolerance == 0) {
            revert NotConfigured(msg.sender);
        }

        // Out Destination
        if (params.rebalanceParams.destinationOut != msg.sender) {
            dest = IDestinationVault(params.rebalanceParams.destinationOut);
            lstTokens = dest.underlyingTokens();
            numLsts = lstTokens.length;
            dvPoolAddress = dest.getPool();
            for (uint256 i = 0; i < numLsts; ++i) {
                address token = lstTokens[i];
                uint256 priceSafe = pricer.getPriceInEth(token);
                uint256 priceSpot = pricer.getSpotPriceInEth(token, dvPoolAddress);
                // slither-disable-next-line reentrancy-events
                emit OutLSTPriceGap(token, priceSafe, priceSpot);
                // For out destination, the pool tokens should not be lower than safe price by tolerance
                if ((priceSafe == 0) || (priceSpot == 0)) {
                    revert PriceLowerThanTolerance();
                } else if (priceSafe > priceSpot) {
                    if (((priceSafe * 1.0e18 / priceSpot - 1.0e18) * 10_000) / 1.0e18 > tolerance) {
                        revert PriceLowerThanTolerance();
                    }
                }
            }
        }

        // In Destination
        dest = IDestinationVault(params.rebalanceParams.destinationIn);
        lstTokens = dest.underlyingTokens();
        numLsts = lstTokens.length;
        dvPoolAddress = dest.getPool();
        for (uint256 i = 0; i < numLsts; ++i) {
            address token = lstTokens[i];
            uint256 priceSafe = pricer.getPriceInEth(token);
            uint256 priceSpot = pricer.getSpotPriceInEth(token, dvPoolAddress);
            // slither-disable-next-line reentrancy-events
            emit InLSTPriceGap(token, priceSafe, priceSpot);
            // For in destination, the pool tokens should not be higher than safe price by tolerance
            if ((priceSafe == 0) || (priceSpot == 0)) {
                revert PriceHigherThanTolerance();
            } else if (priceSpot > priceSafe) {
                if (((priceSpot * 1.0e18 / priceSafe - 1.0e18) * 10_000) / 1.0e18 > tolerance) {
                    revert PriceHigherThanTolerance();
                }
            }
        }
    }

    /// @inheritdoc IStrategyHook
    function getFnFlags() external pure override returns (uint8) {
        return 1;
    }

    /// =====================================================
    /// Functions – Internal
    /// =====================================================

    /// @inheritdoc BaseStrategyHook
    function _onRegistered(
        bytes memory data
    ) internal override {
        RegistrationData memory registrationData = abi.decode(data, (RegistrationData));
        _configureAutopool(msg.sender, registrationData.tolerance);
    }

    /// @inheritdoc BaseStrategyHook
    function _onUnregistered(
        bytes memory
    ) internal override {
        autopoolTolerance[msg.sender] = 0;

        emit AutopoolToleranceConfigured(msg.sender, 0);
    }

    /// =====================================================
    /// Functions – Private
    /// =====================================================

    /// @dev Validate, set configuration, and emit events for Autopools
    function _configureAutopools(address[] memory autopools, uint256[] memory tolerances) private {
        Errors.verifyArrayLengths(autopools.length, tolerances.length, "autopools+tolerances");

        for (uint256 i = 0; i < autopools.length; i++) {
            address autopool = autopools[i];
            Errors.verifyNotZero(address(autopool), "autopool");
            _configureAutopool(autopool, tolerances[i]);
        }
    }

    /// @dev Validate, set configuration, and emit events for an Autopool
    function _configureAutopool(address autopool, uint256 tolerance) private {
        Errors.verifyNotZero(tolerance, "tolerance");
        autopoolTolerance[autopool] = tolerance;
        emit AutopoolToleranceConfigured(autopool, tolerance);
    }
}
