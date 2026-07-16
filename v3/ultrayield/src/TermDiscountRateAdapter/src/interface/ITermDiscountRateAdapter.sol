// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface ITermDiscountRateAdapter {
    function getDiscountRate(address repoToken) external view returns (uint256);
}