// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.24;

import "../interfaces/IStrategySlippageModel.sol";

/// @notice Calculates the slippage rate based on the time
contract ConstantStrategySlippageModel is IStrategySlippageModel {
    UD60x18 public immutable BASE_SLIPPAGE_TOLERANCE;

    constructor(UD60x18 _baseSlippageTolerance) {
        BASE_SLIPPAGE_TOLERANCE = _baseSlippageTolerance;
    }

    function calculateSlippage(uint256) external view override returns (UD60x18 slippageTolerance) {
        slippageTolerance = BASE_SLIPPAGE_TOLERANCE;
    }
}
