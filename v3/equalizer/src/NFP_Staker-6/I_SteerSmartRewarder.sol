// Liquidity Market Bribes
// SPDX-License-Identifier: UNLICENSED

pragma solidity 0.8.9;

interface ISteerSmartRewarder {

    /// @dev Allows claiming tokens if hash made from address and amount is part of the merkle tree
    /// @param users the array of users to claim for, msg.sender must have permissions
    /// @param amounts the amounts for each token earned by claimee. Note that this includes previously claimed tokens.
    /// @param campaignIds the campaigns the claims belong to, a way to track token flows per campaign
    /// @param proofs merkle proofs to prove the token addresses and amounts for the user are in tree
    function claim(
        address[] calldata users,
        uint256[] calldata campaignIds,
        uint256[] calldata amounts,
        bytes32[][] calldata proofs
    ) external;
}