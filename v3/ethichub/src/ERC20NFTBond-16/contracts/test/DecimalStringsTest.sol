// SPDX-License-Identifier: GPLv3.0
pragma solidity ^0.8.28;

import '../libraries/DecimalStrings.sol';

contract DecimalStringsTest {
    function getDecimalString(
        uint256 number, 
        uint8 decimals, 
        bool isPercent
    ) public pure returns (string memory) {
        return DecimalStrings._decimalString(number, decimals, isPercent);
    }
}
