// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

import {ApproxParams} from "../../../interfaces/IPAllActionTypeV3.sol";
import "../../core/Market/MarketMathCore.sol";
import "../../libraries/math/PMath.sol";

import {ApproxState, ApproxStateLib} from "./ApproxStateLib.sol";
import {MarketApproxEstimateLib} from "./MarketApproxEstimateLib.sol";

/// @title MarketApproxBtInLibOnchain
/// @notice On-chain approximation library for swaps where BT flows into the market
/// @dev Handles swaps like FW->CT and adding liquidity with BT. Uses dynamic range
///      binary search without requiring off-chain computation of initial guesses.
library MarketApproxBtInLibOnchain {
    using MarketMathCore for MarketState;
    using BCIndexLib for BCIndex;
    using PMath for uint256;
    using PMath for int256;
    using LogExpMath for int256;
    using MarketApproxEstimateLib for MarketState;

    /// @notice Approximates swap of exact FW input for CT output, computed entirely on-chain
    /// @dev Uses dynamic range binary search starting from an estimated CT output.
    ///      The swap involves: (1) tokenizing FW into BT+CT, (2) selling BT for FW in the market.
    ///      Searches for the CT amount where required FW matches exactFwIn within epsilon tolerance.
    /// @param market The current market state
    /// @param index BC index for FW/asset conversions
    /// @param exactFwIn Exact amount of FW to spend
    /// @param blockTime Current block timestamp
    /// @return netCtOut Amount of CT tokens received
    /// @return netFwFee Fee amount in FW tokens
    /// @return iteration Number of iterations used
    function approxSwapExactFwForCtOnchain(
        MarketState memory market,
        BCIndex index,
        uint256 exactFwIn,
        uint256 blockTime
    )
        internal
        pure
        returns (
            uint256, /* netCtOut*/
            uint256, /* netFwFee*/
            uint256 /* iteration */
        )
    {
        MarketPreCompute memory comp = market.getMarketPreCompute(index, blockTime);
        uint256 estimatedCtOut = market.estimateSwapExactFwForCt(index, blockTime, exactFwIn);
        uint256[2] memory hardBounds = [index.fwToAsset(exactFwIn), calcSoftMaxBtIn(market, comp)];
        ApproxState memory state = ApproxStateLib.initNoOffChain(estimatedCtOut, hardBounds);

        for (uint256 iter = 0; iter < state.maxIteration; ++iter) {
            uint256 guess = state.curGuess;
            (uint256 netFwOut, uint256 netFwFee,) = calcFwOut(market, comp, index, guess);

            uint256 netFwToTokenizeBt = index.assetToFwUp(guess);

            uint256 netFwToPull = netFwToTokenizeBt - netFwOut;

            if (netFwToPull <= exactFwIn) {
                if (PMath.isASmallerApproxB(netFwToPull, exactFwIn, state.eps)) {
                    return (guess, netFwFee, iter);
                }
                state.transitionUp({excludeGuessFromRange: false});
            } else {
                state.transitionDown({excludeGuessFromRange: true});
            }
        }
        revert("Slippage: APPROX_EXHAUSTED");
    }

    /// @notice Approximates optimal BT swap amount for adding liquidity, computed on-chain
    /// @dev Finds the BT amount to swap for FW such that the resulting BT:FW ratio matches
    ///      the pool ratio for proportional liquidity addition. Uses dynamic range binary search.
    /// @param market The current market state (must have existing liquidity)
    /// @param index BC index for conversions
    /// @param totalBtIn Total BT tokens available for swap + liquidity
    /// @param netFwHolding FW tokens already held (not being swapped)
    /// @param blockTime Current block timestamp
    /// @return netBtSwap Amount of BT to swap
    /// @return netFwFromSwap Amount of FW received from swap
    /// @return netFwFee Fee amount in FW tokens
    /// @return iteration Number of iterations used
    function approxSwapBtToAddLiquidityOnchain(
        MarketState memory market,
        BCIndex index,
        uint256 totalBtIn,
        uint256 netFwHolding,
        uint256 blockTime
    )
        internal
        pure
        returns (
            uint256, /* netBtSwap*/
            uint256, /* netFwFromSwap*/
            uint256, /* netFwFee*/
            uint256 /* iteration */
        )
    {
        require(market.totalLp != 0, "no existing lp");

        MarketPreCompute memory comp = market.getMarketPreCompute(index, blockTime);
        (uint256 estimatedBtAdd,) = market.estimateAddLiquidity(index, blockTime, totalBtIn, netFwHolding);
        uint256 estimatedBtSwap = totalBtIn.subMax0(estimatedBtAdd);
        uint256[2] memory hardBounds = [0, PMath.min(totalBtIn, calcSoftMaxBtIn(market, comp))];
        ApproxState memory state = ApproxStateLib.initNoOffChain(estimatedBtSwap, hardBounds);

        for (uint256 iter = 0; iter < state.maxIteration; ++iter) {
            uint256 guess = state.curGuess;
            (uint256 fwNumerator, uint256 btNumerator, uint256 netFwOut, uint256 netFwFee,) =
                (calcNumerators(market, index, totalBtIn, netFwHolding, comp, guess));

            if (PMath.isAApproxB(fwNumerator, btNumerator, state.eps)) {
                return (guess, netFwOut, netFwFee, iter);
            }

            if (fwNumerator <= btNumerator) {
                // needs more FW --> swap more BT
                state.transitionUp({excludeGuessFromRange: true});
            } else {
                // needs less FW --> swap less BT
                state.transitionDown({excludeGuessFromRange: true});
            }
        }
        revert("Slippage: APPROX_EXHAUSTED");
    }

    /// @notice Calculates numerators for comparing BT and FW proportions in liquidity addition
    /// @dev Computes fwNumerator = (netFwOut + netFwHolding) * newTotalBt and
    ///      btNumerator = (totalBtIn - guess) * newTotalFw. When equal, proportions match.
    /// @param market The current market state
    /// @param index BC index for conversions
    /// @param totalBtIn Total BT tokens available
    /// @param netFwHolding FW tokens already held
    /// @param comp Pre-computed market values
    /// @param guess Current guess for BT swap amount
    /// @return fwNumerator FW side of the proportion equation
    /// @return btNumerator BT side of the proportion equation
    /// @return netFwOut FW received from the swap
    /// @return netFwFee Swap fee in FW
    /// @return netFwToReserve FW directed to protocol reserves
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

        fwNumerator = (netFwOut + netFwHolding) * newTotalBt;
        btNumerator = (totalBtIn - guess) * newTotalFw;
    }

    // //////////////////////////////////////////////////////////////////////////////

    /// @notice Calculates FW output for a given BT input amount
    /// @dev Wrapper around market.calcTrade that converts signed results to unsigned.
    ///      Negative netBtIn indicates BT flowing into the market.
    /// @param market The current market state
    /// @param comp Pre-computed market values
    /// @param index BC index for conversions
    /// @param netBtIn Amount of BT to swap into the market
    /// @return netFwOut FW tokens received from the swap
    /// @return netFwFee Swap fee in FW tokens
    /// @return netFwToReserve FW directed to protocol reserves
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

    /// @notice Calculates the soft maximum BT amount that can be swapped into the market
    /// @dev Based on MAX_MARKET_PROPORTION constraint to prevent extreme pool imbalances.
    ///      Returns: MAX_MARKET_PROPORTION * (totalBt + totalAsset) - totalBt
    /// @param market The current market state
    /// @param comp Pre-computed market values containing totalAsset
    /// @return Maximum BT input that maintains market proportion bounds
    function calcSoftMaxBtIn(MarketState memory market, MarketPreCompute memory comp) internal pure returns (uint256) {
        return (MarketMathCore.MAX_MARKET_PROPORTION.mulDown(market.totalBt + comp.totalAsset) - market.totalBt).Uint();
    }
}

