// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.26;

import "lib/uniswap/FullMath.sol";
import "lib/uniswap/PositionKey.sol";
import "lib/uniswap/LiquidityAmounts.sol";
import "lib/uniswap/TickMath.sol";
import "src/interfaces/utils/integrations/IAlphaProVault.sol";
import {IKodiakPool} from "src/interfaces/utils/integrations/IKodiakPool.sol";

struct PositionAmounts {
    uint256 amount0;
    uint256 amount1;
    uint256 fees0;
    uint256 fees1;
    uint256 total0;
    uint256 total1;
}

contract AlphaProPeriphery {
    using TickMath for int24;

    uint256 constant WAD = 1e18;
    uint24 public constant HUNDRED_PERCENT = 1e6;

    function getVaultPositionsRatio(
        address vaultAddress
    ) external view returns (uint256 ratioWad) {
        (uint256 totalAmount0, uint256 totalAmount1) = getVaultPositions(IAlphaProVault(vaultAddress));

        ratioWad = totalAmount0 * WAD / (totalAmount1 == 0 ? 1 : totalAmount1);
    }

    function getVaultPositions(IAlphaProVault vault) internal view returns (uint256 reserves0, uint256 reserves1) {
        uint256 fees0;
        uint256 fees1;
        int24[2][3] memory positions = vault.getPositions();
        IKodiakPool pool = IKodiakPool(vault.pool());
        (uint160 priceSqrtRatioX96, int24 tick,,,,,) = pool.slot0();
        for (uint256 i; i < 3; i++) {
            (uint256 reserve0, uint256 reserve1, uint256 fee0, uint256 fee1) = _getUnderlyingBalancesAtPrice(vault, pool, priceSqrtRatioX96, tick, positions[i][0], positions[i][1]);
            reserves0 += reserve0;
            reserves1 += reserve1;
            fees0 += fee0;
            fees1 += fee1;
        }

        (fees0, fees1) = _subtractManagerAndProtocolFee(vault, fees0, fees1);

        // add any leftover in contract to current holdings, useful if `emergencyBurn` is used
        reserves0 += fees0 + vault.getBalance0();
        reserves1 += fees1 + vault.getBalance1();
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
        IAlphaProVault vault,
        IKodiakPool pool,
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

    function _computeFeesEarned(IKodiakPool pool, bool isZero, uint256 feeGrowthInsideLast, int24 tick, int24 lowerTick, int24 upperTick, uint128 liquidity) private view returns (uint256 fee) {
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

    function _subtractManagerAndProtocolFee(IAlphaProVault vault, uint256 _fee0, uint256 _fee1) internal view returns (uint256 fee0, uint256 fee1) {
        uint24 managerFee = vault.managerFee();
        uint24 protocolFee = vault.protocolFee();

        uint24 _totalFee = managerFee + protocolFee;
        fee0 = _fee0 - _fee0 * _totalFee / HUNDRED_PERCENT;
        fee1 = _fee1 - _fee1 * _totalFee / HUNDRED_PERCENT;
    }

    function _position(IAlphaProVault vault, IKodiakPool pool, int24 tickLower, int24 tickUpper)
        internal
        view
        returns (uint128, uint256, uint256, uint128, uint128)
    {
        bytes32 positionKey = PositionKey.compute(address(vault), tickLower, tickUpper);
        return pool.positions(positionKey);
    }
}