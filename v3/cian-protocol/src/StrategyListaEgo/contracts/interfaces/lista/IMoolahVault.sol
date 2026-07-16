// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

interface IMoolahVault {
    function deposit(uint256 assets, address receiver) external returns (uint256 shares);

    function withdraw(uint256 assets, address receiver, address owner) external returns (uint256 shares);

    function convertToAssets(uint256 shares) external view returns (uint256 assets);

    function maxWithdraw(address owner) external view returns (uint256 assets);
}