/// @title MarketApproxBtOutLibOnchain
/// @notice On-chain approximation library for swaps where BT flows out of the market
/// @dev Handles swaps like FW->BT and adding liquidity with FW. Uses dynamic range
///      binary search without requiring off-chain computation of initial guesses.
library MarketApproxBtOutLibOnchain {
    using MarketMathCore for MarketState;
    using BCIndexLib for BCIndex;
    using PMath for uint256;
    using PMath for int256;
    using LogExpMath for int256;
    using MarketApproxEstimateLib for MarketState;

    /// @notice Approximates swap of exact FW input for BT output, computed entirely on-chain
    /// @dev Uses dynamic range binary search starting from an estimated BT output.
    ///      Searches for the BT amount where required FW matches exactFwIn within epsilon tolerance.
    /// @param market The current market state
    /// @param index BC index for FW/asset conversions
    /// @param exactFwIn Exact amount of FW to spend
    /// @param blockTime Current block timestamp
    /// @return netBtOut Amount of BT tokens received
    /// @return netFwFee Fee amount in FW tokens
    /// @return iteration Number of iterations used
    function approxSwapExactFwForBtOnchain(
        MarketState memory market,
        BCIndex index,
        uint256 exactFwIn,
        uint256 blockTime
    )
        internal
        pure
        returns (
            uint256, /* netBtOut*/
            uint256, /* netFwFee*/
            uint256 /* iteration */
        )
    {
        MarketPreCompute memory comp = market.getMarketPreCompute(index, blockTime);
        uint256 estimatedBtOut = market.estimateSwapExactFwForBt(index, blockTime, exactFwIn);
        uint256[2] memory hardBounds = [0, calcMaxBtOut(comp, market.totalBt)];
        ApproxState memory state = ApproxStateLib.initNoOffChain(estimatedBtOut, hardBounds);

        for (uint256 iter = 0; iter < state.maxIteration; ++iter) {
            uint256 guess = state.curGuess;
            (uint256 netFwIn, uint256 netFwFee,) = calcFwIn(market, comp, index, guess);

            if (netFwIn <= exactFwIn) {
                if (PMath.isASmallerApproxB(netFwIn, exactFwIn, state.eps)) {
                    return (guess, netFwFee, iter);
                }
                state.transitionUp({excludeGuessFromRange: false});
            } else {
                state.transitionDown({excludeGuessFromRange: true});
            }
        }

        revert("Slippage: APPROX_EXHAUSTED");
    }

    /// @notice Approximates optimal FW swap amount for adding liquidity, computed on-chain
    /// @dev Finds the FW amount to swap for BT such that the resulting BT:FW ratio matches
    ///      the pool ratio for proportional liquidity addition. Uses dynamic range binary search.
    /// @param market The current market state (must have existing liquidity)
    /// @param index BC index for conversions
    /// @param totalFwIn Total FW tokens available for swap + liquidity
    /// @param netBtHolding BT tokens already held (not being swapped)
    /// @param blockTime Current block timestamp
    /// @return netBtFromSwap Amount of BT received from swap
    /// @return netFwSwap Amount of FW spent on swap
    /// @return netFwFee Fee amount in FW tokens
    /// @return iteration Number of iterations used
    function approxSwapFwToAddLiquidityOnchain(
        MarketState memory market,
        BCIndex index,
        uint256 totalFwIn,
        uint256 netBtHolding,
        uint256 blockTime
    )
        internal
        pure
        returns (
            uint256, /* netBtFromSwap*/
            uint256, /* netFwSwap*/
            uint256, /* netFwFee*/
            uint256 /* iteration */
        )
    {
        require(market.totalLp != 0, "no existing lp");

        MarketPreCompute memory comp = market.getMarketPreCompute(index, blockTime);
        (uint256 estimatedBtAdd,) = market.estimateAddLiquidity(index, blockTime, netBtHolding, totalFwIn);
        uint256 estimatedBtSwap = estimatedBtAdd.subMax0(netBtHolding);
        uint256[2] memory hardBounds = [0, calcMaxBtOut(comp, market.totalBt)];
        ApproxState memory state = ApproxStateLib.initNoOffChain(estimatedBtSwap, hardBounds);

        for (uint256 iter = 0; iter < state.maxIteration; ++iter) {
            uint256 guess = state.curGuess;
            (uint256 netFwIn, uint256 netFwFee, uint256 netFwToReserve) = calcFwIn(market, comp, index, guess);

            if (netFwIn > totalFwIn) {
                state.transitionDown({excludeGuessFromRange: true});
                continue;
            }

            uint256 fwNumerator;
            uint256 btNumerator;

            {
                uint256 newTotalBt = uint256(market.totalBt) - guess;
                uint256 netTotalFw = uint256(market.totalFw) + netFwIn - netFwToReserve;

                btNumerator = (guess + netBtHolding) * netTotalFw;
                fwNumerator = (totalFwIn - netFwIn) * newTotalBt;
            }

            if (PMath.isAApproxB(btNumerator, fwNumerator, state.eps)) {
                return (guess, netFwIn, netFwFee, iter);
            }

            if (btNumerator <= fwNumerator) {
                // needs more BT
                state.transitionUp({excludeGuessFromRange: true});
            } else {
                // needs less BT
                state.transitionDown({excludeGuessFromRange: true});
            }
        }
        revert("Slippage: APPROX_EXHAUSTED");
    }

    // //////////////////////////////////////////////////////////////////////////////

    /// @notice Calculates FW input required for a given BT output amount
    /// @dev Wrapper around market.calcTrade that converts signed results to unsigned.
    ///      Positive netBtOut indicates BT flowing out of the market.
    /// @param market The current market state
    /// @param comp Pre-computed market values
    /// @param index BC index for conversions
    /// @param netBtOut Amount of BT to receive from the market
    /// @return netFwIn FW tokens required for the swap
    /// @return netFwFee Swap fee in FW tokens
    /// @return netFwToReserve FW directed to protocol reserves
    function calcFwIn(MarketState memory market, MarketPreCompute memory comp, BCIndex index, uint256 netBtOut)
        internal
        pure
        returns (uint256 netFwIn, uint256 netFwFee, uint256 netFwToReserve)
    {
        (int256 _netFwIn, int256 _netFwFee, int256 _netFwToReserve) = market.calcTrade(comp, index, int256(netBtOut));

        netFwIn = uint256(-_netFwIn);
        netFwFee = uint256(_netFwFee);
        netFwToReserve = uint256(_netFwToReserve);
    }

    /// @notice Calculates the maximum BT amount that can be swapped out of the market
    /// @dev Derived from the AMM curve constraints. Uses the fee rate to compute the
    ///      minimum proportion the pool must maintain. Returns 99.9% of theoretical max
    ///      to accommodate precision issues.
    /// @param comp Pre-computed market values including fee rate and rate anchor
    /// @param totalBt Current total BT in the market
    /// @return Maximum BT output that maintains market stability
    function calcMaxBtOut(MarketPreCompute memory comp, int256 totalBt) internal pure returns (uint256) {
        int256 logitP = (comp.feeRate - comp.rateAnchor).mulDown(comp.rateScalar).exp();
        int256 proportion = logitP.divDown(logitP + PMath.IONE);
        int256 numerator = proportion.mulDown(totalBt + comp.totalAsset);
        int256 maxBtOut = totalBt - numerator;
        return (uint256(maxBtOut) * 999) / 1000;
    }
}
