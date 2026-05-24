// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

interface IFundVaultV2 {
    function deposit(address asset, uint256 amount) external returns (uint256 shares);

    function redeem(uint256 shares, address asset) external returns (uint256 amount);
}
