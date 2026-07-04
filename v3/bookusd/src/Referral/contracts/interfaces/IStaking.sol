// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

struct UserInfo {
    uint256 amount; // How many tokens have been staked
    address referrer; // Referrer address
    uint256 lastReward; // Time user last claimed
    uint256 totalCompounded;
    uint256 totalCollected;
}

interface IStaking {
    function userInfo(address) external view returns (UserInfo memory);

    function depositFor(address, uint256, address) external;
}
