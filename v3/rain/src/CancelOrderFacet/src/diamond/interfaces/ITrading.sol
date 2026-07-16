// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

interface ITrading {
    /* ========================== FUNCTIONS ========================== */

    /**
     * @notice Allows a user to enter a voting option by depositing tokens.
     * @dev Transfers the specified `amount` of `baseToken` from the user to the contract and updates vote tallies.
     * Requires a valid signature and that the sale is live.
     * @param option The option ID the user is voting for.
     * @param amount The amount of `baseToken` being contributed.
     * @notice The signature must be valid and not expired.
     * @notice Emits an `EnterOption` event upon a successful contribution.
     * @notice Emits a `Sync` event for all options to update total funds.
     */
    function enterOption(uint256 option, uint256 amount) external;

    /**
     * @notice Allows a user to provide liquidity to the pool.
     * @dev Transfers the specified amount of base tokens from the user to the contract.
     *      Requires a valid signature for authentication.
     *      Updates user liquidity, total liquidity, and vote/fund distributions.
     * @param totalAmount The total amount of base tokens the user is adding as liquidity.
     * @notice The function reverts if the pool sale is not live.
     * @notice Emits an `EnterLiquidity` event for the liquidity addition.
     * @notice Emits an `EnterOption` event for each option's fund and vote update.
     * @notice Emits a `Sync` event for each option to reflect the updated pool state.
     */
    function enterLiquidity(uint256 totalAmount) external;

    /**
     * @notice Places a sell order for a specific option at a given price and amount.
     * @dev Allows a user to list their shares for sale in the order book.
     * @param option The ID of the option to sell shares for.
     * @param price The price per share at which to sell.
     * @param votes The total number of votes to sell.
     * @return orderID The unique identifier of the created order.
     */
    function placeSellOrder(uint256 option, uint256 price, uint256 votes) external returns (uint256 orderID);

    /**
     * @notice Places a buy order for a specific option at a given price and amount of base token.
     * @dev Allows a user to list a buy order in the order book.
     * @param option The ID of the option to buy shares for.
     * @param price The price per share at which to sell.
     * @param amount The total amount in terms of base token.
     * @return orderID The unique identifier of the created order.
     */
    function placeBuyOrder(uint256 option, uint256 price, uint256 amount) external returns (uint256 orderID);
}
