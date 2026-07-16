// SPDX-License-Identifier: MIT
pragma solidity <0.9.0;

import { Order, Side } from "../libraries/OrderStructs.sol";

library CalculatorHelper {
    uint256 internal constant ONE = 10 ** 18;

    uint256 internal constant BPS_DIVISOR = 10_000;

    /// @notice Higher precision divisor for intermediate calculations to reduce rounding errors
    /// @dev Uses 10^12 as a safe middle ground that works for both 6-decimal (USDC) and 18-decimal (DAI) tokens
    uint256 internal constant HIGH_PRECISION_DIVISOR = 10 ** 12;

    /// @notice Maximum safe value to prevent overflow in multiplication
    uint256 internal constant MAX_SAFE_VALUE = type(uint256).max / HIGH_PRECISION_DIVISOR;

    function calculateTakingAmount(uint256 makingAmount, uint256 makerAmount, uint256 takerAmount)
        internal
        pure
        returns (uint256)
    {
        if (makerAmount == 0) return 0;
        return makingAmount * takerAmount / makerAmount;
    }

    /// @notice Calculates the fee for an order (original function for backward compatibility)
    /// @dev Fees are calculated using symmetric formula for both BUY and SELL orders
    /// @param feeRateBps       - Fee rate, in basis points
    /// @param outcomeTokens    - The number of outcome tokens
    /// @param makerAmount      - The maker amount of the order
    /// @param takerAmount      - The taker amount of the order
    /// @param side             - The side of the order
    function calculateFee(
        uint256 feeRateBps,
        uint256 outcomeTokens,
        uint256 makerAmount,
        uint256 takerAmount,
        Side side
    ) internal pure returns (uint256 fee) {
        return calculateFeeWithDiscount(feeRateBps, outcomeTokens, makerAmount, takerAmount, side, 0);
    }

    /// @notice Calculates the fee for an order with user tier discount
    /// @dev Fees are calculated using symmetric formula for both BUY and SELL orders, then discount is applied
    /// @param feeRateBps       - Fee rate, in basis points
    /// @param outcomeTokens    - The number of outcome tokens
    /// @param makerAmount      - The maker amount of the order
    /// @param takerAmount      - The taker amount of the order
    /// @param side             - The side of the order
    /// @param discountBps      - Discount rate in basis points (0-10000)
    function calculateFeeWithDiscount(
        uint256 feeRateBps,
        uint256 outcomeTokens,
        uint256 makerAmount,
        uint256 takerAmount,
        Side side,
        uint256 discountBps
    ) internal pure returns (uint256 fee) {
        return calculateFeeWithMultipleDiscounts(feeRateBps, outcomeTokens, makerAmount, takerAmount, side, discountBps, 0);
    }

    /// @notice Calculates the fee for an order with multiple discounts (user tier + promotional)
    /// @dev Fees are calculated using symmetric formula, then multiple discounts are applied sequentially
    /// @param feeRateBps          - Fee rate, in basis points
    /// @param outcomeTokens       - The number of outcome tokens
    /// @param makerAmount         - The maker amount of the order
    /// @param takerAmount         - The taker amount of the order
    /// @param side                - The side of the order
    /// @param userDiscountBps     - User tier discount rate in basis points (0-10000)
    /// @param promoDiscountBps    - Promotional discount rate in basis points (0-10000)
    function calculateFeeWithMultipleDiscounts(
        uint256 feeRateBps,
        uint256 outcomeTokens,
        uint256 makerAmount,
        uint256 takerAmount,
        Side side,
        uint256 userDiscountBps,
        uint256 promoDiscountBps
    ) internal pure returns (uint256 fee) {
        // Calculate base fee using unified formula
        fee = _calculateBaseFee(feeRateBps, outcomeTokens, makerAmount, takerAmount, side);

        if (fee > 0) {
            // Apply discounts using higher precision to minimize rounding errors
            if (userDiscountBps > 0 && userDiscountBps <= BPS_DIVISOR) {
                require(fee <= MAX_SAFE_VALUE, "CalculatorHelper: fee too large for discount calculation");
                // Use higher precision intermediate calculation
                fee = (fee * HIGH_PRECISION_DIVISOR * (BPS_DIVISOR - userDiscountBps)) / (HIGH_PRECISION_DIVISOR * BPS_DIVISOR);
            }

            // Apply promotional discount on top of user discount
            if (promoDiscountBps > 0 && promoDiscountBps <= BPS_DIVISOR) {
                require(fee <= MAX_SAFE_VALUE, "CalculatorHelper: fee too large for promo discount calculation");
                // Use higher precision intermediate calculation
                fee = (fee * HIGH_PRECISION_DIVISOR * (BPS_DIVISOR - promoDiscountBps)) / (HIGH_PRECISION_DIVISOR * BPS_DIVISOR);
            }
        }
    }

    /// @notice Calculates the base fee without any discounts
    /// @dev This is the core fee calculation used by all other fee functions
    /// @param feeRateBps       - Fee rate, in basis points
    /// @param outcomeTokens    - The number of outcome tokens
    /// @param makerAmount      - The maker amount of the order
    /// @param takerAmount      - The taker amount of the order
    /// @param side             - The side of the order
    /// @return fee             - The base fee amount before discounts
    function _calculateBaseFee(
        uint256 feeRateBps,
        uint256 outcomeTokens,
        uint256 makerAmount,
        uint256 takerAmount,
        Side side
    ) internal pure returns (uint256 fee) {
        if (feeRateBps > 0) {
            uint256 price = _calculatePrice(makerAmount, takerAmount, side);
            if (price > 0 && price <= ONE) {
                // Check for potential overflow before calculation
                require(outcomeTokens <= MAX_SAFE_VALUE, "CalculatorHelper: outcomeTokens too large");
                require(feeRateBps <= BPS_DIVISOR, "CalculatorHelper: invalid fee rate");

                // UNIFIED SYMMETRIC FORMULA: Same for both BUY and SELL, and for trading & estimation
                // Fee = feeRate * price * (1-price) * outcomeTokens
                // This ensures:
                // 1. Fees are highest at price=0.5 (max = 0.25 * feeRate * outcomeTokens)
                // 2. Fees approach 0 as price approaches 0 or 1
                // 3. Consistent calculation across all fee functions
                //
                // Note: price * (ONE - price) produces units of ONE^2, so we divide by ONE^2
                fee = feeRateBps * price * (ONE - price) * outcomeTokens / (BPS_DIVISOR * ONE * ONE);
            }
        }
    }

    function calculatePrice(Order memory order) internal pure returns (uint256) {
        return _calculatePrice(order.makerAmount, order.takerAmount, order.side);
    }

    function _calculatePrice(uint256 makerAmount, uint256 takerAmount, Side side) internal pure returns (uint256) {
        if (side == Side.BUY) return takerAmount != 0 ? makerAmount * ONE / takerAmount : 0;
        return makerAmount != 0 ? takerAmount * ONE / makerAmount : 0;
    }

    function isCrossing(Order memory a, Order memory b) internal pure returns (bool) {
        if (a.takerAmount == 0 || b.takerAmount == 0) return true;

        return _isCrossing(calculatePrice(a), calculatePrice(b), a.side, b.side);
    }

    function _isCrossing(uint256 priceA, uint256 priceB, Side sideA, Side sideB) internal pure returns (bool) {
        if (sideA == Side.BUY) {
            if (sideB == Side.BUY) {
                // if a and b are bids
                return priceA + priceB >= ONE;
            }
            // if a is bid and b is ask
            return priceA >= priceB;
        }
        if (sideB == Side.BUY) {
            // if a is ask and b is bid
            return priceB >= priceA;
        }
        // if a and b are asks
        return priceA + priceB <= ONE;
    }
}
