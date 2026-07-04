// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

import {ApproxParams} from "../../../interfaces/IPAllActionTypeV3.sol";
import "../../core/Market/MarketMathCore.sol";
import "../../libraries/math/PMath.sol";

uint256 constant QUICK_CALC_MAX_ITER = 50;
uint256 constant CUT_OFF_SCALE_CLAMP = 2;
uint256 constant QUICK_CALC_TRIGGER_EPS = 1e17;

/// @title MarketApproxBtInLibV2
/// @notice V2 approximation library for swaps where BT flows into the market
/// @dev Handles swaps like FW->CT and adding liquidity with BT. Supports both off-chain
///      pre-computed guesses and on-chain estimation with adaptive search strategies.
library MarketApproxBtInLibV2 {
    using MarketMathCore for MarketState;
    using BCIndexLib for BCIndex;
    using PMath for uint256;
    using PMath for int256;
    using LogExpMath for int256;

    /// @notice Approximates swap of exact FW input for CT output with optional off-chain guess
    /// @dev When guessOffchain != 0, uses the pre-computed guess as starting point.
    ///      Otherwise, estimates and validates bounds on-chain. Uses scaled clamping for
    ///      initial iterations, then switches to binary search midpoint.
    /// @param market The current market state
    /// @param index BC index for FW/asset conversions
    /// @param exactFwIn Exact amount of FW to spend
    /// @param blockTime Current block timestamp
    /// @param approx Approximation parameters (guessMin, guessMax, guessOffchain, maxIteration, eps)
    /// @return netCtOut Amount of CT tokens received
    /// @return netFwFee Fee amount in FW tokens
    function approxSwapExactFwForCtV2(
        MarketState memory market,
        BCIndex index,
        uint256 exactFwIn,
        uint256 blockTime,
        ApproxParams memory approx
    )
        internal
        pure
        returns (
            uint256, /* netCtOut*/
            uint256 /* netFwFee*/
        )
    {
        MarketPreCompute memory comp = market.getMarketPreCompute(index, blockTime);
        if (approx.guessOffchain == 0) {
            approx.guessMin = PMath.max(approx.guessMin, index.fwToAsset(exactFwIn));
            approx.guessMax = PMath.min(approx.guessMax, calcMaxBtIn(market, comp));
            validateApprox(approx);
        }

        // at minimum we will flashswap exactFwIn since we have enough FW to payback the BT loan

        uint256 guess = getFirstGuess(approx);

        for (uint256 iter = 0; iter < approx.maxIteration; ++iter) {
            (uint256 netFwOut, uint256 netFwFee,) = calcFwOut(market, comp, index, guess);

            uint256 netFwToTokenizeBt = index.assetToFwUp(guess);

            // for sure netfwToTokenizeBt >= netFwOut since we are swapping BT to FW
            uint256 netFwToPull = netFwToTokenizeBt - netFwOut;

            if (netFwToPull <= exactFwIn) {
                if (PMath.isASmallerApproxB(netFwToPull, exactFwIn, approx.eps)) {
                    return (guess, netFwFee);
                }
                if (approx.guessMin == guess) {
                    break;
                }
                approx.guessMin = guess;
            } else {
                approx.guessMax = guess - 1;
            }

            if (iter <= CUT_OFF_SCALE_CLAMP) {
                guess = scaleClamp(guess, exactFwIn, netFwToPull, approx);
            } else {
                guess = calcMidpoint(approx);
            }
        }

        revert("Slippage: APPROX_EXHAUSTED");
    }

    /// @notice Arguments struct for approxSwapBtToAddLiquidityV2 to avoid stack depth issues
    struct Args5 {
        MarketState market;
        BCIndex index;
        uint256 totalBtIn;
        uint256 netFwHolding;
        uint256 blockTime;
        ApproxParams approx;
    }

    /// @notice Approximates optimal BT swap amount for adding liquidity with optional off-chain guess
    /// @dev Finds the BT amount to swap for FW such that the resulting ratio matches the pool.
    ///      When proportions get close (within QUICK_CALC_TRIGGER_EPS), triggers quickCalc
    ///      optimization for faster convergence using linear interpolation.
    /// @param _market The current market state (must have existing liquidity)
    /// @param _index BC index for conversions
    /// @param _totalBtIn Total BT tokens available
    /// @param _netFwHolding FW tokens already held
    /// @param _blockTime Current block timestamp
    /// @param approx Approximation parameters
    /// @return netBtSwap Amount of BT to swap
    /// @return netFwFromSwap Amount of FW received
    /// @return netFwFee Fee in FW tokens
    function approxSwapBtToAddLiquidityV2(
        MarketState memory _market,
        BCIndex _index,
        uint256 _totalBtIn,
        uint256 _netFwHolding,
        uint256 _blockTime,
        ApproxParams memory approx
    )
        internal
        pure
        returns (
            uint256, /* netBtSwap*/
            uint256, /* netFwFromSwap*/
            uint256 /* netFwFee*/
        )
    {
        Args5 memory a = Args5(_market, _index, _totalBtIn, _netFwHolding, _blockTime, approx);
        MarketPreCompute memory comp = a.market.getMarketPreCompute(a.index, a.blockTime);
        if (approx.guessOffchain == 0) {
            // no limit on min
            approx.guessMax = PMath.min(approx.guessMax, calcMaxBtIn(a.market, comp));
            approx.guessMax = PMath.min(approx.guessMax, a.totalBtIn);
            validateApprox(approx);
            require(a.market.totalLp != 0, "no existing lp");
        }

        uint256 guess = getFirstGuess(approx);

        bool quickCalcRan = false;
        for (uint256 iter = 0; iter < approx.maxIteration; ++iter) {
            (uint256 fwNumerator, uint256 btNumerator, uint256 netFwOut, uint256 netFwFee, uint256 netFwToReserve) =
                calcNumerators(a.market, a.index, a.totalBtIn, a.netFwHolding, comp, guess);

            if (PMath.isAApproxB(fwNumerator, btNumerator, approx.eps)) {
                return (guess, netFwOut, netFwFee);
            }

            if (fwNumerator <= btNumerator) {
                // needs more FW --> swap more BT
                if (approx.guessMin == guess) {
                    break;
                }
                approx.guessMin = guess;
            } else {
                // needs less FW --> swap less BT
                approx.guessMax = guess - 1;
            }

            if (!quickCalcRan && PMath.isAApproxB(fwNumerator, btNumerator, QUICK_CALC_TRIGGER_EPS)) {
                quickCalcRan = true;
                guess = quickCalc(a, guess, netFwOut, netFwToReserve);
                if (guess <= a.approx.guessMin || guess >= a.approx.guessMax) {
                    guess = calcMidpoint(a.approx);
                }
            } else {
                guess = calcMidpoint(a.approx);
            }
        }
        revert("Slippage: APPROX_EXHAUSTED");
    }

    /// @notice Fast approximation using linear interpolation when close to the solution
    /// @dev Assumes netFwOut and netFwToReserve scale linearly with the guess amount.
    ///      Uses unchecked arithmetic for gas optimization since values are bounded.
    ///      Triggered when fwNumerator and btNumerator are within QUICK_CALC_TRIGGER_EPS.
    /// @param a Arguments struct containing market state and parameters
    /// @param _guess Current guess that triggered quickCalc
    /// @param _netFwOut FW output at current guess (used for linear scaling)
    /// @param _netFwToReserve FW to reserve at current guess (used for linear scaling)
    /// @return Refined guess value closer to the optimal solution
    function quickCalc(Args5 memory a, uint256 _guess, uint256 _netFwOut, uint256 _netFwToReserve)
        internal
        pure
        returns (uint256)
    {
        unchecked {
            uint256 low = a.approx.guessMin;
            uint256 high = a.approx.guessMax;

            for (uint256 i = 0; i < QUICK_CALC_MAX_ITER; i++) {
                uint256 mid = (low + high) / 2;

                uint256 thisNetFwOut = (_netFwOut * mid) / _guess;
                uint256 thisNetFwToReserve = (_netFwToReserve * mid) / _guess;

                uint256 newTotalBt = uint256(a.market.totalBt) + mid;
                uint256 newTotalFw = (uint256(a.market.totalFw) - thisNetFwOut - thisNetFwToReserve);

                uint256 fwNumerator = (thisNetFwOut + a.netFwHolding) * newTotalBt;
                uint256 btNumerator = (a.totalBtIn - mid) * newTotalFw;

                if (isAApproxBUnchecked(fwNumerator, btNumerator, a.approx.eps)) {
                    return mid;
                }

                if (fwNumerator <= btNumerator) {
                    if (low == mid) {
                        break;
                    }
                    low = mid;
                } else {
                    high = mid - 1;
                }

                if (low > high) return mid;
            }
            return (low + high) / 2;
        }
    }

    /// @notice Calculates numerators for comparing BT and FW proportions in liquidity addition
    /// @dev Computes values to check if (netFwOut + netFwHolding) / newTotalFw = netBtRemaining / newTotalBt.
    ///      Cross-multiplied: fwNumerator = (netFwOut + netFwHolding) * newTotalBt,
    ///      btNumerator = (totalBtIn - guess) * newTotalFw. Equal when proportions match.
    /// @param market The current market state
    /// @param index BC index for conversions
    /// @param totalBtIn Total BT tokens available
    /// @param netFwHolding FW tokens already held
    /// @param comp Pre-computed market values
    /// @param guess Current guess for BT swap amount
    /// @return fwNumerator FW side of the proportion equation
    /// @return btNumerator BT side of the proportion equation
    /// @return netFwOut FW received from swap
    /// @return netFwFee Swap fee in FW
    /// @return netFwToReserve FW directed to reserves
    function calcNumerators(
        MarketState memory market,
        BCIndex index,
        uint256 totalBtIn,
        uint256 netFwHolding,
        MarketPreCompute memory comp,
        uint256 guess
    )
        internal
        pure
        returns (uint256 fwNumerator, uint256 btNumerator, uint256 netFwOut, uint256 netFwFee, uint256 netFwToReserve)
    {
        (netFwOut, netFwFee, netFwToReserve) = calcFwOut(market, comp, index, guess);

        uint256 newTotalBt = uint256(market.totalBt) + guess;
        uint256 newTotalFw = (uint256(market.totalFw) - netFwOut - netFwToReserve);

        // it is desired that
        // (netFwOut + netfwHolding) / newTotalfw = netBtRemaining / newTotalBt
        // which is equivalent to
        // (netFwOut + netFwHolding) * newTotalBt = netBtRemaining * newTotalFw

        fwNumerator = (netFwOut + netFwHolding) * newTotalBt;
        btNumerator = (totalBtIn - guess) * newTotalFw;
    }

    // //////////////////////////////////////////////////////////////////////////////

    /// @notice Calculates FW output for a given BT input amount
    /// @dev Wrapper around market.calcTrade converting signed to unsigned results
    /// @param market The current market state
    /// @param comp Pre-computed market values
    /// @param index BC index for conversions
    /// @param netBtIn Amount of BT to swap into the market
    /// @return netFwOut FW tokens received
    /// @return netFwFee Swap fee in FW
    /// @return netFwToReserve FW directed to reserves
    function calcFwOut(MarketState memory market, MarketPreCompute memory comp, BCIndex index, uint256 netBtIn)
        internal
        pure
        returns (uint256 netFwOut, uint256 netFwFee, uint256 netFwToReserve)
    {
        (int256 _netFwOut, int256 _netFwFee, int256 _netFwToReserve) = market.calcTrade(comp, index, -int256(netBtIn));
        netFwOut = uint256(_netFwOut);
        netFwFee = uint256(_netFwFee);
        netFwToReserve = uint256(_netFwToReserve);
    }

    /// @notice Validates approximation parameters for on-chain computation
    /// @dev Only called when guessOffchain == 0. Ensures guessMin <= guessMax and eps <= 1e18.
    /// @param approx The approximation parameters to validate
    function validateApprox(ApproxParams memory approx) internal pure {
        if (approx.guessMin > approx.guessMax || approx.eps > PMath.ONE) {
            revert("Internal: INVALID_APPROX_PARAMS");
        }
    }

    /// @notice Calculates the maximum BT amount that can be swapped into the market
    /// @dev Uses binary search to find the point where the AMM curve slope becomes negative.
    ///      Also bounded by MAX_MARKET_PROPORTION to prevent extreme pool imbalances.
    /// @param market The current market state
    /// @param comp Pre-computed market values
    /// @return Maximum BT input maintaining market stability
    function calcMaxBtIn(MarketState memory market, MarketPreCompute memory comp) internal pure returns (uint256) {
        uint256 low = 0;
        uint256 hi = uint256(comp.totalAsset) - 1;

        while (low != hi) {
            uint256 mid = (low + hi + 1) / 2;
            if (calcSlope(comp, market.totalBt, int256(mid)) < 0) hi = mid - 1;
            else low = mid;
        }

        low = PMath.min(
            low,
            (MarketMathCore.MAX_MARKET_PROPORTION.mulDown(market.totalBt + comp.totalAsset) - market.totalBt).Uint()
        );

        return low;
    }

    /// @notice Calculates the slope of the AMM curve at a given BT input amount
    /// @dev Used to find the maximum valid BT input. Negative slope indicates
    ///      the trade would push the market past its stable operating range.
    /// @param comp Pre-computed market values
    /// @param totalBt Current total BT in the market
    /// @param btToMarket Amount of BT being added to the market
    /// @return The slope value; negative indicates invalid trade region
    function calcSlope(MarketPreCompute memory comp, int256 totalBt, int256 btToMarket) internal pure returns (int256) {
        int256 diffAssetBtToMarket = comp.totalAsset - btToMarket;
        int256 sumBt = btToMarket + totalBt;

        require(diffAssetBtToMarket > 0 && sumBt > 0, "invalid btToMarket");

        int256 part1 = (btToMarket * (totalBt + comp.totalAsset)).divDown(sumBt * diffAssetBtToMarket);

        int256 part2 = sumBt.divDown(diffAssetBtToMarket).ln();
        int256 part3 = PMath.IONE.divDown(comp.rateScalar);

        return comp.rateAnchor - (part1 - part2).mulDown(part3);
    }
}

