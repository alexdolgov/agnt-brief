// SPDX-License-Identifier: ISC
pragma solidity ^0.8.20;

interface ISfrax {
    function previewDistributeRewards() external view returns (uint256);
    function previewWithdraw(uint256) external view returns (uint256);
    function previewRedeem(uint256) external view returns (uint256);
    function pricePerShare() external view returns (uint256);
}
