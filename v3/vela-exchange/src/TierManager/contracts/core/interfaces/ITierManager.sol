// SPDX-License-Identifier: MIT

pragma solidity 0.8.9;

interface ITierManager {
    function getUserDetails(address _user) external view returns (uint256, address, uint256, uint256, uint256, uint256);

    function updateUserTierByStaked(address _user) external;
}
