// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

interface IVaultRouter {
    function depositNative(address sidechainUser, address vault, uint256 amount) external;
}
