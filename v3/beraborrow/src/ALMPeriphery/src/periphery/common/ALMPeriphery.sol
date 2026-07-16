// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.26;

import "@uniswap/v3-core/contracts/libraries/FullMath.sol";
import "@uniswap/v3-core/contracts/libraries/TickMath.sol";
import "@uniswap/v3-periphery/contracts/libraries/PositionKey.sol";
import "@uniswap/v3-periphery/contracts/libraries/LiquidityAmounts.sol";
import {IUniswapV3Pool} from "@uniswap/v3-core/contracts/interfaces/IUniswapV3Pool.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {SafeCast} from "@openzeppelin/contracts/utils/math/SafeCast.sol";
import {IPriceFeed} from "src/interfaces/core/oracles/IPriceFeed.sol";
import {IAsset} from "src/interfaces/utils/tokens/IAsset.sol";
import {PropMath} from "src/libraries/PropMath.sol";
import "src/interfaces/core/alm/IEverlongALM.sol";

struct PositionAmounts {
    uint256 amount0;
    uint256 amount1;
    uint256 fees0;
    uint256 fees1;
    uint256 total0;
    uint256 total1;
}

/**
 * @title Everlong ALM Periphery
 * @author Everlong Team
 * @notice Getters for Everlong ALM positions
 * @dev Modified from Alpha Pro Vault, from Charm Finance
 */
