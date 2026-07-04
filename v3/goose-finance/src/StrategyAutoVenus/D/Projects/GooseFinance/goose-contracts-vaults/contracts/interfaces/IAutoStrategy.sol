// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.6.0;

interface IAutoStrategy{
    function wantLockedTotal() external view returns (uint256);
    function sharesTotal() external view returns (uint256);
}