// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.13;

import {
    IArrakisV2
} from "@arrakisfi/v2-core/contracts/interfaces/IArrakisV2.sol";
import {
    Range,
    Rebalance,
    PositionLiquidity
} from "@arrakisfi/v2-core/contracts/structs/SArrakisV2.sol";
import {
    IUniswapV3Pool
} from "@uniswap/v3-core/contracts/interfaces/IUniswapV3Pool.sol";
import {TickMath} from "@arrakisfi/v3-lib-0.8/contracts/TickMath.sol";
import {
    FullMath,
    LiquidityAmounts
} from "@arrakisfi/v3-lib-0.8/contracts/LiquidityAmounts.sol";

contract RangeOrderResolver {
    // solhint-disable-next-line function-max-lines
    function checker(
        IArrakisV2 vault,
        bool onPriceIncrease,
        uint16 toleranceBPS
    ) external view returns (bool canExec, bytes memory execPayload) {
        IUniswapV3Pool pool;
        {
            // get the underlying uniswap pool (for simplicity, enforce only one fee tier)
            address[] memory pools = vault.getPools();
            if (pools.length != 1) {
                return (false, bytes("single fee tier vaults only"));
            }

            // get current price and tick from uniswap
            pool = IUniswapV3Pool(pools[0]);
        }

        PositionLiquidity[] memory burns;
        uint256 burnTotal;
        {
            // get the LP positions
            Range[] memory ranges = vault.getRanges();
            if (ranges.length == 0) {
                // if there are no LP positions, it's over
                return (false, bytes("completed"));
            }

            (burns, burnTotal) = _getBurns(
                ranges,
                pool,
                address(vault),
                onPriceIncrease
            );
        }

        if (burns.length == 0) {
            // nothing to burn
            return (false, bytes("nothing to burn"));
        }

        // prepare the rebalance payload
        Rebalance memory rebalance;

        // fill in minBurn param (makes sure we revert if price moves back before execution)
        uint256 tolerance = FullMath.mulDiv(burnTotal, toleranceBPS, 10000);
        if (onPriceIncrease) {
            rebalance.minBurn1 = burnTotal - tolerance;
        } else {
            rebalance.minBurn0 = burnTotal - tolerance;
        }

        // fill in burns
        rebalance.burns = burns;

        // complete payload
        execPayload = abi.encodeWithSelector(
            IArrakisV2.rebalance.selector,
            rebalance
        );

        return (true, execPayload);
    }

    // solhint-disable-next-line code-complexity
    function _getBurns(
        Range[] memory ranges,
        IUniswapV3Pool pool,
        address vault,
        bool onPriceIncrease
    )
        internal
        view
        returns (PositionLiquidity[] memory burns, uint256 burnTotal)
    {
        Range[] memory temp = new Range[](ranges.length);
        uint256 nCrossed;
        for (uint256 i = 0; i < ranges.length; i++) {
            (bool crossed, uint256 burnAmount) = _checkPosition(
                ranges[i],
                pool,
                vault,
                onPriceIncrease
            );

            if (crossed) {
                temp[i] = ranges[i];
                nCrossed++;
                burnTotal += burnAmount;
            }
        }

        if (nCrossed > 0) {
            // create burns array
            burns = new PositionLiquidity[](nCrossed);
            uint256 k;
            for (uint256 j = 0; j < ranges.length; j++) {
                if (temp[j].feeTier != 0) {
                    burns[k] = PositionLiquidity({
                        liquidity: type(uint128).max,
                        range: temp[j]
                    });
                    k++;
                }
            }
        }
    }

    function _checkPosition(
        Range memory range,
        IUniswapV3Pool pool,
        address vault,
        bool onPriceIncrease
    ) internal view returns (bool, uint256) {
        bytes32 positionId = keccak256(
            abi.encodePacked(vault, range.lowerTick, range.upperTick)
        );
        (uint160 sqrtPriceX96, int24 tick, , , , , ) = pool.slot0();
        (uint128 liquidity, , , , ) = pool.positions(positionId);
        (uint256 amount0, uint256 amount1) = LiquidityAmounts
            .getAmountsForLiquidity(
                sqrtPriceX96,
                TickMath.getSqrtRatioAtTick(range.lowerTick),
                TickMath.getSqrtRatioAtTick(range.upperTick),
                liquidity
            );
        if (onPriceIncrease && tick >= range.upperTick && amount0 == 0) {
            return (true, amount1);
        }
        if (!onPriceIncrease && tick <= range.lowerTick && amount1 == 0) {
            return (true, amount0);
        }

        return (false, 0);
    }
}