/// @title MarketApproxBtOutLibV2
/// @notice V2 approximation library for swaps where BT flows out of the market
/// @dev Handles swaps like FW->BT and adding liquidity with FW. Supports both off-chain
///      pre-computed guesses and on-chain estimation with adaptive search strategies.
library MarketApproxBtOutLibV2 {
    using MarketMathCore for MarketState;
    using BCIndexLib for BCIndex;
    using PMath for uint256;
    using PMath for int256;
    using LogExpMath for int256;

    /// @notice Approximates swap of exact FW input for BT output with optional off-chain guess
    /// @dev When guessOffchain != 0, uses the pre-computed guess as starting point.
    ///      Uses scaled clamping for initial iterations, then binary search.
    /// @param market The current market state
    /// @param index BC index for conversions
    /// @param exactFwIn Exact amount of FW to spend
    /// @param blockTime Current block timestamp
    /// @param approx Approximation parameters
    /// @return netBtOut Amount of BT tokens received
    /// @return netFwFee Fee in FW tokens
    function approxSwapExactFwForBtV2(
        MarketState memory market,
        BCIndex index,
        uint256 exactFwIn,
        uint256 blockTime,
        ApproxParams memory approx
    )
        internal
        pure
        returns (
            uint256, /* netBtOut*/
            uint256 /* netFwFee*/
        )
    {
        MarketPreCompute memory comp = market.getMarketPreCompute(index, blockTime);
        if (approx.guessOffchain == 0) {
            // no limit on min
            approx.guessMax = PMath.min(approx.guessMax, calcMaxBtOut(comp, market.totalBt));
            validateApprox(approx);
        }
        uint256 guess = getFirstGuess(approx);

        for (uint256 iter = 0; iter < approx.maxIteration; ++iter) {
            (uint256 netFwIn, uint256 netFwFee,) = calcFwIn(market, comp, index, guess);

            if (netFwIn <= exactFwIn) {
                if (PMath.isASmallerApproxB(netFwIn, exactFwIn, approx.eps)) {
                    return (guess, netFwFee);
                }
                if (guess == approx.guessMin) {
                    break;
                }
                approx.guessMin = guess;
            } else {
                approx.guessMax = guess - 1;
            }

            if (iter <= CUT_OFF_SCALE_CLAMP) {
                guess = scaleClamp(guess, exactFwIn, netFwIn, approx);
            } else {
                guess = calcMidpoint(approx);
            }
        }

        revert("Slippage: APPROX_EXHAUSTED");
    }

    /// @notice Arguments struct for approxSwapFwToAddLiquidityV2 to avoid stack depth issues
    struct Args6 {
        MarketState market;
        BCIndex index;
        uint256 totalFw;
        uint256 netBtHolding;
        uint256 blockTime;
        ApproxParams approx;
    }

    /// @notice Approximates optimal FW swap amount for adding liquidity with optional off-chain guess
    /// @dev Finds the BT amount to receive from swapping FW such that the resulting ratio
    ///      matches the pool. Uses quickCalc optimization when close to solution.
    /// @param _market The current market state (must have existing liquidity)
    /// @param _index BC index for conversions
    /// @param _totalFwIn Total FW tokens available
    /// @param _netBtHolding BT tokens already held
    /// @param _blockTime Current block timestamp
    /// @param _approx Approximation parameters
    /// @return netBtFromSwap Amount of BT received
    /// @return netFwSwap Amount of FW spent on swap
    /// @return netFwFee Fee in FW tokens
    function approxSwapFwToAddLiquidityV2(
        MarketState memory _market,
        BCIndex _index,
        uint256 _totalFwIn,
        uint256 _netBtHolding,
        uint256 _blockTime,
        ApproxParams memory _approx
    )
        internal
        pure
        returns (
            uint256, /* netBtFromSwap*/
            uint256, /* netFwSwap*/
            uint256 /* netFwFee*/
        )
    {
        Args6 memory a = Args6(_market, _index, _totalFwIn, _netBtHolding, _blockTime, _approx);

        MarketPreCompute memory comp = a.market.getMarketPreCompute(a.index, a.blockTime);
        if (a.approx.guessOffchain == 0) {
            // no limit on min
            a.approx.guessMax = PMath.min(a.approx.guessMax, calcMaxBtOut(comp, a.market.totalBt));
            validateApprox(a.approx);
            require(a.market.totalLp != 0, "no existing lp");
        }

        uint256 guess = getFirstGuess(a.approx);

        bool quickCalcRan = false;
        for (uint256 iter = 0; iter < a.approx.maxIteration; ++iter) {
            (uint256 netFwIn, uint256 netFwFee, uint256 netFwToReserve) = calcFwIn(a.market, comp, a.index, guess);

            if (netFwIn > a.totalFw) {
                a.approx.guessMax = guess - 1;
                guess = calcMidpoint(a.approx);
                continue;
            }

            uint256 fwNumerator;
            uint256 btNumerator;

            {
                uint256 newTotalBt = uint256(a.market.totalBt) - guess;
                uint256 netTotalFw = uint256(a.market.totalFw) + netFwIn - netFwToReserve;

                // it is desired that
                // (netBtFromSwap + netBtHolding) / newTotalBt = netFwRemaining / netTotalFw
                // which is equivalent to
                // (netBtFromSwap + netBtHolding) * netTotalFw = netFwRemaining * newTotalBt

                btNumerator = (guess + a.netBtHolding) * netTotalFw;
                fwNumerator = (a.totalFw - netFwIn) * newTotalBt;
            }

            if (PMath.isAApproxB(fwNumerator, btNumerator, a.approx.eps)) {
                return (guess, netFwIn, netFwFee);
            }

            if (btNumerator <= fwNumerator) {
                if (a.approx.guessMin == guess) {
                    break;
                }
                a.approx.guessMin = guess;
            } else {
                a.approx.guessMax = guess - 1;
            }

            if (!quickCalcRan && PMath.isAApproxB(fwNumerator, btNumerator, QUICK_CALC_TRIGGER_EPS)) {
                quickCalcRan = true;
                guess = quickCalc(a, guess, netFwIn, netFwToReserve);
                if (guess <= a.approx.guessMin || guess >= a.approx.guessMax) {
                    guess = calcMidpoint(a.approx);
                }
            } else {
                guess = calcMidpoint(a.approx);
            }
        }
        revert("Slippage: APPROX_EXHAUSTED");
    }

    /// @notice Fast approximation using linear interpolation when close to the solution
    /// @dev Assumes netFwIn and netFwToReserve scale linearly with the guess amount.
    ///      Handles the case where netFwIn > totalFw by reducing the guess.
    /// @param a Arguments struct containing market state and parameters
    /// @param _guess Current guess that triggered quickCalc
    /// @param _netFwIn FW input at current guess (used for linear scaling)
    /// @param _netFwToReserve FW to reserve at current guess (used for linear scaling)
    /// @return Refined guess value closer to the optimal solution
    function quickCalc(Args6 memory a, uint256 _guess, uint256 _netFwIn, uint256 _netFwToReserve)
        internal
        pure
        returns (uint256)
    {
        uint256 low = a.approx.guessMin;
        uint256 high = a.approx.guessMax;

        unchecked {
            for (uint256 i = 0; i < QUICK_CALC_MAX_ITER; i++) {
                uint256 mid = (low + high) / 2;
                uint256 newTotalBt = uint256(a.market.totalBt) - mid;

                uint256 thisNetFwIn = (_netFwIn * mid) / _guess;
                uint256 thisNetFwToReserve = (_netFwToReserve * mid) / _guess;

                if (thisNetFwIn > a.totalFw) {
                    high = mid - 1;
                    if (low > high) return mid;
                    continue;
                }

                uint256 netTotalFw = uint256(a.market.totalFw) + thisNetFwIn - thisNetFwToReserve;

                uint256 btNumerator = (mid + a.netBtHolding) * netTotalFw;
                uint256 fwNumerator = (a.totalFw - thisNetFwIn) * newTotalBt;
                if (isAApproxBUnchecked(fwNumerator, btNumerator, a.approx.eps)) {
                    return mid;
                }

                if (btNumerator <= fwNumerator) {
                    low = mid;
                } else {
                    high = mid - 1;
                }

                if (low > high) return mid;
            }

            return (low + high) / 2;
        }
    }

    // //////////////////////////////////////////////////////////////////////////////

    /// @notice Calculates FW input required for a given BT output amount
    /// @dev Wrapper around market.calcTrade converting signed to unsigned results.
    ///      Safe casts since totalBt and totalFw are int128.
    /// @param market The current market state
    /// @param comp Pre-computed market values
    /// @param index BC index for conversions
    /// @param netBtOut Amount of BT to receive
    /// @return netFwIn FW tokens required
    /// @return netFwFee Swap fee in FW
    /// @return netFwToReserve FW directed to reserves
    function calcFwIn(MarketState memory market, MarketPreCompute memory comp, BCIndex index, uint256 netBtOut)
        internal
        pure
        returns (uint256 netFwIn, uint256 netFwFee, uint256 netFwToReserve)
    {
        (int256 _netFwIn, int256 _netFwFee, int256 _netFwToReserve) = market.calcTrade(comp, index, int256(netBtOut));

        // all safe since totalBt and totalFw is int128
        netFwIn = uint256(-_netFwIn);
        netFwFee = uint256(_netFwFee);
        netFwToReserve = uint256(_netFwToReserve);
    }

    /// @notice Calculates the maximum BT amount that can be swapped out of the market
    /// @dev Derived from AMM curve constraints using fee rate and rate anchor.
    ///      Returns 99.9% of theoretical max to accommodate precision issues.
    /// @param comp Pre-computed market values
    /// @param totalBt Current total BT in the market
    /// @return Maximum BT output maintaining market stability
    function calcMaxBtOut(MarketPreCompute memory comp, int256 totalBt) internal pure returns (uint256) {
        int256 logitP = (comp.feeRate - comp.rateAnchor).mulDown(comp.rateScalar).exp();
        int256 proportion = logitP.divDown(logitP + PMath.IONE);
        int256 numerator = proportion.mulDown(totalBt + comp.totalAsset);
        int256 maxBtOut = totalBt - numerator;
        // only get 99.9% of the theoretical max to accommodate some precision issues
        return (uint256(maxBtOut) * 999) / 1000;
    }

    /// @notice Validates approximation parameters for on-chain computation
    /// @dev Ensures guessMin <= guessMax and eps <= 1e18
    /// @param approx The approximation parameters to validate
    function validateApprox(ApproxParams memory approx) internal pure {
        if (approx.guessMin > approx.guessMax || approx.eps > PMath.ONE) {
            revert("Internal: INVALID_APPROX_PARAMS");
        }
    }
}

