// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

interface IPriceFeed {
    function fetchPrice() external view returns (uint256);
}
