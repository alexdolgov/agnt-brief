// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import { GiggleSale } from "./MemeToken.sol";

contract MemeTokenV2 is GiggleSale {
    function version() external pure returns (string memory) {
        return "v2";
    }
}
