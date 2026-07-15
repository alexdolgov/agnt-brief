// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

import { IUniPoolMintCallback } from "./IUniPoolMintCallback.sol";
import { IUniPoolPairBorrowCallback } from "./IUniPoolPairBorrowCallback.sol";
import { IUniPoolPairRepayCallback } from "./IUniPoolPairRepayCallback.sol";
import { IUniPoolSwapCallback } from "./IUniPoolSwapCallback.sol";

/**
 * @title UniPool Module Interface
 * @notice Interface for the module that interacts with UniPool.
 */
interface IUniPoolModule is
    IUniPoolMintCallback,
    IUniPoolSwapCallback,
    IUniPoolPairBorrowCallback,
    IUniPoolPairRepayCallback
{
    /**
     * @notice Parameters for adding liquidity to a UniPool pair.
     * @param tokenA Address of token A.
     * @param tokenB Address of token B.
     * @param amountADesired Amount of token A to add.
     * @param amountBDesired Amount of token B to add.
     * @param amountAMin Minimum amount of token A to add.
     * @param amountBMin Minimum amount of token B to add.
     * @param vrAMaxDelta Maximum delta (abs) between the final virtual reserves and corresponding real reserve for
     * tokenA.
     * @param vrBMaxDelta Maximum delta (abs) between the final virtual reserves and corresponding real reserve for
     * tokenB.
     * @param to Address to send the LP tokens to.
     */
    struct AddLiquidityParams {
        address tokenA;
        address tokenB;
        uint128 amountADesired;
        uint128 amountBDesired;
        uint128 amountAMin;
        uint128 amountBMin;
        uint256 vrAMaxDelta;
        uint256 vrBMaxDelta;
        address to;
    }

    /**
     * @notice Parameters for removing liquidity from a UniPool pair.
     * @param tokenA Address of token A.
     * @param tokenB Address of token B.
     * @param liquidity Amount of LP tokens to burn.
     * @param amountAMin Minimum amount of token A to receive.
     * @param amountBMin Minimum amount of token B to receive.
     * @param to Address to send the tokens to.
     */
    struct RemoveLiquidityParams {
        address tokenA;
        address tokenB;
        uint256 liquidity;
        uint256 amountAMin;
        uint256 amountBMin;
        address to;
    }

    /**
     * @notice Indicates the type of payment in the UniPool protocol payment callbacks.
     * @param None No payment required.
     * @param Transfer Transfer tokens from the router's balance.
     * @param TransferFrom Transfer from the user with standard approval/permit.
     * @param Permit2 Transfer from user with permit2.
     */
    enum PaymentType {
        None,
        Transfer,
        TransferFrom,
        Permit2
    }

    /**
     * @notice Callback data for swaps.
     * @param path Path of the swap, array of token addresses tightly packed.
     * @param payer Address of the payer for the swap.
     * @param payment The payment type to use.
     */
    struct SwapCallbackData {
        bytes path;
        address payer;
        PaymentType payment;
    }

    /* -------------------------------------------------------------------------- */
    /*                                   Errors                                   */
    /* -------------------------------------------------------------------------- */

    /// @dev The callback caller is not the pair or it doesn't exist.
    error UniPoolModuleInvalidPair();

    /// @dev The given address is zero.
    error UniPoolModuleZeroAddress();

    /// @dev The slippage is too high.
    error UniPoolModuleSlippageTooHigh();

    /// @dev The spread after adding liquidity is too high.
    error UniPoolModuleSpreadTooHigh();

    /// @dev The payment type is not valid.
    error UniPoolModuleInvalidPaymentType();

    /// @dev The provided path is invalid.
    error UniPoolModuleInvalidPath();

    /// @dev The output token amount is insufficient.
    error UniPoolModuleInsufficientOutputAmount();

    /// @dev The input amount exceeds maximum requirements.
    error UniPoolModuleExcessiveInputAmount();

    /// @dev The amount passed to callback is not valid.
    error UniPoolModuleInvalidAmount();
}
