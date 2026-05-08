/**
 * Created by Pragma Labs
 * SPDX-License-Identifier: MIT
 */
pragma solidity ^0.8.22;

interface ICLGauge {
    function deposit(uint256 tokenId) external;

    function earned(address account, uint256 tokenId) external view returns (uint256);

    function getReward(uint256 tokenId) external;

    function rewardToken() external view returns (address);

    function withdraw(uint256 tokenId) external;
}
