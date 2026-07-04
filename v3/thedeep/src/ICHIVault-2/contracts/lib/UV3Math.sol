// SPDX-License-Identifier: BUSL-1.1

pragma solidity 0.7.6;

import { TickMath } from "@uniswap/v3-core/contracts/libraries/TickMath.sol";
import { IUniswapV3Pool } from "@uniswap/v3-core/contracts/interfaces/IUniswapV3Pool.sol";

import { LiquidityAmounts } from "@uniswap/v3-periphery/contracts/libraries/LiquidityAmounts.sol";
import { OracleLibrary } from "@uniswap/v3-periphery/contracts/libraries/OracleLibrary.sol";

import { ERC20 } from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import { Strings } from "@openzeppelin/contracts/utils/Strings.sol";

import { IICHIVaultFactory } from "../../interfaces/IICHIVaultFactory.sol";

library UV3Math {
    /// @dev The minimum value that can be returned from #getSqrtRatioAtTick. Equivalent to getSqrtRatioAtTick(MIN_TICK)
    uint160 internal constant MIN_SQRT_RATIO = 4295128739;
    /// @dev The maximum value that can be returned from #getSqrtRatioAtTick. Equivalent to getSqrtRatioAtTick(MAX_TICK)
    uint160 internal constant MAX_SQRT_RATIO = 1461446703485210103287273052203988822378723970342;

    /*******************
     * Tick Math
     *******************/

    function getSqrtRatioAtTick(int24 currentTick) public pure returns (uint160 sqrtPriceX96) {
        sqrtPriceX96 = TickMath.getSqrtRatioAtTick(currentTick);
    }

    /*******************
     * LiquidityAmounts
     *******************/

    function getAmountsForLiquidity(
        uint160 sqrtRatioX96,
        uint160 sqrtRatioAX96,
        uint160 sqrtRatioBX96,
        uint128 liquidity
    ) public pure returns (uint256 amount0, uint256 amount1) {
        (amount0, amount1) = LiquidityAmounts.getAmountsForLiquidity(
            sqrtRatioX96,
            sqrtRatioAX96,
            sqrtRatioBX96,
            liquidity
        );
    }

    function getLiquidityForAmounts(
        uint160 sqrtRatioX96,
        uint160 sqrtRatioAX96,
        uint160 sqrtRatioBX96,
        uint256 amount0,
        uint256 amount1
    ) public pure returns (uint128 liquidity) {
        liquidity = LiquidityAmounts.getLiquidityForAmounts(
            sqrtRatioX96,
            sqrtRatioAX96,
            sqrtRatioBX96,
            amount0,
            amount1
        );
    }

    /*******************
     * OracleLibrary
     *******************/

    function consult(address _pool, uint32 _twapPeriod) public view returns (int24 timeWeightedAverageTick) {
        timeWeightedAverageTick = OracleLibrary.consult(_pool, _twapPeriod);
    }

    function getQuoteAtTick(
        int24 tick,
        uint128 baseAmount,
        address baseToken,
        address quoteToken
    ) public pure returns (uint256 quoteAmount) {
        quoteAmount = OracleLibrary.getQuoteAtTick(tick, baseAmount, baseToken, quoteToken);
    }

    /*******************
     * SafeUnit128
     *******************/

    /// @notice Cast a uint256 to a uint128, revert on overflow
    /// @param y The uint256 to be downcasted
    /// @return z The downcasted integer, now type uint128
    function toUint128(uint256 y) public pure returns (uint128 z) {
        require((z = uint128(y)) == y, "SafeUint128: overflow");
    }

    /******************************
     * ICHIVault specific functions
     ******************************/

    /**
     @dev Computes a unique vault's symbol for vaults created through Ramses factory.
     @param pool address of the underlying pool
     @param allowToken0 address of the underlying pool
     */
    function computeIVsymbol(address pool, bool allowToken0) public view returns (string memory) {
        IUniswapV3Pool uniswapPool = IUniswapV3Pool(pool);
        string memory token0Symbol = ERC20(uniswapPool.token0()).symbol();
        string memory token1Symbol = ERC20(uniswapPool.token1()).symbol();
        // Format: IV-[ammName]-deposit-quote
        return
            string(
                abi.encodePacked(
                    "IV-",
                    IICHIVaultFactory(msg.sender).ammName(),
                    "-",
                    allowToken0 ? token0Symbol : token1Symbol,
                    "-",
                    allowToken0 ? token1Symbol : token0Symbol,
                    "-",
                    Strings.toString(uniswapPool.fee())
                )
            );
    }
}
