// SPDX-License-Identifier: UNLICENSED

// Copyright (c) 2024 JonesDAO - All rights reserved
// Jones DAO: https://www.jonesdao.io/

// Check https://docs.jonesdao.io/jones-dao/other/bounty for details on our bounty program.

pragma solidity ^0.7.6;
pragma abicoder v2;

import {TickMath} from "src/libraries/velo/TickMath.sol";
import {FullMath} from "src/libraries/velo/FullMath.sol";
import {Clones} from "src/libraries/velo/Clones.sol";
import {ICLPool} from "src/interfaces/pool/velo/ICLPool.sol";
import {ICLFactory} from "src/interfaces/pool/velo/ICLFactory.sol";

import {IManager} from "src/interfaces/manager/IManager.sol";

import {IERC20Metadata} from "src/interfaces/IERC20Metadata.sol";

library VeloLibrary {
    // The identifying key of the pool
    struct PoolKey {
        address token0;
        address token1;
        int24 tickSpacing;
    }

    address constant UNISWAP_V3_IMPLEMENTATION = 0xc28aD28853A547556780BEBF7847628501A3bCbb;
    address constant VELO_FACTORY = 0xCc0bDDB707055e04e497aB22a59c2aF4391cd12F;

    /**
     * @notice Get TWAP of token0 quoted in token1.
     * @param _secondsAgo Length of TWAP.
     */
    function getPrice(address _pool, int24 _secondsAgo) public view returns (uint256) {
        ICLPool pool = ICLPool(_pool);
        // Avoid revert with arg 0 and get spot price.
        _secondsAgo = _secondsAgo == 0 ? int24(1) : _secondsAgo;

        uint32[] memory secondsAgo = new uint32[](2);

        secondsAgo[0] = uint32(uint24(_secondsAgo));
        secondsAgo[1] = 0;

        // Get cumulative ticks
        (int56[] memory tickCumulative,) = pool.observe(secondsAgo);

        // Now get the cumulative tick just for the specified timeframe (_secondsAgo).
        int56 deltaCumulativeTicks = tickCumulative[1] - tickCumulative[0];

        // Get the arithmetic mean of the delta between the two cumulative ticks.
        int24 arithmeticMeanTick = int24(deltaCumulativeTicks / _secondsAgo);

        // Rounding to negative infinity.
        if (deltaCumulativeTicks < 0 && (deltaCumulativeTicks % _secondsAgo != 0)) {
            arithmeticMeanTick = arithmeticMeanTick - 1;
        }

        // One unit of token0, so we if for example token has 8 decimals, one unit will be 10 ** 8 = 100000000.
        uint256 oneUnit = 10 ** IERC20Metadata(pool.token0()).decimals();

        return getQuoteAtTick(arithmeticMeanTick, uint128(oneUnit), pool.token0(), pool.token1());
    }

    function getSpot(address _pool) public view returns (uint256) {
        return getPrice(_pool, 0);
    }

    function getPool(address factory, address tokenA, address tokenB, int24 tickSpacing)
        public
        view
        returns (ICLPool)
    {
        return ICLPool(computeAddress(factory, getPoolKey(tokenA, tokenB, tickSpacing)));
    }

    /**
     * @notice Returns PoolKey: the ordered tokens with the matched tickSpacing
     * @param tokenA The first token of a pool, unsorted
     * @param tokenB The second token of a pool, unsorted
     * @param tickSpacing space between ticks
     * @return Poolkey The pool details with ordered token0 and token1 assignments
     */
    function getPoolKey(address tokenA, address tokenB, int24 tickSpacing) private pure returns (PoolKey memory) {
        if (tokenA > tokenB) (tokenA, tokenB) = (tokenB, tokenA);
        return PoolKey({token0: tokenA, token1: tokenB, tickSpacing: tickSpacing});
    }

    /**
     * @notice Deterministically computes the pool address given the factory and PoolKey
     * @param factory factory The CL factory contract address
     * @param key The PoolKey
     * @return pool The contract address of the V3 pool
     */
    function computeAddress(address factory, PoolKey memory key) private view returns (address pool) {
        require(key.token0 < key.token1);
        pool = Clones.predictDeterministicAddress({
            implementation: ICLFactory(factory).poolImplementation(),
            salt: keccak256(abi.encode(key.token0, key.token1, key.tickSpacing)),
            deployer: factory
        });
    }

    /**
     * @notice Given a tick and a token amount, calculates the amount of token received in exchange
     * @param tick Tick value used to calculate the quote
     * @param baseAmount Amount of token to be converted
     * @param baseToken Address of an ERC20 token contract used as the baseAmount denomination
     * @param quoteToken Address of an ERC20 token contract used as the quoteAmount denomination
     * @return quoteAmount Amount of quoteToken received for baseAmount of baseToken
     *
     */
    function getQuoteAtTick(int24 tick, uint128 baseAmount, address baseToken, address quoteToken)
        private
        pure
        returns (uint256 quoteAmount)
    {
        uint160 sqrtRatioX96 = TickMath.getSqrtRatioAtTick(tick);

        // Calculate quoteAmount with better precision if it doesn't overflow when multiplied by itself
        if (sqrtRatioX96 <= type(uint128).max) {
            uint256 ratioX192 = uint256(sqrtRatioX96) * sqrtRatioX96;
            quoteAmount = baseToken < quoteToken
                ? FullMath.mulDiv(ratioX192, baseAmount, 1 << 192)
                : FullMath.mulDiv(1 << 192, baseAmount, ratioX192);
        } else {
            uint256 ratioX128 = FullMath.mulDiv(sqrtRatioX96, sqrtRatioX96, 1 << 64);
            quoteAmount = baseToken < quoteToken
                ? FullMath.mulDiv(ratioX128, baseAmount, 1 << 128)
                : FullMath.mulDiv(1 << 128, baseAmount, ratioX128);
        }
    }
}
