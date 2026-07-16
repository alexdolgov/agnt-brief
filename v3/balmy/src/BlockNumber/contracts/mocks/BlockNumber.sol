// SPDX-License-Identifier: BUSL-1.1

pragma solidity 0.7.6;

contract BlockNumber {

    function getBlockNumber() external view returns (uint256) {
        return block.number;
    }

}