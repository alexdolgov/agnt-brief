// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2023 Tokemak Foundation. All rights reserved.
pragma solidity ^0.8.24;

import { Errors } from "src/utils/Errors.sol";
import { IBackingOracle } from "src/interfaces/stats/backing/IBackingOracle.sol";

/// @notice Backing Oracle for tokens who, for our considerations, are backed 1:1-ETH/S/other L1 chain token
contract OneToOneBaseAssetBackingOracle is IBackingOracle {
    /// =====================================================
    /// Immutable Vars
    /// =====================================================

    /// @notice Hard-coded backing value. One unit of the chains base asset.
    uint256 private immutable backingValue;

    /// ================================================
    /// Functions - Construction
    /// ================================================

    constructor(
        uint256 _backingValue
    ) {
        Errors.verifyNotZero(_backingValue, "backingValue");
        backingValue = _backingValue;
    }

    /// ================================================
    /// Functions - External
    /// ================================================

    /// @inheritdoc IBackingOracle
    /// @dev Does not make state changes but isn't view due to oracle requirements
    function getAssetBackingPerShare(
        address
    ) external view returns (uint256) {
        return backingValue;
    }
}
