// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface ICoreDepositUsdc {
    function depositFor(address user, uint256 amount, uint32 dex) external;
}