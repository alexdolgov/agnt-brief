// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

interface IPrice {
    /**
     * @dev Returns the current exchange rate in dollars, and the timestamp
     */
    function lastPrice() external view returns (uint256 price, uint256 timestamp);
}
