// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.21;

/// @title Plugin Manager Interface
/// @notice The interface defines the functions to manage plugins
interface IMasterRouter {

    function observer() external view returns (address);
    /**
     * @notice Adds collateral to the specified user's account.
     * @param user The address of the user.
     * @param tokenAddress The address of the token to be added as collateral.
     * @param amount The amount of tokens to be added as collateral.
     * @param isLP Whether the collateral is for LP.
     */
    function addCollateral( // d09be386
        address user,
        address tokenAddress,
        uint256 amount,
        bool isLP
    ) external payable;

    /**
     * @notice Removes collateral from the specified user's account.
     * @param recipient The address to receive the removed collateral.
     * @param tokenAddress The address of the token to be removed as collateral.
     * @param amount The amount of tokens to be removed as collateral.
     * @param isLP Whether the collateral is for LP.
     */
    function removeCollateral( // 8eabd4fe
        address recipient,
        address tokenAddress,
        uint256 amount,
        bool isLP
    ) external;

    /**
     * @notice Requests a lp order.
     * @param qty The quantity of liquidity to order.
     * @param isBuy A flag indicating whether the caller wants to open or close liquidity position.
     */
    function orderLp(uint256 qty, bool isBuy) external; //0x9d5868e8
}