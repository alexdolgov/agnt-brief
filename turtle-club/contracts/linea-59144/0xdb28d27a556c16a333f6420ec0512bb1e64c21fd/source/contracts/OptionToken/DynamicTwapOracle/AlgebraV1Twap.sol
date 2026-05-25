// SPDX-License-Identifier: GPL-3.0-only
pragma solidity >=0.7.0 <0.8.0;

import {IAlgebraPool} from "@cryptoalgebra/v1-core/contracts/interfaces/IAlgebraPool.sol";
import {IAlgebraFactory} from "@cryptoalgebra/v1-core/contracts/interfaces/IAlgebraFactory.sol";
import {DataStorageLibrary} from "@cryptoalgebra/v1-periphery/contracts/libraries/DataStorageLibrary.sol";
import {IDynamicTwapOracle} from "./IDynamicTwapOracle.sol";


/// @title AlgebraV1Twap
/// @notice Estimate output amounts based on the time-weighted average price of a specified Algebra pool 
/// using dynamic secondsAgo.
/// @dev Adapted from Retro Finances's UniswapV3Twap contract for AlgebraV1 Pools .
contract AlgebraV1Twap is IDynamicTwapOracle {
    /// -----------------------------------------------------------------------
    /// Immutable parameters
    /// -----------------------------------------------------------------------

    /// @notice Algebra pool address
    address public immutable override pool;

    /// @notice token0 of the Algebra pool
    address public immutable override token0;

    /// @notice token1 of the Algebra pool
    address public immutable override token1;

    /// -----------------------------------------------------------------------
    /// Constructor
    /// -----------------------------------------------------------------------
    constructor(
        address _factory,
        address _token0,
        address _token1
    ) {
        // UniswapV3 takes a uint24 _fee, while Algebra doesn't
        // address _pool = IUniswapV3Factory(_factory).getPool(_token0, _token1, _fee);
        address _pool = IAlgebraFactory(_factory).poolByPair(
            _token0,
            _token1
        );
        require(_pool != address(0), "pool doesn't exist");
        pool = _pool;
        
        // Sort tokens
        (token0, token1) = _token0 < _token1 ? (_token0, _token1) : (_token1, _token0);
    }

    /// @notice Estimate the output amount for a given input amount and token, based on the time-weighted average price.
    /// @param tokenIn The address of the input token.
    /// @param amountIn The amount of the input token to be swapped.
    /// @param secondsAgo The number of seconds to look back for calculating the time-weighted average price.
    /// @return amountOut The estimated output amount.
    function estimateAmountOut(
        address tokenIn,
        uint128 amountIn,
        uint32 secondsAgo
    ) external view override returns (uint amountOut) {
        require(tokenIn == token0 || tokenIn == token1, "invalid token");
        address tokenOut = tokenIn == token0 ? token1 : token0;

        int24 timeWeightedAverageTick = DataStorageLibrary.consult(pool, secondsAgo);
        amountOut = DataStorageLibrary.getQuoteAtTick(
            timeWeightedAverageTick,
            amountIn,
            tokenIn,
            tokenOut
        );
    }
}
