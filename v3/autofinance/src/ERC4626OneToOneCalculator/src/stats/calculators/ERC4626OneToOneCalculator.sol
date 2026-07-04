// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2023 Tokemak Foundation. All rights reserved.
pragma solidity ^0.8.24;

import { LSTCalculatorBase } from "src/stats/calculators/base/LSTCalculatorBase.sol";
import { ISystemRegistry } from "src/interfaces/ISystemRegistry.sol";
import { IERC4626 } from "openzeppelin-contracts/interfaces/IERC4626.sol";

/// @notice Calculator where the base asset of the 4626 token is, for purposes of our calculations, 1:1 to ETH
/// @dev The 4626 and base asset should all be 18 decimal tokens
contract ERC4626OneToOneCalculator is LSTCalculatorBase {
    /// =====================================================
    /// Functions - Construction
    /// =====================================================

    constructor(
        ISystemRegistry _systemRegistry
    ) LSTCalculatorBase(_systemRegistry) { }

    /// =====================================================
    /// Functions - Public
    /// =====================================================

    /// @inheritdoc LSTCalculatorBase
    function calculateEthPerToken() public view override returns (uint256) {
        return IERC4626(lstTokenAddress).convertToAssets(1e18);
    }

    /// @inheritdoc LSTCalculatorBase
    function usePriceAsDiscount() public pure override returns (bool) {
        return false;
    }
}
