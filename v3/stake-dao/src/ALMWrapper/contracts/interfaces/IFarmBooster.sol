// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

interface IFarmBooster {
    function updatePositionBoostMultiplier(address user) external returns (uint256 _multiplier);
}