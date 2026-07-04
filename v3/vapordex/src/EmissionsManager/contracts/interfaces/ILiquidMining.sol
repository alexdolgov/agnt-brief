// SPDX-License-Identifier: MIT
pragma solidity ^0.8.12;

interface ILiquidMining {
    function getRewardTokenToDistribute(uint256 seasonId) external returns(uint256);
    function getCurrentSeasonId() external returns(uint256);
}
