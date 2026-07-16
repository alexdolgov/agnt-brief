// SPDX-License-Identifier: MIT
pragma solidity ^0.8.29;

interface PriceFeed {
    function getPrice() external view returns (uint256);

    function baseToken() external view returns (address);
}
