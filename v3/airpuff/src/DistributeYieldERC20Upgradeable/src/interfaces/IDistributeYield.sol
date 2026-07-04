// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

// Allows anyone to claim a token if they exist in a merkle root.
interface IDistributeYield {
    // @notice user claimable amount
    // @return claimable amount
    function earned(uint256 id, address account) external view returns (uint256);
    // @notice clear rewards by user
    function getReward(uint256 id, address account) external returns (uint256);

    // This event is triggered whenever a call to #claim succeeds.
    event Claimed(address indexed yield, address indexed account, uint256 amount);
}
