// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

library BlockTimestamp {
    function get() internal view returns (uint256) {
        return block.timestamp;
    }
}
