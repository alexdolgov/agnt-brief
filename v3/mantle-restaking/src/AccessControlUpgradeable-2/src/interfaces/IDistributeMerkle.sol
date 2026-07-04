// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

// Allows anyone to claim a token if they exist in a merkle root.
interface IDistributeMerkle {
    // Returns true if the index has been marked claimed.
    function isClaimed(uint256 id, uint256 index) external view returns (bool);
    // Claim the given amount of the token to the given address. Reverts if the inputs are invalid.
    function claim(uint256 id, uint256 index, address account, uint256 amount, bytes32[] calldata merkleProof) external;

    // This event is triggered whenever a call to #claim succeeds.
    event Claimed(address indexed token, uint256 indexed index, address account, uint256 amount);
}
