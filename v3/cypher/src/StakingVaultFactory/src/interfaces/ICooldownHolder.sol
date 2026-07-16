// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/**
 * @title ICooldownHolder
 * @author Cypher Industries
 * @notice Interface for the CooldownHolder contract that holds assets during cooldown.
 */
interface ICooldownHolder {
    /**
     * @notice Thrown when caller is not the staking vault.
     */
    error OnlyStakingVault();

    /**
     * @notice Withdraw assets to a recipient.
     * @dev Only callable by the staking vault.
     * @param to Address to send the assets to.
     * @param amount Amount of assets to withdraw.
     */
    function withdraw(address to, uint256 amount) external;
}
