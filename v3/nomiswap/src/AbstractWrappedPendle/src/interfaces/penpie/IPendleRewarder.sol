// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

interface IPendleRewarder {

    function rewardTokenInfos() external view returns (address[] memory, string[] memory);
    function earned(address account, address rewardToken) external view returns (uint);

}