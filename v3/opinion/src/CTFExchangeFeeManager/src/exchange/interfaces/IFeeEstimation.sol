// SPDX-License-Identifier: MIT
pragma solidity <0.9.0;

import { Order } from "../libraries/OrderStructs.sol";

/// @title Fee Estimation Interface
/// @notice Interface for estimating trading fees before order execution
interface IFeeEstimation {
    
    /// @notice Detailed fee breakdown for transparency
    struct FeeEstimate {
        uint256 totalFee;              // Final fee amount to be paid by user
        uint256 baseFee;               // Fee before any discounts
        uint256 userDiscountBps;       // User tier discount applied (basis points)
        uint256 promoDiscountBps;      // Promotional discount applied (basis points)
        uint256 userDiscountAmount;    // Discount amount from user tier
        uint256 promoDiscountAmount;   // Discount amount from promotions
        uint256 referralDiscountBps;   // Additional referral discount (basis points)
        uint256 referralDiscountAmount;// Discount amount from referrals
        uint256 referrerRebateAmount;  // Rebate amount to be paid to referrer
        uint256 platformRevenue;       // Net revenue for the platform (totalFee - referrerRebateAmount)
        uint256 minFeeAmount;          // Minimum fee that applies
        bool minFeeApplied;            // Whether minimum fee was applied
        uint256 feeRateBps;            // Fee rate used in calculation
        uint256 price;                 // Calculated price of the trade
    }

    /// @notice Estimate fee for a single order if filled completely
    /// @param user The user placing the order
    /// @param order The order to estimate fee for
    /// @param isTaker Whether the user is acting as taker (true) or maker (false)
    /// @return estimate Detailed fee breakdown
    function estimateOrderFee(address user, Order calldata order, bool isTaker) 
        external view returns (FeeEstimate memory estimate);

    /// @notice Estimate fee for a single order with custom fill amount
    /// @param user The user placing the order
    /// @param order The order to estimate fee for  
    /// @param fillAmount The amount to fill (in maker amount terms)
    /// @param isTaker Whether the user is acting as taker (true) or maker (false)
    /// @return estimate Detailed fee breakdown
    function estimateOrderFeeWithFillAmount(address user, Order calldata order, uint256 fillAmount, bool isTaker)
        external view returns (FeeEstimate memory estimate);


    /// @notice Estimate fees for a taker order matching against specific maker orders
    /// @param takerUser The taker user address
    /// @param takerOrder The taker order
    /// @param makerOrders Array of maker orders to match against
    /// @param takerFillAmount Amount to fill on taker order (in maker amount terms)
    /// @param makerFillAmounts Array of amounts to fill on each maker order
    /// @return takerFee Fee estimate for the taker
    /// @return makerFees Array of fee estimates for each maker
    function estimateMatchingFees(
        address takerUser,
        Order calldata takerOrder,
        Order[] calldata makerOrders, 
        uint256 takerFillAmount,
        uint256[] calldata makerFillAmounts
    ) external view returns (FeeEstimate memory takerFee, FeeEstimate[] memory makerFees);

    /// @notice Estimate fee for a user acting as maker in a trade
    /// @param makerUser The maker user address
    /// @param makerOrder The maker order
    /// @param fillAmount Amount to fill (in maker amount terms)
    /// @return estimate Detailed fee breakdown for the maker
    function estimateMakerFee(
        address makerUser,
        Order calldata makerOrder,
        uint256 fillAmount
    ) external view returns (FeeEstimate memory estimate);

    /// @notice Estimate fee for a user acting as taker in a trade
    /// @param takerUser The taker user address  
    /// @param takerOrder The taker order
    /// @param fillAmount Amount to fill (in maker amount terms)
    /// @return estimate Detailed fee breakdown for the taker
    function estimateTakerFee(
        address takerUser,
        Order calldata takerOrder,
        uint256 fillAmount
    ) external view returns (FeeEstimate memory estimate);

    /// @notice Get the current fee rate settings for a token
    /// @param tokenId The token ID
    /// @return makerFeeRateBps Maker fee rate in basis points
    /// @return takerFeeRateBps Taker fee rate in basis points  
    /// @return enabled Whether custom fee rates are enabled for this token
    /// @return minFeeAmount Minimum fee amount for this token
    function getFeeRateSettings(uint256 tokenId) 
        external view returns (
            uint256 makerFeeRateBps, 
            uint256 takerFeeRateBps, 
            bool enabled, 
            uint256 minFeeAmount
        );

    /// @notice Check all applicable discounts for a user
    /// @param user The user address
    /// @return userTierDiscountBps Discount from user tier
    /// @return referralDiscountBps Discount from referral system
    function getUserDiscountInfo(address user)
        external view returns (
            uint256 userTierDiscountBps,
            uint256 referralDiscountBps
        );

    /// @notice Estimate the minimum fee for a token given an amount
    /// @param tokenId The token ID
    /// @param feeAmount The calculated fee amount
    /// @return finalFee The final fee after applying minimum fee rules
    /// @return minFeeApplied Whether minimum fee was applied
    function estimateMinimumFee(uint256 tokenId, uint256 feeAmount)
        external view returns (uint256 finalFee, bool minFeeApplied);

    /// @notice Calculate fees for trade execution
    /// @param user User address
    /// @param baseFee Base fee before discounts
    /// @param minFee Minimum fee requirement
    /// @param adminDiscountBps Additional admin discount in basis points (0 = no admin discount)
    /// @return finalFee User pays this amount
    /// @return rebate Referrer receives this amount
    /// @return referrer Referrer address
    function computeFees(
        address user,
        uint256 baseFee,
        uint256 minFee,
        uint256 adminDiscountBps
    ) external view returns (uint256 finalFee, uint256 rebate, address referrer);

    /// @notice Get the default collateral token address
    /// @return The default collateral token address
    function defaultCollateralToken() external view returns (address);

    /// @notice Get the global default minimum fee for the default collateral token
    /// @return The global default minimum fee amount
    function getGlobalDefaultMinFee() external view returns (uint256);

    /// @notice Get global default minimum fee for a specific collateral token
    /// @param collateralToken The collateral token address
    /// @return The global default minimum fee for this collateral
    function getCollateralGlobalMinFee(address collateralToken) external view returns (uint256);
}