// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

/**
 * @title IInfo
 * @author Rain Team
 * @notice Interface for the rain pool info facet.
 * @dev Defines the external helper functions for the rain pool within the Diamond architecture.
 */
interface IInfo {
    /* ===================================== FUNCTIONS ===================================== */

    /**
     * @notice Returns the total number of active or created orders in the system.
     * @return The total number of orders.
     */
    function totalOrders() external returns (uint256);

    /**
     * @notice Calculates the dynamic payout amount for a specific user.
     * @dev This is a view function and does not modify the contract state.
     * @param user The address of the user to calculate the dynamic payout for.
     * @return dynamicPayout The amount of dynamic payout the user is eligible to receive.
     */
    function getDynamicPayout(address user) external view returns (uint256[] memory dynamicPayout);

    /**
     * @notice Computes the amount of shares retured on the given amount for the specified option.
     * @dev The returned shares are calculated based on the `sellOrders` existing in the order book,
     *       the price impace and the additional amount being added to both the option and total pool funds.
     * @param option The index of the option being evaluated.
     * @param amount The amount being added to the option.
     * @return returnedShares retured shares of the option after adding the specified amount.
     * @return expectedReward retured expected rewards in terms of baseToken after adding the specified amount.
     */
    function getEntryShares(
        uint256 option,
        uint256 amount
    ) external view returns (uint256 returnedShares, uint256 expectedReward);

    /**
     * @notice Calculates the shares and amounts allocated to each option when adding liquidity.
     * @dev This function distributes the total liquidity proportionally based on the existing funds in each option.
     * @param totalAmount The total amount of base tokens being added as liquidity.
     * @return returnedShares An array containing the number of shares allocated to each option.
     * @return returnedAmounts An array containing the amount of base tokens allocated to each option.
     */
    function getReturnedLiquidity(uint256 totalAmount) external view returns (uint256[] memory, uint256[] memory);

    /**
     * @notice Computes the price impact when a new amount is added to an option.
     * @dev The impacted price is recalculated based on the new funds, considering
     *      the additional amount being added to both the option and total pool funds.
     * @param option The index of the option being evaluated.
     * @param amount The amount being added to the option.
     * @return The impacted price of the option after adding the specified amount.
     */
    function getImpactedPrice(uint256 option, uint256 amount) external view returns (uint256);

    /**
     * @notice Calculates the number of shares a user will receive when entering an option.
     * @dev This function determines the share amount based on the impacted price.
     * @param option The option in which the user wants to enter.
     * @param amount The amount of base tokens the user is contributing.
     * @return The number of shares the user will receive.
     */
    function getReturnedShares(uint256 option, uint256 amount) external view returns (uint256);

    /**
     * @notice Calculates the additional amount of funds required to adjust the end price
     *         of an option pool to the desired target.
     * @dev Uses a derived formula to compute the required amount based on pool state and pricing.
     *      Reverts if the current state is invalid or no additional funds are needed.
     * @param currentPrice The current price of the option.
     * @param endPrice The desired end price to reach.
     * @param totalOptionFunds The total amount of funds allocated to this option.
     * @param _allFunds The total amount of all funds in the pool.
     * @return requiredAmount The minimum additional funds required to move the price to `endPrice`.
     */
    function getAmountRequired(
        uint256 currentPrice,
        uint256 endPrice,
        uint256 totalOptionFunds,
        uint256 _allFunds
    ) external view returns (uint256 requiredAmount);

    /**
     * @notice Retrieves the current price of an option based on its total funds.
     * @dev The price is calculated as the ratio of the total funds for the option
     *      to the overall pool funds, scaled by `PRICE_MAGNIFICATION`.
     * @param option The index of the option for which the price is being queried.
     * @return The current price of the specified option.
     */
    function getCurrentPrice(uint256 option) external view returns (uint256);

    /**
     * @notice Calculates the dispute appeal fee required based on the current pool state.
     * @dev The fee is derived as a fraction of total pool funds and is constrained
     *      within predefined minimum and maximum bounds denominated in USDT.
     *      If the base token differs from USDT, on-chain price quotes are used
     *      to convert between the base token and USDT values.
     *      The minimum fee is increased if the dispute has already been appealed.
     * @return disputeFee The calculated dispute appeal fee denominated in the base token.
     */
    function getDisputeAppealFee() external returns (uint256 disputeFee);

    /**
     * @notice Returns the resolver bond required for resolution.
     * @dev Bond is calculated as a fraction of total pool funds and
     *      clamped between minimum and maximum resolution fees.
     *      For non-USDT base tokens, limits are enforced using price quotes.
     * @return resolverBondAmount The resolver bond amount.
     */
    function getResolverBondAmount() external returns (uint256 resolverBondAmount);

    /**
     * @notice Returns the reward earned by a user from holding shares in the winning option.
     * @dev
     * - Reverts with `WinnerNotDecided` if the dispute window has passed and no winner is set.
     * - The reward is calculated proportionally to the user's votes in the winning option:
     * - Returns 0 if the winning option has no votes or the user holds no winning shares.
     * @param user The address of the user to calculate the shares reward for.
     * @param winner The option to calculate the winning rewards for.
     * @return sharesReward The amount of reward tokens claimable by the user from winning shares.
     */
    function getSharesReward(address user, uint256 winner) external view returns (uint256 sharesReward);

    /**
     * @notice Returns the reward earned by a user for providing liquidity to the pool.
     * @dev
     * - The reward is calculated proportionally to the user's liquidity contribution:
     * - Returns 0 if no liquidity was provided to the pool.
     * @param user The address of the user to calculate the liquidity reward for.
     * @return liquidityReward The amount of reward tokens claimable by the user for liquidity provision.
     */
    function getLiquidityReward(address user) external view returns (uint256 liquidityReward);

    /**
     * @notice Returns the reward allocated to the pool creator.
     * @dev
     * - The reward is calculated as:
     * - The creator fee percentage is defined by `creatorFee`.
     * @return creatorReward The amount of reward tokens claimable by the pool creator.
     */
    function getCreatorReward() external view returns (uint256 creatorReward);

    /**
     * @notice Returns the reward allocated to the resolver who proposed the final resolution.
     * @dev
     * - The reward is calculated as:
     * - The resolver receives a fixed fee portion defined as 1 / FEE_MAGNIFICATION of total funds.
     * @return resolverReward The amount of reward tokens claimable by the resolver.
     */
    function getResolverReward() external view returns (uint256 resolverReward);
}
