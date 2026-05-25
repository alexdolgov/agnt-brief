// SPDX-License-Identifier: GPL-3.0-only
pragma solidity >=0.7.0 <0.8.0;

import {IAlgebraPool} from "@cryptoalgebra/v1-core/contracts/interfaces/IAlgebraPool.sol";
import {IAlgebraFactory} from "@cryptoalgebra/v1-core/contracts/interfaces/IAlgebraFactory.sol";
import {DataStorageLibrary} from "@cryptoalgebra/v1-periphery/contracts/libraries/DataStorageLibrary.sol";
import {IDynamicTwapOracle} from "./IDynamicTwapOracle.sol";

/// @title AlgebraV2Twap
/// @notice Estimate output amounts based on the time-weighted average price of a specified Algebra pool 
/// using dynamic secondsAgo.
contract AlgebraV2Twap {
    /// -----------------------------------------------------------------------
    /// Immutable parameters
    /// -----------------------------------------------------------------------

    /// @notice Algebra factory
    IAlgebraFactory public immutable factory;

    /// -----------------------------------------------------------------------
    /// Constructor
    /// -----------------------------------------------------------------------
    constructor(
        IAlgebraFactory _factory
    ) {
        factory = _factory;
    }

    /// @notice Estimate the output amount for a given input amount and token, based on the time-weighted average price.
    /// @param tokenIn The address of the input token.
    /// @param amountIn The amount of the input token to be swapped.
    /// @param secondsAgo The number of seconds to look back for calculating the time-weighted average price.
    /// @return amountOut The estimated output amount.
    function estimateAmountOut(
        address tokenIn,
        address tokenOut,
        uint128 amountIn,
        uint32 secondsAgo
    ) external view returns (uint amountOut) {
        address pool = IAlgebraFactory(factory).poolByPair(
            tokenIn,
            tokenOut
        );
        require(pool != address(0), "pool doesn't exist");

        int24 timeWeightedAverageTick = DataStorageLibrary.consult(pool, secondsAgo);
        amountOut = DataStorageLibrary.getQuoteAtTick(
            timeWeightedAverageTick,
            amountIn,
            tokenIn,
            tokenOut
        );
    }
}
