// SPDX-License-Identifier: Apache-2.0.
pragma solidity ^0.8.20;

contract BlockPrice {
    event Sample(uint256 price);
    uint256 public lastSample;

    function writePrice() external {
        lastSample = getBlockPrice();
        emit Sample(lastSample);
    }

    function getBlockPrice() public view returns (uint256) {
        return block.basefee;
    }
}