contract ALMPeriphery {
    using TickMath for int24;
    using SafeCast for uint256;

    uint256 constant WAD = 1e18;
    uint256 constant RAD = 1e27;
    uint24 public constant HUNDRED_PERCENT = 1e6;

    function getVaultPositionsRatio(
        address vaultAddress
    ) external view returns (uint256 ratioRad) {
        (uint256 totalAmount0, uint256 totalAmount1) = getVaultPositions(IEverlongALM(vaultAddress));

        ratioRad = totalAmount0 * RAD / (totalAmount1 == 0 ? 1 : totalAmount1);
    }

    function getVaultPositions(IEverlongALM vault) public view returns (uint256 reserves0, uint256 reserves1) {
        IUniswapV3Pool pool = IUniswapV3Pool(vault.pool());
        (uint160 sqrtRatioX96,,,,,,) = pool.slot0();
        return _getVaultPositionsAtSqrtRatio(vault, sqrtRatioX96);
    }

    /// @notice Get vault reserves calculated at oracle price instead of pool.slot0
    /// @dev This is manipulation-resistant:
    ///      1. Uses oracle-derived sqrtRatio for LiquidityAmounts calculation
    ///      2. Always includes idle balances (getBalance0/1)
    /// @param vault The Everlong ALM vault
    /// @param priceFeed The price feed to get oracle prices from
    /// @return reserves0 The amount of token0 at oracle price
    /// @return reserves1 The amount of token1 at oracle price
    function getVaultPositionsAtOraclePrice(
        IEverlongALM vault,
        IPriceFeed priceFeed
    ) public view returns (uint256 reserves0, uint256 reserves1) {
        uint160 oracleSqrtRatioX96 = _getOracleSqrtRatioX96(vault, priceFeed);
        return _getVaultPositionsAtSqrtRatio(vault, oracleSqrtRatioX96);
    }

    /// @notice Internal helper that calculates vault reserves at a given sqrtRatioX96
    /// @param vault The Everlong ALM vault
    /// @param sqrtRatioX96 The sqrt price ratio to use for position value calculation
    /// @return reserves0 The amount of token0
    /// @return reserves1 The amount of token1
    function _getVaultPositionsAtSqrtRatio(
        IEverlongALM vault,
        uint160 sqrtRatioX96
    ) internal view returns (uint256 reserves0, uint256 reserves1) {
        uint256 fees0;
        uint256 fees1;
        int24[2][3] memory positions = vault.getPositions();
        IUniswapV3Pool pool = IUniswapV3Pool(vault.pool());
        (, int24 tick,,,,,) = pool.slot0();
        
        for (uint256 i; i < 3; i++) {
            (uint256 reserve0, uint256 reserve1, uint256 fee0, uint256 fee1) = 
                _getUnderlyingBalancesAtPrice(vault, pool, sqrtRatioX96, tick, positions[i][0], positions[i][1]);
            reserves0 += reserve0;
            reserves1 += reserve1;
            fees0 += fee0;
            fees1 += fee1;
        }

        (fees0, fees1) = _subtractProtocolFee(vault, fees0, fees1);

        // Add idle balances and fees
        reserves0 += fees0 + vault.getBalance0();
        reserves1 += fees1 + vault.getBalance1();
    }

    /// @notice Calculate oracle-derived sqrtRatioX96 from token prices
    /// @dev Mirrors ALMFeed's price calculation logic
    function _getOracleSqrtRatioX96(
        IEverlongALM vault,
        IPriceFeed priceFeed
    ) internal view returns (uint160) {
        address token0 = address(vault.token0());
        address token1 = address(vault.token1());
        
        uint256 priceToken0 = priceFeed.fetchPrice(token0);
        uint256 priceToken1 = priceFeed.fetchPrice(token1);
        
        uint8 decimals0 = IAsset(token0).decimals();
        uint8 decimals1 = IAsset(token1).decimals();
        
        uint256 decimalMultiplier;
        uint256 decimalDivider;
        uint256 decimalDifference = PropMath._getAbsoluteDifference(decimals0, decimals1);
        
        if (decimals0 >= decimals1) {
            decimalMultiplier = 1;
            decimalDivider = 10 ** decimalDifference;
        } else {
            decimalMultiplier = 10 ** decimalDifference;
            decimalDivider = 1;
        }

        uint256 priceRatio = (priceToken0 * decimalMultiplier * WAD) / (priceToken1 * decimalDivider);
        
        return ((Math.sqrt(priceRatio) * (2 ** 96)) / 1e9).toUint160();
    }

    struct Vars {
        uint128 L;
        uint128 owed0;
        uint128 owed1;
        uint256 fg0;
        uint256 fg1;
        uint160 sqrtLower;
        uint160 sqrtUpper;
    }

    function _getUnderlyingBalancesAtPrice(
        IEverlongALM vault,
        IUniswapV3Pool pool,
        uint160 sqrtRatioX96,
        int24 tick,
        int24 lowerTick,
        int24 upperTick
    )
        internal
        view
        returns (uint256 amount0Current, uint256 amount1Current, uint256 fee0, uint256 fee1)
    {
        Vars memory v;

        (v.L, v.fg0, v.fg1, v.owed0, v.owed1) = _position(vault, pool, lowerTick, upperTick);
        if (v.L == 0) return (0, 0, 0, 0);

        // precompute to avoid nested calls that bloat the stack
        v.sqrtLower = TickMath.getSqrtRatioAtTick(lowerTick);
        v.sqrtUpper = TickMath.getSqrtRatioAtTick(upperTick);

        (amount0Current, amount1Current) =
            LiquidityAmounts.getAmountsForLiquidity(sqrtRatioX96, v.sqrtLower, v.sqrtUpper, v.L);

        // fees
        fee0 = _computeFeesEarned(pool, true,  v.fg0, tick, lowerTick, upperTick, v.L) + uint256(v.owed0);
        fee1 = _computeFeesEarned(pool, false, v.fg1, tick, lowerTick, upperTick, v.L) + uint256(v.owed1);
    }

    function _computeFeesEarned(IUniswapV3Pool pool, bool isZero, uint256 feeGrowthInsideLast, int24 tick, int24 lowerTick, int24 upperTick, uint128 liquidity) private view returns (uint256 fee) {
        uint256 feeGrowthOutsideLower;
        uint256 feeGrowthOutsideUpper;
        uint256 feeGrowthGlobal;
        if (isZero) {
            feeGrowthGlobal = pool.feeGrowthGlobal0X128();
            (,, feeGrowthOutsideLower,,,,,) = pool.ticks(lowerTick);
            (,, feeGrowthOutsideUpper,,,,,) = pool.ticks(upperTick);
        } else {
            feeGrowthGlobal = pool.feeGrowthGlobal1X128();
            (,,, feeGrowthOutsideLower,,,,) = pool.ticks(lowerTick);
            (,,, feeGrowthOutsideUpper,,,,) = pool.ticks(upperTick);
        }

        unchecked {
            // calculate fee growth below
            uint256 feeGrowthBelow;
            if (tick >= lowerTick) {
                feeGrowthBelow = feeGrowthOutsideLower;
            } else {
                feeGrowthBelow = feeGrowthGlobal - feeGrowthOutsideLower;
            }

            // calculate fee growth above
            uint256 feeGrowthAbove;
            if (tick < upperTick) {
                feeGrowthAbove = feeGrowthOutsideUpper;
            } else {
                feeGrowthAbove = feeGrowthGlobal - feeGrowthOutsideUpper;
            }

            uint256 feeGrowthInside = feeGrowthGlobal - feeGrowthBelow - feeGrowthAbove;
            fee = FullMath.mulDiv(liquidity, feeGrowthInside - feeGrowthInsideLast, 0x100000000000000000000000000000000);
        }
    }

    function _subtractProtocolFee(IEverlongALM vault, uint256 _fee0, uint256 _fee1) internal view returns (uint256 fee0, uint256 fee1) {
        uint24 protocolFee = vault.protocolFee();

        fee0 = _fee0 - _fee0 * protocolFee / HUNDRED_PERCENT;
        fee1 = _fee1 - _fee1 * protocolFee / HUNDRED_PERCENT;
    }

    function _position(IEverlongALM vault, IUniswapV3Pool pool, int24 tickLower, int24 tickUpper)
        internal
        view
        returns (uint128, uint256, uint256, uint128, uint128)
    {
        bytes32 positionKey = PositionKey.compute(address(vault), tickLower, tickUpper);
        return pool.positions(positionKey);
    }
}