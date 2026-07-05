// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

interface ILRTVault {
    function asset() external view returns (address assetTokenAddress);
    function maxDeposit(address receiver) external view returns (uint256 maxAssets);
    function deposit(uint256 assets, address receiver) external returns (uint256 shares);
}
