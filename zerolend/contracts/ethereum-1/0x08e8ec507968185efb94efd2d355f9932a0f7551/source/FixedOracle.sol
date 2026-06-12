// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract FixedOracle {
    int256 public immutable price;

    constructor (int256 _price)  {
        price = _price;
    }

    function latestAnswer() external view returns (int256 _price) {
        _price = price;
    }
}