// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

interface ICumulativeMerkleDrop {
    /// @notice Get the token address.
    /// @return The token address.
    function token() external view returns (address);

    /// @notice Claim and lock token.
    /// @param cumulativeAmount The cumulative amount of token claimed.
    /// @param amountToLock The amount of token to lock.
    /// @param merkleProof The merkle proof.
    /// @notice It is only possible to lock if there is a staking contract set.
    function claimAndLock(
        uint256 cumulativeAmount,
        uint256 amountToLock,
        bytes32[] memory merkleProof
    ) external;
}
