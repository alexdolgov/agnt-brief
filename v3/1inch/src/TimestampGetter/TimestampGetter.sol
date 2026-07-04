// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract TimestampGetter {
    function timestamp() external view returns(uint256) {
        return block.timestamp;
    }
}