// SPDX-License-Identifier: MIT
pragma solidity 0.8.33;

/**
 * @title ISyToken
 * @notice Interface for the Pendle's Standardized Yield token contract
 */
interface ISyToken {
    /**
     * @notice Get the yield token address
     * @return Yield token address
     */
    function yieldToken() external view returns (address);

    /**
     * @notice Redeem SY tokens for the underlying asset
     * @param receiver Address to receive the redeemed tokens
     * @param amountSharesToRedeem Amount of SY tokens to redeem
     * @param tokenOut Address of the token to receive
     * @param minTokenOut Minimum amount of tokenOut to receive
     * @param burnFromInternalBalance Whether to burn from internal balance
     * @return amountTokenOut Amount of tokenOut received
     */
    function redeem(
        address receiver,
        uint256 amountSharesToRedeem,
        address tokenOut,
        uint256 minTokenOut,
        bool burnFromInternalBalance
    ) external returns (uint256 amountTokenOut);
}