/// @notice Scales the current guess proportionally and clamps within bounds
/// @dev Used in early iterations for faster convergence. Falls back to midpoint if
///      scaled value would exceed bounds.
/// @param original The current guess value
/// @param target The target value we want to match
/// @param current The actual value achieved with the current guess
/// @param approx Approximation parameters containing bounds
/// @return The scaled and clamped next guess
function scaleClamp(uint256 original, uint256 target, uint256 current, ApproxParams memory approx)
    pure
    returns (uint256)
{
    uint256 scaled = (original * target) / current;
    if (scaled >= approx.guessMax) return calcMidpoint(approx);
    if (scaled <= approx.guessMin) return calcMidpoint(approx);

    return scaled;
}

/// @notice Returns the first guess to use in the approximation loop
/// @dev Uses off-chain guess if provided, otherwise falls back to midpoint
/// @param approx Approximation parameters
/// @return The starting guess value
function getFirstGuess(ApproxParams memory approx) pure returns (uint256) {
    return (approx.guessOffchain != 0) ? approx.guessOffchain : calcMidpoint(approx);
}

/// @notice Calculates the midpoint of the current search range
/// @dev Standard binary search midpoint: (min + max + 1) / 2 (rounds up)
/// @param approx Approximation parameters containing guessMin and guessMax
/// @return The midpoint value
function calcMidpoint(ApproxParams memory approx) pure returns (uint256) {
    return (approx.guessMin + approx.guessMax + 1) / 2;
}

/// @notice Checks if value a is approximately equal to value b within epsilon tolerance
/// @dev Unchecked arithmetic for gas optimization. Checks if a is in range [b*(1-eps), b*(1+eps)].
/// @param a First value to compare
/// @param b Second value to compare (reference)
/// @param eps Tolerance as a fraction of 1e18 (e.g., 1e16 = 1%)
/// @return True if a is within eps of b
function isAApproxBUnchecked(uint256 a, uint256 b, uint256 eps) pure returns (bool) {
    unchecked {
        uint256 bLow = (b * (1e18 - eps)) / 1e18;
        uint256 bHigh = (b * (1e18 + eps)) / 1e18;
        return bLow <= a && a <= bHigh;
    }
}
