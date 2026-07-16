// SPDX-License-Identifier: Business Source License 1.1
pragma solidity ^0.8.22;

/**
 * @title ITreasury
 * @notice Interface for secure treasury operations without unlimited approvals
 */
interface ITreasury {
    /**
     * @notice Transfer tokens from treasury to a destination
     * @param token The token to transfer
     * @param to The destination address
     * @param amount The amount to transfer
     * @dev This should be implemented by treasury contracts to avoid unlimited approvals
     */
    function transferToken(address token, address to, uint256 amount) external;
    
    /**
     * @notice Get the balance of a token in the treasury
     * @param token The token to check
     * @return The balance amount
     */
    function getTokenBalance(address token) external view returns (uint256);
}
