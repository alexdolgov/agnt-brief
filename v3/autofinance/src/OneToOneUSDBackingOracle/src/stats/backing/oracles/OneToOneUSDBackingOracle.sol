// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2023 Tokemak Foundation. All rights reserved.
pragma solidity ^0.8.24;

import { Errors } from "src/utils/Errors.sol";
import { ISystemRegistry } from "src/interfaces/ISystemRegistry.sol";
import { SystemComponent } from "src/SystemComponent.sol";
import { IBackingOracle } from "src/interfaces/stats/backing/IBackingOracle.sol";

/// @notice Backing Oracle for tokens who, for our consideration, are backed 1:1 USD that we convert to ETH/S/etc
contract OneToOneUSDBackingOracle is SystemComponent, IBackingOracle {
    /// =====================================================
    /// Constant Vars
    /// =====================================================

    address private constant ETH_IN_USD = address(bytes20("ETH_IN_USD"));

    /// =====================================================
    /// Immutable Vars
    /// =====================================================

    /// @notice Represents 1 USD with the decimal precision of 2x the chains base asset. Likely 1e36
    uint256 private immutable oneUSD;

    /// ================================================
    /// Functions - Construction
    /// ================================================

    constructor(ISystemRegistry _systemRegistry, uint256 _oneUSD) SystemComponent(_systemRegistry) {
        Errors.verifyNotZero(_oneUSD, "oneUSD");

        // Adding the padding we'll need for the later calculation
        oneUSD = _oneUSD ** 2;
    }

    /// ================================================
    /// Functions - External
    /// ================================================

    /// @inheritdoc IBackingOracle
    /// @dev Does not make state changes but isn't view due to oracle requirements
    function getAssetBackingPerShare(
        address
    ) external returns (uint256) {
        // Gets the value of chains base asset in USD.
        // Will be the USD value with the decimal precision of the base asset.
        // So if we're on Ethereum Mainnet and ETH is worth $1950, :(
        //   this value will be 1950e18
        uint256 ethInUsdValue = systemRegistry.rootPriceOracle().getPriceInEth(ETH_IN_USD);

        return oneUSD / ethInUsdValue;
    }
}
