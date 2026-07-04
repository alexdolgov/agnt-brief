// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.28;

/// @title IRebalancer
/// @notice External contract that swaps pmUSD → underlying → savings token.
/// @dev Pull-based: the vault approves pmUSD and the rebalancer pulls it.
interface IRebalancer {
    /// @notice Swap pmUSD to savings token within slippage tolerance.
    /// @param pmUSDAmount Amount of pmUSD to swap.
    /// @return savingsTokenReceived Amount of savings token sent back to the vault.
    /// @return pmUSDRemaining Amount of pmUSD that couldn't be swapped (sent back to the vault).
    function rebalance(uint256 pmUSDAmount) external returns (uint256 savingsTokenReceived, uint256 pmUSDRemaining);
}
