// SPDX-License-Identifier: MIT
pragma solidity ^0.8.14;

library Utils {
    // calculate commission for amount and convert to 18 decimals
    function calcCommission18(uint256 amount, uint16 commission) internal pure returns (uint256) {
        return amount * commission / 1e4;
    }
}
