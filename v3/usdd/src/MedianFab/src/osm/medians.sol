// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.6.12;

import "./median.sol";

contract MedianETHUSD is Median {
    function wat() public pure override returns (bytes32) {
        return "ETHUSD";
    }
}
