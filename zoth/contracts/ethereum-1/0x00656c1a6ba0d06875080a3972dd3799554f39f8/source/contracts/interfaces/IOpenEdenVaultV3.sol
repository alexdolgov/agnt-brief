// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

interface IOpenEdenVaultV3 {
    function deposit(uint256 assets, address receiver) external;

    function redeem(uint256 shares, address receiver) external;
}
