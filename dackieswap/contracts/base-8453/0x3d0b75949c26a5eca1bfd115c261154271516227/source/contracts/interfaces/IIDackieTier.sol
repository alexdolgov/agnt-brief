// SPDX-License-Identifier: MIT
pragma solidity ^0.8.12;

interface IIDackieTier {
    function getUserTier(address _user) external view returns (uint256);
}
