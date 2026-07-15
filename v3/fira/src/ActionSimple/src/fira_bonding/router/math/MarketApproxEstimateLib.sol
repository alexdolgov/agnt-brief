// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

import {BCIndex, BCIndexLib} from "../../StandardizedYield/BCIndex.sol";
import {MarketMathCore, MarketState} from "../../core/Market/MarketMathCore.sol";
import {PMath} from "../../libraries/math/PMath.sol";

/// @title MarketApproxEstimateLib
/// @notice Library for estimating swap and liquidity amounts in Fira markets
/// @dev Provides initial estimates used as starting points for binary search approximation.
///      Uses the market's last implied rate to estimate token conversions.
library MarketApproxEstimateLib {
    using MarketMathCore for MarketState;
    using BCIndexLib for BCIndex;
    using PMath for uint256;
    using PMath for int256;

    /// @notice Token types for swap estimation
    enum TokenType {
        /// @notice Bond Token - represents fixed-rate future cash flow
        BT,
        /// @notice Coupon Token - represents variable interest payments
        CT,
        /// @notice Fira Wrapped token - standardized yield-bearing asset
        FW
    }

    /// @notice Estimates the output amount for a token swap using the market's last implied rate
    /// @dev Converts input token to asset value, then converts asset value to output token.
    ///      Uses the last recorded implied rate for price estimation, which may differ from
    ///      actual execution price due to slippage and price impact.
    /// @param market The market state containing price and liquidity information
    /// @param index The BC index for FW/asset conversions
    /// @param blockTime Current block timestamp for time-to-expiry calculation
    /// @param amountIn Amount of input token
    /// @param tokenIn Type of input token (BT, CT, or FW)
    /// @param tokenOut Type of output token (BT, CT, or FW)
    /// @return estimatedAmountOut Estimated output amount based on market rates
    function estimateAmount(
        MarketState memory market,
        BCIndex index,
        uint256 blockTime,
        uint256 amountIn,
        TokenType tokenIn,
        TokenType tokenOut
    ) internal pure returns (uint256 estimatedAmountOut) {
        uint256 assetToBtRate = uint256(
            MarketMathCore._getExchangeRateFromImpliedRate(market.lastLnImpliedRate, market.expiry - blockTime)
        );

        uint256 btToAssetRate = PMath.ONE.divDown(assetToBtRate);
        uint256 ctToAssetRate = PMath.ONE - btToAssetRate;

        uint256 exactAssetIn;

        if (tokenIn == TokenType.FW) {
            exactAssetIn = index.fwToAsset(amountIn);
        } else if (tokenIn == TokenType.BT) {
            exactAssetIn = amountIn.mulDown(btToAssetRate);
        } else {
            exactAssetIn = amountIn.mulDown(ctToAssetRate);
        }

        if (tokenOut == TokenType.FW) {
            estimatedAmountOut = index.assetToFw(exactAssetIn);
        } else if (tokenOut == TokenType.BT) {
            estimatedAmountOut = exactAssetIn.divDown(btToAssetRate);
        } else {
            estimatedAmountOut = exactAssetIn.divDown(ctToAssetRate);
        }
    }

    /// @notice Estimates BT output for an exact FW input swap
    /// @dev Convenience wrapper around estimateAmount for FW->BT swaps
    /// @param market The market state containing price and liquidity information
    /// @param index The BC index for FW/asset conversions
    /// @param blockTime Current block timestamp
    /// @param amountFwIn Exact amount of FW tokens to swap
    /// @return estimatedBtOut Estimated BT tokens to receive
    function estimateSwapExactFwForBt(MarketState memory market, BCIndex index, uint256 blockTime, uint256 amountFwIn)
        internal
        pure
        returns (uint256 estimatedBtOut)
    {
        return estimateAmount(market, index, blockTime, amountFwIn, TokenType.FW, TokenType.BT);
    }

    /// @notice Estimates CT output for an exact FW input swap
    /// @dev Convenience wrapper around estimateAmount for FW->CT swaps
    /// @param market The market state containing price and liquidity information
    /// @param index The BC index for FW/asset conversions
    /// @param blockTime Current block timestamp
    /// @param amountFwIn Exact amount of FW tokens to swap
    /// @return estimatedCtOut Estimated CT tokens to receive
    function estimateSwapExactFwForCt(MarketState memory market, BCIndex index, uint256 blockTime, uint256 amountFwIn)
        internal
        pure
        returns (uint256 estimatedCtOut)
    {
        return estimateAmount(market, index, blockTime, amountFwIn, TokenType.FW, TokenType.CT);
    }

    /// @notice Estimates optimal BT and FW amounts to add as liquidity
    /// @dev Solves the system of equations:
    ///      1) Added amounts must be proportional to existing liquidity: pa/sa = totalBt/totalFw
    ///      2) Conversion respects current price: (sa - netFwOwning) * fwToBtRate = netBtOwning - pa
    ///      This determines how to split holdings between swap and direct liquidity addition.
    /// @param market The market state containing current pool reserves
    /// @param index The BC index for price calculations
    /// @param blockTime Current block timestamp
    /// @param netBtOwning Total BT tokens available to the user
    /// @param netFwOwning Total FW tokens available to the user
    /// @return estimatedBtToAdd Estimated BT amount to add directly as liquidity
    /// @return estimatedFwToAdd Estimated FW amount to add directly as liquidity
    function estimateAddLiquidity(
        MarketState memory market,
        BCIndex index,
        uint256 blockTime,
        uint256 netBtOwning,
        uint256 netFwOwning
    ) internal pure returns (uint256 estimatedBtToAdd, uint256 estimatedFwToAdd) {
        // Let `pa` be `estimatedBtToAdd`, `sa` be `estimatedFwToAdd`.

        // Conditions to satisfy:
        // +) Add liquidity amounts need to be proportional to the existing
        // liquidity:
        // pa / sa = totalBt / totalFw
        // => pa = totalBt / totalFw * sa
        //
        // +) Let `fwToBtRate` be the spot price between the BT and fw amount.
        // Conversion between exessive/missing parts need to respect the
        // current price:
        // (sa - netfwOwning) * fwToBTRate = netBTOwning - pa
        // <=> (sa - netfwOwning) * fwToBTRate = netBTOwning - totalBT / totalfw * sa
        // <=> (sa - netfwOwning) * fwToBTRate * totalfw = netBTOwning * totalfw - totalBT * sa
        //
        // Let x = fwToBTRate * totalfw (x can be calculated with the function `estimateAmount`
        // above).
        // (sa - netfwOwning) * x = netBTOwning * totalfw - totalBT * sa
        // <=> sa * x - netfwOwning * x = netBTOwning * totalfw - totalBT * sa
        // <=> sa * (x + totalBT) = netBTOwning * totalfw + netfwOwning * x

        uint256 totalFw = market.totalFw.Uint();
        uint256 totalBt = market.totalBt.Uint();
        uint256 x = estimateSwapExactFwForBt(market, index, blockTime, totalFw);
        uint256 sa = (netBtOwning * totalFw + netFwOwning * x) / (x + totalBt);
        uint256 pa = (totalBt * sa) / totalFw;

        return (pa, sa);
    }
}
