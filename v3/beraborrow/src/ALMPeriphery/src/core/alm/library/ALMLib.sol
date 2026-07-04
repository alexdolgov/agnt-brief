// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.26;

import {
    LiquidityAmounts
} from "@uniswap/v3-periphery/contracts/libraries/LiquidityAmounts.sol";
import {TickMath} from "@uniswap/v3-core/contracts/libraries/TickMath.sol";
import {
    SqrtPriceMath
} from "@uniswap/v3-core/contracts/libraries/SqrtPriceMath.sol";
import {
    IUniswapV3Pool
} from "@uniswap/v3-core/contracts/interfaces/IUniswapV3Pool.sol";
import {IEverlongALM} from "src/interfaces/core/alm/IEverlongALM.sol";
import {IERC20} from "lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/contracts/token/ERC20/utils/SafeERC20.sol";
import {IPriceFeed} from "src/interfaces/core/oracles/IPriceFeed.sol";
import {IALMGetters} from "src/core/alm/getters/ALMGetters.sol";
import {SwappersLib} from "src/libraries/SwappersLib.sol";

library ALMLib {
    using SwappersLib for SwappersLib.SwapperData;

    uint24 constant MINIMUM_LIQUIDITY = 1e3;
    uint24 constant HUNDRED_PERCENT = 1e6;

    /// @dev Wrapper around `LiquidityAmounts.getLiquidityForAmounts()`.
    function _liquidityForAmounts(
        int24 tickLower,
        int24 tickUpper,
        uint256 amount0,
        uint256 amount1,
        uint160 sqrtRatioX96
    ) external pure returns (uint128) {
        return
            LiquidityAmounts.getLiquidityForAmounts(
                sqrtRatioX96,
                TickMath.getSqrtRatioAtTick(tickLower),
                TickMath.getSqrtRatioAtTick(tickUpper),
                amount0,
                amount1
            );
    }

    /**
     * @notice Computes the token0 and token1 value for a given amount of liquidity,
     * respecting rounding for deposit/withdraw to align with uniswap's approach when providing/removing liquidity.
     */
    function _amountsForLiquidity(
        address pool,
        int24 tickLower,
        int24 tickUpper,
        uint128 liquidity,
        bool roundUp
    ) external view returns (uint256 amount0, uint256 amount1) {
        (uint160 sqrtRatioX96, , , , , , ) = IUniswapV3Pool(pool).slot0();
        uint160 sqrtRatioAX96 = TickMath.getSqrtRatioAtTick(tickLower);
        uint160 sqrtRatioBX96 = TickMath.getSqrtRatioAtTick(tickUpper);

        if (sqrtRatioAX96 > sqrtRatioBX96) {
            (sqrtRatioAX96, sqrtRatioBX96) = (sqrtRatioBX96, sqrtRatioAX96);
        }

        if (sqrtRatioX96 <= sqrtRatioAX96) {
            amount0 = SqrtPriceMath.getAmount0Delta(
                sqrtRatioAX96,
                sqrtRatioBX96,
                liquidity,
                roundUp
            );
        } else if (sqrtRatioX96 < sqrtRatioBX96) {
            amount0 = SqrtPriceMath.getAmount0Delta(
                sqrtRatioX96,
                sqrtRatioBX96,
                liquidity,
                roundUp
            );
            amount1 = SqrtPriceMath.getAmount1Delta(
                sqrtRatioAX96,
                sqrtRatioX96,
                liquidity,
                roundUp
            );
        } else {
            amount1 = SqrtPriceMath.getAmount1Delta(
                sqrtRatioAX96,
                sqrtRatioBX96,
                liquidity,
                roundUp
            );
        }
    }

    /// @dev Calculates the largest possible `amount0` and `amount1` such that
    /// they're in the same proportion as total amounts, but not greater than
    /// `amount0Desired` and `amount1Desired` respectively.
    function _calcSharesAndAmounts(
        uint256 _totalSupply,
        uint256 total0,
        uint256 total1,
        uint256 amount0Desired,
        uint256 amount1Desired
    ) external view returns (uint256 shares, uint256 amount0, uint256 amount1) {
        // If total supply > 0, vault can't be empty
        assert(_totalSupply == 0 || total0 > 0 || total1 > 0);

        if (_totalSupply == 0) {
            // For first deposit, just use the amounts desired
            amount0 = amount0Desired;
            amount1 = amount1Desired;
            shares =
                (amount0 > amount1 ? amount0 : amount1) -
                MINIMUM_LIQUIDITY;
        } else if (total0 == 0) {
            amount1 = amount1Desired;
            shares = (amount1 * _totalSupply) / total1;
        } else if (total1 == 0) {
            amount0 = amount0Desired;
            shares = (amount0 * _totalSupply) / total0;
        } else {
            uint256 cross0 = amount0Desired * total1;
            uint256 cross1 = amount1Desired * total0;
            uint256 cross = cross0 > cross1 ? cross1 : cross0;
            if (cross == 0) revert IEverlongALM.EV_ZeroCross();

            // Round up amounts
            amount0 = (cross - 1) / total1 + 1;
            amount1 = (cross - 1) / total0 + 1;
            shares = (cross * _totalSupply) / total0 / total1;
        }
    }

    /// @dev Ensures tick is within the maximum range boundaries
    function _boundTick(
        int24 tick,
        int24 _maxTick
    ) external pure returns (int24) {
        if (tick < -_maxTick) {
            return -_maxTick;
        }
        if (tick > _maxTick) {
            return _maxTick;
        }
        return tick;
    }

    /// @dev Rounds tick down towards negative infinity so that it's a multiple
    /// of `tickSpacing`.
    function _floor(
        int24 tick,
        int24 tickSpacing
    ) external pure returns (int24) {
        int24 compressed = tick / tickSpacing;
        if (tick < 0 && tick % tickSpacing != 0) compressed--;
        return compressed * tickSpacing;
    }

    // helpers
    function _checkThreshold(
        int24 threshold,
        int24 _tickSpacing
    ) internal pure {
        if (threshold <= 0) revert IEverlongALM.EV_ThresholdNotPositive();
        if (threshold % _tickSpacing != 0)
            revert IEverlongALM.EV_ThresholdNotMultipleOfTickSpacing();
    }

    function initialize(
        IEverlongALM.EverlongALMStorage storage $,
        IEverlongALM.VaultParams memory _params
    ) external {
        $.owner = _params.owner;
        $.pool = IUniswapV3Pool(_params.pool);
        $.priceFeed = IPriceFeed(_params.priceFeed);
        $.token0 = IERC20($.pool.token0());
        $.token1 = IERC20($.pool.token1());

        int24 _tickSpacing = $.tickSpacing = $.pool.tickSpacing();
        $.maxTick = (TickMath.MAX_TICK / _tickSpacing) * _tickSpacing;

        $.manager = _params.manager;
        $.rebalanceDelegate = _params.rebalanceDelegate;
        $.depositDelegate = _params.depositDelegate;
        $.maxTotalSupply = _params.maxTotalSupply;
        $.baseThreshold = _params.baseThreshold;
        $.limitThreshold = _params.limitThreshold;
        $.wideRangeWeight = _params.wideRangeWeight;
        $.wideThreshold = _params.wideThreshold;
        $.period = _params.period;
        $.minTickMove = _params.minTickMove;
        $.maxTwapDeviation = _params.maxTwapDeviation;
        $.twapDuration = _params.twapDuration;
        $.protocolFee = _params.protocolFee;
        $.swapDeviationThreshold = _params.swapDeviationThreshold;
        $.ratioDeviationThreshold = _params.ratioDeviationThreshold;
        $.rebalanceDelegateCooldown = _params.rebalanceDelegateCooldown;
        $.lastRatioDeviationThresholdUpdateTimestamp = uint40(block.timestamp);
        $.maxRatioDeviationThresholdIncrease = _params
            .maxRatioDeviationThresholdIncrease;
        $.getters = IALMGetters(_params.getters);
        $.leverageRouter = (_params.leverageRouter);
        $.debtRegulator = _params.debtRegulator;

        _checkThreshold(_params.baseThreshold, _tickSpacing);
        _checkThreshold(_params.limitThreshold, _tickSpacing);
        _checkThreshold(_params.wideThreshold, _tickSpacing);
        if (_params.wideRangeWeight > HUNDRED_PERCENT)
            revert IEverlongALM.EV_WideRangeWeight();
        if (_params.minTickMove < 0) revert IEverlongALM.EV_MinTickMove();
        if (_params.maxTwapDeviation < 0)
            revert IEverlongALM.EV_MaxTwapDeviation();
        if (_params.twapDuration == 0) revert IEverlongALM.EV_TwapDuration();
        if (_params.wideThreshold == _params.baseThreshold)
            revert IEverlongALM.EV_ThresholdsCannotBeSame();
        if (_params.swapDeviationThreshold > HUNDRED_PERCENT)
            revert IEverlongALM.EV_SwapDeviationThreshold();
        if (_params.ratioDeviationThreshold > HUNDRED_PERCENT)
            revert IEverlongALM.EV_RatioDeviationThreshold();
        if (_params.rebalanceDelegateCooldown == 0)
            revert IEverlongALM.EV_RebalanceDelegateCooldown();
        if (_params.maxRatioDeviationThresholdIncrease == 0)
            revert IEverlongALM.EV_MaxRatioDeviationThresholdIncrease();

        for (uint i; i < _params.initialWhitelistedSwappers.length; ++i) {
            $.swapperData.addWhitelistedSwapper(
                _params.initialWhitelistedSwappers[i],
                true
            );
        }
    }
}
