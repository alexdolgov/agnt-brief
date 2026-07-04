// SPDX-License-Identifier: BSL-1.1
pragma solidity ^0.8.24;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

/**
 * @title IMarketAdapterController
 * @author Blend.Money (hello@blend.money)
 * @notice This interface defines the functions for swapping between loan and collateral tokens.
 */
interface IMarketAdapterController {
    /**
     * @notice Swaps a given amount of loan token for collateral token.
     * @dev The balance amount will be the entire balance of the loan token on the adapter contract.
     * @param loanToken The loan token to swap from.
     * @param collateralToken The collateral token to swap to.
     * @param recipient The recipient of the swapped collateral token.
     * @param strategyData Additional data for the strategy.
     * @param extraData Additional data for the swap.
     */
    function swapToCollateral(
        IERC20 loanToken,
        IERC20 collateralToken,
        address recipient,
        bytes calldata strategyData,
        bytes calldata extraData
    ) external;

    /**
     * @notice Swaps a given amount of collateral token for loan token.
     * @dev The balance amount will be the entire balance of the collateral token on the adapter contract.
     * @param loanToken The loan token to swap to.
     * @param collateralToken The collateral token to swap from.
     * @param recipient The recipient of the swapped loan token.
     * @param strategyData Additional data for the strategy.
     * @param extraData Additional data for the swap.
     */
    function swapToLoanToken(
        IERC20 loanToken,
        IERC20 collateralToken,
        address recipient,
        bytes calldata strategyData,
        bytes calldata extraData
    ) external;
}
