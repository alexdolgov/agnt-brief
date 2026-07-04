// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

/// @title IAirdropDistributor
/// @notice Interface for the airdrop distributor contract
interface IAirdropDistributor {
    /// @notice Retrieves unclaimed rewards from a specific epoch
    /// @param epoch The epoch number for the reward
    /// @param token The ERC20 token address of the reward
    /// @param account The original account that was eligible for the reward
    /// @param amount The amount of tokens to claim
    /// @param merkleProof The merkle proof validating the claim
    function retrieveUnclaimedReward(
        uint256 epoch,
        address token,
        address account,
        uint256 amount,
        bytes32[] calldata merkleProof
    ) external;

    /// @notice Transfers ownership of the distributor contract
    /// @param newOwner The address of the new owner
    function transferOwnership(address newOwner) external;
}
